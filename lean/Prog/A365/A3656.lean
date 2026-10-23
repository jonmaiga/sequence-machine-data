import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
# A365600: Expansion of e.g.f. 1 / (1 - 4 * log(1 + x))^(3/4).

The programs for A365600, there is no canonical definition to state claims against.
-/

/-! ## A365600.P8774403993054464461

`A327254(A373857(n)+A343364(n))`
-/

namespace A365600.P8774403993054464461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327254 (A373857 n + A343364 n).toNat

end

end A365600.P8774403993054464461

/-!
# A365601: Expansion of e.g.f. 1 / (1 - 5 * log(1 + x))^(2/5).

The programs for A365601, there is no canonical definition to state claims against.
-/

/-! ## A365601.P5434112437542687210

`A319190(A227038(n))+A002275(n)`
-/

namespace A365601.P5434112437542687210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319190 (A227038 n).toNat + A002275 n

end

end A365601.P5434112437542687210

/-!
# A365603: Expansion of e.g.f. 1 / (1 - 5 * log(1 + x))^(4/5).

The programs for A365603, there is no canonical definition to state claims against.
-/

/-! ## A365603.P3131934201302548482

`A302696(A279843(n+1))-A060571(n+1)`
-/

namespace A365603.P3131934201302548482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302696 (A279843 (n + 1)).toNat - A060571 (n + 1)

end

end A365603.P3131934201302548482

/-!
# A365604: Expansion of e.g.f. 1 / (1 - 5 * log(1 + x)).

The programs for A365604, there is no canonical definition to state claims against.
-/

/-! ## A365604.P2289624313624080200

`A320080(A055999(n+3))`
-/

namespace A365604.P2289624313624080200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320080 (A055999 (n + 3)).toNat

end

end A365604.P2289624313624080200

/-! ## A365604.P14256853598992146139

`A320080(eq[5, A025581(n)])`
-/

namespace A365604.P14256853598992146139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320080 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A365604.P14256853598992146139

/-!
# A365605: Characteristic function of numbers without an inferior odd divisor > 1.

The programs for A365605, the canonical program `A365605.P6705090862699678483` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365605 has offset 1).

The definition of A365605 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365605.P6705090862699678483

`C(2, A097974(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A365605

/-- `C(2, A097974(n+1))` -/
def P6705090862699678483.Spec : Prop :=
  ∀ n, (P6705090862699678483.a n : ℤ) = A365605 (n + 1)

theorem P6705090862699678483.correct : P6705090862699678483.Spec := by
  intro n
  simp only [A365605, Nat.add_sub_cancel]

end A365605

/-! ## A365605.P2646081157035762743

`C(4, A098002(n+1))`
-/

namespace A365605.P2646081157035762743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 4 (A098002 (n + 1)).toNat

end

end A365605.P2646081157035762743

namespace A365605

/-- `C(4, A098002(n+1))` -/
def P2646081157035762743.Spec : Prop :=
  ∀ n, (P2646081157035762743.a n : ℤ) = A365605 (n + 1)

end A365605

/-! ## A365605.P11393207016447983238

`C(8, A347159(n+1))`
-/

namespace A365605.P11393207016447983238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 8 (A347159 (n + 1)).toNat

end

end A365605.P11393207016447983238

namespace A365605

/-- `C(8, A347159(n+1))` -/
def P11393207016447983238.Spec : Prop :=
  ∀ n, (P11393207016447983238.a n : ℤ) = A365605 (n + 1)

end A365605

/-! ## A365605.P7364424959131752532

`∏{d}[n+1, A365716(#)]`
-/

namespace A365605.P7364424959131752532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A365716 d

end

end A365605.P7364424959131752532

namespace A365605

/-- `∏{d}[n+1, A365716(#)]` -/
def P7364424959131752532.Spec : Prop :=
  ∀ n, P7364424959131752532.a n = A365605 (n + 1)

end A365605

/-! ## A365605.P6415792308163126207

`floor(1/A069288(n+1))`
-/

namespace A365605.P6415792308163126207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A069288 (n + 1) : ℚ)⌋

end

end A365605.P6415792308163126207

namespace A365605

/-- `floor(1/A069288(n+1))` -/
def P6415792308163126207.Spec : Prop :=
  ∀ n, P6415792308163126207.a n = A365605 (n + 1)

end A365605

/-! ## A365605.P1062414189702416785

`floor(1/A069289(n+1))`
-/

namespace A365605.P1062414189702416785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A069289 (n + 1) : ℚ)⌋

end

end A365605.P1062414189702416785

namespace A365605

/-- `floor(1/A069289(n+1))` -/
def P1062414189702416785.Spec : Prop :=
  ∀ n, P1062414189702416785.a n = A365605 (n + 1)

end A365605

/-! ## A365605.P4713415451394219702

`floor(1/A347173(n+1))`
-/

namespace A365605.P4713415451394219702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A347173 (n + 1) : ℚ)⌋

end

end A365605.P4713415451394219702

namespace A365605

/-- `floor(1/A347173(n+1))` -/
def P4713415451394219702.Spec : Prop :=
  ∀ n, P4713415451394219702.a n = A365605 (n + 1)

end A365605

/-! ## A365605.P4109614450772904960

`floor(1/A347175(n+1))`
-/

namespace A365605.P4109614450772904960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A347175 (n + 1) : ℚ)⌋

end

end A365605.P4109614450772904960

namespace A365605

/-- `floor(1/A347175(n+1))` -/
def P4109614450772904960.Spec : Prop :=
  ∀ n, P4109614450772904960.a n = A365605 (n + 1)

end A365605

/-! ## A365605.P12698902665195983405

`C(n+1, A340625(n+1))`
-/

namespace A365605.P12698902665195983405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A340625 (n + 1)).toNat

end

end A365605.P12698902665195983405

namespace A365605

/-- `C(n+1, A340625(n+1))` -/
def P12698902665195983405.Spec : Prop :=
  ∀ n, (P12698902665195983405.a n : ℤ) = A365605 (n + 1)

end A365605

/-! ## A365605.P2678862531855388726

`log2(ceil(2/A347174(n+1)))`
-/

namespace A365605.P2678862531855388726
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (⌈2 / (A347174 (n + 1) : ℚ)⌉ : ℝ)

end

end A365605.P2678862531855388726

namespace A365605

/-- `log2(ceil(2/A347174(n+1)))` -/
def P2678862531855388726.Spec : Prop :=
  ∀ n, P2678862531855388726.a n = (A365605 (n + 1) : ℝ)

end A365605

/-! ## A365605.P8252103618060268480

`A382983(A217581(n+1))`
-/

namespace A365605.P8252103618060268480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382983 (A217581 (n + 1)).toNat

end

end A365605.P8252103618060268480

namespace A365605

/-- `A382983(A217581(n+1))` -/
def P8252103618060268480.Spec : Prop :=
  ∀ n, P8252103618060268480.a n = A365605 (n + 1)

end A365605

/-! ## A365605.P11699955306030658177

`A000007(A069289(n+1)-1)`
-/

namespace A365605.P11699955306030658177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A069289 (n + 1) - 1).toNat

end

end A365605.P11699955306030658177

namespace A365605

/-- `A000007(A069289(n+1)-1)` -/
def P11699955306030658177.Spec : Prop :=
  ∀ n, P11699955306030658177.a n = A365605 (n + 1)

end A365605

/-! ## A365605.P17790264607268549256

`A000045(C(2, A069289(n+1)))`
-/

namespace A365605.P17790264607268549256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (A069289 (n + 1)).toNat)

end

end A365605.P17790264607268549256

namespace A365605

/-- `A000045(C(2, A069289(n+1)))` -/
def P17790264607268549256.Spec : Prop :=
  ∀ n, P17790264607268549256.a n = A365605 (n + 1)

end A365605

/-! ## A365605.P2429273842813963102

`A333752(n+1)%A073871(n+1)`
-/

namespace A365605.P2429273842813963102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333752 (n + 1)) (A073871 (n + 1))

end

end A365605.P2429273842813963102

namespace A365605

/-- `A333752(n+1)%A073871(n+1)` -/
def P2429273842813963102.Spec : Prop :=
  ∀ n, P2429273842813963102.a n = A365605 (n + 1)

end A365605

/-! ## A365605.P13647272539231581375

`and(A052125(n+1), A340371(n+1))`
-/

namespace A365605.P13647272539231581375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052125 (n + 1)) (A340371 (n + 1))

end

end A365605.P13647272539231581375

namespace A365605

/-- `and(A052125(n+1), A340371(n+1))` -/
def P13647272539231581375.Spec : Prop :=
  ∀ n, P13647272539231581375.a n = A365605 (n + 1)

end A365605

/-! ## A365605.P389118677632895378

`and(A066839(n+1), A340371(n+1))`
-/

namespace A365605.P389118677632895378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066839 (n + 1)) (A340371 (n + 1))

end

end A365605.P389118677632895378

namespace A365605

/-- `and(A066839(n+1), A340371(n+1))` -/
def P389118677632895378.Spec : Prop :=
  ∀ n, P389118677632895378.a n = A365605 (n + 1)

end A365605

/-! ## A365605.P13281782723810582969

`and(A069288(n+1), A340371(n+1))`
-/

namespace A365605.P13281782723810582969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069288 (n + 1)) (A340371 (n + 1))

end

end A365605.P13281782723810582969

namespace A365605

/-- `and(A069288(n+1), A340371(n+1))` -/
def P13281782723810582969.Spec : Prop :=
  ∀ n, P13281782723810582969.a n = A365605 (n + 1)

end A365605

/-! ## A365605.P14687031611711100696

`and(A069289(n+1), A340371(n+1))`
-/

namespace A365605.P14687031611711100696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069289 (n + 1)) (A340371 (n + 1))

end

end A365605.P14687031611711100696

namespace A365605

/-- `and(A069289(n+1), A340371(n+1))` -/
def P14687031611711100696.Spec : Prop :=
  ∀ n, P14687031611711100696.a n = A365605 (n + 1)

end A365605

/-! ## A365605.P2199472567843845603

`A365716(A064052(A069288(n+1))²)`
-/

namespace A365605.P2199472567843845603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365716 (A064052 (A069288 (n + 1)).toNat ^ 2).toNat

end

end A365605.P2199472567843845603

namespace A365605

/-- `A365716(A064052(A069288(n+1))²)` -/
def P2199472567843845603.Spec : Prop :=
  ∀ n, P2199472567843845603.a n = A365605 (n + 1)

end A365605

/-! ## A365605.P2574953364828391272

`A327940(A211261(A217581(n+1))²)`
-/

namespace A365605.P2574953364828391272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327940 (A211261 (A217581 (n + 1)).toNat ^ 2).toNat

end

end A365605.P2574953364828391272

namespace A365605

/-- `A327940(A211261(A217581(n+1))²)` -/
def P2574953364828391272.Spec : Prop :=
  ∀ n, P2574953364828391272.a n = A365605 (n + 1)

end A365605

/-!
# A365606: Number of degree 2 vertices in the n-Sierpinski carpet graph.

The programs for A365606, the canonical program `A365606.P601564546117692872` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365606 has offset 1).

The definition of A365606 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365606.P13545705229546385420

`8*a(n-1)-16*3^(n-1)-28` with `a(0)=8`
-/

namespace A365606.P13545705229546385420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [8] fun n a =>
  8 * a (n - 1) - 16 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 28

end

end A365606.P13545705229546385420

namespace A365606

/-- `8*a(n-1)-16*3^(n-1)-28` -/
def P13545705229546385420.Spec : Prop :=
  ∀ n, P13545705229546385420.a n = (A365606 (n + 1) : ℚ)

end A365606

/-! ## A365606.P601564546117692872

`A381517(n)+4`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A365606

/-- `A381517(n)+4` -/
def P601564546117692872.Spec : Prop :=
  ∀ n, P601564546117692872.a n = A365606 (n + 1)

theorem P601564546117692872.correct : P601564546117692872.Spec := by
  intro n
  simp only [A365606, Nat.add_sub_cancel]

end A365606

/-! ## A365606.P18165792887115922581

`1/10*8^(n+1)+16/15*3^(n+1)+4`
-/

namespace A365606.P18165792887115922581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 10 * (8 ^ (n + 1) : ℚ) + (16 : ℚ) / 15 * (3 ^ (n + 1) : ℚ) + 4

end

end A365606.P18165792887115922581

namespace A365606

/-- `1/10*8^(n+1)+16/15*3^(n+1)+4` -/
def P18165792887115922581.Spec : Prop :=
  ∀ n, P18165792887115922581.a n = (A365606 (n + 1) : ℚ)

end A365606

/-!
# A365607: Number of degree 3 vertices in the n-Sierpinski carpet graph.

The programs for A365607, the canonical program `A365607.P7732781160457333104` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365607 has offset 1).

The definition of A365607 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365607.P7732781160457333104

`8*a(n-1)-16*3^(n-1)+56` with `a(0)=0`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A365607

/-- `8*a(n-1)-16*3^(n-1)+56` -/
def P7732781160457333104.Spec : Prop :=
  ∀ n, P7732781160457333104.a n = (A365607 (n + 1) : ℚ)

end A365607

/-! ## A365607.P6064486377738908926

`3/5*8^(n+1)+16/15*3^(n+1)-8`
-/

namespace A365607.P6064486377738908926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 5 * (8 ^ (n + 1) : ℚ) + (16 : ℚ) / 15 * (3 ^ (n + 1) : ℚ) - 8

end

end A365607.P6064486377738908926

namespace A365607

/-- `3/5*8^(n+1)+16/15*3^(n+1)-8` -/
def P6064486377738908926.Spec : Prop :=
  ∀ n, P6064486377738908926.a n = (A365607 (n + 1) : ℚ)

end A365607

/-!
# A365608: Number of degree 4 vertices in the n-Sierpinski carpet graph.

The programs for A365608, the canonical program `A365608.P6483685431710606669` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365608 has offset 1).

The definition of A365608 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365608.P6483685431710606669

`8*a(n-1)+32*3^(n-1)-28` with `a(0)=0`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A365608

/-- `8*a(n-1)+32*3^(n-1)-28` -/
def P6483685431710606669.Spec : Prop :=
  ∀ n, P6483685431710606669.a n = (A365608 (n + 1) : ℚ)

end A365608

/-! ## A365608.P3326535376596888067

`3/10*8^(n+1)-32/15*3^(n+1)+4`
-/

namespace A365608.P3326535376596888067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 10 * (8 ^ (n + 1) : ℚ) - (32 : ℚ) / 15 * (3 ^ (n + 1) : ℚ) + 4

end

end A365608.P3326535376596888067

namespace A365608

