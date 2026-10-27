import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A250100: After A084937(n) has been computed, let m = largest term so far in A084937. Then a(n) = number of positive odd integers < m that are missing from A084937 at this point.

The programs for A250100, there is no canonical definition to state claims against.
-/

/-! ## A250100.P16295957511077517625

`A249686(n+1)-A250099(n+1)`
-/

namespace A250100.P16295957511077517625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249686 (n + 1) - A250099 (n + 1)

end

end A250100.P16295957511077517625

/-! ## A250100.P7236599339097991360

`A004526(A249686(n+1)+1-A002264(n))`
-/

namespace A250100.P7236599339097991360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A249686 (n + 1) + (1 - A002264 n)).toNat

end

end A250100.P7236599339097991360

/-! ## A250100.P4548284619863257199

`A004526(A249686(n+1)+1-A008611(n))`
-/

namespace A250100.P4548284619863257199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A249686 (n + 1) + (1 - A008611 n)).toNat

end

end A250100.P4548284619863257199

/-! ## A250100.P2995623605014662663

`A004524(A249686(n+1)+2-A008611(n))`
-/

namespace A250100.P2995623605014662663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A249686 (n + 1) + (2 - A008611 n)).toNat

end

end A250100.P2995623605014662663

/-! ## A250100.P3809627391361133955

`A249686(n+1)-A000194(A008611(n)*A249686(n+1))`
-/

namespace A250100.P3809627391361133955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249686 (n + 1) - A000194 (A008611 n * A249686 (n + 1)).toNat

end

end A250100.P3809627391361133955

/-! ## A250100.P16281732607822784263

`A249686(n+1)-A000196(A008611(n)*A249686(n+1))`
-/

namespace A250100.P16281732607822784263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249686 (n + 1) - A000196 (A008611 n * A249686 (n + 1)).toNat

end

end A250100.P16281732607822784263

/-!
# A250101: Expansion of (18*x+86*x^2)/(1-11*x^2-150*x^3).

The programs for A250101, the canonical program `A250101.P10124352179644742670` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250101 has offset 0).

The definition of A250101 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A250101.P10124352179644742670

`11*a(n-2)+150*a(n-3)` with `a(0)=0, a(1)=18, a(2)=86`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A250101

/-- `11*a(n-2)+150*a(n-3)` -/
def P10124352179644742670.Spec : Prop :=
  ∀ n, (P10124352179644742670.a n : ℤ) = A250101 n

theorem P10124352179644742670.correct : P10124352179644742670.Spec := by
  intro n
  simp only [A250101]

end A250101

/-!
# A250102: a(n) = 2*5^n - (1+2i)^(2n) - (1-2i)^(2n) where i = sqrt(-1).

The programs for A250102, the canonical program `A250102.P1601023286299333687` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250102 has offset 0).

The definition of A250102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250102.P1601023286299333687

`Δ[A006495(n)]²`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A250102

/-- `Δ[A006495(n)]²` -/
def P1601023286299333687.Spec : Prop :=
  ∀ n, P1601023286299333687.a n = A250102 n

theorem P1601023286299333687.correct : P1601023286299333687.Spec := by
  intro n
  simp only [A250102]

end A250102

/-! ## A250102.P10857978632683956926

`(2*A006496(n))²`
-/

namespace A250102.P10857978632683956926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A006496 n) ^ 2

end

end A250102.P10857978632683956926

namespace A250102

/-- `(2*A006496(n))²` -/
def P10857978632683956926.Spec : Prop :=
  ∀ n, P10857978632683956926.a n = A250102 n

end A250102

/-! ## A250102.P6272507266966856921

`(4*A045873(n))²`
-/

namespace A250102.P6272507266966856921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A045873 n) ^ 2

end

end A250102.P6272507266966856921

namespace A250102

/-- `(4*A045873(n))²` -/
def P6272507266966856921.Spec : Prop :=
  ∀ n, P6272507266966856921.a n = A250102 n

end A250102

/-! ## A250102.P12983499936581184404

`(A116484(n)+A116483(n))²`
-/

namespace A250102.P12983499936581184404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A116484 n + A116483 n) ^ 2

end

end A250102.P12983499936581184404

namespace A250102

/-- `(A116484(n)+A116483(n))²` -/
def P12983499936581184404.Spec : Prop :=
  ∀ n, P12983499936581184404.a n = A250102 n

end A250102

/-! ## A250102.P17737703231682055482

`8*A006496(n)*A045873(n)`
-/

namespace A250102.P17737703231682055482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A006496 n * A045873 n)

end

end A250102.P17737703231682055482

namespace A250102

/-- `8*A006496(n)*A045873(n)` -/
def P17737703231682055482.Spec : Prop :=
  ∀ n, P17737703231682055482.a n = A250102 n

end A250102

/-! ## A250102.P12722793957053332159

`Δ[A006496(n)-A116484(n)]²`
-/

namespace A250102.P12722793957053332159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006496 n - A116484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A250102.P12722793957053332159

namespace A250102

/-- `Δ[A006496(n)-A116484(n)]²` -/
def P12722793957053332159.Spec : Prop :=
  ∀ n, P12722793957053332159.a n = A250102 n

end A250102

/-! ## A250102.P2487944341367728259

`(A006495(n+1)-A006495(n))²`
-/

namespace A250102.P2487944341367728259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006495 (n + 1) - A006495 n) ^ 2

end

end A250102.P2487944341367728259

namespace A250102

/-- `(A006495(n+1)-A006495(n))²` -/
def P2487944341367728259.Spec : Prop :=
  ∀ n, P2487944341367728259.a n = A250102 n

theorem P2487944341367728259.correct : P2487944341367728259.Spec := by
  intro n
  simp only [A250102, Nat.add_sub_cancel, A250102.P2487944341367728259.a, A250102.P1601023286299333687.f1, A250102.P1601023286299333687.a, SequenceMachineLib.memo_apply]

end A250102

/-! ## A250102.P6822047612556394396

`(2*(A116484(n)+A006495(n)))²`
-/

namespace A250102.P6822047612556394396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (A116484 n + A006495 n)) ^ 2

end

end A250102.P6822047612556394396

namespace A250102

/-- `(2*(A116484(n)+A006495(n)))²` -/
def P6822047612556394396.Spec : Prop :=
  ∀ n, P6822047612556394396.a n = A250102 n

end A250102

/-! ## A250102.P12380371085503762552

`(2*(A006495(n)-A116483(n)))²`
-/

namespace A250102.P12380371085503762552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (A006495 n - A116483 n)) ^ 2

end

end A250102.P12380371085503762552

namespace A250102

/-- `(2*(A006495(n)-A116483(n)))²` -/
def P12380371085503762552.Spec : Prop :=
  ∀ n, P12380371085503762552.a n = A250102 n

end A250102

/-! ## A250102.P16914876175777771444

`(A116484(n+1)+A116484(n))*A006496(n)`
-/

namespace A250102.P16914876175777771444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A116484 (n + 1) + A116484 n) * A006496 n

end

end A250102.P16914876175777771444

namespace A250102

/-- `(A116484(n+1)+A116484(n))*A006496(n)` -/
def P16914876175777771444.Spec : Prop :=
  ∀ n, P16914876175777771444.a n = A250102 n

end A250102

/-!
# A250103: Expansion of (1+x)/(1+x-2*x^2-3*x^3).

The programs for A250103, the canonical program `A250103.P1727495270839414618` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250103 has offset 0).

The definition of A250103 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1+x-2x^2-3x^3))` (program `A250103.P1727495270839414618`, by `A250103.P1727495270839414618.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A250103.P1727495270839414618

`ogf((1+x)/(1+x-2x^2-3x^3))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A250103

/-- `ogf((1+x)/(1+x-2x^2-3x^3))` -/
def P1727495270839414618.Spec : Prop :=
  ∀ n, P1727495270839414618.a n = A250103 n

theorem P1727495270839414618.correct : P1727495270839414618.Spec := by
  intro n
  simp only [A250103]

end A250103

/-! ## A250103.P17407654665892461510

`a(n-3)+3*(a(n-2)-a(n-4))` with `a(0)=1, a(1)=0, a(2)=2, a(3)=1`
-/

namespace A250103.P17407654665892461510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 1] fun n a =>
  a (n - 3) + 3 * (a (n - 2) - a (n - 4))

end

end A250103.P17407654665892461510

namespace A250103

/-- `a(n-3)+3*(a(n-2)-a(n-4))` -/
def P17407654665892461510.Spec : Prop :=
  ∀ n, P17407654665892461510.a n = A250103 n

end A250103

/-!
# A250104: Triangle read by rows: T(n,k) = number of partitions of n with k circular successions (n>=0, 0 <= k <= n).

The programs for A250104, there is no canonical definition to state claims against.
-/

/-! ## A250104.P10905871799108495973

`A124323(C(2, C(n, 2))+n)`
-/

namespace A250104.P10905871799108495973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124323 (Nat.choose 2 (Nat.choose n 2) + n)

end

end A250104.P10905871799108495973

/-! ## A250104.P990560411003153832

`xor(C(2, lcm(2, n)), A124323(n))`
-/

namespace A250104.P990560411003153832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.choose 2 (Nat.lcm 2 n) : ℤ) (A124323 n)

end

end A250104.P990560411003153832

/-! ## A250104.P9022492892479543274

`A124323(A130779(n)+n)`
-/

namespace A250104.P9022492892479543274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124323 (A130779 n + (n : ℤ)).toNat

end

end A250104.P9022492892479543274

/-! ## A250104.P8907883940052701230

`A124323(n)-A263013(n)`
-/

namespace A250104.P8907883940052701230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124323 n - A263013 n

end

end A250104.P8907883940052701230

/-! ## A250104.P15425001817527660860

`xor(A094497(n), A124323(n))`
-/

namespace A250104.P15425001817527660860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A094497 n) (A124323 n)

end

end A250104.P15425001817527660860

/-! ## A250104.P18173391336225084216

`xor(A124323(n), A130716(n))`
-/

namespace A250104.P18173391336225084216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A124323 n) (A130716 n)

end

end A250104.P18173391336225084216

/-! ## A250104.P6869925934151002954

`xor(char[A024032(n)], A124323(n))`
-/

namespace A250104.P6869925934151002954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024032 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A124323 n)

end

end A250104.P6869925934151002954

/-! ## A250104.P18045100921512326317

`xor(char[A115143(n)], A124323(n))`
-/

namespace A250104.P18045100921512326317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115143 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A124323 n)

end

end A250104.P18045100921512326317

/-! ## A250104.P16591402291932047124

`xor(char[A290219(n)], A124323(n))`
-/

namespace A250104.P16591402291932047124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290219 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A124323 n)

end

end A250104.P16591402291932047124

/-!
# A250105: Column 1 of triangle in A250104 (or A124323).

The programs for A250105, there is no canonical definition to state claims against.
-/

/-! ## A250105.P18171081207063761937

`A124323(A134869(n+1))`
-/

namespace A250105.P18171081207063761937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124323 (A134869 (n + 1)).toNat

end

end A250105.P18171081207063761937

/-! ## A250105.P13947215563786195784

`A124323(A133263(n)+n)`
-/

namespace A250105.P13947215563786195784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124323 (A133263 n + (n : ℤ)).toNat

end

end A250105.P13947215563786195784

/-! ## A250105.P10032858198125485265

`comp[A345751(n)]*A000296(n)`
-/

namespace A250105.P10032858198125485265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345751 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A000296 n

end

end A250105.P10032858198125485265

/-! ## A250105.P3777179992639914955

`(n+1)*A000296(A028310(n))`
-/

namespace A250105.P3777179992639914955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000296 (A028310 n).toNat

end

end A250105.P3777179992639914955

/-! ## A250105.P3620919734470949742

`comp[A062118(n+1)]*A000296(n)`
-/

namespace A250105.P3620919734470949742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062118 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A000296 n

end

end A250105.P3620919734470949742

/-!
# A250106: Column 2 of triangle in A250104 (or A124323).

The programs for A250106, there is no canonical definition to state claims against.
-/

/-! ## A250106.P8237162379676018129

`A124323(∑[n+2]+3)`
-/

namespace A250106.P8237162379676018129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124323 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A250106.P8237162379676018129

/-! ## A250106.P12114297953962631456

`∑[n+1]*A000296(n)`
-/

namespace A250106.P12114297953962631456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000296 n

end

end A250106.P12114297953962631456

/-! ## A250106.P6899094447013398757

`∑[n+1]*A106436(∑[n])`
-/

namespace A250106.P6899094447013398757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A106436 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A250106.P6899094447013398757

/-! ## A250106.P11821331923190560441

`3/(n+3)*A250107(n+3)`
-/

namespace A250106.P11821331923190560441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 3 : ℚ) * (A250107 (n + 3) : ℚ)

end

end A250106.P11821331923190560441

/-! ## A250106.P4548670863491754348

`∑[n+1]*A182930(∑[n+1])`
-/

namespace A250106.P4548670863491754348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A182930 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A250106.P4548670863491754348

/-!
# A250107: Column 3 of triangle in A250104 (or A124323).

The programs for A250107, there is no canonical definition to state claims against.
-/

/-! ## A250107.P15733986121563121304

`A124323(∑[n+3]+6)`
-/

namespace A250107.P15733986121563121304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124323 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A250107.P15733986121563121304

/-! ## A250107.P4633297988661923268

`∑[∑[n+1]]*A000296(n)`
-/

namespace A250107.P4633297988661923268
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000296 n

end

end A250107.P4633297988661923268

/-! ## A250107.P17295418016332216582

`C(n+3, 3)*A182930(∑[n+1])`
-/

namespace A250107.P17295418016332216582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) * A182930 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250107.P17295418016332216582

/-! ## A250107.P14846189892837114767

`∑[∑[n+1]]*A261137(∑[n]+n)`
-/

namespace A250107.P14846189892837114767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A261137 (∑ j ∈ Finset.range (n + 1), f3 j + n)

end

end A250107.P14846189892837114767

/-! ## A250107.P4293032269609344083

`C(n+3, 3)*A106436(A000217(n))`
-/

namespace A250107.P4293032269609344083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) * A106436 (A000217 n).toNat

end

end A250107.P4293032269609344083

/-!
# A250108: n*(n-1)/2 mod 2 + n*(n-1)/2 - n*( (n-1) mod 2 ).

The programs for A250108, the canonical program `A250108.P12082972379278730801` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250108 has offset 1).

The definition of A250108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250108.P12082972379278730801

`and(C(or(1, n)+1, 2)-n, -2)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A250108

/-- `and(C(or(1, n)+1, 2)-n, -2)` -/
def P12082972379278730801.Spec : Prop :=
  ∀ n, P12082972379278730801.a n = A250108 (n + 1)

theorem P12082972379278730801.correct : P12082972379278730801.Spec := by
  intro n
  simp only [A250108, Nat.add_sub_cancel]

end A250108

/-! ## A250108.P6360443081085408430

`2*floor((or(1, n)²-n+1)/4)`
-/

namespace A250108.P6360443081085408430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊((Nat.lor 1 n ^ 2 : ℤ) - (n : ℤ) + 1 : ℚ) / 4⌋

end

end A250108.P6360443081085408430

namespace A250108

/-- `2*floor((or(1, n)²-n+1)/4)` -/
def P6360443081085408430.Spec : Prop :=
  ∀ n, P6360443081085408430.a n = A250108 (n + 1)

end A250108

/-! ## A250108.P6427515349822748709

`and(C(and(n+2, -2), 2)-n, -2)`
-/

namespace A250108.P6427515349822748709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((Nat.choose (Int.land (n + 2 : ℤ) (-2)).toNat 2 : ℤ) - (n : ℤ)) (-2)

end

end A250108.P6427515349822748709

namespace A250108

/-- `and(C(and(n+2, -2), 2)-n, -2)` -/
def P6427515349822748709.Spec : Prop :=
  ∀ n, P6427515349822748709.a n = A250108 (n + 1)

end A250108

/-! ## A250108.P8353273892786000514

`and(C(2-(n%2-n), 2)-n, -2)`
-/

namespace A250108.P8353273892786000514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((Nat.choose (2 - (((n % 2 : ℕ) : ℤ) - (n : ℤ))).toNat 2 : ℤ) - (n : ℤ)) (-2)

end

end A250108.P8353273892786000514

namespace A250108

/-- `and(C(2-(n%2-n), 2)-n, -2)` -/
def P8353273892786000514.Spec : Prop :=
  ∀ n, P8353273892786000514.a n = A250108 (n + 1)

end A250108

/-! ## A250108.P8770743055904468448

`C(or(1, n), 2)+n-∑[and(3, n^3)]`
-/

namespace A250108.P8770743055904468448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (n ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.lor 1 n) 2 + n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A250108.P8770743055904468448

namespace A250108

/-- `C(or(1, n), 2)+n-∑[and(3, n^3)]` -/
def P8770743055904468448.Spec : Prop :=
  ∀ n, P8770743055904468448.a n = A250108 (n + 1)

end A250108

/-! ## A250108.P1381725704805274546

`or(1, C(2-(and(1, n)-n), 2)-n)-1`
-/

namespace A250108.P1381725704805274546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((Nat.choose (2 - ((Nat.land 1 n : ℤ) - (n : ℤ))).toNat 2 : ℤ) - (n : ℤ)) - 1

end

end A250108.P1381725704805274546

namespace A250108

