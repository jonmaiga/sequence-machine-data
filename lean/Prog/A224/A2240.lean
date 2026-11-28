import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C008
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C001
import Seq.B007.C000
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
import SequenceMachineLib.Triangle

/-!
# A224000: Number of 2 X n 0..2 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A224000, the canonical program `A224000.P12568290461745659742` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224000 has offset 1).

The definition of A224000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224000.P12568290461745659742

`∑[∑[(n+3)²-2]+1]+1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A224000

/-- `∑[∑[(n+3)²-2]+1]+1` -/
def P12568290461745659742.Spec : Prop :=
  ∀ n, P12568290461745659742.a n = A224000 (n + 1)

theorem P12568290461745659742.correct : P12568290461745659742.Spec := by
  intro n
  simp only [A224000, Nat.add_sub_cancel]

end A224000

/-! ## A224000.P13688821496232926053

`ogf((9-14x+11x^2-5x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A224000.P13688821496232926053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, -14, 11, -5, 1] [1, -5, 10, -10, 5, -1] n

end

end A224000.P13688821496232926053

namespace A224000

/-- `ogf((9-14x+11x^2-5x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P13688821496232926053.Spec : Prop :=
  ∀ n, P13688821496232926053.a n = A224000 (n + 1)

end A224000

/-! ## A224000.P7422392966627906203

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=9, a(1)=31, a(2)=76, a(3)=155, a(4)=281`
-/

namespace A224000.P7422392966627906203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 31, 76, 155, 281] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A224000.P7422392966627906203

namespace A224000

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P7422392966627906203.Spec : Prop :=
  ∀ n, P7422392966627906203.a n = A224000 (n + 1)

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

/-!
# A224001: Number of 3 X n 0..2 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A224001, the canonical program `A224001.P12495090791432168612` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224001 has offset 1).

The definition of A224001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224001.P12495090791432168612

