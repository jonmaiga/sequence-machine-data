import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
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
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A224000: Number of 2 X n 0..2 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A224000, the canonical program `A224000.P12568290461745659742` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224000 has offset 1).

The definition of A224000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224000.P12568290461745659742

`∑[∑[(n+3)²-2]+1]+1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A224000

/-- `∑[∑[(n+3)²-2]+1]+1` -/
def P12568290461745659742.Spec : Prop :=
  ∀ n, P12568290461745659742.a n = A224000 (n + 1)

theorem P12568290461745659742.correct : P12568290461745659742.Spec := by
  intro n
  simp only [A224000, Nat.add_sub_cancel]

end A224000

/-! ## A224000.P2841828299011132607

`ceil(A212347(n+5)/2+n+2)`
-/

namespace A224000.P2841828299011132607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A212347 (n + 5) : ℚ) / 2 + (n + 2 : ℚ)⌉

end

end A224000.P2841828299011132607

namespace A224000

/-- `ceil(A212347(n+5)/2+n+2)` -/
def P2841828299011132607.Spec : Prop :=
  ∀ n, P2841828299011132607.a n = A224000 (n + 1)

end A224000

/-! ## A224000.P16827408663688265276

`abs(∑[n+2]-(A052472(n+4)+1))`
-/

namespace A224000.P16827408663688265276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A052472 (n + 4) + 1)|

end

end A224000.P16827408663688265276

namespace A224000

/-- `abs(∑[n+2]-(A052472(n+4)+1))` -/
def P16827408663688265276.Spec : Prop :=
  ∀ n, P16827408663688265276.a n = A224000 (n + 1)

end A224000

/-! ## A224000.P10496941959401238387

`abs(∑[A101986(n+2)]-n)`
-/

namespace A224000.P10496941959401238387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101986 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A224000.P10496941959401238387

namespace A224000

/-- `abs(∑[A101986(n+2)]-n)` -/
def P10496941959401238387.Spec : Prop :=
  ∀ n, P10496941959401238387.a n = A224000 (n + 1)

end A224000

/-! ## A224000.P12885509746784239557

`Δ[Δ[A202752(n+1)]-n]`
-/

namespace A224000.P12885509746784239557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202752 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224000.P12885509746784239557

namespace A224000

/-- `Δ[Δ[A202752(n+1)]-n]` -/
def P12885509746784239557.Spec : Prop :=
  ∀ n, P12885509746784239557.a n = A224000 (n + 1)

end A224000

/-! ## A224000.P12389059534200086696

`(A052472(n+4)-A034856(n+1))/and(1, A107392(n))`
-/

namespace A224000.P12389059534200086696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052472 (n + 4) - A034856 (n + 1) : ℚ) / (Int.land 1 (A107392 n) : ℚ)

end

end A224000.P12389059534200086696

namespace A224000

/-- `(A052472(n+4)-A034856(n+1))/and(1, A107392(n))` -/
def P12389059534200086696.Spec : Prop :=
  ∀ n, P12389059534200086696.a n = (A224000 (n + 1) : ℚ)

end A224000

/-!
# A224001: Number of 3 X n 0..2 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A224001, there is no canonical definition to state claims against.
-/

/-! ## A224001.P10002247605600959637

`A223999(∑[n+2]+4)`
-/

namespace A224001.P10002247605600959637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224001.P10002247605600959637

/-! ## A224001.P13167798390786726107

`A223999(A167614(n+1))+A011744(n)`
-/

namespace A224001.P13167798390786726107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A167614 (n + 1)).toNat + A011744 n

end

end A224001.P13167798390786726107

/-! ## A224001.P18021049019979700471

`A223999(A167614(n+1))+A178798(n)`
-/

namespace A224001.P18021049019979700471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A167614 (n + 1)).toNat + A178798 n

end

end A224001.P18021049019979700471

/-! ## A224001.P3991685135671129177

`A223999(A167614(n+1))%A016890(n)`
-/

namespace A224001.P3991685135671129177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223999 (A167614 (n + 1)).toNat) (A016890 n)

end

end A224001.P3991685135671129177

/-! ## A224001.P2840983839736105138

`lcm(A033999(n), A223999(A167614(n+1)))`
-/

namespace A224001.P2840983839736105138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A223999 (A167614 (n + 1)).toNat)

end

end A224001.P2840983839736105138

/-!
# A224002: Number of 4 X n 0..2 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A224002, there is no canonical definition to state claims against.
-/

/-! ## A224002.P6592981861155636097

`A223999(A141214(n)+7)`
-/

namespace A224002.P6592981861155636097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A141214 n + 7).toNat

end

end A224002.P6592981861155636097

/-! ## A224002.P3687533740003513022

`A223999(A052905(n)+9)`
-/

namespace A224002.P3687533740003513022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A052905 n + 9).toNat

end

end A224002.P3687533740003513022

/-! ## A224002.P2415533904537627739

`A223999(A167614(n+2)+1)`
-/

namespace A224002.P2415533904537627739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A167614 (n + 2) + 1).toNat

end

end A224002.P2415533904537627739

/-! ## A224002.P3194549555536923368

`A223999(A133263(n+3)+2)`
-/

namespace A224002.P3194549555536923368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A133263 (n + 3) + 2).toNat

end

end A224002.P3194549555536923368

/-! ## A224002.P7408886395135523900

`A223999(A000124(n+3)+3)`
-/

namespace A224002.P7408886395135523900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A000124 (n + 3) + 3).toNat

end

end A224002.P7408886395135523900

/-!
# A224003: Number of 5Xn 0..2 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A224003, there is no canonical definition to state claims against.
-/

/-! ## A224003.P4876936860950969589

`A223999(A167499(n+3))`
-/

namespace A224003.P4876936860950969589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A167499 (n + 3)).toNat

end

end A224003.P4876936860950969589

/-! ## A224003.P14124720463559673185

`A223999(A000124(n+4)+4)`
-/

namespace A224003.P14124720463559673185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A000124 (n + 4) + 4).toNat

end

end A224003.P14124720463559673185

/-! ## A224003.P12804694279374407471

`A223999(A000096(n+3)+6)`
-/

namespace A224003.P12804694279374407471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A000096 (n + 3) + 6).toNat

end

end A224003.P12804694279374407471

/-! ## A224003.P12293939213091871029

`A223999(A020710(A000217(n+4)))`
-/

namespace A224003.P12293939213091871029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A020710 (A000217 (n + 4)).toNat).toNat

end

end A224003.P12293939213091871029

/-! ## A224003.P5066362956329803075

`A223999(A000217(A020710(n))-n)`
-/

namespace A224003.P5066362956329803075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A000217 (A020710 n).toNat - (n : ℤ)).toNat

end

end A224003.P5066362956329803075

/-!
# A224004: Number of 6 X n 0..2 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A224004, there is no canonical definition to state claims against.
-/

/-! ## A224004.P1953219701540666902

`A223999(A167499(n+4)+1)`
-/

namespace A224004.P1953219701540666902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A167499 (n + 4) + 1).toNat

end

end A224004.P1953219701540666902

/-! ## A224004.P13823071296674419446

`A223999(A167487(n+4)-1)`
-/

namespace A224004.P13823071296674419446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A167487 (n + 4) - 1).toNat

end

end A224004.P13823071296674419446

/-! ## A224004.P8909160956851912855

`A223999(A000124(n+5)+5)`
-/

namespace A224004.P8909160956851912855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A000124 (n + 5) + 5).toNat

end

end A224004.P8909160956851912855

/-! ## A224004.P3219078810478060975

`A223999(A000096(n+4)+7)`
-/

namespace A224004.P3219078810478060975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A000096 (n + 4) + 7).toNat

end

end A224004.P3219078810478060975

/-! ## A224004.P11950300549232743575

`A223999(A000217(n+5)+6)`
-/

namespace A224004.P11950300549232743575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A000217 (n + 5) + 6).toNat

end

end A224004.P11950300549232743575

/-!
# A224005: Number of 7 X n 0..2 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A224005, there is no canonical definition to state claims against.
-/

/-! ## A224005.P10664746804879207781

`A223999(A167487(n+5))`
-/

namespace A224005.P10664746804879207781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A167487 (n + 5)).toNat

end

end A224005.P10664746804879207781

/-! ## A224005.P10117068782242301761

`A223999(A167499(n+5)+2)`
-/

namespace A224005.P10117068782242301761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A167499 (n + 5) + 2).toNat

end

end A224005.P10117068782242301761

/-! ## A224005.P2645194655740210367

`A223999(A000124(n+6)+6)`
-/

namespace A224005.P2645194655740210367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A000124 (n + 6) + 6).toNat

end

end A224005.P2645194655740210367

/-! ## A224005.P8122050860126909977

`A223999(A000096(n+5)+8)`
-/

namespace A224005.P8122050860126909977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A000096 (n + 5) + 8).toNat

end

end A224005.P8122050860126909977

/-! ## A224005.P3464691701133404001

`A223999(A000217(n+6)+7)`
-/

namespace A224005.P3464691701133404001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A000217 (n + 6) + 7).toNat

end

end A224005.P3464691701133404001

/-!
# A224007: Number of n X 3 0..2 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224007, there is no canonical definition to state claims against.
-/

/-! ## A224007.P12060718461580958686

`A224012(∑[n+3]+1)`
-/

namespace A224007.P12060718461580958686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224007.P12060718461580958686

/-! ## A224007.P11291857050151051513

`record[A224012(A198464(n+1))]`
-/

namespace A224007.P11291857050151051513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224007.P11291857050151051513

/-!
# A224008: Number of n X 4 0..2 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224008, there is no canonical definition to state claims against.
-/

/-! ## A224008.P5998621513026505612

`A224012(A141214(n+1))`
-/

namespace A224008.P5998621513026505612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A141214 (n + 1)).toNat

end

end A224008.P5998621513026505612

/-! ## A224008.P16586721647004672539

`A224012(A055998(n+2))`
-/

namespace A224008.P16586721647004672539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A055998 (n + 2)).toNat

end

end A224008.P16586721647004672539

/-! ## A224008.P14360434546572154697

`A224012(A155212(n)+5)`
-/

namespace A224008.P14360434546572154697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A155212 n + 5).toNat

end

end A224008.P14360434546572154697

/-! ## A224008.P1173360910005477276

`A224012(A056000(n)+7)`
-/

namespace A224008.P1173360910005477276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A056000 n + 7).toNat

end

end A224008.P1173360910005477276

/-! ## A224008.P7732719180893389617

`A224012(A052905(n+1)+2)`
-/

namespace A224008.P7732719180893389617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A052905 (n + 1) + 2).toNat

end

end A224008.P7732719180893389617

/-!
# A224009: Number of n X 5 0..2 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224009, there is no canonical definition to state claims against.
-/

/-! ## A224009.P3615782812132729404

`A224012(Δ[A264443(n)])`
-/

namespace A224009.P3615782812132729404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (f1 (n + 1) - f1 n).toNat

end

end A224009.P3615782812132729404

/-! ## A224009.P13477849555506261041

`A224012(eq[2, A092921(n)])`
-/

namespace A224009.P13477849555506261041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224009.P13477849555506261041

/-! ## A224009.P17203107172859622617

`A224012(A141214(n+2)-1)`
-/

namespace A224009.P17203107172859622617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A141214 (n + 2) - 1).toNat

end

end A224009.P17203107172859622617

/-! ## A224009.P3798614748486855301

`A224012(A155212(n+1)+4)`
-/

namespace A224009.P3798614748486855301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A155212 (n + 1) + 4).toNat

end

end A224009.P3798614748486855301

/-! ## A224009.P4138603909582680796

`A224012(A056000(n+1)+6)`
-/

namespace A224009.P4138603909582680796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A056000 (n + 1) + 6).toNat

end

end A224009.P4138603909582680796

/-!
# A224010: Number of n X 6 0..2 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224010, there is no canonical definition to state claims against.
-/

/-! ## A224010.P15390190715967341680

`A224012(A052905(n+3))`
-/

namespace A224010.P15390190715967341680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A052905 (n + 3)).toNat

end

end A224010.P15390190715967341680

/-! ## A224010.P6270174974442633605

`A224012(eq[5, A193592(n)])`
-/

namespace A224010.P6270174974442633605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224010.P6270174974442633605

/-! ## A224010.P1558482440345402213

`A224012(A155212(n+2)+3)`
-/

namespace A224010.P1558482440345402213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A155212 (n + 2) + 3).toNat

end

end A224010.P1558482440345402213

/-! ## A224010.P4557617551740205529

`A224012(A056000(n+2)+5)`
-/

namespace A224010.P4557617551740205529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A056000 (n + 2) + 5).toNat

end

end A224010.P4557617551740205529

/-! ## A224010.P1464174602743830703

`A224012(A000124(n+6)-6)`
-/

namespace A224010.P1464174602743830703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A000124 (n + 6) - 6).toNat

end

end A224010.P1464174602743830703

/-!
# A224011: Number of n X 7 0..2 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224011, there is no canonical definition to state claims against.
-/

/-! ## A224011.P813842887141714797

`A224012(A055999(n+4))`
-/

namespace A224011.P813842887141714797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A055999 (n + 4)).toNat

end

end A224011.P813842887141714797

/-! ## A224011.P15452626416837478251

`A224012(eq[4, A219347(n)])`
-/

namespace A224011.P15452626416837478251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224011.P15452626416837478251

/-! ## A224011.P7794075092464185833

`A224012(eq[6, A193592(n)])`
-/

namespace A224011.P7794075092464185833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224011.P7794075092464185833

/-! ## A224011.P16033282055724430888

`A224012(Δ[A023551(n+2)])`
-/

namespace A224011.P16033282055724430888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (f1 (n + 1) - f1 n).toNat

end

end A224011.P16033282055724430888

/-! ## A224011.P14311740493777415

`A224012(eq[10, A185782(n+1)])`
-/

namespace A224011.P14311740493777415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224011.P14311740493777415

/-!
# A224012: T(n,k)=Number of nXk 0..2 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224012, there is no canonical definition to state claims against.
-/

/-! ## A224012.P18093090359077594880

`A224353(A084192(∑[n]))`
-/

namespace A224012.P18093090359077594880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A224012.P18093090359077594880

/-! ## A224012.P6125452096425048054

`A224353(A084193(∑[n]))`
-/

namespace A224012.P6125452096425048054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A224012.P6125452096425048054

/-! ## A224012.P2177356317131835670

`A224353(A004896(n+2))`
-/

namespace A224012.P2177356317131835670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (A004896 (n + 2)).toNat

end

end A224012.P2177356317131835670

/-! ## A224012.P11494673279542062275

`A224353(A004907(n+2))`
-/

namespace A224012.P11494673279542062275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (A004907 (n + 2)).toNat

end

end A224012.P11494673279542062275

/-! ## A224012.P15478114935594053774

`A224353(A004918(n+2))`
-/

namespace A224012.P15478114935594053774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224353 (A004918 (n + 2)).toNat

end

end A224012.P15478114935594053774

/-!
# A224013: Number of 3 X n 0..2 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224013, there is no canonical definition to state claims against.
-/

/-! ## A224013.P14479616337899263352

`A224012(∑[n+2]+4)`
-/

namespace A224013.P14479616337899263352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224013.P14479616337899263352

/-! ## A224013.P3279172034468207218

`lcm((-1)^n, A224012(A167614(n+1)))`
-/

namespace A224013.P3279172034468207218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A224012 (A167614 (n + 1)).toNat)

end

end A224013.P3279172034468207218

/-! ## A224013.P8518852316534931882

`A224012(A167614(n+1))+A025466(n)`
-/

namespace A224013.P8518852316534931882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A167614 (n + 1)).toNat + A025466 n

end

end A224013.P8518852316534931882

/-! ## A224013.P6254348635766828890

`A224012(A167614(n+1))+A185284(n)`
-/

namespace A224013.P6254348635766828890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A167614 (n + 1)).toNat + A185284 n

end

end A224013.P6254348635766828890

/-! ## A224013.P112001588732316042

`A224012(A167614(n+1))%A017214(n)`
-/

namespace A224013.P112001588732316042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224012 (A167614 (n + 1)).toNat) (A017214 n)

end

end A224013.P112001588732316042

/-!
# A224014: Number of 4 X n 0..2 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224014, there is no canonical definition to state claims against.
-/

/-! ## A224014.P14855075280030420358

`A224012(A141214(n)+7)`
-/

namespace A224014.P14855075280030420358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A141214 n + 7).toNat

end

end A224014.P14855075280030420358

/-! ## A224014.P5550360027191321686

`A224012(A052905(n)+9)`
-/

namespace A224014.P5550360027191321686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A052905 n + 9).toNat

end

end A224014.P5550360027191321686

/-! ## A224014.P5352486275287111532

`A224012(A055999(n)+10)`
-/

namespace A224014.P5352486275287111532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A055999 n + 10).toNat

end

end A224014.P5352486275287111532

/-! ## A224014.P17296485183776160032

`A224012(A167614(n+2)+1)`
-/

namespace A224014.P17296485183776160032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A167614 (n + 2) + 1).toNat

end

end A224014.P17296485183776160032

/-! ## A224014.P2618307358780627276

`A224012(A340266(n+2)+2)`
-/

namespace A224014.P2618307358780627276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A340266 (n + 2) + 2).toNat

end

end A224014.P2618307358780627276

/-!
# A224015: Number of 5 X n 0..2 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224015, there is no canonical definition to state claims against.
-/

/-! ## A224015.P8416034573832802911

`A224012(A167499(n+3))`
-/

namespace A224015.P8416034573832802911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A167499 (n + 3)).toNat

end

end A224015.P8416034573832802911

/-! ## A224015.P4687648343491806330

`A224012(A155212(n)+13)`
-/

namespace A224015.P4687648343491806330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A155212 n + 13).toNat

end

end A224015.P4687648343491806330

/-! ## A224015.P13120019891415982994

`A224012(A056000(n)+15)`
-/

namespace A224015.P13120019891415982994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A056000 n + 15).toNat

end

end A224015.P13120019891415982994

/-! ## A224015.P13424401902675437019

`A224012(A141214(n+1)+8)`
-/

namespace A224015.P13424401902675437019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A141214 (n + 1) + 8).toNat

end

end A224015.P13424401902675437019

/-! ## A224015.P13294154022585238565

`A224012(A055998(n+2)+8)`
-/

namespace A224015.P13294154022585238565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A055998 (n + 2) + 8).toNat

end

end A224015.P13294154022585238565

/-!
# A224016: Number of 6Xn 0..2 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224016, there is no canonical definition to state claims against.
-/

/-! ## A224016.P16530324021247079203

`A224012(A056115(n)+21)`
-/

namespace A224016.P16530324021247079203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A056115 n + 21).toNat

end

end A224016.P16530324021247079203

/-! ## A224016.P3752207541283760172

`A224012(Δ[A224039(n+3)])`
-/

namespace A224016.P3752207541283760172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224039 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (f1 (n + 1) - f1 n).toNat

end

end A224016.P3752207541283760172

/-! ## A224016.P12350723350632213326

`A224012(Δ[A264443(n)]+10)`
-/

namespace A224016.P12350723350632213326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (f1 (n + 1) - f1 n + 10).toNat

end

end A224016.P12350723350632213326

/-! ## A224016.P1777353617329703270

`A224012(A167614(n+4)+3)`
-/

namespace A224016.P1777353617329703270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A167614 (n + 4) + 3).toNat

end

end A224016.P1777353617329703270

/-! ## A224016.P6738254477144079086

`A224012(eq[7, A131818(n+1)])`
-/

namespace A224016.P6738254477144079086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224016.P6738254477144079086

/-!
# A224017: Number of 7Xn 0..2 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224017, there is no canonical definition to state claims against.
-/

/-! ## A224017.P6391656125731863299

`A224012(A167487(n+5))`
-/

namespace A224017.P6391656125731863299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A167487 (n + 5)).toNat

end

end A224017.P6391656125731863299

/-! ## A224017.P15281522362194159936

`A224012(A056119(n)+28)`
-/

namespace A224017.P15281522362194159936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A056119 n + 28).toNat

end

end A224017.P15281522362194159936

/-! ## A224017.P11629486760193653985

`A224012(eq[11, A066657(n)])`
-/

namespace A224017.P11629486760193653985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224017.P11629486760193653985

/-! ## A224017.P14155419662796304564

`A224012(eq[8, A131818(n+1)])`
-/

namespace A224017.P14155419662796304564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224017.P14155419662796304564

/-! ## A224017.P7811095186924551174

`A224012(A052905(n)+A008486(n+9))`
-/

namespace A224017.P7811095186924551174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A052905 n + A008486 (n + 9)).toNat

end

end A224017.P7811095186924551174

/-!
# A224018: Number of n X n 0..3 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224018, there is no canonical definition to state claims against.
-/

/-! ## A224018.P18408186089208197359

`A224024(∑[4*n]+1)`
-/

namespace A224018.P18408186089208197359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224018.P18408186089208197359

/-! ## A224018.P10431448004186570934

`record[A224024(A330613(n+1))]`
-/

namespace A224018.P10431448004186570934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224018.P10431448004186570934

/-! ## A224018.P5890912604775565172

`record[A003982(n)*A224024(n+1)]`
-/

namespace A224018.P5890912604775565172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A224024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224018.P5890912604775565172

/-! ## A224018.P10320979428750380697

`record[gcd(A003987(n), A224024(n+1))]`
-/

namespace A224018.P10320979428750380697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A224024 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224018.P10320979428750380697

/-! ## A224018.P144492676028421172

`A007318(C(n, 2))*A224024(A001844(n))`
-/

namespace A224018.P144492676028421172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A224024 (A001844 n).toNat

end

end A224018.P144492676028421172

/-!
# A224019: Number of n X 3 0..3 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224019, there is no canonical definition to state claims against.
-/

/-! ## A224019.P3484605930855267686

`A224024(∑[n+3]+1)`
-/

namespace A224019.P3484605930855267686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224019.P3484605930855267686

/-! ## A224019.P9100791977083539467

`lcm(2, A224024(Δ[A008778(n)]))`
-/

namespace A224019.P9100791977083539467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A224024 (f1 (n + 1) - f1 n).toNat)

end

end A224019.P9100791977083539467

/-! ## A224019.P6531072321551275327

`A224024(Δ[A008778(n)])+A000007(n+1)`
-/

namespace A224019.P6531072321551275327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A224019.P6531072321551275327

/-! ## A224019.P7280213581168207273

`A224024(Δ[A008778(n)])+A034501(n+1)`
-/

namespace A224019.P7280213581168207273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (f1 (n + 1) - f1 n).toNat + A034501 (n + 1)

end

end A224019.P7280213581168207273

/-! ## A224019.P5685621011601717455

`A014963(6*(n+1))*A224024(Δ[A008778(n)])`
-/

namespace A224019.P5685621011601717455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A224024 (f1 (n + 1) - f1 n).toNat

end

end A224019.P5685621011601717455

/-!
# A224020: Number of nX4 0..3 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224020, there is no canonical definition to state claims against.
-/

/-! ## A224020.P3340261411459565743

`A224024(C(n+4, 2)+n+1)`
-/

namespace A224020.P3340261411459565743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (Nat.choose (n + 4) 2 + n + 1)

end

end A224020.P3340261411459565743

/-! ## A224020.P13301385481290414524

`A224024(A141214(n+1))`
-/

namespace A224020.P13301385481290414524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (A141214 (n + 1)).toNat

end

end A224020.P13301385481290414524

/-! ## A224020.P13206582379378299324

`A224024(A155212(n)+5)`
-/

namespace A224020.P13206582379378299324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (A155212 n + 5).toNat

end

end A224020.P13206582379378299324

/-! ## A224020.P8462783607808788888

`A224024(A056000(n)+7)`
-/

namespace A224020.P8462783607808788888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (A056000 n + 7).toNat

end

end A224020.P8462783607808788888

/-! ## A224020.P12648174291627569035

`A224024(eq[3, A193592(n)])`
-/

namespace A224020.P12648174291627569035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224020.P12648174291627569035

/-!
# A224021: Number of nX5 0..3 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224021, there is no canonical definition to state claims against.
-/

/-! ## A224021.P2571061226097360948

`A224024(Δ[A264443(n)])`
-/

namespace A224021.P2571061226097360948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (f1 (n + 1) - f1 n).toNat

end

end A224021.P2571061226097360948

/-! ## A224021.P8540246451554370740

`A224024(A046691(n+3))`
-/

namespace A224021.P8540246451554370740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (A046691 (n + 3)).toNat

end

end A224021.P8540246451554370740

/-! ## A224021.P6966119299486103155

`A224024(eq[4, A193592(n)])`
-/

namespace A224021.P6966119299486103155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224021.P6966119299486103155

/-! ## A224021.P5576594824971017472

`A224024(Δ[A023545(n+1)])`
-/

namespace A224021.P5576594824971017472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (f1 (n + 1) - f1 n).toNat

end

end A224021.P5576594824971017472

/-! ## A224021.P1808054069235434796

`A224024(eq[8, A057728(n+1)])`
-/

namespace A224021.P1808054069235434796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224021.P1808054069235434796

/-!
# A224022: Number of nX6 0..3 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224022, there is no canonical definition to state claims against.
-/

/-! ## A224022.P2495992851973050841

`A224024(A052905(n+3))`
-/

namespace A224022.P2495992851973050841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (A052905 (n + 3)).toNat

end

end A224022.P2495992851973050841

/-! ## A224022.P9672268894072797347

`A224024(eq[3, A219347(n)])`
-/

namespace A224022.P9672268894072797347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224022.P9672268894072797347

/-! ## A224022.P18409893737184176625

`A224024(eq[5, A193592(n)])`
-/

namespace A224022.P18409893737184176625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224022.P18409893737184176625

/-! ## A224022.P5609491986764070234

`A224024(eq[16, A057728(n+1)])`
-/

namespace A224022.P5609491986764070234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224022.P5609491986764070234

/-! ## A224022.P7003932787434649924

`A224024(Δ[Δ[A006504(n+1)]])`
-/

namespace A224022.P7003932787434649924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (f1 (n + 1) - f1 n).toNat

end

end A224022.P7003932787434649924

/-!
# A224023: Number of nX7 0..3 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224023, there is no canonical definition to state claims against.
-/

/-! ## A224023.P7207234492005151921

`A224024(A055999(n+4))`
-/

namespace A224023.P7207234492005151921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (A055999 (n + 4)).toNat

end

end A224023.P7207234492005151921

/-! ## A224023.P8734536413533387833

`A224024(eq[4, A219347(n)])`
-/

namespace A224023.P8734536413533387833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224023.P8734536413533387833

/-! ## A224023.P15977529926262397625

`A224024(eq[6, A193592(n)])`
-/

namespace A224023.P15977529926262397625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224023.P15977529926262397625

/-! ## A224023.P12562188171829290054

`A224024(Δ[A023551(n+2)])`
-/

namespace A224023.P12562188171829290054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (f1 (n + 1) - f1 n).toNat

end

end A224023.P12562188171829290054

/-! ## A224023.P3140628875705098510

`A224024(eq[10, A185782(n+1)])`
-/

namespace A224023.P3140628875705098510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224023.P3140628875705098510

/-!
# A224024: T(n,k)=Number of nXk 0..3 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224024, there is no canonical definition to state claims against.
-/

/-! ## A224024.P16138950818278260041

`A224391(A084192(∑[n]))`
-/

namespace A224024.P16138950818278260041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A224024.P16138950818278260041

/-! ## A224024.P6128183886905112513

`A224391(A084193(∑[n]))`
-/

namespace A224024.P6128183886905112513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A224024.P6128183886905112513

/-! ## A224024.P14520357474196485429

`A224391(A062003(n)+1)`
-/

namespace A224024.P14520357474196485429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (A062003 n + 1).toNat

end

end A224024.P14520357474196485429

/-! ## A224024.P9837793880086594433

`A224391(A004885(n+2))`
-/

namespace A224024.P9837793880086594433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (A004885 (n + 2)).toNat

end

end A224024.P9837793880086594433

/-! ## A224024.P5148523519690748070

`A224391(A004896(n+2))`
-/

namespace A224024.P5148523519690748070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224391 (A004896 (n + 2)).toNat

end

end A224024.P5148523519690748070

/-!
# A224025: Number of 3 X n 0..3 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224025, there is no canonical definition to state claims against.
-/

/-! ## A224025.P4614614090675930493

`A224024(∑[n+2]+4)`
-/

namespace A224025.P4614614090675930493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224025.P4614614090675930493

/-! ## A224025.P13567404923043544614

`A224024(A167614(n+1))*A304042(n)`
-/

namespace A224025.P13567404923043544614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (A167614 (n + 1)).toNat * A304042 n

end

end A224025.P13567404923043544614

/-! ## A224025.P14939457917977133798

`A224024(A167614(n+1))+A070097(n+1)`
-/

namespace A224025.P14939457917977133798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (A167614 (n + 1)).toNat + A070097 (n + 1)

end

end A224025.P14939457917977133798

/-! ## A224025.P15739066482116808270

`A224024(A167614(n+1))%A224026(n+1)`
-/

namespace A224025.P15739066482116808270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224024 (A167614 (n + 1)).toNat) (A224026 (n + 1))

end

end A224025.P15739066482116808270

/-! ## A224025.P9407369994208639184

`lcm(A008836(n+1), A224024(A167614(n+1)))`
-/

namespace A224025.P9407369994208639184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A224024 (A167614 (n + 1)).toNat)

end

end A224025.P9407369994208639184

/-!
# A224026: Number of 4Xn 0..3 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224026, there is no canonical definition to state claims against.
-/

/-! ## A224026.P3388055508703302626

`A224024(A141214(n)+7)`
-/

namespace A224026.P3388055508703302626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (A141214 n + 7).toNat

end

end A224026.P3388055508703302626

/-! ## A224026.P13065503943291452812

`A224024(A052905(n)+9)`
-/

namespace A224026.P13065503943291452812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (A052905 n + 9).toNat

end

end A224026.P13065503943291452812

/-! ## A224026.P16019071260430173161

`A224024(A055999(n)+10)`
-/

namespace A224026.P16019071260430173161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (A055999 n + 10).toNat

end

end A224026.P16019071260430173161

/-! ## A224026.P15236056476087698439

`A224024(Δ[A008778(n)]+6)`
-/

namespace A224026.P15236056476087698439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (f1 (n + 1) - f1 n + 6).toNat

end

end A224026.P15236056476087698439

/-! ## A224026.P14384201339467522846

`A224024(A167614(n+2)+1)`
-/

namespace A224026.P14384201339467522846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (A167614 (n + 2) + 1).toNat

end

end A224026.P14384201339467522846

/-!
# A224027: Number of 5Xn 0..3 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224027, there is no canonical definition to state claims against.
-/

/-! ## A224027.P15661717433847076737

`A224024(A167499(n+3))`
-/

namespace A224027.P15661717433847076737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (A167499 (n + 3)).toNat

end

end A224027.P15661717433847076737

/-! ## A224027.P9889815311221616327

`A224024(A155212(n)+13)`
-/

namespace A224027.P9889815311221616327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (A155212 n + 13).toNat

end

end A224027.P9889815311221616327

/-! ## A224027.P334918757440892678

`A224024(A056000(n)+15)`
-/

namespace A224027.P334918757440892678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (A056000 n + 15).toNat

end

end A224027.P334918757440892678

/-! ## A224027.P16554441646202106745

`A224024(A141214(n+1)+8)`
-/

namespace A224027.P16554441646202106745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (A141214 (n + 1) + 8).toNat

end

end A224027.P16554441646202106745

/-! ## A224027.P6461754127223265281

`A224024(A052905(n+1)+10)`
-/

namespace A224027.P6461754127223265281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (A052905 (n + 1) + 10).toNat

end

end A224027.P6461754127223265281

/-!
# A224028: Number of 6Xn 0..3 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224028, there is no canonical definition to state claims against.
-/

/-! ## A224028.P15668340904560643104

`A224024(A166136(n+4))`
-/

namespace A224028.P15668340904560643104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (A166136 (n + 4)).toNat

end

end A224028.P15668340904560643104

/-! ## A224028.P15268364518640375056

`A224024(Δ[A224039(n+3)])`
-/

namespace A224028.P15268364518640375056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224039 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (f1 (n + 1) - f1 n).toNat

end

end A224028.P15268364518640375056

/-! ## A224028.P4828744218889295908

`A224024(A161680(n+6)+6)`
-/

namespace A224028.P4828744218889295908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (A161680 (n + 6) + 6).toNat

end

end A224028.P4828744218889295908

/-! ## A224028.P270399063795775388

`A224024(eq[7, A131818(n+1)])`
-/

namespace A224028.P270399063795775388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224028.P270399063795775388

/-! ## A224028.P8530603563120449738

`A224024(Δ[Δ[A224040(n+3)]])`
-/

namespace A224028.P8530603563120449738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224040 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (f1 (n + 1) - f1 n).toNat

end

end A224028.P8530603563120449738

/-!
# A224029: Number of 7Xn 0..3 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224029, there is no canonical definition to state claims against.
-/

/-! ## A224029.P8639379714094888354

`A224024(A056119(n)+28)`
-/

namespace A224029.P8639379714094888354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (A056119 n + 28).toNat

end

end A224029.P8639379714094888354

/-! ## A224029.P2569860460892392961

`A224024(eq[11, A066657(n)])`
-/

namespace A224029.P2569860460892392961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224029.P2569860460892392961

/-! ## A224029.P9696683784811358561

`A224024(A167614(n+5)+4)`
-/

namespace A224029.P9696683784811358561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (A167614 (n + 5) + 4).toNat

end

end A224029.P9696683784811358561

/-! ## A224029.P4071352562215712445

`A224024(A000096(n+5)+8)`
-/

namespace A224029.P4071352562215712445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (A000096 (n + 5) + 8).toNat

end

end A224029.P4071352562215712445

/-! ## A224029.P4240284985754092517

`A224024(eq[8, A131818(n+1)])`
-/

namespace A224029.P4240284985754092517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224029.P4240284985754092517

/-!
# A224030: a(n) = |{0

The programs for A224030, there is no canonical definition to state claims against.
-/

/-! ## A224030.P6810111187599360501

`A134451(xor(A003065(n), A348772(n+1)))`
-/

namespace A224030.P6810111187599360501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (Int.xor (A003065 n) (A348772 (n + 1))).toNat

end

end A224030.P6810111187599360501

/-! ## A224030.P18146410541124025441

`A134451(A251704(n)-A353970(n))`
-/

namespace A224030.P18146410541124025441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A251704 n - A353970 n).toNat

end

end A224030.P18146410541124025441

/-! ## A224030.P8014587655344845124

`A134451(xor(A251704(n), A353970(n)))`
-/

namespace A224030.P8014587655344845124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (Int.xor (A251704 n) (A353970 n)).toNat

end

end A224030.P8014587655344845124

/-!
# A224031: Number of connected components over all simple unlabeled graphs with n nodes.

The programs for A224031, there is no canonical definition to state claims against.
-/

/-! ## A224031.P11512908342053486558

`A064458(A005651(n))+2^n-1`
-/

namespace A224031.P11512908342053486558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 (A005651 n).toNat + ((2 ^ n : ℤ) - 1)

end

end A224031.P11512908342053486558

/-! ## A224031.P6494415289429435064

`A265705(A121380(n+1)+A073985(n+1))`
-/

namespace A224031.P6494415289429435064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265705 (A121380 (n + 1) + A073985 (n + 1)).toNat

end

end A224031.P6494415289429435064

/-! ## A224031.P8928680581684576555

`A123621(A197433(2*n)+A065619(n+1))`
-/

namespace A224031.P8928680581684576555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123621 (A197433 (2 * n) + A065619 (n + 1)).toNat

end

end A224031.P8928680581684576555

/-!
# A224032: Number of n X n 0..1 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A224032, there is no canonical definition to state claims against.
-/

/-! ## A224032.P1147500132196671744

`A224038((n+1)²+n²)`
-/

namespace A224032.P1147500132196671744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 ((n + 1) ^ 2 + n ^ 2)

end

end A224032.P1147500132196671744

/-! ## A224032.P15330516924391561249

`record[gcd(A049581(n), A224038(n+1))]`
-/

namespace A224032.P15330516924391561249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A224038 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224032.P15330516924391561249

/-! ## A224032.P2766139384140538025

`gcd(A000038(n), A224038(A001844(n)))`
-/

namespace A224032.P2766139384140538025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A224038 (A001844 n).toNat)

end

end A224032.P2766139384140538025

/-! ## A224032.P6249980929755701241

`A224038(A001844(n))+A000007(n+1)`
-/

namespace A224032.P6249980929755701241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A001844 n).toNat + A000007 (n + 1)

end

end A224032.P6249980929755701241

/-! ## A224032.P17396849236630703453

`A224038(A001844(n))+A000035(2*n)`
-/

namespace A224032.P17396849236630703453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A001844 n).toNat + A000035 (2 * n)

end

end A224032.P17396849236630703453

/-!
# A224033: Number of n X 3 0..1 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A224033, the canonical program `A224033.P15196988162262996000` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224033 has offset 1).

The definition of A224033 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224033.P15196988162262996000

`4*a(n-1)-3*a(n-2)-a(n-3)+2*a(n-5)` with `a(0)=4, a(1)=13, a(2)=37, a(3)=105, a(4)=298`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A224033

/-- `4*a(n-1)-3*a(n-2)-a(n-3)+2*a(n-5)` -/
def P15196988162262996000.Spec : Prop :=
  ∀ n, P15196988162262996000.a n = A224033 (n + 1)

theorem P15196988162262996000.correct : P15196988162262996000.Spec := by
  intro n
  simp only [A224033, Nat.add_sub_cancel]

end A224033

/-! ## A224033.P3911192194523040294

`A224038(∑[n+3]+1)`
-/

namespace A224033.P3911192194523040294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224033.P3911192194523040294

namespace A224033

/-- `A224038(∑[n+3]+1)` -/
def P3911192194523040294.Spec : Prop :=
  ∀ n, P3911192194523040294.a n = A224033 (n + 1)

end A224033

/-! ## A224033.P9842739686240788815

`A020985(n)²*A224038(A034856(n+2))`
-/

namespace A224033.P9842739686240788815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A224038 (A034856 (n + 2)).toNat

end

end A224033.P9842739686240788815

namespace A224033

/-- `A020985(n)²*A224038(A034856(n+2))` -/
def P9842739686240788815.Spec : Prop :=
  ∀ n, P9842739686240788815.a n = A224033 (n + 1)

end A224033

/-! ## A224033.P5717808313579053920

`A224038(A034856(n+2))+A000007(n+1)`
-/

namespace A224033.P5717808313579053920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A034856 (n + 2)).toNat + A000007 (n + 1)

end

end A224033.P5717808313579053920

namespace A224033

/-- `A224038(A034856(n+2))+A000007(n+1)` -/
def P5717808313579053920.Spec : Prop :=
  ∀ n, P5717808313579053920.a n = A224033 (n + 1)

end A224033

/-! ## A224033.P14985073188037682423

`A000034(2*n)*A224038(A034856(n+2))`
-/

namespace A224033.P14985073188037682423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A224038 (A034856 (n + 2)).toNat

end

end A224033.P14985073188037682423

namespace A224033

/-- `A000034(2*n)*A224038(A034856(n+2))` -/
def P14985073188037682423.Spec : Prop :=
  ∀ n, P14985073188037682423.a n = A224033 (n + 1)

end A224033

/-!
# A224034: Number of nX4 0..1 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A224034, there is no canonical definition to state claims against.
-/

/-! ## A224034.P2593100313099276737

`A224038(A027379(n+2))`
-/

namespace A224034.P2593100313099276737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A027379 (n + 2)).toNat

end

end A224034.P2593100313099276737

/-! ## A224034.P35784365725364333

`A224038(A052905(n+1)+2)`
-/

namespace A224034.P35784365725364333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A052905 (n + 1) + 2).toNat

end

end A224034.P35784365725364333

/-! ## A224034.P8138003524371370696

`A224038(A034856(n+3)-1)`
-/

namespace A224034.P8138003524371370696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A034856 (n + 3) - 1).toNat

end

end A224034.P8138003524371370696

/-! ## A224034.P11907837960980616998

`A224038(A000124(n+4)-4)`
-/

namespace A224034.P11907837960980616998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A000124 (n + 4) - 4).toNat

end

end A224034.P11907837960980616998

/-! ## A224034.P2139833095576752630

`A224038(Δ[A005586(n+1)]-2)`
-/

namespace A224034.P2139833095576752630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (f1 (n + 1) - f1 n - 2).toNat

end

end A224034.P2139833095576752630

/-!
# A224035: Number of n X 5 0..1 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A224035, there is no canonical definition to state claims against.
-/

/-! ## A224035.P12024047986079774074

`A224038(A046691(n+3))`
-/

namespace A224035.P12024047986079774074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A046691 (n + 3)).toNat

end

end A224035.P12024047986079774074

/-! ## A224035.P11895942179756088371

`A224038(Δ[A023545(n+1)])`
-/

namespace A224035.P11895942179756088371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (f1 (n + 1) - f1 n).toNat

end

end A224035.P11895942179756088371

/-! ## A224035.P14217817979050646971

`A224038(A000124(n+5)-5)`
-/

namespace A224035.P14217817979050646971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A000124 (n + 5) - 5).toNat

end

end A224035.P14217817979050646971

/-! ## A224035.P7284187984907188038

`A224038(A027379(n+2)+n+4)`
-/

namespace A224035.P7284187984907188038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A027379 (n + 2) + (n + 4 : ℤ)).toNat

end

end A224035.P7284187984907188038

/-! ## A224035.P6372638835058169028

`A224038(A034856(n+3)+n+3)`
-/

namespace A224035.P6372638835058169028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A034856 (n + 3) + (n + 3 : ℤ)).toNat

end

end A224035.P6372638835058169028

/-!
# A224036: Number of nX6 0..1 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A224036, there is no canonical definition to state claims against.
-/

/-! ## A224036.P1103462566988633447

`A224038(A034856(n+5)-3)`
-/

namespace A224036.P1103462566988633447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A034856 (n + 5) - 3).toNat

end

end A224036.P1103462566988633447

/-! ## A224036.P13695938088974615125

`A224038(A000096(n+5)-4)`
-/

namespace A224036.P13695938088974615125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A000096 (n + 5) - 4).toNat

end

end A224036.P13695938088974615125

/-! ## A224036.P4417941344039976889

`A224038(A000217(n+6)-5)`
-/

namespace A224036.P4417941344039976889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A000217 (n + 6) - 5).toNat

end

end A224036.P4417941344039976889

/-! ## A224036.P3897421913712171977

`A224038(A000124(n+6)-6)`
-/

namespace A224036.P3897421913712171977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A000124 (n + 6) - 6).toNat

end

end A224036.P3897421913712171977

/-! ## A224036.P11340426278478309410

`A224038(Δ[Δ[A006504(n+1)]])`
-/

namespace A224036.P11340426278478309410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (f1 (n + 1) - f1 n).toNat

end

end A224036.P11340426278478309410

/-!
# A224037: Number of nX7 0..1 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A224037, there is no canonical definition to state claims against.
-/

/-! ## A224037.P15681106590648264487

`A224038(A055999(n+4))`
-/

namespace A224037.P15681106590648264487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A055999 (n + 4)).toNat

end

end A224037.P15681106590648264487

/-! ## A224037.P11939670039213476158

`A224038(A052905(n+4)-1)`
-/

namespace A224037.P11939670039213476158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A052905 (n + 4) - 1).toNat

end

end A224037.P11939670039213476158

/-! ## A224037.P17421053941673621766

`A224038(A000124(n+7)-7)`
-/

namespace A224037.P17421053941673621766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A000124 (n + 7) - 7).toNat

end

end A224037.P17421053941673621766

/-! ## A224037.P11792218917654932012

`A224038(A000096(n+5)+n+2)`
-/

namespace A224037.P11792218917654932012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A224037.P11792218917654932012

/-! ## A224037.P16586150802082017198

`A224038(A034856(n+7)-(n+12))`
-/

namespace A224037.P16586150802082017198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A034856 (n + 7) - (n + 12 : ℤ)).toNat

end

end A224037.P16586150802082017198

/-!
# A224039: Number of 3 X n 0..1 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A224039, the canonical program `A224039.P3416921023407590360` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224039 has offset 1).

The definition of A224039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224039.P9305330672353688261

`∑[∑[a(n-1)+1]]` with `a(0)=8, a(1)=5, a(2)=3, a(3)=5`
-/

namespace A224039.P9305330672353688261
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [8, 5, 3, 5] fun n f2 =>
  f2 (n - 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224039.P9305330672353688261

namespace A224039

/-- `∑[∑[a(n-1)+1]]` -/
def P9305330672353688261.Spec : Prop :=
  ∀ n, (P9305330672353688261.a n : ℤ) = A224039 (n + 1)

end A224039

/-! ## A224039.P16103766722308520598

`∑[∑[n+2]+7]-C(2, n+2)`
-/

namespace A224039.P16103766722308520598
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

end

end A224039.P16103766722308520598

namespace A224039

/-- `∑[∑[n+2]+7]-C(2, n+2)` -/
def P16103766722308520598.Spec : Prop :=
  ∀ n, P16103766722308520598.a n = A224039 (n + 1)

end A224039

/-! ## A224039.P3416921023407590360

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=8, a(1)=21, a(2)=37, a(3)=58, a(4)=85`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A224039

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P3416921023407590360.Spec : Prop :=
  ∀ n, P3416921023407590360.a n = A224039 (n + 1)