/-- `or(1, C(2-(and(1, n)-n), 2)-n)-1` -/
def P1381725704805274546.Spec : Prop :=
  ∀ n, P1381725704805274546.a n = A250108 (n + 1)

end A250108

/-! ## A250108.P10708100605632245335

`or(1, C(∑[(-1)^n+1], 2)-n)-1`
-/

namespace A250108.P10708100605632245335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2 : ℤ) - (n : ℤ)) - 1

end

end A250108.P10708100605632245335

namespace A250108

/-- `or(1, C(∑[(-1)^n+1], 2)-n)-1` -/
def P10708100605632245335.Spec : Prop :=
  ∀ n, P10708100605632245335.a n = A250108 (n + 1)

end A250108

/-! ## A250108.P10588781694322016731

`∑[n]-((n+1)*and(1, n)-and(1, ∑[n]))`
-/

namespace A250108.P10588781694322016731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (((n + 1) * Nat.land 1 n : ℤ) - (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ))

end

end A250108.P10588781694322016731

namespace A250108

/-- `∑[n]-((n+1)*and(1, n)-and(1, ∑[n]))` -/
def P10588781694322016731.Spec : Prop :=
  ∀ n, P10588781694322016731.a n = A250108 (n + 1)

end A250108

/-! ## A250108.P5191525762273265250

`∑[n+2]-(lcm(2, n)+2)-∑[and(3, n^3)]`
-/

namespace A250108.P5191525762273265250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (n ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.lcm 2 n + 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A250108.P5191525762273265250

namespace A250108

/-- `∑[n+2]-(lcm(2, n)+2)-∑[and(3, n^3)]` -/
def P5191525762273265250.Spec : Prop :=
  ∀ n, P5191525762273265250.a n = A250108 (n + 1)

end A250108

/-! ## A250108.P15265907435833064076

`∑[(2*n)^(or(1, n)-n)]-∑[and(3, n^3)]`
-/

namespace A250108.P15265907435833064076
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) ^ ((Nat.lor 1 n : ℤ) - (n : ℤ) : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (n ^ 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A250108.P15265907435833064076

namespace A250108

/-- `∑[(2*n)^(or(1, n)-n)]-∑[and(3, n^3)]` -/
def P15265907435833064076.Spec : Prop :=
  ∀ n, P15265907435833064076.a n = (A250108 (n + 1) : ℚ)

end A250108

/-! ## A250108.P14800960762545449016

`∑[n]-A003816(n)`
-/

namespace A250108.P14800960762545449016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A003816 n

end

end A250108.P14800960762545449016

namespace A250108

/-- `∑[n]-A003816(n)` -/
def P14800960762545449016.Spec : Prop :=
  ∀ n, P14800960762545449016.a n = A250108 (n + 1)

end A250108

/-! ## A250108.P4389295224282482491

`A099392(n+1)-A186422(n)`
-/

namespace A250108.P4389295224282482491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (n + 1) - A186422 n

end

end A250108.P4389295224282482491

namespace A250108

/-- `A099392(n+1)-A186422(n)` -/
def P4389295224282482491.Spec : Prop :=
  ∀ n, P4389295224282482491.a n = A250108 (n + 1)

end A250108

/-! ## A250108.P3963744884487122750

`A052928(A266223(n)-n)`
-/

namespace A250108.P3963744884487122750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A266223 n - (n : ℤ)).toNat

end

end A250108.P3963744884487122750

namespace A250108

/-- `A052928(A266223(n)-n)` -/
def P3963744884487122750.Spec : Prop :=
  ∀ n, P3963744884487122750.a n = A250108 (n + 1)

end A250108

/-! ## A250108.P11395389824332905056

`A052928(A061925(n)-A186422(n))`
-/

namespace A250108.P11395389824332905056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A061925 n - A186422 n).toNat

end

end A250108.P11395389824332905056

namespace A250108

/-- `A052928(A061925(n)-A186422(n))` -/
def P11395389824332905056.Spec : Prop :=
  ∀ n, P11395389824332905056.a n = A250108 (n + 1)

end A250108

/-! ## A250108.P16251865516330113461

`A109613(n)²-A109613(A266304(n))`
-/

namespace A250108.P16251865516330113461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n ^ 2 - A109613 (A266304 n).toNat

end

end A250108.P16251865516330113461

namespace A250108

/-- `A109613(n)²-A109613(A266304(n))` -/
def P16251865516330113461.Spec : Prop :=
  ∀ n, P16251865516330113461.a n = A250108 (n + 1)

end A250108

/-! ## A250108.P5280618217400037397

`A131055(A128918(n+1))-A131055(n+1)`
-/

namespace A250108.P5280618217400037397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131055 (A128918 (n + 1)).toNat - A131055 (n + 1)

end

end A250108.P5280618217400037397

namespace A250108

/-- `A131055(A128918(n+1))-A131055(n+1)` -/
def P5280618217400037397.Spec : Prop :=
  ∀ n, P5280618217400037397.a n = A250108 (n + 1)

end A250108

/-!
# A250111: Number of orbits of size 2 in vertices of Fibonacci cube Gamma_n under the action of its automorphism group.

The programs for A250111, the canonical program `A250111.P9353700149167756063` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250111 has offset 1).

The definition of A250111 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A250111.P9353700149167756063

`a(n-1)+2*a(n-2)-a(n-3)-a(n-5)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=4, a(5)=9, a(6)=13`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A250111

/-- `a(n-1)+2*a(n-2)-a(n-3)-a(n-5)-a(n-6)` -/
def P9353700149167756063.Spec : Prop :=
  ∀ n, P9353700149167756063.a n = A250111 (n + 1)

theorem P9353700149167756063.correct : P9353700149167756063.Spec := by
  intro n
  simp only [A250111, Nat.add_sub_cancel]

end A250111

/-! ## A250111.P496453449453484787

`A032090(n+4)-char[A073846(n+1)]`
-/

namespace A250111.P496453449453484787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032090 (n + 4) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A250111.P496453449453484787

namespace A250111

/-- `A032090(n+4)-char[A073846(n+1)]` -/
def P496453449453484787.Spec : Prop :=
  ∀ n, P496453449453484787.a n = A250111 (n + 1)

end A250111

/-! ## A250111.P14156743911828609792

`A020695(n)-A060312(n+2)`
-/

namespace A250111.P14156743911828609792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - A060312 (n + 2)

end

end A250111.P14156743911828609792

namespace A250111

/-- `A020695(n)-A060312(n+2)` -/
def P14156743911828609792.Spec : Prop :=
  ∀ n, P14156743911828609792.a n = A250111 (n + 1)

end A250111

/-! ## A250111.P11712825846551536114

`record[A053602(n+4)]%A001224(n+2)`
-/

namespace A250111.P11712825846551536114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A001224 (n + 2))

end

end A250111.P11712825846551536114

namespace A250111

/-- `record[A053602(n+4)]%A001224(n+2)` -/
def P11712825846551536114.Spec : Prop :=
  ∀ n, P11712825846551536114.a n = A250111 (n + 1)

end A250111

/-! ## A250111.P4130344029849409127

`A053602(2*n+3)-A060312(n+2)`
-/

namespace A250111.P4130344029849409127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * n + 3) - A060312 (n + 2)

end

end A250111.P4130344029849409127

namespace A250111

/-- `A053602(2*n+3)-A060312(n+2)` -/
def P4130344029849409127.Spec : Prop :=
  ∀ n, P4130344029849409127.a n = A250111 (n + 1)

end A250111

/-! ## A250111.P13834429112938646876

`A068922(n+1)-(A001224(n+2)+A000045(n))`
-/

namespace A250111.P13834429112938646876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068922 (n + 1) - (A001224 (n + 2) + A000045 n)

end

end A250111.P13834429112938646876

namespace A250111

/-- `A068922(n+1)-(A001224(n+2)+A000045(n))` -/
def P13834429112938646876.Spec : Prop :=
  ∀ n, P13834429112938646876.a n = A250111 (n + 1)

end A250111

/-! ## A250111.P792640728554422839

`A068922(n+1)-(A068928(n+2)+A000045(n))`
-/

namespace A250111.P792640728554422839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068922 (n + 1) - (A068928 (n + 2) + A000045 n)

end

end A250111.P792640728554422839

namespace A250111

/-- `A068922(n+1)-(A068928(n+2)+A000045(n))` -/
def P792640728554422839.Spec : Prop :=
  ∀ n, P792640728554422839.a n = A250111 (n + 1)

end A250111

/-!
# A250112: Number of symmetric primitive Lucas strings of length n.

The programs for A250112, there is no canonical definition to state claims against.
-/

/-! ## A250112.P8966187425502031261

`A000005(A000079(n))*A250114(n+1)`
-/

namespace A250112.P8966187425502031261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000079 n).toNat * A250114 (n + 1)

end

end A250112.P8966187425502031261

/-! ## A250112.P17262664848545272785

`A070939(A283353(n))*A250114(n+1)`
-/

namespace A250112.P17262664848545272785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A283353 n).toNat * A250114 (n + 1)

end

end A250112.P17262664848545272785

/-! ## A250112.P8482400012100300520

`(n+1)*A290726(A103609(2*(n+1)))`
-/

namespace A250112.P8482400012100300520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A290726 (A103609 (2 * (n + 1))).toNat

end

end A250112.P8482400012100300520

/-! ## A250112.P15917619844327091084

`A290726(A000045(n+1))*A290748(n+1)`
-/

namespace A250112.P15917619844327091084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290726 (A000045 (n + 1)).toNat * A290748 (n + 1)

end

end A250112.P15917619844327091084

/-! ## A250112.P6344293394093549488

`A048105(A000079(n+2))*A250114(n+1)`
-/

namespace A250112.P6344293394093549488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (A000079 (n + 2)).toNat * A250114 (n + 1)

end

end A250112.P6344293394093549488

/-!
# A250113: Number of asymmetric Lucas strings of length n.

The programs for A250113, there is no canonical definition to state claims against.
-/

/-! ## A250113.P17728021325549149460

`2*(n+1)*A250115(n+1)`
-/

namespace A250113.P17728021325549149460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A250115 (n + 1))

end

end A250113.P17728021325549149460

/-! ## A250113.P16423302248205331787

`A103517(n)*A250115(n+1)`
-/

namespace A250113.P16423302248205331787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n * A250115 (n + 1)

end

end A250113.P16423302248205331787

/-! ## A250113.P7557134787892373765

`A112598(n+1)*A250115(n+1)`
-/

namespace A250113.P7557134787892373765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112598 (n + 1) * A250115 (n + 1)

end

end A250113.P7557134787892373765

/-! ## A250113.P8370867954872156703

`A163300(n+1)*A250115(n+1)`
-/

namespace A250113.P8370867954872156703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1) * A250115 (n + 1)

end

end A250113.P8370867954872156703

/-! ## A250113.P12573390401647921233

`A163750(n+1)*A250115(n+1)`
-/

namespace A250113.P12573390401647921233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163750 (n + 1) * A250115 (n + 1)

end

end A250113.P12573390401647921233

/-! ## A250113.P13641442260155006516

`A250115(n+1)*A291510(n+1)`
-/

namespace A250113.P13641442260155006516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250115 (n + 1) * A291510 (n + 1)

end

end A250113.P13641442260155006516

/-! ## A250113.P17680608790976456297

`A250115(n+1)*A299232(n+1)`
-/

namespace A250113.P17680608790976456297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250115 (n + 1) * A299232 (n + 1)

end

end A250113.P17680608790976456297

/-! ## A250113.P15446346256060138467

`A250115(n+1)*A361871(n+1)`
-/

namespace A250113.P15446346256060138467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250115 (n + 1) * A361871 (n + 1)

end

end A250113.P15446346256060138467

/-! ## A250113.P2457250712824781209

`A051755(n+2)*A250115(n+1)`
-/

namespace A250113.P2457250712824781209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (n + 2) * A250115 (n + 1)

end

end A250113.P2457250712824781209

/-! ## A250113.P8010344609948638184

`(n+1)*A006206(n+1)-A250112(n+1)`
-/

namespace A250113.P8010344609948638184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006206 (n + 1) - A250112 (n + 1)

end

end A250113.P8010344609948638184

/-! ## A250113.P15199373062084583126

`(A031367(n+1)-A250112(n+1))%A001350(n+1)`
-/

namespace A250113.P15199373062084583126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031367 (n + 1) - A250112 (n + 1)) (A001350 (n + 1))

end

end A250113.P15199373062084583126

/-!
# A250114: Number of orbits of size n in vertex graph of Lucas cube Lambda_n.

The programs for A250114, there is no canonical definition to state claims against.
-/

/-! ## A250114.P14205539481472759087

`A085736(A250112(n+1)/(n+1))`
-/

namespace A250114.P14205539481472759087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (SequenceMachineLib.roundAway ((A250112 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A250114.P14205539481472759087

/-! ## A250114.P10549269831775661621

`A089867(A250112(n+1)/(n+1))`
-/

namespace A250114.P10549269831775661621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (SequenceMachineLib.roundAway ((A250112 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A250114.P10549269831775661621

/-! ## A250114.P2916650977851365470

`A250112(n+1)/A000005(A000079(n))`
-/

namespace A250114.P2916650977851365470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250112 (n + 1) : ℚ) / (A000005 (A000079 n).toNat : ℚ)

end

end A250114.P2916650977851365470

/-! ## A250114.P14092078514065588

`A250112(n+1)/A246353(A048672(n+1))`
-/

namespace A250114.P14092078514065588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250112 (n + 1) : ℚ) / (A246353 (A048672 (n + 1)).toNat : ℚ)

end

end A250114.P14092078514065588

/-! ## A250114.P16314776144832273285

`A250112(n+1)/A001222(A007283(n))`
-/

namespace A250114.P16314776144832273285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250112 (n + 1) : ℚ) / (A001222 (A007283 n).toNat : ℚ)

end

end A250114.P16314776144832273285

/-!
# A250115: Number of orbits of size 2n in vertex graph of Lucas cube Lambda_n.

The programs for A250115, there is no canonical definition to state claims against.
-/

/-! ## A250115.P16360632610959390638

`A250113(n+1)/(2*(n+1))`
-/

namespace A250115.P16360632610959390638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250113 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A250115.P16360632610959390638

/-! ## A250115.P18002087686875251100

`floor(A250113(n+1)/A103517(n))`
-/

namespace A250115.P18002087686875251100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A250113 (n + 1) : ℚ) / (A103517 n : ℚ)⌋

end

end A250115.P18002087686875251100

/-! ## A250115.P7669196447525803169

`floor(A250113(n+1)/A112598(n+1))`
-/

namespace A250115.P7669196447525803169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A250113 (n + 1) : ℚ) / (A112598 (n + 1) : ℚ)⌋

end

end A250115.P7669196447525803169

/-! ## A250115.P2299646679986479002

`floor(A250113(n+1)/A291510(n+1))`
-/

namespace A250115.P2299646679986479002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A250113 (n + 1) : ℚ) / (A291510 (n + 1) : ℚ)⌋

end

end A250115.P2299646679986479002

/-! ## A250115.P10967322150358255002

`ceil(A250113(n+1)/A005843(n+1))`
-/

namespace A250115.P10967322150358255002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A250113 (n + 1) : ℚ) / (A005843 (n + 1) : ℚ)⌉

end

end A250115.P10967322150358255002

/-!
# A250118: Triangle read by rows: T(n,m) (n >= 1, 1 <= m <= n) = number of set partitions of [n], avoiding 12343, with m blocks.

The programs for A250118, there is no canonical definition to state claims against.
-/

/-! ## A250118.P7684457548054736269

`A178798(A255009(n))+A008277(n+1)`
-/

namespace A250118.P7684457548054736269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A255009 n).toNat + A008277 (n + 1)

end

end A250118.P7684457548054736269

/-! ## A250118.P17653795918055511783

`A218577(n+1)+A178798(A156953(n))`
-/

namespace A250118.P17653795918055511783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218577 (n + 1) + A178798 (A156953 n).toNat

end

end A250118.P17653795918055511783

/-! ## A250118.P1944751907669357785

`A008277(n+1)-A025465(A007053(n))`
-/

namespace A250118.P1944751907669357785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) - A025465 (A007053 n).toNat

end

end A250118.P1944751907669357785

/-! ## A250118.P4194996193680449400

`A008277(n+1)-A055641(A017990(n))`
-/

namespace A250118.P4194996193680449400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) - A055641 (A017990 n).toNat

end

end A250118.P4194996193680449400

/-! ## A250118.P7545081031123333627

`A008277(n+1)-A079260(A003242(n))`
-/

namespace A250118.P7545081031123333627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) - A079260 (A003242 n).toNat

end

end A250118.P7545081031123333627

/-!
# A250119: Triangle read by rows: T(n,m) (n >= 1, 1 <= m <= n) = number of set partitions of [n], avoiding 123454, with m blocks.

The programs for A250119, there is no canonical definition to state claims against.
-/

/-! ## A250119.P8825849109270094786

`A178798(A098825(n))+A008277(n+1)`
-/

namespace A250119.P8825849109270094786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A098825 n).toNat + A008277 (n + 1)

end

end A250119.P8825849109270094786

/-! ## A250119.P10744075698151274555

`A008277(n+1)-A089311(A094544(n))`
-/

namespace A250119.P10744075698151274555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) - A089311 (A094544 n).toNat

end

end A250119.P10744075698151274555

/-! ## A250119.P804704496985339157

`A008277(n+1)-A025469(A163661(n))`
-/

