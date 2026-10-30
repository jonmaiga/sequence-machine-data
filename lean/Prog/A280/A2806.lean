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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

/-!
# A280600: Number of n X 4 0..1 arrays with no element equal to more than two of its horizontal, vertical and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280600, the canonical program `A280600.P1593044402852605533` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280600 has offset 1).

The definition of A280600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 266 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280600.P1593044402852605533

`ogf((8+18x-52x^2+38x^3-18x^4-3x^5-36x^6-10x^7+21x^8-25x^9-10x^10+10x^11-x^12)/(1-4x+4x^2-2x^5+3x^7-2x^8-x^9+x^10))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A280600

/-- `ogf((8+18x-52x^2+38x^3-18x^4-3x^5-36x^6-10x^7+21x^8-25x^9-10x^10+10x^11-x^12)/(1-4x+4x^2-2x^5+3x^7-2x^8-x^9+x^10))` -/
def P1593044402852605533.Spec : Prop :=
  ∀ n, P1593044402852605533.a n = A280600 (n + 1)

theorem P1593044402852605533.correct : P1593044402852605533.Spec := by
  intro n
  simp only [A280600, Nat.add_sub_cancel]

end A280600

/-! ## A280600.P2957350371656874991

`A301323(∑[n+3]+7)`
-/

namespace A280600.P2957350371656874991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A280600.P2957350371656874991

namespace A280600

/-- `A301323(∑[n+3]+7)` -/
def P2957350371656874991.Spec : Prop :=
  ∀ n, P2957350371656874991.a n = A280600 (n + 1)

end A280600

/-! ## A280600.P18363325966226083861

`or(char[5], A301323(A141214(n)+7))`
-/

namespace A280600.P18363325966226083861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A301323 (A141214 n + 7).toNat)

end

end A280600.P18363325966226083861

namespace A280600

/-- `or(char[5], A301323(A141214(n)+7))` -/
def P18363325966226083861.Spec : Prop :=
  ∀ n, P18363325966226083861.a n = A280600 (n + 1)

end A280600

/-! ## A280600.P4956685448206880731

`A301323(A055999(n)+10)+and(2, n²)`
-/

namespace A280600.P4956685448206880731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (A055999 n + 10).toNat + (Nat.land 2 (n ^ 2) : ℤ)

end

end A280600.P4956685448206880731

namespace A280600

/-- `A301323(A055999(n)+10)+and(2, n²)` -/
def P4956685448206880731.Spec : Prop :=
  ∀ n, P4956685448206880731.a n = A280600 (n + 1)

end A280600

/-! ## A280600.P1540702629294707849

`A301323(A055999(n)+10)+A000007(n+1)`
-/

namespace A280600.P1540702629294707849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (A055999 n + 10).toNat + A000007 (n + 1)

end

end A280600.P1540702629294707849

namespace A280600

/-- `A301323(A055999(n)+10)+A000007(n+1)` -/
def P1540702629294707849.Spec : Prop :=
  ∀ n, P1540702629294707849.a n = A280600 (n + 1)

end A280600

/-!
# A280601: Number of nX5 0..1 arrays with no element equal to more than two of its horizontal, vertical and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280601, there is no canonical definition to state claims against.
-/

/-! ## A280601.P4190043032117995243

`A301320(n+1)-A002620(A289207(n))`
-/

namespace A280601.P4190043032117995243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301320 (n + 1) - A002620 (A289207 n).toNat

end

end A280601.P4190043032117995243

/-! ## A280601.P10793849978953195878

`A301323(A374005(n+1))-A002620(A289207(n))`
-/

namespace A280601.P10793849978953195878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (A374005 (n + 1)).toNat - A002620 (A289207 n).toNat

end

end A280601.P10793849978953195878

/-! ## A280601.P10342624589135381753

`A301323(A155212(n)+13)-A002620(A289207(n))`
-/

namespace A280601.P10342624589135381753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (A155212 n + 13).toNat - A002620 (A289207 n).toNat

end

end A280601.P10342624589135381753

/-! ## A280601.P6656680189061441435

`A301323(A056000(n)+15)-A002620(A289207(n))`
-/

namespace A280601.P6656680189061441435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (A056000 n + 15).toNat - A002620 (A289207 n).toNat

end

end A280601.P6656680189061441435

/-! ## A280601.P10596202344418914668

`A301323(A145018(n+5)+1)-A002620(A289207(n))`
-/

namespace A280601.P10596202344418914668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (A145018 (n + 5) + 1).toNat - A002620 (A289207 n).toNat

end

end A280601.P10596202344418914668

/-!
# A280602: Number of nX6 0..1 arrays with no element equal to more than two of its horizontal, vertical and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280602, there is no canonical definition to state claims against.
-/

/-! ## A280602.P11515693183277627990

`A280604(∑[n+5]+16)`
-/

namespace A280602.P11515693183277627990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280604 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A280602.P11515693183277627990

/-! ## A280602.P5278390132854601661

`or(char[1], A280604(A000096(n+4)+7))`
-/

namespace A280602.P5278390132854601661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A280604 (A000096 (n + 4) + 7).toNat)

end

end A280602.P5278390132854601661

/-! ## A280602.P14935272260169886970

`A007318(C(2, n))*A280604(A000096(n+4)+7)`
-/

namespace A280602.P14935272260169886970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A280604 (A000096 (n + 4) + 7).toNat

end

end A280602.P14935272260169886970

/-! ## A280602.P2718859095836719009

`A280604(A000096(n+4)+7)%A000032(n+50)`
-/

namespace A280602.P2718859095836719009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280604 (A000096 (n + 4) + 7).toNat) (A000032 (n + 50))

end

end A280602.P2718859095836719009

/-! ## A280602.P5402586214757460461

`A280604(A000096(n+4)+7)/A007318(C(n, n²))`
-/

namespace A280602.P5402586214757460461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280604 (A000096 (n + 4) + 7).toNat : ℚ) / (A007318 (Nat.choose n (n ^ 2)) : ℚ)

end

end A280602.P5402586214757460461

/-!
# A280603: Number of nX7 0..1 arrays with no element equal to more than two of its horizontal, vertical and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280603, there is no canonical definition to state claims against.
-/

/-! ## A280603.P15551304178849468368

`A280604(A056119(n)+28)`
-/

namespace A280603.P15551304178849468368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280604 (A056119 n + 28).toNat

end

end A280603.P15551304178849468368

/-! ## A280603.P8856904148410208493

`A280604(A133263(n+6)+5)`
-/

namespace A280603.P8856904148410208493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280604 (A133263 (n + 6) + 5).toNat

end

end A280603.P8856904148410208493

/-! ## A280603.P12166179768946225591

`A280604(A000124(n+6)+6)`
-/

namespace A280603.P12166179768946225591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280604 (A000124 (n + 6) + 6).toNat

end

end A280603.P12166179768946225591

/-! ## A280603.P1524579570271248434

`A280604(A000217(n+6)+7)`
-/

namespace A280603.P1524579570271248434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280604 (A000217 (n + 6) + 7).toNat

end

end A280603.P1524579570271248434

/-! ## A280603.P4216417997578850599

`A280604(A052905(n+3)+12)`
-/

namespace A280603.P4216417997578850599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280604 (A052905 (n + 3) + 12).toNat

end

end A280603.P4216417997578850599

/-!
# A280604: T(n,k)=Number of nXk 0..1 arrays with no element equal to more than two of its horizontal, vertical and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280604, there is no canonical definition to state claims against.
-/

/-! ## A280604.P803227526253553875

`A301323(n+1)-A262693(A197529(n+1))`
-/

namespace A280604.P803227526253553875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (n + 1) - A262693 (A197529 (n + 1)).toNat

end

end A280604.P803227526253553875

/-! ## A280604.P2821569063021245084

`A301323(n+1)-C(A010894(n), 10)`
-/

namespace A280604.P2821569063021245084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (n + 1) - (Nat.choose (A010894 (n + 21)).toNat 10 : ℤ)

end

end A280604.P2821569063021245084

/-! ## A280604.P14742726224488812580

`A301323(n+1)-A035042(A010894(n))`
-/

namespace A280604.P14742726224488812580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (n + 1) - A035042 (A010894 (n + 21)).toNat

end

end A280604.P14742726224488812580

/-! ## A280604.P14232074503918063880

`A301323(n+1)-A102683(A034502(n+1))`
-/

namespace A280604.P14232074503918063880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (n + 1) - A102683 (A034502 (n + 1)).toNat

end

end A280604.P14232074503918063880

/-! ## A280604.P6539770569992522746

`A301323(n+1)%A101167(n+1)`
-/

namespace A280604.P6539770569992522746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301323 (n + 1)) (A101167 (n + 1))

end

end A280604.P6539770569992522746

/-!
# A280605: Expansion of 1/(1 - Sum_{p prime, k>=2} x^(p^k)).

The programs for A280605, there is no canonical definition to state claims against.
-/

/-! ## A280605.P4581651610388193683

`A118759(A362427(n))`
-/

namespace A280605.P4581651610388193683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A362427 n).toNat

end

end A280605.P4581651610388193683

/-! ## A280605.P14421815731938751119

`A362427(n)%A002764(n)`
-/

namespace A280605.P14421815731938751119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362427 n) (A002764 n)

end

end A280605.P14421815731938751119

/-! ## A280605.P15554677179286309236

`and(A359082(n+1), A362427(n))`
-/

namespace A280605.P15554677179286309236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A359082 (n + 1)) (A362427 n)

end

end A280605.P15554677179286309236

/-! ## A280605.P5898279643307411372

`A362427(n)+A000038(A218512(n))`
-/

namespace A280605.P5898279643307411372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362427 n + A000038 (A218512 n).toNat

end

end A280605.P5898279643307411372

/-! ## A280605.P5532252406814257876

`A362427(n)+A362425(A200520(n))`
-/

namespace A280605.P5532252406814257876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362427 n + A362425 (A200520 n).toNat

end

end A280605.P5532252406814257876

/-!
# A280606: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 294", based on the 5-celled von Neumann neighborhood.

The programs for A280606, the canonical program `A280606.P3657978912699832141` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280606 has offset 0).

The definition of A280606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280606.P3657978912699832141

`ogf((1+10x-11x^2+10x^3-9x^4-100x^6)/(1-x-100x^2+100x^3))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A280606

/-- `ogf((1+10x-11x^2+10x^3-9x^4-100x^6)/(1-x-100x^2+100x^3))` -/
def P3657978912699832141.Spec : Prop :=
  ∀ n, P3657978912699832141.a n = A280606 n

theorem P3657978912699832141.correct : P3657978912699832141.Spec := by
  intro n
  simp only [A280606]

end A280606

/-! ## A280606.P16624177655164115951

`A000042(n+1)-A282871(A028310(n))`
-/

namespace A280606.P16624177655164115951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A282871 (A028310 n).toNat

end

end A280606.P16624177655164115951

namespace A280606

/-- `A000042(n+1)-A282871(A028310(n))` -/
def P16624177655164115951.Spec : Prop :=
  ∀ n, P16624177655164115951.a n = A280606 n

end A280606

/-! ## A280606.P15108206860540267262

`A280607(n)+A283348(n)-A282871(n)`
-/

namespace A280606.P15108206860540267262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280607 n + (A283348 n - A282871 n)

end

end A280606.P15108206860540267262

namespace A280606

/-- `A280607(n)+A283348(n)-A282871(n)` -/
def P15108206860540267262.Spec : Prop :=
  ∀ n, P15108206860540267262.a n = A280606 n

end A280606

/-! ## A280606.P12491269846604585012

`A283136(n)+A282218(n)-A282871(n)`
-/

namespace A280606.P12491269846604585012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283136 n + A282218 n - A282871 n

end

end A280606.P12491269846604585012

namespace A280606

/-- `A283136(n)+A282218(n)-A282871(n)` -/
def P12491269846604585012.Spec : Prop :=
  ∀ n, P12491269846604585012.a n = A280606 n

end A280606

/-! ## A280606.P9892023199259367834

`A283590(n+2)%A283355(n+1)`
-/

namespace A280606.P9892023199259367834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283590 (n + 2)) (A283355 (n + 1))

end

end A280606.P9892023199259367834

namespace A280606

/-- `A283590(n+2)%A283355(n+1)` -/
def P9892023199259367834.Spec : Prop :=
  ∀ n, P9892023199259367834.a n = A280606 n

end A280606

/-!
# A280607: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 294", based on the 5-celled von Neumann neighborhood.

The programs for A280607, there is no canonical definition to state claims against.
-/

/-! ## A280607.P13541802032437429196

`∑[10^n]-A283348(A028310(n))`
-/

namespace A280607.P13541802032437429196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A283348 (A028310 n).toNat

end

end A280607.P13541802032437429196

/-! ## A280607.P11394525763111583957

`or(1, A000042(n+1)-A283348(n))`
-/

namespace A280607.P11394525763111583957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000042 (n + 1) - A283348 n)

end

end A280607.P11394525763111583957

/-! ## A280607.P5600451472665217508

`A280606(n)+A282871(n)-A283348(n)`
-/

namespace A280607.P5600451472665217508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280606 n + (A282871 n - A283348 n)

end

end A280607.P5600451472665217508

/-! ## A280607.P15595782044085382352

`A283219(n)+A281096(n)-A283348(n)`
-/

namespace A280607.P15595782044085382352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283219 n + A281096 n - A283348 n

end

end A280607.P15595782044085382352

/-! ## A280607.P15011356600994001161

`A283136(n)+A282218(n)-A283348(n)`
-/

namespace A280607.P15011356600994001161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283136 n + A282218 n - A283348 n

end

end A280607.P15011356600994001161

/-! ## A280607.P13708824778430921447

`A283137(n)+A282219(n)-A283348(n)`
-/

namespace A280607.P13708824778430921447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283137 n + A282219 n - A283348 n

end

end A280607.P13708824778430921447

/-! ## A280607.P4638289230968697357

`A283372(n)+A282305(n)-A283348(n)`
-/

namespace A280607.P4638289230968697357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283372 n + A282305 n - A283348 n

end

end A280607.P4638289230968697357

/-! ## A280607.P13872644202605311200

`A283373(n)+A282306(n)-A283348(n)`
-/

namespace A280607.P13872644202605311200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283373 n + A282306 n - A283348 n

end

end A280607.P13872644202605311200

/-! ## A280607.P13878630056188354373

`A000042(n+1)-A283348(A000007(n)+n)`
-/

namespace A280607.P13878630056188354373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A283348 (A000007 n + (n : ℤ)).toNat

end

end A280607.P13878630056188354373

/-! ## A280607.P7521854316893812590

`A064911(4*(n+1))+A000042(n+1)-A283348(n)`
-/

namespace A280607.P7521854316893812590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (4 * (n + 1)) + (A000042 (n + 1) - A283348 n)

end

end A280607.P7521854316893812590

/-!
# A280608: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 294", based on the 5-celled von Neumann neighborhood.

The programs for A280608, the canonical program `A280608.P14150978127026932976` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280608 has offset 0).

The definition of A280608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280608.P10367932555749162187

`ogf((1+2x-3x^2+2x^3-x^4-4x^6)/(1-x-4x^2+4x^3))`
-/

namespace A280608.P10367932555749162187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -3, 2, -1, 0, -4] [1, -1, -4, 4] n

end

end A280608.P10367932555749162187

namespace A280608

/-- `ogf((1+2x-3x^2+2x^3-x^4-4x^6)/(1-x-4x^2+4x^3))` -/
def P10367932555749162187.Spec : Prop :=
  ∀ n, P10367932555749162187.a n = A280608 n

end A280608

/-! ## A280608.P14150978127026932976

`a(n-1)+4*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=14, a(4)=17, a(5)=57, a(6)=65`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A280608

/-- `a(n-1)+4*a(n-2)-4*a(n-3)` -/
def P14150978127026932976.Spec : Prop :=
  ∀ n, P14150978127026932976.a n = A280608 n

theorem P14150978127026932976.correct : P14150978127026932976.Spec := by
  intro n
  simp only [A280608]

end A280608

/-! ## A280608.P15853188133771383665

`∑[2^(n+1)-Δ[A283357(n)]]`
-/

namespace A280608.P15853188133771383665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283357 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280608.P15853188133771383665

namespace A280608

/-- `∑[2^(n+1)-Δ[A283357(n)]]` -/
def P15853188133771383665.Spec : Prop :=
  ∀ n, P15853188133771383665.a n = A280608 n

end A280608

/-! ## A280608.P11856241479239223303

`A095121(n)+1-A283349(n)`
-/

namespace A280608.P11856241479239223303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + 1 - A283349 n

end

end A280608.P11856241479239223303

namespace A280608

/-- `A095121(n)+1-A283349(n)` -/
def P11856241479239223303.Spec : Prop :=
  ∀ n, P11856241479239223303.a n = A280608 n

end A280608

/-! ## A280608.P5831482923455006112

`A126646(n)-A283349(A028310(n))`
-/

namespace A280608.P5831482923455006112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A283349 (A028310 n).toNat

end

end A280608.P5831482923455006112

namespace A280608

/-- `A126646(n)-A283349(A028310(n))` -/
def P5831482923455006112.Spec : Prop :=
  ∀ n, P5831482923455006112.a n = A280608 n

end A280608

/-! ## A280608.P17531731205228075735