theorem P3416921023407590360.correct : P3416921023407590360.Spec := by
  intro n
  simp only [A224039, Nat.add_sub_cancel]

end A224039

/-! ## A224039.P13830098815234557132

`A253145(n)+∑[A167487(n)]`
-/

namespace A224039.P13830098815234557132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224039.P13830098815234557132

namespace A224039

/-- `A253145(n)+∑[A167487(n)]` -/
def P13830098815234557132.Spec : Prop :=
  ∀ n, P13830098815234557132.a n = A224039 (n + 1)

end A224039

/-! ## A224039.P11762593595904415936

`A023551(n+1)-A134479(n)`
-/

namespace A224039.P11762593595904415936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1) - A134479 n

end

end A224039.P11762593595904415936

namespace A224039

/-- `A023551(n+1)-A134479(n)` -/
def P11762593595904415936.Spec : Prop :=
  ∀ n, P11762593595904415936.a n = A224039 (n + 1)

end A224039

/-! ## A224039.P2000791059376072103

`A224134(n+1)-A267370(n)`
-/

namespace A224039.P2000791059376072103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224134 (n + 1) - A267370 n

end

end A224039.P2000791059376072103

namespace A224039

/-- `A224134(n+1)-A267370(n)` -/
def P2000791059376072103.Spec : Prop :=
  ∀ n, P2000791059376072103.a n = A224039 (n + 1)