`ogf((27-32x-56x^2+164x^3-159x^4+85x^5-32x^6+9x^7-x^8)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A224001

/-- `ogf((27-32x-56x^2+164x^3-159x^4+85x^5-32x^6+9x^7-x^8)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P12495090791432168612.Spec : Prop :=
  ∀ n, P12495090791432168612.a n = A224001 (n + 1)

theorem P12495090791432168612.correct : P12495090791432168612.Spec := by
  intro n
  simp only [A224001, Nat.add_sub_cancel]

end A224001

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

namespace A224001

/-- `A223999(∑[n+2]+4)` -/
def P10002247605600959637.Spec : Prop :=
  ∀ n, P10002247605600959637.a n = A224001 (n + 1)

end A224001

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

/-!
# A224007: Number of n X 3 0..2 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224007, the canonical program `A224007.P16255184582245715366` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224007 has offset 1).

The definition of A224007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224007.P16255184582245715366

`ogf((10+28x^2-2x^3+12x^4)/(1-10x+16x^2-30x^3+14x^4-12x^5))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A224007

/-- `ogf((10+28x^2-2x^3+12x^4)/(1-10x+16x^2-30x^3+14x^4-12x^5))` -/
def P16255184582245715366.Spec : Prop :=
  ∀ n, P16255184582245715366.a n = A224007 (n + 1)

theorem P16255184582245715366.correct : P16255184582245715366.Spec := by
  intro n
  simp only [A224007, Nat.add_sub_cancel]

end A224007

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

namespace A224007

/-- `A224012(∑[n+3]+1)` -/
def P12060718461580958686.Spec : Prop :=
  ∀ n, P12060718461580958686.a n = A224007 (n + 1)

end A224007

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

namespace A224007

/-- `record[A224012(A198464(n+1))]` -/
def P11291857050151051513.Spec : Prop :=
  ∀ n, P11291857050151051513.a n = A224007 (n + 1)

end A224007

/-!
# A224008: Number of n X 4 0..2 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224008, there is no canonical definition to state claims against.
-/

/-! ## A224008.P1633466366834720149

`ogf((15+156x^2+101x^3+157x^4+460x^5+240x^6)/(1-15x+58x^2-105x^3-20x^4+183x^5-220x^6-240x^7))`
-/

namespace A224008.P1633466366834720149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [15, 0, 156, 101, 157, 460, 240] [1, -15, 58, -105, -20, 183, -220, -240] n

end

end A224008.P1633466366834720149

/-! ## A224008.P5998621513026505612

`A224012(A141214(n+1))`
-/

namespace A224008.P5998621513026505612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224012 (A141214 (n + 1)).toNat

end

end A224008.P5998621513026505612

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

/-!
# A224013: Number of 3 X n 0..2 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224013, the canonical program `A224013.P17637528994317839694` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224013 has offset 1).

The definition of A224013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224013.P17637528994317839694

`ogf((27+27x-77x^2+176x^3-199x^4+129x^5-43x^6+6x^7)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A224013

/-- `ogf((27+27x-77x^2+176x^3-199x^4+129x^5-43x^6+6x^7)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P17637528994317839694.Spec : Prop :=
  ∀ n, P17637528994317839694.a n = A224013 (n + 1)

theorem P17637528994317839694.correct : P17637528994317839694.Spec := by
  intro n
  simp only [A224013, Nat.add_sub_cancel]

end A224013

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

namespace A224013

/-- `A224012(∑[n+2]+4)` -/
def P14479616337899263352.Spec : Prop :=
  ∀ n, P14479616337899263352.a n = A224013 (n + 1)

end A224013

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

/-! ## A224018.P14353685799629980007

`record[root(A224024(n+1), A286157(n+1))]`
-/

namespace A224018.P14353685799629980007
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A224024 (n + 1) : ℝ) ^ (1 / (A286157 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224018.P14353685799629980007

/-!
# A224019: Number of n X 3 0..3 arrays with rows nondecreasing and antidiagonals unimodal.

The programs for A224019, there is no canonical definition to state claims against.
-/

/-! ## A224019.P15584213987342827228

`ogf((20+196x^2-44x^3+340x^4-52x^5+144x^6)/(1-20x+70x^2-228x^3+276x^4-392x^5+196x^6-144x^7))`
-/

namespace A224019.P15584213987342827228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [20, 0, 196, -44, 340, -52, 144] [1, -20, 70, -228, 276, -392, 196, -144] n

end

end A224019.P15584213987342827228

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

/-!
# A224030: a(n) = |{0<k<n: 2*n+k and 2*n^3+k^3 are both prime}|.

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

/-!
# A224033: Number of n X 3 0..1 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A224033, the canonical program `A224033.P15196988162262996000` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224033 has offset 1).

The definition of A224033 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224033.P14206671996106991773

`ogf((4-3x-3x^2+2x^4)/(1-4x+3x^2+x^3-2x^5))`
-/

namespace A224033.P14206671996106991773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -3, -3, 0, 2] [1, -4, 3, 1, 0, -2] n

end

end A224033.P14206671996106991773

namespace A224033

/-- `ogf((4-3x-3x^2+2x^4)/(1-4x+3x^2+x^3-2x^5))` -/
def P14206671996106991773.Spec : Prop :=
  ∀ n, P14206671996106991773.a n = A224033 (n + 1)

end A224033

/-! ## A224033.P15196988162262996000

`4*a(n-1)-3*a(n-2)-a(n-3)+2*a(n-5)` with `a(0)=4, a(1)=13, a(2)=37, a(3)=105, a(4)=298`

The canonical program, it is in `Seq.B000.C036`.
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

/-!
# A224035: Number of n X 5 0..1 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A224035, the canonical program `A224035.P6494777121297761108` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224035 has offset 1).

The definition of A224035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224035.P6494777121297761108

`ogf((6-10x-11x^2-4x^3+10x^4+18x^5+3x^6-14x^7-4x^9)/(1-6x+10x^2-x^3-6x^4-x^5+4x^6-4x^7+4x^8-8x^9))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A224035

/-- `ogf((6-10x-11x^2-4x^3+10x^4+18x^5+3x^6-14x^7-4x^9)/(1-6x+10x^2-x^3-6x^4-x^5+4x^6-4x^7+4x^8-8x^9))` -/
def P6494777121297761108.Spec : Prop :=
  ∀ n, P6494777121297761108.a n = A224035 (n + 1)

theorem P6494777121297761108.correct : P6494777121297761108.Spec := by
  intro n
  simp only [A224035, Nat.add_sub_cancel]

end A224035

/-! ## A224035.P6126866848262787769

`A224038(n*(n+11)/2+11)`
-/

namespace A224035.P6126866848262787769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (SequenceMachineLib.roundAway ((n * (n + 11) : ℚ) / 2 + 11)).toNat

end

end A224035.P6126866848262787769

namespace A224035

/-- `A224038(n*(n+11)/2+11)` -/
def P6126866848262787769.Spec : Prop :=
  ∀ n, P6126866848262787769.a n = A224035 (n + 1)

end A224035

/-!
# A224036: Number of nX6 0..1 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A224036, there is no canonical definition to state claims against.
-/

/-! ## A224036.P10574063307435038428

`A224038(A046691(n+4)-1)`
-/

namespace A224036.P10574063307435038428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A046691 (n + 4) - 1).toNat

end

end A224036.P10574063307435038428

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

/-!
# A224039: Number of 3 X n 0..1 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A224039, the canonical program `A224039.P3416921023407590360` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224039 has offset 1).

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

/-! ## A224039.P7585679621344253706

`ogf((8-11x+x^2+4x^3-x^4)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A224039.P7585679621344253706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -11, 1, 4, -1] [1, -4, 6, -4, 1] n

end

end A224039.P7585679621344253706

namespace A224039

/-- `ogf((8-11x+x^2+4x^3-x^4)/(1-4x+6x^2-4x^3+x^4))` -/
def P7585679621344253706.Spec : Prop :=
  ∀ n, P7585679621344253706.a n = A224039 (n + 1)

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

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A224039

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P3416921023407590360.Spec : Prop :=
  ∀ n, P3416921023407590360.a n = A224039 (n + 1)

theorem P3416921023407590360.correct : P3416921023407590360.Spec := by
  intro n
  simp only [A224039, Nat.add_sub_cancel]

end A224039

/-! ## A224039.P15540717402855946317

`∑[char[1]+A167614(n+1)+2]+n`
-/

namespace A224039.P15540717402855946317
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (A167614 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A224039.P15540717402855946317

namespace A224039

/-- `∑[char[1]+A167614(n+1)+2]+n` -/
def P15540717402855946317.Spec : Prop :=
  ∀ n, P15540717402855946317.a n = A224039 (n + 1)

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

The programs for A224040, the canonical program `A224040.P5043865056085824540` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224040 has offset 1).

The definition of A224040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224040.P18097078727303406732

`ogf((16-25x-10x^2+33x^3-8x^4-8x^5+3x^6)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A224040.P18097078727303406732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, -25, -10, 33, -8, -8, 3] [1, -5, 10, -10, 5, -1] n

end

end A224040.P18097078727303406732

namespace A224040

/-- `ogf((16-25x-10x^2+33x^3-8x^4-8x^5+3x^6)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P18097078727303406732.Spec : Prop :=
  ∀ n, P18097078727303406732.a n = A224040 (n + 1)

end A224040

/-! ## A224040.P5043865056085824540

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=16, a(1)=55, a(2)=105, a(3)=168, a(4)=252, a(5)=363, a(6)=508`

The canonical program, it is in `Seq.B000.C036`.
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

/-!
# A224041: Number of 5 X n 0..1 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A224041, the canonical program `A224041.P15479785671552055887` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224041 has offset 1).

The definition of A224041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224041.P15479785671552055887

`ogf((32-48x-86x^2+220x^3-124x^4-12x^5+9x^6+17x^7-7x^8)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A224041

/-- `ogf((32-48x-86x^2+220x^3-124x^4-12x^5+9x^6+17x^7-7x^8)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P15479785671552055887.Spec : Prop :=
  ∀ n, P15479785671552055887.a n = A224041 (n + 1)

theorem P15479785671552055887.correct : P15479785671552055887.Spec := by
  intro n
  simp only [A224041, Nat.add_sub_cancel]

end A224041

/-! ## A224041.P8460070239315607520

`A224038(A167499(n+3))`
-/

namespace A224041.P8460070239315607520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224038 (A167499 (n + 3)).toNat

end

end A224041.P8460070239315607520

namespace A224041

/-- `A224038(A167499(n+3))` -/
def P8460070239315607520.Spec : Prop :=
  ∀ n, P8460070239315607520.a n = A224041 (n + 1)

end A224041

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

/-! ## A224048.P15079084666099192364

`A224050(A166136(n+4))`
-/

namespace A224048.P15079084666099192364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224050 (A166136 (n + 4)).toNat

end

end A224048.P15079084666099192364

/-! ## A224048.P9764709636200878733

`A224050(A374007(n+1))`
-/

namespace A224048.P9764709636200878733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224050 (A374007 (n + 1)).toNat

end

end A224048.P9764709636200878733

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

/-! ## A224049.P11920147674077265453

`A224050(A374008(n+1))`
-/

namespace A224049.P11920147674077265453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224050 (A374008 (n + 1)).toNat

end

end A224049.P11920147674077265453

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

/-! ## A224052.P936100276658100860

`record[A224057(A008795(n)+3)]`
-/

namespace A224052.P936100276658100860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224052.P936100276658100860

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

/-! ## A224054.P9582221236111858709

`A224057(A374005(n+1))`
-/

namespace A224054.P9582221236111858709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (A374005 (n + 1)).toNat

end

end A224054.P9582221236111858709

/-!
# A224055: Number of nX6 0..2 arrays with rows and columns unimodal and antidiagonals nondecreasing.

The programs for A224055, there is no canonical definition to state claims against.
-/

/-! ## A224055.P16797797908924870508

`A224057(A166136(n+4))`
-/

namespace A224055.P16797797908924870508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (A166136 (n + 4)).toNat

end

end A224055.P16797797908924870508

/-! ## A224055.P9928425516845469517

`A224057(A374007(n+1))`
-/

namespace A224055.P9928425516845469517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (A374007 (n + 1)).toNat

end

end A224055.P9928425516845469517

/-!
# A224056: Number of nX7 0..2 arrays with rows and columns unimodal and antidiagonals nondecreasing.

The programs for A224056, there is no canonical definition to state claims against.
-/

/-! ## A224056.P2991647586680369571

`A224057(A167487(n+5))`
-/

namespace A224056.P2991647586680369571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (A167487 (n + 5)).toNat

end

end A224056.P2991647586680369571

/-! ## A224056.P1927109573451548725

`A224057(A374008(n+1))`
-/

namespace A224056.P1927109573451548725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (A374008 (n + 1)).toNat

end

end A224056.P1927109573451548725

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

/-! ## A224058.P706204760835717723

`record[A224050(C(col(n)+1, 2)+2)]`
-/

namespace A224058.P706204760835717723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224050 (Nat.choose (SequenceMachineLib.triCol n + 1) 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224058.P706204760835717723

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

/-! ## A224060.P11141963230754934863

`A224064(A141214(n+1))`
-/

namespace A224060.P11141963230754934863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224064 (A141214 (n + 1)).toNat

end

end A224060.P11141963230754934863

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

/-! ## A224066.P10633525815650897671

`A244225(Δ[A279566(n+1)])`
-/

namespace A224066.P10633525815650897671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244225 (f1 (n + 1) - f1 n).toNat

end

end A224066.P10633525815650897671

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

/-! ## A224067.P2224498273229398197

`A224165(1+n)^A178334(n)`
-/

namespace A224067.P2224498273229398197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224165 (1 + n) : ℚ) ^ (A178334 n : ℤ)

end

end A224067.P2224498273229398197

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
# A224069: Matrix inverse of A111636.

The programs for A224069, there is no canonical definition to state claims against.
-/

/-! ## A224069.P9246247776061792844

`(-1)^(row(n)-col(n))*A003024(row(n)-col(n))*2^(col(n)*(row(n)-col(n)))*C(row(n), col(n))`
-/

namespace A224069.P9246247776061792844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (A003024 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) : ℚ) * (2 : ℚ) ^ ((SequenceMachineLib.triCol n : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) : ℤ) * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℚ)