`∑[A000079(n)]-A283349(A028310(n))`
-/

namespace A280608.P17531731205228075735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A283349 (A028310 n).toNat

end

end A280608.P17531731205228075735

namespace A280608

/-- `∑[A000079(n)]-A283349(A028310(n))` -/
def P17531731205228075735.Spec : Prop :=
  ∀ n, P17531731205228075735.a n = A280608 n

end A280608

/-! ## A280608.P10045099730648523895

`A126646(n)-A283349(n)%A000079(n)`
-/

namespace A280608.P10045099730648523895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A283349 n) (A000079 n)

end

end A280608.P10045099730648523895

namespace A280608

/-- `A126646(n)-A283349(n)%A000079(n)` -/
def P10045099730648523895.Spec : Prop :=
  ∀ n, P10045099730648523895.a n = A280608 n

end A280608

/-! ## A280608.P2128992832204971430

`or(A126646(n)-A283349(n), A154383(n))`
-/

namespace A280608.P2128992832204971430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A126646 n - A283349 n) (A154383 n)

end

end A280608.P2128992832204971430

namespace A280608

/-- `or(A126646(n)-A283349(n), A154383(n))` -/
def P2128992832204971430.Spec : Prop :=
  ∀ n, P2128992832204971430.a n = A280608 n

end A280608

/-! ## A280608.P17657894045592117431

`∑[2^(n+1)]+1-A283357(n+1)`
-/

namespace A280608.P17657894045592117431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - A283357 (n + 1))

end

end A280608.P17657894045592117431

namespace A280608

/-- `∑[2^(n+1)]+1-A283357(n+1)` -/
def P17657894045592117431.Spec : Prop :=
  ∀ n, P17657894045592117431.a n = A280608 n

end A280608

/-! ## A280608.P5956977603265660527

`A000079(n)+A280606(n)%A000079(n)`
-/

namespace A280608.P5956977603265660527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + Int.tmod (A280606 n) (A000079 n)

end

end A280608.P5956977603265660527

namespace A280608

/-- `A000079(n)+A280606(n)%A000079(n)` -/
def P5956977603265660527.Spec : Prop :=
  ∀ n, P5956977603265660527.a n = A280608 n

end A280608

/-!
# A280609: Odd prime powers with prime exponents.

The programs for A280609, there is no canonical definition to state claims against.
-/

/-! ## A280609.P16422860471072657056

`∩[A053810(n+1), A062739(n+1)]`
-/

namespace A280609.P16422860471072657056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280609.P16422860471072657056

/-! ## A280609.P5653711373651175826

`∩[A053810(n+1), A075109(n+1)]`
-/

namespace A280609.P5653711373651175826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280609.P5653711373651175826

/-! ## A280609.P18298043417279557750

`∩[A053810(n+1), A225498(n+1)]`
-/

namespace A280609.P18298043417279557750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280609.P18298043417279557750

/-! ## A280609.P12950274904207436294

`∩[A053810(n+1), A244623(n+1)]`
-/

namespace A280609.P12950274904207436294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280609.P12950274904207436294

/-! ## A280609.P6699758216738511245

`∩[A093771(n+1), A244623(n+1)]`
-/

namespace A280609.P6699758216738511245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280609.P6699758216738511245

/-! ## A280609.P14937186638342668393

`∩[A053810(n+1), A325359(n+1)]`
-/

namespace A280609.P14937186638342668393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280609.P14937186638342668393

/-! ## A280609.P8711894961647351520

`∩[A053810(n+1), A377702(n+1)]`
-/

namespace A280609.P8711894961647351520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280609.P8711894961647351520

/-! ## A280609.P18130303530975311348

`∩[A053810(n+1), A156787(n+1)]`
-/

namespace A280609.P18130303530975311348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280609.P18130303530975311348

/-! ## A280609.P18170849434443526948

`∩[A075109(n+1), A114129(n+1)]`
-/

namespace A280609.P18170849434443526948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280609.P18170849434443526948

/-! ## A280609.P15444341953308755791

`∩[A114129(n+1), A244623(n+1)]`
-/

namespace A280609.P15444341953308755791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280609.P15444341953308755791

/-! ## A280609.P8137553482582640325

`∩[A114129(n+1), A377702(n+1)]`
-/

namespace A280609.P8137553482582640325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280609.P8137553482582640325

/-! ## A280609.P9277764664430524305

`∩[A075109(n+1), A385288(n+1)]`
-/

namespace A280609.P9277764664430524305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280609.P9277764664430524305

/-! ## A280609.P5250402977196860056

`∩[A244623(n+1), A385288(n+1)]`
-/

namespace A280609.P5250402977196860056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280609.P5250402977196860056

/-! ## A280609.P3160128415678049916

`∩[A377702(n+1), A385288(n+1)]`
-/

namespace A280609.P3160128415678049916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280609.P3160128415678049916

/-! ## A280609.P2059370126351301891

`∩[A053810(n+1), A327756(n+1)]`
-/

namespace A280609.P2059370126351301891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280609.P2059370126351301891

/-!
# A280610: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 294", based on the 5-celled von Neumann neighborhood.

The programs for A280610, the canonical program `A280610.P12477911629004095253` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280610 has offset 0).

The definition of A280610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280610.P17256759213286269280

`ogf((1+x-6x^2+4x^3+8x^4-16x^6)/(1-2x-x^2+2x^3))`
-/

namespace A280610.P17256759213286269280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -6, 4, 8, 0, -16] [1, -2, -1, 2] n

end

end A280610.P17256759213286269280

namespace A280610

/-- `ogf((1+x-6x^2+4x^3+8x^4-16x^6)/(1-2x-x^2+2x^3))` -/
def P17256759213286269280.Spec : Prop :=
  ∀ n, P17256759213286269280.a n = A280610 n

end A280610

/-! ## A280610.P12477911629004095253

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=1, a(3)=7, a(4)=17, a(5)=39, a(6)=65`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A280610

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P12477911629004095253.Spec : Prop :=
  ∀ n, P12477911629004095253.a n = A280610 n

theorem P12477911629004095253.correct : P12477911629004095253.Spec := by
  intro n
  simp only [A280610]

end A280610

/-! ## A280610.P10423027388275857954

`or(1, A126646(n)-A283350(n))`
-/

namespace A280610.P10423027388275857954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A126646 n - A283350 n)

end

end A280610.P10423027388275857954

namespace A280610

/-- `or(1, A126646(n)-A283350(n))` -/
def P10423027388275857954.Spec : Prop :=
  ∀ n, P10423027388275857954.a n = A280610 n

end A280610

/-! ## A280610.P7756638373928043886

`A126646(n)-A283350(A028310(n))`
-/

namespace A280610.P7756638373928043886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A283350 (A028310 n).toNat

end

end A280610.P7756638373928043886

namespace A280610

/-- `A126646(n)-A283350(A028310(n))` -/
def P7756638373928043886.Spec : Prop :=
  ∀ n, P7756638373928043886.a n = A280610 n

end A280610

/-! ## A280610.P1776411541842859055

`∑[A000079(n)]-A283350(A028310(n))`
-/

namespace A280610.P1776411541842859055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A283350 (A028310 n).toNat

end

end A280610.P1776411541842859055

namespace A280610

/-- `∑[A000079(n)]-A283350(A028310(n))` -/
def P1776411541842859055.Spec : Prop :=
  ∀ n, P1776411541842859055.a n = A280610 n

end A280610

/-! ## A280610.P9018257189044528276

`(A126646(n+1)-A283358(n+1))/2`
-/

namespace A280610.P9018257189044528276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126646 (n + 1) - A283358 (n + 1) : ℚ) / 2

end

end A280610.P9018257189044528276

namespace A280610

/-- `(A126646(n+1)-A283358(n+1))/2` -/
def P9018257189044528276.Spec : Prop :=
  ∀ n, P9018257189044528276.a n = (A280610 n : ℚ)

end A280610

/-! ## A280610.P15753716994515716366

`(A126646(n)*A283358(n+1))%A126646(n+1)`
-/

namespace A280610.P15753716994515716366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 n * A283358 (n + 1)) (A126646 (n + 1))

end

end A280610.P15753716994515716366

namespace A280610

/-- `(A126646(n)*A283358(n+1))%A126646(n+1)` -/
def P15753716994515716366.Spec : Prop :=
  ∀ n, P15753716994515716366.a n = A280610 n

end A280610

/-!
# A280611: Number of degree n products of distinct cyclotomic polynomials.

The programs for A280611, there is no canonical definition to state claims against.
-/

/-! ## A280611.P10328288923809411158

`A280709(n)-a(n-1)` with `a(0)=1`
-/

namespace A280611.P10328288923809411158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A280709 n - a (n - 1)

end

end A280611.P10328288923809411158

/-! ## A280611.P9403849700985002671

`abs(∑[A033999(n)*A280709(n)])`
-/

namespace A280611.P9403849700985002671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A280709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A280611.P9403849700985002671

/-! ## A280611.P11605407557283429297

`A057428(n)^n*∑[A033999(n)*A280709(n)]`
-/

namespace A280611.P11605407557283429297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A280709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A280611.P11605407557283429297

/-! ## A280611.P16373936417009801276

`∑[A009001(2*n)*A280709(n)]*A009001(2*n)`
-/

namespace A280611.P16373936417009801276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A280709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A009001 (2 * n)

end

end A280611.P16373936417009801276

/-! ## A280611.P10212345477780014549

`abs(∑[A087960(2*n)*A280709(n)])`
-/

namespace A280611.P10212345477780014549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A280709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A280611.P10212345477780014549

/-!
# A280612: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 297", based on the 5-celled von Neumann neighborhood.

The programs for A280612, there is no canonical definition to state claims against.
-/

/-! ## A280612.P5354233894607634148

`A007088(A280614(n))`
-/

namespace A280612.P5354233894607634148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280614 n).toNat

end

end A280612.P5354233894607634148

/-! ## A280612.P15091211322016205320

`A185544(2*A280614(n))`
-/

namespace A280612.P15091211322016205320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A280614 n).toNat

end

end A280612.P15091211322016205320

/-!
# A280613: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 297", based on the 5-celled von Neumann neighborhood.

The programs for A280613, there is no canonical definition to state claims against.
-/

/-! ## A280613.P13724217687832374481

`A007088(A280615(n))`
-/

namespace A280613.P13724217687832374481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280615 n).toNat

end

end A280613.P13724217687832374481

/-! ## A280613.P3622526248766205935

`A185544(2*A280615(n))`
-/

namespace A280613.P3622526248766205935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A280615 n).toNat

end

end A280613.P3622526248766205935

/-! ## A280613.P9186996368063637720

`A281040(A004912(n+1))`
-/

namespace A280613.P9186996368063637720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281040 (A004912 (n + 1)).toNat

end

end A280613.P9186996368063637720

/-!
# A280614: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 297", based on the 5-celled von Neumann neighborhood.

The programs for A280614, there is no canonical definition to state claims against.
-/

/-! ## A280614.P15614346965931252930

`A281041(n)-A308583(A058843(n+1))`
-/

namespace A280614.P15614346965931252930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281041 n - A308583 (A058843 (n + 1)).toNat

end

end A280614.P15614346965931252930

/-!
# A280617: Number of n-smooth Carmichael numbers.

The programs for A280617, there is no canonical definition to state claims against.
-/

/-! ## A280617.P1967623462175332081

`∑{#}[A000720(n+1)-1, A283715(#+1)]`
-/

namespace A280617.P1967623462175332081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A283715 (k + 1)

end

end A280617.P1967623462175332081

/-! ## A280617.P1920878102679760480

`A105519(A105425(n^A105519(n)))`
-/

namespace A280617.P1920878102679760480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105519 (A105425 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A105519 n : ℤ))).toNat).toNat

end

end A280617.P1920878102679760480

/-! ## A280617.P16455665494141925187

`∑[A107652(A157103(n+1))]`
-/

namespace A280617.P16455665494141925187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107652 (A157103 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280617.P16455665494141925187

/-! ## A280617.P11084129122019360478

`∑[A243822(A027642(n)+1)]`
-/

namespace A280617.P11084129122019360478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243822 (A027642 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280617.P11084129122019360478

/-!
# A280618: Expansion of (Sum_{k>=1} x^(k^3))^2.

The programs for A280618, there is no canonical definition to state claims against.
-/

/-! ## A280618.P15780807751860795826

`A025468(n)+A025455(n)`
-/

namespace A280618.P15780807751860795826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 n + A025455 n

end

end A280618.P15780807751860795826

/-! ## A280618.P13348488975078397588

`col(A025455(n)*A175362(n))`
-/

namespace A280618.P13348488975078397588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A025455 n * A175362 n).toNat

end

end A280618.P13348488975078397588

/-! ## A280618.P993423388630528497

`(1-A010057(n))*A173677(n)`
-/

namespace A280618.P993423388630528497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010057 n) * A173677 n

end

end A280618.P993423388630528497

/-! ## A280618.P16768934163713218075

`char[A003325(n+1)]*A173677(n)`
-/

namespace A280618.P16768934163713218075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A173677 n

end

end A280618.P16768934163713218075

/-! ## A280618.P12226867036310608727

`char[A051386(n+1)]*A173677(n)`
-/

namespace A280618.P12226867036310608727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051386 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A173677 n

end

end A280618.P12226867036310608727

/-! ## A280618.P11440366477091618600

`A103294(1+floor(n^(1/3))-ceil(n^(1/3)))*A173677(n)`
-/

namespace A280618.P11440366477091618600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103294 (1 + ⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ - ⌈(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌉).toNat * A173677 n

end

end A280618.P11440366477091618600

/-! ## A280618.P3514264059318730391

`A173677(n)*A269939(1+floor(n^(1/3))-ceil(n^(1/3)))`
-/

namespace A280618.P3514264059318730391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173677 n * A269939 (1 + ⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ - ⌈(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌉).toNat

end

end A280618.P3514264059318730391

/-! ## A280618.P4727483525088883251

`A002265(A175362(n)-A010057(n))`
-/

namespace A280618.P4727483525088883251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A175362 n - A010057 n).toNat

end

end A280618.P4727483525088883251

/-! ## A280618.P9441838466582066869

`(2-A010057(A025480(n)))*A025455(n)`
-/

namespace A280618.P9441838466582066869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010057 (A025480 n).toNat) * A025455 n

end

end A280618.P9441838466582066869

/-! ## A280618.P12268926453686160732

`(2-A010057(A065033(n)))*A025455(n)`
-/

namespace A280618.P12268926453686160732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010057 (A065033 n).toNat) * A025455 n

end

end A280618.P12268926453686160732

/-! ## A280618.P3208001280037982192

`A025455(n)+A025465(n)-A025469(n)`
-/

namespace A280618.P3208001280037982192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 n + (A025465 n - A025469 n)

end

end A280618.P3208001280037982192

/-! ## A280618.P14510574873344463803

`A033665(lcm(A175362(n), A175368(n)))`
-/

namespace A280618.P14510574873344463803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 (Int.lcm (A175362 n) (A175368 n))

end

end A280618.P14510574873344463803

/-!
# A280619: Integers m such that sigma(m) - eulerphi(m) <= 4*sqrt(m).

The programs for A280619, there is no canonical definition to state claims against.
-/

/-! ## A280619.P2561762672347804090

`∩[A000961(n+1), A138389(n+1)]`
-/

namespace A280619.P2561762672347804090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280619.P2561762672347804090

/-! ## A280619.P14552883547297041210

`filter[A138389(n+1), A324290(#)]`
-/

namespace A280619.P14552883547297041210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A280619.P14552883547297041210

/-! ## A280619.P6231824261139534197

`record[gcd(n+1, 2*A020639(n+1)²)]`
-/