/-- `3/10*8^(n+1)-32/15*3^(n+1)+4` -/
def P3326535376596888067.Spec : Prop :=
  ∀ n, P3326535376596888067.a n = (A365608 (n + 1) : ℚ)

end A365608

/-!
# A365612: Prime gaps: differences between consecutive primes, starting at 10^100000.

The programs for A365612, there is no canonical definition to state claims against.
-/

/-! ## A365612.P16915824078272828587

`Δ[A365611(n+1)]`
-/

namespace A365612.P16915824078272828587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A365612.P16915824078272828587

/-! ## A365612.P8055648532697030520

`A365611(n+2)-A365611(n+1)`
-/

namespace A365612.P8055648532697030520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365611 (n + 2) - A365611 (n + 1)

end

end A365612.P8055648532697030520

/-!
# A365613: a(n) = number of partitions p of n such that the greatest multiplicity of the parts of p is a part of p.

The programs for A365613, there is no canonical definition to state claims against.
-/

/-! ## A365613.P6579462474338927202

`A000041(n)-A365616(n)`
-/

namespace A365613.P6579462474338927202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A365616 n

end

end A365613.P6579462474338927202

/-! ## A365613.P6357893523678013311

`A213598(n)-A365616(n)`
-/

namespace A365613.P6357893523678013311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A365616 n

end

end A365613.P6357893523678013311

/-! ## A365613.P11775463888269614371

`∑[A002865(n)]-A365616(n)`
-/

namespace A365613.P11775463888269614371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A365616 n

end

end A365613.P11775463888269614371

/-! ## A365613.P238372805931569687

`A100824(2*n)-A365616(n)`
-/

namespace A365613.P238372805931569687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n) - A365616 n

end

end A365613.P238372805931569687

/-! ## A365613.P4936334974351688017

`A365614(n)+A365615(n)-A365616(n)`
-/

namespace A365613.P4936334974351688017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365614 n + (A365615 n - A365616 n)

end

end A365613.P4936334974351688017

/-!
# A365614: a(n) = number of partitions p of n such that the least multiplicity of the parts of p is a part of p.

The programs for A365614, there is no canonical definition to state claims against.
-/

/-! ## A365614.P15420986423377712121

`A000041(n)-A365615(n)`
-/

namespace A365614.P15420986423377712121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A365615 n

end

end A365614.P15420986423377712121

/-! ## A365614.P6682344792025575297

`A100824(2*n)-A365615(n)`
-/

namespace A365614.P6682344792025575297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n) - A365615 n

end

end A365614.P6682344792025575297

/-! ## A365614.P9469241268904826111

`A133041(n)-n-A365615(n)`
-/

namespace A365614.P9469241268904826111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (n : ℤ) - A365615 n

end

end A365614.P9469241268904826111

/-! ## A365614.P17952016963622124561

`∑[A085811(n+3)]-A365615(n)`
-/

namespace A365614.P17952016963622124561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A365615 n

end

end A365614.P17952016963622124561

/-! ## A365614.P9055759599938662558

`A365613(n)+A365616(n)-A365615(n)`
-/

namespace A365614.P9055759599938662558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365613 n + (A365616 n - A365615 n)

end

end A365614.P9055759599938662558

/-!
# A365615: a(n) = number of partitions p of n such that the least multiplicity of the parts of p is not a part of p.

The programs for A365615, there is no canonical definition to state claims against.
-/

/-! ## A365615.P3116836038526471162

`A000041(n)-A365614(n)`
-/

namespace A365615.P3116836038526471162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A365614 n

end

end A365615.P3116836038526471162

/-! ## A365615.P16797510448151535528

`A100824(2*n)-A365614(n)`
-/

namespace A365615.P16797510448151535528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n) - A365614 n

end

end A365615.P16797510448151535528

/-! ## A365615.P13458802382390266504

`A133041(n)-n-A365614(n)`
-/

namespace A365615.P13458802382390266504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (n : ℤ) - A365614 n

end

end A365615.P13458802382390266504

/-! ## A365615.P17683386434050670232

`∑[A085811(n+3)]-A365614(n)`
-/

namespace A365615.P17683386434050670232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A365614 n

end

end A365615.P17683386434050670232

/-! ## A365615.P16106236430992943259

`A365613(n)+A365616(n)-A365614(n)`
-/

namespace A365615.P16106236430992943259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365613 n + (A365616 n - A365614 n)

end

end A365615.P16106236430992943259

/-!
# A365616: a(n) = number of partitions p of n such that the greatest multiplicity of the parts of p is not a part of p.

The programs for A365616, there is no canonical definition to state claims against.
-/

/-! ## A365616.P8043305838255789001

`A000041(n)-A365613(n)`
-/

namespace A365616.P8043305838255789001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A365613 n

end

end A365616.P8043305838255789001

/-! ## A365616.P9744449365676785751

`A213598(n)-A365613(n)`
-/

namespace A365616.P9744449365676785751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A365613 n

end

end A365616.P9744449365676785751

/-! ## A365616.P668883446359835179

`A100824(2*n)-A365613(n)`
-/

namespace A365616.P668883446359835179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n) - A365613 n

end

end A365616.P668883446359835179

/-! ## A365616.P14385384531527533895

`A365614(n)+A365615(n)-A365613(n)`
-/

namespace A365616.P14385384531527533895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365614 n + (A365615 n - A365613 n)

end

end A365616.P14385384531527533895

/-!
# A365617: Iterated Pochhammer symbol.

The programs for A365617, there is no canonical definition to state claims against.
-/

/-! ## A365617.P238605938671383007

`A052762(a(n-1)-a(n-2)²%3+n)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A365617.P238605938671383007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A052762 (a (n - 1) - Int.tmod (a (n - 2) ^ 2) 3 + (n : ℤ)).toNat

end

end A365617.P238605938671383007

/-!
# A365618: Table read by antidiagonals: T(n, k) = A000120(n) + A000120(k).

The programs for A365618, the canonical program `A365618.P11364698970973671119` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365618 has offset 0).

The definition of A365618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365618.P11364698970973671119

`val(A067804(n), 2)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A365618

/-- `val(A067804(n), 2)` -/
def P11364698970973671119.Spec : Prop :=
  ∀ n, (P11364698970973671119.a n : ℤ) = A365618 n

theorem P11364698970973671119.correct : P11364698970973671119.Spec := by
  intro n
  simp only [A365618]

end A365618

/-! ## A365618.P13413962577945612630

`A000120(A085207(n))`
-/

namespace A365618.P13413962577945612630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A085207 n).toNat

end

end A365618.P13413962577945612630

namespace A365618

/-- `A000120(A085207(n))` -/
def P13413962577945612630.Spec : Prop :=
  ∀ n, P13413962577945612630.a n = A365618 n

end A365618

/-! ## A365618.P1572504116765542563

`A000120(A085208(n))`
-/

namespace A365618.P1572504116765542563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A085208 n).toNat

end

end A365618.P1572504116765542563

namespace A365618

/-- `A000120(A085208(n))` -/
def P1572504116765542563.Spec : Prop :=
  ∀ n, P1572504116765542563.a n = A365618 n

end A365618

/-! ## A365618.P3693519505338483978

`A000120(A341520(n))`
-/

namespace A365618.P3693519505338483978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A341520 n).toNat

end

end A365618.P3693519505338483978

namespace A365618

/-- `A000120(A341520(n))` -/
def P3693519505338483978.Spec : Prop :=
  ∀ n, P3693519505338483978.a n = A365618 n

end A365618

/-! ## A365618.P1970011303376958757

`A279891(n)-A077070(n)`
-/

namespace A365618.P1970011303376958757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 n - A077070 n

end

end A365618.P1970011303376958757

namespace A365618

/-- `A279891(n)-A077070(n)` -/
def P1970011303376958757.Spec : Prop :=
  ∀ n, P1970011303376958757.a n = A365618 n

end A365618

/-! ## A365618.P8845431138827314670

`A000120(A085211(n))`
-/

namespace A365618.P8845431138827314670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A085211 n).toNat

end

end A365618.P8845431138827314670

namespace A365618

/-- `A000120(A085211(n))` -/
def P8845431138827314670.Spec : Prop :=
  ∀ n, P8845431138827314670.a n = A365618 n

end A365618

/-! ## A365618.P5174197793758868374

`A000120(A085212(n))`
-/

namespace A365618.P5174197793758868374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A085212 n).toNat

end

end A365618.P5174197793758868374

namespace A365618

/-- `A000120(A085212(n))` -/
def P5174197793758868374.Spec : Prop :=
  ∀ n, P5174197793758868374.a n = A365618 n

end A365618

/-! ## A365618.P13787475891407925702

`A053735(A374560(n))`
-/

namespace A365618.P13787475891407925702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A374560 n).toNat

end

end A365618.P13787475891407925702

namespace A365618

/-- `A053735(A374560(n))` -/
def P13787475891407925702.Spec : Prop :=
  ∀ n, P13787475891407925702.a n = A365618 n

end A365618

/-! ## A365618.P7678528750856098745

`val(A356546(n), 2)`
-/

namespace A365618.P7678528750856098745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A356546 n).toNat 2

end

end A365618.P7678528750856098745

namespace A365618

/-- `val(A356546(n), 2)` -/
def P7678528750856098745.Spec : Prop :=
  ∀ n, (P7678528750856098745.a n : ℤ) = A365618 n

end A365618

/-! ## A365618.P13916429504756806028

`val(∑[char[∑[n]]]*A085880(n), 2)`
-/

namespace A365618.P13916429504756806028
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A085880 n).toNat 2

end

end A365618.P13916429504756806028

namespace A365618

/-- `val(∑[char[∑[n]]]*A085880(n), 2)` -/
def P13916429504756806028.Spec : Prop :=
  ∀ n, (P13916429504756806028.a n : ℤ) = A365618 n

end A365618

/-! ## A365618.P13893188726508522186

`A000120(A054238(n))`
-/

namespace A365618.P13893188726508522186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A054238 n).toNat

end

end A365618.P13893188726508522186

namespace A365618

/-- `A000120(A054238(n))` -/
def P13893188726508522186.Spec : Prop :=
  ∀ n, P13893188726508522186.a n = A365618 n

end A365618

/-! ## A365618.P7603481432106248032

`A000120(A346453(n))`
-/

namespace A365618.P7603481432106248032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A346453 n).toNat

end

end A365618.P7603481432106248032

namespace A365618

/-- `A000120(A346453(n))` -/
def P7603481432106248032.Spec : Prop :=
  ∀ n, P7603481432106248032.a n = A365618 n

end A365618

/-! ## A365618.P13636918305506094221

`A007895(A072793(n))`
-/

namespace A365618.P13636918305506094221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A072793 n).toNat

end

end A365618.P13636918305506094221

namespace A365618

/-- `A007895(A072793(n))` -/
def P13636918305506094221.Spec : Prop :=
  ∀ n, P13636918305506094221.a n = A365618 n

end A365618

/-! ## A365618.P15587607489447824569

`A286574(A089633(n))`
-/

namespace A365618.P15587607489447824569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286574 (A089633 n).toNat

end

end A365618.P15587607489447824569

namespace A365618

/-- `A286574(A089633(n))` -/
def P15587607489447824569.Spec : Prop :=
  ∀ n, P15587607489447824569.a n = A365618 n

end A365618

/-! ## A365618.P10797285908021179805

`A064547(A099884(n))`
-/

namespace A365618.P10797285908021179805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A099884 n).toNat

end

end A365618.P10797285908021179805

namespace A365618

/-- `A064547(A099884(n))` -/
def P10797285908021179805.Spec : Prop :=
  ∀ n, P10797285908021179805.a n = A365618 n

end A365618

/-! ## A365618.P17359662712592510369

`A064547(A276618(n))`
-/

namespace A365618.P17359662712592510369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A276618 n).toNat

end

end A365618.P17359662712592510369

namespace A365618

/-- `A064547(A276618(n))` -/
def P17359662712592510369.Spec : Prop :=
  ∀ n, P17359662712592510369.a n = A365618 n

end A365618

/-!
# A365620: Number of integer grid points on the circle around (0,0) with radius A088959(n).

The programs for A365620, there is no canonical definition to state claims against.
-/

/-! ## A365620.P3227601275774606283

`8*A088111(n+1)+4`
-/

namespace A365620.P3227601275774606283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A088111 (n + 1) + 4

end

end A365620.P3227601275774606283

/-! ## A365620.P10015249548330665435

`A017113(A088111(n+1))`
-/

namespace A365620.P10015249548330665435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (A088111 (n + 1)).toNat

end

end A365620.P10015249548330665435

/-! ## A365620.P17369563307625467502

`record[2*A361689(2*n+1)]`
-/

namespace A365620.P17369563307625467502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A361689 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A365620.P17369563307625467502

/-! ## A365620.P11024091742740621575

`record[4*A048691(2*n+1)]`
-/

namespace A365620.P11024091742740621575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A048691 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A365620.P11024091742740621575

/-! ## A365620.P10228731903330162456

`record[4*A307000(2*n+1)]`
-/

namespace A365620.P10228731903330162456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A307000 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A365620.P10228731903330162456

/-!
# A365623: T(n,k) is the number of parking functions of length n with cars parking at most k spots away from their preferred spot; square array T(n,k), n>=0, k>=0, read by downward antidiagonals.

The programs for A365623, there is no canonical definition to state claims against.
-/

/-! ## A365623.P12987181179315525643

`A111528(n)-A025469(A022345(n))`
-/

namespace A365623.P12987181179315525643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 n - A025469 (A022345 n).toNat

end

end A365623.P12987181179315525643

/-! ## A365623.P5949855049371018487

`A111528(n)-A051767(A028326(n))`
-/

namespace A365623.P5949855049371018487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 n - A051767 (A028326 n).toNat

end

end A365623.P5949855049371018487

/-! ## A365623.P7641132902624810024

`A111528(n)-A016389(A086645(n))`
-/

namespace A365623.P7641132902624810024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 n - A016389 (A086645 n).toNat

end

end A365623.P7641132902624810024

/-! ## A365623.P1872822369470343410

`A111528(n)-A025466(A154229(n))`
-/

namespace A365623.P1872822369470343410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 n - A025466 (A154229 n).toNat

end

end A365623.P1872822369470343410

/-! ## A365623.P11931769749197241212

`A111528(n)-A010894(A001263(n+1))`
-/

namespace A365623.P11931769749197241212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 n - A010894 ((A001263 (n + 1)).toNat + 21)

end

end A365623.P11931769749197241212

/-!
# A365624: a(n) is the length of the longest word w in the Thue-Morse sequence (A010060) in which every length-n factor of w is unique.