end A224039

/-! ## A224039.P793560422115629488

`A323221(n+1)-A253909(n)`
-/

namespace A224039.P793560422115629488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323221 (n + 1) - A253909 n

end

end A224039.P793560422115629488

namespace A224039

/-- `A323221(n+1)-A253909(n)` -/
def P793560422115629488.Spec : Prop :=
  ∀ n, P793560422115629488.a n = A224039 (n + 1)

end A224039

/-! ## A224039.P4649195264092692719

`A103517(n)+∑[A020742(n)+∑[n]]`
-/

namespace A224039.P4649195264092692719
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224039.P4649195264092692719

namespace A224039

/-- `A103517(n)+∑[A020742(n)+∑[n]]` -/
def P4649195264092692719.Spec : Prop :=
  ∀ n, P4649195264092692719.a n = A224039 (n + 1)

end A224039

/-! ## A224039.P11553628234831492252

`A103517(n)+∑[A166136(n+1)-2]`
-/

namespace A224039.P11553628234831492252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166136 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224039.P11553628234831492252

namespace A224039

/-- `A103517(n)+∑[A166136(n+1)-2]` -/
def P11553628234831492252.Spec : Prop :=
  ∀ n, P11553628234831492252.a n = A224039 (n + 1)

end A224039

/-! ## A224039.P10476912508328472244

