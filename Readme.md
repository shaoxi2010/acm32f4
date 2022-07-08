# 基于acm32f4的Rust寄存器库
由于acm32官方并没有提供完整的SVD文件，FAE服务条件比较死板，这个仅是对官方svd文件的描述拓展以方便最基本的方式进行rust开发。
尽可能的减少unsafe代码，提高程序的可阅读性。这个库使用了svd2rust生成寄存器项目文件，使用svdtools来添加修改官方svd来适配
手册信息。该库为非官方库，可能存在bug。
# 使用方法
1. 使用cargo install svdtools svd2rust 安装代码生成和补丁文件
2. 添加对应device下的patch（参考svdtools项目）
3. 执行update.sh，生成对应的新库
# 当前补丁状态
1. GPIO部分添加完整寄存器位描述
2. TIM添加TIM6完整寄存器位描述信息
3. SCU添加部分常用寄存器位描述信息