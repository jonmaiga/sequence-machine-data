import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

/-!
# A297900: Number of n X n 0..1 arrays with every element equal to 0, 1, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297900, there is no canonical definition to state claims against.
-/

/-! ## A297900.P18160677449771344493

`A297907(∑[4*n]+1)`
-/

namespace A297900.P18160677449771344493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297907 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297900.P18160677449771344493

/-! ## A297900.P8703241885422242096

`and(-1, A297907(A001844(n)))`
-/

namespace A297900.P8703241885422242096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A297907 (A001844 n).toNat)

end

end A297900.P8703241885422242096

/-! ## A297900.P10404496598678771189

`A297907(A001844(n))+A025469(n)`
-/

namespace A297900.P10404496598678771189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297907 (A001844 n).toNat + A025469 n

end

end A297900.P10404496598678771189

/-! ## A297900.P6469047902496499738

`A297907(A001844(n))+A185284(n)`
-/

namespace A297900.P6469047902496499738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297907 (A001844 n).toNat + A185284 n

end

end A297900.P6469047902496499738

/-! ## A297900.P7359570775625090607

`A308921(n)+A297907(A001844(n))`
-/

namespace A297900.P7359570775625090607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308921 n + A297907 (A001844 n).toNat

end

end A297900.P7359570775625090607

/-!
# A297901: Number of n X 2 0..1 arrays with every element equal to 0, 1, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297901, the canonical program `A297901.P15289060228377829767` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297901 has offset 1).

The definition of A297901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297901.P15289060228377829767

`a(n-1)+3*a(n-2)+8*a(n-3)-4*a(n-4)-16*a(n-5)` with `a(0)=2, a(1)=4, a(2)=3, a(3)=13, a(4)=34, a(5)=73`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A297901

/-- `a(n-1)+3*a(n-2)+8*a(n-3)-4*a(n-4)-16*a(n-5)` -/
def P15289060228377829767.Spec : Prop :=
  ∀ n, P15289060228377829767.a n = A297901 (n + 1)

theorem P15289060228377829767.correct : P15289060228377829767.Spec := by
  intro n
  simp only [A297901, Nat.add_sub_cancel]

end A297901

/-! ## A297901.P10240061704869373499

`A297907(∑[n+1]+2)`
-/

namespace A297901.P10240061704869373499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297907 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297901.P10240061704869373499

namespace A297901

/-- `A297907(∑[n+1]+2)` -/
def P10240061704869373499.Spec : Prop :=
  ∀ n, P10240061704869373499.a n = A297901 (n + 1)

end A297901

/-! ## A297901.P4665185245889654671

`A298320(∑[n+1]+2)`
-/

namespace A297901.P4665185245889654671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298320 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297901.P4665185245889654671

namespace A297901

/-- `A298320(∑[n+1]+2)` -/
def P4665185245889654671.Spec : Prop :=
  ∀ n, P4665185245889654671.a n = A297901 (n + 1)

end A297901

/-! ## A297901.P15771977718622383162

`A298501(∑[n+1]+2)`
-/

namespace A297901.P15771977718622383162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298501 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297901.P15771977718622383162

namespace A297901

/-- `A298501(∑[n+1]+2)` -/
def P15771977718622383162.Spec : Prop :=
  ∀ n, P15771977718622383162.a n = A297901 (n + 1)

end A297901

/-! ## A297901.P494063872978026480

`A299393(∑[n+1]+2)`
-/

namespace A297901.P494063872978026480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299393 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297901.P494063872978026480

namespace A297901

/-- `A299393(∑[n+1]+2)` -/
def P494063872978026480.Spec : Prop :=
  ∀ n, P494063872978026480.a n = A297901 (n + 1)

end A297901

/-!
# A297902: Number of nX3 0..1 arrays with every element equal to 0, 1, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297902, there is no canonical definition to state claims against.
-/

/-! ## A297902.P10309143077927565071

`A297907(∑[n+2]+4)`
-/

namespace A297902.P10309143077927565071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297907 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297902.P10309143077927565071

/-! ## A297902.P8674341530343042616

`A297907(A167614(n+1))+char[19]`
-/

namespace A297902.P8674341530343042616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297907 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297902.P8674341530343042616

/-! ## A297902.P9910148944959730494

`A297907(A000217(n+2)+3)+char[19]`
-/

namespace A297902.P9910148944959730494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297907 (A000217 (n + 2) + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297902.P9910148944959730494

/-! ## A297902.P13829225714954325899

`A326684(n)+A297907(A167614(n+1))`
-/

namespace A297902.P13829225714954325899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326684 n + A297907 (A167614 (n + 1)).toNat

end

end A297902.P13829225714954325899

/-! ## A297902.P2211438055291355455

`gcd(A185284(n), A297907(A167614(n+1)))`
-/

namespace A297902.P2211438055291355455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185284 n) (A297907 (A167614 (n + 1)).toNat)

end

end A297902.P2211438055291355455

/-!
# A297903: Number of nX4 0..1 arrays with every element equal to 0, 1, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297903, there is no canonical definition to state claims against.
-/

/-! ## A297903.P12985983461059422004

`A298497(n+1)-val(A297937(n+1), 2)`
-/

namespace A297903.P12985983461059422004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298497 (n + 1) - (SequenceMachineLib.valuation (A297937 (n + 1)).toNat 2 : ℤ)

end

end A297903.P12985983461059422004

/-! ## A297903.P8356517231388882343

`A298497(n+1)-A000040(n+2)²%gcd(3, n)`
-/

namespace A297903.P8356517231388882343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298497 (n + 1) - Int.tmod (A000040 (n + 2) ^ 2) (Nat.gcd 3 n : ℤ)

end

end A297903.P8356517231388882343

/-! ## A297903.P2037965995498497965

`A298497(n+1)-A079978(A028310(n))`
-/

namespace A297903.P2037965995498497965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298497 (n + 1) - A079978 (A028310 n).toNat

end

end A297903.P2037965995498497965

/-! ## A297903.P7696688642302590814

`A297907(∑[n+3]+7)`
-/

namespace A297903.P7696688642302590814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297907 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A297903.P7696688642302590814

/-! ## A297903.P10647949563410333251

`A297907(A052905(n)+9)+char[19]`
-/

namespace A297903.P10647949563410333251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297907 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297903.P10647949563410333251

/-!
# A297904: Number of nX5 0..1 arrays with every element equal to 0, 1, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297904, there is no canonical definition to state claims against.
-/

/-! ## A297904.P6210712278101322294

`A297907(A374005(n+1))`
-/

namespace A297904.P6210712278101322294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297907 (A374005 (n + 1)).toNat

end

end A297904.P6210712278101322294

/-! ## A297904.P7691863215470705320

`A297907(A167499(n+3))`
-/

namespace A297904.P7691863215470705320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297907 (A167499 (n + 3)).toNat

end

end A297904.P7691863215470705320

/-! ## A297904.P13521381347157495183

`A297907(A155212(n)+13)`
-/

namespace A297904.P13521381347157495183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297907 (A155212 n + 13).toNat

end

end A297904.P13521381347157495183

/-! ## A297904.P1363602569676778591

`A297907(A056000(n)+15)`
-/

namespace A297904.P1363602569676778591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297907 (A056000 n + 15).toNat

end

end A297904.P1363602569676778591

/-! ## A297904.P9332358487372627711

`A297907(eq[7, A066657(n)])`
-/

namespace A297904.P9332358487372627711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297904.P9332358487372627711

/-!
# A297905: Number of nX6 0..1 arrays with every element equal to 0, 1, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297905, there is no canonical definition to state claims against.
-/

/-! ## A297905.P6248422724825116738

`A297907(∑[n+5]+16)`
-/

namespace A297905.P6248422724825116738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297907 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A297905.P6248422724825116738

/-! ## A297905.P4606627583420805916

`A297907(A052905(n+3))%A176186(n+9)`
-/

namespace A297905.P4606627583420805916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297907 (A052905 (n + 3)).toNat) (A176186 (n + 9))

end

end A297905.P4606627583420805916

/-!
# A297906: Number of n X 7 0..1 arrays with every element equal to 0, 1, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297906, there is no canonical definition to state claims against.
-/

/-! ## A297906.P2494389783118958783

`A297907(A374008(n+1))`
-/

namespace A297906.P2494389783118958783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297907 (A374008 (n + 1)).toNat

end

end A297906.P2494389783118958783

/-! ## A297906.P5324069888164580177

`A297907(A056119(n)+28)`
-/

namespace A297906.P5324069888164580177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297907 (A056119 n + 28).toNat

end

end A297906.P5324069888164580177

/-! ## A297906.P1834047745129001272

`A297907(eq[11, A066657(n)])`
-/

namespace A297906.P1834047745129001272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297906.P1834047745129001272

/-! ## A297906.P13145274817918798914

`A297907(A145018(n+7)+3)`
-/

namespace A297906.P13145274817918798914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297907 (A145018 (n + 7) + 3).toNat

end

end A297906.P13145274817918798914

/-! ## A297906.P9745032225309366831

`A297907(A000124(n+6)+6)`
-/

namespace A297906.P9745032225309366831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297907 (A000124 (n + 6) + 6).toNat

end

end A297906.P9745032225309366831

/-!
# A297907: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297907, there is no canonical definition to state claims against.
-/

/-! ## A297907.P15589988145667222452

`A298501(n+1)-A125005(A051597(n))`
-/

namespace A297907.P15589988145667222452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298501 (n + 1) - A125005 (A051597 n).toNat

end

end A297907.P15589988145667222452

/-! ## A297907.P15304949314596106120

`A298501(n+1)-A025465(A111636(n))`
-/

namespace A297907.P15304949314596106120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298501 (n + 1) - A025465 (A111636 n).toNat

end

end A297907.P15304949314596106120

/-! ## A297907.P7169288465023483715

`A298501(n+1)-A126010(A000040(n+1))`
-/

namespace A297907.P7169288465023483715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298501 (n + 1) - A126010 (A000040 (n + 1)).toNat

end

end A297907.P7169288465023483715

/-! ## A297907.P10370753590514725840

`A298501(n+1)-A025456(A279871(n+1))`
-/

namespace A297907.P10370753590514725840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298501 (n + 1) - A025456 (A279871 (n + 1)).toNat

end

end A297907.P10370753590514725840

/-! ## A297907.P6943175914747872776

`A298501(n+1)-A051731(A255622(n+1))`
-/

namespace A297907.P6943175914747872776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298501 (n + 1) - A051731 (A255622 (n + 1)).toNat

end

end A297907.P6943175914747872776

/-!
# A297908: Number of n X n 0..1 arrays with every element equal to 0, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297908, there is no canonical definition to state claims against.
-/

/-! ## A297908.P6316418965206484017

`A297915(∑[4*n]+1)`
-/

namespace A297908.P6316418965206484017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297915 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297908.P6316418965206484017

/-! ## A297908.P14727394802453111399

`A297915(A001844(n))+char[9]`
-/

namespace A297908.P14727394802453111399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297915 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297908.P14727394802453111399

/-! ## A297908.P17054957179849460203

`record[A003982(n)*A297915(n+1)]`
-/

namespace A297908.P17054957179849460203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A297915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297908.P17054957179849460203

/-! ## A297908.P15706819547263441488

`record[A214505(n)*A297915(n+1)]`
-/

namespace A297908.P15706819547263441488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A297915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297908.P15706819547263441488

/-! ## A297908.P4923080785280870543

`A344446(n)+A297915(A001844(n))`
-/

namespace A297908.P4923080785280870543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344446 n + A297915 (A001844 n).toNat

end

end A297908.P4923080785280870543

/-!
# A297909: Number of n X 2 0..1 arrays with every element equal to 0, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297909, the canonical program `A297909.P16315985188429028653` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297909 has offset 1).

The definition of A297909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297909.P16315985188429028653

`5*a(n-2)+8*a(n-3)+4*a(n-4)` with `a(0)=1, a(1)=5, a(2)=12, a(3)=37`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A297909

/-- `5*a(n-2)+8*a(n-3)+4*a(n-4)` -/
def P16315985188429028653.Spec : Prop :=
  ∀ n, (P16315985188429028653.a n : ℤ) = A297909 (n + 1)

theorem P16315985188429028653.correct : P16315985188429028653.Spec := by
  intro n
  simp only [A297909, Nat.add_sub_cancel]

end A297909

/-! ## A297909.P17829391630461567013

`A304013(n+1)-and(-2, 2^n)`
-/

namespace A297909.P17829391630461567013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304013 (n + 1) - Int.land (-2) (2 ^ n : ℤ)

end

end A297909.P17829391630461567013

namespace A297909

/-- `A304013(n+1)-and(-2, 2^n)` -/
def P17829391630461567013.Spec : Prop :=
  ∀ n, P17829391630461567013.a n = A297909 (n + 1)

end A297909

/-! ## A297909.P13975431760764010101

`A304013(n+1)-A155559(n)`
-/

namespace A297909.P13975431760764010101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304013 (n + 1) - A155559 n

end

end A297909.P13975431760764010101

namespace A297909

/-- `A304013(n+1)-A155559(n)` -/
def P13975431760764010101.Spec : Prop :=
  ∀ n, P13975431760764010101.a n = A297909 (n + 1)

end A297909

/-! ## A297909.P11438313021009156523

`A304013(n+1)-A131572(2*n)`
-/

namespace A297909.P11438313021009156523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304013 (n + 1) - A131572 (2 * n)

end

end A297909.P11438313021009156523

namespace A297909

/-- `A304013(n+1)-A131572(2*n)` -/
def P11438313021009156523.Spec : Prop :=
  ∀ n, P11438313021009156523.a n = A297909 (n + 1)

end A297909

/-! ## A297909.P12654930452595257681

`A304013(n+1)-A077957(A004277(n))`
-/

namespace A297909.P12654930452595257681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304013 (n + 1) - A077957 (A004277 n).toNat

end

end A297909.P12654930452595257681

namespace A297909

/-- `A304013(n+1)-A077957(A004277(n))` -/
def P12654930452595257681.Spec : Prop :=
  ∀ n, P12654930452595257681.a n = A297909 (n + 1)

end A297909

/-! ## A297909.P4860856449360564279

`A304013(n+1)-A000079(n)%A304013(n+1)`
-/

namespace A297909.P4860856449360564279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304013 (n + 1) - Int.tmod (A000079 n) (A304013 (n + 1))

end

end A297909.P4860856449360564279

namespace A297909

/-- `A304013(n+1)-A000079(n)%A304013(n+1)` -/
def P4860856449360564279.Spec : Prop :=
  ∀ n, P4860856449360564279.a n = A297909 (n + 1)

end A297909

/-!
# A297910: Number of nX3 0..1 arrays with every element equal to 0, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297910, there is no canonical definition to state claims against.
-/

/-! ## A297910.P72004942965029943

`A297915(∑[n+2]+4)`
-/

namespace A297910.P72004942965029943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297915 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297910.P72004942965029943

/-! ## A297910.P6477834916164894358

`gcd(A097479(n), A297915(A167614(n+1)))`
-/

namespace A297910.P6477834916164894358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097479 n) (A297915 (A167614 (n + 1)).toNat)

end

end A297910.P6477834916164894358

/-! ## A297910.P7963065056673126315

`lcm(A033999(n), A297915(A167614(n+1)))`
-/

namespace A297910.P7963065056673126315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A297915 (A167614 (n + 1)).toNat)

end

end A297910.P7963065056673126315

/-! ## A297910.P14333971021023370541

`or(A000007(n), A297915(A167614(n+1)))`
-/

namespace A297910.P14333971021023370541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A297915 (A167614 (n + 1)).toNat)

end

end A297910.P14333971021023370541

/-! ## A297910.P14438428737675362579

`A297915(A167614(n+1))+A034569(n+1)`
-/

namespace A297910.P14438428737675362579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297915 (A167614 (n + 1)).toNat + A034569 (n + 1)

end

end A297910.P14438428737675362579

/-!
# A297911: Number of nX4 0..1 arrays with every element equal to 0, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297911, there is no canonical definition to state claims against.
-/

/-! ## A297911.P15354023709130411877

`A297915(A374004(n+1))`
-/

namespace A297911.P15354023709130411877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297915 (A374004 (n + 1)).toNat

end

end A297911.P15354023709130411877

/-! ## A297911.P10164836440683797254

`A297915(A141214(n)+7)`
-/

namespace A297911.P10164836440683797254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297915 (A141214 n + 7).toNat

end

end A297911.P10164836440683797254

/-! ## A297911.P342242478261838934

`A297915(A052905(n)+9)`
-/

namespace A297911.P342242478261838934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297915 (A052905 n + 9).toNat

end

end A297911.P342242478261838934

/-! ## A297911.P13910521216215056051

`A297915(A055999(n)+10)`
-/

namespace A297911.P13910521216215056051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297915 (A055999 n + 10).toNat

end

end A297911.P13910521216215056051

/-! ## A297911.P12600804747052554277

`A297915(A167614(n+2)+1)`
-/

namespace A297911.P12600804747052554277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297915 (A167614 (n + 2) + 1).toNat

end

end A297911.P12600804747052554277

/-!
# A297912: Number of n X 5 0..1 arrays with every element equal to 0, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297912, there is no canonical definition to state claims against.
-/

/-! ## A297912.P7119559276065118665

`A297915(A374005(n+1))`
-/

namespace A297912.P7119559276065118665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297915 (A374005 (n + 1)).toNat

end

end A297912.P7119559276065118665

/-! ## A297912.P11138635625855078239

`A297915(A167499(n+3))`
-/

namespace A297912.P11138635625855078239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297915 (A167499 (n + 3)).toNat

end

end A297912.P11138635625855078239

/-! ## A297912.P10160559777091239990

`A297915(A056000(n)+15)`
-/