namespace A250119.P804704496985339157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) - A025469 (A163661 n).toNat

end

end A250119.P804704496985339157

/-! ## A250119.P4026786260870526841

`A008277(n+1)-A122840(A087833(n))`
-/

namespace A250119.P4026786260870526841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) - A122840 (A087833 n).toNat

end

end A250119.P4026786260870526841

/-! ## A250119.P17781216032362806828

`A008277(n+1)-A151795(A060475(n))`
-/

namespace A250119.P17781216032362806828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) - A151795 (A060475 n).toNat

end

end A250119.P17781216032362806828

/-!
# A250120: Coordination sequence for planar net 3.3.3.3.6 (also called the fsz net).

The programs for A250120, the canonical program `A250120.P17005803601232239086` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250120 has offset 0).

The definition of A250120 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250120.P6367682854180331937

`A301730(n)-char[2]-A244895(n)`
-/

namespace A250120.P6367682854180331937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301730 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A244895 n

end

end A250120.P6367682854180331937

namespace A250120

/-- `A301730(n)-char[2]-A244895(n)` -/
def P6367682854180331937.Spec : Prop :=
  ∀ n, P6367682854180331937.a n = A250120 n

end A250120

/-! ## A250120.P9954676599855780491

`xor(A185012(n), A301730(n))-A244895(n)`
-/

namespace A250120.P9954676599855780491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185012 n) (A301730 n) - A244895 n

end

end A250120.P9954676599855780491

namespace A250120

/-- `xor(A185012(n), A301730(n))-A244895(n)` -/
def P9954676599855780491.Spec : Prop :=
  ∀ n, P9954676599855780491.a n = A250120 n

end A250120

/-! ## A250120.P12518446550531260963

`A348237(n)+A047599(n+1)-A244895(n)`
-/

namespace A250120.P12518446550531260963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348237 n + A047599 (n + 1) - A244895 n

end

end A250120.P12518446550531260963

namespace A250120

/-- `A348237(n)+A047599(n+1)-A244895(n)` -/
def P12518446550531260963.Spec : Prop :=
  ∀ n, P12518446550531260963.a n = A250120 n

end A250120

/-! ## A250120.P17005803601232239086

`A022144(n)-2*A047486(n+1)-A244895(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A250120

/-- `A022144(n)-2*A047486(n+1)-A244895(n)` -/
def P17005803601232239086.Spec : Prop :=
  ∀ n, P17005803601232239086.a n = A250120 n

theorem P17005803601232239086.correct : P17005803601232239086.Spec := by
  intro n
  simp only [A250120]

end A250120

/-! ## A250120.P15585952135343049789

`A008574(n)+A004396(A047263(n+1))`
-/

namespace A250120.P15585952135343049789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004396 (A047263 (n + 1)).toNat

end

end A250120.P15585952135343049789

namespace A250120

/-- `A008574(n)+A004396(A047263(n+1))` -/
def P15585952135343049789.Spec : Prop :=
  ∀ n, P15585952135343049789.a n = A250120 n

end A250120

/-! ## A250120.P2837625520239330464

`A008574(n)+A004525(A047486(n+1))`
-/

namespace A250120.P2837625520239330464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004525 (A047486 (n + 1)).toNat

end

end A250120.P2837625520239330464

namespace A250120

/-- `A008574(n)+A004525(A047486(n+1))` -/
def P2837625520239330464.Spec : Prop :=
  ∀ n, P2837625520239330464.a n = A250120 n

end A250120

/-! ## A250120.P16880991828402556490

`A047309(2*n+1)+A004273(n)`
-/

namespace A250120.P16880991828402556490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047309 (2 * n + 1) + A004273 n

end

end A250120.P16880991828402556490

namespace A250120

/-- `A047309(2*n+1)+A004273(n)` -/
def P16880991828402556490.Spec : Prop :=
  ∀ n, P16880991828402556490.a n = A250120 n

end A250120

/-! ## A250120.P8203205554047529009

`A047363(2*n+1)+A004277(n)`
-/

namespace A250120.P8203205554047529009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (2 * n + 1) + A004277 n

end

end A250120.P8203205554047529009

namespace A250120

/-- `A047363(2*n+1)+A004277(n)` -/
def P8203205554047529009.Spec : Prop :=
  ∀ n, P8203205554047529009.a n = A250120 n

end A250120

/-! ## A250120.P16384758156902713606

`A022144(n)-A047486(2*n+1)`
-/

namespace A250120.P16384758156902713606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - A047486 (2 * n + 1)

end

end A250120.P16384758156902713606

namespace A250120

/-- `A022144(n)-A047486(2*n+1)` -/
def P16384758156902713606.Spec : Prop :=
  ∀ n, P16384758156902713606.a n = A250120 n

end A250120

/-! ## A250120.P12442927225975399910

`A022144(n)+1-A047412(2*(n+1))`
-/

namespace A250120.P12442927225975399910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n + 1 - A047412 (2 * (n + 1))

end

end A250120.P12442927225975399910

namespace A250120

/-- `A022144(n)+1-A047412(2*(n+1))` -/
def P12442927225975399910.Spec : Prop :=
  ∀ n, P12442927225975399910.a n = A250120 n

end A250120

/-! ## A250120.P13930930262675819451

`A047363(2*n+1)+A028310(2*n)`
-/

namespace A250120.P13930930262675819451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (2 * n + 1) + A028310 (2 * n)

end

end A250120.P13930930262675819451

namespace A250120

/-- `A047363(2*n+1)+A028310(2*n)` -/
def P13930930262675819451.Spec : Prop :=
  ∀ n, P13930930262675819451.a n = A250120 n

end A250120

/-! ## A250120.P3866087041098952909

`A008574(2*n)-A047486(2*n+1)`
-/

namespace A250120.P3866087041098952909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) - A047486 (2 * n + 1)

end

end A250120.P3866087041098952909

namespace A250120

/-- `A008574(2*n)-A047486(2*n+1)` -/
def P3866087041098952909.Spec : Prop :=
  ∀ n, P3866087041098952909.a n = A250120 n

end A250120

/-! ## A250120.P10616627914397356023

`A008574(2*n)+1-A047412(2*(n+1))`
-/

namespace A250120.P10616627914397356023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) + (1 - A047412 (2 * (n + 1)))

end

end A250120.P10616627914397356023

namespace A250120

/-- `A008574(2*n)+1-A047412(2*(n+1))` -/
def P10616627914397356023.Spec : Prop :=
  ∀ n, P10616627914397356023.a n = A250120 n

end A250120

/-! ## A250120.P16709310529818284489

`A008486(2*n)-(A057354(2*n+1)+A057354(n+1))`
-/

namespace A250120.P16709310529818284489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - (A057354 (2 * n + 1) + A057354 (n + 1))

end

end A250120.P16709310529818284489

namespace A250120

/-- `A008486(2*n)-(A057354(2*n+1)+A057354(n+1))` -/
def P16709310529818284489.Spec : Prop :=
  ∀ n, P16709310529818284489.a n = A250120 n

end A250120

/-! ## A250120.P1391105585765474414

`A072154(n)+A005843(A047263(n+1))`
-/

namespace A250120.P1391105585765474414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 n + A005843 (A047263 (n + 1)).toNat

end

end A250120.P1391105585765474414

namespace A250120

/-- `A072154(n)+A005843(A047263(n+1))` -/
def P1391105585765474414.Spec : Prop :=
  ∀ n, P1391105585765474414.a n = A250120 n

end A250120

/-! ## A250120.P3719744844242850098

`(2-A000007(n))*A072154(n)-A244895(n)`
-/

namespace A250120.P3719744844242850098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A072154 n - A244895 n

end

end A250120.P3719744844242850098

namespace A250120

/-- `(2-A000007(n))*A072154(n)-A244895(n)` -/
def P3719744844242850098.Spec : Prop :=
  ∀ n, P3719744844242850098.a n = A250120 n

end A250120

/-! ## A250120.P9119759095646750255

`A000032(C(2, n+2))*A072154(n)-A244895(n)`
-/

namespace A250120.P9119759095646750255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A072154 n - A244895 n

end

end A250120.P9119759095646750255

namespace A250120

/-- `A000032(C(2, n+2))*A072154(n)-A244895(n)` -/
def P9119759095646750255.Spec : Prop :=
  ∀ n, P9119759095646750255.a n = A250120 n

end A250120

/-! ## A250120.P2776406216326860226

`A008458(n)-A004525(A047263(2*n+1))`
-/

namespace A250120.P2776406216326860226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A047263 (2 * n + 1)).toNat

end

end A250120.P2776406216326860226

namespace A250120

/-- `A008458(n)-A004525(A047263(2*n+1))` -/
def P2776406216326860226.Spec : Prop :=
  ∀ n, P2776406216326860226.a n = A250120 n

end A250120

/-!
# A250121: Crystal ball sequence for planar net 3.3.3.3.6.

The programs for A250121, the canonical program `A250121.P6939867223749682854` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250121 has offset 0).

The definition of A250121 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A250121.P6939867223749682854

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=1, a(1)=6, a(2)=15, a(3)=30, a(4)=49, a(5)=73, a(6)=102`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A250121

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P6939867223749682854.Spec : Prop :=
  ∀ n, P6939867223749682854.a n = A250121 n

theorem P6939867223749682854.correct : P6939867223749682854.Spec := by
  intro n
  simp only [A250121]

end A250121

/-! ## A250121.P1289924525304099064

`ceil((6*n+3)²/15)`
-/

namespace A250121.P1289924525304099064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((6 * n + 3) ^ 2 : ℚ) / 15⌉

end

end A250121.P1289924525304099064

namespace A250121

/-- `ceil((6*n+3)²/15)` -/
def P1289924525304099064.Spec : Prop :=
  ∀ n, P1289924525304099064.a n = A250121 n

end A250121

/-! ## A250121.P11358043578581644559

`round(lcm(4, Δ[n^3])/5)`
-/

namespace A250121.P11358043578581644559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lcm 4 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 5)

end

end A250121.P11358043578581644559

namespace A250121

/-- `round(lcm(4, Δ[n^3])/5)` -/
def P11358043578581644559.Spec : Prop :=
  ∀ n, P11358043578581644559.a n = A250121 n

end A250121

/-! ## A250121.P4659552342341576509

`∑[A250120(n)]`
-/

namespace A250121.P4659552342341576509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250121.P4659552342341576509

namespace A250121

/-- `∑[A250120(n)]` -/
def P4659552342341576509.Spec : Prop :=
  ∀ n, P4659552342341576509.a n = A250121 n

end A250121

/-! ## A250121.P17217158568911139774

`A299254(n)-a(n-1)` with `a(0)=1`
-/

namespace A250121.P17217158568911139774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299254 n - a (n - 1)

end

end A250121.P17217158568911139774

namespace A250121

/-- `A299254(n)-a(n-1)` -/
def P17217158568911139774.Spec : Prop :=
  ∀ n, P17217158568911139774.a n = A250121 n

end A250121

/-! ## A250121.P4102993992711120434

`round(((n+1)²+n²)*Δ[n^3]/A005891(n))`
-/

namespace A250121.P4102993992711120434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n + 1) ^ 2 + n ^ 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / (A005891 n : ℚ))

end

end A250121.P4102993992711120434

namespace A250121

/-- `round(((n+1)²+n²)*Δ[n^3]/A005891(n))` -/
def P4102993992711120434.Spec : Prop :=
  ∀ n, P4102993992711120434.a n = A250121 n

end A250121

/-! ## A250121.P412406426057022082

`A014105(n)+A008732(2*n)`
-/

namespace A250121.P412406426057022082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n + A008732 (2 * n)

end

end A250121.P412406426057022082

namespace A250121

/-- `A014105(n)+A008732(2*n)` -/
def P412406426057022082.Spec : Prop :=
  ∀ n, P412406426057022082.a n = A250121 n

end A250121

/-! ## A250121.P8457056736933051260

`A130520(2*n)+A000384(n+1)`
-/

namespace A250121.P8457056736933051260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (2 * n) + A000384 (n + 1)

end

end A250121.P8457056736933051260

namespace A250121

/-- `A130520(2*n)+A000384(n+1)` -/
def P8457056736933051260.Spec : Prop :=
  ∀ n, P8457056736933051260.a n = A250121 n

end A250121

/-! ## A250121.P9164869879715570489

`A008732(2*n)+A000217(2*n)`
-/

namespace A250121.P9164869879715570489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008732 (2 * n) + A000217 (2 * n)

end

end A250121.P9164869879715570489

namespace A250121

/-- `A008732(2*n)+A000217(2*n)` -/
def P9164869879715570489.Spec : Prop :=
  ∀ n, P9164869879715570489.a n = A250121 n

end A250121

/-! ## A250121.P16493635083668877505

`A130520(2*n)+A000217(2*n+1)`
-/

namespace A250121.P16493635083668877505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (2 * n) + A000217 (2 * n + 1)

end

end A250121.P16493635083668877505

namespace A250121

/-- `A130520(2*n)+A000217(2*n+1)` -/
def P16493635083668877505.Spec : Prop :=
  ∀ n, P16493635083668877505.a n = A250121 n

end A250121

/-! ## A250121.P1628109805310960473

`round(A005897(2*n+1)/10)`
-/

namespace A250121.P1628109805310960473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005897 (2 * n + 1) : ℚ) / 10)

end

end A250121.P1628109805310960473

namespace A250121

/-- `round(A005897(2*n+1)/10)` -/
def P1628109805310960473.Spec : Prop :=
  ∀ n, P1628109805310960473.a n = A250121 n

end A250121

/-! ## A250121.P4470914026960157358

`A183865(2*n+1)-2*n`
-/

namespace A250121.P4470914026960157358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183865 (2 * n + 1) - (2 * n : ℤ)

end

end A250121.P4470914026960157358

namespace A250121

/-- `A183865(2*n+1)-2*n` -/
def P4470914026960157358.Spec : Prop :=
  ∀ n, P4470914026960157358.a n = A250121 n

end A250121

/-! ## A250121.P2357546799829249418

`∑[A047309(2*n+1)]+n²`
-/

namespace A250121.P2357546799829249418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047309 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A250121.P2357546799829249418

namespace A250121

/-- `∑[A047309(2*n+1)]+n²` -/
def P2357546799829249418.Spec : Prop :=
  ∀ n, P2357546799829249418.a n = A250121 n

end A250121

/-! ## A250121.P14926568032309128694

`(2*n+1)²-A033437(2*n+1)`
-/

namespace A250121.P14926568032309128694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - A033437 (2 * n + 1)

end

end A250121.P14926568032309128694

namespace A250121

/-- `(2*n+1)²-A033437(2*n+1)` -/
def P14926568032309128694.Spec : Prop :=
  ∀ n, P14926568032309128694.a n = A250121 n

end A250121

/-! ## A250121.P2401697149697182570

`(A008812(2*n)+(2*n+1)²)/2`
-/

namespace A250121.P2401697149697182570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008812 (2 * n) + ((2 * n + 1) ^ 2 : ℤ) : ℚ) / 2

end

end A250121.P2401697149697182570

namespace A250121

/-- `(A008812(2*n)+(2*n+1)²)/2` -/
def P2401697149697182570.Spec : Prop :=
  ∀ n, P2401697149697182570.a n = (A250121 n : ℚ)

end A250121

/-! ## A250121.P5076126793036706122

`A050187(2*n+1)+A008732(2*n)`
-/

namespace A250121.P5076126793036706122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050187 (2 * n + 1) + A008732 (2 * n)

end

end A250121.P5076126793036706122

namespace A250121

/-- `A050187(2*n+1)+A008732(2*n)` -/
def P5076126793036706122.Spec : Prop :=
  ∀ n, P5076126793036706122.a n = A250121 n

end A250121

/-! ## A250121.P15598041694118541118

`∑[A047363(2*n+1)+A028310(2*n)]`
-/

namespace A250121.P15598041694118541118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (2 * n + 1) + A028310 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250121.P15598041694118541118

namespace A250121

/-- `∑[A047363(2*n+1)+A028310(2*n)]` -/
def P15598041694118541118.Spec : Prop :=
  ∀ n, P15598041694118541118.a n = A250121 n

end A250121

/-! ## A250121.P9461110665674314200

`∑[A008574(2*n)-A047486(2*n+1)]`
-/

namespace A250121.P9461110665674314200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) - A047486 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250121.P9461110665674314200

namespace A250121

/-- `∑[A008574(2*n)-A047486(2*n+1)]` -/
def P9461110665674314200.Spec : Prop :=
  ∀ n, P9461110665674314200.a n = A250121 n

end A250121

/-! ## A250121.P5772203283969382072

`A398055(2*n+1)-A000217(2*n+1)`
-/

namespace A250121.P5772203283969382072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398055 (2 * n + 1) - A000217 (2 * n + 1)

end

end A250121.P5772203283969382072

namespace A250121

/-- `A398055(2*n+1)-A000217(2*n+1)` -/
def P5772203283969382072.Spec : Prop :=
  ∀ n, P5772203283969382072.a n = A250121 n

end A250121

/-! ## A250121.P15754850081120166209

`A008732(2*n)-n*A001478(2*n+1)`
-/

namespace A250121.P15754850081120166209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008732 (2 * n) - (n : ℤ) * A001478 (2 * n + 1)

end

end A250121.P15754850081120166209

namespace A250121

/-- `A008732(2*n)-n*A001478(2*n+1)` -/
def P15754850081120166209.Spec : Prop :=
  ∀ n, P15754850081120166209.a n = A250121 n