The programs for A365624, the canonical program `A365624.P4263340535415398689` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365624 has offset 1).

The definition of A365624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365624.P4263340535415398689

`A004762(n+2)+A053644(n)+A004762(n+2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A365624

/-- `A004762(n+2)+A053644(n)+A004762(n+2)` -/
def P4263340535415398689.Spec : Prop :=
  ∀ n, P4263340535415398689.a n = A365624 (n + 1)

theorem P4263340535415398689.correct : P4263340535415398689.Spec := by
  intro n
  simp only [A365624, Nat.add_sub_cancel]

end A365624

/-! ## A365624.P18011187797034257128

`A004765(A004762(2*n+3)+1)`
-/

namespace A365624.P18011187797034257128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004765 (A004762 (2 * n + 3) + 1).toNat

end

end A365624.P18011187797034257128

namespace A365624

/-- `A004765(A004762(2*n+3)+1)` -/
def P18011187797034257128.Spec : Prop :=
  ∀ n, P18011187797034257128.a n = A365624 (n + 1)

end A365624

/-! ## A365624.P16074367892940080820

`A371447(A276463(n)+2)`
-/

namespace A365624.P16074367892940080820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371447 (A276463 n + 2).toNat

end

end A365624.P16074367892940080820

namespace A365624

/-- `A371447(A276463(n)+2)` -/
def P16074367892940080820.Spec : Prop :=
  ∀ n, P16074367892940080820.a n = A365624 (n + 1)

end A365624

/-! ## A365624.P8918148034443487414

`A371447(2*(n+1))%A025323(A283043(n))`
-/

namespace A365624.P8918148034443487414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371447 (2 * (n + 1))) (A025323 (A283043 n).toNat)

end

end A365624.P8918148034443487414

namespace A365624

/-- `A371447(2*(n+1))%A025323(A283043(n))` -/
def P8918148034443487414.Spec : Prop :=
  ∀ n, P8918148034443487414.a n = A365624 (n + 1)

end A365624

/-! ## A365624.P17243790506375161650

`A371447(A100800(n+1))`
-/

namespace A365624.P17243790506375161650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371447 (A100800 (n + 1)).toNat

end

end A365624.P17243790506375161650

namespace A365624

/-- `A371447(A100800(n+1))` -/
def P17243790506375161650.Spec : Prop :=
  ∀ n, P17243790506375161650.a n = A365624 (n + 1)

end A365624

/-!
# A365626: Number of parking functions of length n with cars parking at most 3 spots away from their preferred spot.

The programs for A365626, there is no canonical definition to state claims against.
-/

/-! ## A365626.P5268497804182283099

`A365623(A000217(n+3)+n)`
-/

namespace A365626.P5268497804182283099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365623 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A365626.P5268497804182283099

/-! ## A365626.P5353092529382742522

`A365623(eq[A365605(n+1), A365644(n+3)])`
-/

namespace A365626.P5353092529382742522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365644 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365623 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A365626.P5353092529382742522

/-!
# A365628: a(n) = binomial(primorial(n), n).

The programs for A365628, there is no canonical definition to state claims against.
-/

/-! ## A365628.P3061762940995932067

`C(A002110(n), n)`
-/

namespace A365628.P3061762940995932067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002110 n).toNat n

end

end A365628.P3061762940995932067

/-! ## A365628.P1789141695948688871

`C(A233438(n), n)`
-/

namespace A365628.P1789141695948688871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A233438 n).toNat n

end

end A365628.P1789141695948688871

/-! ## A365628.P3826202703889472351

`C(A096334(∑[n]), n)`
-/

namespace A365628.P3826202703889472351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A096334 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat n

end

end A365628.P3826202703889472351

/-!
# A365632: The number of divisors of n that are terms of A072873.

The programs for A365632, the canonical program `A365632.P6636790932743859901` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365632 has offset 1).

The definition of A365632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365632.P6636790932743859901

`∑{d}[n+1, A359552(#)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A365632

/-- `∑{d}[n+1, A359552(#)]` -/
def P6636790932743859901.Spec : Prop :=
  ∀ n, P6636790932743859901.a n = A365632 (n + 1)

theorem P6636790932743859901.correct : P6636790932743859901.Spec := by
  intro n
  simp only [A365632, Nat.add_sub_cancel]

end A365632

/-! ## A365632.P11209713098716603230

`A000005(A342007(n+1))`
-/

namespace A365632.P11209713098716603230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A342007 (n + 1)).toNat

end

end A365632.P11209713098716603230

namespace A365632

/-- `A000005(A342007(n+1))` -/
def P11209713098716603230.Spec : Prop :=
  ∀ n, P11209713098716603230.a n = A365632 (n + 1)

end A365632

/-! ## A365632.P14921383703897910075

`A046951(A342007(n+1)²)`
-/

namespace A365632.P14921383703897910075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A342007 (n + 1) ^ 2).toNat

end

end A365632.P14921383703897910075

namespace A365632

/-- `A046951(A342007(n+1)²)` -/
def P14921383703897910075.Spec : Prop :=
  ∀ n, P14921383703897910075.a n = A365632 (n + 1)

end A365632

/-! ## A365632.P491510803259807922

`∑{d}[n+1, A000005(#)*A359551((n+1)/#)]`
-/

namespace A365632.P491510803259807922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A359551 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365632.P491510803259807922

namespace A365632

/-- `∑{d}[n+1, A000005(#)*A359551((n+1)/#)]` -/
def P491510803259807922.Spec : Prop :=
  ∀ n, P491510803259807922.a n = A365632 (n + 1)

end A365632

/-! ## A365632.P2210282252257666366

`A305149(2^A342007(n+1))`
-/

namespace A365632.P2210282252257666366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305149 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A342007 (n + 1) : ℤ))).toNat

end

end A365632.P2210282252257666366

namespace A365632

/-- `A305149(2^A342007(n+1))` -/
def P2210282252257666366.Spec : Prop :=
  ∀ n, P2210282252257666366.a n = A365632 (n + 1)

end A365632

/-! ## A365632.P14756966680227053378

`A325837(2*n+2)+A019590(A045715(n+4))`
-/

namespace A365632.P14756966680227053378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325837 (2 * n + 2) + A019590 (A045715 (n + 4)).toNat

end

end A365632.P14756966680227053378

namespace A365632

/-- `A325837(2*n+2)+A019590(A045715(n+4))` -/
def P14756966680227053378.Spec : Prop :=
  ∀ n, P14756966680227053378.a n = A365632 (n + 1)

end A365632

/-! ## A365632.P17117532647783973584

`A061704(A087687(n+1))`
-/

namespace A365632.P17117532647783973584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 (A087687 (n + 1)).toNat

end

end A365632.P17117532647783973584

namespace A365632

/-- `A061704(A087687(n+1))` -/
def P17117532647783973584.Spec : Prop :=
  ∀ n, P17117532647783973584.a n = A365632 (n + 1)

end A365632

/-! ## A365632.P2216234970426435813

`A325837(A020337(n+1))`
-/

namespace A365632.P2216234970426435813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325837 (A020337 (n + 1)).toNat

end

end A365632.P2216234970426435813

namespace A365632

/-- `A325837(A020337(n+1))` -/
def P2216234970426435813.Spec : Prop :=
  ∀ n, P2216234970426435813.a n = A365632 (n + 1)

end A365632

/-! ## A365632.P11970459434783584611

`A063775(A203639(n+1)²)`
-/

namespace A365632.P11970459434783584611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063775 (A203639 (n + 1) ^ 2).toNat

end

end A365632.P11970459434783584611

namespace A365632

/-- `A063775(A203639(n+1)²)` -/
def P11970459434783584611.Spec : Prop :=
  ∀ n, P11970459434783584611.a n = A365632 (n + 1)

end A365632

/-! ## A365632.P3930354180903554959

`A244415(A244416(2*(n+1)))`
-/

namespace A365632.P3930354180903554959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (A244416 (2 * (n + 1))).toNat

end

end A365632.P3930354180903554959

namespace A365632

/-- `A244415(A244416(2*(n+1)))` -/
def P3930354180903554959.Spec : Prop :=
  ∀ n, P3930354180903554959.a n = A365632 (n + 1)

end A365632

/-!
# A365633: The sum of divisors of n that are terms of A072873.

The programs for A365633, the canonical program `A365633.P7140313679729895633` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365633 has offset 1).

The definition of A365633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365633.P7140313679729895633

`∑{d}[A342007(n+1), #]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A365633

/-- `∑{d}[A342007(n+1), #]` -/
def P7140313679729895633.Spec : Prop :=
  ∀ n, (P7140313679729895633.a n : ℤ) = A365633 (n + 1)

theorem P7140313679729895633.correct : P7140313679729895633.Spec := by
  intro n
  simp only [A365633, Nat.add_sub_cancel]

end A365633

/-! ## A365633.P14617637699909382435

`A000203(A342007(n+1))`
-/

namespace A365633.P14617637699909382435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A342007 (n + 1)).toNat

end

end A365633.P14617637699909382435

namespace A365633

/-- `A000203(A342007(n+1))` -/
def P14617637699909382435.Spec : Prop :=
  ∀ n, P14617637699909382435.a n = A365633 (n + 1)

end A365633

/-! ## A365633.P4947473621276954185

`A167430(A327939(n+1))`
-/

namespace A365633.P4947473621276954185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167430 (A327939 (n + 1)).toNat

end

end A365633.P4947473621276954185

namespace A365633

/-- `A167430(A327939(n+1))` -/
def P4947473621276954185.Spec : Prop :=
  ∀ n, P4947473621276954185.a n = A365633 (n + 1)

end A365633

/-! ## A365633.P11763636237763720289

`A333844(A085731(n+1)²)`
-/

namespace A365633.P11763636237763720289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333844 (A085731 (n + 1) ^ 2).toNat

end

end A365633.P11763636237763720289

namespace A365633

/-- `A333844(A085731(n+1)²)` -/
def P11763636237763720289.Spec : Prop :=
  ∀ n, P11763636237763720289.a n = A365633 (n + 1)

end A365633

/-! ## A365633.P2474052691252588082

`A069290(A039654(n+2)*A085731(n+1))`
-/

namespace A365633.P2474052691252588082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A039654 (n + 2) * A085731 (n + 1)).toNat

end

end A365633.P2474052691252588082

namespace A365633

/-- `A069290(A039654(n+2)*A085731(n+1))` -/
def P2474052691252588082.Spec : Prop :=
  ∀ n, P2474052691252588082.a n = A365633 (n + 1)

end A365633

/-! ## A365633.P8395914852136355367

`A333843(A087687(n+1))`
-/

namespace A365633.P8395914852136355367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333843 (A087687 (n + 1)).toNat

end

end A365633.P8395914852136355367

namespace A365633

/-- `A333843(A087687(n+1))` -/
def P8395914852136355367.Spec : Prop :=
  ∀ n, P8395914852136355367.a n = A365633 (n + 1)

end A365633

/-! ## A365633.P13053857435194093913

`A333844(A203639(n+1)²)`
-/

namespace A365633.P13053857435194093913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333844 (A203639 (n + 1) ^ 2).toNat

end

end A365633.P13053857435194093913

namespace A365633

/-- `A333844(A203639(n+1)²)` -/
def P13053857435194093913.Spec : Prop :=
  ∀ n, P13053857435194093913.a n = A365633 (n + 1)

end A365633

/-! ## A365633.P6039798178622769193

`A318513(5^A342007(n+1))`
-/

namespace A365633.P6039798178622769193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318513 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A342007 (n + 1) : ℤ))).toNat

end

end A365633.P6039798178622769193

namespace A365633

/-- `A318513(5^A342007(n+1))` -/
def P6039798178622769193.Spec : Prop :=
  ∀ n, P6039798178622769193.a n = A365633 (n + 1)

end A365633

/-! ## A365633.P6654702183702381592

`A333844((n+1)*A203639(n+1))`
-/

namespace A365633.P6654702183702381592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333844 ((n + 1 : ℤ) * A203639 (n + 1)).toNat

end

end A365633.P6654702183702381592

namespace A365633

/-- `A333844((n+1)*A203639(n+1))` -/
def P6654702183702381592.Spec : Prop :=
  ∀ n, P6654702183702381592.a n = A365633 (n + 1)

end A365633

/-! ## A365633.P1865502125114973421

`A333843(A145109(n+1))`
-/

namespace A365633.P1865502125114973421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333843 (A145109 (n + 1)).toNat

end

end A365633.P1865502125114973421

namespace A365633

/-- `A333843(A145109(n+1))` -/
def P1865502125114973421.Spec : Prop :=
  ∀ n, P1865502125114973421.a n = A365633 (n + 1)

end A365633

/-!
# A365634: The number of divisors of n that are terms of A048102.

The programs for A365634, there is no canonical definition to state claims against.
-/

/-! ## A365634.P7362081423024693859

`2^A369426(n+1)`
-/

namespace A365634.P7362081423024693859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A369426 (n + 1) : ℤ)

end

end A365634.P7362081423024693859

/-! ## A365634.P15026124457377415006

`A368334(n+1)/A368330(n+1)`
-/

namespace A365634.P15026124457377415006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368334 (n + 1) : ℚ) / (A368330 (n + 1) : ℚ)

end

end A365634.P15026124457377415006

/-! ## A365634.P5677410726699932705

`A034444(A327939(n+1))/A368330(n+1)`
-/

namespace A365634.P5677410726699932705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (A327939 (n + 1)).toNat : ℚ) / (A368330 (n + 1) : ℚ)

end

end A365634.P5677410726699932705

/-! ## A365634.P12589516443753083714

`A034444(A368333(n+1))/A368330(n+1)`
-/

namespace A365634.P12589516443753083714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (A368333 (n + 1)).toNat : ℚ) / (A368330 (n + 1) : ℚ)

end

end A365634.P12589516443753083714

/-! ## A365634.P17324378681731386875

`2^A276935(A003961(n+1))`
-/

namespace A365634.P17324378681731386875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A276935 (A003961 (n + 1)).toNat : ℤ)

end

end A365634.P17324378681731386875

/-! ## A365634.P1345024665843633481

`A369426(n+1)+A056595(A124661(n+1))`
-/

namespace A365634.P1345024665843633481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369426 (n + 1) + A056595 (A124661 (n + 1)).toNat

end

end A365634.P1345024665843633481

/-! ## A365634.P16334005485429909334

`A369426(n+1)+A020985(A137688(n))`
-/

namespace A365634.P16334005485429909334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369426 (n + 1) + A020985 (A137688 n).toNat

end

end A365634.P16334005485429909334

/-! ## A365634.P12744847228446888523

`A369426(n+1)+A060680(A014574(2*(n+1)))`
-/