namespace A297912.P10160559777091239990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297915 (A056000 n + 15).toNat

end

end A297912.P10160559777091239990

/-! ## A297912.P15261251079013398995

`A297915(eq[7, A066657(n)])`
-/

namespace A297912.P15261251079013398995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297912.P15261251079013398995

/-! ## A297912.P6702506080667895400

`A297915(A055998(n+2)+8)`
-/

namespace A297912.P6702506080667895400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297915 (A055998 (n + 2) + 8).toNat

end

end A297912.P6702506080667895400

/-!
# A297913: Number of nX6 0..1 arrays with every element equal to 0, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297913, there is no canonical definition to state claims against.
-/

/-! ## A297913.P1947720323983955321

`A297915(A374007(n+1))`
-/

namespace A297913.P1947720323983955321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297915 (A374007 (n + 1)).toNat

end

end A297913.P1947720323983955321

/-! ## A297913.P15793788721371244431

`A297915(A056115(n)+21)`
-/

namespace A297913.P15793788721371244431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297915 (A056115 n + 21).toNat

end

end A297913.P15793788721371244431

/-! ## A297913.P4499146612179433641

`A297915(A167499(n+4)+1)`
-/

namespace A297913.P4499146612179433641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297915 (A167499 (n + 4) + 1).toNat

end

end A297913.P4499146612179433641

/-! ## A297913.P8599100889582963420

`A297915(A155212(n+1)+14)`
-/

namespace A297913.P8599100889582963420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297915 (A155212 (n + 1) + 14).toNat

end

end A297913.P8599100889582963420

/-! ## A297913.P2944536581352295097

`A297915(eq[6, A130270(n+1)])`
-/

namespace A297913.P2944536581352295097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297913.P2944536581352295097

/-!
# A297914: Number of nX7 0..1 arrays with every element equal to 0, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297914, there is no canonical definition to state claims against.
-/

/-! ## A297914.P17358984174862220242

`A297915(A374008(n+1))`
-/

namespace A297914.P17358984174862220242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297915 (A374008 (n + 1)).toNat

end

end A297914.P17358984174862220242

/-! ## A297914.P17574352416262201574

`A297915(A056119(n)+28)`
-/

namespace A297914.P17574352416262201574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297915 (A056119 n + 28).toNat

end

end A297914.P17574352416262201574

/-! ## A297914.P16200588994355080042

`A297915(eq[11, A066657(n)])`
-/

namespace A297914.P16200588994355080042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297914.P16200588994355080042

/-! ## A297914.P5013671400940822032

`A297915(A000096(n+5)+8)`
-/

namespace A297914.P5013671400940822032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297915 (A000096 (n + 5) + 8).toNat

end

end A297914.P5013671400940822032

/-! ## A297914.P8612190552673112548

`A297915(eq[8, A131818(n+1)])`
-/

namespace A297914.P8612190552673112548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297914.P8612190552673112548

/-!
# A297915: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297915, there is no canonical definition to state claims against.
-/

/-! ## A297915.P9829061431173017070

`A298508(n+1)-A055641(A059328(n))`
-/

namespace A297915.P9829061431173017070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298508 (n + 1) - A055641 (A059328 n).toNat

end

end A297915.P9829061431173017070

/-! ## A297915.P14988924045720597991

`A298508(n+1)-A011668(A173917(n))`
-/

namespace A297915.P14988924045720597991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298508 (n + 1) - A011668 (A173917 n).toNat

end

end A297915.P14988924045720597991

/-! ## A297915.P2052801677404180507

`xor(A185037(A008288(n)), A298508(n+1))`
-/

namespace A297915.P2052801677404180507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185037 (A008288 n).toNat) (A298508 (n + 1))

end

end A297915.P2052801677404180507

/-! ## A297915.P653406828503468699

`xor(A137579(A117401(n)), A298508(n+1))`
-/

namespace A297915.P653406828503468699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A137579 (A117401 n).toNat) (A298508 (n + 1))

end

end A297915.P653406828503468699

/-! ## A297915.P402817450747377840

`A298508(n+1)-A037800(A300182(n+1))`
-/

namespace A297915.P402817450747377840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298508 (n + 1) - A037800 (A300182 (n + 1)).toNat

end

end A297915.P402817450747377840

/-!
# A297916: Number of n X n 0..1 arrays with every element equal to 1, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297916, there is no canonical definition to state claims against.
-/

/-! ## A297916.P16722341617889203144

`A297923(∑[4*n]+1)`
-/

namespace A297916.P16722341617889203144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297923 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297916.P16722341617889203144

/-! ## A297916.P3782797091248543720

`lcm(A087960(n), A297923(A001844(n)))`
-/

namespace A297916.P3782797091248543720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A297923 (A001844 n).toNat)

end

end A297916.P3782797091248543720

/-! ## A297916.P5107066848183473452

`A297923(A001844(n))+A048031(n+1)`
-/

namespace A297916.P5107066848183473452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297923 (A001844 n).toNat + A048031 (n + 1)

end

end A297916.P5107066848183473452

/-! ## A297916.P15605061984107235464

`A297923(A001844(n))+A276183(n+1)`
-/

namespace A297916.P15605061984107235464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297923 (A001844 n).toNat + A276183 (n + 1)

end

end A297916.P15605061984107235464

/-! ## A297916.P420842650160985135

`A065682(n+1)*A297923(A001844(n))`
-/

namespace A297916.P420842650160985135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065682 (n + 1) * A297923 (A001844 n).toNat

end

end A297916.P420842650160985135

/-!
# A297917: Number of n X 2 0..1 arrays with every element equal to 1, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297917, the canonical program `A297917.P6194486874920180373` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297917 has offset 1).

The definition of A297917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297917.P6194486874920180373

`3*a(n-1)+a(n-2)+4*a(n-3)+4*a(n-4)` with `a(0)=1, a(1)=4, a(2)=17, a(3)=61, a(4)=216`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A297917

/-- `3*a(n-1)+a(n-2)+4*a(n-3)+4*a(n-4)` -/
def P6194486874920180373.Spec : Prop :=
  ∀ n, (P6194486874920180373.a n : ℤ) = A297917 (n + 1)

theorem P6194486874920180373.correct : P6194486874920180373.Spec := by
  intro n
  simp only [A297917, Nat.add_sub_cancel]

end A297917

/-! ## A297917.P7743427818821208818

`A297923(∑[n+1]+2)`
-/

namespace A297917.P7743427818821208818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297923 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297917.P7743427818821208818

namespace A297917

/-- `A297923(∑[n+1]+2)` -/
def P7743427818821208818.Spec : Prop :=
  ∀ n, P7743427818821208818.a n = A297917 (n + 1)

end A297917

/-! ## A297917.P18347485168457962603

`A298337(∑[n+1]+2)`
-/

namespace A297917.P18347485168457962603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298337 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297917.P18347485168457962603

namespace A297917

/-- `A298337(∑[n+1]+2)` -/
def P18347485168457962603.Spec : Prop :=
  ∀ n, P18347485168457962603.a n = A297917 (n + 1)

end A297917

/-! ## A297917.P14842848686136721451

`A298547(∑[n+1]+2)`
-/

namespace A297917.P14842848686136721451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298547 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297917.P14842848686136721451

namespace A297917

/-- `A298547(∑[n+1]+2)` -/
def P14842848686136721451.Spec : Prop :=
  ∀ n, P14842848686136721451.a n = A297917 (n + 1)

end A297917

/-! ## A297917.P3672340236758151451

`A299228(∑[n+1]+2)`
-/

namespace A297917.P3672340236758151451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299228 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297917.P3672340236758151451

namespace A297917

/-- `A299228(∑[n+1]+2)` -/
def P3672340236758151451.Spec : Prop :=
  ∀ n, P3672340236758151451.a n = A297917 (n + 1)

end A297917

/-!
# A297918: Number of nX3 0..1 arrays with every element equal to 1, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297918, there is no canonical definition to state claims against.
-/

/-! ## A297918.P11411913371836357814

`A297923(∑[n+2]+4)`
-/

namespace A297918.P11411913371836357814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297923 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297918.P11411913371836357814

/-! ## A297918.P10410542004127675721

`record[gcd(A247288(n), A297923(n+1))]`
-/

namespace A297918.P10410542004127675721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A247288 n) (A297923 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297918.P10410542004127675721

/-! ## A297918.P15746350349062941114

`A297923(A167614(n+1))+A025443(n)`
-/

namespace A297918.P15746350349062941114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297923 (A167614 (n + 1)).toNat + A025443 n

end

end A297918.P15746350349062941114

/-! ## A297918.P1986845388091281628

`A297923(A167614(n+1))+A184946(n)`
-/

namespace A297918.P1986845388091281628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297923 (A167614 (n + 1)).toNat + A184946 n

end

end A297918.P1986845388091281628

/-! ## A297918.P3445991963395593469

`A297923(A167614(n+1))+A185255(n)`
-/

namespace A297918.P3445991963395593469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297923 (A167614 (n + 1)).toNat + A185255 n

end

end A297918.P3445991963395593469

/-!
# A297919: Number of nX4 0..1 arrays with every element equal to 1, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297919, there is no canonical definition to state claims against.
-/

/-! ## A297919.P12028239624245324901

`A297923(A374004(n+1))`
-/

namespace A297919.P12028239624245324901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297923 (A374004 (n + 1)).toNat

end

end A297919.P12028239624245324901

/-! ## A297919.P11888831407651887684

`A297923(A052905(n)+9)`
-/

namespace A297919.P11888831407651887684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297923 (A052905 n + 9).toNat

end

end A297919.P11888831407651887684

/-! ## A297919.P1736360981568124641

`A297923(A055999(n)+10)`
-/

namespace A297919.P1736360981568124641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297923 (A055999 n + 10).toNat

end

end A297919.P1736360981568124641

/-! ## A297919.P9015282267100801171

`A297923(A167614(n+2)+1)`
-/

namespace A297919.P9015282267100801171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297923 (A167614 (n + 2) + 1).toNat

end

end A297919.P9015282267100801171

/-! ## A297919.P16636917603916644907

`A297923(A167499(n+2)-1)`
-/

namespace A297919.P16636917603916644907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297923 (A167499 (n + 2) - 1).toNat

end

end A297919.P16636917603916644907

/-!
# A297920: Number of nX5 0..1 arrays with every element equal to 1, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297920, there is no canonical definition to state claims against.
-/

/-! ## A297920.P12937974794558366838

`A297923(A374005(n+1))`
-/

namespace A297920.P12937974794558366838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297923 (A374005 (n + 1)).toNat

end

end A297920.P12937974794558366838

/-! ## A297920.P2077010373363419825

`A297923(A167499(n+3))`
-/

namespace A297920.P2077010373363419825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297923 (A167499 (n + 3)).toNat

end

end A297920.P2077010373363419825

/-! ## A297920.P8677203191515866422

`A297923(A056000(n)+15)`
-/

namespace A297920.P8677203191515866422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297923 (A056000 n + 15).toNat

end

end A297920.P8677203191515866422

/-! ## A297920.P3998313109495130516

`A297923(A052905(n+1)+10)`
-/

namespace A297920.P3998313109495130516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297923 (A052905 (n + 1) + 10).toNat

end

end A297920.P3998313109495130516

/-! ## A297920.P11780578081908234339

`A297923(Δ[A264443(n)])`
-/

namespace A297920.P11780578081908234339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297923 (f1 (n + 1) - f1 n).toNat

end

end A297920.P11780578081908234339

/-!
# A297921: Number of nX6 0..1 arrays with every element equal to 1, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297921, there is no canonical definition to state claims against.
-/

/-! ## A297921.P14837854050011945132

`A297923(A374007(n+1))`
-/

namespace A297921.P14837854050011945132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297923 (A374007 (n + 1)).toNat

end

end A297921.P14837854050011945132

/-! ## A297921.P16725565249189576990

`A297923(A167499(n+4)+1)`
-/

namespace A297921.P16725565249189576990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297923 (A167499 (n + 4) + 1).toNat

end

end A297921.P16725565249189576990

/-! ## A297921.P703542342192807276

`A297923(eq[3, A219347(n)])`
-/

namespace A297921.P703542342192807276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297923 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297921.P703542342192807276

/-! ## A297921.P14392935609927222891

`A297923(eq[5, A193592(n)])`
-/

namespace A297921.P14392935609927222891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297923 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297921.P14392935609927222891

/-! ## A297921.P18409842941548316268

`A297923(eq[8, A258709(n)])`
-/

namespace A297921.P18409842941548316268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297923 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297921.P18409842941548316268

/-!
# A297922: Number of nX7 0..1 arrays with every element equal to 1, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297922, there is no canonical definition to state claims against.
-/

/-! ## A297922.P15389624213944602927

`A297923(A374008(n+1))`
-/

namespace A297922.P15389624213944602927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297923 (A374008 (n + 1)).toNat

end

end A297922.P15389624213944602927

/-! ## A297922.P125020510512419791

`A297923(A056121(n)+22)`
-/

namespace A297922.P125020510512419791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297923 (A056121 n + 22).toNat

end

end A297922.P125020510512419791

/-! ## A297922.P9745862916314176227

`A297923(eq[4, A219347(n)])`
-/

namespace A297922.P9745862916314176227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297923 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297922.P9745862916314176227

/-! ## A297922.P17093861694613756114

`A297923(eq[6, A193592(n)])`
-/

namespace A297922.P17093861694613756114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297923 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297922.P17093861694613756114

/-! ## A297922.P15911715543136644253

`A297923(eq[10, A185782(n+1)])`
-/

namespace A297922.P15911715543136644253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297923 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297922.P15911715543136644253

/-!
# A297923: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297923, there is no canonical definition to state claims against.
-/

/-! ## A297923.P13748111615730931067

`A106612(A298547(n+1))`
-/

namespace A297923.P13748111615730931067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A298547 (n + 1)).toNat

end

end A297923.P13748111615730931067

/-! ## A297923.P197654503135810630

`A298547(A281873(n+1))`
-/

namespace A297923.P197654503135810630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298547 (A281873 (n + 1)).toNat

end

end A297923.P197654503135810630

/-! ## A297923.P11761037044941102759

`A298547(A185255(n)!+n)`
-/

namespace A297923.P11761037044941102759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298547 (Nat.factorial (A185255 n).toNat + n)

end

end A297923.P11761037044941102759

/-! ## A297923.P16376445543597066678

`A023443(A298547(n+1)+1)`
-/

namespace A297923.P16376445543597066678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A298547 (n + 1) + 1).toNat

end

end A297923.P16376445543597066678

/-! ## A297923.P6950891263658862703

`A004525(2*A298547(n+1))`
-/

namespace A297923.P6950891263658862703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A298547 (n + 1)).toNat

end

end A297923.P6950891263658862703

/-!
# A297924: Number of set partitions of [2n] in which the size of the last block is n.

The programs for A297924, there is no canonical definition to state claims against.
-/

/-! ## A297924.P18369894060000863557

`A121207(∑[4*n])`
-/

namespace A297924.P18369894060000863557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A297924.P18369894060000863557

/-! ## A297924.P56985981386398777

`A186020(∑[4*n])`
-/

namespace A297924.P56985981386398777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A297924.P56985981386398777

/-! ## A297924.P6357601728061920593

`A124496(A004277(n²))`
-/

namespace A297924.P6357601728061920593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124496 (A004277 (n ^ 2)).toNat

end

end A297924.P6357601728061920593

/-! ## A297924.P14963741512161035453

`or(A000007(n), A186020(A046092(n)))`
-/

namespace A297924.P14963741512161035453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A186020 (A046092 n).toNat)

end

end A297924.P14963741512161035453

/-! ## A297924.P14560895019552018998

`A186020(A046092(n))^A057428(n)²`
-/

namespace A297924.P14560895019552018998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186020 (A046092 n).toNat : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A297924.P14560895019552018998

/-!
# A297925: Even numbers k such that k - 5 is prime but k - 3 is not prime.

The programs for A297925, the canonical program `A297925.P18079423066294423131` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297925 has offset 1).

The definition of A297925 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049591, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A297925.P18079423066294423131

`A049591(n+1)+5`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A297925

/-- `A049591(n+1)+5` -/
def P18079423066294423131.Spec : Prop :=
  ∀ n, P18079423066294423131.a n = A297925 (n + 1)

theorem P18079423066294423131.correct : P18079423066294423131.Spec := by
  intro n
  simp only [A297925, Nat.add_sub_cancel]

end A297925

/-! ## A297925.P14983439306402576675

`A107986(n+2)+3`
-/

namespace A297925.P14983439306402576675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107986 (n + 2) + 3

end

end A297925.P14983439306402576675

namespace A297925

/-- `A107986(n+2)+3` -/
def P14983439306402576675.Spec : Prop :=
  ∀ n, P14983439306402576675.a n = A297925 (n + 1)

end A297925

/-! ## A297925.P8450343114803174374

`A107987(n+1)+3`
-/

namespace A297925.P8450343114803174374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107987 (n + 1) + 3

end

end A297925.P8450343114803174374

namespace A297925

/-- `A107987(n+1)+3` -/
def P8450343114803174374.Spec : Prop :=
  ∀ n, P8450343114803174374.a n = A297925 (n + 1)

end A297925

/-! ## A297925.P4950943316612739321

`A136798(n+1)+4`
-/

namespace A297925.P4950943316612739321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136798 (n + 1) + 4

end

end A297925.P4950943316612739321

namespace A297925

/-- `A136798(n+1)+4` -/
def P4950943316612739321.Spec : Prop :=
  ∀ n, P4950943316612739321.a n = A297925 (n + 1)

end A297925

/-! ## A297925.P15219429505689687992

`∑{p}[A297150(n+1), #]`
-/

namespace A297925.P15219429505689687992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297150 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A297925.P15219429505689687992