end A250121

/-!
# A250122: Coordination sequence for planar net 3.12.12.

The programs for A250122, there is no canonical definition to state claims against.
-/

/-! ## A250122.P10699049807638190062

`A310007(n)+A310025(n)-A310040(n)`
-/

namespace A250122.P10699049807638190062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310007 n + (A310025 n - A310040 n)

end

end A250122.P10699049807638190062

/-! ## A250122.P3033670063082317586

`2*A310661(n)-A314382(n)`
-/

namespace A250122.P3033670063082317586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A310661 n - A314382 n

end

end A250122.P3033670063082317586

/-! ## A250122.P5719154868500582412

`A005843(A310661(n))-A314382(n)`
-/

namespace A250122.P5719154868500582412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A310661 n).toNat - A314382 n

end

end A250122.P5719154868500582412

/-! ## A250122.P220215432286539933

`A301287(n)+A314517(n)-A008706(n)`
-/

namespace A250122.P220215432286539933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301287 n + (A314517 n - A008706 n)

end

end A250122.P220215432286539933

/-! ## A250122.P17822161765680668238

`A301287(n)-A008587(n)%A314517(n)`
-/

namespace A250122.P17822161765680668238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301287 n - Int.tmod (A008587 n) (A314517 n)

end

end A250122.P17822161765680668238

/-!
# A250125: Coordination sequence of point of type 3.4.3.12 in 4-uniform tiling {3.3.4.3.4; 3.3.4.12; 3.3.12.4; 3.4.3.12}.

The programs for A250125, there is no canonical definition to state claims against.
-/

/-! ## A250125.P9111798653450294554

`A211992(A000045(2*(n+2)))+A007092(2*n)`
-/

namespace A250125.P9111798653450294554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211992 (A000045 (2 * (n + 2))).toNat + A007092 (2 * n)

end

end A250125.P9111798653450294554

/-!
# A250127: Numbers k where A098550(k)/k reaches a record high.

The programs for A250127, there is no canonical definition to state claims against.
-/

/-! ## A250127.P12203585585292523280

`A098551(A251415(n+1))`
-/

namespace A250127.P12203585585292523280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A251415 (n + 1)).toNat

end

end A250127.P12203585585292523280

/-! ## A250127.P9276075851527379977

`A098550(A098553(A251415(A098553(A098552(n+1)))))`
-/

namespace A250127.P9276075851527379977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (A098553 (A251415 (A098553 (A098552 (n + 1)).toNat).toNat).toNat).toNat

end

end A250127.P9276075851527379977

/-! ## A250127.P11085664567999293830

`A131507(A237871(n+1)*A382533(n+1))`
-/

namespace A250127.P11085664567999293830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 (A237871 (n + 1) * A382533 (n + 1)).toNat

end

end A250127.P11085664567999293830

/-!
# A250128: Number of triforces generated at iteration n in a Koch-Sierpiński Ninja Star.

The programs for A250128, the canonical program `A250128.P4374835496127361751` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250128 has offset 0).

The definition of A250128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250128.P16942395394718648733

`ogf((x+x^2)/(1-2x-3x^2-3x^3))`
-/

namespace A250128.P16942395394718648733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -2, -3, -3] n

end

end A250128.P16942395394718648733

namespace A250128

/-- `ogf((x+x^2)/(1-2x-3x^2-3x^3))` -/
def P16942395394718648733.Spec : Prop :=
  ∀ n, P16942395394718648733.a n = A250128 n

end A250128

/-! ## A250128.P4374835496127361751

`2*a(n-1)+3*a(n-2)+3*a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A250128

/-- `2*a(n-1)+3*a(n-2)+3*a(n-3)` -/
def P4374835496127361751.Spec : Prop :=
  ∀ n, (P4374835496127361751.a n : ℤ) = A250128 n

theorem P4374835496127361751.correct : P4374835496127361751.Spec := by
  intro n
  simp only [A250128]

end A250128

/-! ## A250128.P4913887576081505950

`A276797(A273351(n+2))`
-/

namespace A250128.P4913887576081505950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 (A273351 (n + 2)).toNat

end

end A250128.P4913887576081505950

namespace A250128

/-- `A276797(A273351(n+2))` -/
def P4913887576081505950.Spec : Prop :=
  ∀ n, P4913887576081505950.a n = A250128 n

end A250128

/-! ## A250128.P16052055067044453325

`A002265(A255116(n)+A077999(n))`
-/

namespace A250128.P16052055067044453325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A255116 n + A077999 n).toNat

end

end A250128.P16052055067044453325

namespace A250128

/-- `A002265(A255116(n)+A077999(n))` -/
def P16052055067044453325.Spec : Prop :=
  ∀ n, P16052055067044453325.a n = A250128 n

end A250128

/-!
# A250130: Numerator of the harmonic mean of the first n primes.

The programs for A250130, the canonical program `A250130.P14508315065986858238` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250130 has offset 1).

The definition of A250130 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A250130.P14508315065986858238

`(n+1)*A002110(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A250130

/-- `(n+1)*A002110(n+1)` -/
def P14508315065986858238.Spec : Prop :=
  ∀ n, P14508315065986858238.a n = A250130 (n + 1)

theorem P14508315065986858238.correct : P14508315065986858238.Spec := by
  intro n
  simp only [A250130, Nat.add_sub_cancel]

end A250130

/-! ## A250130.P14960332458722466295

`(n+1)*Δ[A143293(n)]`
-/

namespace A250130.P14960332458722466295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A250130.P14960332458722466295

namespace A250130

/-- `(n+1)*Δ[A143293(n)]` -/
def P14960332458722466295.Spec : Prop :=
  ∀ n, P14960332458722466295.a n = A250130 (n + 1)

end A250130

/-! ## A250130.P6346155478672090272

`∑[abs(Δ[n*A002110(n)])]`
-/

namespace A250130.P6346155478672090272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002110 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250130.P6346155478672090272

namespace A250130

/-- `∑[abs(Δ[n*A002110(n)])]` -/
def P6346155478672090272.Spec : Prop :=
  ∀ n, P6346155478672090272.a n = A250130 (n + 1)

end A250130

/-! ## A250130.P7362001723834990250

`(n+1)*A096334(∑[n+1])`
-/

namespace A250130.P7362001723834990250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A096334 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250130.P7362001723834990250

namespace A250130

/-- `(n+1)*A096334(∑[n+1])` -/
def P7362001723834990250.Spec : Prop :=
  ∀ n, P7362001723834990250.a n = A250130 (n + 1)

end A250130

/-! ## A250130.P6278701374652855032

`(n+1)*A098012(∑[n+1])`
-/

namespace A250130.P6278701374652855032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A098012 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250130.P6278701374652855032

namespace A250130

/-- `(n+1)*A098012(∑[n+1])` -/
def P6278701374652855032.Spec : Prop :=
  ∀ n, P6278701374652855032.a n = A250130 (n + 1)

end A250130

/-! ## A250130.P14012360695765091290

`(n+1)*A121281(∑[n+1])`
-/

namespace A250130.P14012360695765091290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A121281 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250130.P14012360695765091290

namespace A250130

/-- `(n+1)*A121281(∑[n+1])` -/
def P14012360695765091290.Spec : Prop :=
  ∀ n, P14012360695765091290.a n = A250130 (n + 1)

end A250130

/-! ## A250130.P3690497538747204681

`(n+1)*A246868(∑[n+1])`
-/

namespace A250130.P3690497538747204681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A246868 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250130.P3690497538747204681

namespace A250130

/-- `(n+1)*A246868(∑[n+1])` -/
def P3690497538747204681.Spec : Prop :=
  ∀ n, P3690497538747204681.a n = A250130 (n + 1)

end A250130

/-! ## A250130.P4337349822682403455

`(n+1)*A264666(∑[n+1])`
-/

namespace A250130.P4337349822682403455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A264666 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250130.P4337349822682403455

namespace A250130

/-- `(n+1)*A264666(∑[n+1])` -/
def P4337349822682403455.Spec : Prop :=
  ∀ n, P4337349822682403455.a n = A250130 (n + 1)

end A250130

/-! ## A250130.P8514553779136348720

`(n+1)*∏[A000040(n+1)]`
-/

namespace A250130.P8514553779136348720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A250130.P8514553779136348720

namespace A250130

/-- `(n+1)*∏[A000040(n+1)]` -/
def P8514553779136348720.Spec : Prop :=
  ∀ n, P8514553779136348720.a n = A250130 (n + 1)

end A250130

/-! ## A250130.P3249311901279621335

`(n+1)*(A057588(n+1)+1)`
-/

namespace A250130.P3249311901279621335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A057588 (n + 1) + 1)

end

end A250130.P3249311901279621335

namespace A250130

/-- `(n+1)*(A057588(n+1)+1)` -/
def P3249311901279621335.Spec : Prop :=
  ∀ n, P3249311901279621335.a n = A250130 (n + 1)

theorem P3249311901279621335.correct : P3249311901279621335.Spec := by
  intro n
  simp only [A250130, Nat.add_sub_cancel, A250130.P3249311901279621335.a, A250130.P14508315065986858238.a, A002110, A002110.P13704446489392701398.a, A057588, A057588.P10863952034039063574.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A250130

/-!
# A250131: a(n) is the odd part of the digital sum of 3^n divided by the maximal possible power of 3.

The programs for A250131, there is no canonical definition to state claims against.
-/

/-! ## A250131.P9214840263471984577

`A065330(A004166(n+1))`
-/

namespace A250131.P9214840263471984577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (A004166 (n + 1)).toNat

end

end A250131.P9214840263471984577

/-! ## A250131.P5205892566881087976

`A065330(∑{digits}[A000244(n+1), #])`
-/

namespace A250131.P5205892566881087976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A250131.P5205892566881087976

/-! ## A250131.P2396765030765347899

`A156243(ceil(ratio[A078867(n+1)])-1)`
-/

namespace A250131.P2396765030765347899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156243 (⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ - 1).toNat

end

end A250131.P2396765030765347899

/-!
# A250132: Numerator of the harmonic mean of the first n composite numbers.

The programs for A250132, there is no canonical definition to state claims against.
-/

/-! ## A250132.P721667521949179678

`A284572(A284571(n+1))*A296358(n+1)`
-/

namespace A250132.P721667521949179678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284572 (A284571 (n + 1)).toNat * A296358 (n + 1)

end

end A250132.P721667521949179678

/-! ## A250132.P985384335913249797

`A282512(n+2)*A284572(A284571(n+1))`
-/

namespace A250132.P985384335913249797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282512 (n + 2) * A284572 (A284571 (n + 1)).toNat

end

end A250132.P985384335913249797

/-! ## A250132.P11456571564217423340

`A282503(A002808(n+1))*A284572(A284571(n+1))`
-/

namespace A250132.P11456571564217423340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282503 (A002808 (n + 1)).toNat * A284572 (A284571 (n + 1)).toNat

end

end A250132.P11456571564217423340

/-! ## A250132.P7483163471160072403

`A282503(A018252(n+2))*A284572(A284571(n+1))`
-/

namespace A250132.P7483163471160072403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282503 (A018252 (n + 2)).toNat * A284572 (A284571 (n + 1)).toNat

end

end A250132.P7483163471160072403

/-! ## A250132.P16919742138023455172

`A257738(A257737(n+1))*A296358(n+1)`
-/

namespace A250132.P16919742138023455172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257738 (A257737 (n + 1)).toNat * A296358 (n + 1)

end

end A250132.P16919742138023455172

/-!
# A250133: Denominator of the harmonic mean of the first n composite numbers.

The programs for A250133, there is no canonical definition to state claims against.
-/

/-! ## A250133.P15912256746469869287

`A282511(n+2)-A296358(n+1)`
-/

namespace A250133.P15912256746469869287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282511 (n + 2) - A296358 (n + 1)

end

end A250133.P15912256746469869287

/-! ## A250133.P15291042310602104420

`A282511(n+2)-A282512(n+2)`
-/

namespace A250133.P15291042310602104420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282511 (n + 2) - A282512 (n + 2)

end

end A250133.P15291042310602104420

/-! ## A250133.P8092134182268938995

`A282511(n+2)-A282503(A018252(n+2))`
-/

namespace A250133.P8092134182268938995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282511 (n + 2) - A282503 (A018252 (n + 2)).toNat

end

end A250133.P8092134182268938995

/-! ## A250133.P4602781511429670725

`A282511(n+2)-A282503(comp[C(A006530(n+1), n)])`
-/

namespace A250133.P4602781511429670725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282511 (n + 2) - A282503 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A250133.P4602781511429670725

/-! ## A250133.P4046122682267040231

`A282511(n+2)-A282503(comp[C(A014963(n+1), n)])`
-/

namespace A250133.P4046122682267040231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014963 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282511 (n + 2) - A282503 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A250133.P4046122682267040231

/-!
# A250134: Number of length n+2 0..2 arrays with the medians of every three consecutive terms nondecreasing.

The programs for A250134, there is no canonical definition to state claims against.
-/

/-! ## A250134.P18162750741120940903

`A250140(∑[n+2])`
-/

namespace A250134.P18162750741120940903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250134.P18162750741120940903

/-! ## A250134.P15139206188676820729

`record[A250140(A000096(A154958(n)))]`
-/

namespace A250134.P15139206188676820729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A000096 (A154958 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250134.P15139206188676820729

/-! ## A250134.P15578571877918985462

`record[A250140(A000096(A324345(n)))]`
-/

namespace A250134.P15578571877918985462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A000096 (A324345 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250134.P15578571877918985462

/-! ## A250134.P517353475543541688

`record[A250140(A000096(A002260(n+1)))]`
-/

namespace A250134.P517353475543541688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250134.P517353475543541688

/-! ## A250134.P10628012090381681556

`record[A250140(A000096(A004736(n+1)))]`
-/

namespace A250134.P10628012090381681556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250134.P10628012090381681556

/-! ## A250134.P91608582162564141

`record[A250140(A000096(A027750(n+1)))]`
-/

namespace A250134.P91608582162564141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A000096 (A027750 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250134.P91608582162564141

/-! ## A250134.P4157303639456546122

`record[A250140(A000096(A032742(n+1)))]`
-/

namespace A250134.P4157303639456546122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A000096 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250134.P4157303639456546122

/-! ## A250134.P10066901408208676101

`record[A250140(A000096(A144328(n+1)))]`
-/

namespace A250134.P10066901408208676101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A000096 (A144328 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250134.P10066901408208676101

/-! ## A250134.P17968024490577461672

`root(A250505(n+1), 3)`
-/

namespace A250134.P17968024490577461672
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250505 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A250134.P17968024490577461672

/-!
# A250135: Number of length n+2 0..3 arrays with the medians of every three consecutive terms nondecreasing.

The programs for A250135, there is no canonical definition to state claims against.
-/

/-! ## A250135.P4082629407623779027

`A250140(∑[n+3]+1)`
-/

namespace A250135.P4082629407623779027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250135.P4082629407623779027

/-! ## A250135.P4651667804820894517

`A250140(A034856(n+2))+and(n, 6*2^n)`
-/

namespace A250135.P4651667804820894517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A034856 (n + 2)).toNat + (Nat.land n (6 * 2 ^ n) : ℤ)

end

end A250135.P4651667804820894517

/-! ## A250135.P16386216946905318875

`A250140(A034856(n+2))+A000007(n+1)`
-/

namespace A250135.P16386216946905318875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A034856 (n + 2)).toNat + A000007 (n + 1)

end

end A250135.P16386216946905318875

/-! ## A250135.P688368816929048561

`A250140(A034856(n+2))%A205627(n+1)`
-/

namespace A250135.P688368816929048561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250140 (A034856 (n + 2)).toNat) (A205627 (n + 1))

end

end A250135.P688368816929048561

/-! ## A250135.P13849019218461829854

`A001222(A001134(n+1))*A250140(A034856(n+2))`
-/

namespace A250135.P13849019218461829854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001134 (n + 1)).toNat * A250140 (A034856 (n + 2)).toNat

end

end A250135.P13849019218461829854

/-! ## A250135.P17526007695969117764

`A001222(A006562(n+1))*A250140(A034856(n+2))`
-/

namespace A250135.P17526007695969117764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006562 (n + 1)).toNat * A250140 (A034856 (n + 2)).toNat

end

end A250135.P17526007695969117764

/-!
# A250136: Number of length n+2 0..4 arrays with the medians of every three consecutive terms nondecreasing.

The programs for A250136, there is no canonical definition to state claims against.
-/

/-! ## A250136.P1099771224190648412

`A250140(A027379(n+2))`
-/

namespace A250136.P1099771224190648412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A027379 (n + 2)).toNat

end

end A250136.P1099771224190648412

/-! ## A250136.P16169552297301939053

`A250140(A055998(n+2))`
-/

namespace A250136.P16169552297301939053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A055998 (n + 2)).toNat

end

end A250136.P16169552297301939053

/-! ## A250136.P11849757612405195252

`A250140(A056000(n)+7)`
-/

namespace A250136.P11849757612405195252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A056000 n + 7).toNat

end

end A250136.P11849757612405195252

/-! ## A250136.P6354286514722035737

`A250140(Δ[A006503(n+1)])`
-/

namespace A250136.P6354286514722035737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (f1 (n + 1) - f1 n).toNat

end

end A250136.P6354286514722035737

/-! ## A250136.P5252719979040248696