namespace A365634.P12744847228446888523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369426 (n + 1) + A060680 (A014574 (2 * (n + 1))).toNat

end

end A365634.P12744847228446888523

/-! ## A365634.P9180165148819283233

`A056671(A366423(n+1))`
-/

namespace A365634.P9180165148819283233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (A366423 (n + 1)).toNat

end

end A365634.P9180165148819283233

/-! ## A365634.P14495373604413748752

`A054977(A203908(n+1)²)`
-/

namespace A365634.P14495373604413748752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A203908 (n + 1) ^ 2).toNat

end

end A365634.P14495373604413748752

/-! ## A365634.P8498312638303874619

`A000007(A203908(n+1)²)+1`
-/

namespace A365634.P8498312638303874619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A203908 (n + 1) ^ 2).toNat + 1

end

end A365634.P8498312638303874619

/-!
# A365635: The largest divisor of n that is a term of A048102.

The programs for A365635, there is no canonical definition to state claims against.
-/

/-! ## A365635.P12358127568365736110

`A377518(A327939(n+1))`
-/

namespace A365635.P12358127568365736110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377518 (A327939 (n + 1)).toNat

end

end A365635.P12358127568365736110

/-! ## A365635.P15935590926826239519

`A377518(A368333(n+1))`
-/

namespace A365635.P15935590926826239519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377518 (A368333 (n + 1)).toNat

end

end A365635.P15935590926826239519

/-! ## A365635.P18343589632620946532

`∏{p}[A327939(n+1), A000312(#)]`
-/

namespace A365635.P18343589632620946532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000312 p

end

end A365635.P18343589632620946532

/-! ## A365635.P15419344477680701061

`A190125(∏{p}[A327939(n+1), #])`
-/

namespace A365635.P15419344477680701061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190125 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A365635.P15419344477680701061

/-! ## A365635.P16505255181103725955

`A377518((n+1)/A327938(n+1))`
-/

namespace A365635.P16505255181103725955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377518 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A327938 (n + 1) : ℚ))).toNat

end

end A365635.P16505255181103725955

/-! ## A365635.P12593370220704535186

`A327939(A327936(n+1)*A327937(n+1))`
-/

namespace A365635.P12593370220704535186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327939 (A327936 (n + 1) * A327937 (n + 1)).toNat

end

end A365635.P12593370220704535186

/-! ## A365635.P13636308034176221085

`A327939(A327937(A327939(n+1))²)`
-/

namespace A365635.P13636308034176221085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327939 (A327937 (A327939 (n + 1)).toNat ^ 2).toNat

end

end A365635.P13636308034176221085

/-! ## A365635.P7318194593280573247

`gcd(A052156(n), A327939(n+1))`
-/

namespace A365635.P7318194593280573247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052156 n) (A327939 (n + 1))

end

end A365635.P7318194593280573247

/-! ## A365635.P7864543481671046615

`gcd(A156605(n), A368333(n+1))`
-/

namespace A365635.P7864543481671046615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156605 n) (A368333 (n + 1))

end

end A365635.P7864543481671046615

/-!
# A365636: a(n) is the smallest multiple of n that is a term of A072873.

The programs for A365636, there is no canonical definition to state claims against.
-/

/-! ## A365636.P5553500657552441444

`(n+1)*A365637(n+1)`
-/

namespace A365636.P5553500657552441444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A365637 (n + 1)

end

end A365636.P5553500657552441444

/-! ## A365636.P5853251931518294678

`A112622(A074736(n+1))/A365635(A330740(3*(n+1)))`
-/

namespace A365636.P5853251931518294678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112622 (A074736 (n + 1)).toNat : ℚ) / (A365635 (A330740 (3 * (n + 1))).toNat : ℚ)

end

end A365636.P5853251931518294678

/-! ## A365636.P10644126503301305913

`∏{p}[(n+1)^7, #^#]`
-/

namespace A365636.P10644126503301305913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p ^ p

end

end A365636.P10644126503301305913

/-!
# A365637: a(n) is the smallest number k such that k*n is a term of A072873.

The programs for A365637, there is no canonical definition to state claims against.
-/

/-! ## A365637.P5882239265892079520

`A365636(n+1)/(n+1)`
-/

namespace A365637.P5882239265892079520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365636 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A365637.P5882239265892079520

/-! ## A365637.P762627388617304669

`∏{p}[(n+1)^7, #^#]/A056192(n+1)`
-/

namespace A365637.P762627388617304669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p ^ p : ℕ) : ℚ) / (A056192 (n + 1) : ℚ)

end

end A365637.P762627388617304669

/-! ## A365637.P1922836654553731913

`∏{p}[(n+1)^7, #^#]/A085153(n+1)`
-/

namespace A365637.P1922836654553731913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p ^ p : ℕ) : ℚ) / (A085153 (n + 1) : ℚ)

end

end A365637.P1922836654553731913

/-!
# A365638: Triangular array read by rows: T(n, k) is the number of ways that a k-element transitive tournament can occur as a subtournament of a larger tournament on n labeled vertices.

The programs for A365638, there is no canonical definition to state claims against.
-/

/-! ## A365638.P11940774766846387605

`A008279(n)*A117260(n)`
-/

namespace A365638.P11940774766846387605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A117260 n

end

end A365638.P11940774766846387605

/-! ## A365638.P15545481231717772021

`A233543(n)*A277219(n)`
-/

namespace A365638.P15545481231717772021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n * A277219 n

end

end A365638.P15545481231717772021

/-! ## A365638.P3358677805487715910

`sqrt(A007318(n)*A134484(n))*A233543(n)`
-/

namespace A365638.P3358677805487715910
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A007318 n * A134484 n : ℝ) * (A233543 n : ℝ)

end

end A365638.P3358677805487715910

/-! ## A365638.P10438004791402397547

`A134361(A058942(n+1))`
-/

namespace A365638.P10438004791402397547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134361 (A058942 (n + 1)).toNat

end

end A365638.P10438004791402397547

/-!
# A365640: Prime powers of the form 2^k + 1.

The programs for A365640, there is no canonical definition to state claims against.
-/

/-! ## A365640.P11208088518486499986

`ceil(sqrt(A350142(n+1)))`
-/

namespace A365640.P11208088518486499986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A350142 (n + 1) : ℝ)⌉

end

end A365640.P11208088518486499986

/-! ## A365640.P1667641363010650213

`2^A339973(n+1)+1`
-/

namespace A365640.P1667641363010650213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A339973 (n + 1) : ℤ) + 1

end

end A365640.P1667641363010650213

/-! ## A365640.P14423681315546468698

`filter[2^n+1, A302777(#)]`
-/

namespace A365640.P14423681315546468698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j) = 1) n)

end

end A365640.P14423681315546468698

/-!
# A365641: The minimum number of ways to label each triangle of a triangulation of an n-gon with one of its vertices so that different triangles get different labels (minimum taken over all triangulations).

The programs for A365641, there is no canonical definition to state claims against.
-/

/-! ## A365641.P8178539168087573689

`∑[∑[A110161(A240614(n)+n)+n]]`
-/

namespace A365641.P8178539168087573689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110161 (A240614 n + (n : ℤ)).toNat + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365641.P8178539168087573689

/-! ## A365641.P14583069212390526940

`A051889(A079671(n+1))`
-/

namespace A365641.P14583069212390526940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A079671 (n + 1)).toNat

end

end A365641.P14583069212390526940

/-! ## A365641.P8053796025891885147

`A261104(A213283(n+1))`
-/

namespace A365641.P8053796025891885147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A213283 (n + 1)).toNat

end

end A365641.P8053796025891885147

/-! ## A365641.P9651427591191599634

`∑[∑[A072789(A369472(n+1))]]`
-/

namespace A365641.P9651427591191599634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072789 (A369472 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365641.P9651427591191599634

/-!
# A365643: Number of permutations whose reverse-complement shares the same recording tableau in the Robinson-Schensted correspondence.

The programs for A365643, there is no canonical definition to state claims against.
-/

/-! ## A365643.P13772137839337069207

`A276064(2*A339587(n+4))`
-/

namespace A365643.P13772137839337069207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276064 (2 * A339587 (n + 4)).toNat

end

end A365643.P13772137839337069207

/-! ## A365643.P18427191894884262650

`A271778(A135903(n))*A271778(n)`
-/

namespace A365643.P18427191894884262650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271778 (A135903 n).toNat * A271778 n

end

end A365643.P18427191894884262650

/-! ## A365643.P11394526943277048539

`and(A028260(A005651(n)), A137782(n))`
-/

namespace A365643.P11394526943277048539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028260 (A005651 n).toNat) (A137782 n)

end

end A365643.P11394526943277048539

/-!
# A365644: Array read by ascending antidiagonals: A(n, k) = k*(10^n - 1)/9 with k >= 0.

The programs for A365644, there is no canonical definition to state claims against.
-/

/-! ## A365644.P6002798064920239279

`A056967(A385623(n))`
-/

namespace A365644.P6002798064920239279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056967 (A385623 n).toNat

end

end A365644.P6002798064920239279

/-! ## A365644.P5978564704681093518

`A002262(n)*A002275(A025581(n))`
-/

namespace A365644.P5978564704681093518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A002275 (A025581 n).toNat

end

end A365644.P5978564704681093518

/-! ## A365644.P5569616853180260262

`A002262(n)*A002275(log2(A130321(n)))`
-/

namespace A365644.P5569616853180260262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A002275 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat

end

end A365644.P5569616853180260262

/-! ## A365644.P12168207549029847297

`A002262(n)*A002275(A025677(n+1))`
-/

namespace A365644.P12168207549029847297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A002275 (A025677 (n + 1)).toNat

end

end A365644.P12168207549029847297

/-! ## A365644.P12858062566076795971

`A002275(A025581(n))*A128138(n+1)`
-/

namespace A365644.P12858062566076795971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A025581 n).toNat * A128138 (n + 1)

end

end A365644.P12858062566076795971

/-! ## A365644.P1850111723328977922

`A002262(n)*A002275(val(A054582(n), 2))`
-/

namespace A365644.P1850111723328977922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A002275 (SequenceMachineLib.valuation (A054582 n).toNat 2)

end

end A365644.P1850111723328977922

/-! ## A365644.P7705391461807099466

`A002262(n)*A002275(val(A153279(n), 2))`
-/

namespace A365644.P7705391461807099466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A002275 (SequenceMachineLib.valuation (A153279 n).toNat 2)

end

end A365644.P7705391461807099466

/-! ## A365644.P15981782808840026642

`val(A130328(n), 2)*A002275(A025581(n))`
-/

namespace A365644.P15981782808840026642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A130328 n).toNat 2 : ℤ) * A002275 (A025581 n).toNat

end

end A365644.P15981782808840026642

/-! ## A365644.P7911152760763343269

`val(A247936(n), 2)*A002275(A025581(n))`
-/

namespace A365644.P7911152760763343269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A247936 n).toNat 2 : ℤ) * A002275 (A025581 n).toNat

end

end A365644.P7911152760763343269

/-! ## A365644.P1603871023661209815

`A002262(n)*A002275(val(A120027(n), 3))`
-/

namespace A365644.P1603871023661209815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A002275 (SequenceMachineLib.valuation (A120027 n).toNat 3)

end

end A365644.P1603871023661209815

/-!
# A365645: a(n) = n*(1 + n)*(10^n - 1)/18.

The programs for A365645, the canonical program `A365645.P3735307995772780477` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365645 has offset 0).

The definition of A365645 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365645.P3735307995772780477