namespace A297925

/-- `∑{p}[A297150(n+1), #]` -/
def P15219429505689687992.Spec : Prop :=
  ∀ n, (P15219429505689687992.a n : ℤ) = A297925 (n + 1)

end A297925

/-! ## A297925.P3168096179056608707

`2*(A104280(n+1)+2)`
-/

namespace A297925.P3168096179056608707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A104280 (n + 1) + 2)

end

end A297925.P3168096179056608707

namespace A297925

/-- `2*(A104280(n+1)+2)` -/
def P3168096179056608707.Spec : Prop :=
  ∀ n, P3168096179056608707.a n = A297925 (n + 1)

end A297925

/-! ## A297925.P10269198499469186758

`A067774(n+2)+5`
-/

namespace A297925.P10269198499469186758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 2) + 5

end

end A297925.P10269198499469186758

namespace A297925

/-- `A067774(n+2)+5` -/
def P10269198499469186758.Spec : Prop :=
  ∀ n, P10269198499469186758.a n = A297925 (n + 1)

end A297925

/-! ## A297925.P10046072935119654929

`A141515(n+2)+6`
-/

namespace A297925.P10046072935119654929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141515 (n + 2) + 6

end

end A297925.P10046072935119654929

namespace A297925

/-- `A141515(n+2)+6` -/
def P10046072935119654929.Spec : Prop :=
  ∀ n, P10046072935119654929.a n = A297925 (n + 1)

end A297925

/-! ## A297925.P1761879491033846459

`A175222(A049579(n+1))`
-/

namespace A297925.P1761879491033846459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175222 (A049579 (n + 1)).toNat

end

end A297925.P1761879491033846459

namespace A297925

/-- `A175222(A049579(n+1))` -/
def P1761879491033846459.Spec : Prop :=
  ∀ n, P1761879491033846459.a n = A297925 (n + 1)

end A297925

/-! ## A297925.P9220075390482350116

`2*(A174047(2*(n+1))+2)`
-/

namespace A297925.P9220075390482350116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A174047 (2 * (n + 1)) + 2)

end

end A297925.P9220075390482350116

namespace A297925

/-- `2*(A174047(2*(n+1))+2)` -/
def P9220075390482350116.Spec : Prop :=
  ∀ n, P9220075390482350116.a n = A297925 (n + 1)

end A297925

/-! ## A297925.P2473793608034742485

`A100317(2*(n+2))+4`
-/

namespace A297925.P2473793608034742485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100317 (2 * (n + 2)) + 4

end

end A297925.P2473793608034742485

namespace A297925

/-- `A100317(2*(n+2))+4` -/
def P2473793608034742485.Spec : Prop :=
  ∀ n, P2473793608034742485.a n = A297925 (n + 1)

end A297925

/-! ## A297925.P4558512701761085574

`2*(eq[5, A020481(n+2)]+2)`
-/

namespace A297925.P4558512701761085574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A297925.P4558512701761085574

namespace A297925

/-- `2*(eq[5, A020481(n+2)]+2)` -/
def P4558512701761085574.Spec : Prop :=
  ∀ n, (P4558512701761085574.a n : ℤ) = A297925 (n + 1)

end A297925

/-! ## A297925.P5489895226123150775

`p?[A018252(n+3)-2]+5`
-/

namespace A297925.P5489895226123150775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 3) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 5

end

end A297925.P5489895226123150775

namespace A297925

/-- `p?[A018252(n+3)-2]+5` -/
def P5489895226123150775.Spec : Prop :=
  ∀ n, P5489895226123150775.a n = A297925 (n + 1)

end A297925

/-! ## A297925.P4425738582675568066

`2*(eq[4, A049716(n+1)]+2)`
-/

namespace A297925.P4425738582675568066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049716 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A297925.P4425738582675568066

namespace A297925

/-- `2*(eq[4, A049716(n+1)]+2)` -/
def P4425738582675568066.Spec : Prop :=
  ∀ n, (P4425738582675568066.a n : ℤ) = A297925 (n + 1)

end A297925

/-! ## A297925.P2549892209096030234

`A001414(A297150(n+1))`
-/

namespace A297925.P2549892209096030234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A297150 (n + 1)).toNat

end

end A297925.P2549892209096030234

namespace A297925

/-- `A001414(A297150(n+1))` -/
def P2549892209096030234.Spec : Prop :=
  ∀ n, P2549892209096030234.a n = A297925 (n + 1)

end A297925

/-! ## A297925.P7826723563217122655

`A005408(eq[2, A276417(n)])+1`
-/

namespace A297925.P7826723563217122655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A297925.P7826723563217122655

namespace A297925

/-- `A005408(eq[2, A276417(n)])+1` -/
def P7826723563217122655.Spec : Prop :=
  ∀ n, P7826723563217122655.a n = A297925 (n + 1)

end A297925

/-! ## A297925.P11506663042306876592

`A008472(A297150(2*n+1-n))`
-/

namespace A297925.P11506663042306876592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A297150 (2 * n + 1 - n)).toNat

end

end A297925.P11506663042306876592

namespace A297925

/-- `A008472(A297150(2*n+1-n))` -/
def P11506663042306876592.Spec : Prop :=
  ∀ n, P11506663042306876592.a n = A297925 (n + 1)

end A297925

/-! ## A297925.P3276316297191261347

`A119257(A136799(n+1)-2)+2`
-/

namespace A297925.P3276316297191261347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119257 (A136799 (n + 1) - 2).toNat + 2

end

end A297925.P3276316297191261347

namespace A297925

/-- `A119257(A136799(n+1)-2)+2` -/
def P3276316297191261347.Spec : Prop :=
  ∀ n, P3276316297191261347.a n = A297925 (n + 1)

end A297925

/-! ## A297925.P16527142156354965362

`A005843(A174047(2*(n+1))+2)`
-/

namespace A297925.P16527142156354965362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A174047 (2 * (n + 1)) + 2).toNat

end

end A297925.P16527142156354965362

namespace A297925

/-- `A005843(A174047(2*(n+1))+2)` -/
def P16527142156354965362.Spec : Prop :=
  ∀ n, P16527142156354965362.a n = A297925 (n + 1)

end A297925

/-! ## A297925.P6229777787088287752

`A057543(A174047(2*(n+1))+2)`
-/

namespace A297925.P6229777787088287752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057543 (A174047 (2 * (n + 1)) + 2).toNat

end

end A297925.P6229777787088287752

namespace A297925

/-- `A057543(A174047(2*(n+1))+2)` -/
def P6229777787088287752.Spec : Prop :=
  ∀ n, P6229777787088287752.a n = A297925 (n + 1)

end A297925

/-!
# A297926: Number of set partitions of [2n] in which the size of the first block is n.

The programs for A297926, there is no canonical definition to state claims against.
-/

/-! ## A297926.P12113076924889839425

`ceil(A124102(n)/2)`
-/

namespace A297926.P12113076924889839425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A124102 n : ℚ) / 2⌉

end

end A297926.P12113076924889839425

/-! ## A297926.P16011696650222449627

`A124102(floor(acot(n)+n))/2`
-/

namespace A297926.P16011696650222449627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124102 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat : ℚ) / 2

end

end A297926.P16011696650222449627

/-! ## A297926.P10036203102485025676

`A124102(xor(n, floor(acot(n))))/2`
-/

namespace A297926.P10036203102485025676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124102 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat : ℚ) / 2

end

end A297926.P10036203102485025676

/-! ## A297926.P7665342418730646226

`A000110(n)*A088218(n)`
-/

namespace A297926.P7665342418730646226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A088218 n

end

end A297926.P7665342418730646226

/-! ## A297926.P13640954481479035814

`A110556(n)*A292935(n)`
-/

namespace A297926.P13640954481479035814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110556 n * A292935 n

end

end A297926.P13640954481479035814

/-! ## A297926.P18373486793598279720

`abs(A000110(n)*A110556(n))`
-/

namespace A297926.P18373486793598279720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000110 n * A110556 n|

end

end A297926.P18373486793598279720

/-! ## A297926.P1926550301839647191

`Δ[A005001(n)]*A088218(n)`
-/

namespace A297926.P1926550301839647191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A088218 n

end

end A297926.P1926550301839647191

/-! ## A297926.P17068585521499928856

`(A260878(n)-1)*A000110(n)`
-/

namespace A297926.P17068585521499928856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A260878 n - 1) * A000110 n

end

end A297926.P17068585521499928856

/-! ## A297926.P9675458905870945242

`A124102(A004277(n)-n)/2`
-/

namespace A297926.P9675458905870945242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124102 (A004277 n - (n : ℤ)).toNat : ℚ) / 2

end

end A297926.P9675458905870945242

/-! ## A297926.P3504680421517375135

`A007318(2*n²)*A000110(n)`
-/

namespace A297926.P3504680421517375135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (2 * n ^ 2) * A000110 n

end

end A297926.P3504680421517375135

/-!
# A297928: a(n) = 2*4^n + 3*2^n - 1.

The programs for A297928, the canonical program `A297928.P1249601276775811243` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297928 has offset 0).

The definition of A297928 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*4^n+3*2^n-1` (program `A297928.P1249601276775811243`, by `A297928.P1249601276775811243.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A297928.P1249601276775811243