`A134869(n+1)+∑[A134869(n+1)+6]`
-/

namespace A224039.P10476912508328472244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134869 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134869 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224039.P10476912508328472244

namespace A224039

/-- `A134869(n+1)+∑[A134869(n+1)+6]` -/
def P10476912508328472244.Spec : Prop :=
  ∀ n, P10476912508328472244.a n = A224039 (n + 1)

end A224039

/-! ## A224039.P11057754567450410106

`A017353(n)+∑[A004275(n)+A000124(n)]`
-/

namespace A224039.P11057754567450410106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n + A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224039.P11057754567450410106

namespace A224039

/-- `A017353(n)+∑[A004275(n)+A000124(n)]` -/
def P11057754567450410106.Spec : Prop :=
  ∀ n, P11057754567450410106.a n = A224039 (n + 1)

end A224039

/-! ## A224039.P1631999221895139031

`A014684(3*(n+1))+∑[A167614(n+1)]`
-/

namespace A224039.P1631999221895139031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (3 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224039.P1631999221895139031

namespace A224039

/-- `A014684(3*(n+1))+∑[A167614(n+1)]` -/
def P1631999221895139031.Spec : Prop :=
  ∀ n, P1631999221895139031.a n = A224039 (n + 1)

end A224039

/-! ## A224039.P13497048242898362621

`A255993(n+1)+A004442(A008574(n))`
-/

namespace A224039.P13497048242898362621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255993 (n + 1) + A004442 (A008574 n).toNat

end

end A224039.P13497048242898362621

namespace A224039

/-- `A255993(n+1)+A004442(A008574(n))` -/
def P13497048242898362621.Spec : Prop :=
  ∀ n, P13497048242898362621.a n = A224039 (n + 1)

end A224039

/-! ## A224039.P3143691469371696571

`A008778(n)+Δ[A181385(A016825(n))]`
-/

namespace A224039.P3143691469371696571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n + (f1 (n + 1) - f1 n)

end

end A224039.P3143691469371696571

namespace A224039

/-- `A008778(n)+Δ[A181385(A016825(n))]` -/
def P3143691469371696571.Spec : Prop :=
  ∀ n, P3143691469371696571.a n = A224039 (n + 1)

end A224039

/-! ## A224039.P16669273770053820380

`∑[A166136(n+1)]-A062110(∑[n])`
-/

namespace A224039.P16669273770053820380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166136 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A062110 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A224039.P16669273770053820380

namespace A224039

/-- `∑[A166136(n+1)]-A062110(∑[n])` -/
def P16669273770053820380.Spec : Prop :=
  ∀ n, P16669273770053820380.a n = A224039 (n + 1)

end A224039

/-!
# A224040: Number of 4 X n 0..1 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A224040, the canonical program `A224040.P5043865056085824540` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224040 has offset 1).

The definition of A224040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224040.P5043865056085824540

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=16, a(1)=55, a(2)=105, a(3)=168, a(4)=252, a(5)=363, a(6)=508`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A224040

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P5043865056085824540.Spec : Prop :=
  ∀ n, P5043865056085824540.a n = A224040 (n + 1)

theorem P5043865056085824540.correct : P5043865056085824540.Spec := by
  intro n
  simp only [A224040, Nat.add_sub_cancel]

end A224040

/-! ## A224040.P10032117593121431099

`A224038(A145018(n+4))`
-/

namespace A224040.P10032117593121431099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A145018 (n + 4)).toNat

end

end A224040.P10032117593121431099

namespace A224040

/-- `A224038(A145018(n+4))` -/
def P10032117593121431099.Spec : Prop :=
  ∀ n, P10032117593121431099.a n = A224040 (n + 1)

end A224040

/-! ## A224040.P746343258748409495

`A224038(A052905(n)+9)`
-/

namespace A224040.P746343258748409495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A052905 n + 9).toNat

end

end A224040.P746343258748409495

namespace A224040

/-- `A224038(A052905(n)+9)` -/
def P746343258748409495.Spec : Prop :=
  ∀ n, P746343258748409495.a n = A224040 (n + 1)

end A224040

/-! ## A224040.P10197521058969953754

`A224038(A055999(n)+10)`
-/

namespace A224040.P10197521058969953754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A055999 n + 10).toNat

end

end A224040.P10197521058969953754

namespace A224040

/-- `A224038(A055999(n)+10)` -/
def P10197521058969953754.Spec : Prop :=
  ∀ n, P10197521058969953754.a n = A224040 (n + 1)

end A224040

/-! ## A224040.P3204531797726276409

`A224038(A167614(n+2)+1)`
-/

namespace A224040.P3204531797726276409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A167614 (n + 2) + 1).toNat

end

end A224040.P3204531797726276409

namespace A224040

/-- `A224038(A167614(n+2)+1)` -/
def P3204531797726276409.Spec : Prop :=
  ∀ n, P3204531797726276409.a n = A224040 (n + 1)

end A224040

/-!
# A224041: Number of 5 X n 0..1 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A224041, there is no canonical definition to state claims against.
-/

/-! ## A224041.P8460070239315607520

`A224038(A167499(n+3))`
-/

namespace A224041.P8460070239315607520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A167499 (n + 3)).toNat

end

end A224041.P8460070239315607520

/-! ## A224041.P13603801951892379282

`A224038(A167614(n+3)+2)`
-/

namespace A224041.P13603801951892379282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A167614 (n + 3) + 2).toNat

end

end A224041.P13603801951892379282

/-! ## A224041.P589912022640985556

`A224038(A000124(n+4)+4)`
-/

namespace A224041.P589912022640985556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A000124 (n + 4) + 4).toNat

end

end A224041.P589912022640985556

/-! ## A224041.P8203643926624445137

`A224038(A027379(n+2)+8)`
-/

namespace A224041.P8203643926624445137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A027379 (n + 2) + 8).toNat

end

end A224041.P8203643926624445137

/-! ## A224041.P14825539223207706316

`A224038(A034856(n+2)+n+11)`
-/

namespace A224041.P14825539223207706316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A034856 (n + 2) + (n + 11 : ℤ)).toNat

end

end A224041.P14825539223207706316

/-!
# A224042: Number of 6 X n 0..1 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A224042, there is no canonical definition to state claims against.
-/

/-! ## A224042.P16181989701336987038

`A224038(A167499(n+4)+1)`
-/

namespace A224042.P16181989701336987038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A167499 (n + 4) + 1).toNat

end

end A224042.P16181989701336987038

/-! ## A224042.P7708505501955112417

`A224038(A167614(n+4)+3)`
-/

namespace A224042.P7708505501955112417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A167614 (n + 4) + 3).toNat

end

end A224042.P7708505501955112417

/-! ## A224042.P10836592570385190031

`A224038(A000124(n+5)+5)`
-/

namespace A224042.P10836592570385190031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A000124 (n + 5) + 5).toNat

end

end A224042.P10836592570385190031

/-! ## A224042.P3148187512231166735

`A224038(A034856(n+4)+8)`
-/

namespace A224042.P3148187512231166735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A034856 (n + 4) + 8).toNat

end

end A224042.P3148187512231166735

/-! ## A224042.P5018466499274272611

`A224038(A001489(2*(n+3))+A000096(n+6))`
-/

namespace A224042.P5018466499274272611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A001489 (2 * (n + 3)) + A000096 (n + 6)).toNat

end

end A224042.P5018466499274272611

/-!
# A224043: Number of 7 X n 0..1 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A224043, there is no canonical definition to state claims against.
-/

/-! ## A224043.P2285506916394663306

`A224038(A302537(n)+27)`
-/

namespace A224043.P2285506916394663306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A302537 n + 27).toNat

end

end A224043.P2285506916394663306

/-! ## A224043.P2914529055257073643

`A224038(A167499(n+5)+2)`
-/

namespace A224043.P2914529055257073643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A167499 (n + 5) + 2).toNat

end

end A224043.P2914529055257073643

/-! ## A224043.P1041075888505297882

`A224038(A167614(n+5)+4)`
-/

namespace A224043.P1041075888505297882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A167614 (n + 5) + 4).toNat

end

end A224043.P1041075888505297882

/-! ## A224043.P6618266567899701483

`A224038(A000124(n+6)+6)`
-/

namespace A224043.P6618266567899701483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A000124 (n + 6) + 6).toNat

end

end A224043.P6618266567899701483

/-! ## A224043.P14004815423167987961

`A224038(A000096(n+5)+8)`
-/

namespace A224043.P14004815423167987961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A000096 (n + 5) + 8).toNat

end

end A224043.P14004815423167987961

/-!
# A224044: Number of n X n 0..3 arrays with rows and columns unimodal and antidiagonals nondecreasing.

The programs for A224044, there is no canonical definition to state claims against.
-/

/-! ## A224044.P1607876773141195390

`A224050(∑[4*n]+1)`
-/

namespace A224044.P1607876773141195390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224050 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224044.P1607876773141195390

/-! ## A224044.P2014151572178206525

`A224050(A001844(n))+char[11]`
-/

namespace A224044.P2014151572178206525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224050 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224044.P2014151572178206525

/-! ## A224044.P9022765079227726941

`record[A003982(n)*A224050(n+1)]`
-/

namespace A224044.P9022765079227726941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A224050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224044.P9022765079227726941

/-! ## A224044.P12719998792468034824

`A224050(n²+(n+1)²)^A046534(n+1)`
-/

namespace A224044.P12719998792468034824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224050 (n ^ 2 + (n + 1) ^ 2) : ℚ) ^ (A046534 (n + 1) : ℤ)

end

end A224044.P12719998792468034824

/-! ## A224044.P3438240896542685450

`A007318(∑[n])*A224050(A001844(n))`
-/

namespace A224044.P3438240896542685450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A224050 (A001844 n).toNat

end

end A224044.P3438240896542685450

/-!
# A224045: Number of nX3 0..3 arrays with rows and columns unimodal and antidiagonals nondecreasing.

The programs for A224045, there is no canonical definition to state claims against.
-/

/-! ## A224045.P3505774690595443091

`A224050(∑[n+2]+4)`
-/

namespace A224045.P3505774690595443091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224050 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224045.P3505774690595443091

/-! ## A224045.P12806013433467191658

`and(-1, A224050(A167614(n+1)))`
-/

namespace A224045.P12806013433467191658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A224050 (A167614 (n + 1)).toNat)

end

end A224045.P12806013433467191658

/-! ## A224045.P4067267580281452942

`A224050(A167499(n)+n)+char[18]`
-/

namespace A224045.P4067267580281452942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224050 (A167499 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224045.P4067267580281452942

/-! ## A224045.P10318415741687998317

`A224050(A167614(n+1))+A011734(n)`
-/

namespace A224045.P10318415741687998317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224050 (A167614 (n + 1)).toNat + A011734 n

end

end A224045.P10318415741687998317

/-! ## A224045.P16008602904926010788

`A224050(A167614(n+1))+A178798(n)`
-/

namespace A224045.P16008602904926010788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224050 (A167614 (n + 1)).toNat + A178798 n

end

end A224045.P16008602904926010788

/-!
# A224046: Number of n X 4 0..3 arrays with rows and columns unimodal and antidiagonals nondecreasing.

The programs for A224046, there is no canonical definition to state claims against.
-/

/-! ## A224046.P10537074172645949267

`A224050(∑[n+3]+7)`
-/

namespace A224046.P10537074172645949267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224050 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A224046.P10537074172645949267

/-! ## A224046.P1660567065073154836

`xor(1, xor(1, A224050(A052905(n)+9)))`
-/

namespace A224046.P1660567065073154836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A224050 (A052905 n + 9).toNat))

end

end A224046.P1660567065073154836

/-! ## A224046.P3823378623980584913

`A224050(A000124(n+3)+3)+char[15]`
-/

namespace A224046.P3823378623980584913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224050 (A000124 (n + 3) + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224046.P3823378623980584913

/-! ## A224046.P12460844545229335498

`A007318(C(2, n))*A224050(A052905(n)+9)`
-/

namespace A224046.P12460844545229335498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A224050 (A052905 n + 9).toNat

end

end A224046.P12460844545229335498

/-! ## A224046.P5782185549009362235

`A007318(floor(n/4))*A224050(A052905(n)+9)`
-/

namespace A224046.P5782185549009362235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 4⌋.toNat * A224050 (A052905 n + 9).toNat

end

end A224046.P5782185549009362235

/-!
# A224047: Number of nX5 0..3 arrays with rows and columns unimodal and antidiagonals nondecreasing.

The programs for A224047, there is no canonical definition to state claims against.
-/

/-! ## A224047.P8085465546523305170

`A224050(∑[n+4]+11)`
-/

namespace A224047.P8085465546523305170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224050 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A224047.P8085465546523305170

/-!
# A224048: Number of nX6 0..3 arrays with rows and columns unimodal and antidiagonals nondecreasing.

The programs for A224048, there is no canonical definition to state claims against.
-/

/-! ## A224048.P13443371824438438126

`A224050(A056115(n)+21)`
-/

namespace A224048.P13443371824438438126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224050 (A056115 n + 21).toNat

end

end A224048.P13443371824438438126

/-! ## A224048.P191118184284882782

`A224050(Δ[A224039(n+3)])`
-/

namespace A224048.P191118184284882782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224039 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224050 (f1 (n + 1) - f1 n).toNat

end

end A224048.P191118184284882782

/-! ## A224048.P10257684440179541691

`A224050(A167499(n+4)+1)`
-/

namespace A224048.P10257684440179541691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224050 (A167499 (n + 4) + 1).toNat

end

end A224048.P10257684440179541691

/-! ## A224048.P3200699610055472324

`A224050(A167614(n+4)+3)`
-/

namespace A224048.P3200699610055472324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224050 (A167614 (n + 4) + 3).toNat

end

end A224048.P3200699610055472324

/-! ## A224048.P16559890431877282648

`A224050(A000217(n+5)+6)`
-/

namespace A224048.P16559890431877282648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224050 (A000217 (n + 5) + 6).toNat

end

end A224048.P16559890431877282648

/-!
# A224049: Number of nX7 0..3 arrays with rows and columns unimodal and antidiagonals nondecreasing.

The programs for A224049, there is no canonical definition to state claims against.
-/

/-! ## A224049.P5278651267782972246

`A224050(A167487(n+5))`
-/

namespace A224049.P5278651267782972246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224050 (A167487 (n + 5)).toNat

end

end A224049.P5278651267782972246

/-! ## A224049.P4235764885624046637

`A224050(A302537(n)+27)`
-/

namespace A224049.P4235764885624046637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224050 (A302537 n + 27).toNat

end

end A224049.P4235764885624046637

/-! ## A224049.P10140783544997761871

`A224050(A056119(n)+28)`
-/

namespace A224049.P10140783544997761871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224050 (A056119 n + 28).toNat

end

end A224049.P10140783544997761871

/-! ## A224049.P10107196323731017090

`A224050(eq[11, A066657(n)])`
-/

namespace A224049.P10107196323731017090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224050 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224049.P10107196323731017090

/-! ## A224049.P6510614687244881820

`A224050(A166136(n+5)+1)`
-/

namespace A224049.P6510614687244881820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224050 (A166136 (n + 5) + 1).toNat

end

end A224049.P6510614687244881820

/-!
# A224050: T(n,k)=Number of nXk 0..3 arrays with rows and columns unimodal and antidiagonals nondecreasing.

The programs for A224050, there is no canonical definition to state claims against.
-/

/-! ## A224050.P6096862474569976821

`∑{e}[3^(n+1), A224064(#)]`
-/

namespace A224050.P6096862474569976821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A224064 (Nat.factorization (f1 n) p)

end

end A224050.P6096862474569976821

/-! ## A224050.P5778646635826352575

`A224064(A084192(∑[n]))`
-/

namespace A224050.P5778646635826352575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224064 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A224050.P5778646635826352575

/-! ## A224050.P6840740720295851008

`A224064(A084193(∑[n]))`
-/

namespace A224050.P6840740720295851008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224064 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A224050.P6840740720295851008

/-! ## A224050.P16803755692844455882

`A224064(A193897(∑[n]))`
-/

namespace A224050.P16803755692844455882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224064 (A193897 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A224050.P16803755692844455882

/-! ## A224050.P18305950110592701789

`A224064(A043317(n+1))`
-/

namespace A224050.P18305950110592701789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224064 (A043317 (n + 1)).toNat

end

end A224050.P18305950110592701789

/-!
# A224051: Number of n X n 0..2 arrays with rows and columns unimodal and antidiagonals nondecreasing.

The programs for A224051, there is no canonical definition to state claims against.
-/

/-! ## A224051.P11616663644160579615

`A224057(∑[4*n]+1)`
-/

namespace A224051.P11616663644160579615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224051.P11616663644160579615

/-! ## A224051.P11974973709784923677

`record[A224057(Δ[A235355(n)])]`
-/

namespace A224051.P11974973709784923677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224051.P11974973709784923677

/-! ## A224051.P1729096110693309517

`and(-1, A224057(A001844(n)))`
-/

namespace A224051.P1729096110693309517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A224057 (A001844 n).toNat)

end

end A224051.P1729096110693309517

/-! ## A224051.P14658033921151932284

`record[A224057(A330613(n+1))]`
-/

namespace A224051.P14658033921151932284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224051.P14658033921151932284

/-! ## A224051.P2699410291215705661

`record[A003982(n)*A224057(n+1)]`
-/

namespace A224051.P2699410291215705661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A224057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224051.P2699410291215705661

/-!
# A224052: Number of nX3 0..2 arrays with rows and columns unimodal and antidiagonals nondecreasing.

The programs for A224052, there is no canonical definition to state claims against.
-/

/-! ## A224052.P2898002542474811001

`A224057(∑[n+2]+4)`
-/

namespace A224052.P2898002542474811001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224052.P2898002542474811001

/-! ## A224052.P1406120821159840658

`A224057(A167614(n+1))+char[32]`
-/

namespace A224052.P1406120821159840658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224052.P1406120821159840658

/-! ## A224052.P13161189813644160603

`A326685(n)+A224057(A167614(n+1))`
-/

namespace A224052.P13161189813644160603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326685 n + A224057 (A167614 (n + 1)).toNat

end

end A224052.P13161189813644160603

/-! ## A224052.P12090329622260191879

`A224057(A167614(n+1))%A017466(n)`
-/

namespace A224052.P12090329622260191879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224057 (A167614 (n + 1)).toNat) (A017466 n)

end

end A224052.P12090329622260191879

/-! ## A224052.P2926713633013242517

`lcm(A033999(n), A224057(A167614(n+1)))`
-/

namespace A224052.P2926713633013242517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A224057 (A167614 (n + 1)).toNat)

end

end A224052.P2926713633013242517

/-!
# A224053: Number of n X 4 0..2 arrays with rows and columns unimodal and antidiagonals nondecreasing.

The programs for A224053, there is no canonical definition to state claims against.
-/

/-! ## A224053.P13286272621020201732

`A224057(∑[n+3]+7)`
-/

namespace A224053.P13286272621020201732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A224053.P13286272621020201732

/-! ## A224053.P2325810954165583910

`A224057(A052905(n)+9)+char[17]`
-/

namespace A224053.P2325810954165583910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224053.P2325810954165583910

/-! ## A224053.P3033758880513586857

`A007318(C(2, n))*A224057(A052905(n)+9)`
-/

namespace A224053.P3033758880513586857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A224057 (A052905 n + 9).toNat

end

end A224053.P3033758880513586857

/-! ## A224053.P9031156555174350442

`A000041(C(2, n+2))*A224057(A052905(n)+9)`
-/

namespace A224053.P9031156555174350442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A224057 (A052905 n + 9).toNat

end

end A224053.P9031156555174350442

/-! ## A224053.P15274864559102658285

`gcd(A008683(8*n+4), A224057(A052905(n)+9))`
-/

namespace A224053.P15274864559102658285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (8 * n + 4)) (A224057 (A052905 n + 9).toNat)