end

end A224069.P9246247776061792844

/-! ## A224069.P14853727961871540834

`(-1)^(row(n)-col(n))*A003024(row(n)-col(n))*A111636(C(row(n)+1, 2)+col(n))`
-/

namespace A224069.P14853727961871540834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (A003024 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) : ℚ) * (A111636 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) : ℚ)

end

end A224069.P14853727961871540834

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

The programs for A224072, the canonical program `A224072.P7542901662556030212` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224072 has offset 1).

The definition of A224072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4368 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224072.P2538251938665096628

`∩[2*n+1, A180963(n+1)]`
-/

namespace A224072.P2538251938665096628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224072.P2538251938665096628

namespace A224072

/-- `∩[2*n+1, A180963(n+1)]` -/
def P2538251938665096628.Spec : Prop :=
  ∀ n, (P2538251938665096628.a n : ℤ) = A224072 (n + 1)

end A224072

/-! ## A224072.P10801163474612753910

`record[A000265(A180963(1+n))]`
-/

namespace A224072.P10801163474612753910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A180963 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224072.P10801163474612753910

namespace A224072

/-- `record[A000265(A180963(1+n))]` -/
def P10801163474612753910.Spec : Prop :=
  ∀ n, P10801163474612753910.a n = A224072 (n + 1)

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

