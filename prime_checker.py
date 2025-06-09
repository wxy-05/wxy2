import math


def is_prime(n: int) -> bool:
    """
    判断输入数字是否为素数
    :param n: 待检测整数 (n>1)
    :return: 布尔类型检测结果
    """
    if n <= 1:
        return False
    if n == 2:
        return True
    if n % 2 == 0:
        return False

    # 优化：只检查到平方根，且跳过偶数
    for i in range(3, int(math.isqrt(n)) + 1, 2):
        if n % i == 0:
            return False
    return True


# 测试代码
if __name__ == "__main__":
    print("素数检测程序")
    print("输入'q'退出程序")

    while True:
        user_input = input("\n请输入一个整数: ").strip()

        # 退出条件
        if user_input.lower() == 'q':
            print("\n素数检测程序已退出")
            break

        try:
            # 转换并验证输入
            num = int(user_input)

            if num < 2:
                print(f"注意: {num} 小于2，不是素数")
                continue

            # 检查并显示结果
            if is_prime(num):
                print(f"{num} 是素数")
            else:
                # 如果是合数，尝试找出因子
                print(f"{num} 不是素数", end="")
                for i in range(2, min(int(math.isqrt(num)) + 1, 100)):
                    if num % i == 0:
                        print(f" (可被 {i} 整除)", end="")
                        break
                print()

        except ValueError:
            print("错误: 请输入有效的整数")
        except Exception as e:
            print(f"发生错误: {str(e)}")