`2*4^n+3*2^n-1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A297928

/-- `2*4^n+3*2^n-1` -/
def P1249601276775811243.Spec : Prop :=
  ∀ n, P1249601276775811243.a n = A297928 n

theorem P1249601276775811243.correct : P1249601276775811243.Spec := by
  intro n
  simp only [A297928]

end A297928

/-! ## A297928.P1740648605994517953

`Δ[∑[A257273(n)]-n]`
-/

namespace A297928.P1740648605994517953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257273 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297928.P1740648605994517953

namespace A297928

/-- `Δ[∑[A257273(n)]-n]` -/
def P1740648605994517953.Spec : Prop :=
  ∀ n, P1740648605994517953.a n = A297928 n

end A297928

/-! ## A297928.P4096178386185990531

`abs(A257273(n+1)-1)`
-/

namespace A297928.P4096178386185990531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A257273 (n + 1) - 1|

end

end A297928.P4096178386185990531

namespace A297928

/-- `abs(A257273(n+1)-1)` -/
def P4096178386185990531.Spec : Prop :=
  ∀ n, P4096178386185990531.a n = A297928 n

end A297928

/-! ## A297928.P10681326258814451592

`abs(2-A028401(n+3))`
-/

namespace A297928.P10681326258814451592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A028401 (n + 3)|

end

end A297928.P10681326258814451592

namespace A297928

/-- `abs(2-A028401(n+3))` -/
def P10681326258814451592.Spec : Prop :=
  ∀ n, P10681326258814451592.a n = A297928 n

end A297928

/-! ## A297928.P4033933810059328138

`Δ[A346295(n)-2*n]`
-/

namespace A297928.P4033933810059328138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346295 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297928.P4033933810059328138

namespace A297928

/-- `Δ[A346295(n)-2*n]` -/
def P4033933810059328138.Spec : Prop :=
  ∀ n, P4033933810059328138.a n = A297928 n

end A297928

/-! ## A297928.P12393932819526218156

`A183977(2*(n+1))/2`
-/

namespace A297928.P12393932819526218156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183977 (2 * (n + 1)) : ℚ) / 2

end

end A297928.P12393932819526218156

namespace A297928

/-- `A183977(2*(n+1))/2` -/
def P12393932819526218156.Spec : Prop :=
  ∀ n, P12393932819526218156.a n = (A297928 n : ℚ)

end A297928

/-! ## A297928.P6370461152588641783

`Δ[∑[3*A076024(n)]+n]`
-/

namespace A297928.P6370461152588641783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A076024 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297928.P6370461152588641783

namespace A297928

/-- `Δ[∑[3*A076024(n)]+n]` -/
def P6370461152588641783.Spec : Prop :=
  ∀ n, P6370461152588641783.a n = A297928 n

end A297928

/-! ## A297928.P4876070777545794766

`xor(∑[floor(2^(n-1))], A028403(n+1))`
-/

namespace A297928.P4876070777545794766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A028403 (n + 1))

end

end A297928.P4876070777545794766

namespace A297928

/-- `xor(∑[floor(2^(n-1))], A028403(n+1))` -/
def P4876070777545794766.Spec : Prop :=
  ∀ n, P4876070777545794766.a n = A297928 n

end A297928

/-! ## A297928.P931725864813230499

`∑[A000051(n)*A042950(n)]`
-/

namespace A297928.P931725864813230499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A042950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297928.P931725864813230499

namespace A297928

/-- `∑[A000051(n)*A042950(n)]` -/
def P931725864813230499.Spec : Prop :=
  ∀ n, P931725864813230499.a n = A297928 n

end A297928

/-! ## A297928.P3140390189567410232

`or(A000225(n), A028403(n+1))`
-/

namespace A297928.P3140390189567410232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 n) (A028403 (n + 1))

end

end A297928.P3140390189567410232

namespace A297928

/-- `or(A000225(n), A028403(n+1))` -/
def P3140390189567410232.Spec : Prop :=
  ∀ n, P3140390189567410232.a n = A297928 n

end A297928

/-! ## A297928.P18324300792868093815

`or(n, A281482(n)+A000079(n))`
-/

namespace A297928.P18324300792868093815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A281482 n + A000079 n)

end

end A297928.P18324300792868093815

namespace A297928

/-- `or(n, A281482(n)+A000079(n))` -/
def P18324300792868093815.Spec : Prop :=
  ∀ n, P18324300792868093815.a n = A297928 n

end A297928

/-! ## A297928.P239813287131943738

`Δ[A079583(n)+∑[A081294(n)]]`
-/

namespace A297928.P239813287131943738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079583 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297928.P239813287131943738

namespace A297928

/-- `Δ[A079583(n)+∑[A081294(n)]]` -/
def P239813287131943738.Spec : Prop :=
  ∀ n, P239813287131943738.a n = A297928 n

end A297928

/-! ## A297928.P1262840598866232328

`∑[A032125(n+1)+A000007(n)]`
-/

namespace A297928.P1262840598866232328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032125 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297928.P1262840598866232328

namespace A297928

/-- `∑[A032125(n+1)+A000007(n)]` -/
def P1262840598866232328.Spec : Prop :=
  ∀ n, P1262840598866232328.a n = A297928 n

end A297928

/-! ## A297928.P2150350234621470465

`∑[A042950(2*n)+A042950(n)]`
-/

namespace A297928.P2150350234621470465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 (2 * n) + A042950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297928.P2150350234621470465

namespace A297928

/-- `∑[A042950(2*n)+A042950(n)]` -/
def P2150350234621470465.Spec : Prop :=
  ∀ n, P2150350234621470465.a n = A297928 n

end A297928

/-! ## A297928.P14852520426939150358

`(A126646(n)+A093069(n+1))/2`
-/

namespace A297928.P14852520426939150358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126646 n + A093069 (n + 1) : ℚ) / 2

end

end A297928.P14852520426939150358

namespace A297928

/-- `(A126646(n)+A093069(n+1))/2` -/
def P14852520426939150358.Spec : Prop :=
  ∀ n, P14852520426939150358.a n = (A297928 n : ℚ)

end A297928

/-! ## A297928.P2856670230563432306

`abs(2-A000051(n+1)*A000051(n))`
-/

namespace A297928.P2856670230563432306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A000051 (n + 1) * A000051 n|

end

end A297928.P2856670230563432306

namespace A297928

/-- `abs(2-A000051(n+1)*A000051(n))` -/
def P2856670230563432306.Spec : Prop :=
  ∀ n, P2856670230563432306.a n = A297928 n

end A297928

/-! ## A297928.P6032176851582296492

`Δ[A128209(2*n+1)+A079583(n)]`
-/

namespace A297928.P6032176851582296492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128209 (2 * n + 1) + A079583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297928.P6032176851582296492

namespace A297928

/-- `Δ[A128209(2*n+1)+A079583(n)]` -/
def P6032176851582296492.Spec : Prop :=
  ∀ n, P6032176851582296492.a n = A297928 n

end A297928

/-! ## A297928.P11707596930718970598

`∑[A000051(n)*A036561(A000124(n))]`
-/

namespace A297928.P11707596930718970598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A036561 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297928.P11707596930718970598

namespace A297928

/-- `∑[A000051(n)*A036561(A000124(n))]` -/
def P11707596930718970598.Spec : Prop :=
  ∀ n, P11707596930718970598.a n = A297928 n

end A297928

/-! ## A297928.P13535850422377569144

`∑[A032125(n+1)+A000035(A008458(n))]`
-/

namespace A297928.P13535850422377569144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032125 (n + 1) + A000035 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297928.P13535850422377569144

namespace A297928

/-- `∑[A032125(n+1)+A000035(A008458(n))]` -/
def P13535850422377569144.Spec : Prop :=
  ∀ n, P13535850422377569144.a n = A297928 n

end A297928

/-! ## A297928.P13778840952190077910

`A375256(n+2)/3`
-/

namespace A297928.P13778840952190077910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375256 (n + 2) : ℚ) / 3

end

end A297928.P13778840952190077910

namespace A297928

/-- `A375256(n+2)/3` -/
def P13778840952190077910.Spec : Prop :=
  ∀ n, P13778840952190077910.a n = (A297928 n : ℚ)

end A297928

/-!
# A297929: Lexicographically earliest sequence of distinct prime numbers such that for any n > 1, a(n) is at Hamming distance one from some previous term.

The programs for A297929, there is no canonical definition to state claims against.
-/

/-! ## A297929.P7011447280927387934

`p?[xor(2, A130352(A089856(n)))]`
-/

namespace A297929.P7011447280927387934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A130352 (A089856 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A297929.P7011447280927387934

/-! ## A297929.P12825573580243126425

`p?[A162344(xor(2, n))]`
-/

namespace A297929.P12825573580243126425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162344 (Nat.xor 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A297929.P12825573580243126425

/-! ## A297929.P13597887720047765525

`p?[A182113(A090964(n))]`
-/

namespace A297929.P13597887720047765525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182113 (A090964 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A297929.P13597887720047765525

/-! ## A297929.P852703282537733500

`p?[A182113(A133137(n+1))]`
-/

namespace A297929.P852703282537733500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182113 (A133137 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A297929.P852703282537733500

/-! ## A297929.P5216421291796108504

`A065769(A073653(n+1)%A081356(2*n+3))`
-/

namespace A297929.P5216421291796108504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065769 (Int.tmod (A073653 (n + 1)) (A081356 (2 * n + 3))).toNat

end

end A297929.P5216421291796108504

/-!
# A297932: Rectangular array, by antidiagonals: row n gives the numbers whose base-2 digits d(m), d(m-1),...,d(0) having n as maximal run-length of 0's.

The programs for A297932, there is no canonical definition to state claims against.
-/

/-! ## A297932.P9122565432968872555

`A388855(A061147(n+1))`
-/

namespace A297932.P9122565432968872555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388855 (A061147 (n + 1)).toNat

end

end A297932.P9122565432968872555

/-! ## A297932.P1669821769250535590

`A388855(A061497(n+1))`
-/

namespace A297932.P1669821769250535590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388855 (A061497 (n + 1)).toNat

end

end A297932.P1669821769250535590

/-! ## A297932.P13284886358091255830

`A388855(A062003(n+1))`
-/

namespace A297932.P13284886358091255830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388855 (A062003 (n + 1)).toNat

end

end A297932.P13284886358091255830

/-! ## A297932.P17983046830477768241

`A388855(A077741(n+1))`
-/

namespace A297932.P17983046830477768241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388855 (A077741 (n + 1)).toNat

end

end A297932.P17983046830477768241

/-! ## A297932.P7356991387790506204

`A388855(A004884(n+2))`
-/

namespace A297932.P7356991387790506204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388855 (A004884 (n + 2)).toNat

end

end A297932.P7356991387790506204

/-!
# A297934: Triangular array T(n, k), read by rows: least common prime factor of n and k, or 0 if n and k are coprime.

The programs for A297934, there is no canonical definition to state claims against.
-/

/-! ## A297934.P12509040062449622413

`val(A005286(A025620(n+1)), 7)`
-/

namespace A297934.P12509040062449622413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A005286 (A025620 (n + 1)).toNat).toNat 7

end

end A297934.P12509040062449622413

/-! ## A297934.P7486332308781524596

`A141700(A241187(n+1))`
-/

namespace A297934.P7486332308781524596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141700 (A241187 (n + 1)).toNat

end

end A297934.P7486332308781524596

/-! ## A297934.P9485970156256784808

`A046660(A018252(Δ[A195088(n+1)]²))`
-/

namespace A297934.P9485970156256784808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A018252 ((f1 (n + 1) - f1 n) ^ 2).toNat).toNat

end

end A297934.P9485970156256784808

/-! ## A297934.P6304446599484279797

`and(A062830(A124458(n+1)), A265799(n+1))`
-/

namespace A297934.P6304446599484279797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062830 (A124458 (n + 1)).toNat) (A265799 (n + 1))

end

end A297934.P6304446599484279797

/-!
# A297935: Least prime k such that n concatenations of n+1 consecutive primes in base 2, starting from k, generate another prime in base 10.

The programs for A297935, there is no canonical definition to state claims against.
-/

/-! ## A297935.P2458693118027441882

`∑{p}[A202305(A273953(n)), #]`
-/

namespace A297935.P2458693118027441882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 (A273953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A297935.P2458693118027441882

/-! ## A297935.P6682076480555798164

`p?[A073847(A241067(2*(n+2)))-(n+1)]`
-/

namespace A297935.P6682076480555798164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073847 (A241067 (2 * (n + 2))).toNat - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A297935.P6682076480555798164

/-! ## A297935.P14406927299627915692

`A037126(A130321(n)+A052689(n))`
-/

namespace A297935.P14406927299627915692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A130321 n + A052689 n).toNat

end

end A297935.P14406927299627915692

/-!
# A297936: Number of n X n 0..1 arrays with every element equal to 0, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297936, there is no canonical definition to state claims against.
-/

/-! ## A297936.P10108242883330596703

`A297943(∑[4*n]+1)`
-/

namespace A297936.P10108242883330596703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297943 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297936.P10108242883330596703

/-! ## A297936.P14010679110049898749

`A297943(A001844(n))+char[10]`
-/

namespace A297936.P14010679110049898749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297943 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297936.P14010679110049898749

/-! ## A297936.P445150070004119036

`A057790(n)*A297943(A001844(n))`
-/

namespace A297936.P445150070004119036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057790 n * A297943 (A001844 n).toNat

end

end A297936.P445150070004119036

/-! ## A297936.P4165861806016427668

`A220054(n)*A297943(A001844(n))`
-/

namespace A297936.P4165861806016427668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 n * A297943 (A001844 n).toNat

end

end A297936.P4165861806016427668

/-! ## A297936.P7284435375668343915

`A260529(n)*A297943(A001844(n))`
-/

namespace A297936.P7284435375668343915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260529 n * A297943 (A001844 n).toNat

end

end A297936.P7284435375668343915

/-!
# A297937: Number of nX2 0..1 arrays with every element equal to 0, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297937, the canonical program `A297937.P16781275991554241127` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297937 has offset 1).

The definition of A297937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297937.P9055033559221465065

`∑[A297870(n+2)+char[1]]`
-/

namespace A297937.P9055033559221465065
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297870 (n + 2) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297937.P9055033559221465065

namespace A297937

/-- `∑[A297870(n+2)+char[1]]` -/
def P9055033559221465065.Spec : Prop :=
  ∀ n, P9055033559221465065.a n = A297937 (n + 1)

end A297937

/-! ## A297937.P16781275991554241127

`A057427(n)+∑[A297870(n+2)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A297937

/-- `A057427(n)+∑[A297870(n+2)]` -/
def P16781275991554241127.Spec : Prop :=
  ∀ n, P16781275991554241127.a n = A297937 (n + 1)

theorem P16781275991554241127.correct : P16781275991554241127.Spec := by
  intro n
  simp only [A297937, Nat.add_sub_cancel]

end A297937

/-! ## A297937.P9979330816005881818

`A019428(2*n)+∑[A297870(n+2)]`
-/

namespace A297937.P9979330816005881818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297870 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297937.P9979330816005881818

namespace A297937

/-- `A019428(2*n)+∑[A297870(n+2)]` -/
def P9979330816005881818.Spec : Prop :=
  ∀ n, P9979330816005881818.a n = A297937 (n + 1)

end A297937

/-! ## A297937.P8306193307514576443

`∑[A297870(n+2)]+A061400(n+1)%2`
-/

namespace A297937.P8306193307514576443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297870 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.tmod (A061400 (n + 1)) 2

end

end A297937.P8306193307514576443

namespace A297937

/-- `∑[A297870(n+2)]+A061400(n+1)%2` -/
def P8306193307514576443.Spec : Prop :=
  ∀ n, P8306193307514576443.a n = A297937 (n + 1)

end A297937

/-! ## A297937.P18174167320540568891

`∑[A297870(n+2)]+A001222(A105560(n+1))`
-/

namespace A297937.P18174167320540568891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297870 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A001222 (A105560 (n + 1)).toNat

end

end A297937.P18174167320540568891

namespace A297937

/-- `∑[A297870(n+2)]+A001222(A105560(n+1))` -/
def P18174167320540568891.Spec : Prop :=
  ∀ n, P18174167320540568891.a n = A297937 (n + 1)

end A297937

/-! ## A297937.P1008193994223780241

`a(n-1)+3*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=5, a(2)=7, a(3)=18, a(4)=31`
-/

namespace A297937.P1008193994223780241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 7, 18, 31] fun n a =>
  a (n - 1) + 3 * a (n - 2) - 4 * a (n - 4)

end

end A297937.P1008193994223780241

namespace A297937

/-- `a(n-1)+3*a(n-2)-4*a(n-4)` -/
def P1008193994223780241.Spec : Prop :=
  ∀ n, P1008193994223780241.a n = A297937 (n + 1)

end A297937

/-!
# A297938: Number of nX3 0..1 arrays with every element equal to 0, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297938, there is no canonical definition to state claims against.
-/

/-! ## A297938.P15922394658914274994

`A297943(∑[n+2]+4)`
-/

namespace A297938.P15922394658914274994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297943 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297938.P15922394658914274994

/-! ## A297938.P8550541213900895998

`A297943(A167614(n+1))+char[19]`
-/

namespace A297938.P8550541213900895998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297943 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297938.P8550541213900895998

/-! ## A297938.P15198599528158326190

`A297943(A046691(n)+7)+char[23]`
-/

namespace A297938.P15198599528158326190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297943 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297938.P15198599528158326190

/-! ## A297938.P9374089204532570242

`A036225(n)*A297943(A167614(n+1))`
-/

namespace A297938.P9374089204532570242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A297943 (A167614 (n + 1)).toNat

end

end A297938.P9374089204532570242

/-! ## A297938.P8361068913299302593

`gcd(A151878(n), A297943(A167614(n+1)))`
-/

namespace A297938.P8361068913299302593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151878 n) (A297943 (A167614 (n + 1)).toNat)

end

end A297938.P8361068913299302593

/-!
# A297939: Number of nX4 0..1 arrays with every element equal to 0, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297939, there is no canonical definition to state claims against.
-/

/-! ## A297939.P13477840338403458117

`A297943(∑[n+3]+7)`
-/

namespace A297939.P13477840338403458117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297943 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A297939.P13477840338403458117

/-! ## A297939.P6050528019181244893

`A297943(A055999(n)+10)+char[19]`
-/

namespace A297939.P6050528019181244893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297943 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297939.P6050528019181244893

/-! ## A297939.P14147390484808147280

`A297943(A000096(n+2)+5)+char[23]`
-/

namespace A297939.P14147390484808147280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297943 (A000096 (n + 2) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297939.P14147390484808147280

/-! ## A297939.P8110569098095933900

`A297943(A055999(n)+10)%A000108(n+7)`
-/

namespace A297939.P8110569098095933900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297943 (A055999 n + 10).toNat) (A000108 (n + 7))

end

end A297939.P8110569098095933900

/-! ## A297939.P11519445777075162105

`A297943(A055999(n)+10)/A007318(C(n, 2))`
-/

namespace A297939.P11519445777075162105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297943 (A055999 n + 10).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A297939.P11519445777075162105

/-!
# A297940: Number of nX5 0..1 arrays with every element equal to 0, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297940, there is no canonical definition to state claims against.
-/

/-! ## A297940.P13706696421552392491

`A297943(A374005(n+1))`
-/

namespace A297940.P13706696421552392491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297943 (A374005 (n + 1)).toNat

end

end A297940.P13706696421552392491

/-! ## A297940.P16297134900713323086

`A297943(A167499(n+3))`
-/

namespace A297940.P16297134900713323086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297943 (A167499 (n + 3)).toNat

end

end A297940.P16297134900713323086

/-! ## A297940.P9984742646187458204

`A297943(A155212(n)+13)`
-/

namespace A297940.P9984742646187458204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297943 (A155212 n + 13).toNat

end

end A297940.P9984742646187458204

/-! ## A297940.P1419377928095670143

`A297943(A056000(n)+15)`
-/

namespace A297940.P1419377928095670143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297943 (A056000 n + 15).toNat

end

end A297940.P1419377928095670143

/-! ## A297940.P5523759610657242167

`A297943(eq[7, A066657(n)])`
-/

namespace A297940.P5523759610657242167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297943 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297940.P5523759610657242167

/-!
# A297941: Number of nX6 0..1 arrays with every element equal to 0, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297941, there is no canonical definition to state claims against.
-/

/-! ## A297941.P12316916885242777384

`A297943(A374007(n+1))`
-/

namespace A297941.P12316916885242777384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297943 (A374007 (n + 1)).toNat

end

end A297941.P12316916885242777384

/-! ## A297941.P18018073438042340076

`A297943(A166136(n+4))`
-/

namespace A297941.P18018073438042340076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297943 (A166136 (n + 4)).toNat

end

end A297941.P18018073438042340076

/-! ## A297941.P1779439364398133419

`A297943(A056115(n)+21)`
-/

namespace A297941.P1779439364398133419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297943 (A056115 n + 21).toNat

end

end A297941.P1779439364398133419

/-! ## A297941.P7780722722014288775

`A297943(Δ[A264443(n)]+10)`
-/

namespace A297941.P7780722722014288775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297943 (f1 (n + 1) - f1 n + 10).toNat

end

end A297941.P7780722722014288775

/-! ## A297941.P4203463529820785122

`A297943(A000124(n+5)+5)`
-/

namespace A297941.P4203463529820785122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297943 (A000124 (n + 5) + 5).toNat

end

end A297941.P4203463529820785122

/-!
# A297942: Number of nX7 0..1 arrays with every element equal to 0, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297942, there is no canonical definition to state claims against.
-/

/-! ## A297942.P1344414946162097634

`A297943(A374008(n+1))`
-/

namespace A297942.P1344414946162097634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297943 (A374008 (n + 1)).toNat

end

end A297942.P1344414946162097634

/-! ## A297942.P15310976645622593046

`A297943(A056119(n)+28)`
-/

namespace A297942.P15310976645622593046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297943 (A056119 n + 28).toNat

end

end A297942.P15310976645622593046

/-! ## A297942.P10648821114799425627

`A297943(eq[11, A066657(n)])`
-/

namespace A297942.P10648821114799425627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297943 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297942.P10648821114799425627

/-! ## A297942.P2290656538630923903

`A297943(A166136(n+5)+1)`
-/

namespace A297942.P2290656538630923903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297943 (A166136 (n + 5) + 1).toNat

end

end A297942.P2290656538630923903

/-! ## A297942.P8353687508367702099

`A297943(A167499(n+5)+2)`
-/

namespace A297942.P8353687508367702099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297943 (A167499 (n + 5) + 2).toNat

end

end A297942.P8353687508367702099

/-!
# A297943: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297943, there is no canonical definition to state claims against.
-/

/-! ## A297943.P18325768359030714647

`A298554(n+1)-A340988(A026758(n))`
-/

namespace A297943.P18325768359030714647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298554 (n + 1) - A340988 ((A026758 n).toNat + 91)

end

end A297943.P18325768359030714647

/-! ## A297943.P6369305901700827517

`A298554(n+1)%A002762(n)`
-/

namespace A297943.P6369305901700827517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298554 (n + 1)) (A002762 n)

end

end A297943.P6369305901700827517

/-! ## A297943.P13474435956711595819

`A298554(n+1)^A185284(n)!`
-/

namespace A297943.P13474435956711595819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298554 (n + 1) ^ Nat.factorial (A185284 n).toNat

end

end A297943.P13474435956711595819

/-! ## A297943.P10665371859970843984

`A298554(n+1)+A000007(A112705(n))`
-/

namespace A297943.P10665371859970843984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298554 (n + 1) + A000007 (A112705 n).toNat

end

end A297943.P10665371859970843984

/-! ## A297943.P4681011641752796250

`A298554(n+1)+A000007(A223256(n))`
-/

namespace A297943.P4681011641752796250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298554 (n + 1) + A000007 (A223256 n).toNat

end

end A297943.P4681011641752796250

/-!
# A297944: Number of n X n 0..1 arrays with every element equal to 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297944, there is no canonical definition to state claims against.
-/

/-! ## A297944.P9357441683689731881

`A297951(∑[4*n]+1)`
-/

namespace A297944.P9357441683689731881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297951 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297944.P9357441683689731881

/-! ## A297944.P14931452796982453765

`record[A297951(Δ[A235355(n)])]`
-/

namespace A297944.P14931452796982453765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297951 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297944.P14931452796982453765

/-! ## A297944.P12841847885072022041

`record[A297951(A330613(n+1))]`
-/

namespace A297944.P12841847885072022041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297951 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297944.P12841847885072022041

/-! ## A297944.P211196646306573918

`A297951(A001844(n))+char[9]`
-/

namespace A297944.P211196646306573918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297951 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297944.P211196646306573918

/-! ## A297944.P845745784262070004

`record[A003982(n)*A297951(n+1)]`
-/

namespace A297944.P845745784262070004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A297951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297944.P845745784262070004

/-!
# A297945: Number of n X 2 0..1 arrays with every element equal to 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297945, there is no canonical definition to state claims against.
-/

/-! ## A297945.P16730898355957187254

`A297951(∑[n+1]+2)`
-/

namespace A297945.P16730898355957187254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297951 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297945.P16730898355957187254

/-! ## A297945.P2598078382621481401

`A298389(∑[n+1]+2)`
-/

namespace A297945.P2598078382621481401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298389 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297945.P2598078382621481401

/-! ## A297945.P18388148954843751789

`A298560(∑[n+1]+2)`
-/

namespace A297945.P18388148954843751789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298560 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297945.P18388148954843751789

/-! ## A297945.P6697178984351432104

`A298770(∑[n+1]+2)`
-/

namespace A297945.P6697178984351432104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298770 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297945.P6697178984351432104

/-! ## A297945.P131179518559869847

`A299307(∑[n+1]+2)`
-/

namespace A297945.P131179518559869847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297945.P131179518559869847

/-!
# A297946: Number of nX3 0..1 arrays with every element equal to 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297946, there is no canonical definition to state claims against.
-/

/-! ## A297946.P10237625200801660613

`A297951(∑[n+2]+4)`
-/

namespace A297946.P10237625200801660613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297951 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297946.P10237625200801660613

/-! ## A297946.P15403296868404897083

`A298560(∑[n+2]+4)`
-/

namespace A297946.P15403296868404897083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298560 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297946.P15403296868404897083

/-! ## A297946.P5900445559527324908

`and(-1, A298560(A167614(n+1)))`
-/

namespace A297946.P5900445559527324908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A298560 (A167614 (n + 1)).toNat)

end

end A297946.P5900445559527324908

/-! ## A297946.P6224765445962940543

`record[gcd(A297951(n+1), A303913(n))]`
-/

namespace A297946.P6224765445962940543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A297951 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297946.P6224765445962940543

/-! ## A297946.P3904988399662883851

`record[gcd(A092921(n), A298560(n+4))]`
-/

namespace A297946.P3904988399662883851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092921 n) (A298560 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297946.P3904988399662883851

/-!
# A297947: Number of nX4 0..1 arrays with every element equal to 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297947, there is no canonical definition to state claims against.
-/

/-! ## A297947.P2350173563505725088

`A297951(∑[n+3]+7)`
-/

namespace A297947.P2350173563505725088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297951 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A297947.P2350173563505725088

/-! ## A297947.P18181474057752787864

`A297951(A141214(n)+7)%A299866(n+2)`
-/

namespace A297947.P18181474057752787864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297951 (A141214 n + 7).toNat) (A299866 (n + 2))

end

end A297947.P18181474057752787864

/-! ## A297947.P14408725219346280455

`A297951(eq[8, A050227(n+1)])+char[16]`
-/

namespace A297947.P14408725219346280455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050227 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297947.P14408725219346280455

/-! ## A297947.P8373350525518605752

`A297951(eq[8, A050227(n+1)])%A017503(n)`
-/

namespace A297947.P8373350525518605752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A017503 n)

end

end A297947.P8373350525518605752

/-! ## A297947.P1882458163021076192

`A297951(A055998(n+2))+A000007(2*n+1)`
-/

namespace A297947.P1882458163021076192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297951 (A055998 (n + 2)).toNat + A000007 (2 * n + 1)

end

end A297947.P1882458163021076192

/-!
# A297948: Number of nX5 0..1 arrays with every element equal to 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297948, there is no canonical definition to state claims against.
-/

/-! ## A297948.P11462365404862348478

`A297951(A374005(n+1))`
-/

namespace A297948.P11462365404862348478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297951 (A374005 (n + 1)).toNat

end

end A297948.P11462365404862348478

/-! ## A297948.P13774725472043574911

`A297951(A167499(n+3))`
-/

namespace A297948.P13774725472043574911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297951 (A167499 (n + 3)).toNat

end

end A297948.P13774725472043574911

/-! ## A297948.P2943143834005003912

`A297951(A155212(n)+13)`
-/

namespace A297948.P2943143834005003912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297951 (A155212 n + 13).toNat

end

end A297948.P2943143834005003912

/-! ## A297948.P7851288322837022400

`A297951(A056000(n)+15)`
-/

namespace A297948.P7851288322837022400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297951 (A056000 n + 15).toNat

end

end A297948.P7851288322837022400

/-! ## A297948.P13976396636366098871

`A297951(eq[7, A066657(n)])`
-/

namespace A297948.P13976396636366098871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297948.P13976396636366098871

/-!
# A297949: Number of nX6 0..1 arrays with every element equal to 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297949, there is no canonical definition to state claims against.
-/

/-! ## A297949.P9264310746765965096

`A297951(A374007(n+1))`
-/

namespace A297949.P9264310746765965096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297951 (A374007 (n + 1)).toNat

end

end A297949.P9264310746765965096

/-! ## A297949.P18363904607961192525

`A297951(A166136(n+4))`
-/

namespace A297949.P18363904607961192525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297951 (A166136 (n + 4)).toNat

end

end A297949.P18363904607961192525

/-! ## A297949.P3246888864983864727

`A297951(A056115(n)+21)`
-/

namespace A297949.P3246888864983864727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297951 (A056115 n + 21).toNat

end

end A297949.P3246888864983864727

/-! ## A297949.P1105570102248620214

`A297951(A167499(n+4)+1)`
-/

namespace A297949.P1105570102248620214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297951 (A167499 (n + 4) + 1).toNat

end

end A297949.P1105570102248620214

/-! ## A297949.P15738701798860467658

`A297951(A077169(n+6)+1)`
-/

namespace A297949.P15738701798860467658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297951 (A077169 (n + 6) + 1).toNat

end

end A297949.P15738701798860467658

/-!
# A297950: Number of n X 7 0..1 arrays with every element equal to 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297950, there is no canonical definition to state claims against.
-/

/-! ## A297950.P11751740569129782626

`A297951(A374008(n+1))`
-/

namespace A297950.P11751740569129782626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297951 (A374008 (n + 1)).toNat

end

end A297950.P11751740569129782626

/-! ## A297950.P17307923791859648955

`A297951(A056119(n)+28)`
-/

namespace A297950.P17307923791859648955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297951 (A056119 n + 28).toNat

end

end A297950.P17307923791859648955

/-! ## A297950.P18003176818581291263

`A297951(eq[11, A066657(n)])`
-/

namespace A297950.P18003176818581291263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297950.P18003176818581291263

/-! ## A297950.P12990230687950279641

`A297951(A145018(n+7)+3)`
-/

namespace A297950.P12990230687950279641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297951 (A145018 (n + 7) + 3).toNat

end

end A297950.P12990230687950279641

/-! ## A297950.P5147867232972201176

`A297951(A000124(n+6)+6)`
-/

namespace A297950.P5147867232972201176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297951 (A000124 (n + 6) + 6).toNat

end

end A297950.P5147867232972201176

/-!
# A297951: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297951, there is no canonical definition to state claims against.
-/

/-! ## A297951.P13715838433490317660

`A051724(12*A298560(n+1))`
-/

namespace A297951.P13715838433490317660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (12 * A298560 (n + 1)).toNat

end

end A297951.P13715838433490317660

/-! ## A297951.P3527202523769787385

`A298560(n+1)%(A095148(n)+1)`
-/

namespace A297951.P3527202523769787385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298560 (n + 1)) (A095148 n + 1)

end

end A297951.P3527202523769787385

/-! ## A297951.P12683075047641715437

`A298560(n+1)/A307478(n+1)%2`
-/

namespace A297951.P12683075047641715437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298560 (n + 1) : ℚ) / (Int.tmod (A307478 (n + 1)) 2 : ℚ)

end

end A297951.P12683075047641715437

/-! ## A297951.P8797461881117944809

`A298560(n+1)+A010051(A061561(n))`
-/

namespace A297951.P8797461881117944809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298560 (n + 1) + A010051 (A061561 n).toNat

end

end A297951.P8797461881117944809

/-! ## A297951.P10763385367776261977

`A298560(n+1)+A000007(A204856(n))`
-/

namespace A297951.P10763385367776261977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298560 (n + 1) + A000007 (A204856 n).toNat

end

end A297951.P10763385367776261977

/-!
# A297952: Number of n X n 0..1 arrays with every element equal to 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297952, there is no canonical definition to state claims against.
-/

/-! ## A297952.P10348762031525250885

`A297959(∑[4*n]+1)`
-/

namespace A297952.P10348762031525250885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297959 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297952.P10348762031525250885

/-! ## A297952.P3514255742475174560

`record[A297959(A152271(n²))]`
-/

namespace A297952.P3514255742475174560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297959 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297952.P3514255742475174560

/-! ## A297952.P1487252696115293362

`record[A297959(A272267(n+1))]`
-/

namespace A297952.P1487252696115293362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297959 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297952.P1487252696115293362

/-! ## A297952.P4403549627347812538

`record[A297959(A330613(n+1))]`
-/

namespace A297952.P4403549627347812538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297959 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297952.P4403549627347812538

/-! ## A297952.P11421930468076182204

`A297959(A001844(n))+char[10]`
-/

namespace A297952.P11421930468076182204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297959 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297952.P11421930468076182204

/-!
# A297953: Number of n X 2 0..1 arrays with every element equal to 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297953, the canonical program `A297953.P2299825177623377696` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297953 has offset 1).

The definition of A297953 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297953.P2299825177623377696

`2*a(n-1)-a(n-2)+4*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=13, a(4)=23`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A297953

/-- `2*a(n-1)-a(n-2)+4*a(n-3)-4*a(n-4)` -/
def P2299825177623377696.Spec : Prop :=
  ∀ n, P2299825177623377696.a n = A297953 (n + 1)

theorem P2299825177623377696.correct : P2299825177623377696.Spec := by
  intro n
  simp only [A297953, Nat.add_sub_cancel]

end A297953

/-! ## A297953.P13710784151144079926

`A083318(n)+∑[A122946(n)]`
-/

namespace A297953.P13710784151144079926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297953.P13710784151144079926

namespace A297953

/-- `A083318(n)+∑[A122946(n)]` -/
def P13710784151144079926.Spec : Prop :=
  ∀ n, P13710784151144079926.a n = A297953 (n + 1)

end A297953

/-! ## A297953.P13516204241170585235

`A151821(n+1)-floor(A097334(n)/2)`
-/

namespace A297953.P13516204241170585235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 1) - ⌊(A097334 n : ℚ) / 2⌋

end

end A297953.P13516204241170585235

namespace A297953

/-- `A151821(n+1)-floor(A097334(n)/2)` -/
def P13516204241170585235.Spec : Prop :=
  ∀ n, P13516204241170585235.a n = A297953 (n + 1)

end A297953

/-! ## A297953.P8782055539496533481

`A131572(2*n)+(A089977(n+1)+1)*sqrt(1/4)`
-/

namespace A297953.P8782055539496533481
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A131572 (2 * n) : ℝ) + (A089977 (n + 1) + 1 : ℝ) * Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A297953.P8782055539496533481

namespace A297953

/-- `A131572(2*n)+(A089977(n+1)+1)*sqrt(1/4)` -/
def P8782055539496533481.Spec : Prop :=
  ∀ n, P8782055539496533481.a n = (A297953 (n + 1) : ℝ)

end A297953

/-! ## A297953.P5406208225871865082

`ceil(A151821(A057427(2*n+3)+n)-A097334(n)/2)`
-/

namespace A297953.P5406208225871865082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A151821 (A057427 (2 * n + 3) + (n : ℤ)).toNat : ℚ) - (A097334 n : ℚ) / 2⌉

end

end A297953.P5406208225871865082

namespace A297953

/-- `ceil(A151821(A057427(2*n+3)+n)-A097334(n)/2)` -/
def P5406208225871865082.Spec : Prop :=
  ∀ n, P5406208225871865082.a n = A297953 (n + 1)

end A297953

/-!
# A297954: Number of n X 3 0..1 arrays with every element equal to 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297954, there is no canonical definition to state claims against.
-/

/-! ## A297954.P12355804514596226064

`A297959(∑[n+2]+4)`
-/

namespace A297954.P12355804514596226064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297959 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297954.P12355804514596226064

/-! ## A297954.P15684011079075346215

`A298775(∑[n+2]+4)`
-/

namespace A297954.P15684011079075346215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298775 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297954.P15684011079075346215

/-! ## A297954.P135854103030610342

`or(1, A297959(A167614(n+1)))`
-/

namespace A297954.P135854103030610342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A297959 (A167614 (n + 1)).toNat)

end

end A297954.P135854103030610342

/-! ## A297954.P8094844874614461050

`or(1, A297959(A055998(n)+6))`
-/

namespace A297954.P8094844874614461050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A297959 (A055998 n + 6).toNat)

end

end A297954.P8094844874614461050

/-! ## A297954.P6797612436134847642

`or(1, A297959(A046691(n)+7))`
-/

namespace A297954.P6797612436134847642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A297959 (A046691 n + 7).toNat)

end

end A297954.P6797612436134847642

/-!
# A297955: Number of nX4 0..1 arrays with every element equal to 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297955, there is no canonical definition to state claims against.
-/

/-! ## A297955.P6204425596604486160

`A297959(∑[n+3]+7)`
-/

namespace A297955.P6204425596604486160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297959 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A297955.P6204425596604486160

/-! ## A297955.P11297400994477472368

`A298775(∑[n+3]+7)`
-/

namespace A297955.P11297400994477472368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298775 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A297955.P11297400994477472368

/-! ## A297955.P2920138186515415233

`A297959(Δ[A005286(n)]+5)+char[26]`
-/

namespace A297955.P2920138186515415233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297959 (f1 (n + 1) - f1 n + 5).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297955.P2920138186515415233

/-! ## A297955.P3377804213014367546

`A298775(A167614(n+2)+1)+char[18]`
-/

namespace A297955.P3377804213014367546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298775 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297955.P3377804213014367546

/-! ## A297955.P8002590232642918263

`(A298775(Δ[A005286(n)]+5)^(1/2))²`
-/

namespace A297955.P8002590232642918263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A298775 (f1 (n + 1) - f1 n + 5).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A297955.P8002590232642918263

/-!
# A297956: Number of nX5 0..1 arrays with every element equal to 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297956, there is no canonical definition to state claims against.
-/

/-! ## A297956.P15786335355606505533

`A297959(A374005(n+1))`
-/

namespace A297956.P15786335355606505533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297959 (A374005 (n + 1)).toNat

end

end A297956.P15786335355606505533

/-! ## A297956.P1963020761040211080

`A297959(A167499(n+3))`
-/

namespace A297956.P1963020761040211080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297959 (A167499 (n + 3)).toNat

end

end A297956.P1963020761040211080

/-! ## A297956.P12771146198125565383

`A297959(A155212(n)+13)`
-/

namespace A297956.P12771146198125565383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297959 (A155212 n + 13).toNat

end

end A297956.P12771146198125565383

/-! ## A297956.P10950287821574153169

`A297959(A056000(n)+15)`
-/

namespace A297956.P10950287821574153169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297959 (A056000 n + 15).toNat

end

end A297956.P10950287821574153169

/-! ## A297956.P7041127304859786317

`A297959(eq[7, A066657(n)])`
-/

namespace A297956.P7041127304859786317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297956.P7041127304859786317

/-!
# A297957: Number of nX6 0..1 arrays with every element equal to 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297957, there is no canonical definition to state claims against.
-/

/-! ## A297957.P14825722034505448771

`A297959(A374007(n+1))`
-/

namespace A297957.P14825722034505448771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297959 (A374007 (n + 1)).toNat

end

end A297957.P14825722034505448771

/-! ## A297957.P7805131336225446440

`A297959(A166136(n+4))`
-/

namespace A297957.P7805131336225446440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297959 (A166136 (n + 4)).toNat

end

end A297957.P7805131336225446440

/-! ## A297957.P14882219685884585929

`A297959(A056115(n)+21)`
-/

namespace A297957.P14882219685884585929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297959 (A056115 n + 21).toNat

end

end A297957.P14882219685884585929

/-! ## A297957.P1719901084112082332

`A297959(A167499(n+4)+1)`
-/

namespace A297957.P1719901084112082332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297959 (A167499 (n + 4) + 1).toNat

end

end A297957.P1719901084112082332

/-! ## A297957.P17635795863016839431

`A297959(A077169(n+6)+1)`
-/

namespace A297957.P17635795863016839431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297959 (A077169 (n + 6) + 1).toNat

end

end A297957.P17635795863016839431

/-!
# A297958: Number of nX7 0..1 arrays with every element equal to 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297958, there is no canonical definition to state claims against.
-/

/-! ## A297958.P12003754572300518068

`A297959(A374008(n+1))`
-/

namespace A297958.P12003754572300518068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297959 (A374008 (n + 1)).toNat

end

end A297958.P12003754572300518068

/-! ## A297958.P3067670607508037077

`A297959(A167487(n+5))`
-/

namespace A297958.P3067670607508037077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297959 (A167487 (n + 5)).toNat

end

end A297958.P3067670607508037077

/-! ## A297958.P141483937236218232

`A297959(A056119(n)+28)`
-/

namespace A297958.P141483937236218232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297959 (A056119 n + 28).toNat

end

end A297958.P141483937236218232

/-! ## A297958.P8151031868316954633

`A297959(eq[11, A066657(n)])`
-/

namespace A297958.P8151031868316954633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297958.P8151031868316954633

/-! ## A297958.P7824384440359707139

`A297959(A167614(n+5)+4)`
-/

namespace A297958.P7824384440359707139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297959 (A167614 (n + 5) + 4).toNat

end

end A297958.P7824384440359707139

/-!
# A297959: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297959, there is no canonical definition to state claims against.
-/

/-! ## A297959.P8440699918386602693

`A298775(n+1)-A054899(A010894(n))`
-/

namespace A297959.P8440699918386602693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298775 (n + 1) - A054899 (A010894 (n + 21)).toNat

end

end A297959.P8440699918386602693

/-! ## A297959.P802145064118256330

`A298775(n+1)-A011732(A010894(n)²)`
-/

namespace A297959.P802145064118256330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298775 (n + 1) - A011732 (A010894 (n + 21) ^ 2).toNat

end

end A297959.P802145064118256330

/-! ## A297959.P10162305115136008905

`A298775(n+1)-A011732(2*A010894(n))`
-/

namespace A297959.P10162305115136008905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298775 (n + 1) - A011732 (2 * A010894 (n + 21)).toNat

end

end A297959.P10162305115136008905

/-! ## A297959.P5868784820701500562

`A298775(n+1)-A185284(A064989(n+1))`
-/

namespace A297959.P5868784820701500562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298775 (n + 1) - A185284 (A064989 (n + 1)).toNat

end

end A297959.P5868784820701500562

/-! ## A297959.P11882978129202468678

`and(A298775(n+1), A349820(n+1))`
-/

namespace A297959.P11882978129202468678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A298775 (n + 1)) (A349820 (n + 1))

end

end A297959.P11882978129202468678

/-!
# A297964: a(n) = A296220(n) - 4n.

The programs for A297964, there is no canonical definition to state claims against.
-/

/-! ## A297964.P14971555441970590637

`A296220(n)-4*n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A297964.P14971555441970590637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296220 n - (4 * n : ℤ)

end

end A297964.P14971555441970590637

/-! ## A297964.P826493171401858610

`A296220(n)+1-A016813(n)`
-/

namespace A297964.P826493171401858610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296220 n + 1 - A016813 n

end

end A297964.P826493171401858610

/-! ## A297964.P14280644077274218441

`A296220(n)+2-A016825(n)`
-/

namespace A297964.P14280644077274218441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296220 n + 2 - A016825 n

end

end A297964.P14280644077274218441

/-! ## A297964.P9566329268471922885

`A296220(n)-A005843(n)-A005843(n)`
-/

namespace A297964.P9566329268471922885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296220 n - A005843 n - A005843 n

end

end A297964.P9566329268471922885

/-! ## A297964.P1813165971437901161

`A028310(A296220(n))-A008586(n)`
-/

namespace A297964.P1813165971437901161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A296220 n).toNat - A008586 n