end

end A224053.P15274864559102658285

/-!
# A224054: Number of nX5 0..2 arrays with rows and columns unimodal and antidiagonals nondecreasing.

The programs for A224054, there is no canonical definition to state claims against.
-/

/-! ## A224054.P8835346829549700754

`A224057(A167499(n+3))`
-/

namespace A224054.P8835346829549700754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (A167499 (n + 3)).toNat

end

end A224054.P8835346829549700754

/-! ## A224054.P14068492581175840381

`A224057(A155212(n)+13)`
-/

namespace A224054.P14068492581175840381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (A155212 n + 13).toNat

end

end A224054.P14068492581175840381

/-! ## A224054.P1546936521640249040

`A224057(A056000(n)+15)`
-/

namespace A224054.P1546936521640249040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (A056000 n + 15).toNat

end

end A224054.P1546936521640249040

/-! ## A224054.P4021717596136947246

`A224057(eq[7, A066657(n)])`
-/

namespace A224054.P4021717596136947246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224054.P4021717596136947246

/-! ## A224054.P122497940540261614

`A224057(A167614(n+3)+2)`
-/

namespace A224054.P122497940540261614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (A167614 (n + 3) + 2).toNat

end

end A224054.P122497940540261614

/-!
# A224055: Number of nX6 0..2 arrays with rows and columns unimodal and antidiagonals nondecreasing.