/-! ## A224072.P7542901662556030212

`filter[3*n, A228495(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A224072

/-- `filter[3*n, A228495(#)]` -/
def P7542901662556030212.Spec : Prop :=
  ∀ n, (P7542901662556030212.a n : ℤ) = A224072 (n + 1)

theorem P7542901662556030212.correct : P7542901662556030212.Spec := by
  intro n
  simp only [A224072, Nat.add_sub_cancel]

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

/-! ## A224072.P10998665966734021105

`∩[A016945(n), A092246(n+1)]`
-/

namespace A224072.P10998665966734021105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224072.P10998665966734021105

namespace A224072

/-- `∩[A016945(n), A092246(n+1)]` -/
def P10998665966734021105.Spec : Prop :=
  ∀ n, (P10998665966734021105.a n : ℤ) = A224072 (n + 1)

end A224072

/-! ## A224072.P1569425080078193685

`∩[A092246(n+1), A259754(n+1)]`
-/

namespace A224072.P1569425080078193685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224072.P1569425080078193685

namespace A224072

/-- `∩[A092246(n+1), A259754(n+1)]` -/
def P1569425080078193685.Spec : Prop :=
  ∀ n, (P1569425080078193685.a n : ℤ) = A224072 (n + 1)

end A224072

/-! ## A224072.P10889156786708110266

`∩[A092246(n+1), A277569(n+1)]`
-/

namespace A224072.P10889156786708110266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224072.P10889156786708110266

namespace A224072

/-- `∩[A092246(n+1), A277569(n+1)]` -/
def P10889156786708110266.Spec : Prop :=
  ∀ n, (P10889156786708110266.a n : ℤ) = A224072 (n + 1)

end A224072

/-! ## A224072.P7521204457443117497

`∩[A180963(n+1), A324298(n+1)]`
-/

namespace A224072.P7521204457443117497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224072.P7521204457443117497

namespace A224072

/-- `∩[A180963(n+1), A324298(n+1)]` -/
def P7521204457443117497.Spec : Prop :=
  ∀ n, (P7521204457443117497.a n : ℤ) = A224072 (n + 1)

end A224072

/-! ## A224072.P18170068427481045971

`∩[A092246(n+1), A174041(n+1)]`
-/

namespace A224072.P18170068427481045971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224072.P18170068427481045971

namespace A224072

/-- `∩[A092246(n+1), A174041(n+1)]` -/
def P18170068427481045971.Spec : Prop :=
  ∀ n, (P18170068427481045971.a n : ℤ) = A224072 (n + 1)

end A224072

/-! ## A224072.P7861373403374520066

`∩[A008585(n), A092246(n+1)]`
-/

namespace A224072.P7861373403374520066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224072.P7861373403374520066

namespace A224072

/-- `∩[A008585(n), A092246(n+1)]` -/
def P7861373403374520066.Spec : Prop :=
  ∀ n, (P7861373403374520066.a n : ℤ) = A224072 (n + 1)

end A224072

/-! ## A224072.P16952200481990338903

`∩[A016945(n), A091855(n+1)]`
-/

namespace A224072.P16952200481990338903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224072.P16952200481990338903

namespace A224072

/-- `∩[A016945(n), A091855(n+1)]` -/
def P16952200481990338903.Spec : Prop :=
  ∀ n, (P16952200481990338903.a n : ℤ) = A224072 (n + 1)

end A224072

/-! ## A224072.P9744307842711322464

`∩[A016945(n), A195608(n+1)]`
-/

namespace A224072.P9744307842711322464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224072.P9744307842711322464

namespace A224072

/-- `∩[A016945(n), A195608(n+1)]` -/
def P9744307842711322464.Spec : Prop :=
  ∀ n, (P9744307842711322464.a n : ℤ) = A224072 (n + 1)

end A224072

/-!
# A224073: Number of equivalence classes of words in F_2, modulo all automorphisms of F_2, whose minimal words have length n.

The programs for A224073, there is no canonical definition to state claims against.
-/

/-! ## A224073.P11073229812728158282

`A068962(A011260(n+1)+Δ[A368094(n)])`
-/

namespace A224073.P11073229812728158282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (A011260 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A224073.P11073229812728158282

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

/-! ## A224078.P856962417793999701

`∩[A002201(1+n), A004490(n+1)]`
-/

namespace A224078.P856962417793999701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002201 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224078.P856962417793999701

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
# A224089: Denominators of hypergeometric Cauchy numbers c_(5,n).

The programs for A224089, there is no canonical definition to state claims against.
-/

/-! ## A224089.P5578835917105529599

`A239663(n+1)*A354908(A393760(n))`
-/

namespace A224089.P5578835917105529599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239663 (n + 1) * A354908 (A393760 n).toNat

end

end A224089.P5578835917105529599

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

/-! ## A224096.P13230015931614616780

`A219247(A004905(n+1))²/A006233(n)`
-/

namespace A224096.P13230015931614616780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219247 (A004905 (n + 1)).toNat ^ 2 : ℚ) / (A006233 n : ℚ)

end

end A224096.P13230015931614616780

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

