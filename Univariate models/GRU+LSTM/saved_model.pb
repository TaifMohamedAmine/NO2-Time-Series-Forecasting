ЊЮ"
њЫ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype

SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
С
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
ї
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
А
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleщшelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleщшelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintџџџџџџџџџ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.9.02v2.9.0-rc2-42-g8a20d54a3c18Ѕ 

Adam/gru_2/gru_cell_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Р*-
shared_nameAdam/gru_2/gru_cell_2/bias/v

0Adam/gru_2/gru_cell_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/gru_2/gru_cell_2/bias/v*
_output_shapes
:	Р*
dtype0
­
(Adam/gru_2/gru_cell_2/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@Р*9
shared_name*(Adam/gru_2/gru_cell_2/recurrent_kernel/v
І
<Adam/gru_2/gru_cell_2/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp(Adam/gru_2/gru_cell_2/recurrent_kernel/v*
_output_shapes
:	@Р*
dtype0

Adam/gru_2/gru_cell_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Р*/
shared_name Adam/gru_2/gru_cell_2/kernel/v

2Adam/gru_2/gru_cell_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/gru_2/gru_cell_2/kernel/v* 
_output_shapes
:
Р*
dtype0

Adam/lstm_2/lstm_cell_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/lstm_2/lstm_cell_2/bias/v

2Adam/lstm_2/lstm_cell_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_2/lstm_cell_2/bias/v*
_output_shapes	
:*
dtype0
В
*Adam/lstm_2/lstm_cell_2/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*;
shared_name,*Adam/lstm_2/lstm_cell_2/recurrent_kernel/v
Ћ
>Adam/lstm_2/lstm_cell_2/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_2/lstm_cell_2/recurrent_kernel/v* 
_output_shapes
:
*
dtype0

 Adam/lstm_2/lstm_cell_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*1
shared_name" Adam/lstm_2/lstm_cell_2/kernel/v

4Adam/lstm_2/lstm_cell_2/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_2/lstm_cell_2/kernel/v*
_output_shapes
:	*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:*
dtype0

Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes

:@*
dtype0

Adam/gru_2/gru_cell_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Р*-
shared_nameAdam/gru_2/gru_cell_2/bias/m

0Adam/gru_2/gru_cell_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/gru_2/gru_cell_2/bias/m*
_output_shapes
:	Р*
dtype0
­
(Adam/gru_2/gru_cell_2/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@Р*9
shared_name*(Adam/gru_2/gru_cell_2/recurrent_kernel/m
І
<Adam/gru_2/gru_cell_2/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp(Adam/gru_2/gru_cell_2/recurrent_kernel/m*
_output_shapes
:	@Р*
dtype0

Adam/gru_2/gru_cell_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Р*/
shared_name Adam/gru_2/gru_cell_2/kernel/m

2Adam/gru_2/gru_cell_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/gru_2/gru_cell_2/kernel/m* 
_output_shapes
:
Р*
dtype0

Adam/lstm_2/lstm_cell_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/lstm_2/lstm_cell_2/bias/m

2Adam/lstm_2/lstm_cell_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_2/lstm_cell_2/bias/m*
_output_shapes	
:*
dtype0
В
*Adam/lstm_2/lstm_cell_2/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*;
shared_name,*Adam/lstm_2/lstm_cell_2/recurrent_kernel/m
Ћ
>Adam/lstm_2/lstm_cell_2/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_2/lstm_cell_2/recurrent_kernel/m* 
_output_shapes
:
*
dtype0

 Adam/lstm_2/lstm_cell_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*1
shared_name" Adam/lstm_2/lstm_cell_2/kernel/m

4Adam/lstm_2/lstm_cell_2/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_2/lstm_cell_2/kernel/m*
_output_shapes
:	*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:*
dtype0

Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes

:@*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	

gru_2/gru_cell_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Р*&
shared_namegru_2/gru_cell_2/bias

)gru_2/gru_cell_2/bias/Read/ReadVariableOpReadVariableOpgru_2/gru_cell_2/bias*
_output_shapes
:	Р*
dtype0

!gru_2/gru_cell_2/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@Р*2
shared_name#!gru_2/gru_cell_2/recurrent_kernel

5gru_2/gru_cell_2/recurrent_kernel/Read/ReadVariableOpReadVariableOp!gru_2/gru_cell_2/recurrent_kernel*
_output_shapes
:	@Р*
dtype0

gru_2/gru_cell_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Р*(
shared_namegru_2/gru_cell_2/kernel

+gru_2/gru_cell_2/kernel/Read/ReadVariableOpReadVariableOpgru_2/gru_cell_2/kernel* 
_output_shapes
:
Р*
dtype0

lstm_2/lstm_cell_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namelstm_2/lstm_cell_2/bias

+lstm_2/lstm_cell_2/bias/Read/ReadVariableOpReadVariableOplstm_2/lstm_cell_2/bias*
_output_shapes	
:*
dtype0
Є
#lstm_2/lstm_cell_2/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*4
shared_name%#lstm_2/lstm_cell_2/recurrent_kernel

7lstm_2/lstm_cell_2/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_2/lstm_cell_2/recurrent_kernel* 
_output_shapes
:
*
dtype0

lstm_2/lstm_cell_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	**
shared_namelstm_2/lstm_cell_2/kernel

-lstm_2/lstm_cell_2/kernel/Read/ReadVariableOpReadVariableOplstm_2/lstm_cell_2/kernel*
_output_shapes
:	*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:@*
dtype0

NoOpNoOp
яH
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ЊH
value HBH BH
л
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
С
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
Ѕ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator* 
С
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%_random_generator
&cell
'
state_spec*
Ѕ
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses
._random_generator* 
І
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

5kernel
6bias*
<
70
81
92
:3
;4
<5
56
67*
<
70
81
92
:3
;4
<5
56
67*
* 
А
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Btrace_0
Ctrace_1
Dtrace_2
Etrace_3* 
6
Ftrace_0
Gtrace_1
Htrace_2
Itrace_3* 
* 
ф
Jiter

Kbeta_1

Lbeta_2
	Mdecay
Nlearning_rate5mЋ6mЌ7m­8mЎ9mЏ:mА;mБ<mВ5vГ6vД7vЕ8vЖ9vЗ:vИ;vЙ<vК*

Oserving_default* 

70
81
92*

70
81
92*
* 


Pstates
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Vtrace_0
Wtrace_1
Xtrace_2
Ytrace_3* 
6
Ztrace_0
[trace_1
\trace_2
]trace_3* 
* 
у
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses
d_random_generator
e
state_size

7kernel
8recurrent_kernel
9bias*
* 
* 
* 
* 

fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

ktrace_0
ltrace_1* 

mtrace_0
ntrace_1* 
* 

:0
;1
<2*

:0
;1
<2*
* 


ostates
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*
6
utrace_0
vtrace_1
wtrace_2
xtrace_3* 
6
ytrace_0
ztrace_1
{trace_2
|trace_3* 
* 
з
}	variables
~trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator

:kernel
;recurrent_kernel
<bias*
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses* 

trace_0
trace_1* 

trace_0
trace_1* 
* 

50
61*

50
61*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*

trace_0* 

trace_0* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_2/lstm_cell_2/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#lstm_2/lstm_cell_2/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUElstm_2/lstm_cell_2/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEgru_2/gru_cell_2/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!gru_2/gru_cell_2/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEgru_2/gru_cell_2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
0
1
2
3
4*

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

70
81
92*

70
81
92*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

&0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

:0
;1
<2*

:0
;1
<2*
* 

non_trainable_variables
layers
 metrics
 Ёlayer_regularization_losses
Ђlayer_metrics
}	variables
~trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Ѓtrace_0
Єtrace_1* 

Ѕtrace_0
Іtrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
Ї	variables
Ј	keras_api

Љtotal

Њcount*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Љ0
Њ1*

Ї	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_2/lstm_cell_2/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE*Adam/lstm_2/lstm_cell_2/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/lstm_2/lstm_cell_2/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/gru_2/gru_cell_2/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUE(Adam/gru_2/gru_cell_2/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/gru_2/gru_cell_2/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_2/lstm_cell_2/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE*Adam/lstm_2/lstm_cell_2/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/lstm_2/lstm_cell_2/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/gru_2/gru_cell_2/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUE(Adam/gru_2/gru_cell_2/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/gru_2/gru_cell_2/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_lstm_2_inputPlaceholder*+
_output_shapes
:џџџџџџџџџ
*
dtype0* 
shape:џџџџџџџџџ


StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_2_inputlstm_2/lstm_cell_2/kernel#lstm_2/lstm_cell_2/recurrent_kernellstm_2/lstm_cell_2/biasgru_2/gru_cell_2/biasgru_2/gru_cell_2/kernel!gru_2/gru_cell_2/recurrent_kerneldense_2/kerneldense_2/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_372107
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ч
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp-lstm_2/lstm_cell_2/kernel/Read/ReadVariableOp7lstm_2/lstm_cell_2/recurrent_kernel/Read/ReadVariableOp+lstm_2/lstm_cell_2/bias/Read/ReadVariableOp+gru_2/gru_cell_2/kernel/Read/ReadVariableOp5gru_2/gru_cell_2/recurrent_kernel/Read/ReadVariableOp)gru_2/gru_cell_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp4Adam/lstm_2/lstm_cell_2/kernel/m/Read/ReadVariableOp>Adam/lstm_2/lstm_cell_2/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_2/lstm_cell_2/bias/m/Read/ReadVariableOp2Adam/gru_2/gru_cell_2/kernel/m/Read/ReadVariableOp<Adam/gru_2/gru_cell_2/recurrent_kernel/m/Read/ReadVariableOp0Adam/gru_2/gru_cell_2/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp4Adam/lstm_2/lstm_cell_2/kernel/v/Read/ReadVariableOp>Adam/lstm_2/lstm_cell_2/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_2/lstm_cell_2/bias/v/Read/ReadVariableOp2Adam/gru_2/gru_cell_2/kernel/v/Read/ReadVariableOp<Adam/gru_2/gru_cell_2/recurrent_kernel/v/Read/ReadVariableOp0Adam/gru_2/gru_cell_2/bias/v/Read/ReadVariableOpConst*,
Tin%
#2!	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_save_374440
ж
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_2/kerneldense_2/biaslstm_2/lstm_cell_2/kernel#lstm_2/lstm_cell_2/recurrent_kernellstm_2/lstm_cell_2/biasgru_2/gru_cell_2/kernel!gru_2/gru_cell_2/recurrent_kernelgru_2/gru_cell_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_2/kernel/mAdam/dense_2/bias/m Adam/lstm_2/lstm_cell_2/kernel/m*Adam/lstm_2/lstm_cell_2/recurrent_kernel/mAdam/lstm_2/lstm_cell_2/bias/mAdam/gru_2/gru_cell_2/kernel/m(Adam/gru_2/gru_cell_2/recurrent_kernel/mAdam/gru_2/gru_cell_2/bias/mAdam/dense_2/kernel/vAdam/dense_2/bias/v Adam/lstm_2/lstm_cell_2/kernel/v*Adam/lstm_2/lstm_cell_2/recurrent_kernel/vAdam/lstm_2/lstm_cell_2/bias/vAdam/gru_2/gru_cell_2/kernel/v(Adam/gru_2/gru_cell_2/recurrent_kernel/vAdam/gru_2/gru_cell_2/bias/v*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__traced_restore_374543ля

з
H__inference_sequential_2_layer_call_and_return_conditional_losses_372053
lstm_2_input 
lstm_2_372031:	!
lstm_2_372033:

lstm_2_372035:	
gru_2_372039:	Р 
gru_2_372041:
Р
gru_2_372043:	@Р 
dense_2_372047:@
dense_2_372049:
identityЂdense_2/StatefulPartitionedCallЂgru_2/StatefulPartitionedCallЂlstm_2/StatefulPartitionedCall
lstm_2/StatefulPartitionedCallStatefulPartitionedCalllstm_2_inputlstm_2_372031lstm_2_372033lstm_2_372035*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_371322р
dropout_4/PartitionedCallPartitionedCall'lstm_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_371335
gru_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0gru_2_372039gru_2_372041gru_2_372043*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_gru_2_layer_call_and_return_conditional_losses_371491к
dropout_5/PartitionedCallPartitionedCall&gru_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_371504
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_5/PartitionedCall:output:0dense_2_372047dense_2_372049*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_371516w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЉ
NoOpNoOp ^dense_2/StatefulPartitionedCall^gru_2/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ
: : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2>
gru_2/StatefulPartitionedCallgru_2/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ

&
_user_specified_namelstm_2_input
№	
в
-__inference_sequential_2_layer_call_fn_371542
lstm_2_input
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:	Р
	unknown_3:
Р
	unknown_4:	@Р
	unknown_5:@
	unknown_6:
identityЂStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCalllstm_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_371523o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ
: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ

&
_user_specified_namelstm_2_input
ха
	
!__inference__wrapped_model_370481
lstm_2_inputQ
>sequential_2_lstm_2_lstm_cell_2_matmul_readvariableop_resource:	T
@sequential_2_lstm_2_lstm_cell_2_matmul_1_readvariableop_resource:
N
?sequential_2_lstm_2_lstm_cell_2_biasadd_readvariableop_resource:	H
5sequential_2_gru_2_gru_cell_2_readvariableop_resource:	РP
<sequential_2_gru_2_gru_cell_2_matmul_readvariableop_resource:
РQ
>sequential_2_gru_2_gru_cell_2_matmul_1_readvariableop_resource:	@РE
3sequential_2_dense_2_matmul_readvariableop_resource:@B
4sequential_2_dense_2_biasadd_readvariableop_resource:
identityЂ+sequential_2/dense_2/BiasAdd/ReadVariableOpЂ*sequential_2/dense_2/MatMul/ReadVariableOpЂ3sequential_2/gru_2/gru_cell_2/MatMul/ReadVariableOpЂ5sequential_2/gru_2/gru_cell_2/MatMul_1/ReadVariableOpЂ,sequential_2/gru_2/gru_cell_2/ReadVariableOpЂsequential_2/gru_2/whileЂ6sequential_2/lstm_2/lstm_cell_2/BiasAdd/ReadVariableOpЂ5sequential_2/lstm_2/lstm_cell_2/MatMul/ReadVariableOpЂ7sequential_2/lstm_2/lstm_cell_2/MatMul_1/ReadVariableOpЂsequential_2/lstm_2/whileU
sequential_2/lstm_2/ShapeShapelstm_2_input*
T0*
_output_shapes
:q
'sequential_2/lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential_2/lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential_2/lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
!sequential_2/lstm_2/strided_sliceStridedSlice"sequential_2/lstm_2/Shape:output:00sequential_2/lstm_2/strided_slice/stack:output:02sequential_2/lstm_2/strided_slice/stack_1:output:02sequential_2/lstm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
"sequential_2/lstm_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Џ
 sequential_2/lstm_2/zeros/packedPack*sequential_2/lstm_2/strided_slice:output:0+sequential_2/lstm_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:d
sequential_2/lstm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Љ
sequential_2/lstm_2/zerosFill)sequential_2/lstm_2/zeros/packed:output:0(sequential_2/lstm_2/zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџg
$sequential_2/lstm_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Г
"sequential_2/lstm_2/zeros_1/packedPack*sequential_2/lstm_2/strided_slice:output:0-sequential_2/lstm_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_2/lstm_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Џ
sequential_2/lstm_2/zeros_1Fill+sequential_2/lstm_2/zeros_1/packed:output:0*sequential_2/lstm_2/zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџw
"sequential_2/lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
sequential_2/lstm_2/transpose	Transposelstm_2_input+sequential_2/lstm_2/transpose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџl
sequential_2/lstm_2/Shape_1Shape!sequential_2/lstm_2/transpose:y:0*
T0*
_output_shapes
:s
)sequential_2/lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_2/lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_2/lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
#sequential_2/lstm_2/strided_slice_1StridedSlice$sequential_2/lstm_2/Shape_1:output:02sequential_2/lstm_2/strided_slice_1/stack:output:04sequential_2/lstm_2/strided_slice_1/stack_1:output:04sequential_2/lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
/sequential_2/lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ№
!sequential_2/lstm_2/TensorArrayV2TensorListReserve8sequential_2/lstm_2/TensorArrayV2/element_shape:output:0,sequential_2/lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Isequential_2/lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
;sequential_2/lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_2/lstm_2/transpose:y:0Rsequential_2/lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвs
)sequential_2/lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_2/lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_2/lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Э
#sequential_2/lstm_2/strided_slice_2StridedSlice!sequential_2/lstm_2/transpose:y:02sequential_2/lstm_2/strided_slice_2/stack:output:04sequential_2/lstm_2/strided_slice_2/stack_1:output:04sequential_2/lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskЕ
5sequential_2/lstm_2/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp>sequential_2_lstm_2_lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0а
&sequential_2/lstm_2/lstm_cell_2/MatMulMatMul,sequential_2/lstm_2/strided_slice_2:output:0=sequential_2/lstm_2/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџК
7sequential_2/lstm_2/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp@sequential_2_lstm_2_lstm_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ъ
(sequential_2/lstm_2/lstm_cell_2/MatMul_1MatMul"sequential_2/lstm_2/zeros:output:0?sequential_2/lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџХ
#sequential_2/lstm_2/lstm_cell_2/addAddV20sequential_2/lstm_2/lstm_cell_2/MatMul:product:02sequential_2/lstm_2/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџГ
6sequential_2/lstm_2/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp?sequential_2_lstm_2_lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ю
'sequential_2/lstm_2/lstm_cell_2/BiasAddBiasAdd'sequential_2/lstm_2/lstm_cell_2/add:z:0>sequential_2/lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџq
/sequential_2/lstm_2/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
%sequential_2/lstm_2/lstm_cell_2/splitSplit8sequential_2/lstm_2/lstm_cell_2/split/split_dim:output:00sequential_2/lstm_2/lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split
'sequential_2/lstm_2/lstm_cell_2/SigmoidSigmoid.sequential_2/lstm_2/lstm_cell_2/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
)sequential_2/lstm_2/lstm_cell_2/Sigmoid_1Sigmoid.sequential_2/lstm_2/lstm_cell_2/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџВ
#sequential_2/lstm_2/lstm_cell_2/mulMul-sequential_2/lstm_2/lstm_cell_2/Sigmoid_1:y:0$sequential_2/lstm_2/zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
$sequential_2/lstm_2/lstm_cell_2/ReluRelu.sequential_2/lstm_2/lstm_cell_2/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџР
%sequential_2/lstm_2/lstm_cell_2/mul_1Mul+sequential_2/lstm_2/lstm_cell_2/Sigmoid:y:02sequential_2/lstm_2/lstm_cell_2/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџЕ
%sequential_2/lstm_2/lstm_cell_2/add_1AddV2'sequential_2/lstm_2/lstm_cell_2/mul:z:0)sequential_2/lstm_2/lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ
)sequential_2/lstm_2/lstm_cell_2/Sigmoid_2Sigmoid.sequential_2/lstm_2/lstm_cell_2/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџ
&sequential_2/lstm_2/lstm_cell_2/Relu_1Relu)sequential_2/lstm_2/lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ
%sequential_2/lstm_2/lstm_cell_2/mul_2Mul-sequential_2/lstm_2/lstm_cell_2/Sigmoid_2:y:04sequential_2/lstm_2/lstm_cell_2/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџ
1sequential_2/lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   є
#sequential_2/lstm_2/TensorArrayV2_1TensorListReserve:sequential_2/lstm_2/TensorArrayV2_1/element_shape:output:0,sequential_2/lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвZ
sequential_2/lstm_2/timeConst*
_output_shapes
: *
dtype0*
value	B : w
,sequential_2/lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџh
&sequential_2/lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
sequential_2/lstm_2/whileWhile/sequential_2/lstm_2/while/loop_counter:output:05sequential_2/lstm_2/while/maximum_iterations:output:0!sequential_2/lstm_2/time:output:0,sequential_2/lstm_2/TensorArrayV2_1:handle:0"sequential_2/lstm_2/zeros:output:0$sequential_2/lstm_2/zeros_1:output:0,sequential_2/lstm_2/strided_slice_1:output:0Ksequential_2/lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0>sequential_2_lstm_2_lstm_cell_2_matmul_readvariableop_resource@sequential_2_lstm_2_lstm_cell_2_matmul_1_readvariableop_resource?sequential_2_lstm_2_lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *1
body)R'
%sequential_2_lstm_2_while_body_370238*1
cond)R'
%sequential_2_lstm_2_while_cond_370237*M
output_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
Dsequential_2/lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   џ
6sequential_2/lstm_2/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_2/lstm_2/while:output:3Msequential_2/lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:
џџџџџџџџџ*
element_dtype0|
)sequential_2/lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџu
+sequential_2/lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: u
+sequential_2/lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ь
#sequential_2/lstm_2/strided_slice_3StridedSlice?sequential_2/lstm_2/TensorArrayV2Stack/TensorListStack:tensor:02sequential_2/lstm_2/strided_slice_3/stack:output:04sequential_2/lstm_2/strided_slice_3/stack_1:output:04sequential_2/lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_masky
$sequential_2/lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          г
sequential_2/lstm_2/transpose_1	Transpose?sequential_2/lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_2/lstm_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџ
o
sequential_2/lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
sequential_2/dropout_4/IdentityIdentity#sequential_2/lstm_2/transpose_1:y:0*
T0*,
_output_shapes
:џџџџџџџџџ
p
sequential_2/gru_2/ShapeShape(sequential_2/dropout_4/Identity:output:0*
T0*
_output_shapes
:p
&sequential_2/gru_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(sequential_2/gru_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(sequential_2/gru_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
 sequential_2/gru_2/strided_sliceStridedSlice!sequential_2/gru_2/Shape:output:0/sequential_2/gru_2/strided_slice/stack:output:01sequential_2/gru_2/strided_slice/stack_1:output:01sequential_2/gru_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
!sequential_2/gru_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@Ќ
sequential_2/gru_2/zeros/packedPack)sequential_2/gru_2/strided_slice:output:0*sequential_2/gru_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:c
sequential_2/gru_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ѕ
sequential_2/gru_2/zerosFill(sequential_2/gru_2/zeros/packed:output:0'sequential_2/gru_2/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@v
!sequential_2/gru_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ж
sequential_2/gru_2/transpose	Transpose(sequential_2/dropout_4/Identity:output:0*sequential_2/gru_2/transpose/perm:output:0*
T0*,
_output_shapes
:
џџџџџџџџџj
sequential_2/gru_2/Shape_1Shape sequential_2/gru_2/transpose:y:0*
T0*
_output_shapes
:r
(sequential_2/gru_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_2/gru_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_2/gru_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:К
"sequential_2/gru_2/strided_slice_1StridedSlice#sequential_2/gru_2/Shape_1:output:01sequential_2/gru_2/strided_slice_1/stack:output:03sequential_2/gru_2/strided_slice_1/stack_1:output:03sequential_2/gru_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masky
.sequential_2/gru_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџэ
 sequential_2/gru_2/TensorArrayV2TensorListReserve7sequential_2/gru_2/TensorArrayV2/element_shape:output:0+sequential_2/gru_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Hsequential_2/gru_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
:sequential_2/gru_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor sequential_2/gru_2/transpose:y:0Qsequential_2/gru_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвr
(sequential_2/gru_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_2/gru_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_2/gru_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
"sequential_2/gru_2/strided_slice_2StridedSlice sequential_2/gru_2/transpose:y:01sequential_2/gru_2/strided_slice_2/stack:output:03sequential_2/gru_2/strided_slice_2/stack_1:output:03sequential_2/gru_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskЃ
,sequential_2/gru_2/gru_cell_2/ReadVariableOpReadVariableOp5sequential_2_gru_2_gru_cell_2_readvariableop_resource*
_output_shapes
:	Р*
dtype0
%sequential_2/gru_2/gru_cell_2/unstackUnpack4sequential_2/gru_2/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:Р:Р*	
numВ
3sequential_2/gru_2/gru_cell_2/MatMul/ReadVariableOpReadVariableOp<sequential_2_gru_2_gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
Р*
dtype0Ы
$sequential_2/gru_2/gru_cell_2/MatMulMatMul+sequential_2/gru_2/strided_slice_2:output:0;sequential_2/gru_2/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџРУ
%sequential_2/gru_2/gru_cell_2/BiasAddBiasAdd.sequential_2/gru_2/gru_cell_2/MatMul:product:0.sequential_2/gru_2/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџРx
-sequential_2/gru_2/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ§
#sequential_2/gru_2/gru_cell_2/splitSplit6sequential_2/gru_2/gru_cell_2/split/split_dim:output:0.sequential_2/gru_2/gru_cell_2/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_splitЕ
5sequential_2/gru_2/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp>sequential_2_gru_2_gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	@Р*
dtype0Х
&sequential_2/gru_2/gru_cell_2/MatMul_1MatMul!sequential_2/gru_2/zeros:output:0=sequential_2/gru_2/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџРЧ
'sequential_2/gru_2/gru_cell_2/BiasAdd_1BiasAdd0sequential_2/gru_2/gru_cell_2/MatMul_1:product:0.sequential_2/gru_2/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџРx
#sequential_2/gru_2/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   џџџџz
/sequential_2/gru_2/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџО
%sequential_2/gru_2/gru_cell_2/split_1SplitV0sequential_2/gru_2/gru_cell_2/BiasAdd_1:output:0,sequential_2/gru_2/gru_cell_2/Const:output:08sequential_2/gru_2/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_splitК
!sequential_2/gru_2/gru_cell_2/addAddV2,sequential_2/gru_2/gru_cell_2/split:output:0.sequential_2/gru_2/gru_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
%sequential_2/gru_2/gru_cell_2/SigmoidSigmoid%sequential_2/gru_2/gru_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@М
#sequential_2/gru_2/gru_cell_2/add_1AddV2,sequential_2/gru_2/gru_cell_2/split:output:1.sequential_2/gru_2/gru_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@
'sequential_2/gru_2/gru_cell_2/Sigmoid_1Sigmoid'sequential_2/gru_2/gru_cell_2/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@З
!sequential_2/gru_2/gru_cell_2/mulMul+sequential_2/gru_2/gru_cell_2/Sigmoid_1:y:0.sequential_2/gru_2/gru_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@Г
#sequential_2/gru_2/gru_cell_2/add_2AddV2,sequential_2/gru_2/gru_cell_2/split:output:2%sequential_2/gru_2/gru_cell_2/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
"sequential_2/gru_2/gru_cell_2/ReluRelu'sequential_2/gru_2/gru_cell_2/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Њ
#sequential_2/gru_2/gru_cell_2/mul_1Mul)sequential_2/gru_2/gru_cell_2/Sigmoid:y:0!sequential_2/gru_2/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@h
#sequential_2/gru_2/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Г
!sequential_2/gru_2/gru_cell_2/subSub,sequential_2/gru_2/gru_cell_2/sub/x:output:0)sequential_2/gru_2/gru_cell_2/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@Е
#sequential_2/gru_2/gru_cell_2/mul_2Mul%sequential_2/gru_2/gru_cell_2/sub:z:00sequential_2/gru_2/gru_cell_2/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ@А
#sequential_2/gru_2/gru_cell_2/add_3AddV2'sequential_2/gru_2/gru_cell_2/mul_1:z:0'sequential_2/gru_2/gru_cell_2/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
0sequential_2/gru_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   q
/sequential_2/gru_2/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ў
"sequential_2/gru_2/TensorArrayV2_1TensorListReserve9sequential_2/gru_2/TensorArrayV2_1/element_shape:output:08sequential_2/gru_2/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвY
sequential_2/gru_2/timeConst*
_output_shapes
: *
dtype0*
value	B : v
+sequential_2/gru_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџg
%sequential_2/gru_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
sequential_2/gru_2/whileWhile.sequential_2/gru_2/while/loop_counter:output:04sequential_2/gru_2/while/maximum_iterations:output:0 sequential_2/gru_2/time:output:0+sequential_2/gru_2/TensorArrayV2_1:handle:0!sequential_2/gru_2/zeros:output:0+sequential_2/gru_2/strided_slice_1:output:0Jsequential_2/gru_2/TensorArrayUnstack/TensorListFromTensor:output_handle:05sequential_2_gru_2_gru_cell_2_readvariableop_resource<sequential_2_gru_2_gru_cell_2_matmul_readvariableop_resource>sequential_2_gru_2_gru_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *0
body(R&
$sequential_2_gru_2_while_body_370384*0
cond(R&
$sequential_2_gru_2_while_cond_370383*8
output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *
parallel_iterations 
Csequential_2/gru_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   
5sequential_2/gru_2/TensorArrayV2Stack/TensorListStackTensorListStack!sequential_2/gru_2/while:output:3Lsequential_2/gru_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elements{
(sequential_2/gru_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџt
*sequential_2/gru_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: t
*sequential_2/gru_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
"sequential_2/gru_2/strided_slice_3StridedSlice>sequential_2/gru_2/TensorArrayV2Stack/TensorListStack:tensor:01sequential_2/gru_2/strided_slice_3/stack:output:03sequential_2/gru_2/strided_slice_3/stack_1:output:03sequential_2/gru_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskx
#sequential_2/gru_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
sequential_2/gru_2/transpose_1	Transpose>sequential_2/gru_2/TensorArrayV2Stack/TensorListStack:tensor:0,sequential_2/gru_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@n
sequential_2/gru_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
sequential_2/dropout_5/IdentityIdentity+sequential_2/gru_2/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
*sequential_2/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Е
sequential_2/dense_2/MatMulMatMul(sequential_2/dropout_5/Identity:output:02sequential_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
+sequential_2/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Е
sequential_2/dense_2/BiasAddBiasAdd%sequential_2/dense_2/MatMul:product:03sequential_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџt
IdentityIdentity%sequential_2/dense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ 
NoOpNoOp,^sequential_2/dense_2/BiasAdd/ReadVariableOp+^sequential_2/dense_2/MatMul/ReadVariableOp4^sequential_2/gru_2/gru_cell_2/MatMul/ReadVariableOp6^sequential_2/gru_2/gru_cell_2/MatMul_1/ReadVariableOp-^sequential_2/gru_2/gru_cell_2/ReadVariableOp^sequential_2/gru_2/while7^sequential_2/lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp6^sequential_2/lstm_2/lstm_cell_2/MatMul/ReadVariableOp8^sequential_2/lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp^sequential_2/lstm_2/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ
: : : : : : : : 2Z
+sequential_2/dense_2/BiasAdd/ReadVariableOp+sequential_2/dense_2/BiasAdd/ReadVariableOp2X
*sequential_2/dense_2/MatMul/ReadVariableOp*sequential_2/dense_2/MatMul/ReadVariableOp2j
3sequential_2/gru_2/gru_cell_2/MatMul/ReadVariableOp3sequential_2/gru_2/gru_cell_2/MatMul/ReadVariableOp2n
5sequential_2/gru_2/gru_cell_2/MatMul_1/ReadVariableOp5sequential_2/gru_2/gru_cell_2/MatMul_1/ReadVariableOp2\
,sequential_2/gru_2/gru_cell_2/ReadVariableOp,sequential_2/gru_2/gru_cell_2/ReadVariableOp24
sequential_2/gru_2/whilesequential_2/gru_2/while2p
6sequential_2/lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp6sequential_2/lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp2n
5sequential_2/lstm_2/lstm_cell_2/MatMul/ReadVariableOp5sequential_2/lstm_2/lstm_cell_2/MatMul/ReadVariableOp2r
7sequential_2/lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp7sequential_2/lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp26
sequential_2/lstm_2/whilesequential_2/lstm_2/while:Y U
+
_output_shapes
:џџџџџџџџџ

&
_user_specified_namelstm_2_input
ё4

A__inference_gru_2_layer_call_and_return_conditional_losses_371164

inputs$
gru_cell_2_371086:	Р%
gru_cell_2_371088:
Р$
gru_cell_2_371090:	@Р
identityЂ"gru_cell_2/StatefulPartitionedCallЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskФ
"gru_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_2_371086gru_cell_2_371088gru_cell_2_371090*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_gru_cell_2_layer_call_and_return_conditional_losses_371046n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ј
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_2_371086gru_cell_2_371088gru_cell_2_371090*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_371099*
condR
while_cond_371098*8
output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@s
NoOpNoOp#^gru_cell_2/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџ: : : 2H
"gru_cell_2/StatefulPartitionedCall"gru_cell_2/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
J

B__inference_lstm_2_layer_call_and_return_conditional_losses_373240

inputs=
*lstm_cell_2_matmul_readvariableop_resource:	@
,lstm_cell_2_matmul_1_readvariableop_resource:
:
+lstm_cell_2_biasadd_readvariableop_resource:	
identityЂ"lstm_cell_2/BiasAdd/ReadVariableOpЂ!lstm_cell_2/MatMul/ReadVariableOpЂ#lstm_cell_2/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :о
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitm
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџo
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџv
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџg
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџy
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџo
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџd
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_373156*
condR
while_cond_373155*M
output_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   У
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:
џџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџ
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџ
Н
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
E
Е	
gru_2_while_body_372354(
$gru_2_while_gru_2_while_loop_counter.
*gru_2_while_gru_2_while_maximum_iterations
gru_2_while_placeholder
gru_2_while_placeholder_1
gru_2_while_placeholder_2'
#gru_2_while_gru_2_strided_slice_1_0c
_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0C
0gru_2_while_gru_cell_2_readvariableop_resource_0:	РK
7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0:
РL
9gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0:	@Р
gru_2_while_identity
gru_2_while_identity_1
gru_2_while_identity_2
gru_2_while_identity_3
gru_2_while_identity_4%
!gru_2_while_gru_2_strided_slice_1a
]gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensorA
.gru_2_while_gru_cell_2_readvariableop_resource:	РI
5gru_2_while_gru_cell_2_matmul_readvariableop_resource:
РJ
7gru_2_while_gru_cell_2_matmul_1_readvariableop_resource:	@РЂ,gru_2/while/gru_cell_2/MatMul/ReadVariableOpЂ.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOpЂ%gru_2/while/gru_cell_2/ReadVariableOp
=gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Х
/gru_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0gru_2_while_placeholderFgru_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype0
%gru_2/while/gru_cell_2/ReadVariableOpReadVariableOp0gru_2_while_gru_cell_2_readvariableop_resource_0*
_output_shapes
:	Р*
dtype0
gru_2/while/gru_cell_2/unstackUnpack-gru_2/while/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:Р:Р*	
numІ
,gru_2/while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
Р*
dtype0Ш
gru_2/while/gru_cell_2/MatMulMatMul6gru_2/while/TensorArrayV2Read/TensorListGetItem:item:04gru_2/while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџРЎ
gru_2/while/gru_cell_2/BiasAddBiasAdd'gru_2/while/gru_cell_2/MatMul:product:0'gru_2/while/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџРq
&gru_2/while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџш
gru_2/while/gru_cell_2/splitSplit/gru_2/while/gru_cell_2/split/split_dim:output:0'gru_2/while/gru_cell_2/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_splitЉ
.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp9gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	@Р*
dtype0Џ
gru_2/while/gru_cell_2/MatMul_1MatMulgru_2_while_placeholder_26gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџРВ
 gru_2/while/gru_cell_2/BiasAdd_1BiasAdd)gru_2/while/gru_cell_2/MatMul_1:product:0'gru_2/while/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџРq
gru_2/while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   џџџџs
(gru_2/while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЂ
gru_2/while/gru_cell_2/split_1SplitV)gru_2/while/gru_cell_2/BiasAdd_1:output:0%gru_2/while/gru_cell_2/Const:output:01gru_2/while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_splitЅ
gru_2/while/gru_cell_2/addAddV2%gru_2/while/gru_cell_2/split:output:0'gru_2/while/gru_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@{
gru_2/while/gru_cell_2/SigmoidSigmoidgru_2/while/gru_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ї
gru_2/while/gru_cell_2/add_1AddV2%gru_2/while/gru_cell_2/split:output:1'gru_2/while/gru_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@
 gru_2/while/gru_cell_2/Sigmoid_1Sigmoid gru_2/while/gru_cell_2/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ђ
gru_2/while/gru_cell_2/mulMul$gru_2/while/gru_cell_2/Sigmoid_1:y:0'gru_2/while/gru_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
gru_2/while/gru_cell_2/add_2AddV2%gru_2/while/gru_cell_2/split:output:2gru_2/while/gru_cell_2/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@w
gru_2/while/gru_cell_2/ReluRelu gru_2/while/gru_cell_2/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
gru_2/while/gru_cell_2/mul_1Mul"gru_2/while/gru_cell_2/Sigmoid:y:0gru_2_while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@a
gru_2/while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
gru_2/while/gru_cell_2/subSub%gru_2/while/gru_cell_2/sub/x:output:0"gru_2/while/gru_cell_2/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@ 
gru_2/while/gru_cell_2/mul_2Mulgru_2/while/gru_cell_2/sub:z:0)gru_2/while/gru_cell_2/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ@
gru_2/while/gru_cell_2/add_3AddV2 gru_2/while/gru_cell_2/mul_1:z:0 gru_2/while/gru_cell_2/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
6gru_2/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
0gru_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_2_while_placeholder_1?gru_2/while/TensorArrayV2Write/TensorListSetItem/index:output:0 gru_2/while/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype0:щшвS
gru_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :n
gru_2/while/addAddV2gru_2_while_placeholdergru_2/while/add/y:output:0*
T0*
_output_shapes
: U
gru_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
gru_2/while/add_1AddV2$gru_2_while_gru_2_while_loop_countergru_2/while/add_1/y:output:0*
T0*
_output_shapes
: k
gru_2/while/IdentityIdentitygru_2/while/add_1:z:0^gru_2/while/NoOp*
T0*
_output_shapes
: 
gru_2/while/Identity_1Identity*gru_2_while_gru_2_while_maximum_iterations^gru_2/while/NoOp*
T0*
_output_shapes
: k
gru_2/while/Identity_2Identitygru_2/while/add:z:0^gru_2/while/NoOp*
T0*
_output_shapes
: 
gru_2/while/Identity_3Identity@gru_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru_2/while/NoOp*
T0*
_output_shapes
: 
gru_2/while/Identity_4Identity gru_2/while/gru_cell_2/add_3:z:0^gru_2/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@к
gru_2/while/NoOpNoOp-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp/^gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "H
!gru_2_while_gru_2_strided_slice_1#gru_2_while_gru_2_strided_slice_1_0"t
7gru_2_while_gru_cell_2_matmul_1_readvariableop_resource9gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0"p
5gru_2_while_gru_cell_2_matmul_readvariableop_resource7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0"b
.gru_2_while_gru_cell_2_readvariableop_resource0gru_2_while_gru_cell_2_readvariableop_resource_0"5
gru_2_while_identitygru_2/while/Identity:output:0"9
gru_2_while_identity_1gru_2/while/Identity_1:output:0"9
gru_2_while_identity_2gru_2/while/Identity_2:output:0"9
gru_2_while_identity_3gru_2/while/Identity_3:output:0"9
gru_2_while_identity_4gru_2/while/Identity_4:output:0"Р
]gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ@: : : : : 2\
,gru_2/while/gru_cell_2/MatMul/ReadVariableOp,gru_2/while/gru_cell_2/MatMul/ReadVariableOp2`
.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp2N
%gru_2/while/gru_cell_2/ReadVariableOp%gru_2/while/gru_cell_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
@
Љ

lstm_2_while_body_372510*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3)
%lstm_2_while_lstm_2_strided_slice_1_0e
alstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0L
9lstm_2_while_lstm_cell_2_matmul_readvariableop_resource_0:	O
;lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0:
I
:lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource_0:	
lstm_2_while_identity
lstm_2_while_identity_1
lstm_2_while_identity_2
lstm_2_while_identity_3
lstm_2_while_identity_4
lstm_2_while_identity_5'
#lstm_2_while_lstm_2_strided_slice_1c
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensorJ
7lstm_2_while_lstm_cell_2_matmul_readvariableop_resource:	M
9lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource:
G
8lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource:	Ђ/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOpЂ.lstm_2/while/lstm_cell_2/MatMul/ReadVariableOpЂ0lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Щ
0lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0lstm_2_while_placeholderGlstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Љ
.lstm_2/while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp9lstm_2_while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Э
lstm_2/while/lstm_cell_2/MatMulMatMul7lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЎ
0lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp;lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Д
!lstm_2/while/lstm_cell_2/MatMul_1MatMullstm_2_while_placeholder_28lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџА
lstm_2/while/lstm_cell_2/addAddV2)lstm_2/while/lstm_cell_2/MatMul:product:0+lstm_2/while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџЇ
/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp:lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Й
 lstm_2/while/lstm_cell_2/BiasAddBiasAdd lstm_2/while/lstm_cell_2/add:z:07lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџj
(lstm_2/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
lstm_2/while/lstm_cell_2/splitSplit1lstm_2/while/lstm_cell_2/split/split_dim:output:0)lstm_2/while/lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split
 lstm_2/while/lstm_cell_2/SigmoidSigmoid'lstm_2/while/lstm_cell_2/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
"lstm_2/while/lstm_cell_2/Sigmoid_1Sigmoid'lstm_2/while/lstm_cell_2/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_2/while/lstm_cell_2/mulMul&lstm_2/while/lstm_cell_2/Sigmoid_1:y:0lstm_2_while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_2/while/lstm_cell_2/ReluRelu'lstm_2/while/lstm_cell_2/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџЋ
lstm_2/while/lstm_cell_2/mul_1Mul$lstm_2/while/lstm_cell_2/Sigmoid:y:0+lstm_2/while/lstm_cell_2/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџ 
lstm_2/while/lstm_cell_2/add_1AddV2 lstm_2/while/lstm_cell_2/mul:z:0"lstm_2/while/lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ
"lstm_2/while/lstm_cell_2/Sigmoid_2Sigmoid'lstm_2/while/lstm_cell_2/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџ~
lstm_2/while/lstm_cell_2/Relu_1Relu"lstm_2/while/lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџЏ
lstm_2/while/lstm_cell_2/mul_2Mul&lstm_2/while/lstm_cell_2/Sigmoid_2:y:0-lstm_2/while/lstm_cell_2/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџр
1lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_2_while_placeholder_1lstm_2_while_placeholder"lstm_2/while/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвT
lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_2/while/addAddV2lstm_2_while_placeholderlstm_2/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_2/while/add_1AddV2&lstm_2_while_lstm_2_while_loop_counterlstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_2/while/IdentityIdentitylstm_2/while/add_1:z:0^lstm_2/while/NoOp*
T0*
_output_shapes
: 
lstm_2/while/Identity_1Identity,lstm_2_while_lstm_2_while_maximum_iterations^lstm_2/while/NoOp*
T0*
_output_shapes
: n
lstm_2/while/Identity_2Identitylstm_2/while/add:z:0^lstm_2/while/NoOp*
T0*
_output_shapes
: 
lstm_2/while/Identity_3IdentityAlstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_2/while/NoOp*
T0*
_output_shapes
: 
lstm_2/while/Identity_4Identity"lstm_2/while/lstm_cell_2/mul_2:z:0^lstm_2/while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_2/while/Identity_5Identity"lstm_2/while/lstm_cell_2/add_1:z:0^lstm_2/while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџщ
lstm_2/while/NoOpNoOp0^lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_2_while_identitylstm_2/while/Identity:output:0";
lstm_2_while_identity_1 lstm_2/while/Identity_1:output:0";
lstm_2_while_identity_2 lstm_2/while/Identity_2:output:0";
lstm_2_while_identity_3 lstm_2/while/Identity_3:output:0";
lstm_2_while_identity_4 lstm_2/while/Identity_4:output:0";
lstm_2_while_identity_5 lstm_2/while/Identity_5:output:0"L
#lstm_2_while_lstm_2_strided_slice_1%lstm_2_while_lstm_2_strided_slice_1_0"v
8lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource:lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource_0"x
9lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource;lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0"t
7lstm_2_while_lstm_cell_2_matmul_readvariableop_resource9lstm_2_while_lstm_cell_2_matmul_readvariableop_resource_0"Ф
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensoralstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2b
/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp2`
.lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp.lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp2d
0lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp0lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџ:.*
(
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 

л
F__inference_gru_cell_2_layer_call_and_return_conditional_losses_374285

inputs
states_0*
readvariableop_resource:	Р2
matmul_readvariableop_resource:
Р3
 matmul_1_readvariableop_resource:	@Р
identity

identity_1ЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpЂReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	Р*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:Р:Р*	
numv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Р*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџРi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџРZ
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЃ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_splity
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@Р*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџРm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџРZ
ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   џџџџ\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЦ
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@I
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@U
mul_1MulSigmoid:y:0states_0*
T0*'
_output_shapes
:џџџџџџџџџ@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@[
mul_2Mulsub:z:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ@V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@X
IdentityIdentity	add_3:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Z

Identity_1Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ:џџџџџџџџџ@: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states/0
Њ
З
'__inference_lstm_2_layer_call_fn_372789
inputs_0
unknown:	
	unknown_0:

	unknown_1:	
identityЂStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_370822}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
ь
c
E__inference_dropout_4_layer_call_and_return_conditional_losses_371335

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:џџџџџџџџџ
`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:џџџџџџџџџ
"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ
:T P
,
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
и
c
E__inference_dropout_5_layer_call_and_return_conditional_losses_371504

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ@:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ќ

gru_2_while_cond_372662(
$gru_2_while_gru_2_while_loop_counter.
*gru_2_while_gru_2_while_maximum_iterations
gru_2_while_placeholder
gru_2_while_placeholder_1
gru_2_while_placeholder_2*
&gru_2_while_less_gru_2_strided_slice_1@
<gru_2_while_gru_2_while_cond_372662___redundant_placeholder0@
<gru_2_while_gru_2_while_cond_372662___redundant_placeholder1@
<gru_2_while_gru_2_while_cond_372662___redundant_placeholder2@
<gru_2_while_gru_2_while_cond_372662___redundant_placeholder3
gru_2_while_identity
z
gru_2/while/LessLessgru_2_while_placeholder&gru_2_while_less_gru_2_strided_slice_1*
T0*
_output_shapes
: W
gru_2/while/IdentityIdentitygru_2/while/Less:z:0*
T0
*
_output_shapes
: "5
gru_2_while_identitygru_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
ё
c
*__inference_dropout_5_layer_call_fn_374084

inputs
identityЂStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_371572o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Й
У
while_cond_373012
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_373012___redundant_placeholder04
0while_while_cond_373012___redundant_placeholder14
0while_while_cond_373012___redundant_placeholder24
0while_while_cond_373012___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџ:.*
(
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
§	
Я
lstm_2_while_cond_372509*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3,
(lstm_2_while_less_lstm_2_strided_slice_1B
>lstm_2_while_lstm_2_while_cond_372509___redundant_placeholder0B
>lstm_2_while_lstm_2_while_cond_372509___redundant_placeholder1B
>lstm_2_while_lstm_2_while_cond_372509___redundant_placeholder2B
>lstm_2_while_lstm_2_while_cond_372509___redundant_placeholder3
lstm_2_while_identity
~
lstm_2/while/LessLesslstm_2_while_placeholder(lstm_2_while_less_lstm_2_strided_slice_1*
T0*
_output_shapes
: Y
lstm_2/while/IdentityIdentitylstm_2/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_2_while_identitylstm_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџ:.*
(
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
к
Њ
while_cond_373518
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_373518___redundant_placeholder04
0while_while_cond_373518___redundant_placeholder14
0while_while_cond_373518___redundant_placeholder24
0while_while_cond_373518___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
ь
c
E__inference_dropout_4_layer_call_and_return_conditional_losses_373398

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:џџџџџџџџџ
`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:џџџџџџџџџ
"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ
:T P
,
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
РJ

B__inference_lstm_2_layer_call_and_return_conditional_losses_373097
inputs_0=
*lstm_cell_2_matmul_readvariableop_resource:	@
,lstm_cell_2_matmul_1_readvariableop_resource:
:
+lstm_cell_2_biasadd_readvariableop_resource:	
identityЂ"lstm_cell_2/BiasAdd/ReadVariableOpЂ!lstm_cell_2/MatMul/ReadVariableOpЂ#lstm_cell_2/MatMul_1/ReadVariableOpЂwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :о
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitm
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџo
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџv
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџg
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџy
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџo
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџd
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_373013*
condR
while_cond_373012*M
output_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ь
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџН
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
Е

л
+__inference_gru_cell_2_layer_call_fn_374232

inputs
states_0
unknown:	Р
	unknown_0:
Р
	unknown_1:	@Р
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_gru_cell_2_layer_call_and_return_conditional_losses_370901o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ:џџџџџџџџџ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states/0
є
і
,__inference_lstm_cell_2_layer_call_fn_374154

inputs
states_0
states_1
unknown:	
	unknown_0:

	unknown_1:	
identity

identity_1

identity_2ЂStatefulPartitionedCallЊ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_370694p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:џџџџџџџџџr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:RN
(
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/0:RN
(
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/1
к
Њ
while_cond_371652
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_371652___redundant_placeholder04
0while_while_cond_371652___redundant_placeholder14
0while_while_cond_371652___redundant_placeholder24
0while_while_cond_371652___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
о7
Щ
while_body_371238
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_2_matmul_readvariableop_resource_0:	H
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:
B
3while_lstm_cell_2_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_2_matmul_readvariableop_resource:	F
2while_lstm_cell_2_matmul_1_readvariableop_resource:
@
1while_lstm_cell_2_biasadd_readvariableop_resource:	Ђ(while/lstm_cell_2/BiasAdd/ReadVariableOpЂ'while/lstm_cell_2/MatMul/ReadVariableOpЂ)while/lstm_cell_2/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0И
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ 
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Є
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџc
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splity
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџ{
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџs
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ{
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџp
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџФ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџy
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџЭ

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџ:.*
(
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
РJ

B__inference_lstm_2_layer_call_and_return_conditional_losses_372954
inputs_0=
*lstm_cell_2_matmul_readvariableop_resource:	@
,lstm_cell_2_matmul_1_readvariableop_resource:
:
+lstm_cell_2_biasadd_readvariableop_resource:	
identityЂ"lstm_cell_2/BiasAdd/ReadVariableOpЂ!lstm_cell_2/MatMul/ReadVariableOpЂ#lstm_cell_2/MatMul_1/ReadVariableOpЂwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :о
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitm
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџo
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџv
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџg
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџy
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџo
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџd
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_372870*
condR
while_cond_372869*M
output_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ь
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџН
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
к
Њ
while_cond_371400
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_371400___redundant_placeholder04
0while_while_cond_371400___redundant_placeholder14
0while_while_cond_371400___redundant_placeholder24
0while_while_cond_371400___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
@
Љ

lstm_2_while_body_372208*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3)
%lstm_2_while_lstm_2_strided_slice_1_0e
alstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0L
9lstm_2_while_lstm_cell_2_matmul_readvariableop_resource_0:	O
;lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0:
I
:lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource_0:	
lstm_2_while_identity
lstm_2_while_identity_1
lstm_2_while_identity_2
lstm_2_while_identity_3
lstm_2_while_identity_4
lstm_2_while_identity_5'
#lstm_2_while_lstm_2_strided_slice_1c
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensorJ
7lstm_2_while_lstm_cell_2_matmul_readvariableop_resource:	M
9lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource:
G
8lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource:	Ђ/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOpЂ.lstm_2/while/lstm_cell_2/MatMul/ReadVariableOpЂ0lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Щ
0lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0lstm_2_while_placeholderGlstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Љ
.lstm_2/while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp9lstm_2_while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Э
lstm_2/while/lstm_cell_2/MatMulMatMul7lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЎ
0lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp;lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Д
!lstm_2/while/lstm_cell_2/MatMul_1MatMullstm_2_while_placeholder_28lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџА
lstm_2/while/lstm_cell_2/addAddV2)lstm_2/while/lstm_cell_2/MatMul:product:0+lstm_2/while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџЇ
/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp:lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Й
 lstm_2/while/lstm_cell_2/BiasAddBiasAdd lstm_2/while/lstm_cell_2/add:z:07lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџj
(lstm_2/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
lstm_2/while/lstm_cell_2/splitSplit1lstm_2/while/lstm_cell_2/split/split_dim:output:0)lstm_2/while/lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split
 lstm_2/while/lstm_cell_2/SigmoidSigmoid'lstm_2/while/lstm_cell_2/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
"lstm_2/while/lstm_cell_2/Sigmoid_1Sigmoid'lstm_2/while/lstm_cell_2/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_2/while/lstm_cell_2/mulMul&lstm_2/while/lstm_cell_2/Sigmoid_1:y:0lstm_2_while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_2/while/lstm_cell_2/ReluRelu'lstm_2/while/lstm_cell_2/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџЋ
lstm_2/while/lstm_cell_2/mul_1Mul$lstm_2/while/lstm_cell_2/Sigmoid:y:0+lstm_2/while/lstm_cell_2/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџ 
lstm_2/while/lstm_cell_2/add_1AddV2 lstm_2/while/lstm_cell_2/mul:z:0"lstm_2/while/lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ
"lstm_2/while/lstm_cell_2/Sigmoid_2Sigmoid'lstm_2/while/lstm_cell_2/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџ~
lstm_2/while/lstm_cell_2/Relu_1Relu"lstm_2/while/lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџЏ
lstm_2/while/lstm_cell_2/mul_2Mul&lstm_2/while/lstm_cell_2/Sigmoid_2:y:0-lstm_2/while/lstm_cell_2/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџр
1lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_2_while_placeholder_1lstm_2_while_placeholder"lstm_2/while/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвT
lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_2/while/addAddV2lstm_2_while_placeholderlstm_2/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_2/while/add_1AddV2&lstm_2_while_lstm_2_while_loop_counterlstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_2/while/IdentityIdentitylstm_2/while/add_1:z:0^lstm_2/while/NoOp*
T0*
_output_shapes
: 
lstm_2/while/Identity_1Identity,lstm_2_while_lstm_2_while_maximum_iterations^lstm_2/while/NoOp*
T0*
_output_shapes
: n
lstm_2/while/Identity_2Identitylstm_2/while/add:z:0^lstm_2/while/NoOp*
T0*
_output_shapes
: 
lstm_2/while/Identity_3IdentityAlstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_2/while/NoOp*
T0*
_output_shapes
: 
lstm_2/while/Identity_4Identity"lstm_2/while/lstm_cell_2/mul_2:z:0^lstm_2/while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_2/while/Identity_5Identity"lstm_2/while/lstm_cell_2/add_1:z:0^lstm_2/while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџщ
lstm_2/while/NoOpNoOp0^lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_2_while_identitylstm_2/while/Identity:output:0";
lstm_2_while_identity_1 lstm_2/while/Identity_1:output:0";
lstm_2_while_identity_2 lstm_2/while/Identity_2:output:0";
lstm_2_while_identity_3 lstm_2/while/Identity_3:output:0";
lstm_2_while_identity_4 lstm_2/while/Identity_4:output:0";
lstm_2_while_identity_5 lstm_2/while/Identity_5:output:0"L
#lstm_2_while_lstm_2_strided_slice_1%lstm_2_while_lstm_2_strided_slice_1_0"v
8lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource:lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource_0"x
9lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource;lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0"t
7lstm_2_while_lstm_cell_2_matmul_readvariableop_resource9lstm_2_while_lstm_cell_2_matmul_readvariableop_resource_0"Ф
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensoralstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2b
/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp2`
.lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp.lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp2d
0lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp0lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџ:.*
(
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
вM

A__inference_gru_2_layer_call_and_return_conditional_losses_371491

inputs5
"gru_cell_2_readvariableop_resource:	Р=
)gru_cell_2_matmul_readvariableop_resource:
Р>
+gru_cell_2_matmul_1_readvariableop_resource:	@Р
identityЂ gru_cell_2/MatMul/ReadVariableOpЂ"gru_cell_2/MatMul_1/ReadVariableOpЂgru_cell_2/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:
џџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask}
gru_cell_2/ReadVariableOpReadVariableOp"gru_cell_2_readvariableop_resource*
_output_shapes
:	Р*
dtype0w
gru_cell_2/unstackUnpack!gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:Р:Р*	
num
 gru_cell_2/MatMul/ReadVariableOpReadVariableOp)gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
Р*
dtype0
gru_cell_2/MatMulMatMulstrided_slice_2:output:0(gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџР
gru_cell_2/BiasAddBiasAddgru_cell_2/MatMul:product:0gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџРe
gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџФ
gru_cell_2/splitSplit#gru_cell_2/split/split_dim:output:0gru_cell_2/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split
"gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	@Р*
dtype0
gru_cell_2/MatMul_1MatMulzeros:output:0*gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџР
gru_cell_2/BiasAdd_1BiasAddgru_cell_2/MatMul_1:product:0gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџРe
gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   џџџџg
gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџђ
gru_cell_2/split_1SplitVgru_cell_2/BiasAdd_1:output:0gru_cell_2/Const:output:0%gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split
gru_cell_2/addAddV2gru_cell_2/split:output:0gru_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
gru_cell_2/SigmoidSigmoidgru_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
gru_cell_2/add_1AddV2gru_cell_2/split:output:1gru_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@g
gru_cell_2/Sigmoid_1Sigmoidgru_cell_2/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@~
gru_cell_2/mulMulgru_cell_2/Sigmoid_1:y:0gru_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@z
gru_cell_2/add_2AddV2gru_cell_2/split:output:2gru_cell_2/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@_
gru_cell_2/ReluRelugru_cell_2/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@q
gru_cell_2/mul_1Mulgru_cell_2/Sigmoid:y:0zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@U
gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?z
gru_cell_2/subSubgru_cell_2/sub/x:output:0gru_cell_2/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@|
gru_cell_2/mul_2Mulgru_cell_2/sub:z:0gru_cell_2/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ@w
gru_cell_2/add_3AddV2gru_cell_2/mul_1:z:0gru_cell_2/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Л
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_2_readvariableop_resource)gru_cell_2_matmul_readvariableop_resource+gru_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_371401*
condR
while_cond_371400*8
output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@В
NoOpNoOp!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџ
: : : 2D
 gru_cell_2/MatMul/ReadVariableOp gru_cell_2/MatMul/ReadVariableOp2H
"gru_cell_2/MatMul_1/ReadVariableOp"gru_cell_2/MatMul_1/ReadVariableOp26
gru_cell_2/ReadVariableOpgru_cell_2/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
Й
У
while_cond_373155
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_373155___redundant_placeholder04
0while_while_cond_373155___redundant_placeholder14
0while_while_cond_373155___redundant_placeholder24
0while_while_cond_373155___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџ:.*
(
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
ж=

while_body_371401
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_2_readvariableop_resource_0:	РE
1while_gru_cell_2_matmul_readvariableop_resource_0:
РF
3while_gru_cell_2_matmul_1_readvariableop_resource_0:	@Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_2_readvariableop_resource:	РC
/while_gru_cell_2_matmul_readvariableop_resource:
РD
1while_gru_cell_2_matmul_1_readvariableop_resource:	@РЂ&while/gru_cell_2/MatMul/ReadVariableOpЂ(while/gru_cell_2/MatMul_1/ReadVariableOpЂwhile/gru_cell_2/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype0
while/gru_cell_2/ReadVariableOpReadVariableOp*while_gru_cell_2_readvariableop_resource_0*
_output_shapes
:	Р*
dtype0
while/gru_cell_2/unstackUnpack'while/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:Р:Р*	
num
&while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
Р*
dtype0Ж
while/gru_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџР
while/gru_cell_2/BiasAddBiasAdd!while/gru_cell_2/MatMul:product:0!while/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџРk
 while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџж
while/gru_cell_2/splitSplit)while/gru_cell_2/split/split_dim:output:0!while/gru_cell_2/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split
(while/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	@Р*
dtype0
while/gru_cell_2/MatMul_1MatMulwhile_placeholder_20while/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџР 
while/gru_cell_2/BiasAdd_1BiasAdd#while/gru_cell_2/MatMul_1:product:0!while/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџРk
while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   џџџџm
"while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
while/gru_cell_2/split_1SplitV#while/gru_cell_2/BiasAdd_1:output:0while/gru_cell_2/Const:output:0+while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split
while/gru_cell_2/addAddV2while/gru_cell_2/split:output:0!while/gru_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@o
while/gru_cell_2/SigmoidSigmoidwhile/gru_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/add_1AddV2while/gru_cell_2/split:output:1!while/gru_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@s
while/gru_cell_2/Sigmoid_1Sigmoidwhile/gru_cell_2/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/mulMulwhile/gru_cell_2/Sigmoid_1:y:0!while/gru_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/add_2AddV2while/gru_cell_2/split:output:2while/gru_cell_2/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
while/gru_cell_2/ReluReluwhile/gru_cell_2/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/mul_1Mulwhile/gru_cell_2/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@[
while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell_2/subSubwhile/gru_cell_2/sub/x:output:0while/gru_cell_2/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/mul_2Mulwhile/gru_cell_2/sub:z:0#while/gru_cell_2/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/add_3AddV2while/gru_cell_2/mul_1:z:0while/gru_cell_2/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ы
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/gru_cell_2/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Т

while/NoOpNoOp'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1while_gru_cell_2_matmul_1_readvariableop_resource3while_gru_cell_2_matmul_1_readvariableop_resource_0"d
/while_gru_cell_2_matmul_readvariableop_resource1while_gru_cell_2_matmul_readvariableop_resource_0"V
(while_gru_cell_2_readvariableop_resource*while_gru_cell_2_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ@: : : : : 2P
&while/gru_cell_2/MatMul/ReadVariableOp&while/gru_cell_2/MatMul/ReadVariableOp2T
(while/gru_cell_2/MatMul_1/ReadVariableOp(while/gru_cell_2/MatMul_1/ReadVariableOp2B
while/gru_cell_2/ReadVariableOpwhile/gru_cell_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
Й
У
while_cond_370561
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_370561___redundant_placeholder04
0while_while_cond_370561___redundant_placeholder14
0while_while_cond_370561___redundant_placeholder24
0while_while_cond_370561___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџ:.*
(
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
о	
Ь
-__inference_sequential_2_layer_call_fn_372149

inputs
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:	Р
	unknown_3:
Р
	unknown_4:	@Р
	unknown_5:@
	unknown_6:
identityЂStatefulPartitionedCallЋ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_371988o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ
: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
J

B__inference_lstm_2_layer_call_and_return_conditional_losses_373383

inputs=
*lstm_cell_2_matmul_readvariableop_resource:	@
,lstm_cell_2_matmul_1_readvariableop_resource:
:
+lstm_cell_2_biasadd_readvariableop_resource:	
identityЂ"lstm_cell_2/BiasAdd/ReadVariableOpЂ!lstm_cell_2/MatMul/ReadVariableOpЂ#lstm_cell_2/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :о
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitm
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџo
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџv
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџg
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџy
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџo
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџd
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_373299*
condR
while_cond_373298*M
output_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   У
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:
џџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџ
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџ
Н
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
њ
И
&__inference_gru_2_layer_call_fn_373443

inputs
unknown:	Р
	unknown_0:
Р
	unknown_1:	@Р
identityЂStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_gru_2_layer_call_and_return_conditional_losses_371491o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
џ	
d
E__inference_dropout_5_layer_call_and_return_conditional_losses_374101

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>І
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ@:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
њ
И
&__inference_gru_2_layer_call_fn_373454

inputs
unknown:	Р
	unknown_0:
Р
	unknown_1:	@Р
identityЂStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_gru_2_layer_call_and_return_conditional_losses_371743o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
є
і
,__inference_lstm_cell_2_layer_call_fn_374137

inputs
states_0
states_1
unknown:	
	unknown_0:

	unknown_1:	
identity

identity_1

identity_2ЂStatefulPartitionedCallЊ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_370548p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:џџџџџџџџџr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:RN
(
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/0:RN
(
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/1
ь

H__inference_sequential_2_layer_call_and_return_conditional_losses_371988

inputs 
lstm_2_371966:	!
lstm_2_371968:

lstm_2_371970:	
gru_2_371974:	Р 
gru_2_371976:
Р
gru_2_371978:	@Р 
dense_2_371982:@
dense_2_371984:
identityЂdense_2/StatefulPartitionedCallЂ!dropout_4/StatefulPartitionedCallЂ!dropout_5/StatefulPartitionedCallЂgru_2/StatefulPartitionedCallЂlstm_2/StatefulPartitionedCallў
lstm_2/StatefulPartitionedCallStatefulPartitionedCallinputslstm_2_371966lstm_2_371968lstm_2_371970*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_371931№
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_371772
gru_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0gru_2_371974gru_2_371976gru_2_371978*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_gru_2_layer_call_and_return_conditional_losses_371743
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall&gru_2/StatefulPartitionedCall:output:0"^dropout_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_371572
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_5/StatefulPartitionedCall:output:0dense_2_371982dense_2_371984*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_371516w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџё
NoOpNoOp ^dense_2/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall^gru_2/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ
: : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall2>
gru_2/StatefulPartitionedCallgru_2/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
п~
о
"__inference__traced_restore_374543
file_prefix1
assignvariableop_dense_2_kernel:@-
assignvariableop_1_dense_2_bias:?
,assignvariableop_2_lstm_2_lstm_cell_2_kernel:	J
6assignvariableop_3_lstm_2_lstm_cell_2_recurrent_kernel:
9
*assignvariableop_4_lstm_2_lstm_cell_2_bias:	>
*assignvariableop_5_gru_2_gru_cell_2_kernel:
РG
4assignvariableop_6_gru_2_gru_cell_2_recurrent_kernel:	@Р;
(assignvariableop_7_gru_2_gru_cell_2_bias:	Р&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: ;
)assignvariableop_15_adam_dense_2_kernel_m:@5
'assignvariableop_16_adam_dense_2_bias_m:G
4assignvariableop_17_adam_lstm_2_lstm_cell_2_kernel_m:	R
>assignvariableop_18_adam_lstm_2_lstm_cell_2_recurrent_kernel_m:
A
2assignvariableop_19_adam_lstm_2_lstm_cell_2_bias_m:	F
2assignvariableop_20_adam_gru_2_gru_cell_2_kernel_m:
РO
<assignvariableop_21_adam_gru_2_gru_cell_2_recurrent_kernel_m:	@РC
0assignvariableop_22_adam_gru_2_gru_cell_2_bias_m:	Р;
)assignvariableop_23_adam_dense_2_kernel_v:@5
'assignvariableop_24_adam_dense_2_bias_v:G
4assignvariableop_25_adam_lstm_2_lstm_cell_2_kernel_v:	R
>assignvariableop_26_adam_lstm_2_lstm_cell_2_recurrent_kernel_v:
A
2assignvariableop_27_adam_lstm_2_lstm_cell_2_bias_v:	F
2assignvariableop_28_adam_gru_2_gru_cell_2_kernel_v:
РO
<assignvariableop_29_adam_gru_2_gru_cell_2_recurrent_kernel_v:	@РC
0assignvariableop_30_adam_gru_2_gru_cell_2_bias_v:	Р
identity_32ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9И
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*о
valueдBб B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHА
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B С
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::*.
dtypes$
"2 	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_dense_2_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_2_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp,assignvariableop_2_lstm_2_lstm_cell_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_3AssignVariableOp6assignvariableop_3_lstm_2_lstm_cell_2_recurrent_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp*assignvariableop_4_lstm_2_lstm_cell_2_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp*assignvariableop_5_gru_2_gru_cell_2_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Ѓ
AssignVariableOp_6AssignVariableOp4assignvariableop_6_gru_2_gru_cell_2_recurrent_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp(assignvariableop_7_gru_2_gru_cell_2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_dense_2_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp'assignvariableop_16_adam_dense_2_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_17AssignVariableOp4assignvariableop_17_adam_lstm_2_lstm_cell_2_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_18AssignVariableOp>assignvariableop_18_adam_lstm_2_lstm_cell_2_recurrent_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ѓ
AssignVariableOp_19AssignVariableOp2assignvariableop_19_adam_lstm_2_lstm_cell_2_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ѓ
AssignVariableOp_20AssignVariableOp2assignvariableop_20_adam_gru_2_gru_cell_2_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOp_21AssignVariableOp<assignvariableop_21_adam_gru_2_gru_cell_2_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ё
AssignVariableOp_22AssignVariableOp0assignvariableop_22_adam_gru_2_gru_cell_2_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_2_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_2_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_lstm_2_lstm_cell_2_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_26AssignVariableOp>assignvariableop_26_adam_lstm_2_lstm_cell_2_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ѓ
AssignVariableOp_27AssignVariableOp2assignvariableop_27_adam_lstm_2_lstm_cell_2_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ѓ
AssignVariableOp_28AssignVariableOp2assignvariableop_28_adam_gru_2_gru_cell_2_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOp_29AssignVariableOp<assignvariableop_29_adam_gru_2_gru_cell_2_recurrent_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ё
AssignVariableOp_30AssignVariableOp0assignvariableop_30_adam_gru_2_gru_cell_2_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 љ
Identity_31Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_32IdentityIdentity_31:output:0^NoOp_1*
T0*
_output_shapes
: ц
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_32Identity_32:output:0*S
_input_shapesB
@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
д­
Ъ
H__inference_sequential_2_layer_call_and_return_conditional_losses_372451

inputsD
1lstm_2_lstm_cell_2_matmul_readvariableop_resource:	G
3lstm_2_lstm_cell_2_matmul_1_readvariableop_resource:
A
2lstm_2_lstm_cell_2_biasadd_readvariableop_resource:	;
(gru_2_gru_cell_2_readvariableop_resource:	РC
/gru_2_gru_cell_2_matmul_readvariableop_resource:
РD
1gru_2_gru_cell_2_matmul_1_readvariableop_resource:	@Р8
&dense_2_matmul_readvariableop_resource:@5
'dense_2_biasadd_readvariableop_resource:
identityЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOpЂ&gru_2/gru_cell_2/MatMul/ReadVariableOpЂ(gru_2/gru_cell_2/MatMul_1/ReadVariableOpЂgru_2/gru_cell_2/ReadVariableOpЂgru_2/whileЂ)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOpЂ(lstm_2/lstm_cell_2/MatMul/ReadVariableOpЂ*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOpЂlstm_2/whileB
lstm_2/ShapeShapeinputs*
T0*
_output_shapes
:d
lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:є
lstm_2/strided_sliceStridedSlicelstm_2/Shape:output:0#lstm_2/strided_slice/stack:output:0%lstm_2/strided_slice/stack_1:output:0%lstm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm_2/zeros/packedPacklstm_2/strided_slice:output:0lstm_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_2/zerosFilllstm_2/zeros/packed:output:0lstm_2/zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџZ
lstm_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm_2/zeros_1/packedPacklstm_2/strided_slice:output:0 lstm_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_2/zeros_1Filllstm_2/zeros_1/packed:output:0lstm_2/zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџj
lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          {
lstm_2/transpose	Transposeinputslstm_2/transpose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџR
lstm_2/Shape_1Shapelstm_2/transpose:y:0*
T0*
_output_shapes
:f
lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
lstm_2/strided_slice_1StridedSlicelstm_2/Shape_1:output:0%lstm_2/strided_slice_1/stack:output:0'lstm_2/strided_slice_1/stack_1:output:0'lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЩ
lstm_2/TensorArrayV2TensorListReserve+lstm_2/TensorArrayV2/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ѕ
.lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_2/transpose:y:0Elstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвf
lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_2/strided_slice_2StridedSlicelstm_2/transpose:y:0%lstm_2/strided_slice_2/stack:output:0'lstm_2/strided_slice_2/stack_1:output:0'lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
(lstm_2/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp1lstm_2_lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Љ
lstm_2/lstm_cell_2/MatMulMatMullstm_2/strided_slice_2:output:00lstm_2/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ 
*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp3lstm_2_lstm_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ѓ
lstm_2/lstm_cell_2/MatMul_1MatMullstm_2/zeros:output:02lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_2/lstm_cell_2/addAddV2#lstm_2/lstm_cell_2/MatMul:product:0%lstm_2/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp2lstm_2_lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ї
lstm_2/lstm_cell_2/BiasAddBiasAddlstm_2/lstm_cell_2/add:z:01lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"lstm_2/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѓ
lstm_2/lstm_cell_2/splitSplit+lstm_2/lstm_cell_2/split/split_dim:output:0#lstm_2/lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split{
lstm_2/lstm_cell_2/SigmoidSigmoid!lstm_2/lstm_cell_2/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџ}
lstm_2/lstm_cell_2/Sigmoid_1Sigmoid!lstm_2/lstm_cell_2/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_2/lstm_cell_2/mulMul lstm_2/lstm_cell_2/Sigmoid_1:y:0lstm_2/zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџu
lstm_2/lstm_cell_2/ReluRelu!lstm_2/lstm_cell_2/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_2/lstm_cell_2/mul_1Mullstm_2/lstm_cell_2/Sigmoid:y:0%lstm_2/lstm_cell_2/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_2/lstm_cell_2/add_1AddV2lstm_2/lstm_cell_2/mul:z:0lstm_2/lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ}
lstm_2/lstm_cell_2/Sigmoid_2Sigmoid!lstm_2/lstm_cell_2/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџr
lstm_2/lstm_cell_2/Relu_1Relulstm_2/lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_2/lstm_cell_2/mul_2Mul lstm_2/lstm_cell_2/Sigmoid_2:y:0'lstm_2/lstm_cell_2/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџu
$lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Э
lstm_2/TensorArrayV2_1TensorListReserve-lstm_2/TensorArrayV2_1/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвM
lstm_2/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ[
lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : х
lstm_2/whileWhile"lstm_2/while/loop_counter:output:0(lstm_2/while/maximum_iterations:output:0lstm_2/time:output:0lstm_2/TensorArrayV2_1:handle:0lstm_2/zeros:output:0lstm_2/zeros_1:output:0lstm_2/strided_slice_1:output:0>lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_2_lstm_cell_2_matmul_readvariableop_resource3lstm_2_lstm_cell_2_matmul_1_readvariableop_resource2lstm_2_lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_2_while_body_372208*$
condR
lstm_2_while_cond_372207*M
output_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   и
)lstm_2/TensorArrayV2Stack/TensorListStackTensorListStacklstm_2/while:output:3@lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:
џџџџџџџџџ*
element_dtype0o
lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџh
lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ћ
lstm_2/strided_slice_3StridedSlice2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_2/strided_slice_3/stack:output:0'lstm_2/strided_slice_3/stack_1:output:0'lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskl
lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ќ
lstm_2/transpose_1	Transpose2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџ
b
lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    m
dropout_4/IdentityIdentitylstm_2/transpose_1:y:0*
T0*,
_output_shapes
:џџџџџџџџџ
V
gru_2/ShapeShapedropout_4/Identity:output:0*
T0*
_output_shapes
:c
gru_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:я
gru_2/strided_sliceStridedSlicegru_2/Shape:output:0"gru_2/strided_slice/stack:output:0$gru_2/strided_slice/stack_1:output:0$gru_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
gru_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
gru_2/zeros/packedPackgru_2/strided_slice:output:0gru_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:V
gru_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
gru_2/zerosFillgru_2/zeros/packed:output:0gru_2/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@i
gru_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
gru_2/transpose	Transposedropout_4/Identity:output:0gru_2/transpose/perm:output:0*
T0*,
_output_shapes
:
џџџџџџџџџP
gru_2/Shape_1Shapegru_2/transpose:y:0*
T0*
_output_shapes
:e
gru_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: g
gru_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
gru_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
gru_2/strided_slice_1StridedSlicegru_2/Shape_1:output:0$gru_2/strided_slice_1/stack:output:0&gru_2/strided_slice_1/stack_1:output:0&gru_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
!gru_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЦ
gru_2/TensorArrayV2TensorListReserve*gru_2/TensorArrayV2/element_shape:output:0gru_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
;gru_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ђ
-gru_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_2/transpose:y:0Dgru_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвe
gru_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: g
gru_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
gru_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
gru_2/strided_slice_2StridedSlicegru_2/transpose:y:0$gru_2/strided_slice_2/stack:output:0&gru_2/strided_slice_2/stack_1:output:0&gru_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
gru_2/gru_cell_2/ReadVariableOpReadVariableOp(gru_2_gru_cell_2_readvariableop_resource*
_output_shapes
:	Р*
dtype0
gru_2/gru_cell_2/unstackUnpack'gru_2/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:Р:Р*	
num
&gru_2/gru_cell_2/MatMul/ReadVariableOpReadVariableOp/gru_2_gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
Р*
dtype0Є
gru_2/gru_cell_2/MatMulMatMulgru_2/strided_slice_2:output:0.gru_2/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџР
gru_2/gru_cell_2/BiasAddBiasAdd!gru_2/gru_cell_2/MatMul:product:0!gru_2/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџРk
 gru_2/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџж
gru_2/gru_cell_2/splitSplit)gru_2/gru_cell_2/split/split_dim:output:0!gru_2/gru_cell_2/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split
(gru_2/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp1gru_2_gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	@Р*
dtype0
gru_2/gru_cell_2/MatMul_1MatMulgru_2/zeros:output:00gru_2/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџР 
gru_2/gru_cell_2/BiasAdd_1BiasAdd#gru_2/gru_cell_2/MatMul_1:product:0!gru_2/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџРk
gru_2/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   џџџџm
"gru_2/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
gru_2/gru_cell_2/split_1SplitV#gru_2/gru_cell_2/BiasAdd_1:output:0gru_2/gru_cell_2/Const:output:0+gru_2/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split
gru_2/gru_cell_2/addAddV2gru_2/gru_cell_2/split:output:0!gru_2/gru_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@o
gru_2/gru_cell_2/SigmoidSigmoidgru_2/gru_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
gru_2/gru_cell_2/add_1AddV2gru_2/gru_cell_2/split:output:1!gru_2/gru_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@s
gru_2/gru_cell_2/Sigmoid_1Sigmoidgru_2/gru_cell_2/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
gru_2/gru_cell_2/mulMulgru_2/gru_cell_2/Sigmoid_1:y:0!gru_2/gru_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
gru_2/gru_cell_2/add_2AddV2gru_2/gru_cell_2/split:output:2gru_2/gru_cell_2/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
gru_2/gru_cell_2/ReluRelugru_2/gru_cell_2/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
gru_2/gru_cell_2/mul_1Mulgru_2/gru_cell_2/Sigmoid:y:0gru_2/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@[
gru_2/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
gru_2/gru_cell_2/subSubgru_2/gru_cell_2/sub/x:output:0gru_2/gru_cell_2/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@
gru_2/gru_cell_2/mul_2Mulgru_2/gru_cell_2/sub:z:0#gru_2/gru_cell_2/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ@
gru_2/gru_cell_2/add_3AddV2gru_2/gru_cell_2/mul_1:z:0gru_2/gru_cell_2/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@t
#gru_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   d
"gru_2/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :з
gru_2/TensorArrayV2_1TensorListReserve,gru_2/TensorArrayV2_1/element_shape:output:0+gru_2/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвL

gru_2/timeConst*
_output_shapes
: *
dtype0*
value	B : i
gru_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџZ
gru_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
gru_2/whileWhile!gru_2/while/loop_counter:output:0'gru_2/while/maximum_iterations:output:0gru_2/time:output:0gru_2/TensorArrayV2_1:handle:0gru_2/zeros:output:0gru_2/strided_slice_1:output:0=gru_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0(gru_2_gru_cell_2_readvariableop_resource/gru_2_gru_cell_2_matmul_readvariableop_resource1gru_2_gru_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *#
bodyR
gru_2_while_body_372354*#
condR
gru_2_while_cond_372353*8
output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *
parallel_iterations 
6gru_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ш
(gru_2/TensorArrayV2Stack/TensorListStackTensorListStackgru_2/while:output:3?gru_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsn
gru_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџg
gru_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: g
gru_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ѕ
gru_2/strided_slice_3StridedSlice1gru_2/TensorArrayV2Stack/TensorListStack:tensor:0$gru_2/strided_slice_3/stack:output:0&gru_2/strided_slice_3/stack_1:output:0&gru_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskk
gru_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ј
gru_2/transpose_1	Transpose1gru_2/TensorArrayV2Stack/TensorListStack:tensor:0gru_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@a
gru_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
dropout_5/IdentityIdentitygru_2/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense_2/MatMulMatMuldropout_5/Identity:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџg
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp'^gru_2/gru_cell_2/MatMul/ReadVariableOp)^gru_2/gru_cell_2/MatMul_1/ReadVariableOp ^gru_2/gru_cell_2/ReadVariableOp^gru_2/while*^lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp)^lstm_2/lstm_cell_2/MatMul/ReadVariableOp+^lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp^lstm_2/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ
: : : : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2P
&gru_2/gru_cell_2/MatMul/ReadVariableOp&gru_2/gru_cell_2/MatMul/ReadVariableOp2T
(gru_2/gru_cell_2/MatMul_1/ReadVariableOp(gru_2/gru_cell_2/MatMul_1/ReadVariableOp2B
gru_2/gru_cell_2/ReadVariableOpgru_2/gru_cell_2/ReadVariableOp2
gru_2/whilegru_2/while2V
)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp2T
(lstm_2/lstm_cell_2/MatMul/ReadVariableOp(lstm_2/lstm_cell_2/MatMul/ReadVariableOp2X
*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp2
lstm_2/whilelstm_2/while:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
Њ
З
'__inference_lstm_2_layer_call_fn_372778
inputs_0
unknown:	
	unknown_0:

	unknown_1:	
identityЂStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_370631}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
8

B__inference_lstm_2_layer_call_and_return_conditional_losses_370631

inputs%
lstm_cell_2_370549:	&
lstm_cell_2_370551:
!
lstm_cell_2_370553:	
identityЂ#lstm_cell_2/StatefulPartitionedCallЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskѓ
#lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_2_370549lstm_cell_2_370551lstm_cell_2_370553*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_370548n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : И
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_2_370549lstm_cell_2_370551lstm_cell_2_370553*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_370562*
condR
while_cond_370561*M
output_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ь
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџt
NoOpNoOp$^lstm_cell_2/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2J
#lstm_cell_2/StatefulPartitionedCall#lstm_cell_2/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Й
У
while_cond_373298
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_373298___redundant_placeholder04
0while_while_cond_373298___redundant_placeholder14
0while_while_cond_373298___redundant_placeholder24
0while_while_cond_373298___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџ:.*
(
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
о7
Щ
while_body_373156
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_2_matmul_readvariableop_resource_0:	H
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:
B
3while_lstm_cell_2_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_2_matmul_readvariableop_resource:	F
2while_lstm_cell_2_matmul_1_readvariableop_resource:
@
1while_lstm_cell_2_biasadd_readvariableop_resource:	Ђ(while/lstm_cell_2/BiasAdd/ReadVariableOpЂ'while/lstm_cell_2/MatMul/ReadVariableOpЂ)while/lstm_cell_2/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0И
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ 
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Є
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџc
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splity
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџ{
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџs
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ{
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџp
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџФ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџy
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџЭ

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџ:.*
(
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
ІO
Щ
%sequential_2_lstm_2_while_body_370238D
@sequential_2_lstm_2_while_sequential_2_lstm_2_while_loop_counterJ
Fsequential_2_lstm_2_while_sequential_2_lstm_2_while_maximum_iterations)
%sequential_2_lstm_2_while_placeholder+
'sequential_2_lstm_2_while_placeholder_1+
'sequential_2_lstm_2_while_placeholder_2+
'sequential_2_lstm_2_while_placeholder_3C
?sequential_2_lstm_2_while_sequential_2_lstm_2_strided_slice_1_0
{sequential_2_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_2_tensorarrayunstack_tensorlistfromtensor_0Y
Fsequential_2_lstm_2_while_lstm_cell_2_matmul_readvariableop_resource_0:	\
Hsequential_2_lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0:
V
Gsequential_2_lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource_0:	&
"sequential_2_lstm_2_while_identity(
$sequential_2_lstm_2_while_identity_1(
$sequential_2_lstm_2_while_identity_2(
$sequential_2_lstm_2_while_identity_3(
$sequential_2_lstm_2_while_identity_4(
$sequential_2_lstm_2_while_identity_5A
=sequential_2_lstm_2_while_sequential_2_lstm_2_strided_slice_1}
ysequential_2_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_2_tensorarrayunstack_tensorlistfromtensorW
Dsequential_2_lstm_2_while_lstm_cell_2_matmul_readvariableop_resource:	Z
Fsequential_2_lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource:
T
Esequential_2_lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource:	Ђ<sequential_2/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOpЂ;sequential_2/lstm_2/while/lstm_cell_2/MatMul/ReadVariableOpЂ=sequential_2/lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp
Ksequential_2/lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
=sequential_2/lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_2_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_2_tensorarrayunstack_tensorlistfromtensor_0%sequential_2_lstm_2_while_placeholderTsequential_2/lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0У
;sequential_2/lstm_2/while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOpFsequential_2_lstm_2_while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0є
,sequential_2/lstm_2/while/lstm_cell_2/MatMulMatMulDsequential_2/lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:0Csequential_2/lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
=sequential_2/lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpHsequential_2_lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0л
.sequential_2/lstm_2/while/lstm_cell_2/MatMul_1MatMul'sequential_2_lstm_2_while_placeholder_2Esequential_2/lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџз
)sequential_2/lstm_2/while/lstm_cell_2/addAddV26sequential_2/lstm_2/while/lstm_cell_2/MatMul:product:08sequential_2/lstm_2/while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџС
<sequential_2/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOpGsequential_2_lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0р
-sequential_2/lstm_2/while/lstm_cell_2/BiasAddBiasAdd-sequential_2/lstm_2/while/lstm_cell_2/add:z:0Dsequential_2/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџw
5sequential_2/lstm_2/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ќ
+sequential_2/lstm_2/while/lstm_cell_2/splitSplit>sequential_2/lstm_2/while/lstm_cell_2/split/split_dim:output:06sequential_2/lstm_2/while/lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitЁ
-sequential_2/lstm_2/while/lstm_cell_2/SigmoidSigmoid4sequential_2/lstm_2/while/lstm_cell_2/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџЃ
/sequential_2/lstm_2/while/lstm_cell_2/Sigmoid_1Sigmoid4sequential_2/lstm_2/while/lstm_cell_2/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџС
)sequential_2/lstm_2/while/lstm_cell_2/mulMul3sequential_2/lstm_2/while/lstm_cell_2/Sigmoid_1:y:0'sequential_2_lstm_2_while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџ
*sequential_2/lstm_2/while/lstm_cell_2/ReluRelu4sequential_2/lstm_2/while/lstm_cell_2/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџв
+sequential_2/lstm_2/while/lstm_cell_2/mul_1Mul1sequential_2/lstm_2/while/lstm_cell_2/Sigmoid:y:08sequential_2/lstm_2/while/lstm_cell_2/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџЧ
+sequential_2/lstm_2/while/lstm_cell_2/add_1AddV2-sequential_2/lstm_2/while/lstm_cell_2/mul:z:0/sequential_2/lstm_2/while/lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџЃ
/sequential_2/lstm_2/while/lstm_cell_2/Sigmoid_2Sigmoid4sequential_2/lstm_2/while/lstm_cell_2/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџ
,sequential_2/lstm_2/while/lstm_cell_2/Relu_1Relu/sequential_2/lstm_2/while/lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџж
+sequential_2/lstm_2/while/lstm_cell_2/mul_2Mul3sequential_2/lstm_2/while/lstm_cell_2/Sigmoid_2:y:0:sequential_2/lstm_2/while/lstm_cell_2/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџ
>sequential_2/lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_2_lstm_2_while_placeholder_1%sequential_2_lstm_2_while_placeholder/sequential_2/lstm_2/while/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвa
sequential_2/lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_2/lstm_2/while/addAddV2%sequential_2_lstm_2_while_placeholder(sequential_2/lstm_2/while/add/y:output:0*
T0*
_output_shapes
: c
!sequential_2/lstm_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :З
sequential_2/lstm_2/while/add_1AddV2@sequential_2_lstm_2_while_sequential_2_lstm_2_while_loop_counter*sequential_2/lstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: 
"sequential_2/lstm_2/while/IdentityIdentity#sequential_2/lstm_2/while/add_1:z:0^sequential_2/lstm_2/while/NoOp*
T0*
_output_shapes
: К
$sequential_2/lstm_2/while/Identity_1IdentityFsequential_2_lstm_2_while_sequential_2_lstm_2_while_maximum_iterations^sequential_2/lstm_2/while/NoOp*
T0*
_output_shapes
: 
$sequential_2/lstm_2/while/Identity_2Identity!sequential_2/lstm_2/while/add:z:0^sequential_2/lstm_2/while/NoOp*
T0*
_output_shapes
: Т
$sequential_2/lstm_2/while/Identity_3IdentityNsequential_2/lstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_2/lstm_2/while/NoOp*
T0*
_output_shapes
: Е
$sequential_2/lstm_2/while/Identity_4Identity/sequential_2/lstm_2/while/lstm_cell_2/mul_2:z:0^sequential_2/lstm_2/while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџЕ
$sequential_2/lstm_2/while/Identity_5Identity/sequential_2/lstm_2/while/lstm_cell_2/add_1:z:0^sequential_2/lstm_2/while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџ
sequential_2/lstm_2/while/NoOpNoOp=^sequential_2/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp<^sequential_2/lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp>^sequential_2/lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Q
"sequential_2_lstm_2_while_identity+sequential_2/lstm_2/while/Identity:output:0"U
$sequential_2_lstm_2_while_identity_1-sequential_2/lstm_2/while/Identity_1:output:0"U
$sequential_2_lstm_2_while_identity_2-sequential_2/lstm_2/while/Identity_2:output:0"U
$sequential_2_lstm_2_while_identity_3-sequential_2/lstm_2/while/Identity_3:output:0"U
$sequential_2_lstm_2_while_identity_4-sequential_2/lstm_2/while/Identity_4:output:0"U
$sequential_2_lstm_2_while_identity_5-sequential_2/lstm_2/while/Identity_5:output:0"
Esequential_2_lstm_2_while_lstm_cell_2_biasadd_readvariableop_resourceGsequential_2_lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource_0"
Fsequential_2_lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resourceHsequential_2_lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0"
Dsequential_2_lstm_2_while_lstm_cell_2_matmul_readvariableop_resourceFsequential_2_lstm_2_while_lstm_cell_2_matmul_readvariableop_resource_0"
=sequential_2_lstm_2_while_sequential_2_lstm_2_strided_slice_1?sequential_2_lstm_2_while_sequential_2_lstm_2_strided_slice_1_0"ј
ysequential_2_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_2_tensorarrayunstack_tensorlistfromtensor{sequential_2_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2|
<sequential_2/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp<sequential_2/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp2z
;sequential_2/lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp;sequential_2/lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp2~
=sequential_2/lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp=sequential_2/lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџ:.*
(
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
J

B__inference_lstm_2_layer_call_and_return_conditional_losses_371322

inputs=
*lstm_cell_2_matmul_readvariableop_resource:	@
,lstm_cell_2_matmul_1_readvariableop_resource:
:
+lstm_cell_2_biasadd_readvariableop_resource:	
identityЂ"lstm_cell_2/BiasAdd/ReadVariableOpЂ!lstm_cell_2/MatMul/ReadVariableOpЂ#lstm_cell_2/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :о
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitm
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџo
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџv
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџg
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџy
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџo
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџd
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_371238*
condR
while_cond_371237*M
output_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   У
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:
џџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџ
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџ
Н
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
!
А
while_body_371099
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_gru_cell_2_371121_0:	Р-
while_gru_cell_2_371123_0:
Р,
while_gru_cell_2_371125_0:	@Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_gru_cell_2_371121:	Р+
while_gru_cell_2_371123:
Р*
while_gru_cell_2_371125:	@РЂ(while/gru_cell_2/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype0џ
(while/gru_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_2_371121_0while_gru_cell_2_371123_0while_gru_cell_2_371125_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_gru_cell_2_layer_call_and_return_conditional_losses_371046r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:01while/gru_cell_2/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity1while/gru_cell_2/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@w

while/NoOpNoOp)^while/gru_cell_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "4
while_gru_cell_2_371121while_gru_cell_2_371121_0"4
while_gru_cell_2_371123while_gru_cell_2_371123_0"4
while_gru_cell_2_371125while_gru_cell_2_371125_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ@: : : : : 2T
(while/gru_cell_2/StatefulPartitionedCall(while/gru_cell_2/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
ќ

gru_2_while_cond_372353(
$gru_2_while_gru_2_while_loop_counter.
*gru_2_while_gru_2_while_maximum_iterations
gru_2_while_placeholder
gru_2_while_placeholder_1
gru_2_while_placeholder_2*
&gru_2_while_less_gru_2_strided_slice_1@
<gru_2_while_gru_2_while_cond_372353___redundant_placeholder0@
<gru_2_while_gru_2_while_cond_372353___redundant_placeholder1@
<gru_2_while_gru_2_while_cond_372353___redundant_placeholder2@
<gru_2_while_gru_2_while_cond_372353___redundant_placeholder3
gru_2_while_identity
z
gru_2/while/LessLessgru_2_while_placeholder&gru_2_while_less_gru_2_strided_slice_1*
T0*
_output_shapes
: W
gru_2/while/IdentityIdentitygru_2/while/Less:z:0*
T0
*
_output_shapes
: "5
gru_2_while_identitygru_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:

Е
'__inference_lstm_2_layer_call_fn_372800

inputs
unknown:	
	unknown_0:

	unknown_1:	
identityЂStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_371322t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
Й
У
while_cond_371237
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_371237___redundant_placeholder04
0while_while_cond_371237___redundant_placeholder14
0while_while_cond_371237___redundant_placeholder24
0while_while_cond_371237___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџ:.*
(
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
о7
Щ
while_body_373299
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_2_matmul_readvariableop_resource_0:	H
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:
B
3while_lstm_cell_2_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_2_matmul_readvariableop_resource:	F
2while_lstm_cell_2_matmul_1_readvariableop_resource:
@
1while_lstm_cell_2_biasadd_readvariableop_resource:	Ђ(while/lstm_cell_2/BiasAdd/ReadVariableOpЂ'while/lstm_cell_2/MatMul/ReadVariableOpЂ)while/lstm_cell_2/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0И
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ 
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Є
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџc
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splity
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџ{
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџs
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ{
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџp
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџФ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџy
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџЭ

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџ:.*
(
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
ѕM

A__inference_gru_2_layer_call_and_return_conditional_losses_373764
inputs_05
"gru_cell_2_readvariableop_resource:	Р=
)gru_cell_2_matmul_readvariableop_resource:
Р>
+gru_cell_2_matmul_1_readvariableop_resource:	@Р
identityЂ gru_cell_2/MatMul/ReadVariableOpЂ"gru_cell_2/MatMul_1/ReadVariableOpЂgru_cell_2/ReadVariableOpЂwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask}
gru_cell_2/ReadVariableOpReadVariableOp"gru_cell_2_readvariableop_resource*
_output_shapes
:	Р*
dtype0w
gru_cell_2/unstackUnpack!gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:Р:Р*	
num
 gru_cell_2/MatMul/ReadVariableOpReadVariableOp)gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
Р*
dtype0
gru_cell_2/MatMulMatMulstrided_slice_2:output:0(gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџР
gru_cell_2/BiasAddBiasAddgru_cell_2/MatMul:product:0gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџРe
gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџФ
gru_cell_2/splitSplit#gru_cell_2/split/split_dim:output:0gru_cell_2/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split
"gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	@Р*
dtype0
gru_cell_2/MatMul_1MatMulzeros:output:0*gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџР
gru_cell_2/BiasAdd_1BiasAddgru_cell_2/MatMul_1:product:0gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџРe
gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   џџџџg
gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџђ
gru_cell_2/split_1SplitVgru_cell_2/BiasAdd_1:output:0gru_cell_2/Const:output:0%gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split
gru_cell_2/addAddV2gru_cell_2/split:output:0gru_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
gru_cell_2/SigmoidSigmoidgru_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
gru_cell_2/add_1AddV2gru_cell_2/split:output:1gru_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@g
gru_cell_2/Sigmoid_1Sigmoidgru_cell_2/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@~
gru_cell_2/mulMulgru_cell_2/Sigmoid_1:y:0gru_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@z
gru_cell_2/add_2AddV2gru_cell_2/split:output:2gru_cell_2/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@_
gru_cell_2/ReluRelugru_cell_2/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@q
gru_cell_2/mul_1Mulgru_cell_2/Sigmoid:y:0zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@U
gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?z
gru_cell_2/subSubgru_cell_2/sub/x:output:0gru_cell_2/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@|
gru_cell_2/mul_2Mulgru_cell_2/sub:z:0gru_cell_2/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ@w
gru_cell_2/add_3AddV2gru_cell_2/mul_1:z:0gru_cell_2/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Л
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_2_readvariableop_resource)gru_cell_2_matmul_readvariableop_resource+gru_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_373674*
condR
while_cond_373673*8
output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@В
NoOpNoOp!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџ: : : 2D
 gru_cell_2/MatMul/ReadVariableOp gru_cell_2/MatMul/ReadVariableOp2H
"gru_cell_2/MatMul_1/ReadVariableOp"gru_cell_2/MatMul_1/ReadVariableOp26
gru_cell_2/ReadVariableOpgru_cell_2/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
Г
F
*__inference_dropout_4_layer_call_fn_373388

inputs
identityЕ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_371335e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:џџџџџџџџџ
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ
:T P
,
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
к
Њ
while_cond_373673
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_373673___redundant_placeholder04
0while_while_cond_373673___redundant_placeholder14
0while_while_cond_373673___redundant_placeholder24
0while_while_cond_373673___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
м

$sequential_2_gru_2_while_cond_370383B
>sequential_2_gru_2_while_sequential_2_gru_2_while_loop_counterH
Dsequential_2_gru_2_while_sequential_2_gru_2_while_maximum_iterations(
$sequential_2_gru_2_while_placeholder*
&sequential_2_gru_2_while_placeholder_1*
&sequential_2_gru_2_while_placeholder_2D
@sequential_2_gru_2_while_less_sequential_2_gru_2_strided_slice_1Z
Vsequential_2_gru_2_while_sequential_2_gru_2_while_cond_370383___redundant_placeholder0Z
Vsequential_2_gru_2_while_sequential_2_gru_2_while_cond_370383___redundant_placeholder1Z
Vsequential_2_gru_2_while_sequential_2_gru_2_while_cond_370383___redundant_placeholder2Z
Vsequential_2_gru_2_while_sequential_2_gru_2_while_cond_370383___redundant_placeholder3%
!sequential_2_gru_2_while_identity
Ў
sequential_2/gru_2/while/LessLess$sequential_2_gru_2_while_placeholder@sequential_2_gru_2_while_less_sequential_2_gru_2_strided_slice_1*
T0*
_output_shapes
: q
!sequential_2/gru_2/while/IdentityIdentity!sequential_2/gru_2/while/Less:z:0*
T0
*
_output_shapes
: "O
!sequential_2_gru_2_while_identity*sequential_2/gru_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
ј
б
H__inference_sequential_2_layer_call_and_return_conditional_losses_371523

inputs 
lstm_2_371323:	!
lstm_2_371325:

lstm_2_371327:	
gru_2_371492:	Р 
gru_2_371494:
Р
gru_2_371496:	@Р 
dense_2_371517:@
dense_2_371519:
identityЂdense_2/StatefulPartitionedCallЂgru_2/StatefulPartitionedCallЂlstm_2/StatefulPartitionedCallў
lstm_2/StatefulPartitionedCallStatefulPartitionedCallinputslstm_2_371323lstm_2_371325lstm_2_371327*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_371322р
dropout_4/PartitionedCallPartitionedCall'lstm_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_371335
gru_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0gru_2_371492gru_2_371494gru_2_371496*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_gru_2_layer_call_and_return_conditional_losses_371491к
dropout_5/PartitionedCallPartitionedCall&gru_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_371504
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_5/PartitionedCall:output:0dense_2_371517dense_2_371519*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_371516w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЉ
NoOpNoOp ^dense_2/StatefulPartitionedCall^gru_2/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ
: : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2>
gru_2/StatefulPartitionedCallgru_2/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
Ц	
є
C__inference_dense_2_layer_call_and_return_conditional_losses_371516

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs

К
&__inference_gru_2_layer_call_fn_373432
inputs_0
unknown:	Р
	unknown_0:
Р
	unknown_1:	@Р
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_gru_2_layer_call_and_return_conditional_losses_371164o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0

й
F__inference_gru_cell_2_layer_call_and_return_conditional_losses_370901

inputs

states*
readvariableop_resource:	Р2
matmul_readvariableop_resource:
Р3
 matmul_1_readvariableop_resource:	@Р
identity

identity_1ЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpЂReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	Р*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:Р:Р*	
numv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Р*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџРi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџРZ
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЃ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_splity
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@Р*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџРm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџРZ
ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   џџџџ\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЦ
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@I
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@S
mul_1MulSigmoid:y:0states*
T0*'
_output_shapes
:џџџџџџџџџ@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@[
mul_2Mulsub:z:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ@V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@X
IdentityIdentity	add_3:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Z

Identity_1Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ:џџџџџџџџџ@: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_namestates
ѕM

A__inference_gru_2_layer_call_and_return_conditional_losses_373609
inputs_05
"gru_cell_2_readvariableop_resource:	Р=
)gru_cell_2_matmul_readvariableop_resource:
Р>
+gru_cell_2_matmul_1_readvariableop_resource:	@Р
identityЂ gru_cell_2/MatMul/ReadVariableOpЂ"gru_cell_2/MatMul_1/ReadVariableOpЂgru_cell_2/ReadVariableOpЂwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask}
gru_cell_2/ReadVariableOpReadVariableOp"gru_cell_2_readvariableop_resource*
_output_shapes
:	Р*
dtype0w
gru_cell_2/unstackUnpack!gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:Р:Р*	
num
 gru_cell_2/MatMul/ReadVariableOpReadVariableOp)gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
Р*
dtype0
gru_cell_2/MatMulMatMulstrided_slice_2:output:0(gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџР
gru_cell_2/BiasAddBiasAddgru_cell_2/MatMul:product:0gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџРe
gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџФ
gru_cell_2/splitSplit#gru_cell_2/split/split_dim:output:0gru_cell_2/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split
"gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	@Р*
dtype0
gru_cell_2/MatMul_1MatMulzeros:output:0*gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџР
gru_cell_2/BiasAdd_1BiasAddgru_cell_2/MatMul_1:product:0gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџРe
gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   џџџџg
gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџђ
gru_cell_2/split_1SplitVgru_cell_2/BiasAdd_1:output:0gru_cell_2/Const:output:0%gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split
gru_cell_2/addAddV2gru_cell_2/split:output:0gru_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
gru_cell_2/SigmoidSigmoidgru_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
gru_cell_2/add_1AddV2gru_cell_2/split:output:1gru_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@g
gru_cell_2/Sigmoid_1Sigmoidgru_cell_2/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@~
gru_cell_2/mulMulgru_cell_2/Sigmoid_1:y:0gru_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@z
gru_cell_2/add_2AddV2gru_cell_2/split:output:2gru_cell_2/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@_
gru_cell_2/ReluRelugru_cell_2/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@q
gru_cell_2/mul_1Mulgru_cell_2/Sigmoid:y:0zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@U
gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?z
gru_cell_2/subSubgru_cell_2/sub/x:output:0gru_cell_2/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@|
gru_cell_2/mul_2Mulgru_cell_2/sub:z:0gru_cell_2/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ@w
gru_cell_2/add_3AddV2gru_cell_2/mul_1:z:0gru_cell_2/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Л
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_2_readvariableop_resource)gru_cell_2_matmul_readvariableop_resource+gru_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_373519*
condR
while_cond_373518*8
output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@В
NoOpNoOp!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџ: : : 2D
 gru_cell_2/MatMul/ReadVariableOp gru_cell_2/MatMul/ReadVariableOp2H
"gru_cell_2/MatMul_1/ReadVariableOp"gru_cell_2/MatMul_1/ReadVariableOp26
gru_cell_2/ReadVariableOpgru_cell_2/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
к
Њ
while_cond_370914
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_370914___redundant_placeholder04
0while_while_cond_370914___redundant_placeholder14
0while_while_cond_370914___redundant_placeholder24
0while_while_cond_370914___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
к
Њ
while_cond_371098
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_371098___redundant_placeholder04
0while_while_cond_371098___redundant_placeholder14
0while_while_cond_371098___redundant_placeholder24
0while_while_cond_371098___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
Р

(__inference_dense_2_layer_call_fn_374110

inputs
unknown:@
	unknown_0:
identityЂStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_371516o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
й"
о
while_body_370753
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_2_370777_0:	.
while_lstm_cell_2_370779_0:
)
while_lstm_cell_2_370781_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_2_370777:	,
while_lstm_cell_2_370779:
'
while_lstm_cell_2_370781:	Ђ)while/lstm_cell_2/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Б
)while/lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_2_370777_0while_lstm_cell_2_370779_0while_lstm_cell_2_370781_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_370694л
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_2/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity2while/lstm_cell_2/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџ
while/Identity_5Identity2while/lstm_cell_2/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџx

while/NoOpNoOp*^while/lstm_cell_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_2_370777while_lstm_cell_2_370777_0"6
while_lstm_cell_2_370779while_lstm_cell_2_370779_0"6
while_lstm_cell_2_370781while_lstm_cell_2_370781_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2V
)while/lstm_cell_2/StatefulPartitionedCall)while/lstm_cell_2/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџ:.*
(
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 

F
*__inference_dropout_5_layer_call_fn_374079

inputs
identityА
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_371504`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ@:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ж=

while_body_373674
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_2_readvariableop_resource_0:	РE
1while_gru_cell_2_matmul_readvariableop_resource_0:
РF
3while_gru_cell_2_matmul_1_readvariableop_resource_0:	@Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_2_readvariableop_resource:	РC
/while_gru_cell_2_matmul_readvariableop_resource:
РD
1while_gru_cell_2_matmul_1_readvariableop_resource:	@РЂ&while/gru_cell_2/MatMul/ReadVariableOpЂ(while/gru_cell_2/MatMul_1/ReadVariableOpЂwhile/gru_cell_2/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype0
while/gru_cell_2/ReadVariableOpReadVariableOp*while_gru_cell_2_readvariableop_resource_0*
_output_shapes
:	Р*
dtype0
while/gru_cell_2/unstackUnpack'while/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:Р:Р*	
num
&while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
Р*
dtype0Ж
while/gru_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџР
while/gru_cell_2/BiasAddBiasAdd!while/gru_cell_2/MatMul:product:0!while/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџРk
 while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџж
while/gru_cell_2/splitSplit)while/gru_cell_2/split/split_dim:output:0!while/gru_cell_2/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split
(while/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	@Р*
dtype0
while/gru_cell_2/MatMul_1MatMulwhile_placeholder_20while/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџР 
while/gru_cell_2/BiasAdd_1BiasAdd#while/gru_cell_2/MatMul_1:product:0!while/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџРk
while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   џџџџm
"while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
while/gru_cell_2/split_1SplitV#while/gru_cell_2/BiasAdd_1:output:0while/gru_cell_2/Const:output:0+while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split
while/gru_cell_2/addAddV2while/gru_cell_2/split:output:0!while/gru_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@o
while/gru_cell_2/SigmoidSigmoidwhile/gru_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/add_1AddV2while/gru_cell_2/split:output:1!while/gru_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@s
while/gru_cell_2/Sigmoid_1Sigmoidwhile/gru_cell_2/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/mulMulwhile/gru_cell_2/Sigmoid_1:y:0!while/gru_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/add_2AddV2while/gru_cell_2/split:output:2while/gru_cell_2/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
while/gru_cell_2/ReluReluwhile/gru_cell_2/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/mul_1Mulwhile/gru_cell_2/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@[
while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell_2/subSubwhile/gru_cell_2/sub/x:output:0while/gru_cell_2/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/mul_2Mulwhile/gru_cell_2/sub:z:0#while/gru_cell_2/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/add_3AddV2while/gru_cell_2/mul_1:z:0while/gru_cell_2/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ы
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/gru_cell_2/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Т

while/NoOpNoOp'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1while_gru_cell_2_matmul_1_readvariableop_resource3while_gru_cell_2_matmul_1_readvariableop_resource_0"d
/while_gru_cell_2_matmul_readvariableop_resource1while_gru_cell_2_matmul_readvariableop_resource_0"V
(while_gru_cell_2_readvariableop_resource*while_gru_cell_2_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ@: : : : : 2P
&while/gru_cell_2/MatMul/ReadVariableOp&while/gru_cell_2/MatMul/ReadVariableOp2T
(while/gru_cell_2/MatMul_1/ReadVariableOp(while/gru_cell_2/MatMul_1/ReadVariableOp2B
while/gru_cell_2/ReadVariableOpwhile/gru_cell_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
к
Њ
while_cond_373983
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_373983___redundant_placeholder04
0while_while_cond_373983___redundant_placeholder14
0while_while_cond_373983___redundant_placeholder24
0while_while_cond_373983___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
и
c
E__inference_dropout_5_layer_call_and_return_conditional_losses_374089

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ@:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Е

л
+__inference_gru_cell_2_layer_call_fn_374246

inputs
states_0
unknown:	Р
	unknown_0:
Р
	unknown_1:	@Р
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_gru_cell_2_layer_call_and_return_conditional_losses_371046o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ:џџџџџџџџџ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states/0
Ц	
є
C__inference_dense_2_layer_call_and_return_conditional_losses_374120

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
J

B__inference_lstm_2_layer_call_and_return_conditional_losses_371931

inputs=
*lstm_cell_2_matmul_readvariableop_resource:	@
,lstm_cell_2_matmul_1_readvariableop_resource:
:
+lstm_cell_2_biasadd_readvariableop_resource:	
identityЂ"lstm_cell_2/BiasAdd/ReadVariableOpЂ!lstm_cell_2/MatMul/ReadVariableOpЂ#lstm_cell_2/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :о
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitm
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџo
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџv
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџg
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџy
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџo
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџd
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_371847*
condR
while_cond_371846*M
output_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   У
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:
џџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџ
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџ
Н
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
жU
Л
$sequential_2_gru_2_while_body_370384B
>sequential_2_gru_2_while_sequential_2_gru_2_while_loop_counterH
Dsequential_2_gru_2_while_sequential_2_gru_2_while_maximum_iterations(
$sequential_2_gru_2_while_placeholder*
&sequential_2_gru_2_while_placeholder_1*
&sequential_2_gru_2_while_placeholder_2A
=sequential_2_gru_2_while_sequential_2_gru_2_strided_slice_1_0}
ysequential_2_gru_2_while_tensorarrayv2read_tensorlistgetitem_sequential_2_gru_2_tensorarrayunstack_tensorlistfromtensor_0P
=sequential_2_gru_2_while_gru_cell_2_readvariableop_resource_0:	РX
Dsequential_2_gru_2_while_gru_cell_2_matmul_readvariableop_resource_0:
РY
Fsequential_2_gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0:	@Р%
!sequential_2_gru_2_while_identity'
#sequential_2_gru_2_while_identity_1'
#sequential_2_gru_2_while_identity_2'
#sequential_2_gru_2_while_identity_3'
#sequential_2_gru_2_while_identity_4?
;sequential_2_gru_2_while_sequential_2_gru_2_strided_slice_1{
wsequential_2_gru_2_while_tensorarrayv2read_tensorlistgetitem_sequential_2_gru_2_tensorarrayunstack_tensorlistfromtensorN
;sequential_2_gru_2_while_gru_cell_2_readvariableop_resource:	РV
Bsequential_2_gru_2_while_gru_cell_2_matmul_readvariableop_resource:
РW
Dsequential_2_gru_2_while_gru_cell_2_matmul_1_readvariableop_resource:	@РЂ9sequential_2/gru_2/while/gru_cell_2/MatMul/ReadVariableOpЂ;sequential_2/gru_2/while/gru_cell_2/MatMul_1/ReadVariableOpЂ2sequential_2/gru_2/while/gru_cell_2/ReadVariableOp
Jsequential_2/gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
<sequential_2/gru_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemysequential_2_gru_2_while_tensorarrayv2read_tensorlistgetitem_sequential_2_gru_2_tensorarrayunstack_tensorlistfromtensor_0$sequential_2_gru_2_while_placeholderSsequential_2/gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype0Б
2sequential_2/gru_2/while/gru_cell_2/ReadVariableOpReadVariableOp=sequential_2_gru_2_while_gru_cell_2_readvariableop_resource_0*
_output_shapes
:	Р*
dtype0Љ
+sequential_2/gru_2/while/gru_cell_2/unstackUnpack:sequential_2/gru_2/while/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:Р:Р*	
numР
9sequential_2/gru_2/while/gru_cell_2/MatMul/ReadVariableOpReadVariableOpDsequential_2_gru_2_while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
Р*
dtype0я
*sequential_2/gru_2/while/gru_cell_2/MatMulMatMulCsequential_2/gru_2/while/TensorArrayV2Read/TensorListGetItem:item:0Asequential_2/gru_2/while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџРе
+sequential_2/gru_2/while/gru_cell_2/BiasAddBiasAdd4sequential_2/gru_2/while/gru_cell_2/MatMul:product:04sequential_2/gru_2/while/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџР~
3sequential_2/gru_2/while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
)sequential_2/gru_2/while/gru_cell_2/splitSplit<sequential_2/gru_2/while/gru_cell_2/split/split_dim:output:04sequential_2/gru_2/while/gru_cell_2/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_splitУ
;sequential_2/gru_2/while/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOpFsequential_2_gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	@Р*
dtype0ж
,sequential_2/gru_2/while/gru_cell_2/MatMul_1MatMul&sequential_2_gru_2_while_placeholder_2Csequential_2/gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџРй
-sequential_2/gru_2/while/gru_cell_2/BiasAdd_1BiasAdd6sequential_2/gru_2/while/gru_cell_2/MatMul_1:product:04sequential_2/gru_2/while/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџР~
)sequential_2/gru_2/while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   џџџџ
5sequential_2/gru_2/while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџж
+sequential_2/gru_2/while/gru_cell_2/split_1SplitV6sequential_2/gru_2/while/gru_cell_2/BiasAdd_1:output:02sequential_2/gru_2/while/gru_cell_2/Const:output:0>sequential_2/gru_2/while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_splitЬ
'sequential_2/gru_2/while/gru_cell_2/addAddV22sequential_2/gru_2/while/gru_cell_2/split:output:04sequential_2/gru_2/while/gru_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
+sequential_2/gru_2/while/gru_cell_2/SigmoidSigmoid+sequential_2/gru_2/while/gru_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ю
)sequential_2/gru_2/while/gru_cell_2/add_1AddV22sequential_2/gru_2/while/gru_cell_2/split:output:14sequential_2/gru_2/while/gru_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@
-sequential_2/gru_2/while/gru_cell_2/Sigmoid_1Sigmoid-sequential_2/gru_2/while/gru_cell_2/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Щ
'sequential_2/gru_2/while/gru_cell_2/mulMul1sequential_2/gru_2/while/gru_cell_2/Sigmoid_1:y:04sequential_2/gru_2/while/gru_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@Х
)sequential_2/gru_2/while/gru_cell_2/add_2AddV22sequential_2/gru_2/while/gru_cell_2/split:output:2+sequential_2/gru_2/while/gru_cell_2/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
(sequential_2/gru_2/while/gru_cell_2/ReluRelu-sequential_2/gru_2/while/gru_cell_2/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Л
)sequential_2/gru_2/while/gru_cell_2/mul_1Mul/sequential_2/gru_2/while/gru_cell_2/Sigmoid:y:0&sequential_2_gru_2_while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@n
)sequential_2/gru_2/while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Х
'sequential_2/gru_2/while/gru_cell_2/subSub2sequential_2/gru_2/while/gru_cell_2/sub/x:output:0/sequential_2/gru_2/while/gru_cell_2/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ч
)sequential_2/gru_2/while/gru_cell_2/mul_2Mul+sequential_2/gru_2/while/gru_cell_2/sub:z:06sequential_2/gru_2/while/gru_cell_2/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ@Т
)sequential_2/gru_2/while/gru_cell_2/add_3AddV2-sequential_2/gru_2/while/gru_cell_2/mul_1:z:0-sequential_2/gru_2/while/gru_cell_2/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
Csequential_2/gru_2/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : З
=sequential_2/gru_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem&sequential_2_gru_2_while_placeholder_1Lsequential_2/gru_2/while/TensorArrayV2Write/TensorListSetItem/index:output:0-sequential_2/gru_2/while/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype0:щшв`
sequential_2/gru_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_2/gru_2/while/addAddV2$sequential_2_gru_2_while_placeholder'sequential_2/gru_2/while/add/y:output:0*
T0*
_output_shapes
: b
 sequential_2/gru_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Г
sequential_2/gru_2/while/add_1AddV2>sequential_2_gru_2_while_sequential_2_gru_2_while_loop_counter)sequential_2/gru_2/while/add_1/y:output:0*
T0*
_output_shapes
: 
!sequential_2/gru_2/while/IdentityIdentity"sequential_2/gru_2/while/add_1:z:0^sequential_2/gru_2/while/NoOp*
T0*
_output_shapes
: Ж
#sequential_2/gru_2/while/Identity_1IdentityDsequential_2_gru_2_while_sequential_2_gru_2_while_maximum_iterations^sequential_2/gru_2/while/NoOp*
T0*
_output_shapes
: 
#sequential_2/gru_2/while/Identity_2Identity sequential_2/gru_2/while/add:z:0^sequential_2/gru_2/while/NoOp*
T0*
_output_shapes
: П
#sequential_2/gru_2/while/Identity_3IdentityMsequential_2/gru_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_2/gru_2/while/NoOp*
T0*
_output_shapes
: А
#sequential_2/gru_2/while/Identity_4Identity-sequential_2/gru_2/while/gru_cell_2/add_3:z:0^sequential_2/gru_2/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@
sequential_2/gru_2/while/NoOpNoOp:^sequential_2/gru_2/while/gru_cell_2/MatMul/ReadVariableOp<^sequential_2/gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp3^sequential_2/gru_2/while/gru_cell_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
Dsequential_2_gru_2_while_gru_cell_2_matmul_1_readvariableop_resourceFsequential_2_gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0"
Bsequential_2_gru_2_while_gru_cell_2_matmul_readvariableop_resourceDsequential_2_gru_2_while_gru_cell_2_matmul_readvariableop_resource_0"|
;sequential_2_gru_2_while_gru_cell_2_readvariableop_resource=sequential_2_gru_2_while_gru_cell_2_readvariableop_resource_0"O
!sequential_2_gru_2_while_identity*sequential_2/gru_2/while/Identity:output:0"S
#sequential_2_gru_2_while_identity_1,sequential_2/gru_2/while/Identity_1:output:0"S
#sequential_2_gru_2_while_identity_2,sequential_2/gru_2/while/Identity_2:output:0"S
#sequential_2_gru_2_while_identity_3,sequential_2/gru_2/while/Identity_3:output:0"S
#sequential_2_gru_2_while_identity_4,sequential_2/gru_2/while/Identity_4:output:0"|
;sequential_2_gru_2_while_sequential_2_gru_2_strided_slice_1=sequential_2_gru_2_while_sequential_2_gru_2_strided_slice_1_0"є
wsequential_2_gru_2_while_tensorarrayv2read_tensorlistgetitem_sequential_2_gru_2_tensorarrayunstack_tensorlistfromtensorysequential_2_gru_2_while_tensorarrayv2read_tensorlistgetitem_sequential_2_gru_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ@: : : : : 2v
9sequential_2/gru_2/while/gru_cell_2/MatMul/ReadVariableOp9sequential_2/gru_2/while/gru_cell_2/MatMul/ReadVariableOp2z
;sequential_2/gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp;sequential_2/gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp2h
2sequential_2/gru_2/while/gru_cell_2/ReadVariableOp2sequential_2/gru_2/while/gru_cell_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
к
Њ
while_cond_373828
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_373828___redundant_placeholder04
0while_while_cond_373828___redundant_placeholder14
0while_while_cond_373828___redundant_placeholder24
0while_while_cond_373828___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
ЦE
Ю
__inference__traced_save_374440
file_prefix-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop8
4savev2_lstm_2_lstm_cell_2_kernel_read_readvariableopB
>savev2_lstm_2_lstm_cell_2_recurrent_kernel_read_readvariableop6
2savev2_lstm_2_lstm_cell_2_bias_read_readvariableop6
2savev2_gru_2_gru_cell_2_kernel_read_readvariableop@
<savev2_gru_2_gru_cell_2_recurrent_kernel_read_readvariableop4
0savev2_gru_2_gru_cell_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop?
;savev2_adam_lstm_2_lstm_cell_2_kernel_m_read_readvariableopI
Esavev2_adam_lstm_2_lstm_cell_2_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_2_lstm_cell_2_bias_m_read_readvariableop=
9savev2_adam_gru_2_gru_cell_2_kernel_m_read_readvariableopG
Csavev2_adam_gru_2_gru_cell_2_recurrent_kernel_m_read_readvariableop;
7savev2_adam_gru_2_gru_cell_2_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop?
;savev2_adam_lstm_2_lstm_cell_2_kernel_v_read_readvariableopI
Esavev2_adam_lstm_2_lstm_cell_2_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_2_lstm_cell_2_bias_v_read_readvariableop=
9savev2_adam_gru_2_gru_cell_2_kernel_v_read_readvariableopG
Csavev2_adam_gru_2_gru_cell_2_recurrent_kernel_v_read_readvariableop;
7savev2_adam_gru_2_gru_cell_2_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Е
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*о
valueдBб B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH­
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Е
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop4savev2_lstm_2_lstm_cell_2_kernel_read_readvariableop>savev2_lstm_2_lstm_cell_2_recurrent_kernel_read_readvariableop2savev2_lstm_2_lstm_cell_2_bias_read_readvariableop2savev2_gru_2_gru_cell_2_kernel_read_readvariableop<savev2_gru_2_gru_cell_2_recurrent_kernel_read_readvariableop0savev2_gru_2_gru_cell_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop;savev2_adam_lstm_2_lstm_cell_2_kernel_m_read_readvariableopEsavev2_adam_lstm_2_lstm_cell_2_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_2_lstm_cell_2_bias_m_read_readvariableop9savev2_adam_gru_2_gru_cell_2_kernel_m_read_readvariableopCsavev2_adam_gru_2_gru_cell_2_recurrent_kernel_m_read_readvariableop7savev2_adam_gru_2_gru_cell_2_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop;savev2_adam_lstm_2_lstm_cell_2_kernel_v_read_readvariableopEsavev2_adam_lstm_2_lstm_cell_2_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_2_lstm_cell_2_bias_v_read_readvariableop9savev2_adam_gru_2_gru_cell_2_kernel_v_read_readvariableopCsavev2_adam_gru_2_gru_cell_2_recurrent_kernel_v_read_readvariableop7savev2_adam_gru_2_gru_cell_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *.
dtypes$
"2 	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*
_input_shapes
: :@::	:
::
Р:	@Р:	Р: : : : : : : :@::	:
::
Р:	@Р:	Р:@::	:
::
Р:	@Р:	Р: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:@: 

_output_shapes
::%!

_output_shapes
:	:&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
Р:%!

_output_shapes
:	@Р:%!

_output_shapes
:	Р:	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:@: 

_output_shapes
::%!

_output_shapes
:	:&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
Р:%!

_output_shapes
:	@Р:%!

_output_shapes
:	Р:$ 

_output_shapes

:@: 

_output_shapes
::%!

_output_shapes
:	:&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
Р:%!

_output_shapes
:	@Р:%!

_output_shapes
:	Р: 

_output_shapes
: 
о	
Ь
-__inference_sequential_2_layer_call_fn_372128

inputs
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:	Р
	unknown_3:
Р
	unknown_4:	@Р
	unknown_5:@
	unknown_6:
identityЂStatefulPartitionedCallЋ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_371523o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ
: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
ъ
г
%sequential_2_lstm_2_while_cond_370237D
@sequential_2_lstm_2_while_sequential_2_lstm_2_while_loop_counterJ
Fsequential_2_lstm_2_while_sequential_2_lstm_2_while_maximum_iterations)
%sequential_2_lstm_2_while_placeholder+
'sequential_2_lstm_2_while_placeholder_1+
'sequential_2_lstm_2_while_placeholder_2+
'sequential_2_lstm_2_while_placeholder_3F
Bsequential_2_lstm_2_while_less_sequential_2_lstm_2_strided_slice_1\
Xsequential_2_lstm_2_while_sequential_2_lstm_2_while_cond_370237___redundant_placeholder0\
Xsequential_2_lstm_2_while_sequential_2_lstm_2_while_cond_370237___redundant_placeholder1\
Xsequential_2_lstm_2_while_sequential_2_lstm_2_while_cond_370237___redundant_placeholder2\
Xsequential_2_lstm_2_while_sequential_2_lstm_2_while_cond_370237___redundant_placeholder3&
"sequential_2_lstm_2_while_identity
В
sequential_2/lstm_2/while/LessLess%sequential_2_lstm_2_while_placeholderBsequential_2_lstm_2_while_less_sequential_2_lstm_2_strided_slice_1*
T0*
_output_shapes
: s
"sequential_2/lstm_2/while/IdentityIdentity"sequential_2/lstm_2/while/Less:z:0*
T0
*
_output_shapes
: "Q
"sequential_2_lstm_2_while_identity+sequential_2/lstm_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџ:.*
(
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:

c
*__inference_dropout_4_layer_call_fn_373393

inputs
identityЂStatefulPartitionedCallХ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_371772t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ
22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
ё4

A__inference_gru_2_layer_call_and_return_conditional_losses_370980

inputs$
gru_cell_2_370902:	Р%
gru_cell_2_370904:
Р$
gru_cell_2_370906:	@Р
identityЂ"gru_cell_2/StatefulPartitionedCallЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskФ
"gru_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_2_370902gru_cell_2_370904gru_cell_2_370906*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_gru_cell_2_layer_call_and_return_conditional_losses_370901n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ј
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_2_370902gru_cell_2_370904gru_cell_2_370906*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_370915*
condR
while_cond_370914*8
output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@s
NoOpNoOp#^gru_cell_2/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџ: : : 2H
"gru_cell_2/StatefulPartitionedCall"gru_cell_2/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ї

d
E__inference_dropout_4_layer_call_and_return_conditional_losses_371772

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:џџџџџџџџџ
C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:џџџџџџџџџ
*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ћ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:џџџџџџџџџ
t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:џџџџџџџџџ
n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:џџџџџџџџџ
^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:џџџџџџџџџ
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ
:T P
,
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
ж=

while_body_373829
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_2_readvariableop_resource_0:	РE
1while_gru_cell_2_matmul_readvariableop_resource_0:
РF
3while_gru_cell_2_matmul_1_readvariableop_resource_0:	@Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_2_readvariableop_resource:	РC
/while_gru_cell_2_matmul_readvariableop_resource:
РD
1while_gru_cell_2_matmul_1_readvariableop_resource:	@РЂ&while/gru_cell_2/MatMul/ReadVariableOpЂ(while/gru_cell_2/MatMul_1/ReadVariableOpЂwhile/gru_cell_2/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype0
while/gru_cell_2/ReadVariableOpReadVariableOp*while_gru_cell_2_readvariableop_resource_0*
_output_shapes
:	Р*
dtype0
while/gru_cell_2/unstackUnpack'while/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:Р:Р*	
num
&while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
Р*
dtype0Ж
while/gru_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџР
while/gru_cell_2/BiasAddBiasAdd!while/gru_cell_2/MatMul:product:0!while/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџРk
 while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџж
while/gru_cell_2/splitSplit)while/gru_cell_2/split/split_dim:output:0!while/gru_cell_2/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split
(while/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	@Р*
dtype0
while/gru_cell_2/MatMul_1MatMulwhile_placeholder_20while/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџР 
while/gru_cell_2/BiasAdd_1BiasAdd#while/gru_cell_2/MatMul_1:product:0!while/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџРk
while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   џџџџm
"while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
while/gru_cell_2/split_1SplitV#while/gru_cell_2/BiasAdd_1:output:0while/gru_cell_2/Const:output:0+while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split
while/gru_cell_2/addAddV2while/gru_cell_2/split:output:0!while/gru_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@o
while/gru_cell_2/SigmoidSigmoidwhile/gru_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/add_1AddV2while/gru_cell_2/split:output:1!while/gru_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@s
while/gru_cell_2/Sigmoid_1Sigmoidwhile/gru_cell_2/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/mulMulwhile/gru_cell_2/Sigmoid_1:y:0!while/gru_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/add_2AddV2while/gru_cell_2/split:output:2while/gru_cell_2/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
while/gru_cell_2/ReluReluwhile/gru_cell_2/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/mul_1Mulwhile/gru_cell_2/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@[
while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell_2/subSubwhile/gru_cell_2/sub/x:output:0while/gru_cell_2/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/mul_2Mulwhile/gru_cell_2/sub:z:0#while/gru_cell_2/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/add_3AddV2while/gru_cell_2/mul_1:z:0while/gru_cell_2/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ы
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/gru_cell_2/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Т

while/NoOpNoOp'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1while_gru_cell_2_matmul_1_readvariableop_resource3while_gru_cell_2_matmul_1_readvariableop_resource_0"d
/while_gru_cell_2_matmul_readvariableop_resource1while_gru_cell_2_matmul_readvariableop_resource_0"V
(while_gru_cell_2_readvariableop_resource*while_gru_cell_2_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ@: : : : : 2P
&while/gru_cell_2/MatMul/ReadVariableOp&while/gru_cell_2/MatMul/ReadVariableOp2T
(while/gru_cell_2/MatMul_1/ReadVariableOp(while/gru_cell_2/MatMul_1/ReadVariableOp2B
while/gru_cell_2/ReadVariableOpwhile/gru_cell_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
о7
Щ
while_body_372870
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_2_matmul_readvariableop_resource_0:	H
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:
B
3while_lstm_cell_2_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_2_matmul_readvariableop_resource:	F
2while_lstm_cell_2_matmul_1_readvariableop_resource:
@
1while_lstm_cell_2_biasadd_readvariableop_resource:	Ђ(while/lstm_cell_2/BiasAdd/ReadVariableOpЂ'while/lstm_cell_2/MatMul/ReadVariableOpЂ)while/lstm_cell_2/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0И
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ 
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Є
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџc
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splity
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџ{
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџs
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ{
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџp
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџФ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџy
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџЭ

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџ:.*
(
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
!
А
while_body_370915
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_gru_cell_2_370937_0:	Р-
while_gru_cell_2_370939_0:
Р,
while_gru_cell_2_370941_0:	@Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_gru_cell_2_370937:	Р+
while_gru_cell_2_370939:
Р*
while_gru_cell_2_370941:	@РЂ(while/gru_cell_2/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype0џ
(while/gru_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_2_370937_0while_gru_cell_2_370939_0while_gru_cell_2_370941_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_gru_cell_2_layer_call_and_return_conditional_losses_370901r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:01while/gru_cell_2/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity1while/gru_cell_2/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@w

while/NoOpNoOp)^while/gru_cell_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "4
while_gru_cell_2_370937while_gru_cell_2_370937_0"4
while_gru_cell_2_370939while_gru_cell_2_370939_0"4
while_gru_cell_2_370941while_gru_cell_2_370941_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ@: : : : : 2T
(while/gru_cell_2/StatefulPartitionedCall(while/gru_cell_2/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
џ	
d
E__inference_dropout_5_layer_call_and_return_conditional_losses_371572

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>І
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ@:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
о7
Щ
while_body_373013
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_2_matmul_readvariableop_resource_0:	H
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:
B
3while_lstm_cell_2_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_2_matmul_readvariableop_resource:	F
2while_lstm_cell_2_matmul_1_readvariableop_resource:
@
1while_lstm_cell_2_biasadd_readvariableop_resource:	Ђ(while/lstm_cell_2/BiasAdd/ReadVariableOpЂ'while/lstm_cell_2/MatMul/ReadVariableOpЂ)while/lstm_cell_2/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0И
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ 
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Є
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџc
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splity
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџ{
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџs
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ{
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџp
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџФ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџy
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџЭ

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџ:.*
(
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 

л
F__inference_gru_cell_2_layer_call_and_return_conditional_losses_374324

inputs
states_0*
readvariableop_resource:	Р2
matmul_readvariableop_resource:
Р3
 matmul_1_readvariableop_resource:	@Р
identity

identity_1ЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpЂReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	Р*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:Р:Р*	
numv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Р*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџРi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџРZ
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЃ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_splity
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@Р*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџРm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџРZ
ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   џџџџ\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЦ
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@I
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@U
mul_1MulSigmoid:y:0states_0*
T0*'
_output_shapes
:џџџџџџџџџ@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@[
mul_2Mulsub:z:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ@V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@X
IdentityIdentity	add_3:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Z

Identity_1Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ:џџџџџџџџџ@: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states/0
Р	
Щ
$__inference_signature_wrapper_372107
lstm_2_input
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:	Р
	unknown_3:
Р
	unknown_4:	@Р
	unknown_5:@
	unknown_6:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_370481o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ
: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ

&
_user_specified_namelstm_2_input
о7
Щ
while_body_371847
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_2_matmul_readvariableop_resource_0:	H
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:
B
3while_lstm_cell_2_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_2_matmul_readvariableop_resource:	F
2while_lstm_cell_2_matmul_1_readvariableop_resource:
@
1while_lstm_cell_2_biasadd_readvariableop_resource:	Ђ(while/lstm_cell_2/BiasAdd/ReadVariableOpЂ'while/lstm_cell_2/MatMul/ReadVariableOpЂ)while/lstm_cell_2/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0И
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ 
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Є
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџc
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splity
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџ{
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџs
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ{
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџp
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџФ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџy
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџЭ

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџ:.*
(
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
вM

A__inference_gru_2_layer_call_and_return_conditional_losses_371743

inputs5
"gru_cell_2_readvariableop_resource:	Р=
)gru_cell_2_matmul_readvariableop_resource:
Р>
+gru_cell_2_matmul_1_readvariableop_resource:	@Р
identityЂ gru_cell_2/MatMul/ReadVariableOpЂ"gru_cell_2/MatMul_1/ReadVariableOpЂgru_cell_2/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:
џџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask}
gru_cell_2/ReadVariableOpReadVariableOp"gru_cell_2_readvariableop_resource*
_output_shapes
:	Р*
dtype0w
gru_cell_2/unstackUnpack!gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:Р:Р*	
num
 gru_cell_2/MatMul/ReadVariableOpReadVariableOp)gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
Р*
dtype0
gru_cell_2/MatMulMatMulstrided_slice_2:output:0(gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџР
gru_cell_2/BiasAddBiasAddgru_cell_2/MatMul:product:0gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџРe
gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџФ
gru_cell_2/splitSplit#gru_cell_2/split/split_dim:output:0gru_cell_2/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split
"gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	@Р*
dtype0
gru_cell_2/MatMul_1MatMulzeros:output:0*gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџР
gru_cell_2/BiasAdd_1BiasAddgru_cell_2/MatMul_1:product:0gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџРe
gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   џџџџg
gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџђ
gru_cell_2/split_1SplitVgru_cell_2/BiasAdd_1:output:0gru_cell_2/Const:output:0%gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split
gru_cell_2/addAddV2gru_cell_2/split:output:0gru_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
gru_cell_2/SigmoidSigmoidgru_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
gru_cell_2/add_1AddV2gru_cell_2/split:output:1gru_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@g
gru_cell_2/Sigmoid_1Sigmoidgru_cell_2/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@~
gru_cell_2/mulMulgru_cell_2/Sigmoid_1:y:0gru_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@z
gru_cell_2/add_2AddV2gru_cell_2/split:output:2gru_cell_2/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@_
gru_cell_2/ReluRelugru_cell_2/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@q
gru_cell_2/mul_1Mulgru_cell_2/Sigmoid:y:0zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@U
gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?z
gru_cell_2/subSubgru_cell_2/sub/x:output:0gru_cell_2/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@|
gru_cell_2/mul_2Mulgru_cell_2/sub:z:0gru_cell_2/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ@w
gru_cell_2/add_3AddV2gru_cell_2/mul_1:z:0gru_cell_2/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Л
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_2_readvariableop_resource)gru_cell_2_matmul_readvariableop_resource+gru_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_371653*
condR
while_cond_371652*8
output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@В
NoOpNoOp!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџ
: : : 2D
 gru_cell_2/MatMul/ReadVariableOp gru_cell_2/MatMul/ReadVariableOp2H
"gru_cell_2/MatMul_1/ReadVariableOp"gru_cell_2/MatMul_1/ReadVariableOp26
gru_cell_2/ReadVariableOpgru_cell_2/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
Ї

d
E__inference_dropout_4_layer_call_and_return_conditional_losses_373410

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:џџџџџџџџџ
C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:џџџџџџџџџ
*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ћ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:џџџџџџџџџ
t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:џџџџџџџџџ
n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:џџџџџџџџџ
^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:џџџџџџџџџ
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ
:T P
,
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
ж=

while_body_373984
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_2_readvariableop_resource_0:	РE
1while_gru_cell_2_matmul_readvariableop_resource_0:
РF
3while_gru_cell_2_matmul_1_readvariableop_resource_0:	@Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_2_readvariableop_resource:	РC
/while_gru_cell_2_matmul_readvariableop_resource:
РD
1while_gru_cell_2_matmul_1_readvariableop_resource:	@РЂ&while/gru_cell_2/MatMul/ReadVariableOpЂ(while/gru_cell_2/MatMul_1/ReadVariableOpЂwhile/gru_cell_2/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype0
while/gru_cell_2/ReadVariableOpReadVariableOp*while_gru_cell_2_readvariableop_resource_0*
_output_shapes
:	Р*
dtype0
while/gru_cell_2/unstackUnpack'while/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:Р:Р*	
num
&while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
Р*
dtype0Ж
while/gru_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџР
while/gru_cell_2/BiasAddBiasAdd!while/gru_cell_2/MatMul:product:0!while/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџРk
 while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџж
while/gru_cell_2/splitSplit)while/gru_cell_2/split/split_dim:output:0!while/gru_cell_2/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split
(while/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	@Р*
dtype0
while/gru_cell_2/MatMul_1MatMulwhile_placeholder_20while/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџР 
while/gru_cell_2/BiasAdd_1BiasAdd#while/gru_cell_2/MatMul_1:product:0!while/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџРk
while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   џџџџm
"while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
while/gru_cell_2/split_1SplitV#while/gru_cell_2/BiasAdd_1:output:0while/gru_cell_2/Const:output:0+while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split
while/gru_cell_2/addAddV2while/gru_cell_2/split:output:0!while/gru_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@o
while/gru_cell_2/SigmoidSigmoidwhile/gru_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/add_1AddV2while/gru_cell_2/split:output:1!while/gru_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@s
while/gru_cell_2/Sigmoid_1Sigmoidwhile/gru_cell_2/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/mulMulwhile/gru_cell_2/Sigmoid_1:y:0!while/gru_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/add_2AddV2while/gru_cell_2/split:output:2while/gru_cell_2/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
while/gru_cell_2/ReluReluwhile/gru_cell_2/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/mul_1Mulwhile/gru_cell_2/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@[
while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell_2/subSubwhile/gru_cell_2/sub/x:output:0while/gru_cell_2/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/mul_2Mulwhile/gru_cell_2/sub:z:0#while/gru_cell_2/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/add_3AddV2while/gru_cell_2/mul_1:z:0while/gru_cell_2/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ы
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/gru_cell_2/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Т

while/NoOpNoOp'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1while_gru_cell_2_matmul_1_readvariableop_resource3while_gru_cell_2_matmul_1_readvariableop_resource_0"d
/while_gru_cell_2_matmul_readvariableop_resource1while_gru_cell_2_matmul_readvariableop_resource_0"V
(while_gru_cell_2_readvariableop_resource*while_gru_cell_2_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ@: : : : : 2P
&while/gru_cell_2/MatMul/ReadVariableOp&while/gru_cell_2/MatMul/ReadVariableOp2T
(while/gru_cell_2/MatMul_1/ReadVariableOp(while/gru_cell_2/MatMul_1/ReadVariableOp2B
while/gru_cell_2/ReadVariableOpwhile/gru_cell_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
Й
У
while_cond_370752
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_370752___redundant_placeholder04
0while_while_cond_370752___redundant_placeholder14
0while_while_cond_370752___redundant_placeholder24
0while_while_cond_370752___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџ:.*
(
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
E
Е	
gru_2_while_body_372663(
$gru_2_while_gru_2_while_loop_counter.
*gru_2_while_gru_2_while_maximum_iterations
gru_2_while_placeholder
gru_2_while_placeholder_1
gru_2_while_placeholder_2'
#gru_2_while_gru_2_strided_slice_1_0c
_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0C
0gru_2_while_gru_cell_2_readvariableop_resource_0:	РK
7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0:
РL
9gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0:	@Р
gru_2_while_identity
gru_2_while_identity_1
gru_2_while_identity_2
gru_2_while_identity_3
gru_2_while_identity_4%
!gru_2_while_gru_2_strided_slice_1a
]gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensorA
.gru_2_while_gru_cell_2_readvariableop_resource:	РI
5gru_2_while_gru_cell_2_matmul_readvariableop_resource:
РJ
7gru_2_while_gru_cell_2_matmul_1_readvariableop_resource:	@РЂ,gru_2/while/gru_cell_2/MatMul/ReadVariableOpЂ.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOpЂ%gru_2/while/gru_cell_2/ReadVariableOp
=gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Х
/gru_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0gru_2_while_placeholderFgru_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype0
%gru_2/while/gru_cell_2/ReadVariableOpReadVariableOp0gru_2_while_gru_cell_2_readvariableop_resource_0*
_output_shapes
:	Р*
dtype0
gru_2/while/gru_cell_2/unstackUnpack-gru_2/while/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:Р:Р*	
numІ
,gru_2/while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
Р*
dtype0Ш
gru_2/while/gru_cell_2/MatMulMatMul6gru_2/while/TensorArrayV2Read/TensorListGetItem:item:04gru_2/while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџРЎ
gru_2/while/gru_cell_2/BiasAddBiasAdd'gru_2/while/gru_cell_2/MatMul:product:0'gru_2/while/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџРq
&gru_2/while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџш
gru_2/while/gru_cell_2/splitSplit/gru_2/while/gru_cell_2/split/split_dim:output:0'gru_2/while/gru_cell_2/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_splitЉ
.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp9gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	@Р*
dtype0Џ
gru_2/while/gru_cell_2/MatMul_1MatMulgru_2_while_placeholder_26gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџРВ
 gru_2/while/gru_cell_2/BiasAdd_1BiasAdd)gru_2/while/gru_cell_2/MatMul_1:product:0'gru_2/while/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџРq
gru_2/while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   џџџџs
(gru_2/while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЂ
gru_2/while/gru_cell_2/split_1SplitV)gru_2/while/gru_cell_2/BiasAdd_1:output:0%gru_2/while/gru_cell_2/Const:output:01gru_2/while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_splitЅ
gru_2/while/gru_cell_2/addAddV2%gru_2/while/gru_cell_2/split:output:0'gru_2/while/gru_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@{
gru_2/while/gru_cell_2/SigmoidSigmoidgru_2/while/gru_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ї
gru_2/while/gru_cell_2/add_1AddV2%gru_2/while/gru_cell_2/split:output:1'gru_2/while/gru_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@
 gru_2/while/gru_cell_2/Sigmoid_1Sigmoid gru_2/while/gru_cell_2/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ђ
gru_2/while/gru_cell_2/mulMul$gru_2/while/gru_cell_2/Sigmoid_1:y:0'gru_2/while/gru_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
gru_2/while/gru_cell_2/add_2AddV2%gru_2/while/gru_cell_2/split:output:2gru_2/while/gru_cell_2/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@w
gru_2/while/gru_cell_2/ReluRelu gru_2/while/gru_cell_2/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
gru_2/while/gru_cell_2/mul_1Mul"gru_2/while/gru_cell_2/Sigmoid:y:0gru_2_while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@a
gru_2/while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
gru_2/while/gru_cell_2/subSub%gru_2/while/gru_cell_2/sub/x:output:0"gru_2/while/gru_cell_2/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@ 
gru_2/while/gru_cell_2/mul_2Mulgru_2/while/gru_cell_2/sub:z:0)gru_2/while/gru_cell_2/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ@
gru_2/while/gru_cell_2/add_3AddV2 gru_2/while/gru_cell_2/mul_1:z:0 gru_2/while/gru_cell_2/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
6gru_2/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
0gru_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_2_while_placeholder_1?gru_2/while/TensorArrayV2Write/TensorListSetItem/index:output:0 gru_2/while/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype0:щшвS
gru_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :n
gru_2/while/addAddV2gru_2_while_placeholdergru_2/while/add/y:output:0*
T0*
_output_shapes
: U
gru_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
gru_2/while/add_1AddV2$gru_2_while_gru_2_while_loop_countergru_2/while/add_1/y:output:0*
T0*
_output_shapes
: k
gru_2/while/IdentityIdentitygru_2/while/add_1:z:0^gru_2/while/NoOp*
T0*
_output_shapes
: 
gru_2/while/Identity_1Identity*gru_2_while_gru_2_while_maximum_iterations^gru_2/while/NoOp*
T0*
_output_shapes
: k
gru_2/while/Identity_2Identitygru_2/while/add:z:0^gru_2/while/NoOp*
T0*
_output_shapes
: 
gru_2/while/Identity_3Identity@gru_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru_2/while/NoOp*
T0*
_output_shapes
: 
gru_2/while/Identity_4Identity gru_2/while/gru_cell_2/add_3:z:0^gru_2/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@к
gru_2/while/NoOpNoOp-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp/^gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "H
!gru_2_while_gru_2_strided_slice_1#gru_2_while_gru_2_strided_slice_1_0"t
7gru_2_while_gru_cell_2_matmul_1_readvariableop_resource9gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0"p
5gru_2_while_gru_cell_2_matmul_readvariableop_resource7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0"b
.gru_2_while_gru_cell_2_readvariableop_resource0gru_2_while_gru_cell_2_readvariableop_resource_0"5
gru_2_while_identitygru_2/while/Identity:output:0"9
gru_2_while_identity_1gru_2/while/Identity_1:output:0"9
gru_2_while_identity_2gru_2/while/Identity_2:output:0"9
gru_2_while_identity_3gru_2/while/Identity_3:output:0"9
gru_2_while_identity_4gru_2/while/Identity_4:output:0"Р
]gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ@: : : : : 2\
,gru_2/while/gru_cell_2/MatMul/ReadVariableOp,gru_2/while/gru_cell_2/MatMul/ReadVariableOp2`
.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp2N
%gru_2/while/gru_cell_2/ReadVariableOp%gru_2/while/gru_cell_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
й"
о
while_body_370562
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_2_370586_0:	.
while_lstm_cell_2_370588_0:
)
while_lstm_cell_2_370590_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_2_370586:	,
while_lstm_cell_2_370588:
'
while_lstm_cell_2_370590:	Ђ)while/lstm_cell_2/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Б
)while/lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_2_370586_0while_lstm_cell_2_370588_0while_lstm_cell_2_370590_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_370548л
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_2/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity2while/lstm_cell_2/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџ
while/Identity_5Identity2while/lstm_cell_2/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџx

while/NoOpNoOp*^while/lstm_cell_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_2_370586while_lstm_cell_2_370586_0"6
while_lstm_cell_2_370588while_lstm_cell_2_370588_0"6
while_lstm_cell_2_370590while_lstm_cell_2_370590_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2V
)while/lstm_cell_2/StatefulPartitionedCall)while/lstm_cell_2/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџ:.*
(
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
ж=

while_body_373519
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_2_readvariableop_resource_0:	РE
1while_gru_cell_2_matmul_readvariableop_resource_0:
РF
3while_gru_cell_2_matmul_1_readvariableop_resource_0:	@Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_2_readvariableop_resource:	РC
/while_gru_cell_2_matmul_readvariableop_resource:
РD
1while_gru_cell_2_matmul_1_readvariableop_resource:	@РЂ&while/gru_cell_2/MatMul/ReadVariableOpЂ(while/gru_cell_2/MatMul_1/ReadVariableOpЂwhile/gru_cell_2/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype0
while/gru_cell_2/ReadVariableOpReadVariableOp*while_gru_cell_2_readvariableop_resource_0*
_output_shapes
:	Р*
dtype0
while/gru_cell_2/unstackUnpack'while/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:Р:Р*	
num
&while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
Р*
dtype0Ж
while/gru_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџР
while/gru_cell_2/BiasAddBiasAdd!while/gru_cell_2/MatMul:product:0!while/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџРk
 while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџж
while/gru_cell_2/splitSplit)while/gru_cell_2/split/split_dim:output:0!while/gru_cell_2/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split
(while/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	@Р*
dtype0
while/gru_cell_2/MatMul_1MatMulwhile_placeholder_20while/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџР 
while/gru_cell_2/BiasAdd_1BiasAdd#while/gru_cell_2/MatMul_1:product:0!while/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџРk
while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   џџџџm
"while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
while/gru_cell_2/split_1SplitV#while/gru_cell_2/BiasAdd_1:output:0while/gru_cell_2/Const:output:0+while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split
while/gru_cell_2/addAddV2while/gru_cell_2/split:output:0!while/gru_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@o
while/gru_cell_2/SigmoidSigmoidwhile/gru_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/add_1AddV2while/gru_cell_2/split:output:1!while/gru_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@s
while/gru_cell_2/Sigmoid_1Sigmoidwhile/gru_cell_2/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/mulMulwhile/gru_cell_2/Sigmoid_1:y:0!while/gru_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/add_2AddV2while/gru_cell_2/split:output:2while/gru_cell_2/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
while/gru_cell_2/ReluReluwhile/gru_cell_2/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/mul_1Mulwhile/gru_cell_2/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@[
while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell_2/subSubwhile/gru_cell_2/sub/x:output:0while/gru_cell_2/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/mul_2Mulwhile/gru_cell_2/sub:z:0#while/gru_cell_2/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/add_3AddV2while/gru_cell_2/mul_1:z:0while/gru_cell_2/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ы
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/gru_cell_2/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Т

while/NoOpNoOp'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1while_gru_cell_2_matmul_1_readvariableop_resource3while_gru_cell_2_matmul_1_readvariableop_resource_0"d
/while_gru_cell_2_matmul_readvariableop_resource1while_gru_cell_2_matmul_readvariableop_resource_0"V
(while_gru_cell_2_readvariableop_resource*while_gru_cell_2_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ@: : : : : 2P
&while/gru_cell_2/MatMul/ReadVariableOp&while/gru_cell_2/MatMul/ReadVariableOp2T
(while/gru_cell_2/MatMul_1/ReadVariableOp(while/gru_cell_2/MatMul_1/ReadVariableOp2B
while/gru_cell_2/ReadVariableOpwhile/gru_cell_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
Н
Ъ
H__inference_sequential_2_layer_call_and_return_conditional_losses_372767

inputsD
1lstm_2_lstm_cell_2_matmul_readvariableop_resource:	G
3lstm_2_lstm_cell_2_matmul_1_readvariableop_resource:
A
2lstm_2_lstm_cell_2_biasadd_readvariableop_resource:	;
(gru_2_gru_cell_2_readvariableop_resource:	РC
/gru_2_gru_cell_2_matmul_readvariableop_resource:
РD
1gru_2_gru_cell_2_matmul_1_readvariableop_resource:	@Р8
&dense_2_matmul_readvariableop_resource:@5
'dense_2_biasadd_readvariableop_resource:
identityЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOpЂ&gru_2/gru_cell_2/MatMul/ReadVariableOpЂ(gru_2/gru_cell_2/MatMul_1/ReadVariableOpЂgru_2/gru_cell_2/ReadVariableOpЂgru_2/whileЂ)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOpЂ(lstm_2/lstm_cell_2/MatMul/ReadVariableOpЂ*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOpЂlstm_2/whileB
lstm_2/ShapeShapeinputs*
T0*
_output_shapes
:d
lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:є
lstm_2/strided_sliceStridedSlicelstm_2/Shape:output:0#lstm_2/strided_slice/stack:output:0%lstm_2/strided_slice/stack_1:output:0%lstm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm_2/zeros/packedPacklstm_2/strided_slice:output:0lstm_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_2/zerosFilllstm_2/zeros/packed:output:0lstm_2/zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџZ
lstm_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm_2/zeros_1/packedPacklstm_2/strided_slice:output:0 lstm_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_2/zeros_1Filllstm_2/zeros_1/packed:output:0lstm_2/zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџj
lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          {
lstm_2/transpose	Transposeinputslstm_2/transpose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџR
lstm_2/Shape_1Shapelstm_2/transpose:y:0*
T0*
_output_shapes
:f
lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
lstm_2/strided_slice_1StridedSlicelstm_2/Shape_1:output:0%lstm_2/strided_slice_1/stack:output:0'lstm_2/strided_slice_1/stack_1:output:0'lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЩ
lstm_2/TensorArrayV2TensorListReserve+lstm_2/TensorArrayV2/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ѕ
.lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_2/transpose:y:0Elstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвf
lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_2/strided_slice_2StridedSlicelstm_2/transpose:y:0%lstm_2/strided_slice_2/stack:output:0'lstm_2/strided_slice_2/stack_1:output:0'lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
(lstm_2/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp1lstm_2_lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Љ
lstm_2/lstm_cell_2/MatMulMatMullstm_2/strided_slice_2:output:00lstm_2/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ 
*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp3lstm_2_lstm_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ѓ
lstm_2/lstm_cell_2/MatMul_1MatMullstm_2/zeros:output:02lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_2/lstm_cell_2/addAddV2#lstm_2/lstm_cell_2/MatMul:product:0%lstm_2/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp2lstm_2_lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ї
lstm_2/lstm_cell_2/BiasAddBiasAddlstm_2/lstm_cell_2/add:z:01lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"lstm_2/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѓ
lstm_2/lstm_cell_2/splitSplit+lstm_2/lstm_cell_2/split/split_dim:output:0#lstm_2/lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split{
lstm_2/lstm_cell_2/SigmoidSigmoid!lstm_2/lstm_cell_2/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџ}
lstm_2/lstm_cell_2/Sigmoid_1Sigmoid!lstm_2/lstm_cell_2/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_2/lstm_cell_2/mulMul lstm_2/lstm_cell_2/Sigmoid_1:y:0lstm_2/zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџu
lstm_2/lstm_cell_2/ReluRelu!lstm_2/lstm_cell_2/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_2/lstm_cell_2/mul_1Mullstm_2/lstm_cell_2/Sigmoid:y:0%lstm_2/lstm_cell_2/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_2/lstm_cell_2/add_1AddV2lstm_2/lstm_cell_2/mul:z:0lstm_2/lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ}
lstm_2/lstm_cell_2/Sigmoid_2Sigmoid!lstm_2/lstm_cell_2/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџr
lstm_2/lstm_cell_2/Relu_1Relulstm_2/lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_2/lstm_cell_2/mul_2Mul lstm_2/lstm_cell_2/Sigmoid_2:y:0'lstm_2/lstm_cell_2/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџu
$lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Э
lstm_2/TensorArrayV2_1TensorListReserve-lstm_2/TensorArrayV2_1/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвM
lstm_2/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ[
lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : х
lstm_2/whileWhile"lstm_2/while/loop_counter:output:0(lstm_2/while/maximum_iterations:output:0lstm_2/time:output:0lstm_2/TensorArrayV2_1:handle:0lstm_2/zeros:output:0lstm_2/zeros_1:output:0lstm_2/strided_slice_1:output:0>lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_2_lstm_cell_2_matmul_readvariableop_resource3lstm_2_lstm_cell_2_matmul_1_readvariableop_resource2lstm_2_lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_2_while_body_372510*$
condR
lstm_2_while_cond_372509*M
output_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   и
)lstm_2/TensorArrayV2Stack/TensorListStackTensorListStacklstm_2/while:output:3@lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:
џџџџџџџџџ*
element_dtype0o
lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџh
lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ћ
lstm_2/strided_slice_3StridedSlice2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_2/strided_slice_3/stack:output:0'lstm_2/strided_slice_3/stack_1:output:0'lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskl
lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ќ
lstm_2/transpose_1	Transpose2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџ
b
lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    \
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_4/dropout/MulMullstm_2/transpose_1:y:0 dropout_4/dropout/Const:output:0*
T0*,
_output_shapes
:џџџџџџџџџ
]
dropout_4/dropout/ShapeShapelstm_2/transpose_1:y:0*
T0*
_output_shapes
:Б
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*,
_output_shapes
:џџџџџџџџџ
*
dtype0*

seed*e
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Щ
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:џџџџџџџџџ

dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:џџџџџџџџџ

dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*,
_output_shapes
:џџџџџџџџџ
V
gru_2/ShapeShapedropout_4/dropout/Mul_1:z:0*
T0*
_output_shapes
:c
gru_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:я
gru_2/strided_sliceStridedSlicegru_2/Shape:output:0"gru_2/strided_slice/stack:output:0$gru_2/strided_slice/stack_1:output:0$gru_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
gru_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
gru_2/zeros/packedPackgru_2/strided_slice:output:0gru_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:V
gru_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
gru_2/zerosFillgru_2/zeros/packed:output:0gru_2/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@i
gru_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
gru_2/transpose	Transposedropout_4/dropout/Mul_1:z:0gru_2/transpose/perm:output:0*
T0*,
_output_shapes
:
џџџџџџџџџP
gru_2/Shape_1Shapegru_2/transpose:y:0*
T0*
_output_shapes
:e
gru_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: g
gru_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
gru_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
gru_2/strided_slice_1StridedSlicegru_2/Shape_1:output:0$gru_2/strided_slice_1/stack:output:0&gru_2/strided_slice_1/stack_1:output:0&gru_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
!gru_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЦ
gru_2/TensorArrayV2TensorListReserve*gru_2/TensorArrayV2/element_shape:output:0gru_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
;gru_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ђ
-gru_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_2/transpose:y:0Dgru_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвe
gru_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: g
gru_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
gru_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
gru_2/strided_slice_2StridedSlicegru_2/transpose:y:0$gru_2/strided_slice_2/stack:output:0&gru_2/strided_slice_2/stack_1:output:0&gru_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
gru_2/gru_cell_2/ReadVariableOpReadVariableOp(gru_2_gru_cell_2_readvariableop_resource*
_output_shapes
:	Р*
dtype0
gru_2/gru_cell_2/unstackUnpack'gru_2/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:Р:Р*	
num
&gru_2/gru_cell_2/MatMul/ReadVariableOpReadVariableOp/gru_2_gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
Р*
dtype0Є
gru_2/gru_cell_2/MatMulMatMulgru_2/strided_slice_2:output:0.gru_2/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџР
gru_2/gru_cell_2/BiasAddBiasAdd!gru_2/gru_cell_2/MatMul:product:0!gru_2/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџРk
 gru_2/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџж
gru_2/gru_cell_2/splitSplit)gru_2/gru_cell_2/split/split_dim:output:0!gru_2/gru_cell_2/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split
(gru_2/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp1gru_2_gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	@Р*
dtype0
gru_2/gru_cell_2/MatMul_1MatMulgru_2/zeros:output:00gru_2/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџР 
gru_2/gru_cell_2/BiasAdd_1BiasAdd#gru_2/gru_cell_2/MatMul_1:product:0!gru_2/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџРk
gru_2/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   џџџџm
"gru_2/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
gru_2/gru_cell_2/split_1SplitV#gru_2/gru_cell_2/BiasAdd_1:output:0gru_2/gru_cell_2/Const:output:0+gru_2/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split
gru_2/gru_cell_2/addAddV2gru_2/gru_cell_2/split:output:0!gru_2/gru_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@o
gru_2/gru_cell_2/SigmoidSigmoidgru_2/gru_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
gru_2/gru_cell_2/add_1AddV2gru_2/gru_cell_2/split:output:1!gru_2/gru_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@s
gru_2/gru_cell_2/Sigmoid_1Sigmoidgru_2/gru_cell_2/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
gru_2/gru_cell_2/mulMulgru_2/gru_cell_2/Sigmoid_1:y:0!gru_2/gru_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
gru_2/gru_cell_2/add_2AddV2gru_2/gru_cell_2/split:output:2gru_2/gru_cell_2/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
gru_2/gru_cell_2/ReluRelugru_2/gru_cell_2/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
gru_2/gru_cell_2/mul_1Mulgru_2/gru_cell_2/Sigmoid:y:0gru_2/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@[
gru_2/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
gru_2/gru_cell_2/subSubgru_2/gru_cell_2/sub/x:output:0gru_2/gru_cell_2/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@
gru_2/gru_cell_2/mul_2Mulgru_2/gru_cell_2/sub:z:0#gru_2/gru_cell_2/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ@
gru_2/gru_cell_2/add_3AddV2gru_2/gru_cell_2/mul_1:z:0gru_2/gru_cell_2/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@t
#gru_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   d
"gru_2/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :з
gru_2/TensorArrayV2_1TensorListReserve,gru_2/TensorArrayV2_1/element_shape:output:0+gru_2/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвL

gru_2/timeConst*
_output_shapes
: *
dtype0*
value	B : i
gru_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџZ
gru_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
gru_2/whileWhile!gru_2/while/loop_counter:output:0'gru_2/while/maximum_iterations:output:0gru_2/time:output:0gru_2/TensorArrayV2_1:handle:0gru_2/zeros:output:0gru_2/strided_slice_1:output:0=gru_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0(gru_2_gru_cell_2_readvariableop_resource/gru_2_gru_cell_2_matmul_readvariableop_resource1gru_2_gru_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *#
bodyR
gru_2_while_body_372663*#
condR
gru_2_while_cond_372662*8
output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *
parallel_iterations 
6gru_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ш
(gru_2/TensorArrayV2Stack/TensorListStackTensorListStackgru_2/while:output:3?gru_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsn
gru_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџg
gru_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: g
gru_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ѕ
gru_2/strided_slice_3StridedSlice1gru_2/TensorArrayV2Stack/TensorListStack:tensor:0$gru_2/strided_slice_3/stack:output:0&gru_2/strided_slice_3/stack_1:output:0&gru_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskk
gru_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ј
gru_2/transpose_1	Transpose1gru_2/TensorArrayV2Stack/TensorListStack:tensor:0gru_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@a
gru_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    \
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_5/dropout/MulMulgru_2/strided_slice_3:output:0 dropout_5/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@e
dropout_5/dropout/ShapeShapegru_2/strided_slice_3:output:0*
T0*
_output_shapes
:Й
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*

seed**
seed2e
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ф
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense_2/MatMulMatMuldropout_5/dropout/Mul_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџg
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp'^gru_2/gru_cell_2/MatMul/ReadVariableOp)^gru_2/gru_cell_2/MatMul_1/ReadVariableOp ^gru_2/gru_cell_2/ReadVariableOp^gru_2/while*^lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp)^lstm_2/lstm_cell_2/MatMul/ReadVariableOp+^lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp^lstm_2/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ
: : : : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2P
&gru_2/gru_cell_2/MatMul/ReadVariableOp&gru_2/gru_cell_2/MatMul/ReadVariableOp2T
(gru_2/gru_cell_2/MatMul_1/ReadVariableOp(gru_2/gru_cell_2/MatMul_1/ReadVariableOp2B
gru_2/gru_cell_2/ReadVariableOpgru_2/gru_cell_2/ReadVariableOp2
gru_2/whilegru_2/while2V
)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp2T
(lstm_2/lstm_cell_2/MatMul/ReadVariableOp(lstm_2/lstm_cell_2/MatMul/ReadVariableOp2X
*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp2
lstm_2/whilelstm_2/while:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
вM

A__inference_gru_2_layer_call_and_return_conditional_losses_373919

inputs5
"gru_cell_2_readvariableop_resource:	Р=
)gru_cell_2_matmul_readvariableop_resource:
Р>
+gru_cell_2_matmul_1_readvariableop_resource:	@Р
identityЂ gru_cell_2/MatMul/ReadVariableOpЂ"gru_cell_2/MatMul_1/ReadVariableOpЂgru_cell_2/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:
џџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask}
gru_cell_2/ReadVariableOpReadVariableOp"gru_cell_2_readvariableop_resource*
_output_shapes
:	Р*
dtype0w
gru_cell_2/unstackUnpack!gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:Р:Р*	
num
 gru_cell_2/MatMul/ReadVariableOpReadVariableOp)gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
Р*
dtype0
gru_cell_2/MatMulMatMulstrided_slice_2:output:0(gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџР
gru_cell_2/BiasAddBiasAddgru_cell_2/MatMul:product:0gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџРe
gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџФ
gru_cell_2/splitSplit#gru_cell_2/split/split_dim:output:0gru_cell_2/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split
"gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	@Р*
dtype0
gru_cell_2/MatMul_1MatMulzeros:output:0*gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџР
gru_cell_2/BiasAdd_1BiasAddgru_cell_2/MatMul_1:product:0gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџРe
gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   џџџџg
gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџђ
gru_cell_2/split_1SplitVgru_cell_2/BiasAdd_1:output:0gru_cell_2/Const:output:0%gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split
gru_cell_2/addAddV2gru_cell_2/split:output:0gru_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
gru_cell_2/SigmoidSigmoidgru_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
gru_cell_2/add_1AddV2gru_cell_2/split:output:1gru_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@g
gru_cell_2/Sigmoid_1Sigmoidgru_cell_2/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@~
gru_cell_2/mulMulgru_cell_2/Sigmoid_1:y:0gru_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@z
gru_cell_2/add_2AddV2gru_cell_2/split:output:2gru_cell_2/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@_
gru_cell_2/ReluRelugru_cell_2/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@q
gru_cell_2/mul_1Mulgru_cell_2/Sigmoid:y:0zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@U
gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?z
gru_cell_2/subSubgru_cell_2/sub/x:output:0gru_cell_2/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@|
gru_cell_2/mul_2Mulgru_cell_2/sub:z:0gru_cell_2/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ@w
gru_cell_2/add_3AddV2gru_cell_2/mul_1:z:0gru_cell_2/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Л
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_2_readvariableop_resource)gru_cell_2_matmul_readvariableop_resource+gru_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_373829*
condR
while_cond_373828*8
output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@В
NoOpNoOp!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџ
: : : 2D
 gru_cell_2/MatMul/ReadVariableOp gru_cell_2/MatMul/ReadVariableOp2H
"gru_cell_2/MatMul_1/ReadVariableOp"gru_cell_2/MatMul_1/ReadVariableOp26
gru_cell_2/ReadVariableOpgru_cell_2/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs

К
&__inference_gru_2_layer_call_fn_373421
inputs_0
unknown:	Р
	unknown_0:
Р
	unknown_1:	@Р
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_gru_2_layer_call_and_return_conditional_losses_370980o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
ж=

while_body_371653
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_2_readvariableop_resource_0:	РE
1while_gru_cell_2_matmul_readvariableop_resource_0:
РF
3while_gru_cell_2_matmul_1_readvariableop_resource_0:	@Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_2_readvariableop_resource:	РC
/while_gru_cell_2_matmul_readvariableop_resource:
РD
1while_gru_cell_2_matmul_1_readvariableop_resource:	@РЂ&while/gru_cell_2/MatMul/ReadVariableOpЂ(while/gru_cell_2/MatMul_1/ReadVariableOpЂwhile/gru_cell_2/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype0
while/gru_cell_2/ReadVariableOpReadVariableOp*while_gru_cell_2_readvariableop_resource_0*
_output_shapes
:	Р*
dtype0
while/gru_cell_2/unstackUnpack'while/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:Р:Р*	
num
&while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
Р*
dtype0Ж
while/gru_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџР
while/gru_cell_2/BiasAddBiasAdd!while/gru_cell_2/MatMul:product:0!while/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџРk
 while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџж
while/gru_cell_2/splitSplit)while/gru_cell_2/split/split_dim:output:0!while/gru_cell_2/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split
(while/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	@Р*
dtype0
while/gru_cell_2/MatMul_1MatMulwhile_placeholder_20while/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџР 
while/gru_cell_2/BiasAdd_1BiasAdd#while/gru_cell_2/MatMul_1:product:0!while/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџРk
while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   џџџџm
"while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
while/gru_cell_2/split_1SplitV#while/gru_cell_2/BiasAdd_1:output:0while/gru_cell_2/Const:output:0+while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split
while/gru_cell_2/addAddV2while/gru_cell_2/split:output:0!while/gru_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@o
while/gru_cell_2/SigmoidSigmoidwhile/gru_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/add_1AddV2while/gru_cell_2/split:output:1!while/gru_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@s
while/gru_cell_2/Sigmoid_1Sigmoidwhile/gru_cell_2/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/mulMulwhile/gru_cell_2/Sigmoid_1:y:0!while/gru_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/add_2AddV2while/gru_cell_2/split:output:2while/gru_cell_2/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@k
while/gru_cell_2/ReluReluwhile/gru_cell_2/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/mul_1Mulwhile/gru_cell_2/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@[
while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell_2/subSubwhile/gru_cell_2/sub/x:output:0while/gru_cell_2/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/mul_2Mulwhile/gru_cell_2/sub:z:0#while/gru_cell_2/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ@
while/gru_cell_2/add_3AddV2while/gru_cell_2/mul_1:z:0while/gru_cell_2/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ы
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/gru_cell_2/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Т

while/NoOpNoOp'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1while_gru_cell_2_matmul_1_readvariableop_resource3while_gru_cell_2_matmul_1_readvariableop_resource_0"d
/while_gru_cell_2_matmul_readvariableop_resource1while_gru_cell_2_matmul_readvariableop_resource_0"V
(while_gru_cell_2_readvariableop_resource*while_gru_cell_2_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ@: : : : : 2P
&while/gru_cell_2/MatMul/ReadVariableOp&while/gru_cell_2/MatMul/ReadVariableOp2T
(while/gru_cell_2/MatMul_1/ReadVariableOp(while/gru_cell_2/MatMul_1/ReadVariableOp2B
while/gru_cell_2/ReadVariableOpwhile/gru_cell_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
ъ

G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_370694

inputs

states
states_11
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :К
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:џџџџџџџџџW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:џџџџџџџџџV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:џџџџџџџџџO
ReluRelusplit:output:2*
T0*(
_output_shapes
:џџџџџџџџџ`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:џџџџџџџџџL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:PL
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_namestates:PL
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_namestates
ў

H__inference_sequential_2_layer_call_and_return_conditional_losses_372078
lstm_2_input 
lstm_2_372056:	!
lstm_2_372058:

lstm_2_372060:	
gru_2_372064:	Р 
gru_2_372066:
Р
gru_2_372068:	@Р 
dense_2_372072:@
dense_2_372074:
identityЂdense_2/StatefulPartitionedCallЂ!dropout_4/StatefulPartitionedCallЂ!dropout_5/StatefulPartitionedCallЂgru_2/StatefulPartitionedCallЂlstm_2/StatefulPartitionedCall
lstm_2/StatefulPartitionedCallStatefulPartitionedCalllstm_2_inputlstm_2_372056lstm_2_372058lstm_2_372060*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_371931№
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_371772
gru_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0gru_2_372064gru_2_372066gru_2_372068*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_gru_2_layer_call_and_return_conditional_losses_371743
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall&gru_2/StatefulPartitionedCall:output:0"^dropout_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_371572
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_5/StatefulPartitionedCall:output:0dense_2_372072dense_2_372074*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_371516w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџё
NoOpNoOp ^dense_2/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall^gru_2/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ
: : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall2>
gru_2/StatefulPartitionedCallgru_2/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ

&
_user_specified_namelstm_2_input
§	
Я
lstm_2_while_cond_372207*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3,
(lstm_2_while_less_lstm_2_strided_slice_1B
>lstm_2_while_lstm_2_while_cond_372207___redundant_placeholder0B
>lstm_2_while_lstm_2_while_cond_372207___redundant_placeholder1B
>lstm_2_while_lstm_2_while_cond_372207___redundant_placeholder2B
>lstm_2_while_lstm_2_while_cond_372207___redundant_placeholder3
lstm_2_while_identity
~
lstm_2/while/LessLesslstm_2_while_placeholder(lstm_2_while_less_lstm_2_strided_slice_1*
T0*
_output_shapes
: Y
lstm_2/while/IdentityIdentitylstm_2/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_2_while_identitylstm_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџ:.*
(
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:

й
F__inference_gru_cell_2_layer_call_and_return_conditional_losses_371046

inputs

states*
readvariableop_resource:	Р2
matmul_readvariableop_resource:
Р3
 matmul_1_readvariableop_resource:	@Р
identity

identity_1ЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpЂReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	Р*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:Р:Р*	
numv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Р*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџРi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџРZ
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЃ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_splity
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@Р*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџРm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџРZ
ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   џџџџ\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЦ
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@I
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@S
mul_1MulSigmoid:y:0states*
T0*'
_output_shapes
:џџџџџџџџџ@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@[
mul_2Mulsub:z:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ@V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@X
IdentityIdentity	add_3:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Z

Identity_1Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ:џџџџџџџџџ@: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_namestates
ъ

G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_370548

inputs

states
states_11
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :К
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:џџџџџџџџџW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:џџџџџџџџџV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:џџџџџџџџџO
ReluRelusplit:output:2*
T0*(
_output_shapes
:џџџџџџџџџ`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:џџџџџџџџџL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:PL
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_namestates:PL
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_namestates
вM

A__inference_gru_2_layer_call_and_return_conditional_losses_374074

inputs5
"gru_cell_2_readvariableop_resource:	Р=
)gru_cell_2_matmul_readvariableop_resource:
Р>
+gru_cell_2_matmul_1_readvariableop_resource:	@Р
identityЂ gru_cell_2/MatMul/ReadVariableOpЂ"gru_cell_2/MatMul_1/ReadVariableOpЂgru_cell_2/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:
џџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask}
gru_cell_2/ReadVariableOpReadVariableOp"gru_cell_2_readvariableop_resource*
_output_shapes
:	Р*
dtype0w
gru_cell_2/unstackUnpack!gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:Р:Р*	
num
 gru_cell_2/MatMul/ReadVariableOpReadVariableOp)gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
Р*
dtype0
gru_cell_2/MatMulMatMulstrided_slice_2:output:0(gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџР
gru_cell_2/BiasAddBiasAddgru_cell_2/MatMul:product:0gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџРe
gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџФ
gru_cell_2/splitSplit#gru_cell_2/split/split_dim:output:0gru_cell_2/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split
"gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	@Р*
dtype0
gru_cell_2/MatMul_1MatMulzeros:output:0*gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџР
gru_cell_2/BiasAdd_1BiasAddgru_cell_2/MatMul_1:product:0gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџРe
gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"@   @   џџџџg
gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџђ
gru_cell_2/split_1SplitVgru_cell_2/BiasAdd_1:output:0gru_cell_2/Const:output:0%gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split
gru_cell_2/addAddV2gru_cell_2/split:output:0gru_cell_2/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
gru_cell_2/SigmoidSigmoidgru_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@
gru_cell_2/add_1AddV2gru_cell_2/split:output:1gru_cell_2/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@g
gru_cell_2/Sigmoid_1Sigmoidgru_cell_2/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@~
gru_cell_2/mulMulgru_cell_2/Sigmoid_1:y:0gru_cell_2/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@z
gru_cell_2/add_2AddV2gru_cell_2/split:output:2gru_cell_2/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@_
gru_cell_2/ReluRelugru_cell_2/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@q
gru_cell_2/mul_1Mulgru_cell_2/Sigmoid:y:0zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@U
gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?z
gru_cell_2/subSubgru_cell_2/sub/x:output:0gru_cell_2/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@|
gru_cell_2/mul_2Mulgru_cell_2/sub:z:0gru_cell_2/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ@w
gru_cell_2/add_3AddV2gru_cell_2/mul_1:z:0gru_cell_2/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Л
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_2_readvariableop_resource)gru_cell_2_matmul_readvariableop_resource+gru_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_373984*
condR
while_cond_373983*8
output_shapes'
%: : : : :џџџџџџџџџ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@В
NoOpNoOp!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџ
: : : 2D
 gru_cell_2/MatMul/ReadVariableOp gru_cell_2/MatMul/ReadVariableOp2H
"gru_cell_2/MatMul_1/ReadVariableOp"gru_cell_2/MatMul_1/ReadVariableOp26
gru_cell_2/ReadVariableOpgru_cell_2/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
8

B__inference_lstm_2_layer_call_and_return_conditional_losses_370822

inputs%
lstm_cell_2_370740:	&
lstm_cell_2_370742:
!
lstm_cell_2_370744:	
identityЂ#lstm_cell_2/StatefulPartitionedCallЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskѓ
#lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_2_370740lstm_cell_2_370742lstm_cell_2_370744*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_370694n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : И
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_2_370740lstm_cell_2_370742lstm_cell_2_370744*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_370753*
condR
while_cond_370752*M
output_shapes<
:: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ь
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџt
NoOpNoOp$^lstm_cell_2/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2J
#lstm_cell_2/StatefulPartitionedCall#lstm_cell_2/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Й
У
while_cond_372869
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_372869___redundant_placeholder04
0while_while_cond_372869___redundant_placeholder14
0while_while_cond_372869___redundant_placeholder24
0while_while_cond_372869___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџ:.*
(
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
ђ

G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_374218

inputs
states_0
states_11
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :К
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:џџџџџџџџџW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:џџџџџџџџџV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:џџџџџџџџџO
ReluRelusplit:output:2*
T0*(
_output_shapes
:џџџџџџџџџ`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:џџџџџџџџџL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:RN
(
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/0:RN
(
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/1

Е
'__inference_lstm_2_layer_call_fn_372811

inputs
unknown:	
	unknown_0:

	unknown_1:	
identityЂStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_371931t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
ђ

G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_374186

inputs
states_0
states_11
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :К
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:џџџџџџџџџW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:џџџџџџџџџV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:џџџџџџџџџO
ReluRelusplit:output:2*
T0*(
_output_shapes
:џџџџџџџџџ`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:џџџџџџџџџL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:RN
(
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/0:RN
(
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/1
Й
У
while_cond_371846
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_371846___redundant_placeholder04
0while_while_cond_371846___redundant_placeholder14
0while_while_cond_371846___redundant_placeholder24
0while_while_cond_371846___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџ:.*
(
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
№	
в
-__inference_sequential_2_layer_call_fn_372028
lstm_2_input
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:	Р
	unknown_3:
Р
	unknown_4:	@Р
	unknown_5:@
	unknown_6:
identityЂStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCalllstm_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_371988o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ
: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ

&
_user_specified_namelstm_2_input"ПL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*И
serving_defaultЄ
I
lstm_2_input9
serving_default_lstm_2_input:0џџџџџџџџџ
;
dense_20
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:
ѕ
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
к
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
М
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator"
_tf_keras_layer
к
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%_random_generator
&cell
'
state_spec"
_tf_keras_rnn_layer
М
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses
._random_generator"
_tf_keras_layer
Л
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

5kernel
6bias"
_tf_keras_layer
X
70
81
92
:3
;4
<5
56
67"
trackable_list_wrapper
X
70
81
92
:3
;4
<5
56
67"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ъ
Btrace_0
Ctrace_1
Dtrace_2
Etrace_32џ
-__inference_sequential_2_layer_call_fn_371542
-__inference_sequential_2_layer_call_fn_372128
-__inference_sequential_2_layer_call_fn_372149
-__inference_sequential_2_layer_call_fn_372028Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 zBtrace_0zCtrace_1zDtrace_2zEtrace_3
ж
Ftrace_0
Gtrace_1
Htrace_2
Itrace_32ы
H__inference_sequential_2_layer_call_and_return_conditional_losses_372451
H__inference_sequential_2_layer_call_and_return_conditional_losses_372767
H__inference_sequential_2_layer_call_and_return_conditional_losses_372053
H__inference_sequential_2_layer_call_and_return_conditional_losses_372078Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 zFtrace_0zGtrace_1zHtrace_2zItrace_3
бBЮ
!__inference__wrapped_model_370481lstm_2_input"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѓ
Jiter

Kbeta_1

Lbeta_2
	Mdecay
Nlearning_rate5mЋ6mЌ7m­8mЎ9mЏ:mА;mБ<mВ5vГ6vД7vЕ8vЖ9vЗ:vИ;vЙ<vК"
	optimizer
,
Oserving_default"
signature_map
5
70
81
92"
trackable_list_wrapper
5
70
81
92"
trackable_list_wrapper
 "
trackable_list_wrapper
Й

Pstates
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ч
Vtrace_0
Wtrace_1
Xtrace_2
Ytrace_32ќ
'__inference_lstm_2_layer_call_fn_372778
'__inference_lstm_2_layer_call_fn_372789
'__inference_lstm_2_layer_call_fn_372800
'__inference_lstm_2_layer_call_fn_372811е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 zVtrace_0zWtrace_1zXtrace_2zYtrace_3
г
Ztrace_0
[trace_1
\trace_2
]trace_32ш
B__inference_lstm_2_layer_call_and_return_conditional_losses_372954
B__inference_lstm_2_layer_call_and_return_conditional_losses_373097
B__inference_lstm_2_layer_call_and_return_conditional_losses_373240
B__inference_lstm_2_layer_call_and_return_conditional_losses_373383е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 zZtrace_0z[trace_1z\trace_2z]trace_3
"
_generic_user_object
ј
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses
d_random_generator
e
state_size

7kernel
8recurrent_kernel
9bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ц
ktrace_0
ltrace_12
*__inference_dropout_4_layer_call_fn_373388
*__inference_dropout_4_layer_call_fn_373393Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 zktrace_0zltrace_1
ќ
mtrace_0
ntrace_12Х
E__inference_dropout_4_layer_call_and_return_conditional_losses_373398
E__inference_dropout_4_layer_call_and_return_conditional_losses_373410Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 zmtrace_0zntrace_1
"
_generic_user_object
5
:0
;1
<2"
trackable_list_wrapper
5
:0
;1
<2"
trackable_list_wrapper
 "
trackable_list_wrapper
Й

ostates
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
у
utrace_0
vtrace_1
wtrace_2
xtrace_32ј
&__inference_gru_2_layer_call_fn_373421
&__inference_gru_2_layer_call_fn_373432
&__inference_gru_2_layer_call_fn_373443
&__inference_gru_2_layer_call_fn_373454е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 zutrace_0zvtrace_1zwtrace_2zxtrace_3
Я
ytrace_0
ztrace_1
{trace_2
|trace_32ф
A__inference_gru_2_layer_call_and_return_conditional_losses_373609
A__inference_gru_2_layer_call_and_return_conditional_losses_373764
A__inference_gru_2_layer_call_and_return_conditional_losses_373919
A__inference_gru_2_layer_call_and_return_conditional_losses_374074е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 zytrace_0zztrace_1z{trace_2z|trace_3
"
_generic_user_object
ь
}	variables
~trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator

:kernel
;recurrent_kernel
<bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
Ъ
trace_0
trace_12
*__inference_dropout_5_layer_call_fn_374079
*__inference_dropout_5_layer_call_fn_374084Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 ztrace_0ztrace_1

trace_0
trace_12Х
E__inference_dropout_5_layer_call_and_return_conditional_losses_374089
E__inference_dropout_5_layer_call_and_return_conditional_losses_374101Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 ztrace_0ztrace_1
"
_generic_user_object
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
ю
trace_02Я
(__inference_dense_2_layer_call_fn_374110Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02ъ
C__inference_dense_2_layer_call_and_return_conditional_losses_374120Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
 :@2dense_2/kernel
:2dense_2/bias
,:*	2lstm_2/lstm_cell_2/kernel
7:5
2#lstm_2/lstm_cell_2/recurrent_kernel
&:$2lstm_2/lstm_cell_2/bias
+:)
Р2gru_2/gru_cell_2/kernel
4:2	@Р2!gru_2/gru_cell_2/recurrent_kernel
(:&	Р2gru_2/gru_cell_2/bias
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
-__inference_sequential_2_layer_call_fn_371542lstm_2_input"Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
џBќ
-__inference_sequential_2_layer_call_fn_372128inputs"Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
џBќ
-__inference_sequential_2_layer_call_fn_372149inputs"Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
B
-__inference_sequential_2_layer_call_fn_372028lstm_2_input"Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
B
H__inference_sequential_2_layer_call_and_return_conditional_losses_372451inputs"Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
B
H__inference_sequential_2_layer_call_and_return_conditional_losses_372767inputs"Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
 B
H__inference_sequential_2_layer_call_and_return_conditional_losses_372053lstm_2_input"Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
 B
H__inference_sequential_2_layer_call_and_return_conditional_losses_372078lstm_2_input"Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
аBЭ
$__inference_signature_wrapper_372107lstm_2_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
'__inference_lstm_2_layer_call_fn_372778inputs/0"е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
B
'__inference_lstm_2_layer_call_fn_372789inputs/0"е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
B
'__inference_lstm_2_layer_call_fn_372800inputs"е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
B
'__inference_lstm_2_layer_call_fn_372811inputs"е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ЋBЈ
B__inference_lstm_2_layer_call_and_return_conditional_losses_372954inputs/0"е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ЋBЈ
B__inference_lstm_2_layer_call_and_return_conditional_losses_373097inputs/0"е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ЉBІ
B__inference_lstm_2_layer_call_and_return_conditional_losses_373240inputs"е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ЉBІ
B__inference_lstm_2_layer_call_and_return_conditional_losses_373383inputs"е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
5
70
81
92"
trackable_list_wrapper
5
70
81
92"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
и
trace_0
trace_12
,__inference_lstm_cell_2_layer_call_fn_374137
,__inference_lstm_cell_2_layer_call_fn_374154О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 ztrace_0ztrace_1

trace_0
trace_12г
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_374186
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_374218О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 ztrace_0ztrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
№Bэ
*__inference_dropout_4_layer_call_fn_373388inputs"Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
№Bэ
*__inference_dropout_4_layer_call_fn_373393inputs"Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
B
E__inference_dropout_4_layer_call_and_return_conditional_losses_373398inputs"Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
B
E__inference_dropout_4_layer_call_and_return_conditional_losses_373410inputs"Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
&0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
&__inference_gru_2_layer_call_fn_373421inputs/0"е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
B
&__inference_gru_2_layer_call_fn_373432inputs/0"е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
B
&__inference_gru_2_layer_call_fn_373443inputs"е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
B
&__inference_gru_2_layer_call_fn_373454inputs"е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ЊBЇ
A__inference_gru_2_layer_call_and_return_conditional_losses_373609inputs/0"е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ЊBЇ
A__inference_gru_2_layer_call_and_return_conditional_losses_373764inputs/0"е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ЈBЅ
A__inference_gru_2_layer_call_and_return_conditional_losses_373919inputs"е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ЈBЅ
A__inference_gru_2_layer_call_and_return_conditional_losses_374074inputs"е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
5
:0
;1
<2"
trackable_list_wrapper
5
:0
;1
<2"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
non_trainable_variables
layers
 metrics
 Ёlayer_regularization_losses
Ђlayer_metrics
}	variables
~trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ж
Ѓtrace_0
Єtrace_12
+__inference_gru_cell_2_layer_call_fn_374232
+__inference_gru_cell_2_layer_call_fn_374246О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 zЃtrace_0zЄtrace_1

Ѕtrace_0
Іtrace_12б
F__inference_gru_cell_2_layer_call_and_return_conditional_losses_374285
F__inference_gru_cell_2_layer_call_and_return_conditional_losses_374324О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 zЅtrace_0zІtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
№Bэ
*__inference_dropout_5_layer_call_fn_374079inputs"Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
№Bэ
*__inference_dropout_5_layer_call_fn_374084inputs"Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
B
E__inference_dropout_5_layer_call_and_return_conditional_losses_374089inputs"Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
B
E__inference_dropout_5_layer_call_and_return_conditional_losses_374101inputs"Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
мBй
(__inference_dense_2_layer_call_fn_374110inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
C__inference_dense_2_layer_call_and_return_conditional_losses_374120inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
R
Ї	variables
Ј	keras_api

Љtotal

Њcount"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
,__inference_lstm_cell_2_layer_call_fn_374137inputsstates/0states/1"О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
B
,__inference_lstm_cell_2_layer_call_fn_374154inputsstates/0states/1"О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ЋBЈ
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_374186inputsstates/0states/1"О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ЋBЈ
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_374218inputsstates/0states/1"О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
+__inference_gru_cell_2_layer_call_fn_374232inputsstates/0"О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
B
+__inference_gru_cell_2_layer_call_fn_374246inputsstates/0"О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
 B
F__inference_gru_cell_2_layer_call_and_return_conditional_losses_374285inputsstates/0"О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
 B
F__inference_gru_cell_2_layer_call_and_return_conditional_losses_374324inputsstates/0"О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
0
Љ0
Њ1"
trackable_list_wrapper
.
Ї	variables"
_generic_user_object
:  (2total
:  (2count
%:#@2Adam/dense_2/kernel/m
:2Adam/dense_2/bias/m
1:/	2 Adam/lstm_2/lstm_cell_2/kernel/m
<::
2*Adam/lstm_2/lstm_cell_2/recurrent_kernel/m
+:)2Adam/lstm_2/lstm_cell_2/bias/m
0:.
Р2Adam/gru_2/gru_cell_2/kernel/m
9:7	@Р2(Adam/gru_2/gru_cell_2/recurrent_kernel/m
-:+	Р2Adam/gru_2/gru_cell_2/bias/m
%:#@2Adam/dense_2/kernel/v
:2Adam/dense_2/bias/v
1:/	2 Adam/lstm_2/lstm_cell_2/kernel/v
<::
2*Adam/lstm_2/lstm_cell_2/recurrent_kernel/v
+:)2Adam/lstm_2/lstm_cell_2/bias/v
0:.
Р2Adam/gru_2/gru_cell_2/kernel/v
9:7	@Р2(Adam/gru_2/gru_cell_2/recurrent_kernel/v
-:+	Р2Adam/gru_2/gru_cell_2/bias/v
!__inference__wrapped_model_370481x789<:;569Ђ6
/Ђ,
*'
lstm_2_inputџџџџџџџџџ

Њ "1Њ.
,
dense_2!
dense_2џџџџџџџџџЃ
C__inference_dense_2_layer_call_and_return_conditional_losses_374120\56/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "%Ђ"

0џџџџџџџџџ
 {
(__inference_dense_2_layer_call_fn_374110O56/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "џџџџџџџџџЏ
E__inference_dropout_4_layer_call_and_return_conditional_losses_373398f8Ђ5
.Ђ+
%"
inputsџџџџџџџџџ

p 
Њ "*Ђ'
 
0џџџџџџџџџ

 Џ
E__inference_dropout_4_layer_call_and_return_conditional_losses_373410f8Ђ5
.Ђ+
%"
inputsџџџџџџџџџ

p
Њ "*Ђ'
 
0џџџџџџџџџ

 
*__inference_dropout_4_layer_call_fn_373388Y8Ђ5
.Ђ+
%"
inputsџџџџџџџџџ

p 
Њ "џџџџџџџџџ

*__inference_dropout_4_layer_call_fn_373393Y8Ђ5
.Ђ+
%"
inputsџџџџџџџџџ

p
Њ "џџџџџџџџџ
Ѕ
E__inference_dropout_5_layer_call_and_return_conditional_losses_374089\3Ђ0
)Ђ&
 
inputsџџџџџџџџџ@
p 
Њ "%Ђ"

0џџџџџџџџџ@
 Ѕ
E__inference_dropout_5_layer_call_and_return_conditional_losses_374101\3Ђ0
)Ђ&
 
inputsџџџџџџџџџ@
p
Њ "%Ђ"

0џџџџџџџџџ@
 }
*__inference_dropout_5_layer_call_fn_374079O3Ђ0
)Ђ&
 
inputsџџџџџџџџџ@
p 
Њ "џџџџџџџџџ@}
*__inference_dropout_5_layer_call_fn_374084O3Ђ0
)Ђ&
 
inputsџџџџџџџџџ@
p
Њ "џџџџџџџџџ@У
A__inference_gru_2_layer_call_and_return_conditional_losses_373609~<:;PЂM
FЂC
52
0-
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "%Ђ"

0џџџџџџџџџ@
 У
A__inference_gru_2_layer_call_and_return_conditional_losses_373764~<:;PЂM
FЂC
52
0-
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "%Ђ"

0џџџџџџџџџ@
 Г
A__inference_gru_2_layer_call_and_return_conditional_losses_373919n<:;@Ђ=
6Ђ3
%"
inputsџџџџџџџџџ


 
p 

 
Њ "%Ђ"

0џџџџџџџџџ@
 Г
A__inference_gru_2_layer_call_and_return_conditional_losses_374074n<:;@Ђ=
6Ђ3
%"
inputsџџџџџџџџџ


 
p

 
Њ "%Ђ"

0џџџџџџџџџ@
 
&__inference_gru_2_layer_call_fn_373421q<:;PЂM
FЂC
52
0-
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "џџџџџџџџџ@
&__inference_gru_2_layer_call_fn_373432q<:;PЂM
FЂC
52
0-
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "џџџџџџџџџ@
&__inference_gru_2_layer_call_fn_373443a<:;@Ђ=
6Ђ3
%"
inputsџџџџџџџџџ


 
p 

 
Њ "џџџџџџџџџ@
&__inference_gru_2_layer_call_fn_373454a<:;@Ђ=
6Ђ3
%"
inputsџџџџџџџџџ


 
p

 
Њ "џџџџџџџџџ@
F__inference_gru_cell_2_layer_call_and_return_conditional_losses_374285И<:;]ЂZ
SЂP
!
inputsџџџџџџџџџ
'Ђ$
"
states/0џџџџџџџџџ@
p 
Њ "RЂO
HЂE

0/0џџџџџџџџџ@
$!

0/1/0џџџџџџџџџ@
 
F__inference_gru_cell_2_layer_call_and_return_conditional_losses_374324И<:;]ЂZ
SЂP
!
inputsџџџџџџџџџ
'Ђ$
"
states/0џџџџџџџџџ@
p
Њ "RЂO
HЂE

0/0џџџџџџџџџ@
$!

0/1/0џџџџџџџџџ@
 к
+__inference_gru_cell_2_layer_call_fn_374232Њ<:;]ЂZ
SЂP
!
inputsџџџџџџџџџ
'Ђ$
"
states/0џџџџџџџџџ@
p 
Њ "DЂA

0џџџџџџџџџ@
"

1/0џџџџџџџџџ@к
+__inference_gru_cell_2_layer_call_fn_374246Њ<:;]ЂZ
SЂP
!
inputsџџџџџџџџџ
'Ђ$
"
states/0џџџџџџџџџ@
p
Њ "DЂA

0џџџџџџџџџ@
"

1/0џџџџџџџџџ@в
B__inference_lstm_2_layer_call_and_return_conditional_losses_372954789OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "3Ђ0
)&
0џџџџџџџџџџџџџџџџџџ
 в
B__inference_lstm_2_layer_call_and_return_conditional_losses_373097789OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "3Ђ0
)&
0џџџџџџџџџџџџџџџџџџ
 И
B__inference_lstm_2_layer_call_and_return_conditional_losses_373240r789?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ


 
p 

 
Њ "*Ђ'
 
0џџџџџџџџџ

 И
B__inference_lstm_2_layer_call_and_return_conditional_losses_373383r789?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ


 
p

 
Њ "*Ђ'
 
0џџџџџџџџџ

 Љ
'__inference_lstm_2_layer_call_fn_372778~789OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "&#џџџџџџџџџџџџџџџџџџЉ
'__inference_lstm_2_layer_call_fn_372789~789OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "&#џџџџџџџџџџџџџџџџџџ
'__inference_lstm_2_layer_call_fn_372800e789?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ


 
p 

 
Њ "џџџџџџџџџ

'__inference_lstm_2_layer_call_fn_372811e789?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ


 
p

 
Њ "џџџџџџџџџ
Ю
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_374186789Ђ
xЂu
 
inputsџџџџџџџџџ
MЂJ
# 
states/0џџџџџџџџџ
# 
states/1џџџџџџџџџ
p 
Њ "vЂs
lЂi

0/0џџџџџџџџџ
GD
 
0/1/0џџџџџџџџџ
 
0/1/1џџџџџџџџџ
 Ю
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_374218789Ђ
xЂu
 
inputsџџџџџџџџџ
MЂJ
# 
states/0џџџџџџџџџ
# 
states/1џџџџџџџџџ
p
Њ "vЂs
lЂi

0/0џџџџџџџџџ
GD
 
0/1/0џџџџџџџџџ
 
0/1/1џџџџџџџџџ
 Ѓ
,__inference_lstm_cell_2_layer_call_fn_374137ђ789Ђ
xЂu
 
inputsџџџџџџџџџ
MЂJ
# 
states/0џџџџџџџџџ
# 
states/1џџџџџџџџџ
p 
Њ "fЂc

0џџџџџџџџџ
C@

1/0џџџџџџџџџ

1/1џџџџџџџџџЃ
,__inference_lstm_cell_2_layer_call_fn_374154ђ789Ђ
xЂu
 
inputsџџџџџџџџџ
MЂJ
# 
states/0џџџџџџџџџ
# 
states/1џџџџџџџџџ
p
Њ "fЂc

0џџџџџџџџџ
C@

1/0џџџџџџџџџ

1/1џџџџџџџџџР
H__inference_sequential_2_layer_call_and_return_conditional_losses_372053t789<:;56AЂ>
7Ђ4
*'
lstm_2_inputџџџџџџџџџ

p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Р
H__inference_sequential_2_layer_call_and_return_conditional_losses_372078t789<:;56AЂ>
7Ђ4
*'
lstm_2_inputџџџџџџџџџ

p

 
Њ "%Ђ"

0џџџџџџџџџ
 К
H__inference_sequential_2_layer_call_and_return_conditional_losses_372451n789<:;56;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ

p 

 
Њ "%Ђ"

0џџџџџџџџџ
 К
H__inference_sequential_2_layer_call_and_return_conditional_losses_372767n789<:;56;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ

p

 
Њ "%Ђ"

0џџџџџџџџџ
 
-__inference_sequential_2_layer_call_fn_371542g789<:;56AЂ>
7Ђ4
*'
lstm_2_inputџџџџџџџџџ

p 

 
Њ "џџџџџџџџџ
-__inference_sequential_2_layer_call_fn_372028g789<:;56AЂ>
7Ђ4
*'
lstm_2_inputџџџџџџџџџ

p

 
Њ "џџџџџџџџџ
-__inference_sequential_2_layer_call_fn_372128a789<:;56;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ

p 

 
Њ "џџџџџџџџџ
-__inference_sequential_2_layer_call_fn_372149a789<:;56;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ

p

 
Њ "џџџџџџџџџБ
$__inference_signature_wrapper_372107789<:;56IЂF
Ђ 
?Њ<
:
lstm_2_input*'
lstm_2_inputџџџџџџџџџ
"1Њ.
,
dense_2!
dense_2џџџџџџџџџ