end

end A297964.P1813165971437901161

/-!
# A297965: a(n) = Fibonacci(binomial(n+3, 3)).

The programs for A297965, the canonical program `A297965.P4589983828039371754` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297965 has offset 0).

The definition of A297965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A297965.P4589983828039371754

`A000045(A000292(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A297965

/-- `A000045(A000292(n+1))` -/
def P4589983828039371754.Spec : Prop :=
  ∀ n, P4589983828039371754.a n = A297965 n

theorem P4589983828039371754.correct : P4589983828039371754.Spec := by
  intro n
  simp only [A297965]

end A297965

/-! ## A297965.P18425207488395800533

`A000045(C(n+3, 3))`
-/

namespace A297965.P18425207488395800533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose (n + 3) 3)

end

end A297965.P18425207488395800533

namespace A297965

/-- `A000045(C(n+3, 3))` -/
def P18425207488395800533.Spec : Prop :=
  ∀ n, P18425207488395800533.a n = A297965 n

end A297965

/-! ## A297965.P13895411300889194539

`A000045(∑[∑[n+1]])`
-/

namespace A297965.P13895411300889194539
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A297965.P13895411300889194539

namespace A297965

/-- `A000045(∑[∑[n+1]])` -/
def P13895411300889194539.Spec : Prop :=
  ∀ n, P13895411300889194539.a n = A297965 n

end A297965

/-! ## A297965.P12802016922407153068

`A000071(∑[∑[n+1]])+1`
-/

namespace A297965.P12802016922407153068
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A297965.P12802016922407153068

namespace A297965

/-- `A000071(∑[∑[n+1]])+1` -/
def P12802016922407153068.Spec : Prop :=
  ∀ n, P12802016922407153068.a n = A297965 n

end A297965

/-! ## A297965.P17661422240035334555

`record[A000045(A213500(n+1))]`
-/

namespace A297965.P17661422240035334555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A213500 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297965.P17661422240035334555

namespace A297965

/-- `record[A000045(A213500(n+1))]` -/
def P17661422240035334555.Spec : Prop :=
  ∀ n, P17661422240035334555.a n = A297965 n

end A297965

/-!
# A297966: a(n) = 3^n mod prime(n).

The programs for A297966, the canonical program `A297966.P8044726551549001468` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297966 has offset 1).

The definition of A297966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297966.P9773527325572329722

`(3^(n+1))%Δ[A007504(n)]`
-/

namespace A297966.P9773527325572329722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 ^ (n + 1) : ℤ) (f1 (n + 1) - f1 n)

end

end A297966.P9773527325572329722

namespace A297966

/-- `(3^(n+1))%Δ[A007504(n)]` -/
def P9773527325572329722.Spec : Prop :=
  ∀ n, P9773527325572329722.a n = A297966 (n + 1)

end A297966

/-! ## A297966.P8378833979694954020

`or(1, 3^(n+1))%A008578(n+2)`
-/

namespace A297966.P8378833979694954020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.lor 1 (3 ^ (n + 1)) : ℤ) (A008578 (n + 2))

end

end A297966.P8378833979694954020

namespace A297966

/-- `or(1, 3^(n+1))%A008578(n+2)` -/
def P8378833979694954020.Spec : Prop :=
  ∀ n, P8378833979694954020.a n = A297966 (n + 1)

end A297966

/-! ## A297966.P8044726551549001468

`A027313(n)%A000040(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A297966

/-- `A027313(n)%A000040(n+1)` -/
def P8044726551549001468.Spec : Prop :=
  ∀ n, P8044726551549001468.a n = A297966 (n + 1)

theorem P8044726551549001468.correct : P8044726551549001468.Spec := by
  intro n
  simp only [A297966, Nat.add_sub_cancel]

end A297966

/-! ## A297966.P2722444040090578261

`A000244(n+1)%A000040(n+1)`
-/

namespace A297966.P2722444040090578261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 (n + 1)) (A000040 (n + 1))