`A000217(n)*A002275(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A365645

/-- `A000217(n)*A002275(n)` -/
def P3735307995772780477.Spec : Prop :=
  ∀ n, P3735307995772780477.a n = A365645 n

theorem P3735307995772780477.correct : P3735307995772780477.Spec := by
  intro n
  simp only [A365645]

end A365645

/-! ## A365645.P7865394903837248973

`n*(1+n)*(10^n-1)/18`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A365645.P7865394903837248973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (1 + n) : ℤ) * ((10 ^ n : ℤ) - 1) : ℚ) / 18

end

end A365645.P7865394903837248973

namespace A365645

/-- `n*(1+n)*(10^n-1)/18` -/
def P7865394903837248973.Spec : Prop :=
  ∀ n, P7865394903837248973.a n = (A365645 n : ℚ)

end A365645

/-! ## A365645.P18185635070003109963

`abs((A047855(n)-1)*A000217(n))`
-/

namespace A365645.P18185635070003109963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A047855 n - 1) * A000217 n|

end

end A365645.P18185635070003109963

namespace A365645

/-- `abs((A047855(n)-1)*A000217(n))` -/
def P18185635070003109963.Spec : Prop :=
  ∀ n, P18185635070003109963.a n = A365645 n

end A365645

/-! ## A365645.P14006086955655341682

`floor(A002276(n)/2*A000217(n))`
-/

namespace A365645.P14006086955655341682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002276 n : ℚ) / 2 * (A000217 n : ℚ)⌋

end

end A365645.P14006086955655341682

namespace A365645

/-- `floor(A002276(n)/2*A000217(n))` -/
def P14006086955655341682.Spec : Prop :=
  ∀ n, P14006086955655341682.a n = A365645 n

end A365645

/-!
# A365646: a(n) is the permanent of the n X n matrix M(n) whose generic M[i, j] = j*(10^i - 1)/9 with 1 <= i, j <= n.

The programs for A365646, there is no canonical definition to state claims against.
-/

/-! ## A365646.P1875714926489541527

`A000142(n)²*A015009(n)`
-/

namespace A365646.P1875714926489541527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n ^ 2 * A015009 n

end

end A365646.P1875714926489541527

/-!
# A365647: Dirichlet convolution of Dedekind psi function with reduced totient function.

The programs for A365647, there is no canonical definition to state claims against.
-/

/-! ## A365647.P12270712710008358412

`∑{d}[n+1, A001615(#)*A002322((n+1)/#)]`
-/

namespace A365647.P12270712710008358412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A002322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365647.P12270712710008358412

/-! ## A365647.P7516583815094158587

`∑{d}[n+1, A063659(#)*A141258((n+1)/#)]`
-/

namespace A365647.P7516583815094158587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A141258 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365647.P7516583815094158587

/-! ## A365647.P15546140551614048922

`∑{d}[n+1, A008966(#)*A331314((n+1)/#)]`
-/

namespace A365647.P15546140551614048922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A331314 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365647.P15546140551614048922

/-! ## A365647.P3088345449702789470

`∑{d}[n+1, A034444(#)*A369601((n+1)/#)]`
-/

namespace A365647.P3088345449702789470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A369601 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365647.P3088345449702789470

/-! ## A365647.P9460417229668840114

`∑{d}[n+1, A060648(#)*A369700((n+1)/#)]`
-/

namespace A365647.P9460417229668840114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060648 d * A369700 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365647.P9460417229668840114

/-! ## A365647.P13014049634963483767

`∑{d}[n+1, A271102(#)*A365648((n+1)/#)]`
-/

namespace A365647.P13014049634963483767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A365648 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365647.P13014049634963483767

/-!
# A365648: Dirichlet convolution of sigma with reduced totient function.

The programs for A365648, there is no canonical definition to state claims against.
-/

/-! ## A365648.P11494088705859572851

`∑{d}[n+1, A331314(#)]`
-/

namespace A365648.P11494088705859572851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A331314 d

end

end A365648.P11494088705859572851

/-! ## A365648.P15762547929778694347

`∑{d}[n+1, #*A141258((n+1)/#)]`
-/

namespace A365648.P15762547929778694347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A141258 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365648.P15762547929778694347

/-! ## A365648.P6947770262779720469

`∑{d}[n+1, A000203(#)*A002322((n+1)/#)]`
-/

namespace A365648.P6947770262779720469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A002322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365648.P6947770262779720469

/-! ## A365648.P18244349092609569400

`∑{d}[n+1, A000005(#)*A369601((n+1)/#)]`
-/

namespace A365648.P18244349092609569400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A369601 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365648.P18244349092609569400

/-! ## A365648.P7046732191285201373

`∑{d}[n+1, A007429(#)*A369700((n+1)/#)]`
-/

namespace A365648.P7046732191285201373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A369700 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365648.P7046732191285201373

/-!
# A365649: Dirichlet convolution of sigma with Dedekind psi function.

The programs for A365649, the canonical program `A365649.P18263235050208563119` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365649 has offset 1).

The definition of A365649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365649.P18174531811123076999

`∑{d}[n+1, A327251(#)]`
-/

namespace A365649.P18174531811123076999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327251 d

end

end A365649.P18174531811123076999

namespace A365649

/-- `∑{d}[n+1, A327251(#)]` -/
def P18174531811123076999.Spec : Prop :=
  ∀ n, P18174531811123076999.a n = A365649 (n + 1)

end A365649

/-! ## A365649.P863590181763530553

`∑{d}[n+1, #*A060648((n+1)/#)]`
-/

namespace A365649.P863590181763530553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A060648 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365649.P863590181763530553

namespace A365649

/-- `∑{d}[n+1, #*A060648((n+1)/#)]` -/
def P863590181763530553.Spec : Prop :=
  ∀ n, P863590181763530553.a n = A365649 (n + 1)

end A365649

/-! ## A365649.P6098186514315027940

`∑{d}[n+1, A000203(#)*A001615((n+1)/#)]`
-/

namespace A365649.P6098186514315027940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A001615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365649.P6098186514315027940

namespace A365649

/-- `∑{d}[n+1, A000203(#)*A001615((n+1)/#)]` -/
def P6098186514315027940.Spec : Prop :=
  ∀ n, P6098186514315027940.a n = A365649 (n + 1)

end A365649

/-! ## A365649.P6877491429796118452

`∑{d}[n+1, A000010(#)*A060724((n+1)/#)]`
-/

namespace A365649.P6877491429796118452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A060724 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365649.P6877491429796118452

namespace A365649

/-- `∑{d}[n+1, A000010(#)*A060724((n+1)/#)]` -/
def P6877491429796118452.Spec : Prop :=
  ∀ n, P6877491429796118452.a n = A365649 (n + 1)

end A365649

/-! ## A365649.P9095730256419513165

`∑{d}[n+1, A029935(#)*A035116((n+1)/#)]`
-/

namespace A365649.P9095730256419513165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A035116 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365649.P9095730256419513165

namespace A365649

/-- `∑{d}[n+1, A029935(#)*A035116((n+1)/#)]` -/
def P9095730256419513165.Spec : Prop :=
  ∀ n, P9095730256419513165.a n = A365649 (n + 1)

end A365649

/-! ## A365649.P8655889988063737393

`∑{d}[n+1, A018804(#)*A048691((n+1)/#)]`
-/

namespace A365649.P8655889988063737393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A048691 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365649.P8655889988063737393

namespace A365649

/-- `∑{d}[n+1, A018804(#)*A048691((n+1)/#)]` -/
def P8655889988063737393.Spec : Prop :=
  ∀ n, P8655889988063737393.a n = A365649 (n + 1)

end A365649

/-! ## A365649.P17663120160265483129

`∑{d}[n+1, A008966(#)*A060640((n+1)/#)]`
-/

namespace A365649.P17663120160265483129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A060640 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365649.P17663120160265483129

namespace A365649

/-- `∑{d}[n+1, A008966(#)*A060640((n+1)/#)]` -/
def P17663120160265483129.Spec : Prop :=
  ∀ n, P17663120160265483129.a n = A365649 (n + 1)

end A365649

/-! ## A365649.P185137318458242805

`∑{d}[n+1, A007429(#)*A063659((n+1)/#)]`
-/

namespace A365649.P185137318458242805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A063659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365649.P185137318458242805

namespace A365649

/-- `∑{d}[n+1, A007429(#)*A063659((n+1)/#)]` -/
def P185137318458242805.Spec : Prop :=
  ∀ n, P185137318458242805.a n = A365649 (n + 1)

end A365649

/-! ## A365649.P4976437127416837238

`∑{d}[n+1, A034444(#)*A038040((n+1)/#)]`
-/

namespace A365649.P4976437127416837238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A038040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365649.P4976437127416837238

namespace A365649

/-- `∑{d}[n+1, A034444(#)*A038040((n+1)/#)]` -/
def P4976437127416837238.Spec : Prop :=
  ∀ n, P4976437127416837238.a n = A365649 (n + 1)

end A365649

/-! ## A365649.P10564292139838579136

`∑{d}[n+1, A007430(#)*A130107((n+1)/#)]`
-/

namespace A365649.P10564292139838579136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007430 d * A130107 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365649.P10564292139838579136

namespace A365649

/-- `∑{d}[n+1, A007430(#)*A130107((n+1)/#)]` -/
def P10564292139838579136.Spec : Prop :=
  ∀ n, P10564292139838579136.a n = A365649 (n + 1)

end A365649

/-! ## A365649.P9135061672116321324

`∑{d}[n+1, A062367(#)*A143275((n+1)/#)]`
-/

namespace A365649.P9135061672116321324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062367 d * A143275 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365649.P9135061672116321324

namespace A365649

/-- `∑{d}[n+1, A062367(#)*A143275((n+1)/#)]` -/
def P9135061672116321324.Spec : Prop :=
  ∀ n, P9135061672116321324.a n = A365649 (n + 1)

end A365649

/-! ## A365649.P18263235050208563119

`∑{d}[n+1, A034761(#)*A271102((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A365649

/-- `∑{d}[n+1, A034761(#)*A271102((n+1)/#)]` -/
def P18263235050208563119.Spec : Prop :=
  ∀ n, P18263235050208563119.a n = A365649 (n + 1)

theorem P18263235050208563119.correct : P18263235050208563119.Spec := by
  intro n
  simp only [A365649, Nat.add_sub_cancel]

end A365649

/-! ## A365649.P4899420051994398098

`∑{d}[n+1, A000005(#)*A322577((n+1)/#)]`
-/

namespace A365649.P4899420051994398098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A322577 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365649.P4899420051994398098

namespace A365649

/-- `∑{d}[n+1, A000005(#)*A322577((n+1)/#)]` -/
def P4899420051994398098.Spec : Prop :=
  ∀ n, P4899420051994398098.a n = A365649 (n + 1)

end A365649

/-! ## A365649.P5964241845493198499

`∑{d}[n+1, A008833(#)*A357938((n+1)/#)]`
-/

namespace A365649.P5964241845493198499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008833 d * A357938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365649.P5964241845493198499

namespace A365649

/-- `∑{d}[n+1, A008833(#)*A357938((n+1)/#)]` -/
def P5964241845493198499.Spec : Prop :=
  ∀ n, P5964241845493198499.a n = A365649 (n + 1)

end A365649

/-! ## A365649.P15225408223619295103

`∑{d}[n+1, A023900(#)*A360430((n+1)/#)]`
-/

namespace A365649.P15225408223619295103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A360430 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365649.P15225408223619295103

namespace A365649

/-- `∑{d}[n+1, A023900(#)*A360430((n+1)/#)]` -/
def P15225408223619295103.Spec : Prop :=
  ∀ n, P15225408223619295103.a n = A365649 (n + 1)

end A365649

/-! ## A365649.P903005586440043435

`∑{d}[n+1, A091512(#)*A309324((n+1)/#)]`
-/

namespace A365649.P903005586440043435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091512 d * A309324 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365649.P903005586440043435

namespace A365649

/-- `∑{d}[n+1, A091512(#)*A309324((n+1)/#)]` -/
def P903005586440043435.Spec : Prop :=
  ∀ n, P903005586440043435.a n = A365649 (n + 1)

end A365649

/-!
# A365650: Number of free n-polyominoids, allowing both corner- and edge-connections.

The programs for A365650, there is no canonical definition to state claims against.
-/

/-! ## A365650.P8304979562580581050

`A383508(A338306(n))+A256512(n)`
-/

namespace A365650.P8304979562580581050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383508 (A338306 n).toNat + A256512 n

end

end A365650.P8304979562580581050

/-!
# A365654: Number of free n-polyominoids, allowing right-angled connections only ("hard" polyominoids).

The programs for A365654, there is no canonical definition to state claims against.
-/

/-! ## A365654.P7026548366678707397

`∑[A378251(8^(n-1)-a(n-1))]` with `a(0)=1, a(1)=0`
-/

namespace A365654.P7026548366678707397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A378251 (SequenceMachineLib.roundAway ((8 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (f1 (n - 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365654.P7026548366678707397

/-! ## A365654.P18064428050462353804

`xor(A153003(A086581(n)), A329278(n))`
-/

namespace A365654.P18064428050462353804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A153003 (A086581 n).toNat) (A329278 n)

end

end A365654.P18064428050462353804

/-!
# A365655: Number of fixed n-polyominoids, allowing right-angled connections only ("hard" polyominoids).

The programs for A365655, there is no canonical definition to state claims against.
-/

/-! ## A365655.P1886552290420839919

`A137635(n)+A007916(A299166(2*n+1))`
-/

namespace A365655.P1886552290420839919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137635 n + A007916 (A299166 (2 * n + 1)).toNat

end

end A365655.P1886552290420839919

/-!
# A365656: Array T(n,k) read by antidiagonals (downward): T(n,1) = A005117(n) (squarefree numbers > 1); for k > 1, columns are nonsquarefree numbers (in descending order) with exactly the same prime factors as T(n,1).

The programs for A365656, there is no canonical definition to state claims against.
-/

/-! ## A365656.P8311935774838632063

`A284457(A028310(n))-A000007(n)`
-/

namespace A365656.P8311935774838632063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284457 (A028310 n).toNat - A000007 n

end

end A365656.P8311935774838632063

/-! ## A365656.P4054627092540339810

`A284457(A028310(n))-A185012(2*(n+1))`
-/

namespace A365656.P4054627092540339810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284457 (A028310 n).toNat - A185012 (2 * (n + 1))

end

end A365656.P4054627092540339810

/-! ## A365656.P16972763278937942908

`∏{e}[A000079(n), A284457(#)]`
-/

namespace A365656.P16972763278937942908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A284457 (Nat.factorization (f1 n).natAbs p)

end

end A365656.P16972763278937942908

/-! ## A365656.P18409084668251053036

`∏{e}[A122803(n), A284457(#)]`
-/

namespace A365656.P18409084668251053036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A284457 (Nat.factorization (f1 n).natAbs p)

end

end A365656.P18409084668251053036

/-! ## A365656.P1891666606698413564

`∏{e}[A117575(2*(n+1)), A284457(#)]`
-/

namespace A365656.P1891666606698413564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117575 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A284457 (Nat.factorization (f1 n).natAbs p)

end

end A365656.P1891666606698413564

/-!
# A365657: Integers k such that k^2 can be written as the sum of three positive fourth powers.

The programs for A365657, there is no canonical definition to state claims against.
-/

/-! ## A365657.P9786507464231284757

`A158228(n+1)+A106612(A158249(n+1))`
-/

namespace A365657.P9786507464231284757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158228 (n + 1) + A106612 (A158249 (n + 1)).toNat

end

end A365657.P9786507464231284757

/-!
# A365658: Triangle read by rows where T(n,k) is the number of integer partitions of n with k distinct possible sums of nonempty submultisets.

The programs for A365658, there is no canonical definition to state claims against.
-/

/-! ## A365658.P12927859807570517739

`A365923(∑[2*n]%(comp[∑[n]]+1)+1+n)`
-/

namespace A365658.P12927859807570517739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365923 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1 + n)

end

end A365658.P12927859807570517739

/-! ## A365658.P8855992785943463912

`A365923(A380649(n+1))`
-/

namespace A365658.P8855992785943463912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365923 (A380649 (n + 1)).toNat

end

end A365658.P8855992785943463912

/-! ## A365658.P17664942037913671336

`and(A086350(n), A154595(A334496(n+1)))`
-/

namespace A365658.P17664942037913671336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086350 n) (A154595 (A334496 (n + 1)).toNat)

end

end A365658.P17664942037913671336

/-! ## A365658.P15520607489601591224

`and(A028795(A144401(2*(n+1))), A144379(n+1))`
-/

namespace A365658.P15520607489601591224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028795 (A144401 (2 * (n + 1))).toNat) (A144379 (n + 1))

end

end A365658.P15520607489601591224

/-!
# A365659: Number of strict integer partitions of n that either have (1) length 2, or (2) greatest part n/2.

The programs for A365659, there is no canonical definition to state claims against.
-/

/-! ## A365659.P12395423930207358816

`A000009(n)-A365826(n)`
-/

namespace A365659.P12395423930207358816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A365826 n

end

end A365659.P12395423930207358816

/-! ## A365659.P13760502192235450915

`A352745(n)-A115573(A352745(3*n+1))`
-/

namespace A365659.P13760502192235450915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352745 n - A115573 (A352745 (3 * n + 1)).toNat

end

end A365659.P13760502192235450915

/-!
# A365660: Number of integer partitions of 2n with exactly n distinct sums of nonempty submultisets.

The programs for A365660, there is no canonical definition to state claims against.
-/

/-! ## A365660.P4586215614834349030

`A365658(floor(1/(n+1))+2*n²)`
-/

namespace A365660.P4586215614834349030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365658 (⌊1 / (n + 1 : ℚ)⌋ + (2 * n ^ 2 : ℤ)).toNat

end

end A365660.P4586215614834349030

/-!
# A365661: Triangle read by rows where T(n,k) is the number of strict integer partitions of n with a submultiset summing to k.

The programs for A365661, there is no canonical definition to state claims against.
-/

/-! ## A365661.P6293389435910667135

`gcd(A284593(n), A284757(n+1))`
-/

namespace A365661.P6293389435910667135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A284593 n) (A284757 (n + 1))

end

end A365661.P6293389435910667135

/-! ## A365661.P8043181196639071363

`A284593(n)-A010054(A037289(n+3))`
-/

namespace A365661.P8043181196639071363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284593 n - A010054 (A037289 (n + 3)).toNat

end

end A365661.P8043181196639071363

/-! ## A365661.P2997144402738509004

`A284593(n)+A014108(A326979(2*n+3))`
-/

namespace A365661.P2997144402738509004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284593 n + A014108 (A326979 (2 * n + 3)).toNat

end

end A365661.P2997144402738509004

/-! ## A365661.P3765063516650257109

`A284593(n)/A284562(A126460(n))`
-/

namespace A365661.P3765063516650257109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284593 n : ℚ) / (A284562 (A126460 n).toNat : ℚ)

end

end A365661.P3765063516650257109

/-! ## A365661.P7377749130954237320

`A284593(n%A061413(3*n+4))`
-/

namespace A365661.P7377749130954237320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284593 (Int.tmod (n : ℤ) (A061413 (3 * n + 4))).toNat

end

end A365661.P7377749130954237320

/-!
# A365662: Number of ordered pairs of disjoint strict integer partitions of n.

The programs for A365662, there is no canonical definition to state claims against.
-/

/-! ## A365662.P5356565609591380091

`A108796(n)*A329683(n)`
-/

namespace A365662.P5356565609591380091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108796 n * A329683 n

end

end A365662.P5356565609591380091

/-! ## A365662.P9379469967186955671

`A036453(n+1)*A108796(n)`
-/

namespace A365662.P9379469967186955671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A108796 n

end

end A365662.P9379469967186955671

/-! ## A365662.P3713493200665374010

`A104435(n+1)*A108796(n)`
-/

namespace A365662.P3713493200665374010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104435 (n + 1) * A108796 n

end

end A365662.P3713493200665374010

/-! ## A365662.P16951303046733402126

`A000005(A006530(n+1))*A108796(n)`
-/

namespace A365662.P16951303046733402126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006530 (n + 1)).toNat * A108796 n

end

end A365662.P16951303046733402126

/-! ## A365662.P8849683018568742129

`A034444(A034444(n+1))*A108796(n)`
-/

namespace A365662.P8849683018568742129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A034444 (n + 1)).toNat * A108796 n

