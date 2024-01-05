;int     ft_atoi_base(char* str, char* base)
	global ft_atoi_base
	extern ft_strlen

	ft_atoi_base:
		call ft_strlen
		ret
		;	Check if str is only numbers and signs
		;	