end

end A297966.P2722444040090578261

namespace A297966

/-- `A000244(n+1)%A000040(n+1)` -/
def P2722444040090578261.Spec : Prop :=
  ∀ n, P2722444040090578261.a n = A297966 (n + 1)

end A297966

/-! ## A297966.P12773156904043932744

`A133494(n+2)%record[A006530(n+2)]`
-/

namespace A297966.P12773156904043932744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133494 (n + 2)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A297966.P12773156904043932744

namespace A297966

/-- `A133494(n+2)%record[A006530(n+2)]` -/
def P12773156904043932744.Spec : Prop :=
  ∀ n, P12773156904043932744.a n = A297966 (n + 1)

end A297966

/-! ## A297966.P15986055857564712251

`Δ[A003462(n+1)]%record[A014963(n+2)]`
-/

namespace A297966.P15986055857564712251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A297966.P15986055857564712251

namespace A297966

/-- `Δ[A003462(n+1)]%record[A014963(n+2)]` -/
def P15986055857564712251.Spec : Prop :=
  ∀ n, P15986055857564712251.a n = A297966 (n + 1)

end A297966

/-! ## A297966.P4230224765247890479

`Δ[A029858(n+1)]%record[A020639(n+2)]`
-/

namespace A297966.P4230224765247890479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A297966.P4230224765247890479

namespace A297966

/-- `Δ[A029858(n+1)]%record[A020639(n+2)]` -/
def P4230224765247890479.Spec : Prop :=
  ∀ n, P4230224765247890479.a n = A297966 (n + 1)

end A297966

/-! ## A297966.P5823716414679252262

`A038754(2*(n+1))%record[A014963(n+2)]`
-/

namespace A297966.P5823716414679252262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038754 (2 * (n + 1))) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A297966.P5823716414679252262

namespace A297966

/-- `A038754(2*(n+1))%record[A014963(n+2)]` -/
def P5823716414679252262.Spec : Prop :=
  ∀ n, P5823716414679252262.a n = A297966 (n + 1)

end A297966

/-! ## A297966.P1608252977941265898

`A108411(2*(n+1))%record[A020639(n+2)]`
-/

namespace A297966.P1608252977941265898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108411 (2 * (n + 1))) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A297966.P1608252977941265898

namespace A297966

/-- `A108411(2*(n+1))%record[A020639(n+2)]` -/
def P1608252977941265898.Spec : Prop :=
  ∀ n, P1608252977941265898.a n = A297966 (n + 1)

end A297966

/-! ## A297966.P7781872439916832987

`(3*sqrt(A001019(n)))%record[A051664(n+1)]`
-/

namespace A297966.P7781872439916832987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (3 * Real.sqrt (A001019 n : ℝ))) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A297966.P7781872439916832987

namespace A297966

/-- `(3*sqrt(A001019(n)))%record[A051664(n+1)]` -/
def P7781872439916832987.Spec : Prop :=
  ∀ n, P7781872439916832987.a n = A297966 (n + 1)

end A297966

/-! ## A297966.P11316391792142760590

`sqrt(A001019(n+1))%record[A051664(n+1)]`
-/

namespace A297966.P11316391792142760590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001019 (n + 1) : ℝ))) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A297966.P11316391792142760590

namespace A297966

/-- `sqrt(A001019(n+1))%record[A051664(n+1)]` -/
def P11316391792142760590.Spec : Prop :=
  ∀ n, P11316391792142760590.a n = A297966 (n + 1)

end A297966

/-!
# A297967: a(n) = 5^n mod prime(n).

The programs for A297967, the canonical program `A297967.P1604821042262208685` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297967 has offset 1).

The definition of A297967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297967.P11057198876211142582

`(5^(n+1))%p?[comp[n²]]`
-/

namespace A297967.P11057198876211142582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (n + 1) % f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A297967.P11057198876211142582

namespace A297967

/-- `(5^(n+1))%p?[comp[n²]]` -/
def P11057198876211142582.Spec : Prop :=
  ∀ n, (P11057198876211142582.a n : ℤ) = A297967 (n + 1)

end A297967

/-! ## A297967.P16660311681024513270

`(5^(n+1))%Δ[A007504(n)]`
-/

namespace A297967.P16660311681024513270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 ^ (n + 1) : ℤ) (f1 (n + 1) - f1 n)

end

end A297967.P16660311681024513270

namespace A297967

/-- `(5^(n+1))%Δ[A007504(n)]` -/
def P16660311681024513270.Spec : Prop :=
  ∀ n, P16660311681024513270.a n = A297967 (n + 1)

end A297967

/-! ## A297967.P18044253948256432650

`(5^(Δ[n²]-n))%record[A014963(n+2)]`
-/

namespace A297967.P18044253948256432650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((5 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ) : ℤ))) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A297967.P18044253948256432650

namespace A297967

/-- `(5^(Δ[n²]-n))%record[A014963(n+2)]` -/
def P18044253948256432650.Spec : Prop :=
  ∀ n, P18044253948256432650.a n = A297967 (n + 1)

end A297967

/-! ## A297967.P1604821042262208685

`A000351(n+1)%A273960(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A297967

/-- `A000351(n+1)%A273960(n+1)` -/
def P1604821042262208685.Spec : Prop :=
  ∀ n, P1604821042262208685.a n = A297967 (n + 1)

theorem P1604821042262208685.correct : P1604821042262208685.Spec := by
  intro n
  simp only [A297967, Nat.add_sub_cancel]

end A297967

/-! ## A297967.P16711074352944692101

`A056487(2*(n+1))%∏{d}[A000040(2*n-(n-1)), #]`
-/

namespace A297967.P16711074352944692101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056487 (2 * (n + 1))) ((∏ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A297967.P16711074352944692101

namespace A297967

/-- `A056487(2*(n+1))%∏{d}[A000040(2*n-(n-1)), #]` -/
def P16711074352944692101.Spec : Prop :=
  ∀ n, P16711074352944692101.a n = A297967 (n + 1)

end A297967

/-! ## A297967.P18381130181829103118

`A056487(2*n+2)%A014963(Δ[A007504(n)])`
-/

namespace A297967.P18381130181829103118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056487 (2 * n + 2)) (A014963 (f1 (n + 1) - f1 n).toNat)

end

end A297967.P18381130181829103118

namespace A297967

/-- `A056487(2*n+2)%A014963(Δ[A007504(n)])` -/
def P18381130181829103118.Spec : Prop :=
  ∀ n, P18381130181829103118.a n = A297967 (n + 1)

end A297967

/-!
# A297968: Number of solutions to x*y*(x+y)=n in coprime integers.

The programs for A297968, there is no canonical definition to state claims against.
-/

/-! ## A297968.P1747844529263173825

`A168674(A056730(2*n+5)%A325789(n+2))`
-/

namespace A297968.P1747844529263173825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168674 (Int.tmod (A056730 (2 * n + 5)) (A325789 (n + 2))).toNat

end

end A297968.P1747844529263173825

/-!
# A297971: Number of n X n 0..1 arrays with every element equal to 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297971, there is no canonical definition to state claims against.
-/

/-! ## A297971.P32572735758251402

`A297978(∑[4*n]+1)`
-/

namespace A297971.P32572735758251402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297978 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297971.P32572735758251402

/-! ## A297971.P8099670017785628704

`A326461(n)+A297978(A001844(n))`
-/

namespace A297971.P8099670017785628704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326461 n + A297978 (A001844 n).toNat

end

end A297971.P8099670017785628704

/-! ## A297971.P15812017782624455942

`A178334(n)*A297978(A001844(n))`
-/

namespace A297971.P15812017782624455942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A297978 (A001844 n).toNat

end

end A297971.P15812017782624455942

/-! ## A297971.P5150877026946022060

`(3-A014963(2^n))*A297978(A001844(n))`
-/

namespace A297971.P5150877026946022060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A014963 (2 ^ n)) * A297978 (A001844 n).toNat

end

end A297971.P5150877026946022060

/-! ## A297971.P14513283787608856837

`A008683(∏{p}[n+1, #])²*A297978(A001844(n))`
-/

namespace A297971.P14513283787608856837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∏ p ∈ Nat.primeFactors (f1 n), p) ^ 2 * A297978 (A001844 n).toNat

end

end A297971.P14513283787608856837

/-!
# A297972: Number of n X 2 0..1 arrays with every element equal to 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297972, the canonical program `A297972.P14894459709931054591` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297972 has offset 1).

The definition of A297972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297972.P14387933184684250113

`ogf((x+2x^2)/(1-x-3x^2-2x^3))`
-/

namespace A297972.P14387933184684250113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2] [1, -1, -3, -2] n

end

end A297972.P14387933184684250113

namespace A297972

/-- `ogf((x+2x^2)/(1-x-3x^2-2x^3))` -/
def P14387933184684250113.Spec : Prop :=
  ∀ n, P14387933184684250113.a n = A297972 (n + 1)

end A297972

/-! ## A297972.P14894459709931054591