namespace A280619.P6231824261139534197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (2 * A020639 (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280619.P6231824261139534197

/-! ## A280619.P11051890501293357963

`∩[A138389(n+1), A247199(n+1)]`
-/

namespace A280619.P11051890501293357963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280619.P11051890501293357963

/-! ## A280619.P103722196443936658

`∩[A268082(n+1), A138389(n+1)]`
-/

namespace A280619.P103722196443936658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280619.P103722196443936658

/-! ## A280619.P11280472951518393748

`eq[A000045(A046079(n+1)), A024361(n+1)]+1`
-/

namespace A280619.P11280472951518393748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A046079 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A280619.P11280472951518393748

/-! ## A280619.P17707573780849573043

`lt[A069359(n+1), A280292(n+1)+2]+1`
-/

namespace A280619.P17707573780849573043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280292 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A280619.P17707573780849573043

/-! ## A280619.P6819229022612812607

`lt[∑{p}[n, (n-3)/#]², n]`
-/

namespace A280619.P6819229022612812607
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f2 n), ((n : ℤ) - 3 : ℚ) / (p : ℚ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n

end

end A280619.P6819229022612812607

/-! ## A280619.P422826440891707547

`lt[∏{p}[n, (n/#)²], 2*n+1]`
-/

namespace A280619.P422826440891707547
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((n : ℚ) / (p : ℚ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n

end

end A280619.P422826440891707547

/-! ## A280619.P13873269157632134557

`lt[∏{p}[n, (n-1)/#]², 2*n]`
-/

namespace A280619.P13873269157632134557
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), ((n : ℤ) - 1 : ℚ) / (p : ℚ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n

end

end A280619.P13873269157632134557

/-! ## A280619.P16914613100217660290

`filter[A138389(n+1), A010055(#)]`
-/

namespace A280619.P16914613100217660290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A280619.P16914613100217660290

/-! ## A280619.P6048693464355177702

`lt[A002264(n), (n/A092976(n))²]`
-/

namespace A280619.P6048693464355177702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / (A092976 n : ℚ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A280619.P6048693464355177702

/-! ## A280619.P2562459066395200057

`lt[n, A127421(A014963(n+1))]+1`
-/

namespace A280619.P2562459066395200057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (A014963 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A280619.P2562459066395200057

/-! ## A280619.P3547508933099477617

`lt[A004525(n), A014963(n+1)²]+1`
-/

namespace A280619.P3547508933099477617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A280619.P3547508933099477617

/-! ## A280619.P419940158242394524

`lt[(2-A092976(n))², A018252(n+1)]`
-/

namespace A280619.P419940158242394524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A092976 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A280619.P419940158242394524

/-! ## A280619.P11351399455888883432

`lt[A109606(n+1), A014963(n+1)²]+1`
-/

namespace A280619.P11351399455888883432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A280619.P11351399455888883432

/-! ## A280619.P8648106119797691156

`lt[A000196(n+1)-1, A014963(n+1)]+1`
-/

namespace A280619.P8648106119797691156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A280619.P8648106119797691156

/-! ## A280619.P892125189028107418

`eq[A004275(A032741(n)), A284289(n)]`
-/

namespace A280619.P892125189028107418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280619.P892125189028107418

/-! ## A280619.P3017041104543273711

`eq[A074206(n)*A284289(n), A284289(n)²]`
-/

namespace A280619.P3017041104543273711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n * A284289 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280619.P3017041104543273711

/-!
# A280620: E.g.f. S(x) satisfies: C(x)^2 - S(x)^2 = 1 and D(x)^3 - S(x)^3 = 1, where functions C(x) and D(x) are described by A280621 and A280622, respectively.

The programs for A280620, there is no canonical definition to state claims against.
-/

/-! ## A280620.P16058895457842481591

`A280623(n+1)-A280621(n+1)`
-/

namespace A280620.P16058895457842481591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280623 (n + 1) - A280621 (n + 1)

end

end A280620.P16058895457842481591

/-! ## A280620.P13388730516630205113

`and(A033951(n), A264534(A192400(n)))`
-/

namespace A280620.P13388730516630205113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033951 n) (A264534 (A192400 n).toNat)

end

end A280620.P13388730516630205113

/-! ## A280620.P3452725978910896271

`and(A003961(A236828(n+1)), A009121(n))`
-/

namespace A280620.P3452725978910896271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003961 (A236828 (n + 1)).toNat) (A009121 n)

end

end A280620.P3452725978910896271

/-!
# A280621: E.g.f. C(x) satisfies: C(x)^2 - S(x)^2 = 1 and D(x)^3 - S(x)^3 = 1, where functions S(x) and D(x) are described by A280620 and A280622, respectively.

The programs for A280621, there is no canonical definition to state claims against.
-/

/-! ## A280621.P1738815355456998407

`A280623(n)-A280620(A000038(n)+n)`
-/

namespace A280621.P1738815355456998407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280623 n - A280620 (A000038 n + (n : ℤ)).toNat

end

end A280621.P1738815355456998407

/-! ## A280621.P9539738206559987629

`A013332(and(n, A265426(n+1)))`
-/

namespace A280621.P9539738206559987629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013332 (Int.land (n : ℤ) (A265426 (n + 1))).toNat

end

end A280621.P9539738206559987629

/-! ## A280621.P7760557406845002005

`A004523(A375701(n))^∑{digits}[n, #%2]`
-/

namespace A280621.P7760557406845002005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A375701 n).toNat ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % 2).sum

end

end A280621.P7760557406845002005

/-! ## A280621.P17071655065975916785

`A373514(A000085(n))^A196564(n)`
-/

namespace A280621.P17071655065975916785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373514 (A000085 n).toNat : ℚ) ^ (A196564 n : ℤ)

end

end A280621.P17071655065975916785

/-!
# A280623: E.g.f. C(x) + S(x), where C(x)^2 - S(x)^2 = 1 and D(x)^3 - S(x)^3 = 1, and functions S(x), C(x), and D(x) are described by A280620, A280621, and A280622, respectively.

The programs for A280623, there is no canonical definition to state claims against.
-/

/-! ## A280623.P5158402847076537364

`A280621(n)+A280620(A000038(n)+n)`
-/

namespace A280623.P5158402847076537364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280621 n + A280620 (A000038 n + (n : ℤ)).toNat

end

end A280623.P5158402847076537364

/-! ## A280623.P16146010359485063075

`A280621(A028310(n))+A280620(A028310(n))`
-/

namespace A280623.P16146010359485063075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280621 (A028310 n).toNat + A280620 (A028310 n).toNat

end

end A280623.P16146010359485063075

/-! ## A280623.P17894698637398736233

`A133310(A226570(n!))`
-/

namespace A280623.P17894698637398736233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 (A226570 (Nat.factorial n)).toNat

end

end A280623.P17894698637398736233

/-!
# A280624: E.g.f. 1/(D(x) - S(x)), where C(x)^2 - S(x)^2 = 1 and D(x)^3 - S(x)^3 = 1, and functions S(x), C(x), and D(x) are described by A280620, A280621, and A280622, respectively.

The programs for A280624, there is no canonical definition to state claims against.
-/

/-! ## A280624.P14256737915439783168

`A046079(A002315(n))+A020051(n)`
-/

namespace A280624.P14256737915439783168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (A002315 n).toNat + A020051 n

end

end A280624.P14256737915439783168

/-! ## A280624.P6581356104563072283

`A328440(n)+A048105(A091768(n))`
-/

namespace A280624.P6581356104563072283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328440 n + A048105 (A091768 n).toNat

end

end A280624.P6581356104563072283

/-! ## A280624.P15538266460234714966

`A328440(n)+A327695(A214401(n+1))`
-/

namespace A280624.P15538266460234714966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328440 n + A327695 (A214401 (n + 1)).toNat

end

end A280624.P15538266460234714966

/-!
# A280625: E.g.f. S(x) satisfies: C(x)^2 - S(x)^2 = 1 and D(x)^4 - S(x)^4 = 1, where functions C(x) and D(x) are described by A280626 and A280627, respectively.

The programs for A280625, there is no canonical definition to state claims against.
-/

/-! ## A280625.P7158972155472041368

`A280628(Δ[n²])`
-/

namespace A280625.P7158972155472041368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280628 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A280625.P7158972155472041368

/-! ## A280625.P11667401579369613767

`or(1, A280628(2*n+1))`
-/

namespace A280625.P11667401579369613767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A280628 (2 * n + 1))

end

end A280625.P11667401579369613767

/-! ## A280625.P2862128756380877784

`A007913(A072861(n+1))*A280628(2*n+1)`
-/

namespace A280625.P2862128756380877784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A072861 (n + 1)).toNat * A280628 (2 * n + 1)

end

end A280625.P2862128756380877784

/-! ## A280625.P11370454281888038125

`A007913(A073364(n))*A280628(2*n+1)`
-/

namespace A280625.P11370454281888038125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A073364 n).toNat * A280628 (2 * n + 1)

end

end A280625.P11370454281888038125

/-!
# A280626: E.g.f. C(x) satisfies: C(x)^2 - S(x)^2 = 1 and D(x)^4 - S(x)^4 = 1, where functions S(x) and D(x) are described by A280625 and A280627, respectively.

The programs for A280626, there is no canonical definition to state claims against.
-/

/-! ## A280626.P5215957392169515815

`A280628(2*n)`
-/

namespace A280626.P5215957392169515815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280628 (2 * n)

end

end A280626.P5215957392169515815

/-! ## A280626.P3265717607309719831

`or(1, A280628(A004277(n)))`
-/

namespace A280626.P3265717607309719831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A280628 (A004277 n).toNat)

end

end A280626.P3265717607309719831

/-! ## A280626.P13137570480780669107

`or(1, A280628(A005843(n)))`
-/

namespace A280626.P13137570480780669107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A280628 (A005843 n).toNat)

end

end A280626.P13137570480780669107

/-! ## A280626.P16336855730280125759

`A295663(A142068(n+1))+A280628(A005843(n))`
-/

namespace A280626.P16336855730280125759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295663 (A142068 (n + 1)).toNat + A280628 (A005843 n).toNat

end

end A280626.P16336855730280125759

/-! ## A280626.P2500784964199874356

`A280628(A005843(n))/A007424(A013932(n+1))`
-/

namespace A280626.P2500784964199874356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280628 (A005843 n).toNat : ℚ) / (A007424 (A013932 (n + 1)).toNat : ℚ)

end

end A280626.P2500784964199874356

/-!
# A280627: E.g.f. D(x) satisfies: C(x)^2 - S(x)^2 = 1 and D(x)^4 - S(x)^4 = 1, where functions S(x) and C(x) are described by A280625 and A280626, respectively.

The programs for A280627, there is no canonical definition to state claims against.
-/

/-! ## A280627.P17817858211568571374

`A263273(A054479(n))`
-/

namespace A280627.P17817858211568571374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A054479 n).toNat

end

end A280627.P17817858211568571374

/-!
# A280628: E.g.f. C(x) + S(x), such that: C(x)^2 - S(x)^2 = 1 and D(x)^4 - S(x)^4 = 1, where functions S(x), C(x), and D(x) are described by A280625, A280626, and A280627, respectively.

The programs for A280628, there is no canonical definition to state claims against.
-/

/-! ## A280628.P10998077511768247757

`A327656(∑[n*a(n-1)]+1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=3`
-/

namespace A280628.P10998077511768247757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 3] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A280628.P10998077511768247757

/-! ## A280628.P3112743462127925008

`A032742(∏{p}[∑[n*a(n-1)]-3, #])` with `a(0)=1, a(1)=2`
-/

namespace A280628.P3112743462127925008
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  n * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A280628.P3112743462127925008

/-! ## A280628.P16878134557194478918

`A028234(∑[A293487(n)])`
-/

namespace A280628.P16878134557194478918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A280628.P16878134557194478918

/-! ## A280628.P11478403870622004909

`A170824(∑[A293487(n)])`
-/

namespace A280628.P11478403870622004909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170824 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A280628.P11478403870622004909

/-!
# A280629: E.g.f. sqrt(D(x)^2 + S(x)^2), such that: C(x)^2 - S(x)^2 = 1 and D(x)^4 - S(x)^4 = 1, where functions S(x), C(x), and D(x) are described by A280625, A280626, and A280627, respectively.

The programs for A280629, there is no canonical definition to state claims against.
-/

/-! ## A280629.P14531911999092561192

`A317830(lcm(n^4+1, A317794(n)))`
-/

namespace A280629.P14531911999092561192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317830 (Int.lcm (n ^ 4 + 1 : ℤ) (A317794 n))

end

end A280629.P14531911999092561192

/-!
# A280632: Numbers k such that (19*10^k + 191)/3 is prime.

The programs for A280632, there is no canonical definition to state claims against.
-/

/-! ## A280632.P4938124135150997486

`A172251(A275096(n+1))`
-/

namespace A280632.P4938124135150997486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172251 (A275096 (n + 1)).toNat

end

end A280632.P4938124135150997486

/-!
# A280634: Number of partitions of 2n into two refactorable parts.

The programs for A280634, there is no canonical definition to state claims against.
-/

/-! ## A280634.P11165705251835781082

`A172398(2*(n+1))`
-/

namespace A280634.P11165705251835781082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172398 (2 * (n + 1))

end

end A280634.P11165705251835781082

/-! ## A280634.P11813111396516123901

`lcm(A130151(n), A172398(n+2+n))`
-/

namespace A280634.P11813111396516123901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A130151 n) (A172398 (n + 2 + n))

end

end A280634.P11813111396516123901

/-! ## A280634.P18426614920569197482

`or(A000007(n), A172398(n+2+n))`
-/

namespace A280634.P18426614920569197482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A172398 (n + 2 + n))

end

end A280634.P18426614920569197482

/-! ## A280634.P18117550611980383412

`A172398(n+2+n)/A007318(C(2, n))`
-/

namespace A280634.P18117550611980383412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172398 (n + 2 + n) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A280634.P18117550611980383412

/-! ## A280634.P12202050680020357922

`A001222(2^A172398(n+2+n))`
-/

namespace A280634.P12202050680020357922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A172398 (n + 2 + n) : ℤ))).toNat

end

end A280634.P12202050680020357922

/-!
# A280635: Numbers whose digit string can be partitioned into three nonempty parts such that the product of the first two parts equals the third part.

The programs for A280635, there is no canonical definition to state claims against.
-/

/-! ## A280635.P6657855329525476682

`A302801(eq[A031346(n), A040790(n)])`
-/

namespace A280635.P6657855329525476682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040790 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302801 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A280635.P6657855329525476682

/-! ## A280635.P2229706583989707522

`A302801(eq[A035930(n), A051802(n)])`
-/

namespace A280635.P2229706583989707522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035930 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302801 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A280635.P2229706583989707522

/-! ## A280635.P12768850987722773972

`A302801(eq[A051802(n), A171765(n)])`
-/

namespace A280635.P12768850987722773972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302801 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A280635.P12768850987722773972

/-! ## A280635.P17372820603834037865

`A302801(eq[A051802(n), A187844(n)])`
-/

namespace A280635.P17372820603834037865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302801 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A280635.P17372820603834037865

/-! ## A280635.P8037904449083123180

`A302801(eq[A051802(n), A257297(n)])`
-/

namespace A280635.P8037904449083123180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302801 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A280635.P8037904449083123180

/-!
# A280636: Semiprime numbers whose digit string can be partitioned into three parts such that the product of the first two parts equals the third part.

The programs for A280636, there is no canonical definition to state claims against.
-/

/-! ## A280636.P11118658357799160682

`filter[A398647(n+1), A064911(#)]`
-/

namespace A280636.P11118658357799160682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A280636.P11118658357799160682

/-! ## A280636.P15359957944090467774

`∩[A001358(n+1), A398647(n+1)]`
-/

namespace A280636.P15359957944090467774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398647 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280636.P15359957944090467774

/-! ## A280636.P18205050314771739174

`∩[A077136(n+1), A398647(n+1)]`
-/

namespace A280636.P18205050314771739174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398647 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280636.P18205050314771739174

/-! ## A280636.P11544139344079988667

`∩[A112381(n+1), A398647(n+1)]`
-/

namespace A280636.P11544139344079988667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398647 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280636.P11544139344079988667

/-! ## A280636.P16185648655665443372

`∩[A323644(n+1), A398647(n+1)]`
-/

namespace A280636.P16185648655665443372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398647 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280636.P16185648655665443372

/-!
# A280637: Sum of the digits of n^2+1.

The programs for A280637, the canonical program `A280637.P11576806203191940515` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280637 has offset 0).

The definition of A280637 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A280637.P11576806203191940515

`A007953(n²+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A280637

/-- `A007953(n²+1)` -/
def P11576806203191940515.Spec : Prop :=
  ∀ n, P11576806203191940515.a n = A280637 n

theorem P11576806203191940515.correct : P11576806203191940515.Spec := by
  intro n
  simp only [A280637]

end A280637

/-! ## A280637.P8817519825234972670

`∑{digits}[1+n², #]`
-/

namespace A280637.P8817519825234972670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A280637.P8817519825234972670

namespace A280637

/-- `∑{digits}[1+n², #]` -/
def P8817519825234972670.Spec : Prop :=
  ∀ n, (P8817519825234972670.a n : ℤ) = A280637 n

end A280637

/-! ## A280637.P16801347127520813717

`∑{digits}[or(2, n²), #]-1`
-/

namespace A280637.P16801347127520813717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - 1

end

end A280637.P16801347127520813717

namespace A280637

/-- `∑{digits}[or(2, n²), #]-1` -/
def P16801347127520813717.Spec : Prop :=
  ∀ n, P16801347127520813717.a n = A280637 n

end A280637

/-! ## A280637.P5089831950763818712

`∑{digits}[xor(2, n²), #]-1`
-/

namespace A280637.P5089831950763818712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - 1

end

end A280637.P5089831950763818712

namespace A280637

/-- `∑{digits}[xor(2, n²), #]-1` -/
def P5089831950763818712.Spec : Prop :=
  ∀ n, P5089831950763818712.a n = A280637 n

end A280637

/-! ## A280637.P1279547486482187757

`log(∏{digits}[1+n², exp(#)])`
-/

namespace A280637.P1279547486482187757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod

end

end A280637.P1279547486482187757

namespace A280637

/-- `log(∏{digits}[1+n², exp(#)])` -/
def P1279547486482187757.Spec : Prop :=
  ∀ n, P1279547486482187757.a n = (A280637 n : ℝ)

end A280637

/-! ## A280637.P9673775779450620247

`∑{digits}[n^2+2, #]-1`
-/

namespace A280637.P9673775779450620247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - 1

end

end A280637.P9673775779450620247

namespace A280637

/-- `∑{digits}[n^2+2, #]-1` -/
def P9673775779450620247.Spec : Prop :=
  ∀ n, P9673775779450620247.a n = A280637 n

end A280637

/-! ## A280637.P3155111686126815366

`A000027(∑{digits}[A002522(n), #])`
-/

namespace A280637.P3155111686126815366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A280637.P3155111686126815366

namespace A280637

/-- `A000027(∑{digits}[A002522(n), #])` -/
def P3155111686126815366.Spec : Prop :=
  ∀ n, P3155111686126815366.a n = A280637 n

end A280637

/-! ## A280637.P7818469284366202835

`A028310(∑{digits}[A002522(n), #])`
-/

namespace A280637.P7818469284366202835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A280637.P7818469284366202835

namespace A280637

/-- `A028310(∑{digits}[A002522(n), #])` -/
def P7818469284366202835.Spec : Prop :=
  ∀ n, P7818469284366202835.a n = A280637 n

end A280637

/-! ## A280637.P4949461640654328253

`A118759(∑{digits}[A002522(n), #])`
-/

namespace A280637.P4949461640654328253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A280637.P4949461640654328253

namespace A280637

/-- `A118759(∑{digits}[A002522(n), #])` -/
def P4949461640654328253.Spec : Prop :=
  ∀ n, P4949461640654328253.a n = A280637 n

end A280637

/-! ## A280637.P8124020594843213723

`A000027(∑{digits}[n*A028310(n)+1, #])`
-/

namespace A280637.P8124020594843213723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A028310 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A280637.P8124020594843213723

namespace A280637

/-- `A000027(∑{digits}[n*A028310(n)+1, #])` -/
def P8124020594843213723.Spec : Prop :=
  ∀ n, P8124020594843213723.a n = A280637 n

end A280637

/-! ## A280637.P16400268990817475018

`A028310(∑{digits}[n*A028310(n)+1, #])`
-/

namespace A280637.P16400268990817475018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A028310 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A280637.P16400268990817475018

namespace A280637

/-- `A028310(∑{digits}[n*A028310(n)+1, #])` -/
def P16400268990817475018.Spec : Prop :=
  ∀ n, P16400268990817475018.a n = A280637 n

end A280637

/-! ## A280637.P10774862628138862511

`∑{digits}[A002522(n), #]%A043232(n+1)`
-/

namespace A280637.P10774862628138862511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) (A043232 (n + 1))