The programs for A224055, there is no canonical definition to state claims against.
-/

/-! ## A224055.P6899332823902549487

`A224057(A056115(n)+21)`
-/

namespace A224055.P6899332823902549487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (A056115 n + 21).toNat

end

end A224055.P6899332823902549487

/-! ## A224055.P13953352404703022251

`A224057(Δ[A224039(n+3)])`
-/

namespace A224055.P13953352404703022251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224039 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (f1 (n + 1) - f1 n).toNat

end

end A224055.P13953352404703022251

/-! ## A224055.P4160981960239779215

`A224057(A167499(n+4)+1)`
-/

namespace A224055.P4160981960239779215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (A167499 (n + 4) + 1).toNat

end

end A224055.P4160981960239779215

/-! ## A224055.P2868772694237932971

`A224057(A167614(n+4)+3)`
-/

namespace A224055.P2868772694237932971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (A167614 (n + 4) + 3).toNat

end

end A224055.P2868772694237932971

/-! ## A224055.P3083923416246463530

`A224057(A000124(n+5)+5)`
-/

namespace A224055.P3083923416246463530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (A000124 (n + 5) + 5).toNat

end

end A224055.P3083923416246463530

/-!
# A224056: Number of nX7 0..2 arrays with rows and columns unimodal and antidiagonals nondecreasing.

The programs for A224056, there is no canonical definition to state claims against.
-/

/-! ## A224056.P4311205176111866210

`A224057(A056119(n)+28)`
-/

namespace A224056.P4311205176111866210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (A056119 n + 28).toNat

end

end A224056.P4311205176111866210

/-! ## A224056.P5947729323760841604

`A224057(eq[11, A066657(n)])`
-/

namespace A224056.P5947729323760841604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224056.P5947729323760841604

/-! ## A224056.P1131831060668166211

`A224057(A167614(n+5)+4)`
-/

namespace A224056.P1131831060668166211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (A167614 (n + 5) + 4).toNat

end

end A224056.P1131831060668166211

/-! ## A224056.P15961688953851806371

`A224057(A000124(n+6)+6)`
-/

namespace A224056.P15961688953851806371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (A000124 (n + 6) + 6).toNat

end

end A224056.P15961688953851806371

/-! ## A224056.P12138342415156969916

`A224057(A141214(n+3)+10)`
-/

namespace A224056.P12138342415156969916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (A141214 (n + 3) + 10).toNat

end

end A224056.P12138342415156969916

/-!
# A224058: Number of nX2 0..3 arrays with rows, columns and antidiagonals unimodal and diagonals nondecreasing.

The programs for A224058, there is no canonical definition to state claims against.
-/

/-! ## A224058.P11464248087111033035

`A224204(∑[n+1]+2)`
-/

namespace A224058.P11464248087111033035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A224058.P11464248087111033035

/-! ## A224058.P4902008593461642092

`record[gcd(A025581(n), A224204(n+3))]`
-/

namespace A224058.P4902008593461642092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A224204 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224058.P4902008593461642092

/-! ## A224058.P10348469943511088725

`A224281(∑[n+1]+2)`
-/

namespace A224058.P10348469943511088725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224281 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A224058.P10348469943511088725

/-! ## A224058.P4734111051444528289

`A224050(∑[n+1]+2)`
-/

namespace A224058.P4734111051444528289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224050 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A224058.P4734111051444528289

/-! ## A224058.P17591082791179023240

`A224050(A252460(2*(n+2)))+char[26]`
-/

namespace A224058.P17591082791179023240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224050 (A252460 (2 * (n + 2))).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224058.P17591082791179023240

/-!
# A224059: Number of nX3 0..3 arrays with rows, columns and antidiagonals unimodal and diagonals nondecreasing.

The programs for A224059, there is no canonical definition to state claims against.
-/

/-! ## A224059.P13701061807993493418

`A224064(∑[n+2]+4)`
-/

namespace A224059.P13701061807993493418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224064 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224059.P13701061807993493418

/-! ## A224059.P11730199038260674992

`lcm((-1)^n, A224064(A167614(n+1)))`
-/

namespace A224059.P11730199038260674992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A224064 (A167614 (n + 1)).toNat)

end

end A224059.P11730199038260674992

/-! ## A224059.P17204906590569473778

`A224064(A167614(n+1))+A025469(n)`
-/

namespace A224059.P17204906590569473778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224064 (A167614 (n + 1)).toNat + A025469 n

end

end A224059.P17204906590569473778

/-! ## A224059.P11604671594775873991

`A224064(A167614(n+1))+A123546(n)`
-/

namespace A224059.P11604671594775873991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224064 (A167614 (n + 1)).toNat + A123546 n

end

end A224059.P11604671594775873991

/-! ## A224059.P7046766673815835553

`A224064(A167614(n+1))+A174617(n)`
-/

namespace A224059.P7046766673815835553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224064 (A167614 (n + 1)).toNat + A174617 n

end

end A224059.P7046766673815835553

/-!
# A224060: Number of nX4 0..3 arrays with rows, columns and antidiagonals unimodal and diagonals nondecreasing.

The programs for A224060, there is no canonical definition to state claims against.
-/

/-! ## A224060.P967522812011386642

`A224064(A374004(n+1))`
-/

namespace A224060.P967522812011386642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224064 (A374004 (n + 1)).toNat

end

end A224060.P967522812011386642

/-! ## A224060.P1601343226908698218

`A224064(A141214(n)+7)`
-/

namespace A224060.P1601343226908698218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224064 (A141214 n + 7).toNat

end

end A224060.P1601343226908698218

/-! ## A224060.P18426948941373277894

`A224064(A052905(n)+9)`
-/

namespace A224060.P18426948941373277894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224064 (A052905 n + 9).toNat

end

end A224060.P18426948941373277894

/-! ## A224060.P12768976803054375517

`A224064(A055999(n)+10)`
-/

namespace A224060.P12768976803054375517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224064 (A055999 n + 10).toNat

end

end A224060.P12768976803054375517

/-! ## A224060.P10484757211260206179

`A224064(eq[5, A066657(n)])`
-/

namespace A224060.P10484757211260206179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224060.P10484757211260206179

/-!
# A224061: Number of nX5 0..3 arrays with rows, columns and antidiagonals unimodal and diagonals nondecreasing.

The programs for A224061, there is no canonical definition to state claims against.
-/

/-! ## A224061.P4767617040496500379

`A224064(C(2*(n+3)-n, 2)-n)`
-/

namespace A224061.P4767617040496500379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224064 (Nat.choose ((2 * (n + 3) : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A224061.P4767617040496500379

/-! ## A224061.P13028306265475365109

`A224064(A374005(n+1))`
-/

namespace A224061.P13028306265475365109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224064 (A374005 (n + 1)).toNat

end

end A224061.P13028306265475365109

/-! ## A224061.P9005712710084234172

`A224064(A167499(n+3))`
-/

namespace A224061.P9005712710084234172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224064 (A167499 (n + 3)).toNat

end

end A224061.P9005712710084234172

/-! ## A224061.P5918804931440456501

`A224064(A155212(n)+13)`
-/

namespace A224061.P5918804931440456501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224064 (A155212 n + 13).toNat

end

end A224061.P5918804931440456501

/-! ## A224061.P15653953459879450361

`A224064(A056000(n)+15)`
-/

namespace A224061.P15653953459879450361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224064 (A056000 n + 15).toNat

end

end A224061.P15653953459879450361

/-!
# A224062: Number of nX6 0..3 arrays with rows, columns and antidiagonals unimodal and diagonals nondecreasing.

The programs for A224062, there is no canonical definition to state claims against.
-/

/-! ## A224062.P8429167152529080685

`A224064(C(n+7, 2)-n)`
-/

namespace A224062.P8429167152529080685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224064 (Nat.choose (n + 7) 2 - n)

end

end A224062.P8429167152529080685

/-! ## A224062.P2951589677935480028

`A224064(A374007(n+1))`
-/

namespace A224062.P2951589677935480028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224064 (A374007 (n + 1)).toNat

end

end A224062.P2951589677935480028

/-! ## A224062.P2938325473234956610

`A224064(A166136(n+4))`
-/

namespace A224062.P2938325473234956610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224064 (A166136 (n + 4)).toNat

end

end A224062.P2938325473234956610

/-! ## A224062.P4472211598794245248

`A224064(A056115(n)+21)`
-/

namespace A224062.P4472211598794245248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224064 (A056115 n + 21).toNat

end

end A224062.P4472211598794245248

/-! ## A224062.P14501376123125964582

`A224064(Δ[A224039(n+3)])`
-/

namespace A224062.P14501376123125964582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224039 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224064 (f1 (n + 1) - f1 n).toNat

end

end A224062.P14501376123125964582

/-!
# A224063: Number of nX7 0..3 arrays with rows, columns and antidiagonals unimodal and diagonals nondecreasing.

The programs for A224063, there is no canonical definition to state claims against.
-/

/-! ## A224063.P2415817866609153082

`A224064(A374008(n+1))`
-/

namespace A224063.P2415817866609153082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224064 (A374008 (n + 1)).toNat

end

end A224063.P2415817866609153082

/-! ## A224063.P5718898057081372228

`A224064(A056119(n)+28)`
-/

namespace A224063.P5718898057081372228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224064 (A056119 n + 28).toNat

end

end A224063.P5718898057081372228

/-! ## A224063.P14874205746140118403

`A224064(eq[11, A066657(n)])`
-/

namespace A224063.P14874205746140118403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224063.P14874205746140118403

/-! ## A224063.P17416742965902150703

`A224064(A168106(n)-n)`
-/

namespace A224063.P17416742965902150703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224064 (A168106 n - (n : ℤ)).toNat

end

end A224063.P17416742965902150703

/-! ## A224063.P1573929983143250493

`record[A224064(lt[8, A066657(n)])]`
-/

namespace A224063.P1573929983143250493
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224064 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224063.P1573929983143250493

/-!
# A224066: Number of smooth Schubert varieties of type C_n.

The programs for A224066, there is no canonical definition to state claims against.
-/

/-! ## A224066.P1342402399189214218

`A032351(n+1)+A224240(n)-A061539(n)`
-/

namespace A224066.P1342402399189214218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032351 (n + 1) + (A224240 n - A061539 n)

end

end A224066.P1342402399189214218

/-! ## A224066.P6968629043984002280

`A376455(A150254(n))`
-/

namespace A224066.P6968629043984002280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376455 (A150254 n).toNat

end

end A224066.P6968629043984002280

/-!
# A224067: Number of cycles the reduced complex Collatz function using 1 + (2n-1)i takes to hit 1 + i, or 0 if this never happens.

The programs for A224067, there is no canonical definition to state claims against.
-/

/-! ## A224067.P6563858328861208685

`gcd(floor(acot(n)), A224165(n+1))`
-/

namespace A224067.P6563858328861208685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A224165 (n + 1))

end

end A224067.P6563858328861208685

/-! ## A224067.P2294410865494683946

`A224165(n*a(ceil(sin(n)²)-1)+1)` with `a(0)=1`
-/

namespace A224067.P2294410865494683946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A224165 ((n : ℤ) * a (⌈Real.sin (n : ℝ) ^ 2⌉ - 1).toNat + 1).toNat

end

end A224067.P2294410865494683946

/-! ## A224067.P7489017908561554885

`A224165(n+1)^A178334(n)`
-/

namespace A224067.P7489017908561554885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224165 (n + 1) : ℚ) ^ (A178334 n : ℤ)

end

end A224067.P7489017908561554885

/-! ## A224067.P11354228897534578053

`A224165(n+1)%A000954(n)`
-/

namespace A224067.P11354228897534578053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224165 (n + 1)) (A000954 n)

