class A
  @@count = 0
  @abc = "instance variable of class"

  def initialize
    @instance_var = "instance variable"
  end

  def self.abc
    @abc
  end

  def abc
    p @@count
  end
end

obj = A.new.abc
p A.abc




# precedence

! ~ unary+
** 
unary -

* / %
+ -

<< >>
&
| ^

<, >, <=, >=

==, ===, =~, !=, !~

&&
||

=
*=, /=

define?
and
or 