end

end A280637.P10774862628138862511

namespace A280637

/-- `∑{digits}[A002522(n), #]%A043232(n+1)` -/
def P10774862628138862511.Spec : Prop :=
  ∀ n, P10774862628138862511.a n = A280637 n

end A280637

/-! ## A280637.P1786942401942306391

`A326746(n²+1)`
-/

namespace A280637.P1786942401942306391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (n ^ 2 + 1)

end

end A280637.P1786942401942306391

namespace A280637

/-- `A326746(n²+1)` -/
def P1786942401942306391.Spec : Prop :=
  ∀ n, P1786942401942306391.a n = A280637 n

end A280637

/-! ## A280637.P5780763855715437052

`sqrt(A118881(n²+1))`
-/

namespace A280637.P5780763855715437052
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118881 (n ^ 2 + 1) : ℝ)

end

end A280637.P5780763855715437052

namespace A280637

/-- `sqrt(A118881(n²+1))` -/
def P5780763855715437052.Spec : Prop :=
  ∀ n, P5780763855715437052.a n = (A280637 n : ℝ)

end A280637

/-! ## A280637.P16927969509436397962

`log2(A329562(n²+1))`
-/

namespace A280637.P16927969509436397962
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 (n ^ 2 + 1) : ℝ)

end

end A280637.P16927969509436397962

namespace A280637

/-- `log2(A329562(n²+1))` -/
def P16927969509436397962.Spec : Prop :=
  ∀ n, P16927969509436397962.a n = (A280637 n : ℝ)

end A280637

/-!
# A280638: Number of odd divisors of Bell(n).

The programs for A280638, there is no canonical definition to state claims against.
-/

/-! ## A280638.P8569719306233990489

`A278973(n)-A183063(A000110(n)%A249001(n+1))`
-/

namespace A280638.P8569719306233990489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278973 n - A183063 (Int.tmod (A000110 n) (A249001 (n + 1))).toNat

end

end A280638.P8569719306233990489

/-! ## A280638.P14194772677535073679

`A278973(n)-A000005(A317708(n+1))*A007949(n+1)`
-/

namespace A280638.P14194772677535073679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278973 n - A000005 (A317708 (n + 1)).toNat * A007949 (n + 1)

end

end A280638.P14194772677535073679

/-! ## A280638.P13950967848889453621

`A000005(A073190(n)-A025480(n))`
-/

namespace A280638.P13950967848889453621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A073190 n - A025480 n).toNat

end

end A280638.P13950967848889453621

/-! ## A280638.P14153248295692760859

`∑{d}[A000110(n), #%2]`
-/

namespace A280638.P14153248295692760859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d % 2

end

end A280638.P14153248295692760859

/-!
# A280639: Triangle read by rows: T(n,k), n>=k>=1, is the number of obtuse isosceles triangles with integral coordinates that have a bounding box of size n X k.

The programs for A280639, there is no canonical definition to state claims against.
-/

/-! ## A280639.P15298183713947192779

`A279413(n+1)-(A279418(n+1)+A279415(n+1))`
-/

namespace A280639.P15298183713947192779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279413 (n + 1) - (A279418 (n + 1) + A279415 (n + 1))

end

end A280639.P15298183713947192779

/-!
# A280642: Numbers k such that k^3 has an odd number of digits and the middle digit is 2.

The programs for A280642, there is no canonical definition to state claims against.
-/

/-! ## A280642.P5330904770787794020

`A326062(A019273(n+1))+A052426(3*n+4)`
-/

namespace A280642.P5330904770787794020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326062 (A019273 (n + 1)).toNat + A052426 (3 * n + 4)

end

end A280642.P5330904770787794020

/-!
# A280643: Numbers k such that k^3 has an odd number of digits and the middle digit is 3.

The programs for A280643, there is no canonical definition to state claims against.
-/

/-! ## A280643.P1703248806836488966

`A131909(or(40, A320173(n+1)))`
-/

namespace A280643.P1703248806836488966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131909 (Int.lor 40 (A320173 (n + 1))).toNat

end

end A280643.P1703248806836488966

/-!
# A280649: Numbers k such that k^3 has an odd number of digits and the middle digit is 9.

The programs for A280649, there is no canonical definition to state claims against.
-/

/-! ## A280649.P7435725978003859324

`A139056(A015977(n))-A000041(n)`
-/

namespace A280649.P7435725978003859324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139056 (A015977 n).toNat - A000041 n

end

end A280649.P7435725978003859324

/-!
# A280652: Triangle read by rows: T(n,k), n>=k>=1, is the number of obtuse triangles with integer coordinates that have a bounding box of size n X k.

The programs for A280652, there is no canonical definition to state claims against.
-/

/-! ## A280652.P9006867915433540340

`A279432(n+1)-(A280653(n+1)+A279433(n+1))`
-/

namespace A280652.P9006867915433540340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279432 (n + 1) - (A280653 (n + 1) + A279433 (n + 1))

end

end A280652.P9006867915433540340

/-!
# A280653: Triangle read by rows: T(n,k), n>=k>=1, is the number of acute triangles with integer coordinates that have a bounding box of size n X k.

The programs for A280653, there is no canonical definition to state claims against.
-/

/-! ## A280653.P7353795700502059523

`A279432(n+1)-(A280652(n+1)+A279433(n+1))`
-/

namespace A280653.P7353795700502059523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279432 (n + 1) - (A280652 (n + 1) + A279433 (n + 1))

end

end A280653.P7353795700502059523

/-!
# A280655: Numerator of (Sum_{k=0..n^2-1} (-1)^k*sqrt(Pi)/(Gamma(1/2-k)*Gamma(1+k))) - n.

The programs for A280655, there is no canonical definition to state claims against.
-/

/-! ## A280655.P14864935978733936503

`(A285388(n+1)-A285389(n+1))*A000265(n+1)`
-/

namespace A280655.P14864935978733936503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285388 (n + 1) - A285389 (n + 1)) * A000265 (n + 1)

end

end A280655.P14864935978733936503

/-!
# A280656: Denominator of (Sum_{k=0..n^2-1} (-1)^k*sqrt(Pi)/(Gamma(1/2-k)*Gamma(1+k))) - n.

The programs for A280656, there is no canonical definition to state claims against.
-/

/-! ## A280656.P15865288719933816079

`2^A281264(n+1)`
-/

namespace A280656.P15865288719933816079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A281264 (n + 1) : ℤ)

end

end A280656.P15865288719933816079

/-! ## A280656.P7824418629228344887

`A046161(n*(n+2))`
-/

namespace A280656.P7824418629228344887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 (n * (n + 2))

end

end A280656.P7824418629228344887

/-! ## A280656.P3351692895785944345

`A004730((n+2)*2*n)`
-/

namespace A280656.P3351692895785944345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 ((n + 2) * (2 * n))

end

end A280656.P3351692895785944345

/-! ## A280656.P16994506093776785490

`2^A005187(n*(n+2))`
-/

namespace A280656.P16994506093776785490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A005187 (n * (n + 2)) : ℤ)

end

end A280656.P16994506093776785490

/-! ## A280656.P2466680191268993055

`A000079(A281264(n+1))`
-/

namespace A280656.P2466680191268993055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A281264 (n + 1)).toNat

end

end A280656.P2466680191268993055

/-!
# A280657: Numbers beginning with their digital root in decimal representation.

The programs for A280657, there is no canonical definition to state claims against.
-/

/-! ## A280657.P1256014966023754790

`eq[A004086(n)%10, dr(n)]`
-/

namespace A280657.P1256014966023754790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 n) 10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A280657.P1256014966023754790

/-! ## A280657.P16048090656885152357

`eq[dr(n), A000030(n)]`
-/

namespace A280657.P16048090656885152357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280657.P16048090656885152357

/-! ## A280657.P3472738405855315841

`eq[val(A061509(n), 2), dr(n)]`
-/

namespace A280657.P3472738405855315841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A061509 n).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280657.P3472738405855315841

/-! ## A280657.P4850029951707394134

`eq[A182324(n)-n, dr(n)]`
-/

namespace A280657.P4850029951707394134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182324 n - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A280657.P4850029951707394134

/-! ## A280657.P12091941299044170210

`eq[A000030(n), A010888(n)]`
-/

namespace A280657.P12091941299044170210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280657.P12091941299044170210

/-! ## A280657.P4392696214100979315

`eq[dr(n), A010879(A004086(n))]`
-/

namespace A280657.P4392696214100979315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280657.P4392696214100979315

/-! ## A280657.P2791029503956696175

`eq[dr(n), A010879(A032762(n))]`
-/

namespace A280657.P2791029503956696175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A032762 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280657.P2791029503956696175

/-! ## A280657.P11114747972109197969

`eq[dr(n), A007376(A086044(n)-1)]`
-/

namespace A280657.P11114747972109197969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A086044 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280657.P11114747972109197969

/-! ## A280657.P3310894641126621810

`eq[dr(n), A004086(n-A217657(n))]`
-/

namespace A280657.P3310894641126621810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 ((n : ℤ) - A217657 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280657.P3310894641126621810

/-! ## A280657.P5184983806535298888

`eq[dr(n), A007953(n-A217657(n))]`
-/

namespace A280657.P5184983806535298888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 ((n : ℤ) - A217657 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280657.P5184983806535298888

/-! ## A280657.P14549372479144336091

`eq[A117280(n), A134010(n)]`
-/

namespace A280657.P14549372479144336091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117280 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280657.P14549372479144336091

/-! ## A280657.P4671414316671473706

`eq[dr(n), A007376(A229186(n))]`
-/

namespace A280657.P4671414316671473706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A229186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280657.P4671414316671473706

/-!
# A280658: Numbers ending with their digital root in decimal representation.

The programs for A280658, the canonical program `A280658.P4870741215055190357` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280658 has offset 1).

The definition of A280658 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280658.P4870741215055190357

`10*(n+1)-19-9*(n-1)%9`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A280658

/-- `10*(n+1)-19-9*(n-1)%9` -/
def P4870741215055190357.Spec : Prop :=
  ∀ n, P4870741215055190357.a n = A280658 (n + 1)

theorem P4870741215055190357.correct : P4870741215055190357.Spec := by
  intro n
  simp only [A280658, Nat.add_sub_cancel]

end A280658

/-! ## A280658.P4405344791371719600

`ogf((x+x^2+x^3+x^4+x^5+x^6+x^7+x^8+x^9+81x^10)/(1-x-x^9+x^10))`
-/

namespace A280658.P4405344791371719600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 81] [1, -1, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A280658.P4405344791371719600

namespace A280658

/-- `ogf((x+x^2+x^3+x^4+x^5+x^6+x^7+x^8+x^9+81x^10)/(1-x-x^9+x^10))` -/
def P4405344791371719600.Spec : Prop :=
  ∀ n, P4405344791371719600.a n = A280658 (n + 1)

end A280658

/-! ## A280658.P6901563278753084783

`eq[n*n%10, n*dr(n)]`
-/

namespace A280658.P6901563278753084783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 10)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.digitalRoot (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280658.P6901563278753084783

namespace A280658

/-- `eq[n*n%10, n*dr(n)]` -/
def P6901563278753084783.Spec : Prop :=
  ∀ n, (P6901563278753084783.a n : ℤ) = A280658 (n + 1)

end A280658

/-! ## A280658.P10800056881058726983

`eq[A063462(n), A361203(n)]`
-/

namespace A280658.P10800056881058726983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361203 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280658.P10800056881058726983

namespace A280658

/-- `eq[A063462(n), A361203(n)]` -/
def P10800056881058726983.Spec : Prop :=
  ∀ n, (P10800056881058726983.a n : ℤ) = A280658 (n + 1)

end A280658

/-! ## A280658.P447835745097691488

`A345110(A061479(n))`
-/

namespace A280658.P447835745097691488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345110 (A061479 n).toNat

end

end A280658.P447835745097691488

namespace A280658

/-- `A345110(A061479(n))` -/
def P447835745097691488.Spec : Prop :=
  ∀ n, P447835745097691488.a n = A280658 (n + 1)

end A280658

/-!
# A280661: G.f.: Product_{k>=1, j>=1} 1/(1 - x^(j*k^3)).

The programs for A280661, there is no canonical definition to state claims against.
-/

/-! ## A280661.P5981470072947457776

`A249832(A324840(n+1))+A024792(n+8)`
-/

namespace A280661.P5981470072947457776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A324840 (n + 1)).toNat + A024792 (n + 8)

end

end A280661.P5981470072947457776

/-! ## A280661.P11718516535545465307

`A109389(6*n+8)%A361860(3*n+2)`
-/

namespace A280661.P11718516535545465307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109389 (6 * n + 8)) (A361860 (3 * n + 2))

end

end A280661.P11718516535545465307

/-! ## A280661.P1540921022161655791

`A024792(A000007(∑{d}[(n+1)^3+1, #]-2)+n+8)`
-/

namespace A280661.P1540921022161655791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024792 (A000007 (∑ d ∈ Nat.divisors (f1 n), d - 2) + (n : ℤ) + 8).toNat

end

end A280661.P1540921022161655791

/-! ## A280661.P18282739130770860940

`A340785(A011782(n))+A024793(n+1)`
-/

namespace A280661.P18282739130770860940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340785 (A011782 n).toNat + A024793 (n + 1)

end

end A280661.P18282739130770860940

/-! ## A280661.P4060124250447233436

`A024792(n+8)%A046092(A002992(n))`
-/

namespace A280661.P4060124250447233436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024792 (n + 8)) (A046092 (A002992 n).toNat)

end

end A280661.P4060124250447233436

/-!
# A280662: G.f.: Product_{k>=1, j>=1} 1/(1 - x^(j*k^4)).

The programs for A280662, there is no canonical definition to state claims against.
-/

/-! ## A280662.P9960900231430242730

`A098884(record[6*A163352(n)])`
-/

namespace A280662.P9960900231430242730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A163352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098884 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A280662.P9960900231430242730

/-! ## A280662.P16920947464307312447

`A098884(6*n)%A112408(n+5)`
-/

namespace A280662.P16920947464307312447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098884 (6 * n)) (A112408 (n + 5))

end

end A280662.P16920947464307312447

/-! ## A280662.P10473756460263248809

`A139352(A184945(n+4))+A000041(n)`
-/

namespace A280662.P10473756460263248809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A184945 (n + 4)).toNat + A000041 n

end

end A280662.P10473756460263248809

/-! ## A280662.P17038940788876253185

`A098884(A008458(n))^A280949(A185044(n))`
-/

namespace A280662.P17038940788876253185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098884 (A008458 n).toNat : ℚ) ^ (A280949 (A185044 n).toNat : ℤ)

end

end A280662.P17038940788876253185

/-! ## A280662.P16410798773331278902

`A185044(A185044(n)²)+A098884(A008458(n))`
-/

namespace A280662.P16410798773331278902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185044 (A185044 n ^ 2).toNat + A098884 (A008458 n).toNat

end

end A280662.P16410798773331278902

/-!
# A280664: G.f.: Product_{k>=1, j>=1} (1 + x^(j*k^4)).

The programs for A280664, there is no canonical definition to state claims against.
-/

/-! ## A280664.P15971222629704355993

`A061395(A326457(n)!)+A000009(n)`
-/