`A250140(A052905(n+1)+2)`
-/

namespace A250136.P5252719979040248696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A052905 (n + 1) + 2).toNat

end

end A250136.P5252719979040248696

/-! ## A250136.P4825478004074433907

`A250140(A167614(n+1)+Δ[n²])`
-/

namespace A250136.P4825478004074433907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A167614 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A250136.P4825478004074433907

/-! ## A250136.P9109188698472641861

`A250140(A167499(n)+A016777(n))`
-/

namespace A250136.P9109188698472641861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A167499 n + A016777 n).toNat

end

end A250136.P9109188698472641861

/-! ## A250136.P18428340828194877745

`A250140(Δ[A208341(A167614(n+1))])`
-/

namespace A250136.P18428340828194877745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (f1 (n + 1) - f1 n).toNat

end

end A250136.P18428340828194877745

/-!
# A250137: Number of length n+2 0..5 arrays with the medians of every three consecutive terms nondecreasing.

The programs for A250137, there is no canonical definition to state claims against.
-/

/-! ## A250137.P6366138493155019997

`A250140(A046691(n+3))`
-/

namespace A250137.P6366138493155019997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A046691 (n + 3)).toNat

end

end A250137.P6366138493155019997

/-! ## A250137.P5769536318936296665

`A250140(Δ[A023545(n+1)])`
-/

namespace A250137.P5769536318936296665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (f1 (n + 1) - f1 n).toNat

end

end A250137.P5769536318936296665

/-! ## A250137.P3169077895012602670

`A250140(A000096(n+4)-3)`
-/

namespace A250137.P3169077895012602670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A000096 (n + 4) - 3).toNat

end

end A250137.P3169077895012602670

/-! ## A250137.P15616470512797343781

`A250140(A000124(n+4)+n)`
-/

namespace A250137.P15616470512797343781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A000124 (n + 4) + (n : ℤ)).toNat

end

end A250137.P15616470512797343781

/-! ## A250137.P6743780795520175709

`A250140(A000217(n+6)-(n+10))`
-/

namespace A250137.P6743780795520175709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A000217 (n + 6) - (n + 10 : ℤ)).toNat

end

end A250137.P6743780795520175709

/-! ## A250137.P17408590264453734972

`A250140(A167614(n+1)+3*n+5)`
-/

namespace A250137.P17408590264453734972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A167614 (n + 1) + (3 * n + 5 : ℤ)).toNat

end

end A250137.P17408590264453734972

/-!
# A250138: Number of length n+2 0..6 arrays with the medians of every three consecutive terms nondecreasing.

The programs for A250138, there is no canonical definition to state claims against.
-/

/-! ## A250138.P3886692706818699753

`A250140(A052905(n+3))`
-/

namespace A250138.P3886692706818699753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A052905 (n + 3)).toNat

end

end A250138.P3886692706818699753

/-! ## A250138.P17090762272002521103

`A250140(A000217(n+6)-5)`
-/

namespace A250138.P17090762272002521103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A000217 (n + 6) - 5).toNat

end

end A250138.P17090762272002521103

/-! ## A250138.P16130484258993155012

`A250140(A000124(n+6)-6)`
-/

namespace A250138.P16130484258993155012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A000124 (n + 6) - 6).toNat

end

end A250138.P16130484258993155012

/-! ## A250138.P4628710123136101771

`A250140(Δ[A023545(n+2)]-1)`
-/

namespace A250138.P4628710123136101771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (f1 (n + 1) - f1 n - 1).toNat

end

end A250138.P4628710123136101771

/-! ## A250138.P17721519708227339542

`A250140(Δ[A026054(n+3)]+1)`
-/

namespace A250138.P17721519708227339542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (f1 (n + 1) - f1 n + 1).toNat

end

end A250138.P17721519708227339542

/-! ## A250138.P8301424003849700158

`A250140(A167614(n+1)+4*n+10)`
-/

namespace A250138.P8301424003849700158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A167614 (n + 1) + (4 * n + 10 : ℤ)).toNat

end

end A250138.P8301424003849700158

/-! ## A250138.P6515064300214375720

`A250140(eq[5, A002262(n)]-A022960(n))`
-/

namespace A250138.P6515064300214375720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A022960 n).toNat

end

end A250138.P6515064300214375720

/-!
# A250139: Number of length n+2 0..7 arrays with the medians of every three consecutive terms nondecreasing.

The programs for A250139, there is no canonical definition to state claims against.
-/

/-! ## A250139.P4116254312880183792

`A250140(A055999(n+4))`
-/

namespace A250139.P4116254312880183792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A055999 (n + 4)).toNat

end

end A250139.P4116254312880183792

/-! ## A250139.P14389469271745272479

`A250140(Δ[A026054(n+4)])`
-/

namespace A250139.P14389469271745272479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (f1 (n + 1) - f1 n).toNat

end

end A250139.P14389469271745272479

/-! ## A250139.P13921497214295302580

`A250140(A000217(n+7)-6)`
-/

namespace A250139.P13921497214295302580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A000217 (n + 7) - 6).toNat

end

end A250139.P13921497214295302580

/-! ## A250139.P7291306083894754392

`A250140(A000124(n+7)-7)`
-/

namespace A250139.P7291306083894754392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A000124 (n + 7) - 7).toNat

end

end A250139.P7291306083894754392

/-! ## A250139.P3062914482603591300

`A250140(eq[5, A002262(n)]+2*(n+1))`
-/

namespace A250139.P3062914482603591300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2 * (n + 1))

end

end A250139.P3062914482603591300

/-! ## A250139.P4595183390714448735

`A250140(A008586(n+3)+Δ[A006503(n)]+7)`
-/

namespace A250139.P4595183390714448735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A008586 (n + 3) + (f1 (n + 1) - f1 n + 7)).toNat

end

end A250139.P4595183390714448735

/-!
# A250141: Number of length 2+2 0..n arrays with the medians of every three consecutive terms nondecreasing.

The programs for A250141, the canonical program `A250141.P1700125960155608396` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250141 has offset 1).

The definition of A250141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250141.P1700125960155608396