end

end A224067.P11354228897534578053

/-! ## A224067.P9474001797796618590

`gcd(A000038(n), A224165(n+1))`
-/

namespace A224067.P9474001797796618590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A224165 (n + 1))

end

end A224067.P9474001797796618590

/-! ## A224067.P878175903534376963

`and(A055580(n), A224165(n+1))`
-/

namespace A224067.P878175903534376963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055580 n) (A224165 (n + 1))

end

end A224067.P878175903534376963

/-! ## A224067.P13579521676240309542

`and(A083420(n), A224165(n+1))`
-/

namespace A224067.P13579521676240309542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083420 n) (A224165 (n + 1))

end

end A224067.P13579521676240309542

/-! ## A224067.P16957807216336540065

`and(A099970(n), A224165(n+1))`
-/

namespace A224067.P16957807216336540065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099970 n) (A224165 (n + 1))

end

end A224067.P16957807216336540065

/-! ## A224067.P7353831522146069959

`and(A141725(n), A224165(n+1))`
-/

namespace A224067.P7353831522146069959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141725 n) (A224165 (n + 1))

end

end A224067.P7353831522146069959

/-! ## A224067.P9296638799926099788

`and(A224165(n+1), A260196(n))`
-/

namespace A224067.P9296638799926099788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A224165 (n + 1)) (A260196 n)

end

end A224067.P9296638799926099788

/-!
# A224068: Number of labeled graphs on n vertices that can be colored using exactly 4 colors.

The programs for A224068, there is no canonical definition to state claims against.
-/

/-! ## A224068.P4676734115267657218

`24*A058874(n+1)`
-/

namespace A224068.P4676734115267657218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A058874 (n + 1)

end

end A224068.P4676734115267657218

/-! ## A224068.P12221043644864870365

`24*64*A006202(n+1)`
-/

namespace A224068.P12221043644864870365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * (64 * A006202 (n + 1))

end

end A224068.P12221043644864870365

/-!
# A224071: Number of Schroeder paths of semilength n in which there are no (2,0)-steps at level 1.

The programs for A224071, there is no canonical definition to state claims against.
-/

/-! ## A224071.P11052856851223447922

`A050296(A002908(n+1))`
-/

namespace A224071.P11052856851223447922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A002908 (n + 1)).toNat

end

end A224071.P11052856851223447922

/-! ## A224071.P9445984748595409660

`A099263(n+1)-A332079(A048285(n))`
-/

namespace A224071.P9445984748595409660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099263 (n + 1) - A332079 (A048285 n).toNat

end

end A224071.P9445984748595409660

/-! ## A224071.P8314142793243795625

`A000110(n+1)-A213888(A289374(n))`
-/

namespace A224071.P8314142793243795625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) - A213888 (A289374 n).toNat

end

end A224071.P8314142793243795625

/-!
# A224072: Odd odious numbers divisible by 3.

The programs for A224072, the canonical program `A224072.P16968694920148514415` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224072 has offset 1).

The definition of A224072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4058 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224072.P16991523582926282789

`record[A000265(A180963(n+1))]`
-/

namespace A224072.P16991523582926282789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A180963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224072.P16991523582926282789

namespace A224072

/-- `record[A000265(A180963(n+1))]` -/
def P16991523582926282789.Spec : Prop :=
  ∀ n, P16991523582926282789.a n = A224072 (n + 1)

end A224072

/-! ## A224072.P7802429244240422958

`∩[A180963(n+1), A261524(n+1)]`
-/

namespace A224072.P7802429244240422958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224072.P7802429244240422958

namespace A224072

/-- `∩[A180963(n+1), A261524(n+1)]` -/
def P7802429244240422958.Spec : Prop :=
  ∀ n, (P7802429244240422958.a n : ℤ) = A224072 (n + 1)

end A224072

/-! ## A224072.P240177694423092850

`filter[A180963(n+1), A228495(#)]`
-/

namespace A224072.P240177694423092850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228495 (f1 j).toNat = 1) n)

end

end A224072.P240177694423092850

namespace A224072

/-- `filter[A180963(n+1), A228495(#)]` -/
def P240177694423092850.Spec : Prop :=
  ∀ n, P240177694423092850.a n = A224072 (n + 1)

end A224072

/-! ## A224072.P17527284522361513952

`filter[A180963(n+1), A254651(#)]`
-/

namespace A224072.P17527284522361513952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254651 (f1 j).toNat = 1) n)

end

end A224072.P17527284522361513952

namespace A224072

/-- `filter[A180963(n+1), A254651(#)]` -/
def P17527284522361513952.Spec : Prop :=
  ∀ n, P17527284522361513952.a n = A224072 (n + 1)

end A224072

/-! ## A224072.P16968694920148514415

`filter[A016945(n), A228495(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A224072

/-- `filter[A016945(n), A228495(#)]` -/
def P16968694920148514415.Spec : Prop :=
  ∀ n, P16968694920148514415.a n = A224072 (n + 1)

theorem P16968694920148514415.correct : P16968694920148514415.Spec := by
  intro n
  simp only [A224072, Nat.add_sub_cancel]

end A224072

/-! ## A224072.P1006043460835669666

`filter[A270545(n+1), A228495(#)]`
-/

namespace A224072.P1006043460835669666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228495 (f1 j).toNat = 1) n)

end

end A224072.P1006043460835669666

namespace A224072

/-- `filter[A270545(n+1), A228495(#)]` -/
def P1006043460835669666.Spec : Prop :=
  ∀ n, P1006043460835669666.a n = A224072 (n + 1)

end A224072

/-! ## A224072.P15768188268157134963

`filter[A091361(n+2), A228495(#)]`
-/

namespace A224072.P15768188268157134963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091361 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228495 (f1 j).toNat = 1) n)

end

end A224072.P15768188268157134963

namespace A224072

/-- `filter[A091361(n+2), A228495(#)]` -/
def P15768188268157134963.Spec : Prop :=
  ∀ n, P15768188268157134963.a n = A224072 (n + 1)

end A224072

/-! ## A224072.P12773134337044519538

`filter[A357779(n+3), A228495(#)]`
-/

namespace A224072.P12773134337044519538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357779 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228495 (f1 j).toNat = 1) n)

end

end A224072.P12773134337044519538

namespace A224072

/-- `filter[A357779(n+3), A228495(#)]` -/
def P12773134337044519538.Spec : Prop :=
  ∀ n, P12773134337044519538.a n = A224072 (n + 1)

end A224072

/-! ## A224072.P5600927620063776214

`∩[A180963(n+1), A016945(n)]`
-/

namespace A224072.P5600927620063776214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224072.P5600927620063776214

namespace A224072

/-- `∩[A180963(n+1), A016945(n)]` -/
def P5600927620063776214.Spec : Prop :=
  ∀ n, (P5600927620063776214.a n : ℤ) = A224072 (n + 1)

end A224072

/-! ## A224072.P18099169212866361781

`∩[A180963(n+1), A270545(n)]`
-/

namespace A224072.P18099169212866361781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224072.P18099169212866361781

namespace A224072

/-- `∩[A180963(n+1), A270545(n)]` -/
def P18099169212866361781.Spec : Prop :=
  ∀ n, (P18099169212866361781.a n : ℤ) = A224072 (n + 1)

end A224072

/-! ## A224072.P17760056392809317950

`∩[A091361(n+1), A180963(n+1)]`
-/

namespace A224072.P17760056392809317950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224072.P17760056392809317950

namespace A224072

/-- `∩[A091361(n+1), A180963(n+1)]` -/
def P17760056392809317950.Spec : Prop :=
  ∀ n, (P17760056392809317950.a n : ℤ) = A224072 (n + 1)

end A224072

/-! ## A224072.P10669762430284242845

`∩[A180963(n+1), A357779(n+1)]`
-/

namespace A224072.P10669762430284242845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224072.P10669762430284242845

namespace A224072

/-- `∩[A180963(n+1), A357779(n+1)]` -/
def P10669762430284242845.Spec : Prop :=
  ∀ n, (P10669762430284242845.a n : ℤ) = A224072 (n + 1)

end A224072

/-! ## A224072.P4375958017669621768

`∩[A063139(n+1), A180963(n+1)]`
-/

namespace A224072.P4375958017669621768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224072.P4375958017669621768

namespace A224072

/-- `∩[A063139(n+1), A180963(n+1)]` -/
def P4375958017669621768.Spec : Prop :=
  ∀ n, (P4375958017669621768.a n : ℤ) = A224072 (n + 1)

end A224072

/-! ## A224072.P10197761947253523831

`filter[A277569(n+1), A228495(#)]`
-/

namespace A224072.P10197761947253523831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228495 (f1 j).toNat = 1) n)

end

end A224072.P10197761947253523831

namespace A224072

/-- `filter[A277569(n+1), A228495(#)]` -/
def P10197761947253523831.Spec : Prop :=
  ∀ n, P10197761947253523831.a n = A224072 (n + 1)

end A224072

/-! ## A224072.P10358009003671103777

`eq[dr(3*n+1), A228495(n)]`
-/

namespace A224072.P10358009003671103777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 * n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224072.P10358009003671103777

namespace A224072

/-- `eq[dr(3*n+1), A228495(n)]` -/
def P10358009003671103777.Spec : Prop :=
  ∀ n, (P10358009003671103777.a n : ℤ) = A224072 (n + 1)

end A224072

/-! ## A224072.P6717208397976823608

`∩[A180963(n+1), A389917(n+1)]`
-/

namespace A224072.P6717208397976823608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224072.P6717208397976823608

namespace A224072

/-- `∩[A180963(n+1), A389917(n+1)]` -/
def P6717208397976823608.Spec : Prop :=
  ∀ n, (P6717208397976823608.a n : ℤ) = A224072 (n + 1)

end A224072

/-! ## A224072.P12176416193502499449

`filter[A259754(n+1), A228495(#)]`
-/

namespace A224072.P12176416193502499449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228495 (f1 j).toNat = 1) n)

end

end A224072.P12176416193502499449

namespace A224072

/-- `filter[A259754(n+1), A228495(#)]` -/
def P12176416193502499449.Spec : Prop :=
  ∀ n, P12176416193502499449.a n = A224072 (n + 1)

end A224072

/-! ## A224072.P17714723622636764681

`∩[A180963(n+1), A261871(n+1)]`
-/

namespace A224072.P17714723622636764681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224072.P17714723622636764681

namespace A224072

/-- `∩[A180963(n+1), A261871(n+1)]` -/
def P17714723622636764681.Spec : Prop :=
  ∀ n, (P17714723622636764681.a n : ℤ) = A224072 (n + 1)

end A224072

/-! ## A224072.P16815347877158501151

`∩[A180963(n+1), A392368(n+1)]`
-/

namespace A224072.P16815347877158501151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224072.P16815347877158501151

namespace A224072

/-- `∩[A180963(n+1), A392368(n+1)]` -/
def P16815347877158501151.Spec : Prop :=
  ∀ n, (P16815347877158501151.a n : ℤ) = A224072 (n + 1)

end A224072

/-! ## A224072.P7416889409154356140

`filter[A136290(n+1), A228495(#)]`
-/

namespace A224072.P7416889409154356140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228495 (f1 j).toNat = 1) n)

end

end A224072.P7416889409154356140

namespace A224072

/-- `filter[A136290(n+1), A228495(#)]` -/
def P7416889409154356140.Spec : Prop :=
  ∀ n, P7416889409154356140.a n = A224072 (n + 1)

end A224072

/-!
# A224073: Number of equivalence classes of words in F_2, modulo all automorphisms of F_2, whose minimal words have length n.