namespace A280664.P15971222629704355993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Nat.factorial (A326457 n).toNat) + A000009 n

end

end A280664.P15971222629704355993

/-! ## A280664.P4912340483008473021

`A097795(A212368(n))+A000009(n)`
-/

namespace A280664.P4912340483008473021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (A212368 n).toNat + A000009 n

end

end A280664.P4912340483008473021

/-! ## A280664.P199780789237508693

`A001877(A326456(n)!)+A000009(n)`
-/

namespace A280664.P199780789237508693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (Nat.factorial (A326456 n).toNat) + A000009 n

end

end A280664.P199780789237508693

/-! ## A280664.P8051030574305814711

`A327104(∑[A185044(n)])+A000009(n)`
-/

namespace A280664.P8051030574305814711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327104 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A000009 n

end

end A280664.P8051030574305814711

/-! ## A280664.P13516194249446745938

`A001877(A326456(n)!)+abs(A081360(n))`
-/

namespace A280664.P13516194249446745938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (Nat.factorial (A326456 n).toNat) + |A081360 n|

end

end A280664.P13516194249446745938

/-!
# A280667: a(n) = number of primes of the form 4k + 1 such that 2n - 4k - 1 is prime.

The programs for A280667, there is no canonical definition to state claims against.
-/

/-! ## A280667.P13650920052922668298

`A002372(n+1)-A279027(n+1)`
-/

namespace A280667.P13650920052922668298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002372 (n + 1) - A279027 (n + 1)

end

end A280667.P13650920052922668298

/-! ## A280667.P778403212585273456

`A061357(n+1)-A286044(A258721(n)-2)`
-/

namespace A280667.P778403212585273456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (n + 1) - A286044 (A258721 n - 2).toNat

end

end A280667.P778403212585273456

/-!
# A280668: Number of n X 3 0..2 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280668, there is no canonical definition to state claims against.
-/

/-! ## A280668.P8608993844515689914

`ogf((4+3x)/(1-14x-8x^2))`
-/

namespace A280668.P8608993844515689914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 3] [1, -14, -8] n

end

end A280668.P8608993844515689914

/-! ## A280668.P7364810739998127190

`14*a(n-1)+8*a(n-2)` with `a(0)=4, a(1)=59`
-/

namespace A280668.P7364810739998127190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 59] fun n a =>
  14 * a (n - 1) + 8 * a (n - 2)

end

end A280668.P7364810739998127190

/-! ## A280668.P8235525570288468235

`A280673(∑[n+3]+1)`
-/

namespace A280668.P8235525570288468235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A280668.P8235525570288468235

/-! ## A280668.P3302903231534230529

`A280673(A034856(n+2))*A333254(3*(n+1))`
-/

namespace A280668.P3302903231534230529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (A034856 (n + 2)).toNat * A333254 (3 * (n + 1))

end

end A280668.P3302903231534230529

/-!
# A280669: Number of n X 4 0..2 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280669, there is no canonical definition to state claims against.
-/

/-! ## A280669.P1042651109758417961

`A280673(A141214(n+1))`
-/

namespace A280669.P1042651109758417961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (A141214 (n + 1)).toNat

end

end A280669.P1042651109758417961

/-! ## A280669.P162526779471465756

`A280673(A155212(n)+5)`
-/

namespace A280669.P162526779471465756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (A155212 n + 5).toNat

end

end A280669.P162526779471465756

/-! ## A280669.P191975042906378486

`A280673(A056000(n)+7)`
-/

namespace A280669.P191975042906378486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (A056000 n + 7).toNat

end

end A280669.P191975042906378486

/-! ## A280669.P9482593656340263984

`A280673(eq[3, A193592(n)])`
-/

namespace A280669.P9482593656340263984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280669.P9482593656340263984

/-! ## A280669.P2276804803325136839

`A280673(Δ[A006416(n+2)])`
-/

namespace A280669.P2276804803325136839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (f1 (n + 1) - f1 n).toNat

end

end A280669.P2276804803325136839

/-!
# A280670: Number of nX5 0..2 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280670, there is no canonical definition to state claims against.
-/

/-! ## A280670.P4789817258340542369

`A280673(Δ[A264443(n)])`
-/

namespace A280670.P4789817258340542369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (f1 (n + 1) - f1 n).toNat

end

end A280670.P4789817258340542369

/-! ## A280670.P4841132905864345612

`A280673(A056115(n)+11)`
-/

namespace A280670.P4841132905864345612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (A056115 n + 11).toNat

end

end A280670.P4841132905864345612

/-! ## A280670.P12942454883984371020

`A280673(eq[4, A193592(n)])`
-/

namespace A280670.P12942454883984371020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280670.P12942454883984371020

/-! ## A280670.P6218044482271123328

`A280673(Δ[A023545(n+1)])`
-/

namespace A280670.P6218044482271123328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (f1 (n + 1) - f1 n).toNat

end

end A280670.P6218044482271123328

/-! ## A280670.P4162898588896164458

`A280673(Δ[A006416(n+3)]-1)`
-/

namespace A280670.P4162898588896164458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (f1 (n + 1) - f1 n - 1).toNat

end

end A280670.P4162898588896164458

/-!
# A280671: Number of nX6 0..2 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280671, there is no canonical definition to state claims against.
-/

/-! ## A280671.P14594140516868719344

`A280673(A052905(n+3))`
-/

namespace A280671.P14594140516868719344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (A052905 (n + 3)).toNat

end

end A280671.P14594140516868719344

/-! ## A280671.P5512770771090556054

`A280673(A056119(n)+16)`
-/

namespace A280671.P5512770771090556054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (A056119 n + 16).toNat

end

end A280671.P5512770771090556054

/-! ## A280671.P4698596354705351501

`A280673(eq[3, A219347(n)])`
-/

namespace A280671.P4698596354705351501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280671.P4698596354705351501

/-! ## A280671.P5182311307565534709

`A280673(eq[5, A193592(n)])`
-/

namespace A280671.P5182311307565534709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280671.P5182311307565534709

/-!
# A280672: Number of nX7 0..2 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280672, there is no canonical definition to state claims against.
-/

/-! ## A280672.P10029719741739689162

`A280673(eq[6, A193592(n)])`
-/

namespace A280672.P10029719741739689162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280672.P10029719741739689162

/-! ## A280672.P14713718804394321801

`A280673(eq[2, A219347(n)-2])`
-/

namespace A280672.P14713718804394321801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280672.P14713718804394321801

/-!
# A280674: Number of 2 X n 0..2 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280674, the canonical program `A280674.P12199231079975916594` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280674 has offset 1).

The definition of A280674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280674.P12199231079975916594

`ogf((2+x-8x^2-x^3+8x^4-2x^5)/(1-5x-6x^2+11x^3+7x^4-4x^5))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A280674

/-- `ogf((2+x-8x^2-x^3+8x^4-2x^5)/(1-5x-6x^2+11x^3+7x^4-4x^5))` -/
def P12199231079975916594.Spec : Prop :=
  ∀ n, P12199231079975916594.a n = A280674 (n + 1)

theorem P12199231079975916594.correct : P12199231079975916594.Spec := by
  intro n
  simp only [A280674, Nat.add_sub_cancel]

end A280674

/-! ## A280674.P15547433763877060415

`A280673(∑[n+1]+2)`
-/

namespace A280674.P15547433763877060415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A280674.P15547433763877060415

namespace A280674

/-- `A280673(∑[n+1]+2)` -/
def P15547433763877060415.Spec : Prop :=
  ∀ n, P15547433763877060415.a n = A280674 (n + 1)

end A280674

/-! ## A280674.P3976775036534427809

`record[A010054(n)*A280673(n+2)]`
-/

namespace A280674.P3976775036534427809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A280673 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280674.P3976775036534427809

namespace A280674

/-- `record[A010054(n)*A280673(n+2)]` -/
def P3976775036534427809.Spec : Prop :=
  ∀ n, P3976775036534427809.a n = A280674 (n + 1)

end A280674

/-! ## A280674.P6557125150542789533

`record[gcd(A122203(n), A280673(n+3))]`
-/

namespace A280674.P6557125150542789533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122203 n) (A280673 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280674.P6557125150542789533

namespace A280674

/-- `record[gcd(A122203(n), A280673(n+3))]` -/
def P6557125150542789533.Spec : Prop :=
  ∀ n, (P6557125150542789533.a n : ℤ) = A280674 (n + 1)

end A280674

/-! ## A280674.P2966359626712274723

`A280673(Δ[A000292(n)]+2)+A000007(2*n+1)`
-/

namespace A280674.P2966359626712274723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (f1 (n + 1) - f1 n + 2).toNat + A000007 (2 * n + 1)

end

end A280674.P2966359626712274723

namespace A280674

/-- `A280673(Δ[A000292(n)]+2)+A000007(2*n+1)` -/
def P2966359626712274723.Spec : Prop :=
  ∀ n, P2966359626712274723.a n = A280674 (n + 1)

end A280674

/-!
# A280675: Number of 3Xn 0..2 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280675, there is no canonical definition to state claims against.
-/

/-! ## A280675.P6084096263348556273

`A280673(∑[n+2]+4)`
-/

namespace A280675.P6084096263348556273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A280675.P6084096263348556273

/-! ## A280675.P8506110190926067354

`A280673(A167614(n+1))+A185284(n)`
-/

namespace A280675.P8506110190926067354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (A167614 (n + 1)).toNat + A185284 n

end

end A280675.P8506110190926067354

/-! ## A280675.P12708633191292787777

`A280673(A167614(n+1))*A291168(n)`
-/

namespace A280675.P12708633191292787777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (A167614 (n + 1)).toNat * A291168 n

end

end A280675.P12708633191292787777

/-! ## A280675.P11674184911153357148

`lcm(A015435(n), A280673(A167614(n+1)))`
-/

namespace A280675.P11674184911153357148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A015435 n) (A280673 (A167614 (n + 1)).toNat)

end

end A280675.P11674184911153357148

/-! ## A280675.P5321274524771383866

`or(A000007(n), A280673(A167614(n+1)))`
-/

namespace A280675.P5321274524771383866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A280673 (A167614 (n + 1)).toNat)

end

end A280675.P5321274524771383866

/-!
# A280676: Number of 4Xn 0..2 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280676, there is no canonical definition to state claims against.
-/

/-! ## A280676.P4676456527775664059

`A280673(A141214(n)+7)`
-/

namespace A280676.P4676456527775664059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (A141214 n + 7).toNat

end

end A280676.P4676456527775664059

/-! ## A280676.P7511076318135654077

`A280673(A052905(n)+9)`
-/

namespace A280676.P7511076318135654077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (A052905 n + 9).toNat

end

end A280676.P7511076318135654077

/-! ## A280676.P12468740762119588584

`A280673(A055999(n)+10)`
-/

namespace A280676.P12468740762119588584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (A055999 n + 10).toNat

end

end A280676.P12468740762119588584

/-! ## A280676.P5674763307382879451

`A280673(A167614(n+2)+1)`
-/

namespace A280676.P5674763307382879451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (A167614 (n + 2) + 1).toNat

end

end A280676.P5674763307382879451

/-! ## A280676.P10175301722068489517

`A280673(A166136(n+2)-2)`
-/

namespace A280676.P10175301722068489517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (A166136 (n + 2) - 2).toNat

end

end A280676.P10175301722068489517

/-!
# A280677: Number of 5Xn 0..2 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280677, there is no canonical definition to state claims against.
-/

/-! ## A280677.P991208755784796975

`A280673(A155212(n)+13)`
-/

namespace A280677.P991208755784796975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (A155212 n + 13).toNat

end

end A280677.P991208755784796975

/-! ## A280677.P11963191119098650374

`A280673(A056000(n)+15)`
-/

namespace A280677.P11963191119098650374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (A056000 n + 15).toNat

end

end A280677.P11963191119098650374

/-! ## A280677.P352675181557048107

`A280673(eq[7, A066657(n)])`
-/

namespace A280677.P352675181557048107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280677.P352675181557048107

/-! ## A280677.P6073337224572340752

`A280673(A000217(n+4)+5)`
-/

namespace A280677.P6073337224572340752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (A000217 (n + 4) + 5).toNat

end

end A280677.P6073337224572340752

/-! ## A280677.P1426160100210664849

`A280673(eq[6, A131818(n+1)])`
-/

namespace A280677.P1426160100210664849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280677.P1426160100210664849

/-!
# A280678: Number of 6Xn 0..2 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280678, there is no canonical definition to state claims against.
-/

/-! ## A280678.P1954529894233308830

`A280673(A166136(n+4))`
-/

namespace A280678.P1954529894233308830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (A166136 (n + 4)).toNat

end

end A280678.P1954529894233308830

/-! ## A280678.P11711823756323574266

`A280673(A056115(n)+21)`
-/

namespace A280678.P11711823756323574266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (A056115 n + 21).toNat

end

end A280678.P11711823756323574266

/-! ## A280678.P7048383836506151155

`A280673(A000217(n+5)+6)`
-/

namespace A280678.P7048383836506151155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (A000217 (n + 5) + 6).toNat

end

end A280678.P7048383836506151155

/-! ## A280678.P4951062070765386590

`A280673(A155212(n+1)+14)`
-/

namespace A280678.P4951062070765386590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (A155212 (n + 1) + 14).toNat

end

end A280678.P4951062070765386590

/-! ## A280678.P3476188499179483947

`A280673(eq[7, A131818(n+1)])`
-/

namespace A280678.P3476188499179483947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280678.P3476188499179483947

/-!
# A280679: The radii (a, b, c) of three primitive mutually tangent circles all touching the same straight line, with a > b > c.

The programs for A280679, there is no canonical definition to state claims against.
-/

/-! ## A280679.P12802065301400645178

`A280680(1+n)²`
-/

namespace A280679.P12802065301400645178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280680 (1 + n) ^ 2

end

end A280679.P12802065301400645178

/-! ## A280679.P12099023261048632628

`A000290(A280680(n+1))`
-/

namespace A280679.P12099023261048632628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A280680 (n + 1)).toNat

end

end A280679.P12099023261048632628

/-! ## A280679.P15805781773491240923

`A280680(n+1)^ceil(ratio[A004277(n)])`
-/

namespace A280679.P15805781773491240923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280680 (n + 1) : ℚ) ^ (⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ : ℤ)

end

end A280679.P15805781773491240923

/-! ## A280679.P15297945356791892198

`A280680(n+1)^A031217(A031195(n))`
-/

namespace A280679.P15297945356791892198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280680 (n + 1) : ℚ) ^ (A031217 (A031195 n).toNat : ℤ)

end

end A280679.P15297945356791892198

/-! ## A280679.P2721608300120382100

`A280680(n+1)^A031217(A031213(n))`
-/

namespace A280679.P2721608300120382100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280680 (n + 1) : ℚ) ^ (A031217 (A031213 n).toNat : ℤ)

end

end A280679.P2721608300120382100

/-! ## A280679.P17173375260439686483

`A280680(A000027(n+1))*A280680(n+1)`
-/

namespace A280679.P17173375260439686483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280680 (A000027 (n + 1)).toNat * A280680 (n + 1)

end

end A280679.P17173375260439686483

/-! ## A280679.P7713901149120483421

`A280680(n+1)*A280680(A005408(n)-n)`
-/

namespace A280679.P7713901149120483421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280680 (n + 1) * A280680 (A005408 n - (n : ℤ)).toNat

end

end A280679.P7713901149120483421

/-! ## A280679.P17629921179798128276

`lcm(A057077(n), A280680(n+1))*A280680(n+1)`
-/

namespace A280679.P17629921179798128276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A057077 n) (A280680 (n + 1)) : ℤ) * A280680 (n + 1)

end

end A280679.P17629921179798128276

/-! ## A280679.P1820512312900897952

`A280680(n+1)^A163530(A280680(gcd(n, n+1)))`
-/

namespace A280679.P1820512312900897952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280680 (n + 1) : ℚ) ^ (A163530 (A280680 (Nat.gcd n (n + 1))).toNat : ℤ)

end

end A280679.P1820512312900897952

/-! ## A280679.P11670268813143031910

`(A280680(n+1)+A036987(A017005(n)))*A280680(n+1)`
-/

namespace A280679.P11670268813143031910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A280680 (n + 1) + A036987 (A017005 n).toNat) * A280680 (n + 1)

end

end A280679.P11670268813143031910

/-! ## A280679.P14205904614174324541

`A280680(n+1)^A190483(A190495(n+1))`
-/

namespace A280679.P14205904614174324541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280680 (n + 1) : ℚ) ^ (A190483 (A190495 (n + 1)).toNat : ℤ)

end

end A280679.P14205904614174324541

/-! ## A280679.P12058451207790324888

`A280680(n+1)^A000005(record[A014963(n+2)])`
-/

namespace A280679.P12058451207790324888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280680 (n + 1) : ℚ) ^ (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ)

end

end A280679.P12058451207790324888

/-! ## A280679.P13839120445562954072

`A280680(n+1)^A000005(A083758(n+1))`
-/

namespace A280679.P13839120445562954072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280680 (n + 1) : ℚ) ^ (A000005 (A083758 (n + 1)).toNat : ℤ)

end

end A280679.P13839120445562954072

/-!
# A280680: The square roots of the radii (a, b, c) of three primitive mutually tangent circles all touching the same straight line, with a > b > c.

The programs for A280680, there is no canonical definition to state claims against.
-/

/-! ## A280680.P1208018301329139028

`sqrt(A280679(n+1))`
-/

namespace A280680.P1208018301329139028
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A280679 (n + 1) : ℝ)

end

end A280680.P1208018301329139028

/-! ## A280680.P5790183153421478954

`A000027(root(A280679(n+1), 2))`
-/

namespace A280680.P5790183153421478954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A280679 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A280680.P5790183153421478954

/-! ## A280680.P1644503523585936546

`root(A280679(n+1), 2%A017377(n))`
-/

namespace A280680.P1644503523585936546
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A280679 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A017377 n) : ℝ))

end

end A280680.P1644503523585936546

/-! ## A280680.P16966316064453256159

`root(A280679(n+1), A133265(A133265(n)))`
-/

namespace A280680.P16966316064453256159
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A280679 (n + 1) : ℝ) ^ (1 / (A133265 (A133265 n).toNat : ℝ))

end

end A280680.P16966316064453256159

/-! ## A280680.P15252931783095202217

`root(A280679(n+1), 2)%A106499(n+1)`
-/

namespace A280680.P15252931783095202217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A280679 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A106499 (n + 1))

end

end A280680.P15252931783095202217

/-! ## A280680.P2344739610805986438

`A262689(A280679(n+1)+1)`
-/

namespace A280680.P2344739610805986438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A280679 (n + 1) + 1).toNat

end

end A280680.P2344739610805986438

/-! ## A280680.P8492218483933308184

`A056926(A280679(n+1))%A299409(n)`
-/

namespace A280680.P8492218483933308184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056926 (A280679 (n + 1)).toNat) (A299409 n)

end

end A280680.P8492218483933308184

/-! ## A280680.P10037484991681417050

`A056926(A280679(n+1)%A253993(n+1))`
-/

namespace A280680.P10037484991681417050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (Int.tmod (A280679 (n + 1)) (A253993 (n + 1))).toNat

end

end A280680.P10037484991681417050

/-! ## A280680.P16181177198558221378

`A329888(gcd(n, n+1)*A280679(n+1))`
-/

namespace A280680.P16181177198558221378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 ((Nat.gcd n (n + 1) : ℤ) * A280679 (n + 1)).toNat

end

end A280680.P16181177198558221378

/-! ## A280680.P6907431786966699781

`A329888(2*A280679(n+1)-A280679(n+1))`
-/

namespace A280680.P6907431786966699781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (2 * A280679 (n + 1) - A280679 (n + 1)).toNat

end

end A280680.P6907431786966699781

/-!
# A280681: Numbers k such that Fibonacci(k) is a totient.

The programs for A280681, there is no canonical definition to state claims against.
-/

/-! ## A280681.P10137625266089700134

`record[A337101(A141766(n+2))]`
-/

namespace A280681.P10137625266089700134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (A141766 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280681.P10137625266089700134

/-! ## A280681.P8103101360432450636

`record[A000188(2*A085126(n+1))]`
-/

namespace A280681.P8103101360432450636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (2 * A085126 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280681.P8103101360432450636

/-! ## A280681.P6796572610041577267

`record[A071974(2*A085126(n+1))]`
-/

namespace A280681.P6796572610041577267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (2 * A085126 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280681.P6796572610041577267

/-! ## A280681.P5331903905934842140

`record[A000188(A007844(n)*A008619(n))]`
-/

namespace A280681.P5331903905934842140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A007844 n * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280681.P5331903905934842140

/-! ## A280681.P12382613336456583656

`eq[A157409(n), A185114(n)]`
-/

namespace A280681.P12382613336456583656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157409 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185114 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280681.P12382613336456583656

/-!
# A280682: Integers m such that floor(sqrt(m)) is even.

The programs for A280682, the canonical program `A280682.P18058985131140404268` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280682 has offset 1).

The definition of A280682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280682.P18058985131140404268

`lt[floor(sqrt(n))%2, 1]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A280682