end

end A365662.P8849683018568742129

/-! ## A365662.P9273762684257310792

`A284593(∑[4*n])`
-/

namespace A365662.P9273762684257310792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284593 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A365662.P9273762684257310792

/-!
# A365664: Expansion of Sum_{0

The programs for A365664, there is no canonical definition to state claims against.
-/

/-! ## A365664.P16246180171557080203

`A304405(3*n)-A363857(A137635(n))`
-/

namespace A365664.P16246180171557080203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304405 (3 * n) - A363857 (A137635 n).toNat

end

end A365664.P16246180171557080203

/-! ## A365664.P8870604215839413764

`A304405(3*n)-A103589(A027894(n+1))`
-/

namespace A365664.P8870604215839413764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304405 (3 * n) - A103589 (A027894 (n + 1)).toNat

end

end A365664.P8870604215839413764

/-!
# A365665: Expansion of Sum_{0

The programs for A365665, there is no canonical definition to state claims against.
-/

/-! ## A365665.P6600413838077084027

`A112325(A186310(n+1))`
-/

namespace A365665.P6600413838077084027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112325 (A186310 (n + 1)).toNat

end

end A365665.P6600413838077084027

/-! ## A365665.P5035128966869646455

`xor(A185213(A342570(n)), A384926(n))`
-/

namespace A365665.P5035128966869646455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185213 (A342570 n).toNat) (A384926 (n + 21))

end

end A365665.P5035128966869646455

/-! ## A365665.P5542239294741120969

`A373637(A373640(n))+A001935(3*n)`
-/

namespace A365665.P5542239294741120969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373637 (A373640 n).toNat + A001935 (3 * n)

end

end A365665.P5542239294741120969

/-!
# A365666: Expansion of Sum_{0

The programs for A365666, there is no canonical definition to state claims against.
-/

/-! ## A365666.P6738807471430254099

`A015128(n)-A185255(3*(n+1))`
-/

namespace A365666.P6738807471430254099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n - A185255 (3 * (n + 1))

end

end A365666.P6738807471430254099

/-! ## A365666.P6346218816082624524

`abs(A004402(n))-A185255(A330643(n))`
-/

namespace A365666.P6346218816082624524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004402 n| - A185255 (A330643 n).toNat

end

end A365666.P6346218816082624524

/-! ## A365666.P16634979344303642828

`A363742(A077783(n+1))+A091778(n)`
-/

namespace A365666.P16634979344303642828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363742 (A077783 (n + 1)).toNat + A091778 n

end

end A365666.P16634979344303642828

/-! ## A365666.P5319990316583428054

`A015128(n)-A080098(A018843(3*n+1))`
-/

namespace A365666.P5319990316583428054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n - A080098 (A018843 (3 * n + 1)).toNat

end

end A365666.P5319990316583428054

/-! ## A365666.P16209056335415751010

`A230441(n)+A000041(n)-A185255(A330643(n))`
-/

namespace A365666.P16209056335415751010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230441 n + A000041 n - A185255 (A330643 n).toNat

end

end A365666.P16209056335415751010

/-!
# A365667: Expansion of Sum_{0

The programs for A365667, there is no canonical definition to state claims against.
-/

/-! ## A365667.P8234099618191845063

`A015128(n)-A079202(A001009(n+1))`
-/

namespace A365667.P8234099618191845063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n - A079202 (A001009 (n + 1)).toNat

end

end A365667.P8234099618191845063

/-!
# A365668: G.f. A(x) satisfies: A(x) = x * (1 + A(x))^5 / (1 - 2 * A(x)).

The programs for A365668, there is no canonical definition to state claims against.
-/

/-! ## A365668.P3334484077817634976

`A002264(∑[∑[A371669(n)]])`
-/

namespace A365668.P3334484077817634976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371669 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A365668.P3334484077817634976

/-!
# A365669: Number of distinct circles created after n iterations of constructing circles from all current vertices using only a compass, starting with one vertex.

The programs for A365669, there is no canonical definition to state claims against.
-/

/-! ## A365669.P15002334825052192137

`(a(n-1)-1)!-a(n-1)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6`
-/

namespace A365669.P15002334825052192137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 6] fun n a =>
  (Nat.factorial (a (n - 1) - 1).toNat : ℤ) - a (n - 1)

end

end A365669.P15002334825052192137

/-!
# A365670: Number of perfect powers k which are not prime powers, and 1 < k < 10^n.

The programs for A365670, there is no canonical definition to state claims against.
-/

/-! ## A365670.P4251048954210902602

`A089579(n+1)-A267574(n+1)`
-/

namespace A365670.P4251048954210902602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089579 (n + 1) - A267574 (n + 1)

end

end A365670.P4251048954210902602

/-! ## A365670.P8473603771618467710

`A006880(n+1)+A089579(n+1)-A267712(n+1)`
-/

namespace A365670.P8473603771618467710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) + (A089579 (n + 1) - A267712 (n + 1))

end

end A365670.P8473603771618467710

/-!
# A365671: a(n) = denominator(4^n * n! * [x^n] sqrt(x / (e^x - 1))).

The programs for A365671, there is no canonical definition to state claims against.
-/

/-! ## A365671.P15660158063631187956

`A242225(n)/4^n`
-/

namespace A365671.P15660158063631187956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242225 n : ℚ) / (4 ^ n : ℚ)

end

end A365671.P15660158063631187956

/-! ## A365671.P12144781815054274628

`A242225(n)%A000051(n)`
-/

namespace A365671.P12144781815054274628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242225 n) (A000051 n)

end

end A365671.P12144781815054274628

/-! ## A365671.P4948535083334892139

`lcm((n+1)/2^val(n+1, 2), A060130(A095816(n)))`
-/

namespace A365671.P4948535083334892139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (A060130 (A095816 n).toNat)

end

end A365671.P4948535083334892139

/-! ## A365671.P1149649381791771356

`gcd(A028310(A088218(n)), A068156(n))`
-/

namespace A365671.P1149649381791771356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 (A088218 n).toNat) (A068156 n)

end

end A365671.P1149649381791771356

/-! ## A365671.P18231484529767800032

`A000265(n+1)*A317933(A000142(n))`
-/

namespace A365671.P18231484529767800032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A317933 (A000142 n).toNat

end

end A365671.P18231484529767800032

/-!
# A365673: Array A(n, k) read by ascending antidiagonals. Polygonal number weighted generalized Catalan sequences.

The programs for A365673, there is no canonical definition to state claims against.
-/

/-! ## A365673.P1198988188901933393

`A182093(A304320(n+1))`
-/

namespace A365673.P1198988188901933393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182093 (A304320 (n + 1)).toNat

end

end A365673.P1198988188901933393

/-!
# A365674: Triangle read by rows. T(n, k) = ((n - k + 1)*(n - k + 2)/2) * T(n, k - 1) + T(n - 1, k) for 0 < k < n, T(n, 0) = 1 and T(n, n) = T(n, n - 1) for n > 0.

The programs for A365674, there is no canonical definition to state claims against.
-/

/-! ## A365674.P6941852957957106565

`A371186(A001498(n)%A280102(n))`
-/

namespace A365674.P6941852957957106565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371186 (Int.tmod (A001498 n) (A280102 n)).toNat

end

end A365674.P6941852957957106565

/-! ## A365674.P9017617207285621209

`A096078(n)-A096094(A000700(3*(n+1)))`
-/

namespace A365674.P9017617207285621209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096078 n - A096094 (A000700 (3 * (n + 1))).toNat

end

end A365674.P9017617207285621209

/-! ## A365674.P2711290236501079200

`A261577(A061987(n)*A219244(3*n+5))`
-/

namespace A365674.P2711290236501079200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261577 (A061987 n * A219244 (3 * n + 5)).toNat

end

end A365674.P2711290236501079200

/-! ## A365674.P14345615874821122666

`A309932(A389347(n))`
-/

namespace A365674.P14345615874821122666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309932 (A389347 n).toNat

end

end A365674.P14345615874821122666

/-! ## A365674.P5426166984333705199

`A305360(n+1)+A174613(A351952(n))`
-/

namespace A365674.P5426166984333705199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305360 (n + 1) + A174613 (A351952 n).toNat

end

end A365674.P5426166984333705199

/-!
# A365675: a(n) = Sum_{k=0..n} p(k) where the p(k) are the partial sums of row n of A365676.

The programs for A365675, there is no canonical definition to state claims against.
-/

/-! ## A365675.P1935491229657694306

`∑[A133735(∑[4*n])]`
-/

namespace A365675.P1935491229657694306
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133735 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365675.P1935491229657694306

/-! ## A365675.P10850091596621046264

`∑[(n+1)*A002865(n)]`
-/

namespace A365675.P10850091596621046264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365675.P10850091596621046264

/-! ## A365675.P10684995922258946522

`∑[(n+1)*A085811(n+3)]`
-/

namespace A365675.P10684995922258946522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365675.P10684995922258946522

/-! ## A365675.P15903878284374850358

`∑[(n+1)*∑[A026796(n+3)-a(n-1)]]` with `a(0)=1`
-/

namespace A365675.P15903878284374850358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A026796 (n + 3) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365675.P15903878284374850358

/-! ## A365675.P17189682796956772361

`∑[A207383(A001844(n))]`
-/

namespace A365675.P17189682796956772361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207383 (A001844 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365675.P17189682796956772361

/-!
# A365676: Triangle read by rows: T(n, k) is the number of partitions of n having exactly k distinct part sizes, for 0 <= k <= n.

The programs for A365676, there is no canonical definition to state claims against.
-/

/-! ## A365676.P17246629850579222806

`A353849(A198726(n)*A353836(n))`
-/

namespace A365676.P17246629850579222806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 (A198726 n * A353836 n).toNat

end

end A365676.P17246629850579222806

/-! ## A365676.P9641315453022353381

`A326031(A325188(n)^A181819(n+1))`
-/

namespace A365676.P9641315453022353381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326031 (SequenceMachineLib.roundAway ((A325188 n : ℚ) ^ (A181819 (n + 1) : ℤ))).toNat

end

end A365676.P9641315453022353381

/-! ## A365676.P3404384608315248867

`A333766(A268670(2*(n+2))*A353836(n))`
-/

namespace A365676.P3404384608315248867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 (A268670 (2 * (n + 2)) * A353836 n).toNat

end

end A365676.P3404384608315248867

/-! ## A365676.P10466573092296366986

`A058841(A325188(n)^A061395(2*(n+2)))`
-/

namespace A365676.P10466573092296366986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058841 (SequenceMachineLib.roundAway ((A325188 n : ℚ) ^ (A061395 (2 * (n + 2)) : ℤ))).toNat

end

end A365676.P10466573092296366986

/-! ## A365676.P11265412762586288869

`A325188(A209862(n))%A335468(3*n+4)`
-/

namespace A365676.P11265412762586288869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325188 (A209862 n).toNat) (A335468 (3 * n + 4))

end

end A365676.P11265412762586288869

/-!
# A365677: Number of increasing geometric progressions in {1,2,3,...,n} with rational ratio and length >= 3.

The programs for A365677, there is no canonical definition to state claims against.
-/

/-! ## A365677.P14065381018391065281

`A366471(n+1)-(n+1)*(1+n/2)`
-/

namespace A365677.P14065381018391065281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366471 (n + 1) : ℚ) - (n + 1 : ℚ) * (1 + (n : ℚ) / 2)

end

end A365677.P14065381018391065281

/-! ## A365677.P1759566699815888113

`∑[A058190(n+1)]`
-/

namespace A365677.P1759566699815888113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365677.P1759566699815888113

/-! ## A365677.P3011303794803673303

`∑[A058189(n+1)-(n+1)]`
-/

namespace A365677.P3011303794803673303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058189 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365677.P3011303794803673303

/-! ## A365677.P10549691607723173272

`A366471(n+1)%A234041(n)`
-/

namespace A365677.P10549691607723173272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366471 (n + 1)) (A234041 n)

end

end A365677.P10549691607723173272

/-! ## A365677.P14878933099978259531