`C(2*(n+3), 4)-∑[n+1]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A250141

/-- `C(2*(n+3), 4)-∑[n+1]` -/
def P1700125960155608396.Spec : Prop :=
  ∀ n, P1700125960155608396.a n = A250141 (n + 1)

theorem P1700125960155608396.correct : P1700125960155608396.Spec := by
  intro n
  simp only [A250141, Nat.add_sub_cancel]

end A250141

/-! ## A250141.P18291667394035728077

`∑[∑[∑[16*n+12]]]+n+2`
-/

namespace A250141.P18291667394035728077
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n + 12

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 2)

end

end A250141.P18291667394035728077

namespace A250141

/-- `∑[∑[∑[16*n+12]]]+n+2` -/
def P18291667394035728077.Spec : Prop :=
  ∀ n, (P18291667394035728077.a n : ℤ) = A250141 (n + 1)

end A250141

/-! ## A250141.P7132662138955040216

`Δ[A271870(n)+A004320(n)]`
-/

namespace A250141.P7132662138955040216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271870 n + A004320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250141.P7132662138955040216

namespace A250141

/-- `Δ[A271870(n)+A004320(n)]` -/
def P7132662138955040216.Spec : Prop :=
  ∀ n, P7132662138955040216.a n = A250141 (n + 1)

end A250141

/-! ## A250141.P874866033506989159

`abs(∑[A100157(n+2)]-A000096(n))`
-/

namespace A250141.P874866033506989159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100157 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - A000096 n|

end

end A250141.P874866033506989159

namespace A250141

/-- `abs(∑[A100157(n+2)]-A000096(n))` -/
def P874866033506989159.Spec : Prop :=
  ∀ n, P874866033506989159.a n = A250141 (n + 1)

end A250141

/-! ## A250141.P217942286301948970

`abs(A000217(n+1)-A053134(n+1))`
-/

namespace A250141.P217942286301948970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000217 (n + 1) - A053134 (n + 1)|

end

end A250141.P217942286301948970

namespace A250141

/-- `abs(A000217(n+1)-A053134(n+1))` -/
def P217942286301948970.Spec : Prop :=
  ∀ n, P217942286301948970.a n = A250141 (n + 1)

end A250141

/-! ## A250141.P14864823584587707976

`Δ[A001753(2*n)-A000292(n)]`
-/

namespace A250141.P14864823584587707976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001753 (2 * n) - A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250141.P14864823584587707976

namespace A250141

/-- `Δ[A001753(2*n)-A000292(n)]` -/
def P14864823584587707976.Spec : Prop :=
  ∀ n, P14864823584587707976.a n = A250141 (n + 1)

end A250141

/-! ## A250141.P13503993151436788132

`A250140(∑[n+1]+2)`
-/

namespace A250141.P13503993151436788132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250141.P13503993151436788132

namespace A250141

/-- `A250140(∑[n+1]+2)` -/
def P13503993151436788132.Spec : Prop :=
  ∀ n, P13503993151436788132.a n = A250141 (n + 1)

end A250141

/-! ## A250141.P10218220759719072439

`A250140(A133263(n+1))%A235878(n+1)`
-/

namespace A250141.P10218220759719072439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250140 (A133263 (n + 1)).toNat) (A235878 (n + 1))

end

end A250141.P10218220759719072439

namespace A250141

/-- `A250140(A133263(n+1))%A235878(n+1)` -/
def P10218220759719072439.Spec : Prop :=
  ∀ n, P10218220759719072439.a n = A250141 (n + 1)

end A250141

/-!
# A250142: Number of length 3+2 0..n arrays with the medians of every three consecutive terms nondecreasing.

The programs for A250142, there is no canonical definition to state claims against.
-/

/-! ## A250142.P2650948086495246604

`A250140(∑[n+2]+4)`
-/

namespace A250142.P2650948086495246604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250142.P2650948086495246604

/-! ## A250142.P9053411423579614851

`or(char[3], A250140(A167614(n+1)))`
-/

namespace A250142.P9053411423579614851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A250140 (A167614 (n + 1)).toNat)

end

end A250142.P9053411423579614851

/-! ## A250142.P9592881643283829739

`lcm(A033999(n), A250140(A055998(n)+6))`
-/

namespace A250142.P9592881643283829739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A250140 (A055998 n + 6).toNat)

end

end A250142.P9592881643283829739

/-! ## A250142.P11059987239328377829

`A250140(A167614(n+1))+A000007(n+1)`
-/

namespace A250142.P11059987239328377829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A250142.P11059987239328377829

/-! ## A250142.P3360280857266082919

`A250140(A167614(n+1))+A253885(n)%2`
-/

namespace A250142.P3360280857266082919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A167614 (n + 1)).toNat + Int.tmod (A253885 n) 2

end

end A250142.P3360280857266082919

/-! ## A250142.P16168448989043150874

`A000213(C(2, n))*A250140(A167614(n+1))`
-/

namespace A250142.P16168448989043150874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (Nat.choose 2 n) * A250140 (A167614 (n + 1)).toNat

end

end A250142.P16168448989043150874

/-! ## A250142.P15201933047954366506

`A250140(A167614(n+1))+A127323(A112316(n))`
-/

namespace A250142.P15201933047954366506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A167614 (n + 1)).toNat + A127323 (A112316 n).toNat

end

end A250142.P15201933047954366506

/-! ## A250142.P13360760006836917326

`A250140(A167614(n+1))%A234412(n+1)`
-/

namespace A250142.P13360760006836917326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250140 (A167614 (n + 1)).toNat) (A234412 (n + 1))

end

end A250142.P13360760006836917326

/-!
# A250143: Number of length 4+2 0..n arrays with the medians of every three consecutive terms nondecreasing.

The programs for A250143, there is no canonical definition to state claims against.
-/

/-! ## A250143.P11926123963824263310

`A250140(A052905(n)+9)`
-/

namespace A250143.P11926123963824263310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A052905 n + 9).toNat

end

end A250143.P11926123963824263310

/-! ## A250143.P12721488587826266427

`A250140(A055999(n)+10)`
-/

namespace A250143.P12721488587826266427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A055999 n + 10).toNat

end

end A250143.P12721488587826266427

/-! ## A250143.P14992408988751786054

`A250140(A167614(n+2)+1)`
-/

namespace A250143.P14992408988751786054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A167614 (n + 2) + 1).toNat

end

end A250143.P14992408988751786054

/-! ## A250143.P3768663416027652672

`A250140(A167499(n+2)-1)`
-/

namespace A250143.P3768663416027652672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A167499 (n + 2) - 1).toNat

end

end A250143.P3768663416027652672

/-! ## A250143.P10289166347830002213

`A250140(A166136(n+2)-2)`
-/

namespace A250143.P10289166347830002213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A166136 (n + 2) - 2).toNat

end

end A250143.P10289166347830002213

/-! ## A250143.P5883430529003676351

`A250140(A167487(n+2)-3)`
-/

namespace A250143.P5883430529003676351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A167487 (n + 2) - 3).toNat

end

end A250143.P5883430529003676351

/-! ## A250143.P18261597244011984182

`A250140(A000217(n+3)+4)`
-/

namespace A250143.P18261597244011984182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A000217 (n + 3) + 4).toNat

end

end A250143.P18261597244011984182

/-! ## A250143.P12998143825776382611

`A250140(A055998(n+1)+7)`
-/

namespace A250143.P12998143825776382611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A055998 (n + 1) + 7).toNat

end

end A250143.P12998143825776382611

/-! ## A250143.P14186016973327360381

`A250140(A166136(n+1)+1+n)`
-/

namespace A250143.P14186016973327360381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A250143.P14186016973327360381

/-! ## A250143.P819985098448618488

`A250140(Δ[A023545(n+1)-n²])`
-/

namespace A250143.P819985098448618488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (f1 (n + 1) - f1 n).toNat

end

end A250143.P819985098448618488

/-!
# A250144: Number of length 5+2 0..n arrays with the medians of every three consecutive terms nondecreasing.

The programs for A250144, there is no canonical definition to state claims against.
-/

/-! ## A250144.P13954696742873845999

`A250140(A167499(n+3))`
-/

namespace A250144.P13954696742873845999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A167499 (n + 3)).toNat

end

end A250144.P13954696742873845999

/-! ## A250144.P14767780169744622873

`A250140(A000124(n+4)+4)`
-/

namespace A250144.P14767780169744622873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A000124 (n + 4) + 4).toNat

end

end A250144.P14767780169744622873

/-! ## A250144.P7555078790351748911

`A250140(A000096(n+3)+6)`
-/

namespace A250144.P7555078790351748911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A000096 (n + 3) + 6).toNat

end

end A250144.P7555078790351748911

/-! ## A250144.P9307550540895834012

`A250140(A000217(n+4)+5)`
-/

namespace A250144.P9307550540895834012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A000217 (n + 4) + 5).toNat

end

end A250144.P9307550540895834012

/-! ## A250144.P489559888288050596

`A250140(Δ[8*n+A006503(n+1)])`
-/

namespace A250144.P489559888288050596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) + A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (f1 (n + 1) - f1 n).toNat

end

end A250144.P489559888288050596

/-! ## A250144.P3849946996876355432

`A250140(A052905(n+3)-(2*n+1))`
-/

namespace A250144.P3849946996876355432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A250144.P3849946996876355432

/-! ## A250144.P107797168602080135

`A250140(A166136(n+1)+A020739(n))`
-/

namespace A250144.P107797168602080135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A166136 (n + 1) + A020739 n).toNat

end

end A250144.P107797168602080135

/-!
# A250145: Number of length 6+2 0..n arrays with the medians of every three consecutive terms nondecreasing.

The programs for A250145, there is no canonical definition to state claims against.
-/

/-! ## A250145.P5709646482044672792

`A250140(A167499(n+4)+1)`
-/

namespace A250145.P5709646482044672792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A167499 (n + 4) + 1).toNat

end

end A250145.P5709646482044672792

/-! ## A250145.P11794517860242006386

`A250140(A000217(n+5)+6)`
-/

namespace A250145.P11794517860242006386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A000217 (n + 5) + 6).toNat

end

end A250145.P11794517860242006386

/-! ## A250145.P6726544510134933129

`A250140(A038722(A052905(n+3)))`
-/

namespace A250145.P6726544510134933129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A038722 (A052905 (n + 3)).toNat).toNat

end

end A250145.P6726544510134933129

/-! ## A250145.P2168354811880752108

`A250140(A002620(n+2)+A002620(n+9))`
-/

namespace A250145.P2168354811880752108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A250145.P2168354811880752108

/-! ## A250145.P9308023307227814183

`A250140(A167487(n)+Δ[A167487(2*(n+2))])`
-/

namespace A250145.P9308023307227814183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167487 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A167487 n + (f1 (n + 1) - f1 n)).toNat

end

end A250145.P9308023307227814183

/-!
# A250146: Number of length 7+2 0..n arrays with the medians of every three consecutive terms nondecreasing.

The programs for A250146, there is no canonical definition to state claims against.
-/

/-! ## A250146.P6352800529701503504

`A250140(A166136(n+5)+1)`
-/

namespace A250146.P6352800529701503504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A166136 (n + 5) + 1).toNat

end

end A250146.P6352800529701503504

/-! ## A250146.P14464571797150358516

`A250140(A167499(n+5)+2)`
-/

namespace A250146.P14464571797150358516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A167499 (n + 5) + 2).toNat

end

end A250146.P14464571797150358516

/-! ## A250146.P10849497767447332922

`A250140(A000096(n+5)+8)`
-/

namespace A250146.P10849497767447332922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A000096 (n + 5) + 8).toNat

end

end A250146.P10849497767447332922

/-! ## A250146.P6314872417581566868

`A250140(A000217(n+6)+7)`
-/

namespace A250146.P6314872417581566868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A000217 (n + 6) + 7).toNat

end

end A250146.P6314872417581566868

/-! ## A250146.P5825667282413950200

`A250140(A055999(n+5)-A005843(n+1))`
-/

namespace A250146.P5825667282413950200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A055999 (n + 5) - A005843 (n + 1)).toNat

end

end A250146.P5825667282413950200

/-! ## A250146.P13996978671131875988

`A250140(A055998(n+6)-A005408(n+2))`
-/

namespace A250146.P13996978671131875988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A055998 (n + 6) - A005408 (n + 2)).toNat

end

end A250146.P13996978671131875988

/-!
# A250147: Number of length n+6 0..1 arrays with every seven consecutive terms having the maximum of some two terms equal to the minimum of the remaining five terms.

The programs for A250147, there is no canonical definition to state claims against.
-/

/-! ## A250147.P15523822239580816401

`A250154(∑[n+1])`
-/

namespace A250147.P15523822239580816401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250147.P15523822239580816401

/-! ## A250147.P5677116301980108671

`record[A103452(n)*A250154(n+1)]`
-/

namespace A250147.P5677116301980108671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A250154 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250147.P5677116301980108671

/-! ## A250147.P13736837062756833284

`record[root(A250154(n+1), A078812(n))]`
-/

namespace A250147.P13736837062756833284
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250154 (n + 1) : ℝ) ^ (1 / (A078812 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250147.P13736837062756833284

/-! ## A250147.P2286787192374173119

`record[gcd(A025581(n), A250154(n+1))]`
-/

namespace A250147.P2286787192374173119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A250154 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250147.P2286787192374173119

/-! ## A250147.P13434746937807394249

`record[A250154(A000217(A003602(n+1)))]`
-/

namespace A250147.P13434746937807394249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A000217 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250147.P13434746937807394249

/-!
# A250148: Number of length n+6 0..2 arrays with every seven consecutive terms having the maximum of some two terms equal to the minimum of the remaining five terms.

The programs for A250148, there is no canonical definition to state claims against.
-/

/-! ## A250148.P14544883569206061554

`A250154(∑[n+2])`
-/

namespace A250148.P14544883569206061554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250148.P14544883569206061554

/-! ## A250148.P9206471299889177723

`record[A250154(A000096(A002260(n+1)))]`
-/

namespace A250148.P9206471299889177723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250148.P9206471299889177723

/-! ## A250148.P6284126565711171272

`record[A250154(A000096(A003602(n+1)))]`
-/

namespace A250148.P6284126565711171272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A000096 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250148.P6284126565711171272

/-! ## A250148.P11787768520097631470

`record[A250154(A000096(A241915(n+1)))]`
-/

namespace A250148.P11787768520097631470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A000096 (A241915 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250148.P11787768520097631470

/-!
# A250149: Number of length n+6 0..3 arrays with every seven consecutive terms having the maximum of some two terms equal to the minimum of the remaining five terms.

The programs for A250149, there is no canonical definition to state claims against.
-/

/-! ## A250149.P8982434474707891110

`A250154(∑[n+3]+1)`
-/

namespace A250149.P8982434474707891110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250149.P8982434474707891110

/-! ## A250149.P14380694018007947450

`lcm(2, A250154(A034856(n+2)))`
-/

namespace A250149.P14380694018007947450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250154 (A034856 (n + 2)).toNat)

end

end A250149.P14380694018007947450

/-! ## A250149.P12418949368443021938

`abs(A020985(n)*A250154(A034856(n+2)))`
-/

namespace A250149.P12418949368443021938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020985 n * A250154 (A034856 (n + 2)).toNat|

end

end A250149.P12418949368443021938

/-! ## A250149.P16647186568174020162

`A168269(n+1)%2*A250154(A034856(n+2))`
-/

namespace A250149.P16647186568174020162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168269 (n + 1)) 2 * A250154 (A034856 (n + 2)).toNat

end

end A250149.P16647186568174020162

/-! ## A250149.P2077299171048604579

`A250154(A034856(n+2))+A008683(12*n+8)`
-/

namespace A250149.P2077299171048604579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A034856 (n + 2)).toNat + A008683 (12 * n + 8)

end

end A250149.P2077299171048604579

/-! ## A250149.P18161920059670905377

`A060576(A071648(n+1))*A250154(A034856(n+2))`
-/

namespace A250149.P18161920059670905377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A071648 (n + 1)).toNat * A250154 (A034856 (n + 2)).toNat

end

end A250149.P18161920059670905377

/-!
# A250150: Number of length n+6 0..4 arrays with every seven consecutive terms having the maximum of some two terms equal to the minimum of the remaining five terms.

The programs for A250150, there is no canonical definition to state claims against.
-/

/-! ## A250150.P12963100486256613768

`A250154(A027379(n+2))`
-/

namespace A250150.P12963100486256613768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A027379 (n + 2)).toNat

end

end A250150.P12963100486256613768

/-! ## A250150.P11685215639574549050

`A250154(A055998(n+2))`
-/

namespace A250150.P11685215639574549050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A055998 (n + 2)).toNat

end

end A250150.P11685215639574549050

/-! ## A250150.P11258291528921311453

`A250154(Δ[A034857(n+1)])`
-/

namespace A250150.P11258291528921311453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (f1 (n + 1) - f1 n).toNat

end

end A250150.P11258291528921311453

/-! ## A250150.P8820891762487188828

`A250154(A052905(n+1)+2)`
-/

namespace A250150.P8820891762487188828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A052905 (n + 1) + 2).toNat

end

end A250150.P8820891762487188828

/-! ## A250150.P16578279747383546042

`A250154(A167614(n+1)+A005408(n))`
-/

namespace A250150.P16578279747383546042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A167614 (n + 1) + A005408 n).toNat

end

end A250150.P16578279747383546042

/-!
# A250151: Number of length n+6 0..5 arrays with every seven consecutive terms having the maximum of some two terms equal to the minimum of the remaining five terms.

The programs for A250151, there is no canonical definition to state claims against.
-/

/-! ## A250151.P6940939206875085868

`A250154(A046691(n+3))`
-/

namespace A250151.P6940939206875085868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A046691 (n + 3)).toNat

end

end A250151.P6940939206875085868

/-! ## A250151.P8775431254521517141

`A250154(Δ[A023545(n+1)])`
-/

namespace A250151.P8775431254521517141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (f1 (n + 1) - f1 n).toNat

end

end A250151.P8775431254521517141

/-! ## A250151.P4853867800958512726

`A250154(A000124(n+5)-5)`
-/

namespace A250151.P4853867800958512726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A000124 (n + 5) - 5).toNat

end

end A250151.P4853867800958512726

/-! ## A250151.P775618915857013125

`A250154(Δ[A034857(n+2)]-1)`
-/

namespace A250151.P775618915857013125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (f1 (n + 1) - f1 n - 1).toNat

end

end A250151.P775618915857013125

/-! ## A250151.P15612064985112852772

`A250154(A161680(n)+6*n+11)`
-/

namespace A250151.P15612064985112852772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A161680 n + (6 * n + 11 : ℤ)).toNat

end

end A250151.P15612064985112852772

/-! ## A250151.P7477900022805663928

`A250154(round(sqrt((A000217(n+5)-5)²+1))+1)`
-/

namespace A250151.P7477900022805663928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (SequenceMachineLib.roundAway (Real.sqrt ((A000217 (n + 5) - 5) ^ 2 + 1 : ℝ)) + 1).toNat

end

end A250151.P7477900022805663928

/-! ## A250151.P17640537906167725127

`A250154(A167487(n+6)-A005843(n+12))`
-/

namespace A250151.P17640537906167725127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A167487 (n + 6) - A005843 (n + 12)).toNat

end

end A250151.P17640537906167725127

/-!
# A250152: Number of length n+6 0..6 arrays with every seven consecutive terms having the maximum of some two terms equal to the minimum of the remaining five terms.

The programs for A250152, there is no canonical definition to state claims against.
-/

/-! ## A250152.P11510222930680095415

`A250154(A052905(n+3))`
-/

namespace A250152.P11510222930680095415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A052905 (n + 3)).toNat

end

end A250152.P11510222930680095415

/-! ## A250152.P15202994311168181486

`A250154(A000217(n+6)-5)`
-/

namespace A250152.P15202994311168181486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A000217 (n + 6) - 5).toNat

end

end A250152.P15202994311168181486

/-! ## A250152.P1552321622217147246

`A250154(Δ[Δ[A006504(n+1)]])`
-/

namespace A250152.P1552321622217147246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (f1 (n + 1) - f1 n).toNat

end

end A250152.P1552321622217147246

/-! ## A250152.P12223451413660013704

`A250154(Δ[A023551(n+1)]+1)`
-/

namespace A250152.P12223451413660013704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (f1 (n + 1) - f1 n + 1).toNat

end

end A250152.P12223451413660013704

/-! ## A250152.P15914714477946638245

`A250154(Δ[A023545(n+2)]-1)`
-/

namespace A250152.P15914714477946638245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (f1 (n + 1) - f1 n - 1).toNat

end

end A250152.P15914714477946638245

/-! ## A250152.P13859017045833492426

`A250154(A046691(n+6)-A005843(n+8))`
-/

namespace A250152.P13859017045833492426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A046691 (n + 6) - A005843 (n + 8)).toNat

end

end A250152.P13859017045833492426

/-! ## A250152.P8475148103676698408

`A250154(A046691(n)+Δ[A046691(2*n+5)])`
-/

namespace A250152.P8475148103676698408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A046691 n + (f1 (n + 1) - f1 n)).toNat

end

end A250152.P8475148103676698408

/-!
# A250153: Number of length n+6 0..7 arrays with every seven consecutive terms having the maximum of some two terms equal to the minimum of the remaining five terms.

The programs for A250153, there is no canonical definition to state claims against.
-/

/-! ## A250153.P200867196851938934

`A250154(A055999(n+4))`
-/

namespace A250153.P200867196851938934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A055999 (n + 4)).toNat

end

end A250153.P200867196851938934

/-! ## A250153.P1082017965716552581

`A250154(Δ[A023551(n+2)])`
-/

namespace A250153.P1082017965716552581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (f1 (n + 1) - f1 n).toNat

end

end A250153.P1082017965716552581

/-! ## A250153.P3579710795031494830

`A250154(A046691(n+5)-2)`
-/

namespace A250153.P3579710795031494830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A046691 (n + 5) - 2).toNat

end

end A250153.P3579710795031494830

/-! ## A250153.P5243121891135223766

`A250154(A000124(n+7)-7)`
-/

namespace A250153.P5243121891135223766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A000124 (n + 7) - 7).toNat

end

end A250153.P5243121891135223766

/-! ## A250153.P7267341482636781866

`A250154(A000096(n+5)+n+2)`
-/

namespace A250153.P7267341482636781866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A250153.P7267341482636781866

/-! ## A250153.P8858067050017524613

`A250154(n+1+A000217(n+6))`
-/

namespace A250153.P8858067050017524613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 ((n + 1 : ℤ) + A000217 (n + 6)).toNat

end

end A250153.P8858067050017524613

/-!
# A250155: Number of length 1+6 0..n arrays with every seven consecutive terms having the maximum of some two terms equal to the minimum of the remaining five terms.

The programs for A250155, the canonical program `A250155.P12803802932175960487` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250155 has offset 1).

The definition of A250155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250155.P12803802932175960487

`(n+2)^7-A250060(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A250155

/-- `(n+2)^7-A250060(n+1)` -/
def P12803802932175960487.Spec : Prop :=
  ∀ n, P12803802932175960487.a n = A250155 (n + 1)

theorem P12803802932175960487.correct : P12803802932175960487.Spec := by
  intro n
  simp only [A250155, Nat.add_sub_cancel]

end A250155

/-! ## A250155.P3765409769997184368

`A250154(∑[n]+1)`
-/

namespace A250155.P3765409769997184368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250155.P3765409769997184368

namespace A250155

/-- `A250154(∑[n]+1)` -/
def P3765409769997184368.Spec : Prop :=
  ∀ n, P3765409769997184368.a n = A250155 (n + 1)

end A250155

/-! ## A250155.P17185559376235323007

`record[A010054(n)*A250154(n+1)]`
-/

namespace A250155.P17185559376235323007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A250154 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250155.P17185559376235323007

namespace A250155

/-- `record[A010054(n)*A250154(n+1)]` -/
def P17185559376235323007.Spec : Prop :=
  ∀ n, P17185559376235323007.a n = A250155 (n + 1)

end A250155

/-! ## A250155.P16961805114542534133

`record[gcd(A002262(n), A250154(n+1))]`
-/

namespace A250155.P16961805114542534133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A250154 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250155.P16961805114542534133

namespace A250155

/-- `record[gcd(A002262(n), A250154(n+1))]` -/
def P16961805114542534133.Spec : Prop :=
  ∀ n, (P16961805114542534133.a n : ℤ) = A250155 (n + 1)

end A250155

/-! ## A250155.P14548041879815574976

`record[(2-A002260(n+1))*A250154(n+1)]`
-/

namespace A250155.P14548041879815574976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A002260 (n + 1)) * A250154 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250155.P14548041879815574976

namespace A250155

/-- `record[(2-A002260(n+1))*A250154(n+1)]` -/
def P14548041879815574976.Spec : Prop :=
  ∀ n, P14548041879815574976.a n = A250155 (n + 1)

end A250155

/-! ## A250155.P17415461292045355381

`record[A250154(A038722(A255548(n+1)))]`
-/

namespace A250155.P17415461292045355381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A038722 (A255548 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250155.P17415461292045355381

namespace A250155

/-- `record[A250154(A038722(A255548(n+1)))]` -/
def P17415461292045355381.Spec : Prop :=
  ∀ n, P17415461292045355381.a n = A250155 (n + 1)

end A250155

/-! ## A250155.P13699010524395187155

`A250154(A000124(n))%A250145(n+1)`
-/

namespace A250155.P13699010524395187155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250154 (A000124 n).toNat) (A250145 (n + 1))

end

end A250155.P13699010524395187155

namespace A250155

/-- `A250154(A000124(n))%A250145(n+1)` -/
def P13699010524395187155.Spec : Prop :=
  ∀ n, P13699010524395187155.a n = A250155 (n + 1)

end A250155

/-!
# A250156: Number of length 2+6 0..n arrays with every seven consecutive terms having the maximum of some two terms equal to the minimum of the remaining five terms.

The programs for A250156, there is no canonical definition to state claims against.
-/

/-! ## A250156.P16768444641281807438

`A250154(∑[n+1]+2)`
-/

namespace A250156.P16768444641281807438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250156.P16768444641281807438

/-! ## A250156.P5738852305042899482

`record[A250154(A133263(abs(1-n)))]`
-/

namespace A250156.P5738852305042899482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250156.P5738852305042899482

/-! ## A250156.P3260997172049735822

`record[A103452(n)*A250154(n+3)]`
-/

namespace A250156.P3260997172049735822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A250154 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250156.P3260997172049735822

/-! ## A250156.P8925088064018788050

`A000034(2*n)*A250154(A133263(n+1))`
-/

namespace A250156.P8925088064018788050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A250154 (A133263 (n + 1)).toNat

end

end A250156.P8925088064018788050

/-! ## A250156.P1840097745323121401

`A250154(A133263(n+1))%A085479(n+1)`
-/

namespace A250156.P1840097745323121401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250154 (A133263 (n + 1)).toNat) (A085479 (n + 1))

end

end A250156.P1840097745323121401

/-! ## A250156.P491253875259201308

`A250154(A133263(n+1))+A005843(n)%2`
-/

namespace A250156.P491253875259201308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A133263 (n + 1)).toNat + Int.tmod (A005843 n) 2

end

end A250156.P491253875259201308

/-! ## A250156.P2842233561781578471

`record[A014963(n+5)]%2*A250154(A133263(n+1))`
-/

namespace A250156.P2842233561781578471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2 * A250154 (A133263 (n + 1)).toNat

end

end A250156.P2842233561781578471

/-! ## A250156.P10061447997232205499

`A007318(A000217(n))*A250154(A133263(n+1))`
-/

namespace A250156.P10061447997232205499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A250154 (A133263 (n + 1)).toNat

end

end A250156.P10061447997232205499

/-!
# A250157: Number of length 3+6 0..n arrays with every seven consecutive terms having the maximum of some two terms equal to the minimum of the remaining five terms.

The programs for A250157, there is no canonical definition to state claims against.
-/

/-! ## A250157.P11684610233606219620

`A250154(∑[n+2]+4)`
-/

namespace A250157.P11684610233606219620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250157.P11684610233606219620

/-! ## A250157.P434832211389574363

`lcm(A020985(n), A250154(A167614(n+1)))`
-/

namespace A250157.P434832211389574363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A250154 (A167614 (n + 1)).toNat)

end

end A250157.P434832211389574363

/-! ## A250157.P10949717532369902615

`or(A000035(n), A250154(A167614(n+1)))`
-/

namespace A250157.P10949717532369902615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A250154 (A167614 (n + 1)).toNat)

end

end A250157.P10949717532369902615

/-! ## A250157.P2854664361970354247