/-- `lt[floor(sqrt(n))%2, 1]` -/
def P18058985131140404268.Spec : Prop :=
  ∀ n, (P18058985131140404268.a n : ℤ) = A280682 (n + 1)

theorem P18058985131140404268.correct : P18058985131140404268.Spec := by
  intro n
  simp only [A280682, Nat.add_sub_cancel]

end A280682

/-! ## A280682.P5732404459525565029

`lt[1, gcd(2, floor(sqrt(n)))]`
-/

namespace A280682.P5732404459525565029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (Nat.sqrt n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A280682.P5732404459525565029

namespace A280682

/-- `lt[1, gcd(2, floor(sqrt(n)))]` -/
def P5732404459525565029.Spec : Prop :=
  ∀ n, (P5732404459525565029.a n : ℤ) = A280682 (n + 1)

end A280682

/-! ## A280682.P13456548312214012297

`eq[1, (-1)^floor(sqrt(n))]`
-/

namespace A280682.P13456548312214012297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ Nat.sqrt n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280682.P13456548312214012297

namespace A280682

/-- `eq[1, (-1)^floor(sqrt(n))]` -/
def P13456548312214012297.Spec : Prop :=
  ∀ n, (P13456548312214012297.a n : ℤ) = A280682 (n + 1)

end A280682

/-! ## A280682.P7988238454717418820

`lt[val(floor(sqrt(n))+1, 2), 1]`
-/

namespace A280682.P7988238454717418820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.sqrt n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A280682.P7988238454717418820

namespace A280682

/-- `lt[val(floor(sqrt(n))+1, 2), 1]` -/
def P7988238454717418820.Spec : Prop :=
  ∀ n, (P7988238454717418820.a n : ℤ) = A280682 (n + 1)

end A280682

/-! ## A280682.P12430401046901786325

`record[(-1)^floor(sqrt(n))*n]`
-/

namespace A280682.P12430401046901786325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ Nat.sqrt n * (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280682.P12430401046901786325

namespace A280682

/-- `record[(-1)^floor(sqrt(n))*n]` -/
def P12430401046901786325.Spec : Prop :=
  ∀ n, P12430401046901786325.a n = A280682 (n + 1)

end A280682

/-! ## A280682.P2101489069231963897

`lt[A180714(n), 1]`
-/

namespace A280682.P2101489069231963897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180714 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A280682.P2101489069231963897

namespace A280682

/-- `lt[A180714(n), 1]` -/
def P2101489069231963897.Spec : Prop :=
  ∀ n, (P2101489069231963897.a n : ℤ) = A280682 (n + 1)

end A280682

/-! ## A280682.P934448699239011820

`lt[0, Δ[A329116(n)]]`
-/

namespace A280682.P934448699239011820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A280682.P934448699239011820

namespace A280682

/-- `lt[0, Δ[A329116(n)]]` -/
def P934448699239011820.Spec : Prop :=
  ∀ n, (P934448699239011820.a n : ℤ) = A280682 (n + 1)

end A280682

/-! ## A280682.P5930210329508121725

`lt[A266982(n+2), 1]`
-/

namespace A280682.P5930210329508121725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266982 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A280682.P5930210329508121725

namespace A280682

/-- `lt[A266982(n+2), 1]` -/
def P5930210329508121725.Spec : Prop :=
  ∀ n, (P5930210329508121725.a n : ℤ) = A280682 (n + 1)

end A280682

/-! ## A280682.P6125496632148830345

`A143051(a(n-1)+2)` with `a(0)=0`
-/

namespace A280682.P6125496632148830345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A143051 (a (n - 1) + 2).toNat

end

end A280682.P6125496632148830345

namespace A280682

/-- `A143051(a(n-1)+2)` -/
def P6125496632148830345.Spec : Prop :=
  ∀ n, P6125496632148830345.a n = A280682 (n + 1)

end A280682

/-! ## A280682.P1635862919462006445

`lt[A176895(A139432(n)), 3]`
-/

namespace A280682.P1635862919462006445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (A139432 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A280682.P1635862919462006445

namespace A280682

/-- `lt[A176895(A139432(n)), 3]` -/
def P1635862919462006445.Spec : Prop :=
  ∀ n, (P1635862919462006445.a n : ℤ) = A280682 (n + 1)

end A280682

/-! ## A280682.P12554167010913036353

`lt[A329116(n), A329116(n+1)]`
-/

namespace A280682.P12554167010913036353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A280682.P12554167010913036353

namespace A280682

/-- `lt[A329116(n), A329116(n+1)]` -/
def P12554167010913036353.Spec : Prop :=
  ∀ n, (P12554167010913036353.a n : ℤ) = A280682 (n + 1)

end A280682

/-! ## A280682.P3281965997832408997

`lt[2, A020639(A003059(n+1)+2)]`
-/

namespace A280682.P3281965997832408997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003059 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A280682.P3281965997832408997

namespace A280682

/-- `lt[2, A020639(A003059(n+1)+2)]` -/
def P3281965997832408997.Spec : Prop :=
  ∀ n, (P3281965997832408997.a n : ℤ) = A280682 (n + 1)

end A280682

/-! ## A280682.P7767915497370121251

`A014105(A339183(A183301(n+1)))+n`
-/

namespace A280682.P7767915497370121251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 (A339183 (A183301 (n + 1)).toNat).toNat + (n : ℤ)

end

end A280682.P7767915497370121251

namespace A280682

/-- `A014105(A339183(A183301(n+1)))+n` -/
def P7767915497370121251.Spec : Prop :=
  ∀ n, P7767915497370121251.a n = A280682 (n + 1)

end A280682

/-! ## A280682.P9434899823808645987

`A199855(n+1)+A211394(A199855(n+1))-2`
-/

namespace A280682.P9434899823808645987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199855 (n + 1) + (A211394 (A199855 (n + 1)).toNat - 2)

end

end A280682.P9434899823808645987

namespace A280682

/-- `A199855(n+1)+A211394(A199855(n+1))-2` -/
def P9434899823808645987.Spec : Prop :=
  ∀ n, P9434899823808645987.a n = A280682 (n + 1)

end A280682

/-! ## A280682.P11888248267913880827

`lt[A007814(A006218(n)+1), 1]`
-/

namespace A280682.P11888248267913880827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A006218 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A280682.P11888248267913880827

namespace A280682

/-- `lt[A007814(A006218(n)+1), 1]` -/
def P11888248267913880827.Spec : Prop :=
  ∀ n, (P11888248267913880827.a n : ℤ) = A280682 (n + 1)

end A280682

/-! ## A280682.P4543399793221608357

`lt[A090915(n+1), n+2]`
-/

namespace A280682.P4543399793221608357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A280682.P4543399793221608357

namespace A280682

/-- `lt[A090915(n+1), n+2]` -/
def P4543399793221608357.Spec : Prop :=
  ∀ n, (P4543399793221608357.a n : ℤ) = A280682 (n + 1)

end A280682

/-! ## A280682.P4184895405623372688

`lt[A323202(n+3), A323186(n)]`
-/

namespace A280682.P4184895405623372688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323202 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323186 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A280682.P4184895405623372688

namespace A280682

/-- `lt[A323202(n+3), A323186(n)]` -/
def P4184895405623372688.Spec : Prop :=
  ∀ n, (P4184895405623372688.a n : ℤ) = A280682 (n + 1)

end A280682

/-!
# A280683: Number of ways to write n as an ordered sum of two positive squarefree semiprimes (A006881).

The programs for A280683, there is no canonical definition to state claims against.
-/

/-! ## A280683.P14218542080388563154

`A001221(C(A331873(2*(n+1)), A280829(n+1)))`
-/

namespace A280683.P14218542080388563154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (A331873 (2 * (n + 1))).toNat (A280829 (n + 1)).toNat)

end

end A280683.P14218542080388563154

/-! ## A280683.P11434261150177824345

`A008579(n)%A046072(A014148(n+1))`
-/

namespace A280683.P11434261150177824345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008579 n) (A046072 (A014148 (n + 1)).toNat)

end

end A280683.P11434261150177824345

/-! ## A280683.P10452003928332684046

`A000120(A195011(3*n)*A280829(n+1))`
-/

namespace A280683.P10452003928332684046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A195011 (3 * n) * A280829 (n + 1)).toNat

end

end A280683.P10452003928332684046

/-!
# A280684: a(n) = number of divisors of the product of the divisors of n.

The programs for A280684, the canonical program `A280684.P8623937446844403101` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280684 has offset 1).

The definition of A280684 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280684.P8623937446844403101