`∑[A058189(n+1)%A000190(n+1)]`
-/

namespace A365677.P14878933099978259531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058189 (n + 1)) (A000190 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365677.P14878933099978259531

/-!
# A365678: Primes p whose index has a submultiset of their decimal digits.

The programs for A365678, there is no canonical definition to state claims against.
-/

/-! ## A365678.P15377942432519987130

`A000040(A080794(n+1))`
-/

namespace A365678.P15377942432519987130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A080794 (n + 1)).toNat

end

end A365678.P15377942432519987130

/-! ## A365678.P4945397430269588770

`A004139(A080794(n+1)-2)`
-/

namespace A365678.P4945397430269588770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A080794 (n + 1) - 2).toNat

end

end A365678.P4945397430269588770

/-! ## A365678.P6213589602387205607

`A318871(A080794(n+1)%A018786(n+1))`
-/

namespace A365678.P6213589602387205607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318871 (Int.tmod (A080794 (n + 1)) (A018786 (n + 1))).toNat

end

end A365678.P6213589602387205607

/-! ## A365678.P14010234960013749892

`A318871(A080794(n+1))%A251335(n+5)`
-/

namespace A365678.P14010234960013749892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318871 (A080794 (n + 1)).toNat) (A251335 (n + 5))

end

end A365678.P14010234960013749892

/-! ## A365678.P17448040973561094818

`A318871(A080794(n+1))%A053347(A016789(n))`
-/

namespace A365678.P17448040973561094818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318871 (A080794 (n + 1)).toNat) (A053347 (A016789 n).toNat)

end

end A365678.P17448040973561094818

/-!
# A365679: a(n) is the number of exterior top arches (no covering arch) for semi-meanders in generation n+1 that are generated by semi-meanders with n top arches and floor((n+2)/2) exterior top arches using the exterior arch splitting algorithm.

The programs for A365679, the canonical program `A365679.P18014666904836412421` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365679 has offset 2).

The definition of A365679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365679.P14570214701649704201

`(2*(n+2)-floor((n+1)/2))*2^floor((n+1)/2)`
-/

namespace A365679.P14570214701649704201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 2) : ℤ) - ⌊(n + 1 : ℚ) / 2⌋ : ℚ) * (2 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ)

end

end A365679.P14570214701649704201

namespace A365679

/-- `(2*(n+2)-floor((n+1)/2))*2^floor((n+1)/2)` -/
def P14570214701649704201.Spec : Prop :=
  ∀ n, P14570214701649704201.a n = (A365679 (n + 2) : ℚ)

end A365679

/-! ## A365679.P18014666904836412421

`4*a(n-2)-4*a(n-4)` with `a(0)=4, a(1)=10, a(2)=14, a(3)=32`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A365679

/-- `4*a(n-2)-4*a(n-4)` -/
def P18014666904836412421.Spec : Prop :=
  ∀ n, P18014666904836412421.a n = A365679 (n + 2)

theorem P18014666904836412421.correct : P18014666904836412421.Spec := by
  intro n
  simp only [A365679, Nat.add_sub_cancel]

end A365679

/-! ## A365679.P55186632579291823

`A060546(n)+A058582(n+1)`
-/

namespace A365679.P55186632579291823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n + A058582 (n + 1)

end

end A365679.P55186632579291823

namespace A365679

/-- `A060546(n)+A058582(n+1)` -/
def P55186632579291823.Spec : Prop :=
  ∀ n, P55186632579291823.a n = A365679 (n + 2)

end A365679

/-! ## A365679.P535570243094305868

`A058582(n+1)+A016116(n+1)`
-/

namespace A365679.P535570243094305868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058582 (n + 1) + A016116 (n + 1)

end

end A365679.P535570243094305868

namespace A365679

/-- `A058582(n+1)+A016116(n+1)` -/
def P535570243094305868.Spec : Prop :=
  ∀ n, P535570243094305868.a n = A365679 (n + 2)

end A365679

/-! ## A365679.P6511859808837178431

`A016116(n)+A084858(n+1)/A016116(n)`
-/

namespace A365679.P6511859808837178431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 n : ℚ) + (A084858 (n + 1) : ℚ) / (A016116 n : ℚ)

end

end A365679.P6511859808837178431

namespace A365679

/-- `A016116(n)+A084858(n+1)/A016116(n)` -/
def P6511859808837178431.Spec : Prop :=
  ∀ n, P6511859808837178431.a n = (A365679 (n + 2) : ℚ)

end A365679

/-!
# A365680: The number of exponentially squarefree divisors of n.

The programs for A365680, the canonical program `A365680.P3625310981199113847` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365680 has offset 1).

The definition of A365680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365680.P3625310981199113847

`∑{d}[n+1, A370598(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A365680

/-- `∑{d}[n+1, A370598(#)]` -/
def P3625310981199113847.Spec : Prop :=
  ∀ n, P3625310981199113847.a n = A365680 (n + 1)

theorem P3625310981199113847.correct : P3625310981199113847.Spec := by
  intro n
  simp only [A365680, Nat.add_sub_cancel]

end A365680

/-! ## A365680.P499943101311917361

`∏{e}[n+1, A107079(#+1)]`
-/

namespace A365680.P499943101311917361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A107079 (Nat.factorization (f1 n) p + 1)

end

end A365680.P499943101311917361

namespace A365680

/-- `∏{e}[n+1, A107079(#+1)]` -/
def P499943101311917361.Spec : Prop :=
  ∀ n, P499943101311917361.a n = A365680 (n + 1)

end A365680

/-! ## A365680.P9446171271066803439

`A353898((n+1)*A366906(n+1))+A083894(A000005(n+1))`
-/

namespace A365680.P9446171271066803439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353898 ((n + 1 : ℤ) * A366906 (n + 1)).toNat + A083894 (A000005 (n + 1)).toNat

end

end A365680.P9446171271066803439

namespace A365680

/-- `A353898((n+1)*A366906(n+1))+A083894(A000005(n+1))` -/
def P9446171271066803439.Spec : Prop :=
  ∀ n, P9446171271066803439.a n = A365680 (n + 1)

end A365680

/-! ## A365680.P11599105389563608212

`A353898((n+1)*A366906(n+1))+A295884(A000190(n+1))`
-/

namespace A365680.P11599105389563608212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353898 ((n + 1 : ℤ) * A366906 (n + 1)).toNat + A295884 (A000190 (n + 1)).toNat

end

end A365680.P11599105389563608212

namespace A365680

/-- `A353898((n+1)*A366906(n+1))+A295884(A000190(n+1))` -/
def P11599105389563608212.Spec : Prop :=
  ∀ n, P11599105389563608212.a n = A365680 (n + 1)

end A365680

/-! ## A365680.P5329782334963469876

`A003963(∏{e}[n+1, 2*#+1])%A304721(n+1)`
-/

namespace A365680.P5329782334963469876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003963 (∏ p ∈ Nat.primeFactors (f1 n), (2 * Nat.factorization (f1 n) p + 1))) (A304721 (n + 1))

end

end A365680.P5329782334963469876

namespace A365680

/-- `A003963(∏{e}[n+1, 2*#+1])%A304721(n+1)` -/
def P5329782334963469876.Spec : Prop :=
  ∀ n, P5329782334963469876.a n = A365680 (n + 1)

end A365680

/-! ## A365680.P6229190730583356264

`∏{e}[(n+1)²*∏{p}[n+1, #], A000720(#)]`
-/

namespace A365680.P6229190730583356264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 * (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000720 (Nat.factorization (f1 n) p)

end

end A365680.P6229190730583356264

namespace A365680

/-- `∏{e}[(n+1)²*∏{p}[n+1, #], A000720(#)]` -/
def P6229190730583356264.Spec : Prop :=
  ∀ n, P6229190730583356264.a n = A365680 (n + 1)

end A365680

/-! ## A365680.P15183235381264740638

`∏{e}[(n+1)²*∏{p}[n+1, #], A024417(#)]`
-/

namespace A365680.P15183235381264740638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 * (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A024417 (Nat.factorization (f1 n) p)

end

end A365680.P15183235381264740638

namespace A365680

/-- `∏{e}[(n+1)²*∏{p}[n+1, #], A024417(#)]` -/
def P15183235381264740638.Spec : Prop :=
  ∀ n, P15183235381264740638.a n = A365680 (n + 1)

end A365680

/-! ## A365680.P17780754130848243518

`A322483((n+1)*A019554(n+1))`
-/

namespace A365680.P17780754130848243518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 ((n + 1 : ℤ) * A019554 (n + 1)).toNat

end

end A365680.P17780754130848243518

namespace A365680

/-- `A322483((n+1)*A019554(n+1))` -/
def P17780754130848243518.Spec : Prop :=
  ∀ n, P17780754130848243518.a n = A365680 (n + 1)

end A365680

/-! ## A365680.P8028108280802830045

`A370328(A348018(A355263((n+1)²)))`
-/

namespace A365680.P8028108280802830045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370328 (A348018 (A355263 ((n + 1) ^ 2)).toNat).toNat

end

end A365680.P8028108280802830045

namespace A365680

/-- `A370328(A348018(A355263((n+1)²)))` -/
def P8028108280802830045.Spec : Prop :=
  ∀ n, P8028108280802830045.a n = A365680 (n + 1)

end A365680

/-! ## A365680.P106088081819084081

`A000005(A019554((n+1)*A019554(n+1)))`
-/

namespace A365680.P106088081819084081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A019554 ((n + 1 : ℤ) * A019554 (n + 1)).toNat).toNat

end

end A365680.P106088081819084081

namespace A365680

/-- `A000005(A019554((n+1)*A019554(n+1)))` -/
def P106088081819084081.Spec : Prop :=
  ∀ n, P106088081819084081.a n = A365680 (n + 1)

end A365680

/-!
# A365681: Numbers with a record number of exponentially squarefree divisors.

The programs for A365681, there is no canonical definition to state claims against.
-/

/-! ## A365681.P9924643379525133896

`A377140((n+1)^A380782(n+1))`
-/

namespace A365681.P9924643379525133896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377140 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A380782 (n + 1) : ℤ))).toNat

end

end A365681.P9924643379525133896

/-! ## A365681.P5655358903640396101

`∩[A033620(n+1), A377140(n+1)]`
-/

namespace A365681.P5655358903640396101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365681.P5655358903640396101

/-! ## A365681.P11229616502695085731

`∩[A033637(n+1), A377140(n+1)]`
-/

namespace A365681.P11229616502695085731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365681.P11229616502695085731

/-! ## A365681.P5615386876828919934

`∩[A051038(n+1), A377140(n+1)]`
-/

namespace A365681.P5615386876828919934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365681.P5615386876828919934

/-! ## A365681.P7250313873891092766

`∩[A081029(n+1), A377140(n+1)]`
-/

namespace A365681.P7250313873891092766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365681.P7250313873891092766

/-!
# A365682: The sum of exponentially squarefree divisors of n.

The programs for A365682, the canonical program `A365682.P17785449757438465592` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365682 has offset 1).

The definition of A365682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365682.P17785449757438465592

`∑{d}[n+1, #*A370598(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A365682

/-- `∑{d}[n+1, #*A370598(#)]` -/
def P17785449757438465592.Spec : Prop :=
  ∀ n, P17785449757438465592.a n = A365682 (n + 1)

theorem P17785449757438465592.correct : P17785449757438465592.Spec := by
  intro n
  simp only [A365682, Nat.add_sub_cancel]

end A365682

/-! ## A365682.P15970874385083177546

`A366992(n+1)%A327349(n+5)²`
-/

namespace A365682.P15970874385083177546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366992 (n + 1)) (A327349 (n + 5) ^ 2)

end

end A365682.P15970874385083177546

namespace A365682

/-- `A366992(n+1)%A327349(n+5)²` -/
def P15970874385083177546.Spec : Prop :=
  ∀ n, P15970874385083177546.a n = A365682 (n + 1)

end A365682

/-! ## A365682.P16058268610508923929

`A366992(n+1)+A000007(A366977(n+4))`
-/

namespace A365682.P16058268610508923929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366992 (n + 1) + A000007 (A366977 (n + 4)).toNat

end

end A365682.P16058268610508923929

namespace A365682

/-- `A366992(n+1)+A000007(A366977(n+4))` -/
def P16058268610508923929.Spec : Prop :=
  ∀ n, P16058268610508923929.a n = A365682 (n + 1)

end A365682

/-! ## A365682.P12927626992240944133

`A014973(A327476(n+3))*A366992(n+1)`
-/

namespace A365682.P12927626992240944133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (A327476 (n + 3)).toNat * A366992 (n + 1)

end

end A365682.P12927626992240944133

namespace A365682

/-- `A014973(A327476(n+3))*A366992(n+1)` -/
def P12927626992240944133.Spec : Prop :=
  ∀ n, P12927626992240944133.a n = A365682 (n + 1)

end A365682

/-! ## A365682.P14337446566458163182

`A001222(A192495(n+4))*A366992(n+1)`
-/

namespace A365682.P14337446566458163182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A192495 (n + 4)).toNat * A366992 (n + 1)

end

end A365682.P14337446566458163182

namespace A365682

/-- `A001222(A192495(n+4))*A366992(n+1)` -/
def P14337446566458163182.Spec : Prop :=
  ∀ n, P14337446566458163182.a n = A365682 (n + 1)

end A365682

/-! ## A365682.P5541433252375590847

`A366992(n+1)+A000007(A139250(2*n+1))`
-/

namespace A365682.P5541433252375590847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366992 (n + 1) + A000007 (A139250 (2 * n + 1)).toNat

end

end A365682.P5541433252375590847

namespace A365682

/-- `A366992(n+1)+A000007(A139250(2*n+1))` -/
def P5541433252375590847.Spec : Prop :=
  ∀ n, P5541433252375590847.a n = A365682 (n + 1)

end A365682

/-! ## A365682.P8088694033385648910

`A366992(n+1)+A000007(A018818(n+1))`
-/

namespace A365682.P8088694033385648910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366992 (n + 1) + A000007 (A018818 (n + 1)).toNat

end

end A365682.P8088694033385648910

namespace A365682

/-- `A366992(n+1)+A000007(A018818(n+1))` -/
def P8088694033385648910.Spec : Prop :=
  ∀ n, P8088694033385648910.a n = A365682 (n + 1)

end A365682

/-! ## A365682.P16333772439165940392

`A001511(A065764(n+1))*A366992(n+1)`
-/

namespace A365682.P16333772439165940392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A065764 (n + 1)).toNat * A366992 (n + 1)

end

end A365682.P16333772439165940392

namespace A365682

