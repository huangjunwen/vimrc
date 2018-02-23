# key codes/key mappings

首先找到的一些资料

  - https://vi.stackexchange.com/questions/10249/what-is-the-difference-between-mapped-key-sequences-and-key-codes-timeoutl 
  - http://vim.wikia.com/wiki/Mapping_fast_keycodes_in_terminal_Vim

## key code

按我理解 key code 代表的是键码，代表一次按键：例如 `a` 键，`esc`键，`up` 箭头键，或`ctrl+c` 键等（vim 还包括一些虚拟键码，如 F13）；在终端环境下，键码需要编码成一系列的字节发送，如在我的 iterm2 中（终端类型是 xterm-256color），`F1` 键实际上发送的是这三个字节： `0x1b 0x4f 0x50` （即 `'esc' 'O' 'P'`）


## key mapping

而 key mapping 代表的则是将一系列的按键映射到另一组一系列的按键来实现快速编辑，例如可以创建这样的映射：

```
nnoremap hi :echo 'hi'<CR>
```

这样在 noremal 模式下，连续按下 'h' 和 'i' 键，vim 就会把它转换成连续按 ':', 'e', 'c', ..., '<CR>' （'<CR>' 是回车）

## 歧义 

那么问题来了，假如在 insert 模式中，vim 收到一个 `<esc>`，它应该怎么处理呢？是马上退出 insert 模式进入 normal 模式，还是等待有可能接下来收到 `'O' 'P'` 而打开帮助呢？

其实这是个处理歧义的问题，vim 处理这个问题使用的是超时


## timeout/ttimeout

vim 中的文档有如下描述（`:h timeout`）

	These two options together determine the behavior when part of a
	mapped key sequence or keyboard code has been received:

	'timeout'    'ttimeout'		action	~
	   off		off		do not time out
	   on		on or off	time out on :mappings and key codes
	   off		on		time out on key codes

	If both options are off, Vim will wait until either the complete
	mapping or key sequence has been received, or it is clear that there
	is no mapping or key sequence for the received characters.  For
	example: if you have mapped "vl" and Vim has received 'v', the next
	character is needed to see if the 'v' is followed by an 'l'.
	When one of the options is on, Vim will wait for about 1 second for
	the next character to arrive.  After that the already received
	characters are interpreted as single characters.  The waiting time can
	be changed with the 'timeoutlen' option.
	On slow terminals or very busy systems timing out may cause
	malfunctioning cursor keys.  If both options are off, Vim waits
	forever after an entered <Esc> if there are key codes that start
	with <Esc>.  You will have to type <Esc> twice.  If you do not have
	problems with key codes, but would like to have :mapped key
	sequences not timing out in 1 second, set the 'ttimeout' option and
	reset the 'timeout' option.

按我测试的结果看，这两个超时的作用如下：当 vim 的状态机处于悬而未决的状态时（即之后有不同的转移状态），若有任何一个超时设置了，则开始倒计时；若 ttimeout 超时，则屏蔽所有 key code 的转移状态；若 timeout 超时，则屏蔽所有 key code/key mapping 的转移状态；然后“残留”的输入则按照贪婪的方式切分成数个子命令顺序执行