`A000005(A007955(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A280684

/-- `A000005(A007955(n+1))` -/
def P8623937446844403101.Spec : Prop :=
  ∀ n, P8623937446844403101.a n = A280684 (n + 1)

theorem P8623937446844403101.correct : P8623937446844403101.Spec := by
  intro n
  simp only [A280684, Nat.add_sub_cancel]

end A280684

/-! ## A280684.P9106054054311635424

`∏{e}[n+1, A008619(#*A000005(n+1))]`
-/

namespace A280684.P9106054054311635424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A008619 ((Nat.factorization (f1 n) p : ℤ) * A000005 (n + 1)).toNat

end

end A280684.P9106054054311635424

namespace A280684

/-- `∏{e}[n+1, A008619(#*A000005(n+1))]` -/
def P9106054054311635424.Spec : Prop :=
  ∀ n, P9106054054311635424.a n = A280684 (n + 1)

end A280684

/-! ## A280684.P9909591523771164518

`∏{e}[n+1, A028242(#*A000005(n+1))]`
-/

namespace A280684.P9909591523771164518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A028242 ((Nat.factorization (f1 n) p : ℤ) * A000005 (n + 1)).toNat

end

end A280684.P9909591523771164518

namespace A280684

/-- `∏{e}[n+1, A028242(#*A000005(n+1))]` -/
def P9909591523771164518.Spec : Prop :=
  ∀ n, P9909591523771164518.a n = A280684 (n + 1)

end A280684

/-! ## A280684.P2049030222216754394

`∏{e}[n+1, A008621(2*#*A000005(n+1))]`
-/

namespace A280684.P2049030222216754394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A008621 (2 * ((Nat.factorization (f1 n) p : ℤ) * A000005 (n + 1))).toNat

end

end A280684.P2049030222216754394

namespace A280684

/-- `∏{e}[n+1, A008621(2*#*A000005(n+1))]` -/
def P2049030222216754394.Spec : Prop :=
  ∀ n, P2049030222216754394.a n = A280684 (n + 1)

end A280684

/-! ## A280684.P6621210215109281563

`∏{e}[(n+1)², A008621(#*A000005(n+1))]`
-/

namespace A280684.P6621210215109281563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A008621 ((Nat.factorization (f1 n) p : ℤ) * A000005 (n + 1)).toNat

end

end A280684.P6621210215109281563

namespace A280684

/-- `∏{e}[(n+1)², A008621(#*A000005(n+1))]` -/
def P6621210215109281563.Spec : Prop :=
  ∀ n, P6621210215109281563.a n = A280684 (n + 1)

end A280684

/-!
# A280685: a(n) = sum of the divisors of the product of the divisors of n.

The programs for A280685, the canonical program `A280685.P17876969319558057215` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280685 has offset 1).

The definition of A280685 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280685.P17876969319558057215

`A000203(A007955(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A280685

/-- `A000203(A007955(n+1))` -/
def P17876969319558057215.Spec : Prop :=
  ∀ n, P17876969319558057215.a n = A280685 (n + 1)

theorem P17876969319558057215.correct : P17876969319558057215.Spec := by
  intro n
  simp only [A280685, Nat.add_sub_cancel]

end A280685

/-! ## A280685.P10789369398366768372

`∑{d}[∏{d}[1+n, #], #]`
-/

namespace A280685.P10789369398366768372
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A280685.P10789369398366768372

namespace A280685

/-- `∑{d}[∏{d}[1+n, #], #]` -/
def P10789369398366768372.Spec : Prop :=
  ∀ n, (P10789369398366768372.a n : ℤ) = A280685 (n + 1)

end A280685

/-! ## A280685.P13327916891935562856

`∑{d}[exp(∑{d}[1+n, log(#)]), #]`
-/

namespace A280685.P13327916891935562856
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ d ∈ Nat.divisors (f2 n), Real.log (d : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A280685.P13327916891935562856

namespace A280685

/-- `∑{d}[exp(∑{d}[1+n, log(#)]), #]` -/
def P13327916891935562856.Spec : Prop :=
  ∀ n, (P13327916891935562856.a n : ℤ) = A280685 (n + 1)

end A280685

/-! ## A280685.P7316290673502709508

`∑{d}[2^∑{d}[n+1, log2(#)], #]`
-/

namespace A280685.P7316290673502709508
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ d ∈ Nat.divisors (f2 n), Real.logb 2 (d : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A280685.P7316290673502709508

namespace A280685

/-- `∑{d}[2^∑{d}[n+1, log2(#)], #]` -/
def P7316290673502709508.Spec : Prop :=
  ∀ n, (P7316290673502709508.a n : ℤ) = A280685 (n + 1)

end A280685

/-! ## A280685.P15933618203637032764

`∑{d}[ratio[∏{d}[n, #]]*∏{d}[n, #], #]`
-/

namespace A280685.P15933618203637032764
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), d

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ) * ((∏ d ∈ Nat.divisors (f4 n), d : ℕ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A280685.P15933618203637032764

namespace A280685

/-- `∑{d}[ratio[∏{d}[n, #]]*∏{d}[n, #], #]` -/
def P15933618203637032764.Spec : Prop :=
  ∀ n, (P15933618203637032764.a n : ℤ) = A280685 (n + 1)

end A280685

/-!
# A280686: Largest Fibonacci proper divisor of n, a(1) = 1.

The programs for A280686, there is no canonical definition to state claims against.
-/

/-! ## A280686.P16722940753613323429

`(n+1)/A280687(n+1)`
-/

namespace A280686.P16722940753613323429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A280687 (n + 1) : ℚ)

end

end A280686.P16722940753613323429

/-! ## A280686.P12242070062200678473

`A219158(A280687(n+1)+A000217(n))`
-/

namespace A280686.P12242070062200678473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A280687 (n + 1) + A000217 n).toNat

end

end A280686.P12242070062200678473

/-! ## A280686.P15934690677485059445

`A234575(A280687(n+1)+A000217(n))`
-/

namespace A280686.P15934690677485059445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A280687 (n + 1) + A000217 n).toNat

end

end A280686.P15934690677485059445

/-! ## A280686.P6573029775435217162

`A010766(A280687(n+1)+∑[n])`
-/

namespace A280686.P6573029775435217162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A280687 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A280686.P6573029775435217162

/-! ## A280686.P16357012503334095028

`A049834(A280687(n+1)+∑[n])`
-/

namespace A280686.P16357012503334095028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A280687 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A280686.P16357012503334095028

/-! ## A280686.P3626487840990709151

`A051537(A280687(n+1)+∑[n])`
-/

namespace A280686.P3626487840990709151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A280687 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A280686.P3626487840990709151

/-! ## A280686.P11280366551823306783

`A054531(A280687(n+1)+∑[n])`
-/

namespace A280686.P11280366551823306783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A280687 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A280686.P11280366551823306783

/-! ## A280686.P6532149144499917351

`A126988(A280687(n+1)+∑[n])`
-/

namespace A280686.P6532149144499917351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A280687 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A280686.P6532149144499917351

/-!
# A280687: a(n) = n / A280686(n); n divided by its largest Fibonacci proper divisor, a(1) = 1.

The programs for A280687, there is no canonical definition to state claims against.
-/

/-! ## A280687.P13439205658830957107

`(n+1)/A280686(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280687.P13439205658830957107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A280686 (n + 1) : ℚ)

end

end A280687.P13439205658830957107

/-! ## A280687.P1408423216332147471

`A219158(A280686(n+1)+A000217(n))`
-/

namespace A280687.P1408423216332147471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A280686 (n + 1) + A000217 n).toNat

end

end A280687.P1408423216332147471

/-! ## A280687.P7734655494057004549

`A234575(A280686(n+1)+∑[n])`
-/

namespace A280687.P7734655494057004549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A280686 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A280687.P7734655494057004549

/-! ## A280687.P2422997903053800270

`A049834(A280686(n+1)+∑[n])`
-/

namespace A280687.P2422997903053800270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A280686 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A280687.P2422997903053800270

/-! ## A280687.P15703929521630103457

`A051537(A280686(n+1)+∑[n])`
-/

namespace A280687.P15703929521630103457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A280686 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A280687.P15703929521630103457

/-! ## A280687.P14827891905433714408

`A054531(A280686(n+1)+∑[n])`
-/

namespace A280687.P14827891905433714408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A280686 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A280687.P14827891905433714408

/-! ## A280687.P9373170793413283088

`A126988(A280686(n+1)+∑[n])`
-/

namespace A280687.P9373170793413283088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A280686 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A280687.P9373170793413283088

/-!
# A280688: a(n) = A000045(A054576(n))= A280686(A105800(n)).

The programs for A280688, there is no canonical definition to state claims against.
-/

/-! ## A280688.P1979520790585171282

`A000045(A054576(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280688.P1979520790585171282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A054576 (n + 1)).toNat

end

end A280688.P1979520790585171282

/-! ## A280688.P8110893650708353669

`A105800(A032742(n+1))`
-/

namespace A280688.P8110893650708353669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105800 (A032742 (n + 1)).toNat

end

end A280688.P8110893650708353669

/-! ## A280688.P12164950118738431225

`A280686(A105800(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280688.P12164950118738431225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280686 (A105800 (n + 1)).toNat

end

end A280688.P12164950118738431225

/-! ## A280688.P7049494438624286610

`A105800(A063928(n+1))`
-/

namespace A280688.P7049494438624286610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105800 (A063928 (n + 1)).toNat

end

end A280688.P7049494438624286610

/-! ## A280688.P1777994503502307594

`A105800(A387543(n+1))`
-/

namespace A280688.P1777994503502307594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105800 (A387543 (n + 1)).toNat

end

end A280688.P1777994503502307594

/-! ## A280688.P11340523340295665576

`A000045(A117358(2*(n+1)))`
-/

namespace A280688.P11340523340295665576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A117358 (2 * (n + 1))).toNat

end

end A280688.P11340523340295665576

/-! ## A280688.P11638856216390991024

`A103609(2*A054576(n+1))`
-/

namespace A280688.P11638856216390991024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A054576 (n + 1)).toNat

end

end A280688.P11638856216390991024

/-! ## A280688.P15204515690311773475

`A105800(A054576(2*(n+1)))`
-/

namespace A280688.P15204515690311773475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105800 (A054576 (2 * (n + 1))).toNat

end

end A280688.P15204515690311773475

/-! ## A280688.P2195014520901863772

`A105800(A054576(n+1)+A054576(n+1))`
-/

namespace A280688.P2195014520901863772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105800 (A054576 (n + 1) + A054576 (n + 1)).toNat

end

end A280688.P2195014520901863772

/-! ## A280688.P14949858348341252990

`A000045(A032742(n+1)/A014673(n+1))`
-/

namespace A280688.P14949858348341252990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A032742 (n + 1) : ℚ) / (A014673 (n + 1) : ℚ))).toNat

end

end A280688.P14949858348341252990

/-! ## A280688.P3865666432019660753

`A000045(A032742((n+1)/A020639(n+1)))`
-/

namespace A280688.P3865666432019660753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A032742 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat).toNat

end

end A280688.P3865666432019660753

/-! ## A280688.P1397858998872616042

`A105800(A117818(n+1))`
-/

namespace A280688.P1397858998872616042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105800 (A117818 (n + 1)).toNat

end

end A280688.P1397858998872616042

/-! ## A280688.P16155884997084178075

`A105800((n+1)/A014673(n+1))`
-/

namespace A280688.P16155884997084178075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105800 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A014673 (n + 1) : ℚ))).toNat

end

end A280688.P16155884997084178075

/-! ## A280688.P4536205717995093764

`A105800(n+1)/A280689(n+1)`
-/

namespace A280688.P4536205717995093764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105800 (n + 1) : ℚ) / (A280689 (n + 1) : ℚ)

end

end A280688.P4536205717995093764

/-! ## A280688.P3142258872870106732

`A000045(A032742(n+1))/A280689(n+1)`
-/

namespace A280688.P3142258872870106732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A032742 (n + 1)).toNat : ℚ) / (A280689 (n + 1) : ℚ)

end

end A280688.P3142258872870106732

/-! ## A280688.P6794960910337391194

`A000045(n+1)/(A280689(n+1)*A280690(n+1))`
-/

namespace A280688.P6794960910337391194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / (A280689 (n + 1) * A280690 (n + 1) : ℚ)

end

end A280688.P6794960910337391194

/-!
# A280689: a(n) = A000045(A032742(n)) / A000045(A054576(n)), where A000045(n) gives the n-th Fibonacci number, A032742(n) = the largest proper divisor of n, and A054576(n) = A032742(A032742(n)).

The programs for A280689, there is no canonical definition to state claims against.
-/

/-! ## A280689.P10467233517209233677

`A280690(A032742(n+1))`
-/

namespace A280689.P10467233517209233677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280690 (A032742 (n + 1)).toNat

end

end A280689.P10467233517209233677

/-! ## A280689.P6370222866789836264

`A105800(n+1)/A280688(n+1)`
-/

namespace A280689.P6370222866789836264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105800 (n + 1) : ℚ) / (A280688 (n + 1) : ℚ)

end

end A280689.P6370222866789836264

/-! ## A280689.P5093477063315564682

`A105800(n+1)/A105800(A032742(n+1))`
-/

namespace A280689.P5093477063315564682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105800 (n + 1) : ℚ) / (A105800 (A032742 (n + 1)).toNat : ℚ)

end

end A280689.P5093477063315564682

/-! ## A280689.P14228698104950315894

`A000045(A032742(n+1))/A000045(A054576(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280689.P14228698104950315894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A032742 (n + 1)).toNat : ℚ) / (A000045 (A054576 (n + 1)).toNat : ℚ)

end

end A280689.P14228698104950315894

/-! ## A280689.P12140810041789733591

`A280690(A387543(n+1))`
-/

namespace A280689.P12140810041789733591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280690 (A387543 (n + 1)).toNat

end

end A280689.P12140810041789733591

/-! ## A280689.P124142088371194494

`A280690(A054576(2*(n+1)))`
-/

namespace A280689.P124142088371194494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280690 (A054576 (2 * (n + 1))).toNat

end

end A280689.P124142088371194494

/-! ## A280689.P8641503161104655733

`A280690((n+1)/A020639(n+1))`
-/

namespace A280689.P8641503161104655733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280690 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat

end

end A280689.P8641503161104655733

/-! ## A280689.P5467252407975387141

`A280688(2*(n+1))/A280688(n+1)`
-/

namespace A280689.P5467252407975387141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280688 (2 * (n + 1)) : ℚ) / (A280688 (n + 1) : ℚ)

end

end A280689.P5467252407975387141

/-! ## A280689.P16672375835933205042

`A105800(n+1)/A000045(A054576(n+1))`
-/

namespace A280689.P16672375835933205042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105800 (n + 1) : ℚ) / (A000045 (A054576 (n + 1)).toNat : ℚ)

end

end A280689.P16672375835933205042

/-! ## A280689.P11575213451828042539

`A105800(n+1)/A105800(A063928(n+1))`
-/

namespace A280689.P11575213451828042539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105800 (n + 1) : ℚ) / (A105800 (A063928 (n + 1)).toNat : ℚ)

end

end A280689.P11575213451828042539

/-! ## A280689.P14797062470863964181

`A000045(A032742(n+1))/A280688(n+1)`
-/

namespace A280689.P14797062470863964181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A032742 (n + 1)).toNat : ℚ) / (A280688 (n + 1) : ℚ)

end

end A280689.P14797062470863964181

/-! ## A280689.P2848604808738596361

`A105800(n+1)/A105800(A117818(n+1))`
-/

namespace A280689.P2848604808738596361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105800 (n + 1) : ℚ) / (A105800 (A117818 (n + 1)).toNat : ℚ)

end

end A280689.P2848604808738596361

/-! ## A280689.P10110192462383867964

`A105800(n+1)/A105800(2*A054576(n+1))`
-/

namespace A280689.P10110192462383867964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105800 (n + 1) : ℚ) / (A105800 (2 * A054576 (n + 1)).toNat : ℚ)

end

end A280689.P10110192462383867964

/-!
# A280690: a(n) = A000045(n) / A105800(n); the n-th Fibonacci number divided by its largest Fibonacci proper divisor.

The programs for A280690, there is no canonical definition to state claims against.
-/

/-! ## A280690.P7553853943362117575

`A000045(n+1)/A105800(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280690.P7553853943362117575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / (A105800 (n + 1) : ℚ)

end

end A280690.P7553853943362117575

/-! ## A280690.P11605862802229818007

`A000045(n+1)/A000045(A032742(n+1))`
-/

namespace A280690.P11605862802229818007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / (A000045 (A032742 (n + 1)).toNat : ℚ)

end

end A280690.P11605862802229818007

/-! ## A280690.P2092482787653770522

`A280687(A000045(n+1))`
-/

namespace A280690.P2092482787653770522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280687 (A000045 (n + 1)).toNat

end

end A280690.P2092482787653770522

/-! ## A280690.P6563321095832853490

`A280689(2*(n+1))`
-/

namespace A280690.P6563321095832853490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280689 (2 * (n + 1))

end

end A280690.P6563321095832853490

/-! ## A280690.P15297491342567486251

`A105800(2*(n+1))/A105800(n+1)`
-/

namespace A280690.P15297491342567486251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105800 (2 * (n + 1)) : ℚ) / (A105800 (n + 1) : ℚ)

end

end A280690.P15297491342567486251

/-! ## A280690.P15177469769414921251

`A000045(n+1)/A280688(2*(n+1))`
-/

namespace A280690.P15177469769414921251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / (A280688 (2 * (n + 1)) : ℚ)

end

end A280690.P15177469769414921251

/-! ## A280690.P2117527457353952878

`A280688(4*(n+1))/A280688(2*(n+1))`
-/

namespace A280690.P2117527457353952878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280688 (4 * (n + 1)) : ℚ) / (A280688 (2 * (n + 1)) : ℚ)

end

end A280690.P2117527457353952878

/-! ## A280690.P8834295407701941211

`A000045(n+1)/A000045(A054576(2*(n+1)))`
-/

namespace A280690.P8834295407701941211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / (A000045 (A054576 (2 * (n + 1))).toNat : ℚ)

end

end A280690.P8834295407701941211

/-! ## A280690.P9499699295284525803

`A000045(n+1)/A000045((n+1)/A020639(n+1))`
-/

namespace A280690.P9499699295284525803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / (A000045 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat : ℚ)

end

end A280690.P9499699295284525803

/-!
# A280691: a(n) = A015518(A032742(n)) / A015518(A054576(n)).

The programs for A280691, there is no canonical definition to state claims against.
-/

/-! ## A280691.P11066879056433536544

`A015518(A032742(n+1))/A015518(A054576(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280691.P11066879056433536544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015518 (A032742 (n + 1)).toNat : ℚ) / (A015518 (A054576 (n + 1)).toNat : ℚ)

end

end A280691.P11066879056433536544

/-!
# A280692: a(n) = A003961(n) - A250469(n).

The programs for A280692, there is no canonical definition to state claims against.
-/

/-! ## A280692.P5636515702368159971

`A003961(n+1)-A250469(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280692.P5636515702368159971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - A250469 (n + 1)

end

end A280692.P5636515702368159971

/-! ## A280692.P11703420494843738954

`∑{d}[n+1, A347377(#)]`
-/

namespace A280692.P11703420494843738954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347377 d

end

end A280692.P11703420494843738954

/-! ## A280692.P12484466879246315186

`A346476(n+1)+A252748(n+1)`
-/

namespace A280692.P12484466879246315186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346476 (n + 1) + A252748 (n + 1)

end

end A280692.P12484466879246315186

/-! ## A280692.P2209501636855234241

`A243501(n+1)-A269360(n+1)`
-/

namespace A280692.P2209501636855234241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (n + 1) - A269360 (n + 1)

end

end A280692.P2209501636855234241

/-! ## A280692.P10784516555197002000

`A286385(n+1)-A346473(n+1)`
-/

namespace A280692.P10784516555197002000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286385 (n + 1) - A346473 (n + 1)

end

end A280692.P10784516555197002000

/-! ## A280692.P11396873100398056746

`A336853(n+1)-A347378(n+1)`
-/

namespace A280692.P11396873100398056746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (n + 1) - A347378 (n + 1)

end

end A280692.P11396873100398056746

/-! ## A280692.P2846817037835688961

`A003961(n+1)+1-A269360(n+1)`
-/

namespace A280692.P2846817037835688961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) + (1 - A269360 (n + 1))

end

end A280692.P2846817037835688961

/-! ## A280692.P5603280790092654810

`2*A048673(n+1)-A269360(n+1)`
-/

namespace A280692.P5603280790092654810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048673 (n + 1) - A269360 (n + 1)

end

end A280692.P5603280790092654810

/-! ## A280692.P12021834258055556788

`A003961(n+1)-A269379(A269355(n+1))`
-/

namespace A280692.P12021834258055556788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - A269379 (A269355 (n + 1)).toNat

end

end A280692.P12021834258055556788

/-! ## A280692.P12072080668111563054

`A003961(n+1)-(A346473(n+1)+A000203(n+1))`
-/

namespace A280692.P12072080668111563054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - (A346473 (n + 1) + A000203 (n + 1))

end

end A280692.P12072080668111563054

/-! ## A280692.P10443130492150443328

`A252748(n+1)+A346478(n+1)-A346477(n+1)`
-/

namespace A280692.P10443130492150443328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (n + 1) + (A346478 (n + 1) - A346477 (n + 1))

end

end A280692.P10443130492150443328

/-! ## A280692.P6579342378006644608

`A003961(n+1)-A280702(n+1)*A280704(n+1)`
-/

namespace A280692.P6579342378006644608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - A280702 (n + 1) * A280704 (n + 1)

end

end A280692.P6579342378006644608

/-! ## A280692.P16825178692846101398

`(A280703(n+1)-A280704(n+1))*A280702(n+1)`
-/

namespace A280692.P16825178692846101398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A280703 (n + 1) - A280704 (n + 1)) * A280702 (n + 1)

end

end A280692.P16825178692846101398

/-! ## A280692.P18384155181986718068

`A003961(n+1)-A003961(A266645(n+1))`
-/

namespace A280692.P18384155181986718068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - A003961 (A266645 (n + 1)).toNat

end

end A280692.P18384155181986718068

/-! ## A280692.P9646073207705916603

`A243501(n+1)-A243501(A266645(n+1))`
-/

namespace A280692.P9646073207705916603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (n + 1) - A243501 (A266645 (n + 1)).toNat

end

end A280692.P9646073207705916603

/-! ## A280692.P6787022418256088800

`A253885(n)-A253885(A266645(n+1)-1)`
-/

namespace A280692.P6787022418256088800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n - A253885 (A266645 (n + 1) - 1).toNat

end

end A280692.P6787022418256088800

/-! ## A280692.P7729707110267308119

`2*(A048673(n+1)-A048673(A266645(n+1)))`
-/

namespace A280692.P7729707110267308119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A048673 (n + 1) - A048673 (A266645 (n + 1)).toNat)