`or(A000038(n), A250154(A167614(n+1)))`
-/

namespace A250157.P2854664361970354247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A250154 (A167614 (n + 1)).toNat)

end

end A250157.P2854664361970354247

/-! ## A250157.P4766852211739526728

`A250154(A167614(n+1))%A250160(n+1)`
-/

namespace A250157.P4766852211739526728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250154 (A167614 (n + 1)).toNat) (A250160 (n + 1))

end

end A250157.P4766852211739526728

/-! ## A250157.P9847971132046948450

`A250154(A167614(n+1))+A055671(A001358(n+1))`
-/

namespace A250157.P9847971132046948450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A167614 (n + 1)).toNat + A055671 (A001358 (n + 1)).toNat

end

end A250157.P9847971132046948450

/-!
# A250158: Number of length 4+6 0..n arrays with every seven consecutive terms having the maximum of some two terms equal to the minimum of the remaining five terms.

The programs for A250158, there is no canonical definition to state claims against.
-/

/-! ## A250158.P7265066426956300428

`A250154(A052905(n)+9)`
-/

namespace A250158.P7265066426956300428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A052905 n + 9).toNat

end

end A250158.P7265066426956300428

/-! ## A250158.P15368448516838949610

`A250154(A055999(n)+10)`
-/

namespace A250158.P15368448516838949610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A055999 n + 10).toNat

end

end A250158.P15368448516838949610

/-! ## A250158.P17929025605285445039

`A250154(A167614(n+2)+1)`
-/

namespace A250158.P17929025605285445039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A167614 (n + 2) + 1).toNat

end

end A250158.P17929025605285445039

/-! ## A250158.P2718825500004578158

`A250154(A000124(n+3)+3)`
-/

namespace A250158.P2718825500004578158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A000124 (n + 3) + 3).toNat

end

end A250158.P2718825500004578158

/-! ## A250158.P13590405856600095807

`A250154(A167487(n+2)-3)`
-/

namespace A250158.P13590405856600095807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A167487 (n + 2) - 3).toNat

end

end A250158.P13590405856600095807

/-! ## A250158.P15808100256811261269

`A250154(A055998(n+1)+7)`
-/

namespace A250158.P15808100256811261269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A055998 (n + 1) + 7).toNat

end

end A250158.P15808100256811261269

/-! ## A250158.P3783478461376549763

`A250154(Δ[A023545(n+1)-n²])`
-/

namespace A250158.P3783478461376549763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (f1 (n + 1) - f1 n).toNat

end

end A250158.P3783478461376549763

/-!
# A250159: Number of length 5+6 0..n arrays with every seven consecutive terms having the maximum of some two terms equal to the minimum of the remaining five terms.

The programs for A250159, there is no canonical definition to state claims against.
-/

/-! ## A250159.P8287765232721735586

`A250154(A167499(n+3))`
-/

namespace A250159.P8287765232721735586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A167499 (n + 3)).toNat

end

end A250159.P8287765232721735586

/-! ## A250159.P5943715510271901635

`A250154(A056000(n)+15)`
-/

namespace A250159.P5943715510271901635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A056000 n + 15).toNat

end

end A250159.P5943715510271901635

/-! ## A250159.P477711813474381038

`A250154(A038722(Δ[A023545(n+1)]))`
-/

namespace A250159.P477711813474381038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A250159.P477711813474381038

/-! ## A250159.P10276178085309441043

`A250154(A046691(n)+A005843(n+8))`
-/

namespace A250159.P10276178085309441043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A046691 n + A005843 (n + 8)).toNat

end

end A250159.P10276178085309441043

/-!
# A250160: Number of length 6+6 0..n arrays with every seven consecutive terms having the maximum of some two terms equal to the minimum of the remaining five terms.

The programs for A250160, there is no canonical definition to state claims against.
-/

/-! ## A250160.P17731423518419754441

`A250154(A000096(n+4)+7)`
-/

namespace A250160.P17731423518419754441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A000096 (n + 4) + 7).toNat

end

end A250160.P17731423518419754441

/-! ## A250160.P2320707940623910219

`A250154(A000217(n+5)+6)`
-/

namespace A250160.P2320707940623910219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A000217 (n + 5) + 6).toNat

end

end A250160.P2320707940623910219

/-! ## A250160.P13476525381947550699

`A250154(A000124(n+6)-(n+1))`
-/

namespace A250160.P13476525381947550699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A250160.P13476525381947550699

/-! ## A250160.P4496475166237037807

`A250154(A046691(n+5)-A005408(n+1))`
-/

namespace A250160.P4496475166237037807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A046691 (n + 5) - A005408 (n + 1)).toNat

end

end A250160.P4496475166237037807

/-! ## A250160.P4971080166533528096

`A250154(A167487(n+6)-A005843(n+7))`
-/

namespace A250160.P4971080166533528096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A167487 (n + 6) - A005843 (n + 7)).toNat

end

end A250160.P4971080166533528096

/-!
# A250161: Number of length 7+6 0..n arrays with every seven consecutive terms having the maximum of some two terms equal to the minimum of the remaining five terms.

The programs for A250161, there is no canonical definition to state claims against.
-/

/-! ## A250161.P12067730629762319537

`A250154(A000217(n+6)+7)`
-/

namespace A250161.P12067730629762319537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A000217 (n + 6) + 7).toNat

end

end A250161.P12067730629762319537

/-! ## A250161.P5892570405782914060

`A250154(A027379(n+4)+10)`
-/

namespace A250161.P5892570405782914060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A027379 (n + 4) + 10).toNat

end

end A250161.P5892570405782914060

/-! ## A250161.P4743812468951571998

`A250154(A055998(n+4)+10)`
-/

namespace A250161.P4743812468951571998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A055998 (n + 4) + 10).toNat

end

end A250161.P4743812468951571998

/-! ## A250161.P2794728007465813774

`A250154(A167487(n+6)-(n+7))`
-/

namespace A250161.P2794728007465813774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A167487 (n + 6) - (n + 7 : ℤ)).toNat

end

end A250161.P2794728007465813774

/-! ## A250161.P5385142314243089178

`A250154(A046691(n)+A016813(n+7))`
-/

namespace A250161.P5385142314243089178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A046691 n + A016813 (n + 7)).toNat

end

end A250161.P5385142314243089178

/-! ## A250161.P10266004110247553837

`A250154(A000096(n+7)-A005408(n+3))`
-/

namespace A250161.P10266004110247553837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A000096 (n + 7) - A005408 (n + 3)).toNat

end

end A250161.P10266004110247553837

/-! ## A250161.P10337933084758358023

`A250154(A005408(n+9)+A000096(n+3))`
-/

namespace A250161.P10337933084758358023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250154 (A005408 (n + 9) + A000096 (n + 3)).toNat

end

end A250161.P10337933084758358023

/-!
# A250162: Number of length n+1 0..3 arrays with the sum of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250162, the canonical program `A250162.P15960870572849341801` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250162 has offset 1).

The definition of A250162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250162.P17934338328791830412

`∑[4*(3*C(2^n, 2)+1)]`
-/

