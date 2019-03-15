# 😆 ppBash

ppBash是一款自给自足的bash增强软件，通过对脚本的扩展，实现更强大方便与极致的bash使用体验。

## 支持平台与依赖

### 平台

* **Windows** msys ( git bash )

* **macOS** 
  * 需要macvim
* **Linux**

### 可选依赖

* fortune

* cowsay

## 安装与使用

**请注意！！！！！安装时一定要cd到ppbash目录下！！！！！**

```bash
$git clone https://github.com/cyf-gh/ppbash.git
$cd ppbash
$bash install.sh
```

按照提示进行操作即可完成安装。

## CLI

以下介绍ppBash的CLI。更多详细请使用以下命令查看全部命令。

```bash
$st_help -c
```

### pp命令

```bash
$rs # 重新读取用户目录下的bash profile文件

$spv # st_peek_vars 查看ppBash的所有环境变量
$spd # st_peek_dirs 查看ppBash保留的路径
$spsys # st_peek_sys_instruction 查看所有的系统替换命令

$smn [name] # st_modify_name 修改你的名字
$smg [github_site] # st_modify_github 修改你的github网址
## 例：https://www.github.com/cyf-gh

$st_help [arg]
	-c # 显示全部CLI
	-v # 查看ppBash版本号
```



### 系统命令增强

#### ls

```bash
# 略
$ll
$ls
$l
```

#### rm

```bash
$sys_rm # 系统的rm命令
$rm_clean # 清空.deleted文件夹
$rm # 删除（移动一个文件或文件夹到.deleted目录）
```

#### vim

```bash
$sys_vim # 系统vim
$sys_vi # 系统vi
```

#### git 

```bash
$gs # git status
$gc # git commit -m
```



### 快速使用

#### 一般

```bash
$ta [alias] # type -a
$do [bash_script] # bash
$vb [file] # od [view bin file]
```

#### Go

```bash
$gh # 快速打开你的Github主页
$gg # 快速打开Google
$go [dir] # 快速打开 例：.
$goo [site] # 快速打开网页 例：baidu.com
```



## 重要文件目录

### .stbash

存放ppbash的源代码。

#### dat

用于存放一些持久值。

### .deleted

ppBash会在用户目录下创建一个.deleted文件夹，以存放删除的文件。这主要是用来避免rm删除文件不可恢复的副作用。

