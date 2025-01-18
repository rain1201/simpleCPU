# SimpleCPU 🖥️

## 项目简介 🚀

本项目是 `USETC` 计算机组成与结构课程的课程项目，实现了一个基本的CPU架构。

## 项目特点 ✨

- **简单易懂的CPU设计**：本项目实现了一个简单的CPU架构，适合初学者学习计算机组成原理。
- **流水线支持**：项目支持基本的流水线功能，包括数据转发和流水线暂停机制。
- **丰富的指令集**：支持多种指令，包括算术运算、逻辑运算、分支跳转、内存访问等。



## 项目文件组成 📂

以下是项目的实际文件组成及其功能说明：

```
intergrated/
├   #源代码
│   ├── ALU.v           # 算术逻辑单元模块，实现基本的算术和逻辑运算
│   ├── ADDSUB_32.v     # 32位加法器和减法器模块
│   ├── CLA_4.v         # 4位超前进位加法器模块
│   ├── CONUNITPN.v     # 流水线控制模块，实现数据转发和流水线暂停机制
│   ├── CONUNITP.v      # 控制单元模块，负责指令解码和控制信号生成
│   ├── CONUNIT.v       # 基础控制单元模块
│   ├── DATAMEM.v       # 数据存储器模块
│   ├── DEC2T4.v        # 2-4解码器模块
│   ├── DEC5T32.v       # 5-32解码器模块
│   ├── D_FFEC2.v       # 2位带使能的D触发器模块
│   ├── D_FFEC32.v      # 32位带使能的D触发器模块
│   ├── D_FFEC5.v       # 5位带使能的D触发器模块
│   ├── D_FFEC6.v       # 6位带使能的D触发器模块
│   ├── D_FFEC.v        # 带使能的D触发器模块
│   ├── D_FF.v          # 基本D触发器模块
│   ├── D_LATCH.v       # D锁存器模块
│   ├── EXT16T32.v      # 16位到32位符号扩展模块
│   ├── INSTMEM.v       # 指令存储器模块
│   ├── mainPN.v        # CPU流水线顶层模块
│   ├── mainP.v         # CPU流水线顶层模块
│   ├── main.v          # CPU单周期顶层模块
│   ├── MUX2X32.v       # 2选1多路选择器模块，32位
│   ├── MUX2X5.v        # 2选1多路选择器模块，5位
│   ├── MUX4X32.v       # 4选1多路选择器模块，32位
│   ├── MUX16X32.v      # 16选1多路选择器模块，32位
│   ├── MUX32X32.v      # 32选1多路选择器模块，32位
│   ├── PCCON.v         # 程序计数器控制模块
│   ├── PC.v            # 程序计数器模块
│   ├── REG32.v         # 32位寄存器模块
│   ├── REGFILE.v       # 寄存器文件模块，实现CPU的寄存器组
│   ├── REG_idex.v      # ID/EX流水线寄存器模块
│   ├── REG_ifid.v      # IF/ID流水线寄存器模块
│   ├── REG_memwb.v     # MEM/WB流水线寄存器模块
│   ├── REG_EXMEM.v     # EX/MEM流水线寄存器模块
├   # 测试文件目录
│   ├── ADDSUB32_test.v # 32位加法器和减法器模块的测试文件
│   ├── ALU_test.v      # ALU模块的测试文件
│   ├── CLA_4_test.v    # 4位超前进位加法器模块的测试文件
│   ├── CONUNITP_test.v # 控制单元模块的测试文件
│   ├── DEC2T4_test.v   # 2-4解码器模块的测试文件
│   ├── DEC5T32_test.v  # 5-32解码器模块的测试文件
│   ├── D_FFEC_test.v   # 带使能的D触发器模块的测试文件
│   ├── D_FF_test.v     # 基本D触发器模块的测试文件
│   ├── D_LATCH_test.v  # D锁存器模块的测试文件
│   ├── EXT16T32_test.v # 16位到32位符号扩展模块的测试文件
│   ├── mainPN_test.v   # CPU顶层模块的测试文件
│   ├── mainP_test.v    # CPU流水线模块的测试文件
│   ├── main_test.v     # CPU单周期模块的测试文件
│   ├── MUX2X32_test.v  # 2选1多路选择器模块的测试文件
│   ├── MUX2X5_test.v   # 2选1多路选择器模块的测试文件
│   ├── MUX4X32_test.v  # 4选1多路选择器模块的测试文件
├── test_wcfg/          # 波形配置文件目录
    ├── pipelineNew.wcfg # 流水线CPU的波形配置文件
    ├── pipeline.wcfg    # 流水线CPU的波形配置文件
    ├── singleCircle.wcfg # 单周期CPU的波形配置文件
    ├── i do not know.wcfg
    └── important.wcfg
```

> `P`与`PN`后缀均代表流水线，`PN`使用类似RISCV实现方式，更为简洁易懂。



## 指令集支持 📜

CPU实现了部分MIPS32指令，支持的指令集包括以下类型：

### 算术与逻辑指令 🧮
- **ADD**：加法运算
- **SUB**：减法运算
- **AND**：逻辑与运算
- **OR**：逻辑或运算
- **SLL**：逻辑左移
- **SRL**：逻辑右移
- **SRA**：算术右移

### 立即数指令 🔢
- **ADDI**：立即数加法
- **ANDI**：立即数逻辑与
- **ORI**：立即数逻辑或
- **LUI**：加载高位立即数

### 内存访问指令 💾
- **LW**：从内存加载数据到寄存器
- **SW**：将寄存器数据存储到内存

### 分支与跳转指令 🚦
- **BEQ**：相等时分支
- **BNE**：不相等时分支
- **J**：无条件跳转
- **JR**：寄存器跳转



## 流水线功能 ⚙️

### 流水线结构 🏗️
CPU采用经典的5级流水线结构，包括：
1. **取指（IF）**：从内存中读取指令。
2. **译码（ID）**：解码指令并读取寄存器数据。
3. **执行（EX）**：执行算术逻辑运算。
4. **访存（MEM）**：访问内存（加载或存储数据）。
5. **写回（WB）**：将结果写回寄存器。

### 数据转发 🔄
为了解决数据冒险，CPU实现了数据转发机制。

### 流水线暂停 ⏸️
当检测到无法通过转发解决的冒险时，CPU会暂停流水线，直到相关数据准备好。

### 条件依赖处理 🛠️
CPU能够正确处理分支指令的条件依赖，确保流水线的正确执行。



## 开发环境 🛠️

- **开发工具**：Xilinx ISE
- **硬件描述语言**：Verilog HDL



## 使用方法 🛠️

1. **克隆项目**：首先，将项目克隆到本地。
   ```bash
   git clone https://github.com/rain1201/simpleCPU.git
   ```

2. **打开项目**：使用Xilinx ISE打开项目文件。

3. **编译与仿真**：
   - 在Xilinx ISE中编译项目。
   - 使用提供的测试文件`main_test.v`进行仿真，验证CPU功能。




## 许可证 📜

本项目采用LGPL（GNU Lesser General Public License）许可证。详细信息请参阅[LICENSE](LICENSE)文件。



## 贡献 🤝

欢迎对本项目进行贡献！如果您有任何改进建议或发现了问题，请提交Issue或Pull Request。