namespace A250162.P17934338328791830412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (3 * Nat.choose (2 ^ n) 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250162.P17934338328791830412

namespace A250162

/-- `∑[4*(3*C(2^n, 2)+1)]` -/
def P17934338328791830412.Spec : Prop :=
  ∀ n, (P17934338328791830412.a n : ℤ) = A250162 (n + 1)

end A250162

/-! ## A250162.P12381654812506631245

`∑[or(6, 4*a(n-1))]-(∑[6*(2^n-1)]+1)` with `a(0)=5`
-/

namespace A250162.P12381654812506631245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  Nat.lor 6 (4 * f1 (n - 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ((2 ^ n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (∑ j ∈ Finset.range (n + 1), f2 j + 1)

end

end A250162.P12381654812506631245

namespace A250162

/-- `∑[or(6, 4*a(n-1))]-(∑[6*(2^n-1)]+1)` -/
def P12381654812506631245.Spec : Prop :=
  ∀ n, P12381654812506631245.a n = A250162 (n + 1)

end A250162

/-! ## A250162.P15960870572849341801

`2*(2-3*2^(n+1)+4^(n+1)+2*(n+1))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A250162

/-- `2*(2-3*2^(n+1)+4^(n+1)+2*(n+1))` -/
def P15960870572849341801.Spec : Prop :=
  ∀ n, P15960870572849341801.a n = A250162 (n + 1)

theorem P15960870572849341801.correct : P15960870572849341801.Spec := by
  intro n
  simp only [A250162, Nat.add_sub_cancel]

end A250162

/-! ## A250162.P7945464866315168914

`8*a(n-1)-21*a(n-2)+22*a(n-3)-8*a(n-4)` with `a(0)=4, a(1)=20, a(2)=96, a(3)=436`
-/

namespace A250162.P7945464866315168914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 20, 96, 436] fun n a =>
  8 * a (n - 1) - 21 * a (n - 2) + 22 * a (n - 3) - 8 * a (n - 4)

end

end A250162.P7945464866315168914

namespace A250162

/-- `8*a(n-1)-21*a(n-2)+22*a(n-3)-8*a(n-4)` -/
def P7945464866315168914.Spec : Prop :=
  ∀ n, P7945464866315168914.a n = A250162 (n + 1)

theorem P7945464866315168914.correct : P7945464866315168914.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A250162, Nat.add_sub_cancel, A250162.P7945464866315168914.a, A250162.P15960870572849341801.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A250162, Nat.add_sub_cancel, A250162.P7945464866315168914.a, A250162.P15960870572849341801.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A250162

/-! ## A250162.P10874157369981955463

`∑[A020527(n)+3]`
-/

namespace A250162.P10874157369981955463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020527 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250162.P10874157369981955463

namespace A250162

/-- `∑[A020527(n)+3]` -/
def P10874157369981955463.Spec : Prop :=
  ∀ n, P10874157369981955463.a n = A250162 (n + 1)

end A250162

/-! ## A250162.P16951950399424880516

`∑[12*C(A000079(n), 2)+3]+n+1`
-/

namespace A250162.P16951950399424880516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * Nat.choose (A000079 n).toNat 2 + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A250162.P16951950399424880516

namespace A250162

/-- `∑[12*C(A000079(n), 2)+3]+n+1` -/
def P16951950399424880516.Spec : Prop :=
  ∀ n, (P16951950399424880516.a n : ℤ) = A250162 (n + 1)

end A250162

/-! ## A250162.P10635817475206117514

`A069993(n+1)-A247620(n)`
-/

namespace A250162.P10635817475206117514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069993 (n + 1) - A247620 n

end

end A250162.P10635817475206117514

namespace A250162

/-- `A069993(n+1)-A247620(n)` -/
def P10635817475206117514.Spec : Prop :=
  ∀ n, P10635817475206117514.a n = A250162 (n + 1)

theorem P10635817475206117514.correct : P10635817475206117514.Spec := by
  intro n
  simp only [A250162, Nat.add_sub_cancel, A250162.P10635817475206117514.a, A250162.P15960870572849341801.a, A069993, A069993.P10904131476634752855.a, A247620, A247620.P3501996909612434225.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250162

/-! ## A250162.P5621919856491481217

`A020707(n)²/2-A101946(n+1)+n`
-/

namespace A250162.P5621919856491481217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020707 n ^ 2 : ℚ) / 2 - (A101946 (n + 1) : ℚ) + (n : ℚ)

end

end A250162.P5621919856491481217

namespace A250162

/-- `A020707(n)²/2-A101946(n+1)+n` -/
def P5621919856491481217.Spec : Prop :=
  ∀ n, P5621919856491481217.a n = (A250162 (n + 1) : ℚ)

end A250162

/-! ## A250162.P17389663562321372031

`A020707(2*n+1)-A101946(n+1)+n`
-/

namespace A250162.P17389663562321372031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 (2 * n + 1) - A101946 (n + 1) + (n : ℤ)

end

end A250162.P17389663562321372031

namespace A250162

/-- `A020707(2*n+1)-A101946(n+1)+n` -/
def P17389663562321372031.Spec : Prop :=
  ∀ n, P17389663562321372031.a n = A250162 (n + 1)

end A250162

/-!
# A250163: Number of length n+1 0..4 arrays with the sum of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250163, there is no canonical definition to state claims against.
-/

/-! ## A250163.P12655311718004865748

`A250167(∑[n+4]+3)`
-/

namespace A250163.P12655311718004865748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250167 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A250163.P12655311718004865748

/-! ## A250163.P5463645850684806917

`or(1, A250167(A027379(n+2)))`
-/

namespace A250163.P5463645850684806917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A250167 (A027379 (n + 2)).toNat)

end

end A250163.P5463645850684806917

/-! ## A250163.P10545624415940891252

`or(1, A250167(A055998(n+2)))`
-/

namespace A250163.P10545624415940891252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A250167 (A055998 (n + 2)).toNat)

end

end A250163.P10545624415940891252

/-! ## A250163.P3179021779228422374

`or(1, A250167(A056000(n)+7))`
-/

namespace A250163.P3179021779228422374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A250167 (A056000 n + 7).toNat)

end

end A250163.P3179021779228422374

/-! ## A250163.P17715117771969326333

`A250167(A027379(n+2))%A000108(n+9)`
-/

namespace A250163.P17715117771969326333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250167 (A027379 (n + 2)).toNat) (A000108 (n + 9))

end

end A250163.P17715117771969326333

/-!
# A250164: Number of length n+1 0..5 arrays with the sum of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250164, there is no canonical definition to state claims against.
-/

/-! ## A250164.P14615790643560435725

`A250167(C(n+6, 2)-4)`
-/

namespace A250164.P14615790643560435725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250167 (Nat.choose (n + 6) 2 - 4)

end

end A250164.P14615790643560435725

/-! ## A250164.P15215565266686536042

`A250167(Δ[A264443(n)])`
-/

namespace A250164.P15215565266686536042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250167 (f1 (n + 1) - f1 n).toNat

end

end A250164.P15215565266686536042

/-! ## A250164.P17832932560361970696

`A250167(A056115(n)+11)`
-/

namespace A250164.P17832932560361970696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250167 (A056115 n + 11).toNat

end

end A250164.P17832932560361970696

/-! ## A250164.P11763403423497603451

`A250167(eq[2, A092921(n)])`
-/

namespace A250164.P11763403423497603451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250164.P11763403423497603451

/-! ## A250164.P10513443508116705885

`A250167(eq[4, A193592(n)])`
-/

namespace A250164.P10513443508116705885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250164.P10513443508116705885

/-!
# A250165: Number of length n+1 0..6 arrays with the sum of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250165, there is no canonical definition to state claims against.
-/

/-! ## A250165.P2846068967410370976

`A250167(C(n+7, 2)-5)`
-/

namespace A250165.P2846068967410370976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250167 (Nat.choose (n + 7) 2 - 5)

end

end A250165.P2846068967410370976

/-! ## A250165.P8079921490666762790

`A250167(A052905(n+3))`
-/

namespace A250165.P8079921490666762790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250167 (A052905 (n + 3)).toNat

end

end A250165.P8079921490666762790

/-! ## A250165.P14015572234490325274

`A250167(A056119(n)+16)`
-/

namespace A250165.P14015572234490325274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250167 (A056119 n + 16).toNat

end

end A250165.P14015572234490325274

/-! ## A250165.P3087814230937369716

`A250167(eq[3, A219347(n)])`
-/

namespace A250165.P3087814230937369716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250165.P3087814230937369716

/-! ## A250165.P1263358287870749157

`A250167(eq[5, A193592(n)])`
-/

namespace A250165.P1263358287870749157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250165.P1263358287870749157

/-!
# A250166: Number of length n+1 0..7 arrays with the sum of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250166, there is no canonical definition to state claims against.
-/

/-! ## A250166.P11353284194527126876

`A250167(C(n+7, 2)+n+1)`
-/

namespace A250166.P11353284194527126876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250167 (Nat.choose (n + 7) 2 + (n + 1))

end

end A250166.P11353284194527126876

/-! ## A250166.P635706529340639347

`A250167(Δ[n²]+∑[n+5]+16)`
-/

namespace A250166.P635706529340639347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250167 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 16 : ℕ) : ℤ)).toNat

end

end A250166.P635706529340639347

/-! ## A250166.P16775059489796190740

`lcm(2, A250167(A055999(n+4)))`
-/

namespace A250166.P16775059489796190740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250167 (A055999 (n + 4)).toNat)

end

end A250166.P16775059489796190740

/-! ## A250166.P1437413250225903194

`A007318(∑[n])*A250167(A055999(n+4))`
-/

namespace A250166.P1437413250225903194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A250167 (A055999 (n + 4)).toNat

end

end A250166.P1437413250225903194

/-! ## A250166.P9111541722680084269

`A250167(A055999(n+4))/A007318(and(3, -n))`
-/

namespace A250166.P9111541722680084269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250167 (A055999 (n + 4)).toNat : ℚ) / (A007318 (Int.land 3 (-(n : ℤ))).toNat : ℚ)

end

end A250166.P9111541722680084269

/-!
# A250167: T(n,k)=Number of length n+1 0..k arrays with the sum of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250167, there is no canonical definition to state claims against.
-/

/-! ## A250167.P5775890223025028043

`A250229(n+1)+A138496(A102480(n))`
-/

namespace A250167.P5775890223025028043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (n + 1) + A138496 (A102480 n).toNat

end

end A250167.P5775890223025028043

/-! ## A250167.P6951370797194329147

`A250229(A250264(n+2))%38`
-/

namespace A250167.P6951370797194329147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250229 (A250264 (n + 2)).toNat) 38

end

end A250167.P6951370797194329147

/-! ## A250167.P1607421470637009526

`A250229(n+1)+A022093(A172540(n+1))`
-/

namespace A250167.P1607421470637009526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (n + 1) + A022093 (A172540 (n + 1)).toNat

end

end A250167.P1607421470637009526

/-! ## A250167.P18038146573602213164

`A250277(n+1)+A022093(A172540(n+1))`
-/

namespace A250167.P18038146573602213164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (n + 1) + A022093 (A172540 (n + 1)).toNat

end

end A250167.P18038146573602213164

/-! ## A250167.P4317014980768883403

`A308064(A146187(n+1))+A102539(n+1)`
-/

namespace A250167.P4317014980768883403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308064 (A146187 (n + 1)).toNat + A102539 (n + 1)

end

end A250167.P4317014980768883403

/-!
# A250168: Number of length 3+1 0..n arrays with the sum of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250168, there is no canonical definition to state claims against.
-/

/-! ## A250168.P10516460731057616999

`A250167(∑[n+2]+4)`
-/

namespace A250168.P10516460731057616999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250167 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250168.P10516460731057616999

/-! ## A250168.P5659808340750900700

`A250167(A046691(n)+7)+char[36]`
-/

namespace A250168.P5659808340750900700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250167 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250168.P5659808340750900700

/-! ## A250168.P9313574779354723507

`A250167(A167614(n+1))+A011737(n)`
-/

namespace A250168.P9313574779354723507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250167 (A167614 (n + 1)).toNat + A011737 n

end

end A250168.P9313574779354723507

/-! ## A250168.P13193491231132236318

`A250167(A167614(n+1))%A104848(n+1)`
-/

namespace A250168.P13193491231132236318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250167 (A167614 (n + 1)).toNat) (A104848 (n + 1))

end

end A250168.P13193491231132236318

/-! ## A250168.P10106222464304228697

`A007318(C(2, n))*A250167(A046691(n)+7)`
-/

namespace A250168.P10106222464304228697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A250167 (A046691 n + 7).toNat

end

end A250168.P10106222464304228697

/-!
# A250169: Number of length 4+1 0..n arrays with the sum of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250169, there is no canonical definition to state claims against.
-/

/-! ## A250169.P14079495940357037638

`A250167(∑[n+3]+7)`
-/

namespace A250169.P14079495940357037638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250167 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A250169.P14079495940357037638

/-! ## A250169.P9103739196858402892

`A250167(A052905(n)+9)+char[21]`
-/

namespace A250169.P9103739196858402892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250167 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250169.P9103739196858402892

/-! ## A250169.P14854787154672078304

`A250167(A052905(n)+9)%A000108(n+11)`
-/

namespace A250169.P14854787154672078304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250167 (A052905 n + 9).toNat) (A000108 (n + 11))

end

end A250169.P14854787154672078304

/-! ## A250169.P17647916202782643781

`lcm(A014963(4*n+2), A250167(A052905(n)+9))`
-/

namespace A250169.P17647916202782643781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014963 (4 * n + 2)) (A250167 (A052905 n + 9).toNat)

end

end A250169.P17647916202782643781

/-! ## A250169.P15158405554944564675

`A000041(C(2, n+2))*A250167(A052905(n)+9)`
-/

namespace A250169.P15158405554944564675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A250167 (A052905 n + 9).toNat

end

end A250169.P15158405554944564675

/-!
# A250170: Number of length 5+1 0..n arrays with the sum of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250170, there is no canonical definition to state claims against.
-/

/-! ## A250170.P6301861551795863119

`A250167(C(n+6, 2)-n)`
-/

namespace A250170.P6301861551795863119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250167 (Nat.choose (n + 6) 2 - n)

end

end A250170.P6301861551795863119

/-! ## A250170.P17260780280164520268

`A250167(∑[n+3]+n+12)`
-/

namespace A250170.P17260780280164520268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250167 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 12))

end

end A250170.P17260780280164520268

/-! ## A250170.P7679231473904855773

`A250167(A056000(n)+15)+char[19]`
-/

namespace A250170.P7679231473904855773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250167 (A056000 n + 15).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250170.P7679231473904855773

/-! ## A250170.P4704207121316695

`A007318(C(n, 2))²*A250167(A056000(n)+15)`
-/

namespace A250170.P4704207121316695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) ^ 2 * A250167 (A056000 n + 15).toNat

end

end A250170.P4704207121316695

/-! ## A250170.P283227030439305057

`A000041(C(n, n²))*A250167(A056000(n)+15)`
-/

namespace A250170.P283227030439305057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A250167 (A056000 n + 15).toNat

end

end A250170.P283227030439305057

/-!
# A250171: Number of length 6+1 0..n arrays with the sum of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250171, there is no canonical definition to state claims against.
-/

/-! ## A250171.P8506951110624516410

`A250167(∑[n+5]+16)`
-/

namespace A250171.P8506951110624516410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250167 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A250171.P8506951110624516410

/-! ## A250171.P15926623098132081548

`or(char[1], A250167(A000217(n+5)+6))`
-/

namespace A250171.P15926623098132081548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A250167 (A000217 (n + 5) + 6).toNat)

end

end A250171.P15926623098132081548

/-! ## A250171.P17775854774011651224

`A250167(A000217(n+5)+6)%A000108(n+8)`
-/

namespace A250171.P17775854774011651224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250167 (A000217 (n + 5) + 6).toNat) (A000108 (n + 8))

end

end A250171.P17775854774011651224

/-! ## A250171.P4251273515359386842

`A007318(C(2, n))*A250167(A000217(n+5)+6)`
-/

namespace A250171.P4251273515359386842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A250167 (A000217 (n + 5) + 6).toNat

end

end A250171.P4251273515359386842

/-! ## A250171.P9116149838381559384

`A000108(C(2, n+2))*A250167(A000217(n+5)+6)`
-/

namespace A250171.P9116149838381559384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A250167 (A000217 (n + 5) + 6).toNat

end

end A250171.P9116149838381559384

/-!
# A250172: Number of length 7+1 0..n arrays with the sum of adjacent differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250172, there is no canonical definition to state claims against.
-/

/-! ## A250172.P2048331804069223164

`A250167(A167487(n+5))`
-/

namespace A250172.P2048331804069223164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250167 (A167487 (n + 5)).toNat

end

end A250172.P2048331804069223164

/-! ## A250172.P16579576397342460524

`A250167(A056119(n)+28)`
-/

namespace A250172.P16579576397342460524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250167 (A056119 n + 28).toNat

end

end A250172.P16579576397342460524

/-! ## A250172.P4006875992337304455

`A250167(A166136(n+5)+1)`
-/

namespace A250172.P4006875992337304455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250167 (A166136 (n + 5) + 1).toNat

end

end A250172.P4006875992337304455

/-! ## A250172.P14077953537001725768

`A250167(A000124(n+6)+6)`
-/

namespace A250172.P14077953537001725768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250167 (A000124 (n + 6) + 6).toNat

end

end A250172.P14077953537001725768

/-! ## A250172.P9115468072167591284

`A250167(A000096(n+5)+8)`
-/

namespace A250172.P9115468072167591284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250167 (A000096 (n + 5) + 8).toNat

end

end A250172.P9115468072167591284

/-!
# A250173: Primes with distinct digits: a(n) is the least prime > a(n-1) such that a(n-1) and a(n) share no common digit.

The programs for A250173, there is no canonical definition to state claims against.
-/

/-! ## A250173.P4926401072403540554

`p?[lt[A247303(n), A247341(n)]]`
-/

namespace A250173.P4926401072403540554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247303 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247341 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A250173.P4926401072403540554

/-! ## A250173.P16320730996891476525

`p?[∑[A351944(∑{digits}[(n+1)^3, #]+(n+1)^3)]]`
-/

namespace A250173.P16320730996891476525
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351944 (((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum + (n + 1) ^ 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A250173.P16320730996891476525

/-! ## A250173.P9080487788371937694

`p?[A004396(A134442(n+1))]`
-/

namespace A250173.P9080487788371937694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A134442 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A250173.P9080487788371937694

/-!
# A250174: Numbers n such that Phi_14(n) is prime, where Phi is the cyclotomic polynomial.

The programs for A250174, there is no canonical definition to state claims against.
-/

/-! ## A250174.P9745861260121766104

`ceil(root(A245427(n+1), 6))`
-/

namespace A250174.P9745861260121766104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A245427 (n + 1) : ℝ) ^ (1 / (6 : ℝ))⌉

end

end A250174.P9745861260121766104

/-! ## A250174.P12879658483302878901

`A000027(round(root(A245427(n+1), 6)))`
-/

namespace A250174.P12879658483302878901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A245427 (n + 1) : ℝ) ^ (1 / (6 : ℝ)))).toNat

end

end A250174.P12879658483302878901

/-! ## A250174.P6120458518860930376

`round(root(A245427(n+1), 6))%A017126(n)`
-/

namespace A250174.P6120458518860930376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A245427 (n + 1) : ℝ) ^ (1 / (6 : ℝ)))) (A017126 n)

end

end A250174.P6120458518860930376

/-! ## A250174.P12312879507220646518

`floor(root(A245427(n+1), 6)+A121238(n)²)`
-/

namespace A250174.P12312879507220646518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A245427 (n + 1) : ℝ) ^ (1 / (6 : ℝ)) + (A121238 n ^ 2 : ℝ)⌋

end

end A250174.P12312879507220646518

/-! ## A250174.P15772434749228399339

`A143431(n)²*round(root(A245427(n+1), 6))`
-/

namespace A250174.P15772434749228399339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143431 n ^ 2 * SequenceMachineLib.roundAway ((A245427 (n + 1) : ℝ) ^ (1 / (6 : ℝ)))

end

end A250174.P15772434749228399339

/-! ## A250174.P6185632585159984118

`A163810(n)²!*round(root(A245427(n+1), 6))`
-/

namespace A250174.P6185632585159984118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A163810 n ^ 2).toNat : ℤ) * SequenceMachineLib.roundAway ((A245427 (n + 1) : ℝ) ^ (1 / (6 : ℝ)))

end

end A250174.P6185632585159984118

/-! ## A250174.P17085176628906451145

`(A002522(n)-n²)*round(root(A245427(n+1), 6))`
-/

namespace A250174.P17085176628906451145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002522 n - (n ^ 2 : ℤ)) * SequenceMachineLib.roundAway ((A245427 (n + 1) : ℝ) ^ (1 / (6 : ℝ)))

end

end A250174.P17085176628906451145

/-!
# A250179: Numbers n such that Phi_24(n) is prime, where Phi is the cyclotomic polynomial.

The programs for A250179, there is no canonical definition to state claims against.
-/

/-! ## A250179.P18030643612884627782

`sqrt(∩[A246397(n+1), n²])`
-/

namespace A250179.P18030643612884627782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246397 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A250179.P18030643612884627782

/-! ## A250179.P7992067053532060399

`record[A056926(A246397(n+3))]`
-/

namespace A250179.P7992067053532060399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A246397 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250179.P7992067053532060399

/-! ## A250179.P8811457108789275954

`A056926(∩[A246397(n+1), n²])`
-/

namespace A250179.P8811457108789275954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246397 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n)

end

end A250179.P8811457108789275954

/-! ## A250179.P9560299271500679085

`A262689(∩[A246397(n+1), n²])`
-/

namespace A250179.P9560299271500679085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246397 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n)

end

end A250179.P9560299271500679085

/-! ## A250179.P8180093623634333230

`A003059(∩[A246397(n+1), n²])`
-/

namespace A250179.P8180093623634333230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246397 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n)

end

end A250179.P8180093623634333230

/-!
# A250186: Numbers n such that Phi(35,n) is prime, where Phi is the cyclotomic polynomial.

The programs for A250186, there is no canonical definition to state claims against.
-/

/-! ## A250186.P11735121275265621406

`A143202(n+1)-A143182(A213920(3*n))`
-/

namespace A250186.P11735121275265621406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143202 (n + 1) - A143182 (A213920 (3 * n)).toNat

end

end A250186.P11735121275265621406

/-!
# A250189: Numbers n such that Phi(40,n) is prime, where Phi is the cyclotomic polynomial.

The programs for A250189, there is no canonical definition to state claims against.
-/

/-! ## A250189.P4413442425501178380

`record[A056926(A250176(n+1))]`
-/

namespace A250189.P4413442425501178380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A250176 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250189.P4413442425501178380

/-!
# A250197: Numbers k such that the left Aurifeuillian primitive part of 2^k+1 is prime.

The programs for A250197, there is no canonical definition to state claims against.
-/

/-! ## A250197.P3741948067843206499

`eq[A297032(2*(n+1)), A360005(n+2)]`
-/

namespace A250197.P3741948067843206499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297032 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360005 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A250197.P3741948067843206499

/-! ## A250197.P18299048421309592282

`eq[xor(n, n+1), A073097(A098760(n))]`
-/

namespace A250197.P18299048421309592282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 (A098760 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A250197.P18299048421309592282

/-! ## A250197.P14360688408790600269

`∑[A046109(A036342(n+1)+1)]+6`
-/

namespace A250197.P14360688408790600269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 (A036342 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 6

end

end A250197.P14360688408790600269

/-! ## A250197.P5961424679742707987

`eq[A010684(n), A073097(A098760(n))]`
-/

namespace A250197.P5961424679742707987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 (A098760 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A250197.P5961424679742707987

/-! ## A250197.P2189653359312177272

`A130824(lt[A008619(n), A130856(n)])`
-/

namespace A250197.P2189653359312177272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A250197.P2189653359312177272

/-!
# A250198: Numbers k such that the right Aurifeuillian primitive part of 2^k+1 is prime.

The programs for A250198, there is no canonical definition to state claims against.
-/

/-! ## A250198.P4239968686880773195

`2*eq[A062756(n), A248909(A331562(n))]`
-/

namespace A250198.P4239968686880773195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (A331562 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A250198.P4239968686880773195

/-! ## A250198.P12104407825340922637

`lt[A052128(A056057(n+1)), A007814(n+2)]`
-/

namespace A250198.P12104407825340922637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052128 (A056057 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250198.P12104407825340922637

/-! ## A250198.P3222058664104951154

`eq[A007814(3*n+4), A119656(A026725(n))]`
-/

namespace A250198.P3222058664104951154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119656 (A026725 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A250198.P3222058664104951154

/-! ## A250198.P14741334548734844819

`A016825(lt[A233864(n+2), A220393(3*n+1)])`
-/

namespace A250198.P14741334548734844819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233864 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220393 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A250198.P14741334548734844819

/-! ## A250198.P5351856646501019128

`eq[A360720(2*(n+1)), A360738(A360722(n+4))]`
-/

namespace A250198.P5351856646501019128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360720 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360738 (A360722 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A250198.P5351856646501019128

/-!
# A250199: Smallest pseudoprime (>prime(n)) to base prime(n).

The programs for A250199, there is no canonical definition to state claims against.
-/

/-! ## A250199.P6435059341287649536

`A007535(A000040(n+1))`
-/

namespace A250199.P6435059341287649536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007535 (A000040 (n + 1)).toNat

end

end A250199.P6435059341287649536

/-! ## A250199.P6154862343933879392

`A007535(Δ[A007504(n)])`
-/

namespace A250199.P6154862343933879392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007535 (f1 (n + 1) - f1 n).toNat

end

end A250199.P6154862343933879392

/-! ## A250199.P4782733481254212827

`A007535(A008578(n+2))`
-/

namespace A250199.P4782733481254212827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007535 (A008578 (n + 2)).toNat

end

end A250199.P4782733481254212827

/-! ## A250199.P86683285181836309

`A007535(A182986(n+2))`
-/

namespace A250199.P86683285181836309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007535 (A182986 (n + 2)).toNat

end

end A250199.P86683285181836309

/-! ## A250199.P530840149869173880

`A007535(eq[2, A304442(n)])`
-/

namespace A250199.P530840149869173880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007535 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250199.P530840149869173880

/-! ## A250199.P16375399697196857956

`A007535(record[A117366(n+1)])`
-/

namespace A250199.P16375399697196857956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007535 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A250199.P16375399697196857956

/-! ## A250199.P4908820372025820906

`A007535(record[A006530(n+2)])`
-/

namespace A250199.P4908820372025820906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007535 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A250199.P4908820372025820906

/-! ## A250199.P16336464283830842276

`A007535(record[A014963(n+2)])`
-/

namespace A250199.P16336464283830842276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007535 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A250199.P16336464283830842276

/-! ## A250199.P477721331375662951

`A007535(record[A020639(n+2)])`
-/

namespace A250199.P477721331375662951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007535 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A250199.P477721331375662951

/-! ## A250199.P12001627163725977627

`A007535(A006093(n+1)+1)`
-/

namespace A250199.P12001627163725977627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007535 (A006093 (n + 1) + 1).toNat

end

end A250199.P12001627163725977627

/-! ## A250199.P17204842069317000578

`A007535(eq[2, A000005(n+1)]+1)`
-/

namespace A250199.P17204842069317000578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007535 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A250199.P17204842069317000578

/-! ## A250199.P16024033309066350214

`A007535(A007504(n+1)-A007504(n))`
-/

namespace A250199.P16024033309066350214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007535 (A007504 (n + 1) - A007504 n).toNat

end

end A250199.P16024033309066350214