The programs for A224073, there is no canonical definition to state claims against.
-/

/-! ## A224073.P11555510644719416658

`A232779(A112837(n))`
-/

namespace A224073.P11555510644719416658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232779 (A112837 n).toNat

end

end A224073.P11555510644719416658

/-! ## A224073.P10430551165037505391

`A220845(A153903(n+1))`
-/

namespace A224073.P10430551165037505391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220845 (A153903 (n + 1)).toNat

end

end A224073.P10430551165037505391

/-! ## A224073.P9794848702827892805

`A380408(A014981(n+1))`
-/

namespace A224073.P9794848702827892805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380408 (A014981 (n + 1)).toNat

end

end A224073.P9794848702827892805

/-! ## A224073.P13254323026381265281

`A113004(A374640(n)+1)`
-/

namespace A224073.P13254323026381265281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113004 (A374640 n + 1).toNat

end

end A224073.P13254323026381265281

/-! ## A224073.P4820054392968385200

`A273134(A318113(n)+1)`
-/

namespace A224073.P4820054392968385200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273134 (A318113 n + 1).toNat

end

end A224073.P4820054392968385200

/-!
# A224075: Triangle read by rows: n-th row gives the primes p of form (m - k^2) where m = A214583(n), k < m and gcd(k,m) = 1.

The programs for A224075, there is no canonical definition to state claims against.
-/

/-! ## A224075.P4183689127379019486

`A363672(eq[A182858(n), A330667(n+1)])`
-/

namespace A224075.P4183689127379019486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182858 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363672 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A224075.P4183689127379019486

/-!
# A224076: Row lengths of triangle in A224075.

The programs for A224076, there is no canonical definition to state claims against.
-/

/-! ## A224076.P18164377889698966124

`A057828(A214583(n+1))`
-/

namespace A224076.P18164377889698966124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057828 (A214583 (n + 1)).toNat

end

end A224076.P18164377889698966124

/-! ## A224076.P16002272169420429169

`A037800(13*A226007(n+1))`
-/

namespace A224076.P16002272169420429169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (13 * A226007 (n + 1)).toNat

end

end A224076.P16002272169420429169

/-! ## A224076.P9000992705676361305

`A102669(A198082(sqrt(A001254(n))))`
-/

namespace A224076.P9000992705676361305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A198082 (SequenceMachineLib.roundAway (Real.sqrt (A001254 n : ℝ))).toNat).toNat

end

end A224076.P9000992705676361305

/-! ## A224076.P7061522359770073212

`A102669(A347131(n+1)+A195971(n+2))`
-/

namespace A224076.P7061522359770073212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A347131 (n + 1) + A195971 (n + 2)).toNat

end

end A224076.P7061522359770073212

/-! ## A224076.P16456188150333372466

`∏{p}[A051885(n), A335108(#)]`
-/

namespace A224076.P16456188150333372466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A335108 p

end

end A224076.P16456188150333372466

/-!
# A224078: Numbers that are superior highly composite and colossally abundant.

The programs for A224078, there is no canonical definition to state claims against.
-/

/-! ## A224078.P8133628467803152994

`∩[A002201(n+1), A004490(n+1)]`
-/

namespace A224078.P8133628467803152994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224078.P8133628467803152994

/-! ## A224078.P14497327851056087026

`∩[∏[A000705(n+1)], A004490(n+1)]`
-/

namespace A224078.P14497327851056087026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000705 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A224078.P14497327851056087026

/-! ## A224078.P14731174792879793171

`∩[A002201(n+1), ∏[A073751(n+1)]]`
-/

namespace A224078.P14731174792879793171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002201 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224078.P14731174792879793171

/-! ## A224078.P2354689814286623176

`∩[A002201(n+1), a(n-1)*A073751(2*n+1-n)]` with `a(0)=2`
-/

namespace A224078.P2354689814286623176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) * A073751 (2 * n + 1 - n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224078.P2354689814286623176

/-! ## A224078.P15857969852234571051

`∩[A004490(n+1), A263572(n+1)]`
-/

namespace A224078.P15857969852234571051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224078.P15857969852234571051

/-!
# A224079: E.g.f. is series reversion of log(1+x)/cosh(x).

The programs for A224079, there is no canonical definition to state claims against.
-/

/-! ## A224079.P5364834845937123581

`A247636(or(1, n*a(n-1)-(2-n)%2))` with `a(0)=1`
-/

namespace A224079.P5364834845937123581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A247636 (Int.lor 1 ((n : ℤ) * a (n - 1) - Int.tmod (2 - (n : ℤ)) 2)).toNat

end

end A224079.P5364834845937123581

/-! ## A224079.P17586073977060404752

`A131737(A120733(n)+A001318(n))`
-/

namespace A224079.P17586073977060404752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131737 (A120733 n + A001318 n).toNat

end

end A224079.P17586073977060404752

/-!
# A224080: E.g.f. is series reversion of log(1+x)*sqrt(1-x^2).

The programs for A224080, there is no canonical definition to state claims against.
-/

/-! ## A224080.P18096778128893865535

`A326275(n)+A057355(A025168(n))`
-/

namespace A224080.P18096778128893865535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326275 n + A057355 (A025168 n).toNat

end

end A224080.P18096778128893865535

/-! ## A224080.P18382719903695727028

`A144015(n)-A002265(A007788(n))`
-/

namespace A224080.P18382719903695727028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144015 n - A002265 (A007788 n).toNat

end

end A224080.P18382719903695727028

/-!
# A224082: Numbers k such that A112141(k) - 1 is prime.

The programs for A224082, there is no canonical definition to state claims against.
-/

/-! ## A224082.P11650223069978615892

`eq[Δ[A078807(n+2)], A079169(n+2)]`
-/

namespace A224082.P11650223069978615892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078807 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079169 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A224082.P11650223069978615892

/-! ## A224082.P10932510135307440097

`A227183(A000244(n)-A014335(n))`
-/

namespace A224082.P10932510135307440097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227183 (A000244 n - A014335 n).toNat

end

end A224082.P10932510135307440097

/-! ## A224082.P13484263294061096018

`∑[A336362(n+1)+A305149(A000032(2*(n+1)))]`
-/

namespace A224082.P13484263294061096018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336362 (n + 1) + A305149 (A000032 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224082.P13484263294061096018

/-!
# A224085: Denominators of hypergeometric Cauchy numbers c_(2,n).

The programs for A224085, there is no canonical definition to state claims against.
-/

/-! ## A224085.P8317864347994243086

`A000265(A006568(n)/A245851(n+1))`
-/

namespace A224085.P8317864347994243086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A006568 n : ℚ) / (A245851 (n + 1) : ℚ))).toNat

end

end A224085.P8317864347994243086

/-! ## A224085.P1776435685225708234

`A000265(A006568(n))`
-/

namespace A224085.P1776435685225708234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A006568 n).toNat

end

end A224085.P1776435685225708234

/-! ## A224085.P924019704570412651

`A052125(2*A006568(n))`
-/

namespace A224085.P924019704570412651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052125 (2 * A006568 n).toNat

end

end A224085.P924019704570412651

/-! ## A224085.P5767607072644947620

`A302044(2*A006568(n))`
-/

namespace A224085.P5767607072644947620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (2 * A006568 n).toNat

end

end A224085.P5767607072644947620

/-! ## A224085.P5824637775212818297

`A052125(lcm(2, A006568(n)))`
-/

namespace A224085.P5824637775212818297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052125 (Int.lcm 2 (A006568 n))

end

end A224085.P5824637775212818297

/-!
# A224086: Denominators of hypergeometric Cauchy numbers c_(3,n).

The programs for A224086, there is no canonical definition to state claims against.
-/

/-! ## A224086.P11609173908768054020

`A051176(lcm(A004730(n), A248964(n)))`
-/

namespace A224086.P11609173908768054020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (Int.lcm (A004730 n) (A248964 n))

end

end A224086.P11609173908768054020

/-! ## A224086.P10289667604290780131

`A248964(n)*A342341(A092658(n+1))`
-/

namespace A224086.P10289667604290780131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248964 n * A342341 (A092658 (n + 1)).toNat

end

end A224086.P10289667604290780131

/-!
# A224088: Denominators of hypergeometric Cauchy numbers c_(4,n).

The programs for A224088, there is no canonical definition to state claims against.
-/

/-! ## A224088.P1307777588496674217

`record[∏{e}[A240389(n+1), C(#+4, 4)]]`
-/

namespace A224088.P1307777588496674217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240389 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.choose (Nat.factorization (f2 n).natAbs p + 4) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224088.P1307777588496674217

/-!
# A224093: Numerators of hypergeometric Cauchy numbers c_(5,n).

The programs for A224093, there is no canonical definition to state claims against.
-/

/-! ## A224093.P10688126092970249246

`-or(a(n-1), ∏[a(n-2)!])` with `a(0)=1, a(1)=5`
-/

namespace A224093.P10688126092970249246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  Nat.factorial (f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  -Int.lor (a (n - 1)) ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A224093.P10688126092970249246

/-!
# A224094: Denominators of poly-Cauchy numbers c_n^(2).

The programs for A224094, there is no canonical definition to state claims against.
-/

/-! ## A224094.P1111980826804816574

`lcm(A219247(n), A327076(∏{d}[n+1, #]))`
-/

namespace A224094.P1111980826804816574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A219247 n) (A327076 (∏ d ∈ Nat.divisors (f1 n), d))

end

end A224094.P1111980826804816574

/-! ## A224094.P1395828919763607806

`A000188(A071969(n))*A219247(n)`
-/

namespace A224094.P1395828919763607806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A071969 n).toNat * A219247 n

end

end A224094.P1395828919763607806

/-! ## A224094.P3466263853166332222

`lcm(A074816(A219261(n)), A219247(n))`
-/

namespace A224094.P3466263853166332222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A074816 (A219261 n).toNat) (A219247 n)

end

end A224094.P3466263853166332222

/-! ## A224094.P12633755693269672796

`A002790(n)*A003418(A032555(n+1))`
-/

namespace A224094.P12633755693269672796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002790 n * A003418 (A032555 (n + 1)).toNat

end

end A224094.P12633755693269672796

/-! ## A224094.P13714013737414658483

`A002790(n)*A003418(A032559(n+1))`
-/

namespace A224094.P13714013737414658483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002790 n * A003418 (A032559 (n + 1)).toNat

end

end A224094.P13714013737414658483

/-!
# A224096: Denominators of poly-Cauchy numbers c_n^(3).

The programs for A224096, there is no canonical definition to state claims against.
-/

/-! ## A224096.P5289051350525090866

`A000027(A109935(n+1))*A219247(n)`
-/

namespace A224096.P5289051350525090866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A109935 (n + 1)).toNat * A219247 n

end

end A224096.P5289051350525090866

/-! ## A224096.P5197892748576625035

`A219247(n)²/A290318(∑[n])`
-/

namespace A224096.P5197892748576625035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219247 n ^ 2 : ℚ) / (A290318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A224096.P5197892748576625035

/-! ## A224096.P12329301575211037591

`A109935(n+1)²*A290318(∑[n])`
-/

namespace A224096.P12329301575211037591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109935 (n + 1) ^ 2 * A290318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224096.P12329301575211037591

/-! ## A224096.P17654019471511258354

`A224103(n)/A003557(A001045(n+4))`
-/

namespace A224096.P17654019471511258354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224103 n : ℚ) / (A003557 (A001045 (n + 4)).toNat : ℚ)

end

end A224096.P17654019471511258354

/-! ## A224096.P3651521793170625828

`A109935(A004905(n+1)+1)*A219247(n)`
-/

namespace A224096.P3651521793170625828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109935 (A004905 (n + 1) + 1).toNat * A219247 n

end

end A224096.P3651521793170625828

/-!
# A224098: Denominators of poly-Cauchy numbers c_n^(4).

The programs for A224098, there is no canonical definition to state claims against.
-/

/-! ## A224098.P5191136626374447607

`A003418(A004905(n+1)+1)*A224103(n)`
-/

namespace A224098.P5191136626374447607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A004905 (n + 1) + 1).toNat * A224103 n

end

end A224098.P5191136626374447607

/-! ## A224098.P1320776281938927908

`A224096(A004905(n+1))*A336850(n+1)*A003418(n+1)`
-/

namespace A224098.P1320776281938927908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224096 (A004905 (n + 1)).toNat * A336850 (n + 1) * A003418 (n + 1)

end

end A224098.P1320776281938927908

/-! ## A224098.P7729497895271088133

`A224096(A004905(n+1))*A336850(n+1)*A109935(n+1)`
-/

namespace A224098.P7729497895271088133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224096 (A004905 (n + 1)).toNat * A336850 (n + 1) * A109935 (n + 1)

end

end A224098.P7729497895271088133

/-! ## A224098.P14261102083661957259

`A009194(2*n+5)*A224096(A004905(n+1))*A003418(n+1)`
-/

namespace A224098.P14261102083661957259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (2 * n + 5) * A224096 (A004905 (n + 1)).toNat * A003418 (n + 1)

end

end A224098.P14261102083661957259

/-! ## A224098.P13418826184057903890

`A009194(2*n+5)*A224096(A004905(n+1))*A109935(n+1)`
-/

namespace A224098.P13418826184057903890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (2 * n + 5) * A224096 (A004905 (n + 1)).toNat * A109935 (n + 1)

end

end A224098.P13418826184057903890