`a(n-1)+3*a(n-2)+2*a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A297972

/-- `a(n-1)+3*a(n-2)+2*a(n-3)` -/
def P14894459709931054591.Spec : Prop :=
  ∀ n, (P14894459709931054591.a n : ℤ) = A297972 (n + 1)

theorem P14894459709931054591.correct : P14894459709931054591.Spec := by
  intro n
  simp only [A297972, Nat.add_sub_cancel]

end A297972

/-! ## A297972.P16059216259532575420

`record[A303727(n+1)]-A057728(A152950(n+1))`
-/

namespace A297972.P16059216259532575420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A057728 (A152950 (n + 1)).toNat

end

end A297972.P16059216259532575420

namespace A297972

/-- `record[A303727(n+1)]-A057728(A152950(n+1))` -/
def P16059216259532575420.Spec : Prop :=
  ∀ n, P16059216259532575420.a n = A297972 (n + 1)

end A297972

/-! ## A297972.P10260299032514889360

`A300175(∑[n+1]+2)`
-/

namespace A297972.P10260299032514889360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297972.P10260299032514889360

namespace A297972

/-- `A300175(∑[n+1]+2)` -/
def P10260299032514889360.Spec : Prop :=
  ∀ n, P10260299032514889360.a n = A297972 (n + 1)

end A297972

/-! ## A297972.P5131718493292986736

`record[A300175(n+1)/A183610(n)]`
-/

namespace A297972.P5131718493292986736
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300175 (n + 1) : ℚ) / (A183610 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297972.P5131718493292986736

namespace A297972

/-- `record[A300175(n+1)/A183610(n)]` -/
def P5131718493292986736.Spec : Prop :=
  ∀ n, P5131718493292986736.a n = (A297972 (n + 1) : ℚ)

end A297972

/-!
# A297973: Number of nX3 0..1 arrays with every element equal to 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297973, there is no canonical definition to state claims against.
-/

/-! ## A297973.P13934922064963067861

`A297978(∑[n+2]+4)`
-/

namespace A297973.P13934922064963067861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297978 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297973.P13934922064963067861

/-! ## A297973.P8476196315732431622

`A057427(n)*A297978(A167614(n+1))`
-/

namespace A297973.P8476196315732431622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A297978 (A167614 (n + 1)).toNat

end

end A297973.P8476196315732431622

/-! ## A297973.P7724361853757326684

`A297978(A167614(n+1))%A025969(n)`
-/

namespace A297973.P7724361853757326684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297978 (A167614 (n + 1)).toNat) (A025969 n)

end

end A297973.P7724361853757326684

/-! ## A297973.P7009022861195926503

`lcm(A033999(n), A297978(A167614(n+1)))`
-/

namespace A297973.P7009022861195926503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A297978 (A167614 (n + 1)).toNat)

end

end A297973.P7009022861195926503

/-! ## A297973.P3996989806023534343

`or(A297978(A167614(n+1)), A323547(n+1))`
-/

namespace A297973.P3996989806023534343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A297978 (A167614 (n + 1)).toNat) (A323547 (n + 1))

end

end A297973.P3996989806023534343

/-!
# A297974: Number of n X 4 0..1 arrays with every element equal to 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297974, there is no canonical definition to state claims against.
-/

/-! ## A297974.P12416624594871844479

`A297978(A374004(n+1))`
-/

namespace A297974.P12416624594871844479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297978 (A374004 (n + 1)).toNat

end

end A297974.P12416624594871844479

/-! ## A297974.P18228580266050427032

`A297978(A052905(n)+9)`
-/

namespace A297974.P18228580266050427032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297978 (A052905 n + 9).toNat

end

end A297974.P18228580266050427032

/-! ## A297974.P12711570280114869177

`A297978(A055999(n)+10)`
-/

namespace A297974.P12711570280114869177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297978 (A055999 n + 10).toNat

end

end A297974.P12711570280114869177

/-! ## A297974.P4437235261862859

`A297978(A167614(n+2)+1)`
-/

namespace A297974.P4437235261862859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297978 (A167614 (n + 2) + 1).toNat

end

end A297974.P4437235261862859

/-! ## A297974.P10918049158909364167

`A297978(A112355(n+1)+4)`
-/

namespace A297974.P10918049158909364167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297978 (A112355 (n + 1) + 4).toNat

end

end A297974.P10918049158909364167

/-!
# A297975: Number of nX5 0..1 arrays with every element equal to 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297975, there is no canonical definition to state claims against.
-/

/-! ## A297975.P2977454124129246044

`A297978(A374005(n+1))`
-/

namespace A297975.P2977454124129246044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297978 (A374005 (n + 1)).toNat

end

end A297975.P2977454124129246044

/-! ## A297975.P1727935205072455755

`A297978(A155212(n)+13)`
-/

namespace A297975.P1727935205072455755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297978 (A155212 n + 13).toNat

end

end A297975.P1727935205072455755

/-! ## A297975.P14999847452494814809

`A297978(A052905(n+1)+10)`
-/

namespace A297975.P14999847452494814809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297978 (A052905 (n + 1) + 10).toNat

end

end A297975.P14999847452494814809

/-! ## A297975.P121768642767800684

`A297978(eq[6, A131818(n+1)])`
-/

namespace A297975.P121768642767800684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297978 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297975.P121768642767800684

/-! ## A297975.P9356408236942476771

`A297978(Δ[A264443(n)])`
-/

namespace A297975.P9356408236942476771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297978 (f1 (n + 1) - f1 n).toNat

end

end A297975.P9356408236942476771

/-!
# A297976: Number of nX6 0..1 arrays with every element equal to 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297976, there is no canonical definition to state claims against.
-/

/-! ## A297976.P13108040396750426933

`A297978(A374007(n+1))`
-/

namespace A297976.P13108040396750426933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297978 (A374007 (n + 1)).toNat

end

end A297976.P13108040396750426933

/-! ## A297976.P7310367942083726327

`A297978(A167499(n+4)+1)`
-/

namespace A297976.P7310367942083726327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297978 (A167499 (n + 4) + 1).toNat

end

end A297976.P7310367942083726327

/-! ## A297976.P11542686153752783031

`A297978(eq[7, A131818(n+1)])`
-/

namespace A297976.P11542686153752783031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297978 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297976.P11542686153752783031

/-! ## A297976.P28503458682392606

`A297978(eq[5, A193592(n)])`
-/

namespace A297976.P28503458682392606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297978 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297976.P28503458682392606

/-! ## A297976.P3517040288205435189

`A297978(eq[6, A200370(n+1)])`
-/

namespace A297976.P3517040288205435189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297978 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297976.P3517040288205435189

/-!
# A297977: Number of nX7 0..1 arrays with every element equal to 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297977, there is no canonical definition to state claims against.
-/

/-! ## A297977.P4908511659273863519

`A297978(A374008(n+1))`
-/

namespace A297977.P4908511659273863519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297978 (A374008 (n + 1)).toNat

end

end A297977.P4908511659273863519

/-! ## A297977.P5850530652889716702

`A297978(eq[8, A131818(n+1)])`
-/

namespace A297977.P5850530652889716702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297978 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297977.P5850530652889716702

/-! ## A297977.P16325464654967315014

`A297978(A055999(n+4))`
-/

namespace A297977.P16325464654967315014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297978 (A055999 (n + 4)).toNat

end

end A297977.P16325464654967315014

/-! ## A297977.P17631945690047838700

`A297978(eq[6, A193592(n)])`
-/

namespace A297977.P17631945690047838700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297978 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297977.P17631945690047838700

/-! ## A297977.P17593715218090086807

`A297978(eq[6, A025581(n)]+1)`
-/

namespace A297977.P17593715218090086807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297978 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A297977.P17593715218090086807

/-!
# A297978: T(n,k)=Number of nXk 0..1 arrays with every element equal to 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297978, there is no canonical definition to state claims against.
-/

/-! ## A297978.P18353791968115947084

`A298841(n+1)-A121262(A228900(n))`
-/

namespace A297978.P18353791968115947084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298841 (n + 1) - A121262 (A228900 n).toNat

end

end A297978.P18353791968115947084

/-! ## A297978.P18226547720303328856

`A299602(n+1)-A285097(A317525(n+1))`
-/

namespace A297978.P18226547720303328856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299602 (n + 1) - A285097 (A317525 (n + 1)).toNat

end

end A297978.P18226547720303328856

/-! ## A297978.P2033276531414254338

`and(A127288(A298841(n+1)), A298461(n+1))`
-/

namespace A297978.P2033276531414254338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127288 (A298841 (n + 1)).toNat) (A298461 (n + 1))

end

end A297978.P2033276531414254338

/-! ## A297978.P1725545748591005288

`and(A127288(A298629(n+1)), A298841(n+1))`
-/

namespace A297978.P1725545748591005288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127288 (A298629 (n + 1)).toNat) (A298841 (n + 1))

end

end A297978.P1725545748591005288

/-! ## A297978.P4440994847789596059

`∑{e}[2^A298629(n+1), #]`
-/

namespace A297978.P4440994847789596059
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A298629 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A297978.P4440994847789596059

/-!
# A297979: Number of n X n 0..1 arrays with every element equal to 0, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A297979, there is no canonical definition to state claims against.
-/

/-! ## A297979.P10053001978410837620

`A297986(∑[4*n]+1)`
-/

namespace A297979.P10053001978410837620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297986 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297979.P10053001978410837620

/-! ## A297979.P8314589688885101567

`A297986(A001844(n))+char[16]`
-/

namespace A297979.P8314589688885101567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297986 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297979.P8314589688885101567

/-! ## A297979.P6783852954076852292

`gcd(A185255(n), A297986(A001844(n)))`
-/

namespace A297979.P6783852954076852292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185255 n) (A297986 (A001844 n).toNat)

end

end A297979.P6783852954076852292

/-! ## A297979.P16203199072507058072

`A007318(∑[n])*A297986(A001844(n))`
-/

namespace A297979.P16203199072507058072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A297986 (A001844 n).toNat

end

end A297979.P16203199072507058072

/-! ## A297979.P6085640218874579887

`A297986(A001844(n))^A007318(C(2, n))`
-/

namespace A297979.P6085640218874579887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297986 (A001844 n).toNat : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A297979.P6085640218874579887

/-!
# A297980: Number of n X 2 0..1 arrays with every element equal to 0, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A297980, the canonical program `A297980.P1204491505141638529` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297980 has offset 1).

The definition of A297980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297980.P1204491505141638529

`3*a(n-2)+2*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=5, a(2)=6, a(3)=17, a(4)=24`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A297980

/-- `3*a(n-2)+2*a(n-3)-2*a(n-4)` -/
def P1204491505141638529.Spec : Prop :=
  ∀ n, P1204491505141638529.a n = A297980 (n + 1)

theorem P1204491505141638529.correct : P1204491505141638529.Spec := by
  intro n
  simp only [A297980, Nat.add_sub_cancel]

end A297980

/-! ## A297980.P4457915862645302626

`record[ratio[A297986(n+1)]]`
-/

namespace A297980.P4457915862645302626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297986 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297980.P4457915862645302626

namespace A297980

/-- `record[ratio[A297986(n+1)]]` -/
def P4457915862645302626.Spec : Prop :=
  ∀ n, P4457915862645302626.a n = (A297980 (n + 1) : ℚ)

end A297980

/-! ## A297980.P10232990899641296584

`A297986(∑[n+1]+2)`
-/

namespace A297980.P10232990899641296584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297986 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297980.P10232990899641296584

namespace A297980

/-- `A297986(∑[n+1]+2)` -/
def P10232990899641296584.Spec : Prop :=
  ∀ n, P10232990899641296584.a n = A297980 (n + 1)

end A297980

/-! ## A297980.P16627040459594135645

`record[A297986(A278512(n+1))]`
-/

namespace A297980.P16627040459594135645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297986 (A278512 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297980.P16627040459594135645

namespace A297980

/-- `record[A297986(A278512(n+1))]` -/
def P16627040459594135645.Spec : Prop :=
  ∀ n, P16627040459594135645.a n = A297980 (n + 1)

end A297980

/-! ## A297980.P15918520707480907196

`record[A010054(n)*A297986(n+2)]`
-/

namespace A297980.P15918520707480907196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A297986 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297980.P15918520707480907196

namespace A297980

/-- `record[A010054(n)*A297986(n+2)]` -/
def P15918520707480907196.Spec : Prop :=
  ∀ n, P15918520707480907196.a n = A297980 (n + 1)

end A297980

/-!
# A297981: Number of n X 3 0..1 arrays with every element equal to 0, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A297981, there is no canonical definition to state claims against.
-/

/-! ## A297981.P5925884897929492185

`A297986(∑[n+2]+4)`
-/

namespace A297981.P5925884897929492185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297986 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297981.P5925884897929492185

/-! ## A297981.P9031711642150108127

`and(-1, A297986(A167614(n+1)))`
-/

namespace A297981.P9031711642150108127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A297986 (A167614 (n + 1)).toNat)

end

end A297981.P9031711642150108127

/-! ## A297981.P12223638546676046234

`or(char[3], A297986(A055998(n)+6))`
-/

namespace A297981.P12223638546676046234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A297986 (A055998 n + 6).toNat)

end

end A297981.P12223638546676046234

/-! ## A297981.P2591171091762066078

`or(char[3], A297986(A167499(n)+n))`
-/

namespace A297981.P2591171091762066078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A297986 (A167499 n + (n : ℤ)).toNat)

end

end A297981.P2591171091762066078

/-! ## A297981.P17662871003182660498

`A297986(A167614(n+1))+A025466(n)`
-/

namespace A297981.P17662871003182660498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297986 (A167614 (n + 1)).toNat + A025466 n

end

end A297981.P17662871003182660498

/-!
# A297982: Number of n X 4 0..1 arrays with every element equal to 0, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A297982, there is no canonical definition to state claims against.
-/

/-! ## A297982.P208541463974784941

`A298631(n+1)-2%A285943(n)`
-/

namespace A297982.P208541463974784941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298631 (n + 1) - Int.tmod 2 (A285943 n)

end

end A297982.P208541463974784941

/-! ## A297982.P15355966337830704949

`A297986(∑[n+3]+7)`
-/

namespace A297982.P15355966337830704949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297986 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A297982.P15355966337830704949

/-! ## A297982.P421441721004220703

`A297986(A374004(n+1))+A035444(2*n+1)`
-/

namespace A297982.P421441721004220703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297986 (A374004 (n + 1)).toNat + A035444 (2 * n + 1)

end

end A297982.P421441721004220703

/-! ## A297982.P3780968368774194885

`A297986(A374004(n+1))+A192057(3*(n+1))`
-/

namespace A297982.P3780968368774194885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297986 (A374004 (n + 1)).toNat + A192057 (3 * (n + 1))

end

end A297982.P3780968368774194885

/-!
# A297983: Number of nX5 0..1 arrays with every element equal to 0, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A297983, there is no canonical definition to state claims against.
-/

/-! ## A297983.P2374647355741272559

`A297986(∑[n+4]+11)`
-/

namespace A297983.P2374647355741272559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297986 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A297983.P2374647355741272559

/-! ## A297983.P17615580563739898802

`A297986(A000217(n+4)+5)+char[36]`
-/

namespace A297983.P17615580563739898802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297986 (A000217 (n + 4) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297983.P17615580563739898802

/-! ## A297983.P12278605208741759253

`xor(1, xor(1, A297986(A055998(n+2)+8)))`
-/

namespace A297983.P12278605208741759253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A297986 (A055998 (n + 2) + 8).toNat))

end

end A297983.P12278605208741759253

/-! ## A297983.P3143660539886308191

`A007318(C(2, n))*A297986(A000217(n+4)+5)`
-/

namespace A297983.P3143660539886308191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A297986 (A000217 (n + 4) + 5).toNat

end

end A297983.P3143660539886308191

/-! ## A297983.P7711360005971916471

`A007318(and(2, -n))*A297986(A055998(n+2)+8)`
-/

namespace A297983.P7711360005971916471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 (-(n : ℤ))).toNat * A297986 (A055998 (n + 2) + 8).toNat

end

end A297983.P7711360005971916471

/-!
# A297984: Number of nX6 0..1 arrays with every element equal to 0, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A297984, there is no canonical definition to state claims against.
-/

/-! ## A297984.P14898825772584095512

`A297986(A166136(n+4))`
-/

namespace A297984.P14898825772584095512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297986 (A166136 (n + 4)).toNat

end

end A297984.P14898825772584095512

/-! ## A297984.P9916341982472906282

`A297986(A056115(n)+21)`
-/

namespace A297984.P9916341982472906282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297986 (A056115 n + 21).toNat

end

end A297984.P9916341982472906282

/-! ## A297984.P4395115394562724692

`A297986(A000124(n+5)+5)`
-/

namespace A297984.P4395115394562724692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297986 (A000124 (n + 5) + 5).toNat

end

end A297984.P4395115394562724692

/-! ## A297984.P18293172111664580241

`A297986(A000096(n+4)+7)`
-/

namespace A297984.P18293172111664580241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297986 (A000096 (n + 4) + 7).toNat

end

end A297984.P18293172111664580241

/-! ## A297984.P17581074699533767229

`A297986(A000217(n+5)+6)`
-/

namespace A297984.P17581074699533767229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297986 (A000217 (n + 5) + 6).toNat

end

end A297984.P17581074699533767229

/-!
# A297985: Number of nX7 0..1 arrays with every element equal to 0, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A297985, there is no canonical definition to state claims against.
-/

/-! ## A297985.P1628342725121960724

`A297986(A056119(n)+28)`
-/

namespace A297985.P1628342725121960724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297986 (A056119 n + 28).toNat

end

end A297985.P1628342725121960724

/-! ## A297985.P15612700858646189704

`A297986(A167499(n+5)+2)`
-/

namespace A297985.P15612700858646189704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297986 (A167499 (n + 5) + 2).toNat

end

end A297985.P15612700858646189704

/-! ## A297985.P10571429095727456725

`A297986(A000124(n+6)+6)`
-/

namespace A297985.P10571429095727456725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297986 (A000124 (n + 6) + 6).toNat

end

end A297985.P10571429095727456725

/-! ## A297985.P12424421543296042487

`A297986(A000096(n+5)+8)`
-/

namespace A297985.P12424421543296042487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297986 (A000096 (n + 5) + 8).toNat

end

end A297985.P12424421543296042487

/-! ## A297985.P16998793044745780162

`A297986(A000217(n+6)+7)`
-/

namespace A297985.P16998793044745780162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297986 (A000217 (n + 6) + 7).toNat

end

end A297985.P16998793044745780162

/-!
# A297986: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A297986, there is no canonical definition to state claims against.
-/

/-! ## A297986.P12264639679035050023

`A298635(n+1)^Δ[A055645(n)]`
-/

namespace A297986.P12264639679035050023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298635 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A297986.P12264639679035050023

/-! ## A297986.P4969546476840619906

`A298635(and(1, A086839(n+1))+n)`
-/

namespace A297986.P4969546476840619906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298635 (Int.land 1 (A086839 (n + 1)) + (n : ℤ)).toNat

end

end A297986.P4969546476840619906

/-! ## A297986.P4952400429014496734

`A298635(n+1)%Δ[A356109(n+5)]`
-/

namespace A297986.P4952400429014496734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356109 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298635 (n + 1)) (f1 (n + 1) - f1 n)

end

end A297986.P4952400429014496734

/-! ## A297986.P7375429777556190284

`A298635(n+1)^A118395(2^∑{e}[n+1, val(#!, 2)])`
-/

namespace A297986.P7375429777556190284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298635 (n + 1) : ℚ) ^ (A118395 (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2)) : ℤ)

end

end A297986.P7375429777556190284

/-!
# A297987: Number of n X n 0..1 arrays with every element equal to 1, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A297987, there is no canonical definition to state claims against.
-/

/-! ## A297987.P9051794029008731344

`A297993(∑[4*n]+1)`
-/

namespace A297987.P9051794029008731344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297993 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297987.P9051794029008731344

/-! ## A297987.P8106094466728341284

`record[A003982(n)*A297993(n+1)]`
-/

namespace A297987.P8106094466728341284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A297993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297987.P8106094466728341284

/-! ## A297987.P13547386989200265104

`char[A007318(n)]*A297993(A001844(n))`
-/

namespace A297987.P13547386989200265104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A297993 (A001844 n).toNat

end

end A297987.P13547386989200265104

/-! ## A297987.P7506499575458878838

`A007318(C(2, n))*A297993(A001844(n))`
-/

namespace A297987.P7506499575458878838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A297993 (A001844 n).toNat

end

end A297987.P7506499575458878838

/-! ## A297987.P3879366762413434443

`A014963(6*(n+2))*A297993(A001844(n))`
-/

namespace A297987.P3879366762413434443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 2)) * A297993 (A001844 n).toNat

end

end A297987.P3879366762413434443

/-!
# A297988: Number of nX3 0..1 arrays with every element equal to 1, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A297988, there is no canonical definition to state claims against.
-/

/-! ## A297988.P7093998041241371572

`A297993(∑[n+2]+4)`
-/

namespace A297988.P7093998041241371572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297993 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297988.P7093998041241371572

/-! ## A297988.P1280321548693288969

`A297993(A167614(n+1))%A016832(n)`
-/

namespace A297988.P1280321548693288969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297993 (A167614 (n + 1)).toNat) (A016832 n)

end

end A297988.P1280321548693288969

/-! ## A297988.P6888179571554336987

`gcd(A000038(n), A297993(A167614(n+1)))`
-/

namespace A297988.P6888179571554336987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A297993 (A167614 (n + 1)).toNat)

end

end A297988.P6888179571554336987

/-! ## A297988.P1296719793920790016

`lcm(A033999(n), A297993(A167614(n+1)))`
-/