/-- `A001511(A065764(n+1))*A366992(n+1)` -/
def P16333772439165940392.Spec : Prop :=
  ∀ n, P16333772439165940392.a n = A365682 (n + 1)

end A365682

/-! ## A365682.P1811028986584513862

`A366992(n+1)+A000007(A366992(n+1)²)`
-/

namespace A365682.P1811028986584513862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366992 (n + 1) + A000007 (A366992 (n + 1) ^ 2).toNat

end

end A365682.P1811028986584513862

namespace A365682

/-- `A366992(n+1)+A000007(A366992(n+1)²)` -/
def P1811028986584513862.Spec : Prop :=
  ∀ n, P1811028986584513862.a n = A365682 (n + 1)

end A365682

/-!
# A365683: The largest exponentially squarefree divisor of n.

The programs for A365683, the canonical program `A365683.P17416909633654039468` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365683 has offset 1).

The definition of A365683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365683.P18006890831344886316

`A056622((n+1)*A338782(n+1))`
-/

namespace A365683.P18006890831344886316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056622 ((n + 1 : ℤ) * A338782 (n + 1)).toNat

end

end A365683.P18006890831344886316

namespace A365683

/-- `A056622((n+1)*A338782(n+1))` -/
def P18006890831344886316.Spec : Prop :=
  ∀ n, P18006890831344886316.a n = A365683 (n + 1)

end A365683

/-! ## A365683.P4524339902740450295

`A019554(A019554(n+1))*A053150(A170826(n+1))`
-/

namespace A365683.P4524339902740450295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A019554 (n + 1)).toNat * A053150 (A170826 (n + 1)).toNat

end

end A365683.P4524339902740450295

namespace A365683

/-- `A019554(A019554(n+1))*A053150(A170826(n+1))` -/
def P4524339902740450295.Spec : Prop :=
  ∀ n, P4524339902740450295.a n = A365683 (n + 1)

end A365683

/-! ## A365683.P17416909633654039468

`A000190((n+1)*A053166(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A365683

/-- `A000190((n+1)*A053166(n+1))` -/
def P17416909633654039468.Spec : Prop :=
  ∀ n, P17416909633654039468.a n = A365683 (n + 1)

theorem P17416909633654039468.correct : P17416909633654039468.Spec := by
  intro n
  simp only [A365683, Nat.add_sub_cancel]

end A365683

/-! ## A365683.P8025532588083125803

`A003557((n+1)*A056554(n+1))`
-/

namespace A365683.P8025532588083125803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 ((n + 1 : ℤ) * A056554 (n + 1)).toNat

end

end A365683.P8025532588083125803

namespace A365683

/-- `A003557((n+1)*A056554(n+1))` -/
def P8025532588083125803.Spec : Prop :=
  ∀ n, P8025532588083125803.a n = A365683 (n + 1)

end A365683

/-! ## A365683.P8685451566940340905

`A000190((n+1)²/A000190(n+1))`
-/

namespace A365683.P8685451566940340905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A000190 (n + 1) : ℚ))).toNat

end

end A365683.P8685451566940340905

namespace A365683

/-- `A000190((n+1)²/A000190(n+1))` -/
def P8685451566940340905.Spec : Prop :=
  ∀ n, P8685451566940340905.a n = A365683 (n + 1)

end A365683

/-! ## A365683.P1384375677522483299

`A019554(A019554(n+1))*A053150((n+1)²)`
-/

namespace A365683.P1384375677522483299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A019554 (n + 1)).toNat * A053150 ((n + 1) ^ 2)

end

end A365683.P1384375677522483299

namespace A365683

/-- `A019554(A019554(n+1))*A053150((n+1)²)` -/
def P1384375677522483299.Spec : Prop :=
  ∀ n, P1384375677522483299.a n = A365683 (n + 1)

end A365683

/-! ## A365683.P2332299974113443098

`A019555((n+1)*A356194(n+1))`
-/

namespace A365683.P2332299974113443098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 ((n + 1 : ℤ) * A356194 (n + 1)).toNat

end

end A365683.P2332299974113443098

namespace A365683

/-- `A019555((n+1)*A356194(n+1))` -/
def P2332299974113443098.Spec : Prop :=
  ∀ n, P2332299974113443098.a n = A365683 (n + 1)

end A365683

/-! ## A365683.P9267086117887227792

`A366994(n+1)+A000007(A268188(n+1))`
-/

namespace A365683.P9267086117887227792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366994 (n + 1) + A000007 (A268188 (n + 1)).toNat

end

end A365683.P9267086117887227792

namespace A365683

/-- `A366994(n+1)+A000007(A268188(n+1))` -/
def P9267086117887227792.Spec : Prop :=
  ∀ n, P9267086117887227792.a n = A365683 (n + 1)

end A365683

/-! ## A365683.P6430191775892050463

`A366994(n+1)+A000007(A279099(n+1))`
-/

namespace A365683.P6430191775892050463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366994 (n + 1) + A000007 (A279099 (n + 1)).toNat

end

end A365683.P6430191775892050463

namespace A365683

/-- `A366994(n+1)+A000007(A279099(n+1))` -/
def P6430191775892050463.Spec : Prop :=
  ∀ n, P6430191775892050463.a n = A365683 (n + 1)

end A365683

/-!
# A365684: a(n) is the smallest multiple of n that is an exponentially squarefree number (A209061).

The programs for A365684, there is no canonical definition to state claims against.
-/

/-! ## A365684.P5936826909779983912

`(n+1)*A365685(n+1)`
-/

namespace A365684.P5936826909779983912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A365685 (n + 1)

end

end A365684.P5936826909779983912

/-! ## A365684.P8118835220063857744

`A071974(A071974(n+1))*A268385(A268385(n+1))`
-/

namespace A365684.P8118835220063857744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (A071974 (n + 1)).toNat * A268385 (A268385 (n + 1)).toNat

end

end A365684.P8118835220063857744

/-! ## A365684.P12733162732142480632

`A015052(A355264(n+1))*A355263(A003557(n+1)²)`
-/

namespace A365684.P12733162732142480632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A355264 (n + 1)).toNat * A355263 (A003557 (n + 1) ^ 2).toNat

end

end A365684.P12733162732142480632

/-! ## A365684.P17553720082702132411

`(n+1)*A106177(A167487(n+5))`
-/

namespace A365684.P17553720082702132411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A106177 (A167487 (n + 5)).toNat

end

end A365684.P17553720082702132411

/-! ## A365684.P17403135364132189041

`(n+1)²/A000190((n+1)²/A000190(n+1))`
-/

namespace A365684.P17403135364132189041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A000190 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A000190 (n + 1) : ℚ))).toNat : ℚ)

end

end A365684.P17403135364132189041

/-! ## A365684.P14792723603385799614

`A000189(A048798(n+1))*A057521(n+1)`
-/

namespace A365684.P14792723603385799614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (A048798 (n + 1)).toNat * A057521 (n + 1)

end

end A365684.P14792723603385799614

/-! ## A365684.P10022045070991429396

`A000190(A019555(n+1)²*A000190(n+1))`
-/

namespace A365684.P10022045070991429396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (A019555 (n + 1) ^ 2 * A000190 (n + 1)).toNat

end

end A365684.P10022045070991429396

/-! ## A365684.P8966535200571730712

`A011262(A011262(n+1))*A056622(A056622(n+1))`
-/

namespace A365684.P8966535200571730712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011262 (A011262 (n + 1)).toNat * A056622 (A056622 (n + 1)).toNat

end

end A365684.P8966535200571730712

/-! ## A365684.P9246547351752805969

`A204939(A130328(n))*A204988(A204988(n+1))`
-/

namespace A365684.P9246547351752805969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204939 (A130328 n).toNat * A204988 (A204988 (n + 1)).toNat

end

end A365684.P9246547351752805969

/-!
# A365685: a(n) is the smallest number k such that k*n is an exponentially squarefree number (A209061).

The programs for A365685, there is no canonical definition to state claims against.
-/

/-! ## A365685.P1947781933606515890

`A365684(n+1)/(n+1)`
-/

namespace A365685.P1947781933606515890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365684 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A365685.P1947781933606515890

/-! ## A365685.P15530358889781907695

`A106177(A167487(n+5))`
-/

namespace A365685.P15530358889781907695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106177 (A167487 (n + 5)).toNat

end

end A365685.P15530358889781907695

/-! ## A365685.P6413451643808636663

`A106177(A133263(n+6)+5)`
-/

namespace A365685.P6413451643808636663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106177 (A133263 (n + 6) + 5).toNat

end

end A365685.P6413451643808636663

/-! ## A365685.P15007924793674453152

`A106177(A000217(n+7)-n)`
-/

namespace A365685.P15007924793674453152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106177 (A000217 (n + 7) - (n : ℤ)).toNat

end

end A365685.P15007924793674453152

/-! ## A365685.P5178467130456125633

`A106177(A000124(n+7)-(n+1))`
-/

namespace A365685.P5178467130456125633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106177 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A365685.P5178467130456125633

/-! ## A365685.P8152208397605817185

`gcd(A126068(n), A308993(A308993(n+1)))`
-/

namespace A365685.P8152208397605817185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126068 n) (A308993 (A308993 (n + 1)).toNat)

end

end A365685.P8152208397605817185

/-! ## A365685.P3471319366022996934

`A071974(A000040(n+2)*A071974(n+1))`
-/

namespace A365685.P3471319366022996934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (A000040 (n + 2) * A071974 (n + 1)).toNat

end

end A365685.P3471319366022996934

/-! ## A365685.P16093399058919071240

`A056622(A001097(n+1)*A056622(n+1))`
-/

namespace A365685.P16093399058919071240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056622 (A001097 (n + 1) * A056622 (n + 1)).toNat

end

end A365685.P16093399058919071240

/-! ## A365685.P7920111294862644032

`A062378(A159253(n+1)/A062378(n+1))`
-/

namespace A365685.P7920111294862644032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062378 (SequenceMachineLib.roundAway ((A159253 (n + 1) : ℚ) / (A062378 (n + 1) : ℚ))).toNat

end

end A365685.P7920111294862644032

/-! ## A365685.P313397898583409733

`A062378(A008834(n+1)*A048798(n+1)/A062378(n+1))`
-/

namespace A365685.P313397898583409733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062378 (SequenceMachineLib.roundAway ((A008834 (n + 1) * A048798 (n + 1) : ℚ) / (A062378 (n + 1) : ℚ))).toNat

end

end A365685.P313397898583409733

/-!
# A365687: a(n) = number of fractions m/n, 0 <= m < n, gcd(m,n) = 1 whose partial fraction decomposition has integer part 0.

The programs for A365687, there is no canonical definition to state claims against.
-/

/-! ## A365687.P16443175714637569008

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/A109673(∏{p}[n+1, 5%(#+4)])`
-/

namespace A365687.P16443175714637569008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) / (A109673 (∏ p ∈ Nat.primeFactors (f3 n), 5 % (p + 4)) : ℚ)

end

end A365687.P16443175714637569008

/-! ## A365687.P7799321270033319034

`gcd(A070306(n+1), A096001(n))`
-/

namespace A365687.P7799321270033319034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A070306 (n + 1)) (A096001 n)

end

end A365687.P7799321270033319034

/-! ## A365687.P13771075866617117887

`A000010(n+1)/A320732(∏{p}[n+1, 5%(#+4)])`
-/

namespace A365687.P13771075866617117887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A320732 (∏ p ∈ Nat.primeFactors (f1 n), 5 % (p + 4)) : ℚ)

end

end A365687.P13771075866617117887

/-! ## A365687.P14730860079551797282

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/A001221(A045972(n+1))`
-/

namespace A365687.P14730860079551797282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) / (A001221 (A045972 (n + 1)).toNat : ℚ)

end

end A365687.P14730860079551797282

/-! ## A365687.P7857127827476992939

`A070306(n+1)+A010815(A103230(n+1))`
-/

namespace A365687.P7857127827476992939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070306 (n + 1) + A010815 (A103230 (n + 1)).toNat

end

end A365687.P7857127827476992939

/-!
# A365688: Primitive solutions k to k^2 = u^4 + v^4 + w^4, with u, v, w > 0.

The programs for A365688, there is no canonical definition to state claims against.
-/

/-! ## A365688.P6636049747033541930

`filter[A365657(n+1), A368915(#)]`
-/

namespace A365688.P6636049747033541930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368915 (f1 j).toNat = 1) n)

end

end A365688.P6636049747033541930

/-!
# A365689: Final decimal digit of n^((n+1)^(n+2)) = A030198(n).

The programs for A365689, the canonical program `A365689.P10317205115109716846` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365689 has offset 0).

The definition of A365689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365689.P10317205115109716846

`gcd(A010676(n), A010879(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A365689

/-- `gcd(A010676(n), A010879(n))` -/
def P10317205115109716846.Spec : Prop :=
  ∀ n, (P10317205115109716846.a n : ℤ) = A365689 n

theorem P10317205115109716846.correct : P10317205115109716846.Spec := by
  intro n
  simp only [A365689]

end A365689

/-!
# A365692: G.f. A(x) satisfies A(x) = 1 + x*A(x) / (1 - x^2*A(x)^4).

The programs for A365692, there is no canonical definition to state claims against.
-/

/-! ## A365692.P9595723233406361857

`xor(A071842(A053088(2*n)), A359590(3*n+4))`
-/

namespace A365692.P9595723233406361857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A071842 (A053088 (2 * n)).toNat) (A359590 (3 * n + 4))

end

end A365692.P9595723233406361857

/-!
# A365693: G.f. satisfies A(x) = 1 + x*A(x) / (1 - x^2*A(x)^5).

The programs for A365693, there is no canonical definition to state claims against.
-/

/-! ## A365693.P9023461909466352814

`A077473(A246555(n))`
-/

namespace A365693.P9023461909466352814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077473 (A246555 n).toNat

end

end A365693.P9023461909466352814

/-! ## A365693.P12517246746007445890

`A077473(A289453(n))`
-/

namespace A365693.P12517246746007445890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077473 (A289453 n).toNat

end

end A365693.P12517246746007445890

/-! ## A365693.P353113187819641039

`A298120(A089372(n))`
-/

namespace A365693.P353113187819641039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298120 (A089372 n).toNat

end

end A365693.P353113187819641039

/-!
# A365697: G.f. satisfies A(x) = 1 + x^4*A(x)^3 / (1 - x*A(x)).

The programs for A365697, there is no canonical definition to state claims against.
-/

/-! ## A365697.P11902320686990792296

`A131719(A057490(2*n+3))+A007333(n+1)`
-/

namespace A365697.P11902320686990792296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131719 (A057490 (2 * n + 3)).toNat + A007333 (n + 1)

end

end A365697.P11902320686990792296

