
.PHONY		:	all force clean

all_files	:=	$(wildcard *.some)
all_file	=	.all.some

some		:	${all_file}
	@some ${all_file}

all		:	${all_file}

force		:	clean all

clean		:
	rm -f ${all_file}

${all_file}	:	${all_files}
	cat ${all_files} > ${all_file}

show		:	${all_file}
	gmake some;sleep 2;gmake some;sleep 2;gmake some;sleep 2;gmake some;sleep 2;gmake some;sleep 2;\
	gmake some;sleep 2;gmake some;sleep 2;gmake some;sleep 2;gmake some;sleep 2;gmake some;sleep 2;\
	gmake some;sleep 2;gmake some;sleep 2;gmake some;sleep 2;gmake some;sleep 2;gmake some;sleep 2;\
	gmake some;sleep 2;gmake some;sleep 2;gmake some;sleep 2;gmake some;sleep 2;gmake some;sleep 2;\
	gmake some;sleep 2;gmake some;sleep 2;gmake some;sleep 2;gmake some;sleep 2;gmake some;sleep 2;