end

end A280692.P7729707110267308119

/-! ## A280692.P7089897111356814371

`A003961(n+1)-A003961(A020639(n+1)*A283463(n+1))`
-/

namespace A280692.P7089897111356814371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - A003961 (A020639 (n + 1) * A283463 (n + 1)).toNat

end

end A280692.P7089897111356814371

/-! ## A280692.P2197731916081756202

`A253885(n)+1-A250469(n+1)`
-/

namespace A280692.P2197731916081756202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n + (1 - A250469 (n + 1))

end

end A280692.P2197731916081756202

/-! ## A280692.P2340733071092505344

`A243501(n+1)-(A250469(n+1)+1)`
-/

namespace A280692.P2340733071092505344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (n + 1) - (A250469 (n + 1) + 1)

end

end A280692.P2340733071092505344

/-!
# A280693: Numbers n such that A003961(n) = A250469(n).

The programs for A280693, there is no canonical definition to state claims against.
-/

/-! ## A280693.P14093699893049648416

`eq[1, A280703(n+1)]+1`
-/

namespace A280693.P14093699893049648416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280703 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A280693.P14093699893049648416

/-! ## A280693.P17205081952127993586

`eq[A113061(n+1), A280704(n+1)]+1`
-/

namespace A280693.P17205081952127993586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280704 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A280693.P17205081952127993586

/-! ## A280693.P5162548471592834956

`eq[A001222(n+1), A001222(A280702(n+1))]+1`
-/

namespace A280693.P5162548471592834956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A280702 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A280693.P5162548471592834956

/-! ## A280693.P11589344145929777630

`eq[0, A280692(n+1)]+1`
-/

namespace A280693.P11589344145929777630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280692 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A280693.P11589344145929777630

/-! ## A280693.P14828301738016596700

`record[gcd(n+1, A266645(n+1))]`
-/

namespace A280693.P14828301738016596700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A266645 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280693.P14828301738016596700

/-! ## A280693.P1852069607251109203

`A266645(eq[n+1, A266645(n+1)]+1)`
-/

namespace A280693.P1852069607251109203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A280693.P1852069607251109203

/-! ## A280693.P4071277711520704047

`A266645(record[n/(A266645(n+1)-n)]+1)`
-/

namespace A280693.P4071277711520704047
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A266645 (n + 1) - (n : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266645 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A280693.P4071277711520704047

/-! ## A280693.P9802739006287029673

`eq[A057427(n), A280703(A028310(n))]`
-/

namespace A280693.P9802739006287029673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280703 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280693.P9802739006287029673

/-! ## A280693.P3318577138024963190

`eq[A253885(n), A253886(n)]+1`
-/

namespace A280693.P3318577138024963190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253886 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A280693.P3318577138024963190

/-! ## A280693.P9375501944967881607

`eq[A003961(n+1), A250469(n+1)]+1`
-/

namespace A280693.P9375501944967881607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250469 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A280693.P9375501944967881607

/-! ## A280693.P800207817929418209

`record[A266646(n+1)/(A266646(n+1)-n)]`
-/

namespace A280693.P800207817929418209
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266646 (n + 1) : ℚ) / (A266646 (n + 1) - (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280693.P800207817929418209

/-!
# A280694: Largest Lucas number (A000032) dividing n.

The programs for A280694, there is no canonical definition to state claims against.
-/

/-! ## A280694.P3026199557615473709

`(n+1)/A280695(n+1)`
-/

namespace A280694.P3026199557615473709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A280695 (n + 1) : ℚ)

end

end A280694.P3026199557615473709

/-! ## A280694.P5430603116891994714

`A280696(5*(n+1))`
-/

namespace A280694.P5430603116891994714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280696 (5 * (n + 1))

end

end A280694.P5430603116891994714

/-! ## A280694.P2142842412428753430

`5*(n+1)/A280697(5*(n+1))`
-/

namespace A280694.P2142842412428753430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((n + 1 : ℚ) / (A280697 (5 * (n + 1)) : ℚ))

end

end A280694.P2142842412428753430

/-! ## A280694.P14456847602031087541

`gcd(n+1, A280696(A008574(n+1)+n+1))`
-/

namespace A280694.P14456847602031087541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A280696 (A008574 (n + 1) + (n + 1 : ℤ)).toNat)

end

end A280694.P14456847602031087541

/-! ## A280694.P15095753326215907242

`A280696(A008574(n+1)+n+1)%A000040(n+1)`
-/

namespace A280694.P15095753326215907242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280696 (A008574 (n + 1) + (n + 1 : ℤ)).toNat) (A000040 (n + 1))

end

end A280694.P15095753326215907242

/-!
# A280695: a(n) = n / A280694(n); n divided by the largest Lucas number (A000032) dividing n.

The programs for A280695, there is no canonical definition to state claims against.
-/

/-! ## A280695.P16357470260013861882

`(n+1)/A280694(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280695.P16357470260013861882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A280694 (n + 1) : ℚ)

end

end A280695.P16357470260013861882

/-! ## A280695.P11621795709914953604

`A280697(n+1)^C(A280696(n+1), A280694(n+1))`
-/

namespace A280695.P11621795709914953604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280697 (n + 1) ^ Nat.choose (A280696 (n + 1)).toNat (A280694 (n + 1)).toNat

end

end A280695.P11621795709914953604

/-! ## A280695.P9931221854069243596

`A280697(5*(n+1))/5`
-/

namespace A280695.P9931221854069243596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280697 (5 * (n + 1)) : ℚ) / 5

end

end A280695.P9931221854069243596

/-! ## A280695.P4930158135225203948

`(n+1)/A280696(5*(n+1))`
-/

namespace A280695.P4930158135225203948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A280696 (5 * (n + 1)) : ℚ)

end

end A280695.P4930158135225203948

/-! ## A280695.P14882664982085116609

`gcd(Δ[A001057(n)], A280697(5*(n+1)))`
-/

namespace A280695.P14882664982085116609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A280697 (5 * (n + 1)))

end

end A280695.P14882664982085116609

/-! ## A280695.P8773831283975733347

`A234575(A280694(n+1)+A000217(n))`
-/

namespace A280695.P8773831283975733347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A280694 (n + 1) + A000217 n).toNat

end

end A280695.P8773831283975733347

/-! ## A280695.P19772027241946232

`A051537(A280694(n+1)+∑[n])`
-/

namespace A280695.P19772027241946232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A280694 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A280695.P19772027241946232

/-! ## A280695.P1421708957954623295

`A054531(A280694(n+1)+∑[n])`
-/

namespace A280695.P1421708957954623295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A280694 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A280695.P1421708957954623295

/-!
# A280696: Largest Lucas proper divisor of n, a(1) = a(2) = 1.

The programs for A280696, there is no canonical definition to state claims against.
-/

/-! ## A280696.P509264993371813824

`(n+1)/A280697(n+1)`
-/

namespace A280696.P509264993371813824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A280697 (n + 1) : ℚ)

end

end A280696.P509264993371813824

/-! ## A280696.P16346270596687177450

`A219158(A280697(1+n)+A000217(n))`
-/

namespace A280696.P16346270596687177450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A280697 (1 + n) + A000217 n).toNat

end

end A280696.P16346270596687177450

/-! ## A280696.P5542145712246411155

`A234575(A280697(n+1)+A000217(n))`
-/

namespace A280696.P5542145712246411155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A280697 (n + 1) + A000217 n).toNat

end

end A280696.P5542145712246411155

/-! ## A280696.P3672100599775300946

`A051537(A280697(n+1)+∑[n])`
-/

namespace A280696.P3672100599775300946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A280697 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A280696.P3672100599775300946

/-! ## A280696.P1092613352456666071

`A054531(A280697(n+1)+∑[n])`
-/

namespace A280696.P1092613352456666071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A280697 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A280696.P1092613352456666071

/-! ## A280696.P1401455914481422616

`A126988(A280697(n+1)+∑[n])`
-/

namespace A280696.P1401455914481422616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A280697 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A280696.P1401455914481422616

/-! ## A280696.P7670216866203641664

`A049834(A280697(n+1)+A000217(n))`
-/

namespace A280696.P7670216866203641664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A280697 (n + 1) + A000217 n).toNat

end

end A280696.P7670216866203641664

/-!
# A280697: a(n) = n / A280696(n); n divided by its largest Lucas proper divisor, a(1) = 1.

The programs for A280697, there is no canonical definition to state claims against.
-/

/-! ## A280697.P1904071542299894142

`(n+1)/A280696(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280697.P1904071542299894142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A280696 (n + 1) : ℚ)

end

end A280697.P1904071542299894142

/-! ## A280697.P2829147377039245861

`(n+1)*A280696(n+1)^-A261143(n)`
-/

namespace A280697.P2829147377039245861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A280696 (n + 1) : ℚ) ^ (-A261143 n : ℤ)

end

end A280697.P2829147377039245861

/-! ## A280697.P5257142138871290644

`A219158(A280696(n+1)+A000217(n))`
-/

namespace A280697.P5257142138871290644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A280696 (n + 1) + A000217 n).toNat

end

end A280697.P5257142138871290644

/-! ## A280697.P4765058665323223626

`A234575(A280696(n+1)+A000217(n))`
-/

namespace A280697.P4765058665323223626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A280696 (n + 1) + A000217 n).toNat

end

end A280697.P4765058665323223626

/-! ## A280697.P839208236333066866

`A051537(A280696(n+1)+∑[n])`
-/

namespace A280697.P839208236333066866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A280696 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A280697.P839208236333066866

/-! ## A280697.P7546468916891380681

`A054531(A280696(n+1)+∑[n])`
-/

namespace A280697.P7546468916891380681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A280696 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A280697.P7546468916891380681

/-! ## A280697.P3204629463603051558

`A126988(A280696(n+1)+∑[n])`
-/

namespace A280697.P3204629463603051558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A280696 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A280697.P3204629463603051558

/-! ## A280697.P5640541547397133110

`A049834(A280696(n+1)+A000217(n))`
-/

namespace A280697.P5640541547397133110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A280696 (n + 1) + A000217 n).toNat

end

end A280697.P5640541547397133110

/-!
# A280698: Greatest Lucas number that is a proper divisor of the n-th Lucas number, a(1) = 1.

The programs for A280698, there is no canonical definition to state claims against.
-/

/-! ## A280698.P13601347701190530283

`A280696(A000204(n+1))`
-/

namespace A280698.P13601347701190530283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280696 (A000204 (n + 1)).toNat

end

end A280698.P13601347701190530283

/-! ## A280698.P16059669239863047841

`A280694(A000204(n+1)/A006530(A000204(n+1)))`
-/

namespace A280698.P16059669239863047841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280694 (SequenceMachineLib.roundAway ((A000204 (n + 1) : ℚ) / (A006530 (A000204 (n + 1)).toNat : ℚ))).toNat

end

end A280698.P16059669239863047841

/-! ## A280698.P13608630785505303726

`A280696(Δ[floor(∑[ϕ^n])])`
-/

namespace A280698.P13608630785505303726
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280696 (f1 (n + 1) - f1 n).toNat

end

end A280698.P13608630785505303726

/-! ## A280698.P7476250479927602366

`A102097(A280154(n+1))`
-/

namespace A280698.P7476250479927602366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102097 (A280154 (n + 1)).toNat

end

end A280698.P7476250479927602366

/-! ## A280698.P16687514308773450537

`A126015(n+1)+A126010(A125966(n+5))`
-/

namespace A280698.P16687514308773450537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126015 (n + 1) + A126010 (A125966 (n + 5)).toNat

end

end A280698.P16687514308773450537

/-!
# A280699: Greatest Lucas number that is a divisor of the n-th Fibonacci number, a(1) = a(2) = 1.

The programs for A280699, the canonical program `A280699.P3664510402392200407` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280699 has offset 1).

The definition of A280699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 957 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280699.P15602594911469694987

`A280694(A000045(n+1))`
-/

namespace A280699.P15602594911469694987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280694 (A000045 (n + 1)).toNat

end

end A280699.P15602594911469694987

namespace A280699

/-- `A280694(A000045(n+1))` -/
def P15602594911469694987.Spec : Prop :=
  ∀ n, P15602594911469694987.a n = A280699 (n + 1)

end A280699

/-! ## A280699.P3664510402392200407

`gcd(A115339(n+1), A176742(n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A280699

/-- `gcd(A115339(n+1), A176742(n))` -/
def P3664510402392200407.Spec : Prop :=
  ∀ n, (P3664510402392200407.a n : ℤ) = A280699 (n + 1)

theorem P3664510402392200407.correct : P3664510402392200407.Spec := by
  intro n
  simp only [A280699, Nat.add_sub_cancel]

end A280699

/-! ## A280699.P12727797615154933478

`gcd(A082587(n), A117188(n))`
-/

namespace A280699.P12727797615154933478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082587 n) (A117188 n)

end

end A280699.P12727797615154933478

namespace A280699

/-- `gcd(A082587(n), A117188(n))` -/
def P12727797615154933478.Spec : Prop :=
  ∀ n, (P12727797615154933478.a n : ℤ) = A280699 (n + 1)

end A280699

/-! ## A280699.P12349807144049513371

`gcd(∑[A212804(n)], A127218(n+1))`
-/

namespace A280699.P12349807144049513371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A127218 (n + 1))

end

end A280699.P12349807144049513371

namespace A280699

/-- `gcd(∑[A212804(n)], A127218(n+1))` -/
def P12349807144049513371.Spec : Prop :=
  ∀ n, (P12349807144049513371.a n : ℤ) = A280699 (n + 1)

end A280699

/-! ## A280699.P1652668778658482797

`gcd(A000045(n+1), A000032(∑[n]%(n+1)))`
-/

namespace A280699.P1652668778658482797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 (n + 1)) (A000032 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)))

end

end A280699.P1652668778658482797

namespace A280699

/-- `gcd(A000045(n+1), A000032(∑[n]%(n+1)))` -/
def P1652668778658482797.Spec : Prop :=
  ∀ n, (P1652668778658482797.a n : ℤ) = A280699 (n + 1)

end A280699

/-! ## A280699.P4629688961347773245

`A000071(n+1)%A000032(A000217(n)%(n+1))+1`
-/

namespace A280699.P4629688961347773245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000071 (n + 1)) (A000032 (Int.tmod (A000217 n) (n + 1 : ℤ)).toNat) + 1

end

end A280699.P4629688961347773245

namespace A280699

/-- `A000071(n+1)%A000032(A000217(n)%(n+1))+1` -/
def P4629688961347773245.Spec : Prop :=
  ∀ n, P4629688961347773245.a n = A280699 (n + 1)

end A280699

/-! ## A280699.P5275759034013647958

`gcd(A000045(n+1), A000032(A026741(n+1)))`
-/

namespace A280699.P5275759034013647958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 (n + 1)) (A000032 (A026741 (n + 1)).toNat)

end

end A280699.P5275759034013647958

namespace A280699

/-- `gcd(A000045(n+1), A000032(A026741(n+1)))` -/
def P5275759034013647958.Spec : Prop :=
  ∀ n, (P5275759034013647958.a n : ℤ) = A280699 (n + 1)

end A280699

/-! ## A280699.P6984338138833351562

`gcd(A082587(n)+A064497(n+1), A064497(n+1))`
-/

namespace A280699.P6984338138833351562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082587 n + A064497 (n + 1)) (A064497 (n + 1))

end

end A280699.P6984338138833351562

namespace A280699

/-- `gcd(A082587(n)+A064497(n+1), A064497(n+1))` -/
def P6984338138833351562.Spec : Prop :=
  ∀ n, (P6984338138833351562.a n : ℤ) = A280699 (n + 1)

end A280699

/-! ## A280699.P3953823818051982645

`gcd(Δ[A090244(n)], A001654(n))`
-/

namespace A280699.P3953823818051982645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A001654 n)

end

end A280699.P3953823818051982645

namespace A280699

/-- `gcd(Δ[A090244(n)], A001654(n))` -/
def P3953823818051982645.Spec : Prop :=
  ∀ n, (P3953823818051982645.a n : ℤ) = A280699 (n + 1)

end A280699

/-! ## A280699.P7881542790166315684

`gcd(A082587(n), A102714(n))`
-/

namespace A280699.P7881542790166315684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082587 n) (A102714 n)

end

end A280699.P7881542790166315684

namespace A280699

/-- `gcd(A082587(n), A102714(n))` -/
def P7881542790166315684.Spec : Prop :=
  ∀ n, (P7881542790166315684.a n : ℤ) = A280699 (n + 1)

end A280699