namespace A297988.P1296719793920790016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A297993 (A167614 (n + 1)).toNat)

end

end A297988.P1296719793920790016

/-! ## A297988.P2324452569736074615

`and(A260196(n), A297993(A167614(n+1)))`
-/

namespace A297988.P2324452569736074615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A260196 n) (A297993 (A167614 (n + 1)).toNat)

end

end A297988.P2324452569736074615

/-!
# A297989: Number of nX4 0..1 arrays with every element equal to 1, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A297989, there is no canonical definition to state claims against.
-/

/-! ## A297989.P15179277461871704934

`A297993(A374004(n+1))`
-/

namespace A297989.P15179277461871704934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297993 (A374004 (n + 1)).toNat

end

end A297989.P15179277461871704934

/-! ## A297989.P18236876028728047093

`A297993(A141214(n)+7)`
-/

namespace A297989.P18236876028728047093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297993 (A141214 n + 7).toNat

end

end A297989.P18236876028728047093

/-! ## A297989.P12222156661547298774

`A297993(A052905(n)+9)`
-/

namespace A297989.P12222156661547298774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297993 (A052905 n + 9).toNat

end

end A297989.P12222156661547298774

/-! ## A297989.P13636135362122881226

`A297993(A055999(n)+10)`
-/

namespace A297989.P13636135362122881226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297993 (A055999 n + 10).toNat

end

end A297989.P13636135362122881226

/-! ## A297989.P17101777160078223028

`A297993(A167614(n+2)+1)`
-/

namespace A297989.P17101777160078223028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297993 (A167614 (n + 2) + 1).toNat

end

end A297989.P17101777160078223028

/-!
# A297990: Number of nX5 0..1 arrays with every element equal to 1, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A297990, there is no canonical definition to state claims against.
-/

/-! ## A297990.P7130214706664022563

`A297993(A374005(n+1))`
-/

namespace A297990.P7130214706664022563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297993 (A374005 (n + 1)).toNat

end

end A297990.P7130214706664022563

/-! ## A297990.P13501907974002425718

`A297993(A167499(n+3))`
-/

namespace A297990.P13501907974002425718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297993 (A167499 (n + 3)).toNat

end

end A297990.P13501907974002425718

/-! ## A297990.P15554084810648673932

`A297993(A000124(n+4)+4)`
-/

namespace A297990.P15554084810648673932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297993 (A000124 (n + 4) + 4).toNat

end

end A297990.P15554084810648673932

/-! ## A297990.P3524714557064434913

`A297993(A000217(n+4)+5)`
-/

namespace A297990.P3524714557064434913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297993 (A000217 (n + 4) + 5).toNat

end

end A297990.P3524714557064434913

/-! ## A297990.P9486159303873584986

`A297993(A055998(n+2)+8)`
-/

namespace A297990.P9486159303873584986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297993 (A055998 (n + 2) + 8).toNat

end

end A297990.P9486159303873584986

/-!
# A297991: Number of nX6 0..1 arrays with every element equal to 1, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A297991, there is no canonical definition to state claims against.
-/

/-! ## A297991.P3869053248960350970

`A297993(A374007(n+1))`
-/

namespace A297991.P3869053248960350970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297993 (A374007 (n + 1)).toNat

end

end A297991.P3869053248960350970

/-! ## A297991.P4352408641426971427

`A297993(A166136(n+4))`
-/

namespace A297991.P4352408641426971427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297993 (A166136 (n + 4)).toNat

end

end A297991.P4352408641426971427

/-! ## A297991.P7311470508298616254

`A297993(A167614(n+4)+3)`
-/

namespace A297991.P7311470508298616254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297993 (A167614 (n + 4) + 3).toNat

end

end A297991.P7311470508298616254

/-! ## A297991.P15194579191187371936

`A297993(A133263(n+5)+4)`
-/

namespace A297991.P15194579191187371936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297993 (A133263 (n + 5) + 4).toNat

end

end A297991.P15194579191187371936

/-! ## A297991.P15512907216897470254

`A297993(A000217(n+5)+6)`
-/

namespace A297991.P15512907216897470254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297993 (A000217 (n + 5) + 6).toNat

end

end A297991.P15512907216897470254

/-!
# A297992: Number of nX7 0..1 arrays with every element equal to 1, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A297992, there is no canonical definition to state claims against.
-/

/-! ## A297992.P6731854084739109072

`A297993(A374008(n+1))`
-/

namespace A297992.P6731854084739109072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297993 (A374008 (n + 1)).toNat

end

end A297992.P6731854084739109072

/-! ## A297992.P9434744830154431506

`A297993(A167487(n+5))`
-/

namespace A297992.P9434744830154431506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297993 (A167487 (n + 5)).toNat

end

end A297992.P9434744830154431506

/-! ## A297992.P12515668040660839196

`A297993(A167499(n+5)+2)`
-/

namespace A297992.P12515668040660839196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297993 (A167499 (n + 5) + 2).toNat

end

end A297992.P12515668040660839196

/-! ## A297992.P9771135652640052233

`A297993(A000217(n+6)+7)`
-/

namespace A297992.P9771135652640052233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297993 (A000217 (n + 6) + 7).toNat

end

end A297992.P9771135652640052233

/-! ## A297992.P10653425087849709721

`A297993(A052905(n+3)+12)`
-/

namespace A297992.P10653425087849709721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297993 (A052905 (n + 3) + 12).toNat

end

end A297992.P10653425087849709721

/-!
# A297993: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A297993, there is no canonical definition to state claims against.
-/

/-! ## A297993.P6526896904443258754

`A298846(n+1)-A235145(A177944(n))`
-/

namespace A297993.P6526896904443258754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298846 (n + 1) - A235145 (A177944 n).toNat

end

end A297993.P6526896904443258754

/-! ## A297993.P1884286467270740146

`A298846(n+1)-A055641(A220054(n))`
-/

namespace A297993.P1884286467270740146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298846 (n + 1) - A055641 (A220054 n).toNat

end

end A297993.P1884286467270740146

/-! ## A297993.P13380545297864466888

`A298846(n+1)-A025469(A138381(n+1))`
-/

namespace A297993.P13380545297864466888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298846 (n + 1) - A025469 (A138381 (n + 1)).toNat

end

end A297993.P13380545297864466888

/-! ## A297993.P13348573122974143317

`A025444(n)+A298846(n+1)-A067898(A220054(n))`
-/

namespace A297993.P13348573122974143317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 n + (A298846 (n + 1) - A067898 (A220054 n).toNat)

end

end A297993.P13348573122974143317

/-! ## A297993.P4772550562756455100

`A298653(n+1)%A046960(n)`
-/

namespace A297993.P4772550562756455100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298653 (n + 1)) (A046960 n)

end

end A297993.P4772550562756455100

/-!
# A297994: Primes such that the decimal digits in the first half of the number are a nontrivial permutation of the digits in the second half.

The programs for A297994, there is no canonical definition to state claims against.
-/

/-! ## A297994.P14894321879300030502

`p?[A272655(n+2)]`
-/

namespace A297994.P14894321879300030502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272655 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A297994.P14894321879300030502

/-!
# A297996: a(1)=2, a(2)=3, a(3)=5 and a(n) = (a(1) + a(2) + a(3) + ... + a(n-1))/a(n-1).

The programs for A297996, the canonical program `A297996.P16575959188100683387` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297996 has offset 1).

The definition of A297996 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A297996.P16575959188100683387

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=2, a(4)=6`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A297996

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P16575959188100683387.Spec : Prop :=
  ∀ n, P16575959188100683387.a n = A297996 (n + 1)

theorem P16575959188100683387.correct : P16575959188100683387.Spec := by
  intro n
  simp only [A297996, Nat.add_sub_cancel]

end A297996

/-! ## A297996.P4474700820503584981

`a(n-2)+1` with `a(0)=2, a(1)=3, a(2)=5, a(3)=2`
-/

namespace A297996.P4474700820503584981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 5, 2] fun n a =>
  a (n - 2) + 1

end

end A297996.P4474700820503584981

namespace A297996

/-- `a(n-2)+1` -/
def P4474700820503584981.Spec : Prop :=
  ∀ n, (P4474700820503584981.a n : ℤ) = A297996 (n + 1)

end A297996

/-! ## A297996.P16364020657148604339

`4-(a(n-1)-n)` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A297996.P16364020657148604339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5] fun n a =>
  4 - (a (n - 1) - (n : ℤ))

end

end A297996.P16364020657148604339

namespace A297996

/-- `4-(a(n-1)-n)` -/
def P16364020657148604339.Spec : Prop :=
  ∀ n, P16364020657148604339.a n = A297996 (n + 1)

end A297996

/-! ## A297996.P7132365665074227543

`ogf((2+x-4x^3+2x^4)/(1-x-x^2+x^3))`
-/

namespace A297996.P7132365665074227543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 0, -4, 2] [1, -1, -1, 1] n

end

end A297996.P7132365665074227543

namespace A297996

/-- `ogf((2+x-4x^3+2x^4)/(1-x-x^2+x^3))` -/
def P7132365665074227543.Spec : Prop :=
  ∀ n, P7132365665074227543.a n = A297996 (n + 1)

end A297996

/-! ## A297996.P16250194361965655017

`A020725(a(n-2))` with `a(0)=2, a(1)=3, a(2)=5, a(3)=2`
-/

namespace A297996.P16250194361965655017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5, 2] fun n a =>
  A020725 (a (n - 2)).toNat

end

end A297996.P16250194361965655017

namespace A297996

/-- `A020725(a(n-2))` -/
def P16250194361965655017.Spec : Prop :=
  ∀ n, P16250194361965655017.a n = A297996 (n + 1)

end A297996

/-! ## A297996.P12195401256087587355

`A114112(n+1)+A008619(A114112(n+1))-n`
-/

namespace A297996.P12195401256087587355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114112 (n + 1) + (A008619 (A114112 (n + 1)).toNat - (n : ℤ))

end

end A297996.P12195401256087587355

namespace A297996

/-- `A114112(n+1)+A008619(A114112(n+1))-n` -/
def P12195401256087587355.Spec : Prop :=
  ∀ n, P12195401256087587355.a n = A297996 (n + 1)

end A297996

/-! ## A297996.P7533922342148020519

`A008619(n)+Δ[A030123(n)]%4`
-/

namespace A297996.P7533922342148020519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + Int.tmod (f1 (n + 1) - f1 n) 4

end

end A297996.P7533922342148020519

namespace A297996

/-- `A008619(n)+Δ[A030123(n)]%4` -/
def P7533922342148020519.Spec : Prop :=
  ∀ n, P7533922342148020519.a n = A297996 (n + 1)

end A297996

/-! ## A297996.P1803709747449657722

`A004526(A040019(n-char[1])+n+1)`
-/

namespace A297996.P1803709747449657722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A040019 (n - (if ∃ j, f1 j = n then 1 else 0)) + (n + 1 : ℤ)).toNat

end

end A297996.P1803709747449657722

namespace A297996

/-- `A004526(A040019(n-char[1])+n+1)` -/
def P1803709747449657722.Spec : Prop :=
  ∀ n, P1803709747449657722.a n = A297996 (n + 1)

end A297996

/-! ## A297996.P225752177728614891

`val(A029745(n+1), 2)+2`
-/

namespace A297996.P225752177728614891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A029745 (n + 1)).toNat 2 + 2

end

end A297996.P225752177728614891

namespace A297996

/-- `val(A029745(n+1), 2)+2` -/
def P225752177728614891.Spec : Prop :=
  ∀ n, (P225752177728614891.a n : ℤ) = A297996 (n + 1)

end A297996

/-! ## A297996.P8206772497534337633

`A209279(∑[n+1]+4)+1`
-/

namespace A297996.P8206772497534337633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (∑ j ∈ Finset.range (n + 1), f1 j + 4) + 1

end

end A297996.P8206772497534337633

namespace A297996

/-- `A209279(∑[n+1]+4)+1` -/
def P8206772497534337633.Spec : Prop :=
  ∀ n, P8206772497534337633.a n = A297996 (n + 1)

end A297996

/-! ## A297996.P487466813391010761

`A088226(n²+5+n)+2`
-/

namespace A297996.P487466813391010761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (n ^ 2 + 5 + n) + 2

end

end A297996.P487466813391010761

namespace A297996

/-- `A088226(n²+5+n)+2` -/
def P487466813391010761.Spec : Prop :=
  ∀ n, P487466813391010761.a n = A297996 (n + 1)

end A297996

/-!
# A297997: Solution (b(n)) of the near-complementary equation a(n) = a(1)*b(n-1) - a(0)*b(n-2) + n, where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, and (b(n)) is the increasing sequence of positive integers not in (a(n)). See Comments.

The programs for A297997, there is no canonical definition to state claims against.
-/

/-! ## A297997.P9712605666168139264

`comp[A297826(n)-1]+1`
-/

namespace A297997.P9712605666168139264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297826 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A297997.P9712605666168139264

/-! ## A297997.P4338718327354981014

`A297828(n)+a(n-1)` with `a(0)=3`
-/

namespace A297997.P4338718327354981014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A297828 n + a (n - 1)

end

end A297997.P4338718327354981014

/-! ## A297997.P14550442037290549530

`A298110(n+1)-1`
-/

namespace A297997.P14550442037290549530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298110 (n + 1) - 1

end

end A297997.P14550442037290549530

/-! ## A297997.P5048037128590334451

`Δ[∑[A298110(n)]-n]`
-/

namespace A297997.P5048037128590334451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298110 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297997.P5048037128590334451

/-! ## A297997.P7528460431579618355

`Δ[A024000(n)+∑[A298110(n)]]`
-/

namespace A297997.P7528460431579618355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298110 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297997.P7528460431579618355

/-! ## A297997.P7013022800949954636

`A023443(A298110(n+1))`
-/

namespace A297997.P7013022800949954636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A298110 (n + 1)).toNat

end

end A297997.P7013022800949954636

/-! ## A297997.P15838446900658161198

`eq[char[A297826(n)], A000007(n)]`
-/

namespace A297997.P15838446900658161198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297826 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A297997.P15838446900658161198

/-! ## A297997.P374161874161368839

`record[A298110(A008611(n))-1]`
-/

namespace A297997.P374161874161368839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298110 (A008611 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297997.P374161874161368839

/-! ## A297997.P9171880019003766692

`record[A298110(A008624(n))-1]`
-/

namespace A297997.P9171880019003766692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298110 (A008624 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297997.P9171880019003766692

/-!
# A297998: Solution of the complementary equation a(n) = a(1)*b(n-1) - a(0)*b(n-2) + floor(5*n/2), where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, and (b(n)) is the increasing sequence of positive integers not in (a(n)). See Comments.

The programs for A297998, there is no canonical definition to state claims against.
-/

/-! ## A297998.P5122653498451874869

`A297835(n)+A004216(A000108(n))`
-/

namespace A297998.P5122653498451874869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297835 n + A004216 (A000108 n).toNat

end

end A297998.P5122653498451874869

/-! ## A297998.P3929016426291864015

`A297835(n)+A004216(A045723(n))`
-/

namespace A297998.P3929016426291864015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297835 n + A004216 (A045723 n).toNat

end

end A297998.P3929016426291864015

/-! ## A297998.P18122622312860758823

`A356522(n+1)+A113473(A000110(n))`
-/

namespace A297998.P18122622312860758823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356522 (n + 1) + A113473 (A000110 n).toNat

end

end A297998.P18122622312860758823

/-!
# A297999: Solution (a(n)) of the near-complementary equation a(n) = a(1)*b(n) - a(0)*b(n-1) + n, where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, , b(2) = 5, and (b(n)) is the increasing sequence of positive integers not in (a(n)). See Comments.

The programs for A297999, there is no canonical definition to state claims against.
-/

/-! ## A297999.P14972306201034266463

`A297827(n)+a(n-1)` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A297999.P14972306201034266463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 8] fun n a =>
  A297827 n + a (n - 1)

end

end A297999.P14972306201034266463

/-! ## A297999.P12010504670110586025

`A297826(n)+A157928(n)`
-/

namespace A297999.P12010504670110586025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297826 n + A157928 n

end

end A297999.P12010504670110586025

/-! ## A297999.P17266446825548963028

`A297826(n)+1-A019590(n+1)`
-/

namespace A297999.P17266446825548963028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297826 n + (1 - A019590 (n + 1))

end

end A297999.P17266446825548963028

/-! ## A297999.P2320672528170263834

`A297826(n)+A298000(n)-A297830(n)`
-/

namespace A297999.P2320672528170263834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297826 n + (A298000 n - A297830 n)

end

end A297999.P2320672528170263834

/-! ## A297999.P18435270696876812056

`A297826(n)+A298001(n)-A297836(n)`
-/

namespace A297999.P18435270696876812056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297826 n + (A298001 n - A297836 n)

end

end A297999.P18435270696876812056

/-! ## A297999.P449393693784827220

`A297826(n)+A298002(n)-A297837(n)`
-/

namespace A297999.P449393693784827220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297826 n + (A298002 n - A297837 n)

end

end A297999.P449393693784827220

/-! ## A297999.P12292218941210891955

`A326178(A297826(n)-n)+n`
-/

namespace A297999.P12292218941210891955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A297826 n - (n : ℤ)).toNat + (n : ℤ)

end

end A297999.P12292218941210891955

/-! ## A297999.P2816823923280334806

`A326178(A297826(n))`
-/

namespace A297999.P2816823923280334806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A297826 n).toNat

end

end A297999.P2816823923280334806

/-! ## A297999.P12143590029016486768

`A297826(n)+A115360(A040976(n+1)+3)`
-/

namespace A297999.P12143590029016486768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297826 n + A115360 (A040976 (n + 1) + 3).toNat

end

end A297999.P12143590029016486768

