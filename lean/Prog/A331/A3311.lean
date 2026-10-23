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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
# A331101: Denominators of the best approximations for sqrt(2).

The programs for A331101, the canonical program `A331101.P18352111760834396204` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331101 has offset 1).

The definition of A331101 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331101.P18352111760834396204

`6*a(n-3)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=12, a(5)=17`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A331101

/-- `6*a(n-3)-a(n-6)` -/
def P18352111760834396204.Spec : Prop :=
  ∀ n, P18352111760834396204.a n = A331101 (n + 1)

theorem P18352111760834396204.correct : P18352111760834396204.Spec := by
  intro n
  simp only [A331101, Nat.add_sub_cancel]

end A331101

/-! ## A331101.P14890836051790615272

`A092550(A047249(n+1))`
-/

namespace A331101.P14890836051790615272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092550 (A047249 (n + 1)).toNat

end

end A331101.P14890836051790615272

namespace A331101

/-- `A092550(A047249(n+1))` -/
def P14890836051790615272.Spec : Prop :=
  ∀ n, P14890836051790615272.a n = A331101 (n + 1)

end A331101

/-! ## A331101.P2245192873222256323

`A092550(A047259(n+1))`
-/

namespace A331101.P2245192873222256323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092550 (A047259 (n + 1)).toNat

end

end A331101.P2245192873222256323

namespace A331101

/-- `A092550(A047259(n+1))` -/
def P2245192873222256323.Spec : Prop :=
  ∀ n, P2245192873222256323.a n = A331101 (n + 1)

end A331101

/-! ## A331101.P10976142334048677526

`A002965(A004773(n+2))`
-/

namespace A331101.P10976142334048677526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A004773 (n + 2)).toNat

end

end A331101.P10976142334048677526

namespace A331101

/-- `A002965(A004773(n+2))` -/
def P10976142334048677526.Spec : Prop :=
  ∀ n, P10976142334048677526.a n = A331101 (n + 1)

end A331101

/-! ## A331101.P13572842102707676367

`A092550(A144430(n+2))`
-/

namespace A331101.P13572842102707676367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092550 (A144430 (n + 2)).toNat

end

end A331101.P13572842102707676367

namespace A331101

/-- `A092550(A144430(n+2))` -/
def P13572842102707676367.Spec : Prop :=
  ∀ n, P13572842102707676367.a n = A331101 (n + 1)

end A331101

/-! ## A331101.P11390679303577430827

`record[A116560(A140201(n+1))]`
-/

namespace A331101.P11390679303577430827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (A140201 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331101.P11390679303577430827

namespace A331101

/-- `record[A116560(A140201(n+1))]` -/
def P11390679303577430827.Spec : Prop :=
  ∀ n, P11390679303577430827.a n = A331101 (n + 1)

end A331101

/-! ## A331101.P17402956075026184077

`A002965(A042965(n+2)+1)`
-/

namespace A331101.P17402956075026184077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A042965 (n + 2) + 1).toNat

end

end A331101.P17402956075026184077

namespace A331101

/-- `A002965(A042965(n+2)+1)` -/
def P17402956075026184077.Spec : Prop :=
  ∀ n, P17402956075026184077.a n = A331101 (n + 1)

end A331101

/-! ## A331101.P343974862595019623

`A002965(A002264(n+5)+n+1)`
-/

namespace A331101.P343974862595019623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A002264 (n + 5) + (n + 1 : ℤ)).toNat

end

end A331101.P343974862595019623

namespace A331101

/-- `A002965(A002264(n+5)+n+1)` -/
def P343974862595019623.Spec : Prop :=
  ∀ n, P343974862595019623.a n = A331101 (n + 1)

end A331101

/-! ## A331101.P13379044413113451445

`A002965(∑[and(1, A252716(n+1))+1])`
-/

namespace A331101.P13379044413113451445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A252716 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A331101.P13379044413113451445

namespace A331101

/-- `A002965(∑[and(1, A252716(n+1))+1])` -/
def P13379044413113451445.Spec : Prop :=
  ∀ n, P13379044413113451445.a n = A331101 (n + 1)

end A331101

/-! ## A331101.P14183451567046570716

`record[A002965(A004773(A123108(n)))]`
-/

namespace A331101.P14183451567046570716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A004773 (A123108 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331101.P14183451567046570716

namespace A331101

/-- `record[A002965(A004773(A123108(n)))]` -/
def P14183451567046570716.Spec : Prop :=
  ∀ n, P14183451567046570716.a n = A331101 (n + 1)

end A331101

/-! ## A331101.P4004639507833084493

`A116560(4*n+3)+A116560(A005408(2*n))`
-/

namespace A331101.P4004639507833084493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (4 * n + 3) + A116560 (A005408 (2 * n)).toNat

end

end A331101.P4004639507833084493

namespace A331101

/-- `A116560(4*n+3)+A116560(A005408(2*n))` -/
def P4004639507833084493.Spec : Prop :=
  ∀ n, P4004639507833084493.a n = A331101 (n + 1)

end A331101

/-! ## A331101.P2549904960572253449

`A002965(A008620(record[A168203(A008620(n))]))`
-/

namespace A331101.P2549904960572253449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168203 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A008620 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A331101.P2549904960572253449

namespace A331101

/-- `A002965(A008620(record[A168203(A008620(n))]))` -/
def P2549904960572253449.Spec : Prop :=
  ∀ n, P2549904960572253449.a n = A331101 (n + 1)

end A331101

/-! ## A331101.P652266468236000229

`A249576(A061800(2*n+1))+A249576(A061800(2*n))`
-/

namespace A331101.P652266468236000229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (A061800 (2 * n + 1)).toNat + A249576 (A061800 (2 * n)).toNat

end

end A331101.P652266468236000229

namespace A331101

/-- `A249576(A061800(2*n+1))+A249576(A061800(2*n))` -/
def P652266468236000229.Spec : Prop :=
  ∀ n, P652266468236000229.a n = A331101 (n + 1)

end A331101

/-! ## A331101.P10835575135520212264

`Δ[A249576(2*(n+2))]`
-/

namespace A331101.P10835575135520212264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A331101.P10835575135520212264

namespace A331101

/-- `Δ[A249576(2*(n+2))]` -/
def P10835575135520212264.Spec : Prop :=
  ∀ n, P10835575135520212264.a n = A331101 (n + 1)

end A331101

/-! ## A331101.P16310179320701257175

`Δ[record[A249576(A004277(n))]]`
-/

namespace A331101.P16310179320701257175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (A004277 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A331101.P16310179320701257175

namespace A331101

/-- `Δ[record[A249576(A004277(n))]]` -/
def P16310179320701257175.Spec : Prop :=
  ∀ n, P16310179320701257175.a n = A331101 (n + 1)

end A331101

/-! ## A331101.P14214755283641464726

`record[Δ[A249576(A116568(n+3))]]`
-/

namespace A331101.P14214755283641464726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (A116568 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331101.P14214755283641464726

namespace A331101

/-- `record[Δ[A249576(A116568(n+3))]]` -/
def P14214755283641464726.Spec : Prop :=
  ∀ n, P14214755283641464726.a n = A331101 (n + 1)

end A331101

/-!
# A331102: a(n) is the greatest prime number of the form n mod (2^k) for some k > 0, or 0 if no such prime number exists.

The programs for A331102, there is no canonical definition to state claims against.
-/

/-! ## A331102.P17218401432858341947

`and(n, A318925(A019320(n)))`
-/

namespace A331102.P17218401432858341947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A318925 (A019320 n).toNat)

end

end A331102.P17218401432858341947

/-! ## A331102.P17431000864006564583

`A123391(2^A216972(n))`
-/

namespace A331102.P17431000864006564583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123391 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A216972 n : ℤ))).toNat

end

end A331102.P17431000864006564583

/-! ## A331102.P1048540133461602053

`n%A088377(A005578(n))`
-/

namespace A331102.P1048540133461602053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A088377 (A005578 n).toNat)

end

end A331102.P1048540133461602053

/-! ## A331102.P3878479056419089481

`and(n, A020639(C(A048147(n), n)+n))`
-/

namespace A331102.P3878479056419089481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A020639 (Nat.choose (A048147 n).toNat n + n))

end

end A331102.P3878479056419089481

/-! ## A331102.P12917318004844147662

`A331045(gcd(n, A331097(A011782(n))))`
-/

namespace A331102.P12917318004844147662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331045 (Int.gcd (n : ℤ) (A331097 (A011782 n).toNat))

end

end A331102.P12917318004844147662

/-!
# A331103: T(n,k) = -(-1)^k*k^2 mod p, where p is the n-th prime congruent to 2 or 3 mod 4; triangle T(n,k), n>=1, 0<=k<=p-1, read by rows.

The programs for A331103, there is no canonical definition to state claims against.
-/

/-! ## A331103.P10828631411846461563

`and(A000041(A089408(n)), A342063(n+1))`
-/

namespace A331103.P10828631411846461563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000041 (A089408 n).toNat) (A342063 (n + 1))

end

end A331103.P10828631411846461563

/-!
# A331104: Consider an empty square array visited by antidiagonals downwards; when the current square is empty, place a 1 X 1 tile or a 1 X 2 tile on it (without overlapping any prior tile) such that the RUNS transform of the sequence of tile widths as they are placed on the grid equals the sequence of tile widths as they are visited; first place a 1 X 1 tile. This sequence corresponds to the tile widths as they are placed.

The programs for A331104, there is no canonical definition to state claims against.
-/

/-! ## A331104.P5435431274427228022

`A001285(A048485(p?[A000124(n)]))`
-/

namespace A331104.P5435431274427228022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A048485 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A331104.P5435431274427228022

/-! ## A331104.P1382982264602394819

`A000034(∑[A059590(A247813(n+1))])`
-/

namespace A331104.P1382982264602394819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (A247813 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A331104.P1382982264602394819

/-! ## A331104.P8255348669261818243

`round(p?[A261424(A156247(n+1))]/3)`
-/

namespace A331104.P8255348669261818243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 (A156247 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 3)

end

end A331104.P8255348669261818243

/-! ## A331104.P15373954280912232352

`A000196(p?[A261424(A156247(n+1))])`
-/

namespace A331104.P15373954280912232352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 (A156247 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A331104.P15373954280912232352

/-! ## A331104.P163892069464796641

`A014695(A001539(n)-A133505(n+1))`
-/

namespace A331104.P163892069464796641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (A001539 n - A133505 (n + 1)).toNat

end

end A331104.P163892069464796641

/-!
# A331105: T(n,k) = -k*(k+1)/2 mod 2^n; triangle T(n,k), n>=0, 0<=k<=2^n-1, read by rows.

The programs for A331105, the canonical program `A331105.P6464673104114462380` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331105 has offset 0).

The definition of A331105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331105.P6464673104114462380

`and(-A329278(n), A092323(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A331105

/-- `and(-A329278(n), A092323(n+1))` -/
def P6464673104114462380.Spec : Prop :=
  ∀ n, P6464673104114462380.a n = A331105 n

theorem P6464673104114462380.correct : P6464673104114462380.Spec := by
  intro n
  simp only [A331105]

end A331105

/-! ## A331105.P13311064325646186106

`and(n+1, A053644(n))-A329278(n)`
-/

namespace A331105.P13311064325646186106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A053644 n) - A329278 n

end

end A331105.P13311064325646186106

namespace A331105

/-- `and(n+1, A053644(n))-A329278(n)` -/
def P13311064325646186106.Spec : Prop :=
  ∀ n, P13311064325646186106.a n = A331105 n

end A331105

/-! ## A331105.P7949898182802978347

`A004754(n+1)%(A329278(n)+1+n)`
-/

namespace A331105.P7949898182802978347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004754 (n + 1)) (A329278 n + 1 + (n : ℤ))

end

end A331105.P7949898182802978347

namespace A331105

/-- `A004754(n+1)%(A329278(n)+1+n)` -/
def P7949898182802978347.Spec : Prop :=
  ∀ n, P7949898182802978347.a n = A331105 n

end A331105

/-! ## A331105.P12605087307550176543

`A053645(A062383(n)-A329278(n))`
-/

namespace A331105.P12605087307550176543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A062383 n - A329278 n).toNat

end

end A331105.P12605087307550176543

namespace A331105

/-- `A053645(A062383(n)-A329278(n))` -/
def P12605087307550176543.Spec : Prop :=
  ∀ n, P12605087307550176543.a n = A331105 n

end A331105

/-! ## A331105.P12892524575991095549

`and(-A329278(n), A000225(A000523(n+1)))`
-/

namespace A331105.P12892524575991095549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A329278 n) (A000225 (A000523 (n + 1)).toNat)

end

end A331105.P12892524575991095549

namespace A331105

/-- `and(-A329278(n), A000225(A000523(n+1)))` -/
def P12892524575991095549.Spec : Prop :=
  ∀ n, P12892524575991095549.a n = A331105 n

end A331105

/-! ## A331105.P11469538770857523364

`A062383(n)-A329278(n)-A053644(n+1)`
-/

namespace A331105.P11469538770857523364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n - A329278 n - A053644 (n + 1)

end

end A331105.P11469538770857523364

namespace A331105

/-- `A062383(n)-A329278(n)-A053644(n+1)` -/
def P11469538770857523364.Spec : Prop :=
  ∀ n, P11469538770857523364.a n = A331105 n

end A331105

/-! ## A331105.P13862718870769428604

`and(A014833(A054429(n+1)), A092323(n+1))`
-/

namespace A331105.P13862718870769428604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014833 (A054429 (n + 1)).toNat) (A092323 (n + 1))

end

end A331105.P13862718870769428604

namespace A331105

/-- `and(A014833(A054429(n+1)), A092323(n+1))` -/
def P13862718870769428604.Spec : Prop :=
  ∀ n, P13862718870769428604.a n = A331105 n

end A331105

/-! ## A331105.P6212007256720512730

`and(A014833(A004754(n+1)), A092323(n+1))`
-/

namespace A331105.P6212007256720512730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014833 (A004754 (n + 1)).toNat) (A092323 (n + 1))

end

end A331105.P6212007256720512730

namespace A331105

/-- `and(A014833(A004754(n+1)), A092323(n+1))` -/
def P6212007256720512730.Spec : Prop :=
  ∀ n, P6212007256720512730.a n = A331105 n

end A331105

/-!
# A331106: Number of plane trees of total weight n of combinatorial class T=Z*U + Z*T^2/(1-T) with nodes Z of weight one and leaves U of weight three.

The programs for A331106, there is no canonical definition to state claims against.
-/

/-! ## A331106.P8094866128529920421

`A131488(A242474(n+1)+A194302(n+1))`
-/

namespace A331106.P8094866128529920421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131488 (A242474 (n + 1) + A194302 (n + 1)).toNat

end

end A331106.P8094866128529920421

/-! ## A331106.P12065548267689286952

`A306383(A325012(n+1)+1)`
-/

namespace A331106.P12065548267689286952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306383 (A325012 (n + 1) + 1).toNat

end

end A331106.P12065548267689286952

/-! ## A331106.P12330981123365494108

`A135127(A135193(n+1))%A135230(n)`
-/

namespace A331106.P12330981123365494108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135127 (A135193 (n + 1)).toNat) (A135230 n)

end

end A331106.P12330981123365494108

/-! ## A331106.P17504022898746750525

`A347710(n)%A303242(A327086(n+1))`
-/

namespace A331106.P17504022898746750525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347710 n) (A303242 (A327086 (n + 1)).toNat)

end

end A331106.P17504022898746750525

/-! ## A331106.P16097536924250810973

`A097888(3*n+1)%A281541(A097886(n+2))`
-/

namespace A331106.P16097536924250810973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097888 (3 * n + 1)) (A281541 (A097886 (n + 2)).toNat)

end

end A331106.P16097536924250810973

/-!
# A331107: The sum of Zeckendorf-infinitary divisors of n = Product_{i} p(i)^r(i): divisors d = Product_{i} p(i)^s(i), such that the Zeckendorf expansion (A014417) of each s(i) contains only terms that are in the Zeckendorf expansion of r(i).

The programs for A331107, there is no canonical definition to state claims against.
-/

/-! ## A331107.P6330668305194681587

`or(A034448(n+1), A163638(A034448(n+1)))`
-/

namespace A331107.P6330668305194681587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034448 (n + 1)) (A163638 (A034448 (n + 1)).toNat)

end

end A331107.P6330668305194681587

/-! ## A331107.P6522550951554070912

`A348732(A195441(2*(n+2))*A354488(n+4)+1)+A034448(n+1)`
-/

namespace A331107.P6522550951554070912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348732 (A195441 (2 * (n + 2)) * A354488 (n + 4) + 1).toNat + A034448 (n + 1)

end

end A331107.P6522550951554070912

/-! ## A331107.P10931386410524576587

`A326547(A112624(n+1))+A034448(n+1)`
-/

namespace A331107.P10931386410524576587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326547 (A112624 (n + 1)).toNat + A034448 (n + 1)

end

end A331107.P10931386410524576587

/-! ## A331107.P14584024379525332354

`A049418(n+1)-A348271(A065667(n+1))`
-/

namespace A331107.P14584024379525332354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049418 (n + 1) - A348271 (A065667 (n + 1)).toNat

end

end A331107.P14584024379525332354

/-! ## A331107.P12099980706721108006

`A348732(A212121(n+1)*A354488(n+4)+1)+A034448(n+1)`
-/

namespace A331107.P12099980706721108006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348732 (A212121 (n + 1) * A354488 (n + 4) + 1).toNat + A034448 (n + 1)

end

end A331107.P12099980706721108006

/-!
# A331109: The number of dual-Zeckendorf-infinitary divisors of n = Product_{i} p(i)^r(i): divisors d = Product_{i} p(i)^s(i), such that the dual Zeckendorf expansion (A104326) of each s(i) contains only terms that are in the dual Zeckendorf expansion of r(i).

The programs for A331109, the canonical program `A331109.P2249905351014711055` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331109 has offset 1).

The definition of A331109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331109.P13256164607228719680

`2^A375272(n+1)`
-/

namespace A331109.P13256164607228719680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A375272 (n + 1) : ℤ)

end

end A331109.P13256164607228719680

namespace A331109

/-- `2^A375272(n+1)` -/
def P13256164607228719680.Spec : Prop :=
  ∀ n, P13256164607228719680.a n = (A331109 (n + 1) : ℚ)

end A331109

/-! ## A331109.P2249905351014711055

`2^∑{e}[n+1, A112310(#)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A331109

/-- `2^∑{e}[n+1, A112310(#)]` -/
def P2249905351014711055.Spec : Prop :=
  ∀ n, P2249905351014711055.a n = (A331109 (n + 1) : ℚ)

end A331109

/-! ## A331109.P13072314623759026682

`∏{e}[n+1, A000005(A217562(A239556(#)²))]`
-/

namespace A331109.P13072314623759026682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000005 (A217562 (A239556 (Nat.factorization (f1 n) p) ^ 2).toNat).toNat

end

end A331109.P13072314623759026682

namespace A331109

/-- `∏{e}[n+1, A000005(A217562(A239556(#)²))]` -/
def P13072314623759026682.Spec : Prop :=
  ∀ n, P13072314623759026682.a n = A331109 (n + 1)

end A331109

/-! ## A331109.P14167264113019283244

`∏{e}[n+1, A000005(A000040(n)*A000045(#))]`
-/

namespace A331109.P14167264113019283244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000005 (A000040 n * A000045 (Nat.factorization (f1 n) p)).toNat

end

end A331109.P14167264113019283244

namespace A331109

/-- `∏{e}[n+1, A000005(A000040(n)*A000045(#))]` -/
def P14167264113019283244.Spec : Prop :=
  ∀ n, P14167264113019283244.a n = A331109 (n + 1)

end A331109

/-! ## A331109.P1319578397458384307

`∏{e}[n+1, A000005(A139714(A000045(#)+2))]`
-/

namespace A331109.P1319578397458384307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000005 (A139714 (A000045 (Nat.factorization (f1 n) p) + 2).toNat).toNat

end

end A331109.P1319578397458384307

namespace A331109

/-- `∏{e}[n+1, A000005(A139714(A000045(#)+2))]` -/
def P1319578397458384307.Spec : Prop :=
  ∀ n, P1319578397458384307.a n = A331109 (n + 1)

end A331109

/-! ## A331109.P6823771369641095959

`∏{e}[n+1, A000005(A000203(A000330(#²))+1)]`
-/

namespace A331109.P6823771369641095959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000005 (A000203 (A000330 (Nat.factorization (f1 n) p ^ 2)).toNat + 1).toNat

end

end A331109.P6823771369641095959

namespace A331109

/-- `∏{e}[n+1, A000005(A000203(A000330(#²))+1)]` -/
def P6823771369641095959.Spec : Prop :=
  ∀ n, P6823771369641095959.a n = A331109 (n + 1)

end A331109

/-! ## A331109.P11449945118667522708

`∏{e}[n+1, A000005(or(3, #^#))]`
-/

namespace A331109.P11449945118667522708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000005 (Nat.lor 3 (Nat.factorization (f1 n) p ^ Nat.factorization (f1 n) p))

end

end A331109.P11449945118667522708

namespace A331109

/-- `∏{e}[n+1, A000005(or(3, #^#))]` -/
def P11449945118667522708.Spec : Prop :=
  ∀ n, P11449945118667522708.a n = A331109 (n + 1)

end A331109

/-! ## A331109.P1069258112893321650

`A068068(A280705(A124859(n+1)))`
-/

namespace A331109.P1069258112893321650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (A280705 (A124859 (n + 1)).toNat).toNat

end

end A331109.P1069258112893321650

namespace A331109

/-- `A068068(A280705(A124859(n+1)))` -/
def P1069258112893321650.Spec : Prop :=
  ∀ n, P1069258112893321650.a n = A331109 (n + 1)

end A331109

/-! ## A331109.P12360436740382090321

`∏{e}[n+1, A000005(A004676(A000040(#)))]`
-/

namespace A331109.P12360436740382090321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000005 (A004676 (A000040 (Nat.factorization (f1 n) p)).toNat).toNat

end

end A331109.P12360436740382090321

namespace A331109

/-- `∏{e}[n+1, A000005(A004676(A000040(#)))]` -/
def P12360436740382090321.Spec : Prop :=
  ∀ n, P12360436740382090321.a n = A331109 (n + 1)

end A331109

/-! ## A331109.P15790386698935840923

`gcd(A000079(A253139(n+1)), A253139(n+1))`
-/

namespace A331109.P15790386698935840923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 (A253139 (n + 1)).toNat) (A253139 (n + 1))

end

end A331109.P15790386698935840923

namespace A331109

/-- `gcd(A000079(A253139(n+1)), A253139(n+1))` -/
def P15790386698935840923.Spec : Prop :=
  ∀ n, (P15790386698935840923.a n : ℤ) = A331109 (n + 1)

end A331109

/-!
# A331112: Sum of the digits of the n-th prime number in balanced ternary.

The programs for A331112, the canonical program `A331112.P16798163641556817156` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331112 has offset 1).

The definition of A331112 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A331112.P16798163641556817156

`A065363(A000040(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A331112

/-- `A065363(A000040(n+1))` -/
def P16798163641556817156.Spec : Prop :=
  ∀ n, P16798163641556817156.a n = A331112 (n + 1)

theorem P16798163641556817156.correct : P16798163641556817156.Spec := by
  intro n
  simp only [A331112, Nat.add_sub_cancel]

end A331112

/-! ## A331112.P13075445637675289160

`A065363(p?[abs(xor(n, -2))])`
-/

namespace A331112.P13075445637675289160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A331112.P13075445637675289160

namespace A331112

/-- `A065363(p?[abs(xor(n, -2))])` -/
def P13075445637675289160.Spec : Prop :=
  ∀ n, P13075445637675289160.a n = A331112 (n + 1)

end A331112

/-! ## A331112.P2089283740144586184

`A065363(p?[a(n-1)+2])` with `a(0)=2, a(1)=1`
-/

namespace A331112.P2089283740144586184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A331112.P2089283740144586184

namespace A331112

/-- `A065363(p?[a(n-1)+2])` -/
def P2089283740144586184.Spec : Prop :=
  ∀ n, P2089283740144586184.a n = A331112 (n + 1)

end A331112

/-! ## A331112.P4564888336136897039

`A065363(3*p?[round(8*n/7)])`
-/

namespace A331112.P4564888336136897039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A331112.P4564888336136897039

namespace A331112

/-- `A065363(3*p?[round(8*n/7)])` -/
def P4564888336136897039.Spec : Prop :=
  ∀ n, P4564888336136897039.a n = A331112 (n + 1)

end A331112

/-! ## A331112.P17816368953648844737

`A065363(Δ[A007504(n)])`
-/

namespace A331112.P17816368953648844737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (f1 (n + 1) - f1 n).toNat

end

end A331112.P17816368953648844737

namespace A331112

/-- `A065363(Δ[A007504(n)])` -/
def P17816368953648844737.Spec : Prop :=
  ∀ n, P17816368953648844737.a n = A331112 (n + 1)

end A331112

/-! ## A331112.P7222448733544272833

`A065363(record[A051698(n)])`
-/

namespace A331112.P7222448733544272833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A331112.P7222448733544272833

namespace A331112

/-- `A065363(record[A051698(n)])` -/
def P7222448733544272833.Spec : Prop :=
  ∀ n, P7222448733544272833.a n = A331112 (n + 1)

end A331112

/-! ## A331112.P13601465138808711892

`A065363(p?[A014681(n)])`
-/

namespace A331112.P13601465138808711892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A331112.P13601465138808711892

namespace A331112

/-- `A065363(p?[A014681(n)])` -/
def P13601465138808711892.Spec : Prop :=
  ∀ n, P13601465138808711892.a n = A331112 (n + 1)

end A331112

/-! ## A331112.P11221908062453895455

`A065363(A001748(n+1))`
-/

namespace A331112.P11221908062453895455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (A001748 (n + 1)).toNat

end

end A331112.P11221908062453895455

namespace A331112

/-- `A065363(A001748(n+1))` -/
def P11221908062453895455.Spec : Prop :=
  ∀ n, P11221908062453895455.a n = A331112 (n + 1)

end A331112

/-! ## A331112.P14508963487142352003

`A065363(A171577(n+1))`
-/

namespace A331112.P14508963487142352003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (A171577 (n + 1)).toNat

end

end A331112.P14508963487142352003

namespace A331112

/-- `A065363(A171577(n+1))` -/
def P14508963487142352003.Spec : Prop :=
  ∀ n, P14508963487142352003.a n = A331112 (n + 1)

end A331112

/-! ## A331112.P4270125337635168272

`A065363(A008578(n+2))`
-/

namespace A331112.P4270125337635168272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (A008578 (n + 2)).toNat

end

end A331112.P4270125337635168272

namespace A331112

/-- `A065363(A008578(n+2))` -/
def P4270125337635168272.Spec : Prop :=
  ∀ n, P4270125337635168272.a n = A331112 (n + 1)

end A331112

/-! ## A331112.P10056273770228816302

`A065363(A112773(n+2))`
-/

namespace A331112.P10056273770228816302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (A112773 (n + 2)).toNat

end

end A331112.P10056273770228816302

namespace A331112

/-- `A065363(A112773(n+2))` -/
def P10056273770228816302.Spec : Prop :=
  ∀ n, P10056273770228816302.a n = A331112 (n + 1)

end A331112

/-! ## A331112.P11727488794436794812

`A065363(A182986(n+2))`
-/

namespace A331112.P11727488794436794812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (A182986 (n + 2)).toNat

end

end A331112.P11727488794436794812

namespace A331112

/-- `A065363(A182986(n+2))` -/
def P11727488794436794812.Spec : Prop :=
  ∀ n, P11727488794436794812.a n = A331112 (n + 1)

end A331112

/-! ## A331112.P8884303387713638490

`A065363(A324050(n+2))`
-/

namespace A331112.P8884303387713638490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (A324050 (n + 2)).toNat

end

end A331112.P8884303387713638490

namespace A331112

/-- `A065363(A324050(n+2))` -/
def P8884303387713638490.Spec : Prop :=
  ∀ n, P8884303387713638490.a n = A331112 (n + 1)

end A331112

/-! ## A331112.P6630873126316853652

`A065363(sqrt(A001248(n+1)))`
-/

namespace A331112.P6630873126316853652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A331112.P6630873126316853652

namespace A331112

/-- `A065363(sqrt(A001248(n+1)))` -/
def P6630873126316853652.Spec : Prop :=
  ∀ n, P6630873126316853652.a n = A331112 (n + 1)

end A331112

/-! ## A331112.P3338681049644473405

`A065363(record[A006530(n+2)])`
-/

namespace A331112.P3338681049644473405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A331112.P3338681049644473405

namespace A331112

/-- `A065363(record[A006530(n+2)])` -/
def P3338681049644473405.Spec : Prop :=
  ∀ n, P3338681049644473405.a n = A331112 (n + 1)

end A331112

/-! ## A331112.P17557555272815059463

`A065363(record[A014963(n+2)])`
-/

namespace A331112.P17557555272815059463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A331112.P17557555272815059463

namespace A331112

/-- `A065363(record[A014963(n+2)])` -/
def P17557555272815059463.Spec : Prop :=
  ∀ n, P17557555272815059463.a n = A331112 (n + 1)

end A331112

/-! ## A331112.P9438178875933661385

`A065363(record[A020639(n+2)])`
-/

namespace A331112.P9438178875933661385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A331112.P9438178875933661385

namespace A331112

/-- `A065363(record[A020639(n+2)])` -/
def P9438178875933661385.Spec : Prop :=
  ∀ n, P9438178875933661385.a n = A331112 (n + 1)

end A331112

/-! ## A331112.P2771729159455217420

`A065363(eq[1, A001222(n+1)]+1)`
-/

namespace A331112.P2771729159455217420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A331112.P2771729159455217420

namespace A331112

/-- `A065363(eq[1, A001222(n+1)]+1)` -/
def P2771729159455217420.Spec : Prop :=
  ∀ n, P2771729159455217420.a n = A331112 (n + 1)

end A331112

/-! ## A331112.P4155598943656139827

`A065363(eq[2, A000005(n+1)]+1)`
-/

namespace A331112.P4155598943656139827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A331112.P4155598943656139827

namespace A331112

/-- `A065363(eq[2, A000005(n+1)]+1)` -/
def P4155598943656139827.Spec : Prop :=
  ∀ n, P4155598943656139827.a n = A331112 (n + 1)

end A331112

/-!
# A331113: Number of signed trees with n positive edges and n negative edges.

The programs for A331113, there is no canonical definition to state claims against.
-/

/-! ## A331113.P8020516874770513786

`A302939((n+1)²+n²)`
-/

namespace A331113.P8020516874770513786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302939 ((n + 1) ^ 2 + n ^ 2)

end

end A331113.P8020516874770513786

/-! ## A331113.P11657555853655106406

`A302939(A001844(n))^A178334(n)`
-/

namespace A331113.P11657555853655106406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302939 (A001844 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A331113.P11657555853655106406

/-! ## A331113.P16604780443145928035

`lcm(A033999(n), A302939(A001844(n)))`
-/

namespace A331113.P16604780443145928035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A302939 (A001844 n).toNat)

end

end A331113.P16604780443145928035

/-! ## A331113.P6298973563730819186

`A007318(∑[n])*A302939(A001844(n))`
-/

namespace A331113.P6298973563730819186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A302939 (A001844 n).toNat

end

end A331113.P6298973563730819186

/-! ## A331113.P3131345839442050509

`A302939(A001844(n))^A008683(2*A000040(n+1))`
-/

namespace A331113.P3131345839442050509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302939 (A001844 n).toNat : ℚ) ^ (A008683 (2 * A000040 (n + 1)).toNat : ℤ)

end

end A331113.P3131345839442050509

/-!
# A331114: Number of rooted trees with 2-colored non-root nodes with an n nodes of each color.

The programs for A331114, there is no canonical definition to state claims against.
-/

/-! ## A331114.P13779891034512064233

`A304489(∑[4*n]+1)`
-/

namespace A331114.P13779891034512064233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304489 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A331114.P13779891034512064233

/-! ## A331114.P15300418699071137501

`record[A003982(n)*A304489(n+1)]`
-/

namespace A331114.P15300418699071137501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A304489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331114.P15300418699071137501

/-! ## A331114.P2827587397385923179

`A304489(A001844(n))^A178334(n)`
-/

namespace A331114.P2827587397385923179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304489 (A001844 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A331114.P2827587397385923179

/-! ## A331114.P13882964364910281787

`or(A000007(n), A304489(A001844(n)))`
-/

namespace A331114.P13882964364910281787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A304489 (A001844 n).toNat)

end

end A331114.P13882964364910281787

/-! ## A331114.P12894135403696195079

`A007318(∑[n])*A304489(A001844(n))`
-/

namespace A331114.P12894135403696195079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A304489 (A001844 n).toNat

end

end A331114.P12894135403696195079

/-!
# A331115: Numerators of the best approximations for sqrt(2).

The programs for A331115, the canonical program `A331115.P14879469615910223876` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331115 has offset 1).

The definition of A331115 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331115.P14879469615910223876

`6*a(n-3)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=7, a(4)=17, a(5)=24`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A331115

/-- `6*a(n-3)-a(n-6)` -/
def P14879469615910223876.Spec : Prop :=
  ∀ n, P14879469615910223876.a n = A331115 (n + 1)

theorem P14879469615910223876.correct : P14879469615910223876.Spec := by
  intro n
  simp only [A331115, Nat.add_sub_cancel]

end A331115

/-! ## A331115.P12981911560990763530

`A097564(∑[(n+1)%3+1])`
-/

namespace A331115.P12981911560990763530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 3 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A331115.P12981911560990763530

namespace A331115

/-- `A097564(∑[(n+1)%3+1])` -/
def P12981911560990763530.Spec : Prop :=
  ∀ n, P12981911560990763530.a n = A331115 (n + 1)

end A331115

/-! ## A331115.P924800005597734424

`A143607(A319371(n+1))`
-/

namespace A331115.P924800005597734424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143607 (A319371 (n + 1)).toNat

end

end A331115.P924800005597734424

namespace A331115

/-- `A143607(A319371(n+1))` -/
def P924800005597734424.Spec : Prop :=
  ∀ n, P924800005597734424.a n = A331115 (n + 1)

end A331115

/-! ## A331115.P13428666918226064308

`A097564(A047258(n+2))`
-/

namespace A331115.P13428666918226064308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (A047258 (n + 2)).toNat

end

end A331115.P13428666918226064308

namespace A331115

/-- `A097564(A047258(n+2))` -/
def P13428666918226064308.Spec : Prop :=
  ∀ n, P13428666918226064308.a n = A331115 (n + 1)

end A331115

/-! ## A331115.P13422172940469601243

`A097564(A047267(n+2))`
-/

namespace A331115.P13422172940469601243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (A047267 (n + 2)).toNat

end

end A331115.P13422172940469601243

namespace A331115

/-- `A097564(A047267(n+2))` -/
def P13422172940469601243.Spec : Prop :=
  ∀ n, P13422172940469601243.a n = A331115 (n + 1)

end A331115

/-! ## A331115.P7626565892370217862

`record[A119016(A002264(4*n))]`
-/

namespace A331115.P7626565892370217862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (A002264 (4 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331115.P7626565892370217862

namespace A331115

/-- `record[A119016(A002264(4*n))]` -/
def P7626565892370217862.Spec : Prop :=
  ∀ n, P7626565892370217862.a n = A331115 (n + 1)

end A331115

/-! ## A331115.P17669295778795691186

`record[A119016(A002264(n)+n)]`
-/

namespace A331115.P17669295778795691186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (A002264 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331115.P17669295778795691186

namespace A331115

/-- `record[A119016(A002264(n)+n)]` -/
def P17669295778795691186.Spec : Prop :=
  ∀ n, P17669295778795691186.a n = A331115 (n + 1)

end A331115

/-! ## A331115.P4892894541607200262

`A082766(A004772(n+1)+2)`
-/

namespace A331115.P4892894541607200262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (A004772 (n + 1) + 2).toNat

end

end A331115.P4892894541607200262

namespace A331115

/-- `A082766(A004772(n+1)+2)` -/
def P4892894541607200262.Spec : Prop :=
  ∀ n, P4892894541607200262.a n = A331115 (n + 1)

end A331115

/-! ## A331115.P9996380885598429010

`A082766(A042965(n+2)+1)`
-/

namespace A331115.P9996380885598429010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (A042965 (n + 2) + 1).toNat

end

end A331115.P9996380885598429010

namespace A331115

/-- `A082766(A042965(n+2)+1)` -/
def P9996380885598429010.Spec : Prop :=
  ∀ n, P9996380885598429010.a n = A331115 (n + 1)

end A331115

/-! ## A331115.P9017577307030316363

`A082766(∑[A101825(n+1)]+1)`
-/

namespace A331115.P9017577307030316363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A331115.P9017577307030316363

namespace A331115

/-- `A082766(∑[A101825(n+1)]+1)` -/
def P9017577307030316363.Spec : Prop :=
  ∀ n, P9017577307030316363.a n = A331115 (n + 1)

end A331115

/-! ## A331115.P11067050623712102512

`A097564(2*n+1)+A097564(2*n)`
-/

namespace A331115.P11067050623712102512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (2 * n + 1) + A097564 (2 * n)

end

end A331115.P11067050623712102512

namespace A331115

/-- `A097564(2*n+1)+A097564(2*n)` -/
def P11067050623712102512.Spec : Prop :=
  ∀ n, P11067050623712102512.a n = A331115 (n + 1)

end A331115

/-! ## A331115.P5520539936604357478

`A082766(4*(n+1)-A008576(n+1)+1)`
-/

namespace A331115.P5520539936604357478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 ((4 * (n + 1) : ℤ) - A008576 (n + 1) + 1).toNat

end

end A331115.P5520539936604357478

namespace A331115

/-- `A082766(4*(n+1)-A008576(n+1)+1)` -/
def P5520539936604357478.Spec : Prop :=
  ∀ n, P5520539936604357478.a n = A331115 (n + 1)

end A331115

/-!
# A331118: Irregular triangle read by rows where row n lists primitive first differences in the reduced residue system of A002110(n).

The programs for A331118, there is no canonical definition to state claims against.
-/

/-! ## A331118.P306204960774809587

`A278164(2*n+3)+A000120(A016116(n+1))`
-/

namespace A331118.P306204960774809587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278164 (2 * n + 3) + A000120 (A016116 (n + 1)).toNat

end

end A331118.P306204960774809587

/-! ## A331118.P17028403833801495798

`A000005(2^A278164(2*n+3))`
-/

namespace A331118.P17028403833801495798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A278164 (2 * n + 3) : ℤ))).toNat

end

end A331118.P17028403833801495798

/-! ## A331118.P15645828322586701265

`A000005(A000079(A278164(2*n+3)))`
-/

namespace A331118.P15645828322586701265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000079 (A278164 (2 * n + 3)).toNat).toNat

end

end A331118.P15645828322586701265

/-! ## A331118.P3282245313217960

`A278164(2*n+3)+A088840(A143967(n+5))`
-/

namespace A331118.P3282245313217960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278164 (2 * n + 3) + A088840 (A143967 (n + 5)).toNat

end

end A331118.P3282245313217960

/-!
# A331119: Indices of A025487(n) in A055932.

The programs for A331119, there is no canonical definition to state claims against.
-/

/-! ## A331119.P2003349786715007364

`A077462(A025487(n+1))`
-/

namespace A331119.P2003349786715007364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A025487 (n + 1)).toNat

end

end A331119.P2003349786715007364

/-! ## A331119.P11533864460467648831

`A077462(record[A329899(n+1)])`
-/

namespace A331119.P11533864460467648831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A331119.P11533864460467648831

/-! ## A331119.P9371385145527547663

`A077462(record[A051466(n+2)])`
-/

namespace A331119.P9371385145527547663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A331119.P9371385145527547663

/-! ## A331119.P1299874178596079619

`A077462(∪[A364710(n+1), A070175(n)])`
-/

namespace A331119.P1299874178596079619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070175 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A331119.P1299874178596079619

/-! ## A331119.P5159896302933289845

`A077462(A181817(n+1)/A181816(n+1))`
-/

namespace A331119.P5159896302933289845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (SequenceMachineLib.roundAway ((A181817 (n + 1) : ℚ) / (A181816 (n + 1) : ℚ))).toNat

end

end A331119.P5159896302933289845

/-! ## A331119.P13318243841247201444

`A077462(∪[A161812(n+1), A181824(n+1)])`
-/

namespace A331119.P13318243841247201444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181824 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A331119.P13318243841247201444

/-! ## A331119.P14393731492956947769

`A077462(∪[A181824(n+1), A181827(n+1)])`
-/

namespace A331119.P14393731492956947769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181827 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A331119.P14393731492956947769

/-! ## A331119.P9672306750754429325

`A077462(∪[A007416(n+1), A363280(n+1)])`
-/

namespace A331119.P9672306750754429325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363280 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A331119.P9672306750754429325

/-! ## A331119.P11582377058840915444

`A077462(record[A046523(n+1)])`
-/

namespace A331119.P11582377058840915444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A331119.P11582377058840915444

/-! ## A331119.P16556187179982348449

`A377028(A025487(2*n+1-n))`
-/

namespace A331119.P16556187179982348449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377028 (A025487 (2 * n + 1 - n)).toNat

end

end A331119.P16556187179982348449

/-!
# A331120: Number of non-isomorphic minimal deterministic finite automata with n transient states recognizing a finite binary language.

The programs for A331120, there is no canonical definition to state claims against.
-/

/-! ## A331120.P2081857800848780090

`A002472(A007559(n))*A063834(n)`
-/

namespace A331120.P2081857800848780090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (A007559 n).toNat * A063834 n

end

end A331120.P2081857800848780090

/-! ## A331120.P4960118445845293575

`A278531(lcm(A000071(n+1), A055099(n)))`
-/

namespace A331120.P4960118445845293575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278531 (Int.lcm (A000071 (n + 1)) (A055099 n))

end

end A331120.P4960118445845293575

/-!
# A331122: Nearest integer to Integral_{x=0..n} x^x dx.

The programs for A331122, there is no canonical definition to state claims against.
-/

/-! ## A331122.P3583663912058933516

`A008619(A038181(n+1))-A001710(n)`
-/

namespace A331122.P3583663912058933516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A038181 (n + 1)).toNat - A001710 n

end

end A331122.P3583663912058933516

/-! ## A331122.P18313114482277443694

`A004526(or(A038722(n+1), A179539(n)))`
-/

namespace A331122.P18313114482277443694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lor (A038722 (n + 1)) (A179539 n)).toNat

end

end A331122.P18313114482277443694

/-!
# A331125: Numbers k such that there is no prime p between k and (9/8)k, exclusive.

The programs for A331125, there is no canonical definition to state claims against.
-/

/-! ## A331125.P16688906915126409044

`eq[0, A327802(n+1)]+1`
-/

namespace A331125.P16688906915126409044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327802 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A331125.P16688906915126409044

/-! ## A331125.P2716408177343067046

`A029579(record[n*(2-A327802(n+1))])`
-/

namespace A331125.P2716408177343067046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - A327802 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A331125.P2716408177343067046

/-! ## A331125.P5492671366385381884

`record[(n+1)%A211432(A123317(n+1))]`
-/

namespace A331125.P5492671366385381884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A211432 (A123317 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331125.P5492671366385381884

/-! ## A331125.P3006260198771494854

`record[gcd(A000027(n+1), A327802(n+1))]`
-/

namespace A331125.P3006260198771494854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A327802 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331125.P3006260198771494854

/-! ## A331125.P672536079457893367

`lt[A128076(A327802(n+1)+1), 2]+1`
-/

namespace A331125.P672536079457893367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128076 (A327802 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A331125.P672536079457893367

/-!
# A331126: Array read by antidiagonals: A(n,k) is the number of T_0 n-regular set multipartitions (multisets of sets) on a k-set.

The programs for A331126, there is no canonical definition to state claims against.
-/

/-! ## A331126.P13361975415192273724

`A328192(A331570(n))`
-/

namespace A331126.P13361975415192273724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328192 (A331570 n).toNat

end

end A331126.P13361975415192273724

/-! ## A331126.P12116102988572332895

`A324689(A396403(n))`
-/

namespace A331126.P12116102988572332895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324689 (A396403 n).toNat

end

end A331126.P12116102988572332895

/-! ## A331126.P16834111279589917815

`A048793(A331277(n)²)`
-/

namespace A331126.P16834111279589917815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (A331277 n ^ 2).toNat

end

end A331126.P16834111279589917815

/-! ## A331126.P14882849416964568932

`A058911(A331508(n)+1)`
-/

namespace A331126.P14882849416964568932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058911 (A331508 n + 1).toNat

end

end A331126.P14882849416964568932

/-! ## A331126.P5632183090664159541

`∑{d}[A331570(n), A301342(#)]`
-/

namespace A331126.P5632183090664159541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A301342 d

end

end A331126.P5632183090664159541

/-!
# A331127: Number of n-regular hypergraphs on 5 labeled vertices.

The programs for A331127, there is no canonical definition to state claims against.
-/

/-! ## A331127.P6727236871398429836

`A188445(A340266(n+1)+2*n+1)`
-/

namespace A331127.P6727236871398429836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188445 (A340266 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A331127.P6727236871398429836

/-! ## A331127.P7491100242623437873

`A188445(A055999(n+1)+A036452(n+1))`
-/

namespace A331127.P7491100242623437873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188445 (A055999 (n + 1) + A036452 (n + 1)).toNat

end

end A331127.P7491100242623437873

/-!
# A331128: Number of ways to write n as n = h_1*1! + h_2*2! + ... + h_k*k! where 0 <= h_i <= 2*i for all i.

The programs for A331128, there is no canonical definition to state claims against.
-/

/-! ## A331128.P11544573545474616991

`A065202(A208743(n+1))+A055399(n+3)`
-/

namespace A331128.P11544573545474616991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065202 (A208743 (n + 1)).toNat + A055399 (n + 3)

end

end A331128.P11544573545474616991

/-! ## A331128.P3760312417521747651

`A117535(ceil(3*n/2))%A265801(n+1)`
-/

namespace A331128.P3760312417521747651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117535 ⌈3 * ((n : ℚ) / 2)⌉.toNat) (A265801 (n + 1))

end

end A331128.P3760312417521747651

/-! ## A331128.P12287399056440977280

`A117535(A001651(n+1)+A000038(A001060(n)))`
-/

namespace A331128.P12287399056440977280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117535 (A001651 (n + 1) + A000038 (A001060 n).toNat).toNat

end

end A331128.P12287399056440977280

/-! ## A331128.P2414224698295320115

`A058061(A208743(n+1))`
-/

namespace A331128.P2414224698295320115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058061 (A208743 (n + 1)).toNat

end

end A331128.P2414224698295320115

/-! ## A331128.P5933934391133613139

`∑{e}[A208009(n+1), A006769(#)]`
-/

namespace A331128.P5933934391133613139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A006769 (Nat.factorization (f1 n).natAbs p)

end

end A331128.P5933934391133613139

/-!
# A331129: Number of n-regular hypergraphs on 6 labeled vertices.

The programs for A331129, there is no canonical definition to state claims against.
-/

/-! ## A331129.P1846490633319493308

`record[A188445(∑[n+3]-2)]`
-/

namespace A331129.P1846490633319493308
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188445 (∑ j ∈ Finset.range (n + 1), f2 j - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331129.P1846490633319493308

/-! ## A331129.P3493165690502091045

`A188445(eq[A123110(n), A325002(n+5)])`
-/

namespace A331129.P3493165690502091045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325002 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188445 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A331129.P3493165690502091045

/-! ## A331129.P9957771780310143117

`A188445(lt[A302381(n+5), A123110(n)])`
-/

namespace A331129.P9957771780310143117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188445 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A331129.P9957771780310143117

/-!
# A331130: a(n) = Sum_{i=1..n} u_3(i)*u_3(i+1), where u_3(n) = A034836(n).

The programs for A331130, the canonical program `A331130.P5600848552238636263` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331130 has offset 1).

The definition of A331130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331130.P5600848552238636263

`∑[A034836(n+1)*A034836(n+2)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A331130

/-- `∑[A034836(n+1)*A034836(n+2)]` -/
def P5600848552238636263.Spec : Prop :=
  ∀ n, P5600848552238636263.a n = A331130 (n + 1)

theorem P5600848552238636263.correct : P5600848552238636263.Spec := by
  intro n
  simp only [A331130, Nat.add_sub_cancel]

end A331130

/-! ## A331130.P10322257196887479760

`A118759(∑[A033273(n+2)*A033273(n+1)])`
-/

namespace A331130.P10322257196887479760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 2) * A033273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A331130.P10322257196887479760

namespace A331130

/-- `A118759(∑[A033273(n+2)*A033273(n+1)])` -/
def P10322257196887479760.Spec : Prop :=
  ∀ n, P10322257196887479760.a n = A331130 (n + 1)

end A331130

/-! ## A331130.P7066423044195925653

`∑[A001222(13^A337093(n+2))*A001055(n+1)]`
-/

namespace A331130.P7066423044195925653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((13 : ℚ) ^ (A337093 (n + 2) : ℤ))).toNat * A001055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331130.P7066423044195925653

namespace A331130

/-- `∑[A001222(13^A337093(n+2))*A001055(n+1)]` -/
def P7066423044195925653.Spec : Prop :=
  ∀ n, P7066423044195925653.a n = A331130 (n + 1)

end A331130

/-! ## A331130.P10816394252341948981

`∑[A001222(13^A337093(n+2))*A033273(n+1)]`
-/

namespace A331130.P10816394252341948981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((13 : ℚ) ^ (A337093 (n + 2) : ℤ))).toNat * A033273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331130.P10816394252341948981

namespace A331130

/-- `∑[A001222(13^A337093(n+2))*A033273(n+1)]` -/
def P10816394252341948981.Spec : Prop :=
  ∀ n, P10816394252341948981.a n = A331130 (n + 1)

end A331130

/-! ## A331130.P9184323486020013754

`∑[A001222(13^A337093(n+2))*A294894(n+1)]`
-/

namespace A331130.P9184323486020013754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((13 : ℚ) ^ (A337093 (n + 2) : ℤ))).toNat * A294894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331130.P9184323486020013754

namespace A331130

/-- `∑[A001222(13^A337093(n+2))*A294894(n+1)]` -/
def P9184323486020013754.Spec : Prop :=
  ∀ n, P9184323486020013754.a n = A331130 (n + 1)

end A331130

/-!
# A331131: a(n) = Sum_{i=1..n} d(i)*d_3(i+1), where d(n) = A000005(n) and d_3(n) = A007425(n).

The programs for A331131, the canonical program `A331131.P16311086492705837412` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331131 has offset 1).

The definition of A331131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331131.P2618123910615471463

`∑[∑{d}[n+2, A000005(n+1)*A000005(#)]]`
-/

namespace A331131.P2618123910615471463
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000005 (n + 1) * A000005 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331131.P2618123910615471463

namespace A331131

/-- `∑[∑{d}[n+2, A000005(n+1)*A000005(#)]]` -/
def P2618123910615471463.Spec : Prop :=
  ∀ n, P2618123910615471463.a n = A331131 (n + 1)

end A331131

/-! ## A331131.P9047043187714338650

`∑[A000005(n+1)*A007425(n+2)]`
-/

namespace A331131.P9047043187714338650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A007425 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331131.P9047043187714338650

namespace A331131

/-- `∑[A000005(n+1)*A007425(n+2)]` -/
def P9047043187714338650.Spec : Prop :=
  ∀ n, P9047043187714338650.a n = A331131 (n + 1)

end A331131

/-! ## A331131.P11450369832207201756

`∑[sqrt(A097988(n+2))*A000005(n+1)]`
-/

namespace A331131.P11450369832207201756
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A097988 (n + 2) : ℝ) * (A000005 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331131.P11450369832207201756

namespace A331131

/-- `∑[sqrt(A097988(n+2))*A000005(n+1)]` -/
def P11450369832207201756.Spec : Prop :=
  ∀ n, P11450369832207201756.a n = (A331131 (n + 1) : ℝ)

end A331131

/-! ## A331131.P16311086492705837412

`∑[(A032741(n+1)+1)*A007425(n+2)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A331131

/-- `∑[(A032741(n+1)+1)*A007425(n+2)]` -/
def P16311086492705837412.Spec : Prop :=
  ∀ n, P16311086492705837412.a n = A331131 (n + 1)

theorem P16311086492705837412.correct : P16311086492705837412.Spec := by
  intro n
  simp only [A331131, Nat.add_sub_cancel]

end A331131

/-! ## A331131.P9989445179252538193

`∑[A000005(n+1)*A145444(A253885(n+1)+1)]`
-/

namespace A331131.P9989445179252538193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A145444 (A253885 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331131.P9989445179252538193

namespace A331131

/-- `∑[A000005(n+1)*A145444(A253885(n+1)+1)]` -/
def P9989445179252538193.Spec : Prop :=
  ∀ n, P9989445179252538193.a n = A331131 (n + 1)

end A331131

/-! ## A331131.P10992074329144455805

`∑[∑{d}[n+2, A000005(lcm(#, n+1))]]`
-/

namespace A331131.P10992074329144455805
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000005 (Nat.lcm d (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331131.P10992074329144455805

namespace A331131

/-- `∑[∑{d}[n+2, A000005(lcm(#, n+1))]]` -/
def P10992074329144455805.Spec : Prop :=
  ∀ n, P10992074329144455805.a n = A331131 (n + 1)

end A331131

/-!
# A331132: a(n) = Sum_{i=1..n} d(i)^2*d(i+1), where d(n) = A000005(n).

The programs for A331132, the canonical program `A331132.P5685763318772251677` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331132 has offset 1).

The definition of A331132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331132.P15990638944845900227

`2*A331133(n+1)`
-/

namespace A331132.P15990638944845900227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331133 (n + 1)

end

end A331132.P15990638944845900227

namespace A331132

/-- `2*A331133(n+1)` -/
def P15990638944845900227.Spec : Prop :=
  ∀ n, P15990638944845900227.a n = A331132 (n + 1)

end A331132

/-! ## A331132.P5685763318772251677

`∑[A000005(n+1)*A092517(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A331132

/-- `∑[A000005(n+1)*A092517(n+1)]` -/
def P5685763318772251677.Spec : Prop :=
  ∀ n, P5685763318772251677.a n = A331132 (n + 1)

theorem P5685763318772251677.correct : P5685763318772251677.Spec := by
  intro n
  simp only [A331132, Nat.add_sub_cancel]

end A331132

/-! ## A331132.P5858823983155456768

`∑[A062011(n+1)*A063123(n+1)]`
-/

namespace A331132.P5858823983155456768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1) * A063123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331132.P5858823983155456768

namespace A331132

/-- `∑[A062011(n+1)*A063123(n+1)]` -/
def P5858823983155456768.Spec : Prop :=
  ∀ n, P5858823983155456768.a n = A331132 (n + 1)

end A331132

/-! ## A331132.P10082189340776271928

`∑[A000005(n+2)*A035116(n+1)]`
-/

namespace A331132.P10082189340776271928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2) * A035116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331132.P10082189340776271928

namespace A331132

/-- `∑[A000005(n+2)*A035116(n+1)]` -/
def P10082189340776271928.Spec : Prop :=
  ∀ n, P10082189340776271928.a n = A331132 (n + 1)

end A331132

/-! ## A331132.P13882487121546264123

`∑[A000005(n+1)²*A000005(n+2)]`
-/

namespace A331132.P13882487121546264123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2 * A000005 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331132.P13882487121546264123

namespace A331132

/-- `∑[A000005(n+1)²*A000005(n+2)]` -/
def P13882487121546264123.Spec : Prop :=
  ∀ n, P13882487121546264123.a n = A331132 (n + 1)

end A331132

/-! ## A331132.P12923942102321035138

`A331133(A000027(n+1))+A331133(n+1)`
-/

namespace A331132.P12923942102321035138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331133 (A000027 (n + 1)).toNat + A331133 (n + 1)

end

end A331132.P12923942102321035138

namespace A331132

/-- `A331133(A000027(n+1))+A331133(n+1)` -/
def P12923942102321035138.Spec : Prop :=
  ∀ n, P12923942102321035138.a n = A331132 (n + 1)

end A331132

/-! ## A331132.P12306673489759328649

`∑[A000005(n+1)*A000005(A278256(n+1))]`
-/

namespace A331132.P12306673489759328649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000005 (A278256 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331132.P12306673489759328649

namespace A331132

/-- `∑[A000005(n+1)*A000005(A278256(n+1))]` -/
def P12306673489759328649.Spec : Prop :=
  ∀ n, P12306673489759328649.a n = A331132 (n + 1)

end A331132

/-! ## A331132.P15879280779442464870

`∑[A000005((n+1)*(n+2))*A000005(n+1)]`
-/

namespace A331132.P15879280779442464870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1) * (n + 2)) * A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331132.P15879280779442464870

namespace A331132

/-- `∑[A000005((n+1)*(n+2))*A000005(n+1)]` -/
def P15879280779442464870.Spec : Prop :=
  ∀ n, P15879280779442464870.a n = A331132 (n + 1)

end A331132

/-! ## A331132.P438982479014655091

`A004277(A331133(n+1))`
-/

namespace A331132.P438982479014655091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A331133 (n + 1)).toNat

end

end A331132.P438982479014655091

namespace A331132

/-- `A004277(A331133(n+1))` -/
def P438982479014655091.Spec : Prop :=
  ∀ n, P438982479014655091.a n = A331132 (n + 1)

end A331132

/-!
# A331133: a(n) = Sum_{i=1..n} d(i)^2*d(i+1)/2, where d(n) = A000005(n).

The programs for A331133, the canonical program `A331133.P4944719196915576697` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331133 has offset 1).

The definition of A331133 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331132, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A331133.P4944719196915576697

`A331132(n+1)/2`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A331133

/-- `A331132(n+1)/2` -/
def P4944719196915576697.Spec : Prop :=
  ∀ n, P4944719196915576697.a n = (A331133 (n + 1) : ℚ)

end A331133

/-! ## A331133.P7297632907754764775

`∑[A000005(n+1)*A063123(n+1)]`
-/

namespace A331133.P7297632907754764775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A063123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331133.P7297632907754764775

namespace A331133

/-- `∑[A000005(n+1)*A063123(n+1)]` -/
def P7297632907754764775.Spec : Prop :=
  ∀ n, P7297632907754764775.a n = A331133 (n + 1)

end A331133

/-! ## A331133.P5988848143025084407

`∑[A062011(n+1)/2*A063123(n+1)]`
-/

namespace A331133.P5988848143025084407
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062011 (n + 1) : ℚ) / 2 * (A063123 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331133.P5988848143025084407

namespace A331133

/-- `∑[A062011(n+1)/2*A063123(n+1)]` -/
def P5988848143025084407.Spec : Prop :=
  ∀ n, P5988848143025084407.a n = (A331133 (n + 1) : ℚ)

end A331133

/-! ## A331133.P13277585611908617413

`∑[A000005(n+1)²/2*A000005(n+2)]`
-/

namespace A331133.P13277585611908617413
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) ^ 2 : ℚ) / 2 * (A000005 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331133.P13277585611908617413

namespace A331133

/-- `∑[A000005(n+1)²/2*A000005(n+2)]` -/
def P13277585611908617413.Spec : Prop :=
  ∀ n, P13277585611908617413.a n = (A331133 (n + 1) : ℚ)

end A331133

/-! ## A331133.P18186849455556191847

`∑[A004525(A000005(n+1)²*A000005(n+2))]`
-/

namespace A331133.P18186849455556191847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A000005 (n + 1) ^ 2 * A000005 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331133.P18186849455556191847

namespace A331133

/-- `∑[A004525(A000005(n+1)²*A000005(n+2))]` -/
def P18186849455556191847.Spec : Prop :=
  ∀ n, P18186849455556191847.a n = A331133 (n + 1)

end A331133

/-! ## A331133.P13260422118733735844

`∑[A026741(A000005(n+1)²*A000005(n+2))]`
-/

namespace A331133.P13260422118733735844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A000005 (n + 1) ^ 2 * A000005 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331133.P13260422118733735844

namespace A331133

/-- `∑[A026741(A000005(n+1)²*A000005(n+2))]` -/
def P13260422118733735844.Spec : Prop :=
  ∀ n, P13260422118733735844.a n = A331133 (n + 1)

end A331133

/-! ## A331133.P10921596747799412516

`A001281(A331132(n+1))`
-/

namespace A331133.P10921596747799412516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A331132 (n + 1)).toNat

end

end A331133.P10921596747799412516

namespace A331133

/-- `A001281(A331132(n+1))` -/
def P10921596747799412516.Spec : Prop :=
  ∀ n, P10921596747799412516.a n = A331133 (n + 1)

end A331133

/-!
# A331134: a(n) = Sum_{primes p <= n} r_2(p)/4, where r_2(n) = A004018(n).

The programs for A331134, the canonical program `A331134.P4818159890852718201` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331134 has offset 1).

The definition of A331134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331134.P4818159890852718201

`∑[or(3, n)%∏{d}[∑{p}[n+1, C(#, n)], #]]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A331134

/-- `∑[or(3, n)%∏{d}[∑{p}[n+1, C(#, n)], #]]` -/
def P4818159890852718201.Spec : Prop :=
  ∀ n, (P4818159890852718201.a n : ℤ) = A331134 (n + 1)

theorem P4818159890852718201.correct : P4818159890852718201.Spec := by
  intro n
  simp only [A331134, Nat.add_sub_cancel]

end A331134

/-! ## A331134.P17482578839898036971

`∑[((3*n)%∏{d}[∑{p}[n+1, C(#, n)], #])%4]`
-/

namespace A331134.P17482578839898036971
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.choose p n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n % (∏ d ∈ Nat.divisors (f2 n), d) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331134.P17482578839898036971

namespace A331134

/-- `∑[((3*n)%∏{d}[∑{p}[n+1, C(#, n)], #])%4]` -/
def P17482578839898036971.Spec : Prop :=
  ∀ n, (P17482578839898036971.a n : ℤ) = A331134 (n + 1)

end A331134

/-! ## A331134.P2663647305468140081

`∑[A055672(n+1)%4]`
-/

namespace A331134.P2663647305468140081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055672 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331134.P2663647305468140081

namespace A331134

/-- `∑[A055672(n+1)%4]` -/
def P2663647305468140081.Spec : Prop :=
  ∀ n, P2663647305468140081.a n = A331134 (n + 1)

end A331134

/-! ## A331134.P14797726890929303087

`∑[and(n+2, A055029(n+1))]`
-/

namespace A331134.P14797726890929303087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 2 : ℤ) (A055029 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331134.P14797726890929303087

namespace A331134

/-- `∑[and(n+2, A055029(n+1))]` -/
def P14797726890929303087.Spec : Prop :=
  ∀ n, P14797726890929303087.a n = A331134 (n + 1)

end A331134

/-! ## A331134.P649910359078930418

`∑[and(gcd(2, n), A063441(n+1))]`
-/

namespace A331134.P649910359078930418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.gcd 2 n : ℤ) (A063441 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331134.P649910359078930418

namespace A331134

/-- `∑[and(gcd(2, n), A063441(n+1))]` -/
def P649910359078930418.Spec : Prop :=
  ∀ n, P649910359078930418.a n = A331134 (n + 1)

end A331134

/-! ## A331134.P3429141764772238546

`∑[or(3, n)%A089026(n+1)]`
-/

namespace A331134.P3429141764772238546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.lor 3 n : ℤ) (A089026 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331134.P3429141764772238546

namespace A331134

/-- `∑[or(3, n)%A089026(n+1)]` -/
def P3429141764772238546.Spec : Prop :=
  ∀ n, P3429141764772238546.a n = A331134 (n + 1)

end A331134

/-! ## A331134.P3162773989164698303

`∑[A055029(C(A006530(n+1), n))]`
-/

namespace A331134.P3162773989164698303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 (Nat.choose (A006530 (n + 1)).toNat n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331134.P3162773989164698303

namespace A331134

/-- `∑[A055029(C(A006530(n+1), n))]` -/
def P3162773989164698303.Spec : Prop :=
  ∀ n, P3162773989164698303.a n = A331134 (n + 1)

end A331134

/-! ## A331134.P11247649171868948059

`∑[A063725(C(A014963(n+1), n))]`
-/

namespace A331134.P11247649171868948059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (Nat.choose (A014963 (n + 1)).toNat n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331134.P11247649171868948059

namespace A331134

/-- `∑[A063725(C(A014963(n+1), n))]` -/
def P11247649171868948059.Spec : Prop :=
  ∀ n, P11247649171868948059.a n = A331134 (n + 1)

end A331134

/-! ## A331134.P6002541030321874710

`A000720(n+1)-A066520(n+1)`
-/

namespace A331134.P6002541030321874710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A066520 (n + 1)

end

end A331134.P6002541030321874710

namespace A331134

/-- `A000720(n+1)-A066520(n+1)` -/
def P6002541030321874710.Spec : Prop :=
  ∀ n, P6002541030321874710.a n = A331134 (n + 1)

end A331134

/-! ## A331134.P17808122128776010794

`∑[A151763(n+1)+A010051(n+1)]`
-/

namespace A331134.P17808122128776010794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151763 (n + 1) + A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331134.P17808122128776010794

namespace A331134

/-- `∑[A151763(n+1)+A010051(n+1)]` -/
def P17808122128776010794.Spec : Prop :=
  ∀ n, P17808122128776010794.a n = A331134 (n + 1)

end A331134

/-! ## A331134.P7578312648337637250

`∑[A002654(n+1)*A010051(n+1)]`
-/

namespace A331134.P7578312648337637250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1) * A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331134.P7578312648337637250

namespace A331134

/-- `∑[A002654(n+1)*A010051(n+1)]` -/
def P7578312648337637250.Spec : Prop :=
  ∀ n, P7578312648337637250.a n = A331134 (n + 1)

end A331134

/-! ## A331134.P15956460740459009931

`A000720(n+1)+A066339(n+1)-A066490(n+1)`
-/

namespace A331134.P15956460740459009931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A066339 (n + 1) - A066490 (n + 1))

end

end A331134.P15956460740459009931

namespace A331134

/-- `A000720(n+1)+A066339(n+1)-A066490(n+1)` -/
def P15956460740459009931.Spec : Prop :=
  ∀ n, P15956460740459009931.a n = A331134 (n + 1)

end A331134

/-!
# A331135: a(n) = Sum_{primes p <= n} r_2(p-1)/4, where r_2(n) = A004018(n).

The programs for A331135, the canonical program `A331135.P16910825974695220271` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331135 has offset 1).

The definition of A331135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331135.P16910825974695220271

`a(n-1)+A002654(n)*A010051(n+1)` with `a(0)=0`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A331135

/-- `a(n-1)+A002654(n)*A010051(n+1)` -/
def P16910825974695220271.Spec : Prop :=
  ∀ n, P16910825974695220271.a n = A331135 (n + 1)

theorem P16910825974695220271.correct : P16910825974695220271.Spec := by
  intro n
  simp only [A331135, Nat.add_sub_cancel]

end A331135

/-! ## A331135.P11720909634406484416

`A008624(∑[A004018(n)*A080339(n+1)])`
-/

namespace A331135.P11720909634406484416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n * A080339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A331135.P11720909634406484416

namespace A331135

/-- `A008624(∑[A004018(n)*A080339(n+1)])` -/
def P11720909634406484416.Spec : Prop :=
  ∀ n, P11720909634406484416.a n = A331135 (n + 1)

end A331135

/-! ## A331135.P2579435778843700131

`∑[A010051(n+1)*A110655(A004018(n))]`
-/

namespace A331135.P2579435778843700131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A110655 (A004018 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331135.P2579435778843700131

namespace A331135

/-- `∑[A010051(n+1)*A110655(A004018(n))]` -/
def P2579435778843700131.Spec : Prop :=
  ∀ n, P2579435778843700131.a n = A331135 (n + 1)

end A331135

/-! ## A331135.P14244966015259572232

`∑[A002654(abs(1-2*n)+1)*A010051(n+1)]`
-/

namespace A331135.P14244966015259572232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (|1 - (2 * n : ℤ)| + 1).toNat * A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331135.P14244966015259572232

namespace A331135

/-- `∑[A002654(abs(1-2*n)+1)*A010051(n+1)]` -/
def P14244966015259572232.Spec : Prop :=
  ∀ n, P14244966015259572232.a n = A331135 (n + 1)

end A331135

/-! ## A331135.P15199201664692703937

`∑[A002654(A008574(n))%A014973(n+1)]`
-/

namespace A331135.P15199201664692703937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002654 (A008574 n).toNat) (A014973 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331135.P15199201664692703937

namespace A331135

/-- `∑[A002654(A008574(n))%A014973(n+1)]` -/
def P15199201664692703937.Spec : Prop :=
  ∀ n, P15199201664692703937.a n = A331135 (n + 1)

end A331135

/-!
# A331136: a(n) = Sum_{primes p < n} r_2(n-p)/4, where r_2(n) = A004018(n).

The programs for A331136, there is no canonical definition to state claims against.
-/

/-! ## A331136.P10519087988232888702

`A317685(n+1)+A317682(n+1)`
-/

namespace A331136.P10519087988232888702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317685 (n + 1) + A317682 (n + 1)

end

end A331136.P10519087988232888702

/-! ## A331136.P18087100659706120328

`A382760(A000792(n)-1)`
-/

namespace A331136.P18087100659706120328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382760 (A000792 n - 1).toNat

end

end A331136.P18087100659706120328

/-! ## A331136.P4474079585883809057

`A061394(C(A245606(n+1), ∏{e}[n+1, #+1]))`
-/

namespace A331136.P4474079585883809057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061394 (Nat.choose (A245606 (n + 1)).toNat (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)))

end

end A331136.P4474079585883809057

/-! ## A331136.P6809278439735371751

`A001222(A007098(n)*A051119(n+1))`
-/

namespace A331136.P6809278439735371751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007098 n * A051119 (n + 1)).toNat

end

end A331136.P6809278439735371751

/-! ## A331136.P1833262938110718339

`A001222(A146620(n+1)*A152947(n+1))`
-/

namespace A331136.P1833262938110718339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A146620 (n + 1) * A152947 (n + 1)).toNat

end

end A331136.P1833262938110718339

/-!
# A331137: a(n) = Sum_{primes p <= n} b(p-1), where b = A108548.

The programs for A331137, there is no canonical definition to state claims against.
-/

/-! ## A331137.P8160814208752206758

`∑[char[A079545(n+1)-1]]`
-/

namespace A331137.P8160814208752206758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079545 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331137.P8160814208752206758

/-! ## A331137.P7694976542838776327

`∑[char[p?[A001481(n+1)+1]-1]]`
-/

namespace A331137.P7694976542838776327
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331137.P7694976542838776327

/-! ## A331137.P361708009722329769

`∑[C(n, ∏{e}[n+1, n*#])*A229062(n)]`
-/

namespace A331137.P361708009722329769
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (∏ p ∈ Nat.primeFactors (f2 n), n * Nat.factorization (f2 n) p) : ℤ) * A229062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331137.P361708009722329769

/-! ## A331137.P13948294678388255068

`∑[floor(∑{e}[n+1, #]^(4-n))*A000161(n)]`
-/

namespace A331137.P13948294678388255068
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ) ^ (4 - (n : ℤ) : ℤ)⌋ * A000161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331137.P13948294678388255068

/-! ## A331137.P16927066306776632878

`∑[char[A000010(A079545(n+1))]]`
-/

namespace A331137.P16927066306776632878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A079545 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331137.P16927066306776632878

/-! ## A331137.P2005198797287932997

`∑[Δ[A230980(n)]*A000161(n)]`
-/

namespace A331137.P2005198797287932997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331137.P2005198797287932997

/-! ## A331137.P15394416875922514464

`∑[A000161(n)*A010051(n+1)]`
-/

namespace A331137.P15394416875922514464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n * A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331137.P15394416875922514464

/-! ## A331137.P51731297832658164

`∑[A010051((n+1)^A000161(n))]`
-/

namespace A331137.P51731297832658164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A000161 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331137.P51731297832658164

/-! ## A331137.P1569245995829034797

`∑[char[A006093(n+1)]*A000161(n)]`
-/

namespace A331137.P1569245995829034797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331137.P1569245995829034797

/-! ## A331137.P18039304055453638573

`∑[char[A000040(n+1)-1]*A000161(n)]`
-/

namespace A331137.P18039304055453638573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331137.P18039304055453638573

/-!
# A331139: Number of different coincidence site lattices of index 2n-1 in lattice D_4.

The programs for A331139, there is no canonical definition to state claims against.
-/

/-! ## A331139.P3447023013916051465

`A331140(Δ[n²])`
-/

namespace A331139.P3447023013916051465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331140 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A331139.P3447023013916051465

/-! ## A331139.P11483816163829211620

`and(-3, A331140(comp[2*n]))`
-/

namespace A331139.P11483816163829211620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A331140 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A331139.P11483816163829211620

/-! ## A331139.P16790048458058392278

`A331140(2*n+1)+char[45]`
-/

namespace A331139.P16790048458058392278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331140 (2 * n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A331139.P16790048458058392278

/-! ## A331139.P16366184278214946231

`A000027(A331140(2*n+1))`
-/

namespace A331139.P16366184278214946231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A331140 (2 * n + 1)).toNat

end

end A331139.P16366184278214946231

/-! ## A331139.P3026493985912066579

`A023443(A331140(2*n+1)+1)`
-/

namespace A331139.P3026493985912066579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A331140 (2 * n + 1) + 1).toNat

end

end A331139.P3026493985912066579

/-!
# A331141: Number of symmetrically inequivalent coincidence rotations of index n in lattice A_4.

The programs for A331141, there is no canonical definition to state claims against.
-/

/-! ## A331141.P6729457479921075041

`gcd(5, n+1)*A331142(n+1)`
-/

namespace A331141.P6729457479921075041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 5 (n + 1) : ℤ) * A331142 (n + 1)

end

end A331141.P6729457479921075041

/-! ## A331141.P7201790930991455383

`A031364(A071274(n+1)²)`
-/

namespace A331141.P7201790930991455383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031364 (A071274 (n + 1) ^ 2).toNat

end

end A331141.P7201790930991455383

/-! ## A331141.P15211837141873589915

`A031364(A085908(n+1)²)`
-/

namespace A331141.P15211837141873589915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031364 (A085908 (n + 1) ^ 2).toNat

end

end A331141.P15211837141873589915

/-! ## A331141.P17045584328939198777

`A031364(A258373(n+1)²)`
-/

namespace A331141.P17045584328939198777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031364 (A258373 (n + 1) ^ 2).toNat

end

end A331141.P17045584328939198777

/-! ## A331141.P8578623391317830497

`A031364(∑[A193581(n)!]²)`
-/

namespace A331141.P8578623391317830497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A193581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031364 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A331141.P8578623391317830497

/-!
# A331142: Number of different coincidence site lattices of index n in lattice A_4.

The programs for A331142, there is no canonical definition to state claims against.
-/

/-! ## A331142.P13012391067024394536

`A331141(n+1)/gcd(5, n+1)`
-/

namespace A331142.P13012391067024394536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331141 (n + 1) : ℚ) / (Nat.gcd 5 (n + 1) : ℚ)

end

end A331142.P13012391067024394536

/-! ## A331142.P10670321313621181358

`gcd(A331141(n+1), A331143(A141214(n)))`
-/

namespace A331142.P10670321313621181358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A331141 (n + 1)) (A331143 (A141214 n).toNat)

end

end A331142.P10670321313621181358

/-! ## A331142.P16059217208005687480

`A065958(n+1)%A027421(A050468(n+1))`
-/

namespace A331142.P16059217208005687480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065958 (n + 1)) (A027421 (A050468 (n + 1)).toNat)

end

end A331142.P16059217208005687480

/-! ## A331142.P1369911854295032859

`A331141(n+1)%A191906(A076525(n+1))`
-/

namespace A331142.P1369911854295032859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331141 (n + 1)) (A191906 (A076525 (n + 1)).toNat)

end

end A331142.P1369911854295032859

/-! ## A331142.P8460226263887065262

`A031364(A032555(n+1)²)%A245606(A332217(n+1))`
-/

namespace A331142.P8460226263887065262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031364 (A032555 (n + 1) ^ 2).toNat) (A245606 (A332217 (n + 1)).toNat)

end

end A331142.P8460226263887065262

/-!
# A331145: Triangle read by rows: T(n,k) (n>=k>=1) = ceiling((n/k)*ceiling(n/k)).

The programs for A331145, there is no canonical definition to state claims against.
-/

/-! ## A331145.P9956071403379978899

`A331146(∑[char[∑[n]]]²-n)`
-/

namespace A331145.P9956071403379978899
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331146 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A331145.P9956071403379978899

/-! ## A331145.P2983880896068020677

`and(-1, A331146(A038722(n+1)))`
-/

namespace A331145.P2983880896068020677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A331146 (A038722 (n + 1)).toNat)

end

end A331145.P2983880896068020677

/-! ## A331145.P2330311261371924988

`A331146(A038722(n+1))^A178334(n)`
-/

namespace A331145.P2330311261371924988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331146 (A038722 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A331145.P2330311261371924988

/-! ## A331145.P5968157250696308081

`A331146(A038722(n+1))%A001539(n)`
-/

namespace A331145.P5968157250696308081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331146 (A038722 (n + 1)).toNat) (A001539 n)

end

end A331145.P5968157250696308081

/-! ## A331145.P7418986581070250851

`gcd(A000038(n), A331146(A038722(n+1)))`
-/

namespace A331145.P7418986581070250851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A331146 (A038722 (n + 1)).toNat)

end

end A331145.P7418986581070250851

/-! ## A331145.P14844678762127394153

`lcm(A020985(n), A331146(A038722(n+1)))`
-/

namespace A331145.P14844678762127394153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A331146 (A038722 (n + 1)).toNat)

end

end A331145.P14844678762127394153

/-! ## A331145.P18345502085995060772

`A331146(A061579(n)+1)%A000041(n+3)`
-/

namespace A331145.P18345502085995060772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331146 (A061579 n + 1).toNat) (A000041 (n + 3))

end

end A331145.P18345502085995060772

/-! ## A331145.P10927389050040631515

`∏{p}[n, A001221(#)]*A331146(A038722(n+1))`
-/

namespace A331145.P10927389050040631515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), A001221 p) * A331146 (A038722 (n + 1)).toNat

end

end A331145.P10927389050040631515

/-! ## A331145.P18112675100868815795

`A331146(A038722(n+1))^A000045(ceil(n/98))`
-/

namespace A331145.P18112675100868815795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331146 (A038722 (n + 1)).toNat : ℚ) ^ (A000045 ⌈(n : ℚ) / 98⌉.toNat : ℤ)

end

end A331145.P18112675100868815795

/-! ## A331145.P5215418076405570502

`A331146(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A331145.P5215418076405570502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331146 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A331145.P5215418076405570502

/-!
# A331146: Triangle read by rows: T(n,k) (n>=k>=1) = f(n,n-k+1) where f(n,k) = ceiling((n/k)*ceiling(n/k)).

The programs for A331146, there is no canonical definition to state claims against.
-/

/-! ## A331146.P10509795974515331991

`A331145(∑[char[∑[n]]]²-n)`
-/

namespace A331146.P10509795974515331991
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331145 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A331146.P10509795974515331991

/-! ## A331146.P3453152556639759268

`and(-1, A331145(A038722(n+1)))`
-/

namespace A331146.P3453152556639759268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A331145 (A038722 (n + 1)).toNat)

end

end A331146.P3453152556639759268

/-! ## A331146.P693448464854041106

`A331145(A038722(n+1))^A178334(n)`
-/

namespace A331146.P693448464854041106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331145 (A038722 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A331146.P693448464854041106

/-! ## A331146.P16095942360614411110

`A331145(A038722(n+1))%A000291(n)`
-/

namespace A331146.P16095942360614411110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331145 (A038722 (n + 1)).toNat) (A000291 n)

end

end A331146.P16095942360614411110

/-! ## A331146.P9684217943849904236

`gcd(A000038(n), A331145(A038722(n+1)))`
-/

namespace A331146.P9684217943849904236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A331145 (A038722 (n + 1)).toNat)

end

end A331146.P9684217943849904236

/-! ## A331146.P6322946640188260985

`lcm(A020985(n), A331145(A038722(n+1)))`
-/

namespace A331146.P6322946640188260985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A331145 (A038722 (n + 1)).toNat)

end

end A331146.P6322946640188260985

/-! ## A331146.P17116501577645406117

`A007318(C(2, n))*A331145(A038722(n+1))`
-/

namespace A331146.P17116501577645406117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A331145 (A038722 (n + 1)).toNat

end

end A331146.P17116501577645406117

/-! ## A331146.P14999563493997735579

`A331145(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A331146.P14999563493997735579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331145 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A331146.P14999563493997735579

/-! ## A331146.P11291370495793334170

`A000041(C(2, n+2))*A331145(A038722(n+1))`
-/

namespace A331146.P11291370495793334170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A331145 (A038722 (n + 1)).toNat

end

end A331146.P11291370495793334170

/-!
# A331147: Triangle read by rows: T(n,k) (n>=k>=1) = floor((n/k)*floor(n/k)).

The programs for A331147, there is no canonical definition to state claims against.
-/

/-! ## A331147.P135883583455955932

`A331148(∑[char[∑[n]]]²-n)`
-/

namespace A331147.P135883583455955932
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331148 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A331147.P135883583455955932

/-! ## A331147.P13656491903033069450

`and(-1, A331148(A038722(n+1)))`
-/

namespace A331147.P13656491903033069450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A331148 (A038722 (n + 1)).toNat)

end

end A331147.P13656491903033069450

/-! ## A331147.P15613526596388247586

`A331148(A038722(n+1))^A178334(n)`
-/

namespace A331147.P15613526596388247586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331148 (A038722 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A331147.P15613526596388247586

/-! ## A331147.P16505119507076386611

`A331148(A038722(n+1))^A275069(n)`
-/

namespace A331147.P16505119507076386611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331148 (A038722 (n + 1)).toNat : ℚ) ^ (A275069 n : ℤ)

end

end A331147.P16505119507076386611

/-! ## A331147.P17921978234725077273

`A331148(A038722(n+1))%A001539(n)`
-/

namespace A331147.P17921978234725077273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331148 (A038722 (n + 1)).toNat) (A001539 n)

end

end A331147.P17921978234725077273

/-! ## A331147.P8734091458809576553

`lcm(A033999(n), A331148(A038722(n+1)))`
-/

namespace A331147.P8734091458809576553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A331148 (A038722 (n + 1)).toNat)

end

end A331147.P8734091458809576553

/-! ## A331147.P13338456287053932015

`A331148(A038722(n+1))/A007318(((-1)^n)²)`
-/

namespace A331147.P13338456287053932015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331148 (A038722 (n + 1)).toNat : ℚ) / (A007318 (((-1) ^ n) ^ 2).toNat : ℚ)

end

end A331147.P13338456287053932015

/-! ## A331147.P10056193523485072352

`A001222(record[A014963(n+2)])*A331148(A038722(n+1))`
-/

namespace A331147.P10056193523485072352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A331148 (A038722 (n + 1)).toNat

end

end A331147.P10056193523485072352

/-!
# A331148: Triangle read by rows: T(n,k) (n>=k>=1) = f(n,n-k+1) where f(n,k) = floor((n/k)*floor(n/k)).

The programs for A331148, there is no canonical definition to state claims against.
-/

/-! ## A331148.P14363469766313362820

`A331147(∑[char[∑[n]]]²-n)`
-/

namespace A331148.P14363469766313362820
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331147 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A331148.P14363469766313362820

/-! ## A331148.P15216372431245582675

`and(-1, A331147(A038722(n+1)))`
-/

namespace A331148.P15216372431245582675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A331147 (A038722 (n + 1)).toNat)

end

end A331148.P15216372431245582675

/-! ## A331148.P3475356256435213482

`Δ[A331147(A038722(n))+a(n-1)]` with `a(0)=0`
-/

namespace A331148.P3475356256435213482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A331147 (A038722 n).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A331148.P3475356256435213482

/-! ## A331148.P15558526242719425496

`A331147(A038722(n+1))^A178334(n)`
-/

namespace A331148.P15558526242719425496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331147 (A038722 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A331148.P15558526242719425496

/-! ## A331148.P15122883247499793953

`A331147(A038722(n+1))%A001539(n)`
-/

namespace A331148.P15122883247499793953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331147 (A038722 (n + 1)).toNat) (A001539 n)

end

end A331148.P15122883247499793953

/-! ## A331148.P17034579978135959610

`gcd(A000038(n), A331147(A038722(n+1)))`
-/

namespace A331148.P17034579978135959610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A331147 (A038722 (n + 1)).toNat)

end

end A331148.P17034579978135959610

/-! ## A331148.P8645800003550516005

`lcm(A020985(n), A331147(A038722(n+1)))`
-/

namespace A331148.P8645800003550516005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A331147 (A038722 (n + 1)).toNat)

end

end A331148.P8645800003550516005

/-! ## A331148.P13117227831190506834

`A033999(n)²*A331147(A038722(n+1))`
-/

namespace A331148.P13117227831190506834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A331147 (A038722 (n + 1)).toNat

end

end A331148.P13117227831190506834

/-! ## A331148.P14001918954259100194

`A331147(A038722(n+1))^(A000040(n+1)%2)`
-/

namespace A331148.P14001918954259100194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331147 (A038722 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A331148.P14001918954259100194

/-! ## A331148.P6893074603227476520

`A331147(A038722(n+1))+A001222((n+4)²)%2`
-/

namespace A331148.P6893074603227476520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331147 (A038722 (n + 1)).toNat + Int.tmod (A001222 ((n + 4) ^ 2)) 2

end

end A331148.P6893074603227476520

/-!
# A331149: Triangle read by rows: T(n,k) (n>=k>=1) = floor((n/k)*ceiling(n/k)).

The programs for A331149, there is no canonical definition to state claims against.
-/

/-! ## A331149.P6530101860094783440

`A331150(∑[char[∑[n]]]²-n)`
-/

namespace A331149.P6530101860094783440
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331150 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A331149.P6530101860094783440

/-! ## A331149.P17408658773558196070

`abs(1-A331150(A038722(n+1)))+1`
-/

namespace A331149.P17408658773558196070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A331150 (A038722 (n + 1)).toNat| + 1

end

end A331149.P17408658773558196070

/-! ## A331149.P4241185517374771520

`A331150(A038722(n+1))%A016825(n)`
-/

namespace A331149.P4241185517374771520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331150 (A038722 (n + 1)).toNat) (A016825 n)

end

end A331149.P4241185517374771520

/-! ## A331149.P10284263673559704152

`gcd(A151878(n), A331150(A038722(n+1)))`
-/

namespace A331149.P10284263673559704152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151878 n) (A331150 (A038722 (n + 1)).toNat)

end

end A331149.P10284263673559704152

/-! ## A331149.P7393416895601770956

`lcm(A020985(n), A331150(A038722(n+1)))`
-/

namespace A331149.P7393416895601770956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A331150 (A038722 (n + 1)).toNat)

end

end A331149.P7393416895601770956

/-! ## A331149.P8015155902776539622

`or(A000007(n), A331150(A038722(n+1)))`
-/

namespace A331149.P8015155902776539622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A331150 (A038722 (n + 1)).toNat)

end

end A331149.P8015155902776539622

/-! ## A331149.P4000446506175210298

`∏{d}[A331150(A038722(n+1)), A014963(#)]`
-/

namespace A331149.P4000446506175210298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331150 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A331149.P4000446506175210298

/-! ## A331149.P2472244034418121352

`and(A154990(n+1), A331150(A038722(n+1)))`
-/

namespace A331149.P2472244034418121352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A154990 (n + 1)) (A331150 (A038722 (n + 1)).toNat)

end

end A331149.P2472244034418121352

/-! ## A331149.P18443898028008153786

`A331150(A038722(n+1))+C(2, A000203(n+2))`
-/

namespace A331149.P18443898028008153786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331150 (A038722 (n + 1)).toNat + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A331149.P18443898028008153786

/-! ## A331149.P2216706248042402044

`A000010(((-1)^n)²)*A331150(A038722(n+1))`
-/

namespace A331149.P2216706248042402044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (((-1) ^ n) ^ 2).toNat * A331150 (A038722 (n + 1)).toNat

end

end A331149.P2216706248042402044

/-!
# A331150: Triangle read by rows: T(n,k) (n>=k>=1) = f(n,n-k+1) where f(n,k) = floor((n/k)*ceiling(n/k)).

The programs for A331150, there is no canonical definition to state claims against.
-/

/-! ## A331150.P15300325073245944388

`A331149(∑[char[∑[n]]]²-n)`
-/

namespace A331150.P15300325073245944388
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331149 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A331150.P15300325073245944388

/-! ## A331150.P11322439809817919733

`or(char[1], A331149(A038722(n+1)))`
-/

namespace A331150.P11322439809817919733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A331149 (A038722 (n + 1)).toNat)

end

end A331150.P11322439809817919733

/-! ## A331150.P5643040854726061523

`A331149(A038722(n+1))%A001539(n)`
-/

namespace A331150.P5643040854726061523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331149 (A038722 (n + 1)).toNat) (A001539 n)

end

end A331150.P5643040854726061523

/-! ## A331150.P15422694907599727465

`gcd(A000038(n), A331149(A038722(n+1)))`
-/

namespace A331150.P15422694907599727465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A331149 (A038722 (n + 1)).toNat)

end

end A331150.P15422694907599727465

/-! ## A331150.P16075285211903527853

`lcm(A033999(n), A331149(A038722(n+1)))`
-/

namespace A331150.P16075285211903527853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A331149 (A038722 (n + 1)).toNat)

end

end A331150.P16075285211903527853

/-! ## A331150.P5898702516305473840

`∑{d}[A331149(A038722(n+1)), A000010(#)]`
-/

namespace A331150.P5898702516305473840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331149 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A331150.P5898702516305473840

/-! ## A331150.P4466581439064212973

`C(A331149(A038722(n+1)), abs(A057428(n)))`
-/

namespace A331150.P4466581439064212973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A331149 (A038722 (n + 1)).toNat).toNat |A057428 n|.toNat

end

end A331150.P4466581439064212973

/-! ## A331150.P5302658386515202376

`(A006530(n+2)%2)!*A331149(A038722(n+1))`
-/

namespace A331150.P5302658386515202376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A006530 (n + 2)) 2).toNat : ℤ) * A331149 (A038722 (n + 1)).toNat

end

end A331150.P5302658386515202376

/-! ## A331150.P2046520020520814997

`A331149(A038722(n+1))+n%A008683(A005117(n+1))`
-/

namespace A331150.P2046520020520814997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331149 (A038722 (n + 1)).toNat + Int.tmod (n : ℤ) (A008683 (A005117 (n + 1)).toNat)

end

end A331150.P2046520020520814997

/-!
# A331151: Triangle read by rows: T(n,k) (n>=k>=1) = ceiling((n/k)*floor(n/k)).

The programs for A331151, there is no canonical definition to state claims against.
-/

/-! ## A331151.P6968524808923757675

`A331152(∑[char[∑[n]]]²-n)`
-/

namespace A331151.P6968524808923757675
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331152 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A331151.P6968524808923757675

/-! ## A331151.P7044928809769655999

`and(-1, A331152(A038722(n+1)))`
-/

namespace A331151.P7044928809769655999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A331152 (A038722 (n + 1)).toNat)

end

end A331151.P7044928809769655999

/-! ## A331151.P16758269495405505726

`A331152(A038722(n+1))^A178334(n)`
-/

namespace A331151.P16758269495405505726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331152 (A038722 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A331151.P16758269495405505726

/-! ## A331151.P9408170790725512864

`A331152(A038722(n+1))%A001539(n)`
-/

namespace A331151.P9408170790725512864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331152 (A038722 (n + 1)).toNat) (A001539 n)

end

end A331151.P9408170790725512864

/-! ## A331151.P8160865681639327382

`gcd(A000038(n), A331152(A038722(n+1)))`
-/

namespace A331151.P8160865681639327382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A331152 (A038722 (n + 1)).toNat)

end

end A331151.P8160865681639327382

/-! ## A331151.P2794982050583662924

`A331152(A038722(n+1))^Δ[A002262(n)]`
-/

namespace A331151.P2794982050583662924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331152 (A038722 (n + 1)).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A331151.P2794982050583662924

/-! ## A331151.P9554026352818610965

`A331152(A038722(n+1))^(A000007(n)+1)`
-/

namespace A331151.P9554026352818610965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331152 (A038722 (n + 1)).toNat : ℚ) ^ (A000007 n + 1 : ℤ)

end

end A331151.P9554026352818610965

/-! ## A331151.P13684473457428580813

`A331152(A038722(n+1))+A000045(C(n, n+2))`
-/

namespace A331151.P13684473457428580813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331152 (A038722 (n + 1)).toNat + A000045 (Nat.choose n (n + 2))

end

end A331151.P13684473457428580813

/-! ## A331151.P13862585779174324272

`A331152(A038722(n+1))^gcd(n, A020639(n+1))`
-/

namespace A331151.P13862585779174324272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331152 (A038722 (n + 1)).toNat ^ Int.gcd (n : ℤ) (A020639 (n + 1))

end

end A331151.P13862585779174324272

/-!
# A331152: Triangle read by rows: T(n,k) (n>=k>=1) = f(n,n-k+1) where f(n,k) = ceiling((n/k)*floor(n/k)).

The programs for A331152, there is no canonical definition to state claims against.
-/

/-! ## A331152.P3695012403531526879

`A331151(∑[char[∑[n]]]²-n)`
-/

namespace A331152.P3695012403531526879
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331151 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A331152.P3695012403531526879

/-! ## A331152.P4244664359831165458

`and(-1, A331151(A038722(n+1)))`
-/

namespace A331152.P4244664359831165458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A331151 (A038722 (n + 1)).toNat)

end

end A331152.P4244664359831165458

/-! ## A331152.P11778155275220835630

`A331151(A038722(n+1))^A178334(n)`
-/

namespace A331152.P11778155275220835630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331151 (A038722 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A331152.P11778155275220835630

/-! ## A331152.P12399096142028804976

`A331151(A038722(n+1))%A016825(n)`
-/

namespace A331152.P12399096142028804976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331151 (A038722 (n + 1)).toNat) (A016825 n)

end

end A331152.P12399096142028804976

/-! ## A331152.P2891392359473897168

`gcd(A000038(n), A331151(A038722(n+1)))`
-/

namespace A331152.P2891392359473897168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A331151 (A038722 (n + 1)).toNat)

end

end A331152.P2891392359473897168

/-! ## A331152.P17889622915974961026

`lcm(A020985(n), A331151(A038722(n+1)))`
-/

namespace A331152.P17889622915974961026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A331151 (A038722 (n + 1)).toNat)

end

end A331152.P17889622915974961026

/-! ## A331152.P9734084236132174665

`∑{d}[A331151(A038722(n+1)), A000010(#)]`
-/

namespace A331152.P9734084236132174665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331151 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A331152.P9734084236132174665

/-! ## A331152.P12974622352196026187

`A007318(C(2, n²))*A331151(A038722(n+1))`
-/

namespace A331152.P12974622352196026187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n ^ 2)) * A331151 (A038722 (n + 1)).toNat

end

end A331152.P12974622352196026187

/-! ## A331152.P13798318301966561145

`A331151(A038722(n+1))^A014963(∑[n+1])`
-/

namespace A331152.P13798318301966561145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331151 (A038722 (n + 1)).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A331152.P13798318301966561145

/-! ## A331152.P13395642575769888952

`A014963(6*(n+1))*A331151(A038722(n+1))`
-/

namespace A331152.P13395642575769888952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A331151 (A038722 (n + 1)).toNat

end

end A331152.P13395642575769888952

/-!
# A331153: Triangle read by rows: T(n,k) (n>=k>=1) = round((n/k)*round(n/k)).

The programs for A331153, there is no canonical definition to state claims against.
-/

/-! ## A331153.P12337949762454976566

`A331154(∑[char[∑[n]]]²-n)`
-/

namespace A331153.P12337949762454976566
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331154 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A331153.P12337949762454976566

/-! ## A331153.P13651398327020631366

`and(-1, A331154(A038722(n+1)))`
-/

namespace A331153.P13651398327020631366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A331154 (A038722 (n + 1)).toNat)

end

end A331153.P13651398327020631366

/-! ## A331153.P15542489461875239230

`A331154(A038722(n+1))^A178334(n)`
-/

namespace A331153.P15542489461875239230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331154 (A038722 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A331153.P15542489461875239230

/-! ## A331153.P17247928531023533597

`A331154(A038722(n+1))%A001539(n)`
-/

namespace A331153.P17247928531023533597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331154 (A038722 (n + 1)).toNat) (A001539 n)

end

end A331153.P17247928531023533597

/-! ## A331153.P7069214127428177369

`gcd(A000038(n), A331154(A038722(n+1)))`
-/

namespace A331153.P7069214127428177369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A331154 (A038722 (n + 1)).toNat)

end

end A331153.P7069214127428177369

/-! ## A331153.P2422938331221935523

`lcm(A020985(n), A331154(A038722(n+1)))`
-/

namespace A331153.P2422938331221935523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A331154 (A038722 (n + 1)).toNat)

end

end A331153.P2422938331221935523

/-! ## A331153.P127608254184145383

`A331154(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A331153.P127608254184145383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331154 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A331153.P127608254184145383

/-! ## A331153.P5652339993195704248

`∏{e}[A000040(n+1), #]*A331154(A038722(n+1))`
-/

namespace A331153.P5652339993195704248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A331154 (A038722 (n + 1)).toNat

end

end A331153.P5652339993195704248

/-!
# A331154: Triangle read by rows: T(n,k) (n>=k>=1) = f(n,n-k+1) where f(n,k) = round((n/k)*round(n/k)).

The programs for A331154, there is no canonical definition to state claims against.
-/

/-! ## A331154.P15020640686722894320

`A331153(∑[char[∑[n]]]²-n)`
-/

namespace A331154.P15020640686722894320
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331153 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A331154.P15020640686722894320

/-! ## A331154.P6898023255329377281

`and(-1, A331153(A038722(n+1)))`
-/

namespace A331154.P6898023255329377281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A331153 (A038722 (n + 1)).toNat)

end

end A331154.P6898023255329377281

/-! ## A331154.P3299973911751368835

`A331153(A038722(n+1))^A178334(n)`
-/

namespace A331154.P3299973911751368835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331153 (A038722 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A331154.P3299973911751368835

/-! ## A331154.P9066395031454485984

`A331153(A038722(n+1))%A001539(n)`
-/

namespace A331154.P9066395031454485984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331153 (A038722 (n + 1)).toNat) (A001539 n)

end

end A331154.P9066395031454485984

/-! ## A331154.P3892399845786894043

`gcd(A000038(n), A331153(A038722(n+1)))`
-/

namespace A331154.P3892399845786894043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A331153 (A038722 (n + 1)).toNat)

end

end A331154.P3892399845786894043

/-! ## A331154.P6396612011323998656

`A000010(C(2, n)!)*A331153(A038722(n+1))`
-/

namespace A331154.P6396612011323998656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose 2 n)) * A331153 (A038722 (n + 1)).toNat

end

end A331154.P6396612011323998656

/-! ## A331154.P1659019835389330782

`A331153(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A331154.P1659019835389330782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331153 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A331154.P1659019835389330782

/-!
# A331156: Number of (weakly) connected gluing-parallel or GP-posets with n points.

The programs for A331156, there is no canonical definition to state claims against.
-/

/-! ## A331156.P13583084383384359536

`∑[A334270(n)-1-a(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A331156.P13583084383384359536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A334270 n - 1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331156.P13583084383384359536

/-! ## A331156.P9039862367598083542

`round(A000265(n*a(n-1)+(n-1)*(n-2)*a(n-2)+1)/2)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A331156.P9039862367598083542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  SequenceMachineLib.roundAway ((A000265 ((n : ℤ) * a (n - 1) + ((n : ℤ) - 1) * (((n : ℤ) - 2) * a (n - 2)) + 1).toNat : ℚ) / 2)

end

end A331156.P9039862367598083542

/-! ## A331156.P7063455826503472805

`A329825(A020112(n))`
-/

namespace A331156.P7063455826503472805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329825 (A020112 n).toNat

end

end A331156.P7063455826503472805

/-!
# A331157: Number of iposets (posets with interfaces) with starting interfaces only, with n points.

The programs for A331157, there is no canonical definition to state claims against.
-/

/-! ## A331157.P3284431420064705641

`round((acot(3)+1)^∑[n+1])`
-/

namespace A331157.P3284431420064705641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.acot (3 : ℝ) + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A331157.P3284431420064705641

/-!
# A331158: Number of iposets (posets with interfaces) with n points.

The programs for A331158, there is no canonical definition to state claims against.
-/

/-! ## A331158.P10918012344710716077

`A008611(A140454(n+1))`
-/

namespace A331158.P10918012344710716077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A140454 (n + 1)).toNat

end

end A331158.P10918012344710716077

/-!
# A331159: Number of GP-iposets (gluing-parallel posets with interfaces) with n points.

The programs for A331159, there is no canonical definition to state claims against.
-/

/-! ## A331159.P15419036609745400913

`A255072(A006166(8^n))`
-/

namespace A331159.P15419036609745400913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A006166 (8 ^ n)).toNat

end

end A331159.P15419036609745400913

/-!
# A331160: Array read by antidiagonals: A(n,k) is the number of nonnegative integer matrices with k distinct columns and any number of distinct nonzero rows with column sums n and rows in decreasing lexicographic order.

The programs for A331160, there is no canonical definition to state claims against.
-/

/-! ## A331160.P2266862550171508459

`A048793(A331277(n)²)*A097992(A151511(n))`
-/

namespace A331160.P2266862550171508459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (A331277 n ^ 2).toNat * A097992 (A151511 n).toNat

end

end A331160.P2266862550171508459

/-! ## A331160.P6662775432784162172

`A322073(A210215(n+1))*A331126(n)`
-/

namespace A331160.P6662775432784162172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322073 (A210215 (n + 1)).toNat * A331126 n

end

end A331160.P6662775432784162172

/-! ## A331160.P13735349497313642534

`A005206(A331161(n)^A215870(2*n+3))`
-/

namespace A331160.P13735349497313642534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (SequenceMachineLib.roundAway ((A331161 n : ℚ) ^ (A215870 (2 * n + 3) : ℤ))).toNat

end

end A331160.P13735349497313642534

/-! ## A331160.P2223292190269766056

`A036662(A331161(n))`
-/

namespace A331160.P2223292190269766056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036662 (A331161 n).toNat

end

end A331160.P2223292190269766056

/-! ## A331160.P14564253416624219892

`A037234(A331570(n))`
-/

namespace A331160.P14564253416624219892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037234 (A331570 n).toNat

end

end A331160.P14564253416624219892

/-!
# A331161: Array read by antidiagonals: A(n,k) is the number of nonnegative integer matrices with k distinct columns and any number of nonzero rows with column sums n and rows in nonincreasing lexicographic order.

The programs for A331161, there is no canonical definition to state claims against.
-/

/-! ## A331161.P14347880394022822682

`A034584(A331278(n))`
-/

namespace A331161.P14347880394022822682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034584 (A331278 n).toNat

end

end A331161.P14347880394022822682

/-! ## A331161.P16012046506935826252

`A176843(A331278(n)+2)`
-/

namespace A331161.P16012046506935826252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176843 (A331278 n + 2).toNat

end

end A331161.P16012046506935826252

/-! ## A331161.P13234676308732969599

`A332502(2*A331278(n))`
-/

namespace A331161.P13234676308732969599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332502 (2 * A331278 n).toNat

end

end A331161.P13234676308732969599

/-! ## A331161.P14253992094527181528

`A001876(A098542(n)^3)`
-/

namespace A331161.P14253992094527181528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (A098542 n ^ 3).toNat

end

end A331161.P14253992094527181528

/-! ## A331161.P1017601677021412104

`∑{d}[A331278(n), A005136(#)]`
-/

namespace A331161.P1017601677021412104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A005136 d

end

end A331161.P1017601677021412104

/-!
# A331162: a(n) is the number of digits in the concatenation of a(0) to a(n-1) that are equal to the corresponding digit in the concatenation of all integers >= 0, with a(0) = 0.

The programs for A331162, there is no canonical definition to state claims against.
-/

/-! ## A331162.P10309689811257830703

`char[comp[(n+1)*∑{digits}[n, C(#, 9)]]+10]+n`
-/

namespace A331162.P10309689811257830703
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => Nat.choose x 9).sum

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 10

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + n

end

end A331162.P10309689811257830703

/-! ## A331162.P707878875612597471

`char[comp[a(n-1)+a(n-dr(n))]]+n` with `a(0)=1, a(1)=-2, a(2)=-5, a(3)=9, a(4)=1, a(5)=0, a(6)=1, a(7)=1, a(8)=0`
-/

namespace A331162.P707878875612597471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, -5, 9, 1, 0, 1, 1, 0] fun n f2 =>
  f2 (n - 1) + f2 (n - SequenceMachineLib.digitalRoot (n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + n

end

end A331162.P707878875612597471

/-! ## A331162.P11134757661202511573

`C(A055640(n), 2)+n`
-/

namespace A331162.P11134757661202511573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A055640 n).toNat 2 + n

end

end A331162.P11134757661202511573

/-! ## A331162.P2007467897485950834

`C(A215887(n), 2)+n`
-/

namespace A331162.P2007467897485950834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A215887 n).toNat 2 + n

end

end A331162.P2007467897485950834

/-! ## A331162.P4884517827419722945

`char[A038687(n+1)]+n`
-/

namespace A331162.P4884517827419722945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n

end

end A331162.P4884517827419722945

/-! ## A331162.P16696184377790645051

`char[A066686(n+1)]+n`
-/

namespace A331162.P16696184377790645051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n

end

end A331162.P16696184377790645051

/-! ## A331162.P10777230164464536587

`char[A067574(n+1)]+n`
-/

namespace A331162.P10777230164464536587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n

end

end A331162.P10777230164464536587

/-! ## A331162.P6358502263395226422

`char[A236403(n+1)]+n`
-/

namespace A331162.P6358502263395226422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n

end

end A331162.P6358502263395226422

/-! ## A331162.P13177462584163680722

`char[A291093(n+1)]+n`
-/

namespace A331162.P13177462584163680722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n

end

end A331162.P13177462584163680722

/-! ## A331162.P17936463159037459007

`char[A228915(n+1)+1]+n`
-/

namespace A331162.P17936463159037459007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228915 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n

end

end A331162.P17936463159037459007

/-!
# A331163: a(n) is the number of occurrences of the most frequently seen difference between adjacent digits in the concatenation of a(0) to a(n-1), with a(0) = 0, a(1) = 0.

The programs for A331163, there is no canonical definition to state claims against.
-/

/-! ## A331163.P14860798744734902857

`or(A330015(n), A347689(A217155(n+1)))`
-/

namespace A331163.P14860798744734902857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A330015 n) (A347689 (A217155 (n + 1)).toNat)

end

end A331163.P14860798744734902857

/-! ## A331163.P14076201413993381088

`∑[A230093(A230091(n+1)^A230103(n))]`
-/

namespace A331163.P14076201413993381088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 (SequenceMachineLib.roundAway ((A230091 (n + 1) : ℚ) ^ (A230103 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331163.P14076201413993381088

/-! ## A331163.P3361143853601971728

`floor(lt[A286209(n), A128357(n+1)]/2)`
-/

namespace A331163.P3361143853601971728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286209 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ) / 2⌋

end

end A331163.P3361143853601971728

/-! ## A331163.P7715731585998839064

`A004526(lt[A000673(n), A128357(n+1)])`
-/

namespace A331163.P7715731585998839064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A331163.P7715731585998839064

/-! ## A331163.P17563993879998714792

`A057890(A000120(A027383(n+1)))`
-/

namespace A331163.P17563993879998714792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (A000120 (A027383 (n + 1)).toNat).toNat

end

end A331163.P17563993879998714792

/-!
# A331165: a(n) = a(n-1) + p(n) if p(n) > a(n-1), otherwise a(n) = a(n-1) - p(n), where p is the partition function A000041 (assuming a(n) = 0 for n < 0).

The programs for A331165, there is no canonical definition to state claims against.
-/

/-! ## A331165.P8137069668697782244

`(a(n-1)+A000041(n))%A139582(n)` with `a(0)=1`
-/

namespace A331165.P8137069668697782244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) + A000041 n) (A139582 n)

end

end A331165.P8137069668697782244

/-! ## A331165.P9236495882257534216

`∑[A000041(n)*A062157(A042125(n))]`
-/

namespace A331165.P9236495882257534216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A062157 (A042125 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331165.P9236495882257534216

/-! ## A331165.P12186705969038893010

`∑[A000041(n)*A319993(A157725(2*(n+2)))]`
-/

namespace A331165.P12186705969038893010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A319993 (A157725 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331165.P12186705969038893010

/-!
# A331167: a(n) = min(n, A193231(n)), where A193231(n) is blue code of n.

The programs for A331167, there is no canonical definition to state claims against.
-/

/-! ## A331167.P16332992466351391342

`A307012(A193231(n)+A000567(n))`
-/

namespace A331167.P16332992466351391342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307012 (A193231 n + A000567 n).toNat

end

end A331167.P16332992466351391342

/-!
# A331168: If A122111(n) <= n, then a(n) = 1, otherwise a(n) = 0.

The programs for A331168, there is no canonical definition to state claims against.
-/

/-! ## A331168.P1187580509258541114

`char[A352488(n+1)-1]`
-/

namespace A331168.P1187580509258541114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352488 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A331168.P1187580509258541114

/-! ## A331168.P5848501038054468331

`1-char[A352487(n+1)-1]`
-/

namespace A331168.P5848501038054468331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352487 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A331168.P5848501038054468331

/-! ## A331168.P17066470923000905813

`C(n+1, A122111(A331170(n+1)))`
-/

namespace A331168.P17066470923000905813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A122111 (A331170 (n + 1)).toNat).toNat

end

end A331168.P17066470923000905813

/-! ## A331168.P12841587566389164031

`floor(A005843(n+1)/(A122111(n+1)+n+1))`
-/

namespace A331168.P12841587566389164031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005843 (n + 1) : ℚ) / (A122111 (n + 1) + (n + 1 : ℤ) : ℚ)⌋

end

end A331168.P12841587566389164031

/-! ## A331168.P1678920535593203841

`A125184(round((n+1)/(A122111(n+1)+n+1)))`
-/

namespace A331168.P1678920535593203841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125184 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A122111 (n + 1) + (n + 1 : ℤ) : ℚ))).toNat

end

end A331168.P1678920535593203841

/-! ## A331168.P17122011262504984913

`A028717(floor((n+1)%A122111(n+1)/(n+1)))`
-/

namespace A331168.P17122011262504984913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028717 ⌊(Int.tmod (n + 1 : ℤ) (A122111 (n + 1)) : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A331168.P17122011262504984913

/-! ## A331168.P12252153482997977866

`A000007((A122111(n+1)%(n+1))%A122111(n+1))`
-/

namespace A331168.P12252153482997977866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (Int.tmod (A122111 (n + 1)) (n + 1 : ℤ)) (A122111 (n + 1))).toNat

end

end A331168.P12252153482997977866

/-! ## A331168.P1972469548484005554

`A331281(n+1)-A331281(A179688(n+1)+6)`
-/

namespace A331168.P1972469548484005554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331281 (n + 1) - A331281 (A179688 (n + 1) + 6).toNat

end

end A331168.P1972469548484005554

/-! ## A331168.P10748000901296794774

`and(A088756(n+1), A331281(n+1))`
-/

namespace A331168.P10748000901296794774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088756 (n + 1)) (A331281 (n + 1))

end

end A331168.P10748000901296794774

/-! ## A331168.P16365935946292362880

`A331281(and(1, A100933(n+1))+n)`
-/

namespace A331168.P16365935946292362880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331281 (Int.land 1 (A100933 (n + 1)) + (n : ℤ)).toNat

end

end A331168.P16365935946292362880

/-!
# A331169: If A122111(n) < n, then a(n) = 1, otherwise a(n) = 0.

The programs for A331169, there is no canonical definition to state claims against.
-/

/-! ## A331169.P1330379388293335241

`char[A352490(n+1)-1]`
-/

namespace A331169.P1330379388293335241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352490 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A331169.P1330379388293335241

/-! ## A331169.P2503037516065606037

`1-char[A331170(n+1)-1]`
-/

namespace A331169.P2503037516065606037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331170 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A331169.P2503037516065606037

/-! ## A331169.P17153535482680246972

`A053120(C(A331170(n+1), n+1))`
-/

namespace A331169.P17153535482680246972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 (Nat.choose (A331170 (n + 1)).toNat (n + 1))

end

end A331169.P17153535482680246972

/-! ## A331169.P8495695983806217104

`A025902(round(A331170(n+1)/(2*n+1)))`
-/

namespace A331169.P8495695983806217104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025902 (SequenceMachineLib.roundAway ((A331170 (n + 1) : ℚ) / (2 * n + 1 : ℚ))).toNat

end

end A331169.P8495695983806217104

/-! ## A331169.P16245796399520887695

`A025902(round(11^(A331170(n+1)-(n+1))))`
-/

namespace A331169.P16245796399520887695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025902 (SequenceMachineLib.roundAway ((11 : ℚ) ^ (A331170 (n + 1) - (n + 1 : ℤ) : ℤ))).toNat

end

end A331169.P16245796399520887695

/-! ## A331169.P12975467900497707409

`2-A301917(C(A331170(n+1), n+1)+1)`
-/

namespace A331169.P12975467900497707409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A301917 (Nat.choose (A331170 (n + 1)).toNat (n + 1) + 1)

end

end A331169.P12975467900497707409

/-! ## A331169.P6581454260117643418

`2-A331170(C(A331170(n+1), n+1)+1)`
-/

namespace A331169.P6581454260117643418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A331170 (Nat.choose (A331170 (n + 1)).toNat (n + 1) + 1)

end

end A331169.P6581454260117643418

/-! ## A331169.P15285485025597558015

`A000040(A331170(n+1)%(n+1)+1)%2`
-/

namespace A331169.P15285485025597558015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (Int.tmod (A331170 (n + 1)) (n + 1 : ℤ) + 1).toNat) 2

end

end A331169.P15285485025597558015

/-! ## A331169.P16330829105068806083

`A331168(n+1)-A331168(A331170(n+1))`
-/

namespace A331169.P16330829105068806083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331168 (n + 1) - A331168 (A331170 (n + 1)).toNat

end

end A331169.P16330829105068806083

/-! ## A331169.P13076259354548755082

`floor(A005843(n)/(A122111(n+1)+n))`
-/

namespace A331169.P13076259354548755082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005843 n : ℚ) / (A122111 (n + 1) + (n : ℤ) : ℚ)⌋

end

end A331169.P13076259354548755082

/-! ## A331169.P4268824851870486959

`1-C(A122111(n+1), A122111(A331170(n+1)))`
-/

namespace A331169.P4268824851870486959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (A122111 (n + 1)).toNat (A122111 (A331170 (n + 1)).toNat).toNat : ℤ)

end

end A331169.P4268824851870486959

/-!
# A331170: a(n) = min(n, A122111(n)), where A122111 conjugates the prime factorization of n.

The programs for A331170, there is no canonical definition to state claims against.
-/

/-! ## A331170.P5877134142085045588

`A325183(n+1)-A044941(A023105(n))`
-/

namespace A331170.P5877134142085045588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325183 (n + 1) - A044941 (A023105 n).toNat

end

end A331170.P5877134142085045588

/-! ## A331170.P15153434450503550336

`A325183(n+1)-A225569(A306859(n))`
-/

namespace A331170.P15153434450503550336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325183 (n + 1) - A225569 (A306859 n).toNat

end

end A331170.P15153434450503550336

/-! ## A331170.P11291543965086951579

`A325183(n+1)-A073424(A019274(n+1))`
-/

namespace A331170.P11291543965086951579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325183 (n + 1) - A073424 (A019274 (n + 1)).toNat

end

end A331170.P11291543965086951579

/-! ## A331170.P7295569000340107100

`A325183(n+1)-A024360(A023359(n))`
-/

namespace A331170.P7295569000340107100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325183 (n + 1) - A024360 (A023359 n).toNat

end

end A331170.P7295569000340107100

/-! ## A331170.P1296818060602256859

`A325183(n+1)-A219952(A227061(n+1))`
-/

namespace A331170.P1296818060602256859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325183 (n + 1) - A219952 (A227061 (n + 1)).toNat

end

end A331170.P1296818060602256859

/-!
# A331174: Lexicographically earliest infinite sequence such that a(i) = a(j) => f(i) = f(j), where f(n) = min(n, A122111(n)), for all other n, except for odd primes p, f(p) = 0.

The programs for A331174, there is no canonical definition to state claims against.
-/

/-! ## A331174.P7731528450765942719

`A305801(n+1)-A185037(∑{d}[∏{p}[n+1, #], (n+1)/#])`
-/

namespace A331174.P7731528450765942719
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (n + 1) - A185037 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ))).toNat

end

end A331174.P7731528450765942719

/-! ## A331174.P2836178294843149855

`A352898(n+1)-A185037(∑{d}[∏{p}[n+1, #], (n+1)/#])`
-/

namespace A331174.P2836178294843149855
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352898 (n + 1) - A185037 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ))).toNat

end

end A331174.P2836178294843149855

/-! ## A331174.P8243678403435843900

`A305801(n+1)-A011730(A306752(n))`
-/

namespace A331174.P8243678403435843900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (n + 1) - A011730 (A306752 n).toNat

end

end A331174.P8243678403435843900

/-! ## A331174.P4900377810903903280

`A322588(n+1)-A080225(A250468(n+1))`
-/

namespace A331174.P4900377810903903280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322588 (n + 1) - A080225 (A250468 (n + 1)).toNat

end

end A331174.P4900377810903903280

/-!
# A331175: Number of values of k, 1 <= k <= n, with A109395(k) = A109395(n), where A109395(n) = n/gcd(n, phi(n)).

The programs for A331175, there is no canonical definition to state claims against.
-/

/-! ## A331175.P7480152405573218252

`A078899(n+1)-A322989(n+1)%A252890(A135525(2*n+5))`
-/

namespace A331175.P7480152405573218252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078899 (n + 1) - Int.tmod (A322989 (n + 1)) (A252890 (A135525 (2 * n + 5)).toNat)

end

end A331175.P7480152405573218252

/-! ## A331175.P11969374144838146845

`A078899(n+1)-A078897(3*n+4)%A252890(A135525(2*n+5))`
-/

namespace A331175.P11969374144838146845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078899 (n + 1) - Int.tmod (A078897 (3 * n + 4)) (A252890 (A135525 (2 * n + 5)).toNat)

end

end A331175.P11969374144838146845

/-! ## A331175.P161668340949126722

`A340084(round(2^(n-log2(n+1))))+A080224(3*(n+1))`
-/

namespace A331175.P161668340949126722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340084 (SequenceMachineLib.roundAway ((2 : ℝ) ^ ((n : ℝ) - Real.logb 2 (n + 1 : ℝ)))).toNat + A080224 (3 * (n + 1))

end

end A331175.P161668340949126722

/-! ## A331175.P13409029862141735935

`gcd(A029578(A013617(n)), A078899(n+1))`
-/

namespace A331175.P13409029862141735935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029578 (A013617 n).toNat) (A078899 (n + 1))

end

end A331175.P13409029862141735935

/-! ## A331175.P15655024795147872961

`A078899(n+1)^A341594(A324700(3*n+5))`
-/

namespace A331175.P15655024795147872961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078899 (n + 1) : ℚ) ^ (A341594 (A324700 (3 * n + 5)).toNat : ℤ)

end

end A331175.P15655024795147872961

/-!
# A331176: a(n) = n - n/gcd(n, phi(n)), where phi is Euler totient function.

The programs for A331176, the canonical program `A331176.P12674402394166952486` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331176 has offset 1).

The definition of A331176 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109395, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A331176.P12674402394166952486

`n+1-A109395(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A331176

/-- `n+1-A109395(n+1)` -/
def P12674402394166952486.Spec : Prop :=
  ∀ n, P12674402394166952486.a n = A331176 (n + 1)

theorem P12674402394166952486.correct : P12674402394166952486.Spec := by
  intro n
  simp only [A331176, Nat.add_sub_cancel]

end A331176

/-! ## A331176.P11331641212743159956

`n+1-(n+1)/gcd((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], ∑[(2*n+1)*(1-4/2)^n])`
-/

namespace A331176.P11331641212743159956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * (1 - (4 : ℚ) / 2) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (n + 1 : ℚ) / (Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f3 j)) : ℚ)

end

end A331176.P11331641212743159956

namespace A331176

/-- `n+1-(n+1)/gcd((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], ∑[(2*n+1)*(1-4/2)^n])` -/
def P11331641212743159956.Spec : Prop :=
  ∀ n, P11331641212743159956.a n = (A331176 (n + 1) : ℚ)

end A331176

/-! ## A331176.P4521409389125986584

`n-floor(n/A009195(n+1))`
-/

namespace A331176.P4521409389125986584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℚ) / (A009195 (n + 1) : ℚ)⌋

end

end A331176.P4521409389125986584

namespace A331176

/-- `n-floor(n/A009195(n+1))` -/
def P4521409389125986584.Spec : Prop :=
  ∀ n, P4521409389125986584.a n = A331176 (n + 1)

end A331176

/-! ## A331176.P7436761248186164243

`n+1-A295126(∏{p}[n+1, #])`
-/

namespace A331176.P7436761248186164243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A295126 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A331176.P7436761248186164243

namespace A331176

/-- `n+1-A295126(∏{p}[n+1, #])` -/
def P7436761248186164243.Spec : Prop :=
  ∀ n, P7436761248186164243.a n = A331176 (n + 1)

end A331176

/-! ## A331176.P8454990818679198378

`n+1-A050399(n+1)/(n+1)`
-/

namespace A331176.P8454990818679198378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A050399 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A331176.P8454990818679198378

namespace A331176

/-- `n+1-A050399(n+1)/(n+1)` -/
def P8454990818679198378.Spec : Prop :=
  ∀ n, P8454990818679198378.a n = (A331176 (n + 1) : ℚ)

end A331176

/-! ## A331176.P15205406456281527283

`n-floor(n/gcd(n+1, A000010(n+1)))`
-/

namespace A331176.P15205406456281527283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℚ) / (Int.gcd (n + 1 : ℤ) (A000010 (n + 1)) : ℚ)⌋

end

end A331176.P15205406456281527283

namespace A331176

/-- `n-floor(n/gcd(n+1, A000010(n+1)))` -/
def P15205406456281527283.Spec : Prop :=
  ∀ n, P15205406456281527283.a n = A331176 (n + 1)

end A331176

/-! ## A331176.P72402062935432009

`1-A294650(A007947(n+1))+n`
-/

namespace A331176.P72402062935432009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A294650 (A007947 (n + 1)).toNat + (n : ℤ)

end

end A331176.P72402062935432009

namespace A331176

/-- `1-A294650(A007947(n+1))+n` -/
def P72402062935432009.Spec : Prop :=
  ∀ n, P72402062935432009.a n = A331176 (n + 1)

end A331176

/-! ## A331176.P15723553797717739941

`1-A225680(A322590(n+1))+n`
-/

namespace A331176.P15723553797717739941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A225680 (A322590 (n + 1)).toNat + (n : ℤ)

end

end A331176.P15723553797717739941

namespace A331176

/-- `1-A225680(A322590(n+1))+n` -/
def P15723553797717739941.Spec : Prop :=
  ∀ n, P15723553797717739941.a n = A331176 (n + 1)

end A331176

/-! ## A331176.P2724472182238844615

`A000027(n+1)-A000027(n+1)/A009195(n+1)`
-/

namespace A331176.P2724472182238844615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) - (A000027 (n + 1) : ℚ) / (A009195 (n + 1) : ℚ)

end

end A331176.P2724472182238844615

namespace A331176

/-- `A000027(n+1)-A000027(n+1)/A009195(n+1)` -/
def P2724472182238844615.Spec : Prop :=
  ∀ n, P2724472182238844615.a n = (A331176 (n + 1) : ℚ)

end A331176

/-! ## A331176.P15313605924079404672

`(A002618(n+1)-A009262(n+1))/A000010(n+1)`
-/

namespace A331176.P15313605924079404672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) - A009262 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A331176.P15313605924079404672

namespace A331176

/-- `(A002618(n+1)-A009262(n+1))/A000010(n+1)` -/
def P15313605924079404672.Spec : Prop :=
  ∀ n, P15313605924079404672.a n = (A331176 (n + 1) : ℚ)

end A331176

/-! ## A331176.P15414795525128948128

`(n*A109395(2*(n+1)))%(n+1)`
-/

namespace A331176.P15414795525128948128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A109395 (2 * (n + 1))) (n + 1 : ℤ)

end

end A331176.P15414795525128948128

namespace A331176

/-- `(n*A109395(2*(n+1)))%(n+1)` -/
def P15414795525128948128.Spec : Prop :=
  ∀ n, P15414795525128948128.a n = A331176 (n + 1)

end A331176

/-! ## A331176.P8493295641506813139

`1-A004736(A286149(n+1))+n`
-/

namespace A331176.P8493295641506813139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A004736 (A286149 (n + 1)).toNat + (n : ℤ)

end

end A331176.P8493295641506813139

namespace A331176

/-- `1-A004736(A286149(n+1))+n` -/
def P8493295641506813139.Spec : Prop :=
  ∀ n, P8493295641506813139.a n = A331176 (n + 1)

end A331176

/-! ## A331176.P9198900010113503504

`n+1-A362414((n+1)²)`
-/

namespace A331176.P9198900010113503504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A362414 ((n + 1) ^ 2)

end

end A331176.P9198900010113503504

namespace A331176

/-- `n+1-A362414((n+1)²)` -/
def P9198900010113503504.Spec : Prop :=
  ∀ n, P9198900010113503504.a n = A331176 (n + 1)

end A331176

/-!
# A331177: Number of values of k, 1 <= k <= n, with A319677(k) = A319677(n), where A319677(n) = n/gcd(n, uphi(n)), and uphi is unitary totient function (A047994).

The programs for A331177, there is no canonical definition to state claims against.
-/

/-! ## A331177.P1525464335676935896

`A335450(A327402(n+1)+A323409(n+1)²)`
-/

namespace A331177.P1525464335676935896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335450 (A327402 (n + 1) + A323409 (n + 1) ^ 2).toNat

end

end A331177.P1525464335676935896

/-! ## A331177.P13871402415698134486

`gcd(A101079(n+1), A354990(n+1))`
-/

namespace A331177.P13871402415698134486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101079 (n + 1)) (A354990 (n + 1))

end

end A331177.P13871402415698134486

/-! ## A331177.P12993084906732400396

`A147364(n+1)%A348928(n+1)+1`
-/

namespace A331177.P12993084906732400396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147364 (n + 1)) (A348928 (n + 1)) + 1

end

end A331177.P12993084906732400396

/-! ## A331177.P9913065620451132972

`gcd(A000010(A085158(n)), A354990(n+1))`
-/

namespace A331177.P9913065620451132972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A085158 n).toNat) (A354990 (n + 1))

end

end A331177.P9913065620451132972

/-! ## A331177.P9896858676520865527

`A323767(A305815(n+1)%A305827(n+1))`
-/

namespace A331177.P9896858676520865527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323767 (Int.tmod (A305815 (n + 1)) (A305827 (n + 1))).toNat

end

end A331177.P9896858676520865527

/-!
# A331178: Number of values of k, 1 <= k <= n, with A023900(k) = A023900(n), where A023900 is Dirichlet inverse of Euler totient function phi.

The programs for A331178, there is no canonical definition to state claims against.
-/

/-! ## A331178.P11508058844119809124

`A008479(n+1)*A184340(A278219(n))`
-/

namespace A331178.P11508058844119809124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (n + 1) * A184340 (A278219 n).toNat

end

end A331178.P11508058844119809124

/-! ## A331178.P13808460222615069627

`A019590(A372356(2*n+5))+A008479(n+1)`
-/

namespace A331178.P13808460222615069627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A372356 (2 * n + 5)).toNat + A008479 (n + 1)

end

end A331178.P13808460222615069627

/-! ## A331178.P2337162145304863362

`A008479(A186710(2*n+5))*A008479(n+1)`
-/

namespace A331178.P2337162145304863362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (A186710 (2 * n + 5)).toNat * A008479 (n + 1)

end

end A331178.P2337162145304863362

/-! ## A331178.P8240986769358450212

`A277160(A069907(2*n))+A008479(n+1)`
-/

namespace A331178.P8240986769358450212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277160 (A069907 (2 * n)).toNat + A008479 (n + 1)

end

end A331178.P8240986769358450212

/-! ## A331178.P5983019234101149851

`A010051(A014342(n+4))+A008479(n+1)`
-/

namespace A331178.P5983019234101149851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A014342 (n + 4)).toNat + A008479 (n + 1)

end

end A331178.P5983019234101149851

/-!
# A331179: Number of values of k, 1 <= k <= n, with A173557(k) = A173557(n), where A173557(n) = Product_{p-1 | p is prime and divisor of n}.

The programs for A331179, there is no canonical definition to state claims against.
-/

/-! ## A331179.P263335987789325475

`A008479(2*(n+1))*A008479(A261962(n))`
-/

namespace A331179.P263335987789325475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (2 * (n + 1)) * A008479 (A261962 n).toNat

end

end A331179.P263335987789325475

/-! ## A331179.P4721728310500931724

`A008479(2*A087706(3*(n+1)))`
-/

namespace A331179.P4721728310500931724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (2 * A087706 (3 * (n + 1))).toNat

end

end A331179.P4721728310500931724

/-! ## A331179.P608865841558544142

`A008479(2*(n+1))%p?[A169739(n)]`
-/

namespace A331179.P608865841558544142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008479 (2 * (n + 1))) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A331179.P608865841558544142

/-! ## A331179.P13408300608549970839

`A008479(2*(n+1)*A046501(n+1))`
-/

namespace A331179.P13408300608549970839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 ((2 * (n + 1) : ℤ) * A046501 (n + 1)).toNat

end

end A331179.P13408300608549970839

/-! ## A331179.P11717538477975647631

`A008479(2*n+2)%A335127(3*n+4)`
-/

namespace A331179.P11717538477975647631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008479 (2 * n + 2)) (A335127 (3 * n + 4))

end

end A331179.P11717538477975647631

/-!
# A331180: Number of values of k, 1 <= k <= n, with A323910(k) = A323910(n), where A323910 is Dirichlet inverse of deficiency of n.

The programs for A331180, there is no canonical definition to state claims against.
-/

/-! ## A331180.P5840271468804875637

`A055642(A330267(n+1)^A292589(n+1))`
-/

namespace A331180.P5840271468804875637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (SequenceMachineLib.roundAway ((A330267 (n + 1) : ℚ) ^ (A292589 (n + 1) : ℤ))).toNat

end

end A331180.P5840271468804875637

/-! ## A331180.P7328145382276562226

`gcd(A001221(A258932(n+3)), A283120(n+2))`
-/

namespace A331180.P7328145382276562226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A258932 (n + 3)).toNat) (A283120 (n + 2))

end

end A331180.P7328145382276562226

/-! ## A331180.P371946849904025304

`gcd(∑[A102531(3*(n+1))], A159631(n+1))`
-/

namespace A331180.P371946849904025304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102531 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A159631 (n + 1))

end

end A331180.P371946849904025304

/-! ## A331180.P2910194655262041465

`gcd(A046951(n+1), A055640(A084422(n)))`
-/

namespace A331180.P2910194655262041465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046951 (n + 1)) (A055640 (A084422 n).toNat)

end

end A331180.P2910194655262041465

/-!
# A331181: Number of values of k, 1 <= k <= n, with A033879(k) = A033879(n), where A033879(n) is the deficiency of n, 2n-sigma(n).

The programs for A331181, there is no canonical definition to state claims against.
-/

/-! ## A331181.P12159508772240548720

`A335516(gcd(A100516(n), A167203(n+1)))`
-/

namespace A331181.P12159508772240548720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335516 (Int.gcd (A100516 n) (A167203 (n + 1)))

end

end A331181.P12159508772240548720

/-! ## A331181.P13439758651376886673

`gcd(A001221(A321898(n+1)), A287896(n+1))`
-/

namespace A331181.P13439758651376886673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A321898 (n + 1)).toNat) (A287896 (n + 1))

end

end A331181.P13439758651376886673

/-! ## A331181.P11934158413218222406

`lcm(A005136(A331146(n+1)), A331184(n+1))`
-/

namespace A331181.P11934158413218222406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005136 (A331146 (n + 1)).toNat) (A331184 (n + 1))

end

end A331181.P11934158413218222406

/-! ## A331181.P9045976802013369234

`A325988(A274280(n+1))*A326674(n+1)`
-/

namespace A331181.P9045976802013369234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325988 (A274280 (n + 1)).toNat * A326674 (n + 1)

end

end A331181.P9045976802013369234

/-! ## A331181.P5945211370286806277

`A001511(A000447(n+1)-A325135(n+4))`
-/

namespace A331181.P5945211370286806277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A000447 (n + 1) - A325135 (n + 4)).toNat

end

end A331181.P5945211370286806277

/-!
# A331183: Number of values of k, 1 <= k <= n, with A323898(k) = A323898(n).

The programs for A331183, there is no canonical definition to state claims against.
-/

/-! ## A331183.P12060451538119939885

`gcd(A268886(A182982(3*n+4)), A328026(n+1))`
-/

namespace A331183.P12060451538119939885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A268886 (A182982 (3 * n + 4)).toNat) (A328026 (n + 1))

end

end A331183.P12060451538119939885

/-! ## A331183.P16424227203528975442

`gcd(A328188(A328188(2*n+1)), A328194(2*(n+1)))`
-/

namespace A331183.P16424227203528975442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A328188 (A328188 (2 * n + 1)).toNat) (A328194 (2 * (n + 1)))

end

end A331183.P16424227203528975442

/-! ## A331183.P10298591349822505799

`gcd(A096651(A255879(n+1)), A331182(n+1))`
-/

namespace A331183.P10298591349822505799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A096651 (A255879 (n + 1)).toNat) (A331182 (n + 1))

end

end A331183.P10298591349822505799

/-! ## A331183.P7224291479674846692

`A089723(C(A390803(n+1), A089723(2*n+1)))`
-/

namespace A331183.P7224291479674846692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (Nat.choose (A390803 (n + 1)).toNat (A089723 (2 * n + 1)).toNat)

end

end A331183.P7224291479674846692

/-! ## A331183.P12607605359068281836

`gcd(A033273(n+1), A321702(A125100(n)))`
-/

namespace A331183.P12607605359068281836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033273 (n + 1)) (A321702 (A125100 n).toNat)

end

end A331183.P12607605359068281836

/-!
# A331184: Number of values of k, 1 <= k <= n, with A318310(k) = A318310(n).

The programs for A331184, there is no canonical definition to state claims against.
-/

/-! ## A331184.P16631613677871274202

`gcd(A087154(A242784(3*n)), A331181(n+1))`
-/

namespace A331184.P16631613677871274202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087154 (A242784 (3 * n)).toNat) (A331181 (n + 1))

end

end A331184.P16631613677871274202

/-! ## A331184.P6799867377261034877

`gcd(A006370(A215083(n)), A331181(n+1))`
-/

namespace A331184.P6799867377261034877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006370 (A215083 n).toNat) (A331181 (n + 1))

end

end A331184.P6799867377261034877

/-! ## A331184.P12442642302441918197

`A326674((n+1)*A326680(n)!)`
-/

namespace A331184.P12442642302441918197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326674 ((n + 1) * Nat.factorial (A326680 n).toNat)

end

end A331184.P12442642302441918197

/-! ## A331184.P11265733945916100156

`A326674((n+1)*A326684(n)!)`
-/

namespace A331184.P11265733945916100156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326674 ((n + 1) * Nat.factorial (A326684 n).toNat)

end

end A331184.P11265733945916100156

/-! ## A331184.P5663932702595307015

`A326674((A217156(n+1)+1)*(n+1))`
-/

namespace A331184.P5663932702595307015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326674 ((A217156 (n + 1) + 1) * (n + 1 : ℤ)).toNat

end

end A331184.P5663932702595307015

/-!
# A331185: a(n) = n - prime(A067004(n)), where A067004 is the ordinal transform of number of divisors of n (A000005).

The programs for A331185, there is no canonical definition to state claims against.
-/

/-! ## A331185.P10729044672401465555

`n+1-A000040(A067004(n+1))`
-/

namespace A331185.P10729044672401465555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000040 (A067004 (n + 1)).toNat

end

end A331185.P10729044672401465555

/-! ## A331185.P16816177522752574531

`n-A006093(A067004(n+1))`
-/

namespace A331185.P16816177522752574531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A006093 (A067004 (n + 1)).toNat

end

end A331185.P16816177522752574531

/-! ## A331185.P18190154255475917720

`n+1-A000040(A047983(n+1)+1)`
-/

namespace A331185.P18190154255475917720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000040 (A047983 (n + 1) + 1).toNat

end

end A331185.P18190154255475917720

/-! ## A331185.P14298871588960316948

`A020725(n+1)-A008864(A067004(n+1))`
-/

namespace A331185.P14298871588960316948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 1) - A008864 (A067004 (n + 1)).toNat

end

end A331185.P14298871588960316948

/-! ## A331185.P14502382646017298133

`A065033(2*n+3)-A008864(A067004(n+1))`
-/

namespace A331185.P14502382646017298133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n + 3) - A008864 (A067004 (n + 1)).toNat

end

end A331185.P14502382646017298133

/-!
# A331186: Exponent of the highest power of prime(A067004(n)) which divides n, where A067004 is the ordinal transform of number of divisors of n (A000005).

The programs for A331186, there is no canonical definition to state claims against.
-/

/-! ## A331186.P17457733811033966660

`A001222((n+1)/A331187(n+1))`
-/

namespace A331186.P17457733811033966660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A331187 (n + 1) : ℚ))).toNat

end

end A331186.P17457733811033966660

/-! ## A331186.P9330844499661500691

`A032741((n+1)/A331187(n+1))`
-/

namespace A331186.P9330844499661500691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A331187 (n + 1) : ℚ))).toNat

end

end A331186.P9330844499661500691

/-! ## A331186.P2255740120337920945

`A100995((n+1)/A331187(n+1))`
-/

namespace A331186.P2255740120337920945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A331187 (n + 1) : ℚ))).toNat

end

end A331186.P2255740120337920945

/-! ## A331186.P400081332458526313

`val(n+1, A000040(A067004(n+1)))`
-/

namespace A331186.P400081332458526313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) (A000040 (A067004 (n + 1)).toNat).toNat

end

end A331186.P400081332458526313

/-! ## A331186.P18273066599698700909

`A001222(n+1)-A001222(A331187(n+1))`
-/

namespace A331186.P18273066599698700909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A331187 (n + 1)).toNat

end

end A331186.P18273066599698700909

/-! ## A331186.P789229217949184700

`val(A297002(n+1), A031215(A067004(n+1)))`
-/

namespace A331186.P789229217949184700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A297002 (n + 1)).toNat (A031215 (A067004 (n + 1)).toNat).toNat

end

end A331186.P789229217949184700

/-!
# A331187: a(n) is n divided by the highest power of prime(A067004(n)) which divides it, where A067004 is the ordinal transform of number of divisors of n (A000005).

The programs for A331187, there is no canonical definition to state claims against.
-/

/-! ## A331187.P5328953778333872235

`(n+1)/A000040(A067004(n+1))^A331186(n+1)`
-/

namespace A331187.P5328953778333872235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000040 (A067004 (n + 1)).toNat : ℚ) ^ (A331186 (n + 1) : ℤ)

end

end A331187.P5328953778333872235

/-! ## A331187.P18227831815704455663

`gcd(n+1, A094718(A313075(n)))`
-/

namespace A331187.P18227831815704455663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A094718 (A313075 n).toNat)

end

end A331187.P18227831815704455663

/-! ## A331187.P12213590451553779738

`gcd(A000027(n+1), A069897(A023654(n+1)))`
-/

namespace A331187.P12213590451553779738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A069897 (A023654 (n + 1)).toNat)

end

end A331187.P12213590451553779738

/-! ## A331187.P14703653150234255287

`gcd(A002377(n+1), A309265(A240046(n+1)))`
-/

namespace A331187.P14703653150234255287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002377 (n + 1)) (A309265 (A240046 (n + 1)).toNat)

end

end A331187.P14703653150234255287

/-! ## A331187.P160696125398371080

`gcd(A073965(n+1)-A219215(n+1), A000005(2^n))`
-/

namespace A331187.P160696125398371080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073965 (n + 1) - A219215 (n + 1)) (A000005 (2 ^ n))

end

end A331187.P160696125398371080

/-!
# A331188: Primorial inflation of A052126(n), where A052126(n) = n/(largest prime dividing n).

The programs for A331188, the canonical program `A331188.P3991603324780884029` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331188 has offset 1).

The definition of A331188 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, A108951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A331188.P3991603324780884029

`A108951(A052126(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A331188

/-- `A108951(A052126(n+1))` -/
def P3991603324780884029.Spec : Prop :=
  ∀ n, P3991603324780884029.a n = A331188 (n + 1)

theorem P3991603324780884029.correct : P3991603324780884029.Spec := by
  intro n
  simp only [A331188, Nat.add_sub_cancel]

end A331188

/-! ## A331188.P965248089840130743

`A108951(n+1)/A002110(A061395(n+1))`
-/

namespace A331188.P965248089840130743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108951 (n + 1) : ℚ) / (A002110 (A061395 (n + 1)).toNat : ℚ)

end

end A331188.P965248089840130743

namespace A331188

/-- `A108951(n+1)/A002110(A061395(n+1))` -/
def P965248089840130743.Spec : Prop :=
  ∀ n, P965248089840130743.a n = (A331188 (n + 1) : ℚ)

end A331188

/-! ## A331188.P17279975178718448860

`A003557(A108951(n+1))`
-/

namespace A331188.P17279975178718448860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A108951 (n + 1)).toNat

end

end A331188.P17279975178718448860

namespace A331188

/-- `A003557(A108951(n+1))` -/
def P17279975178718448860.Spec : Prop :=
  ∀ n, P17279975178718448860.a n = A331188 (n + 1)

end A331188

/-! ## A331188.P14667382077070034266

`A329602(A052126(n+1))*A329602(n+1)`
-/

namespace A331188.P14667382077070034266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329602 (A052126 (n + 1)).toNat * A329602 (n + 1)

end

end A331188.P14667382077070034266

namespace A331188

/-- `A329602(A052126(n+1))*A329602(n+1)` -/
def P14667382077070034266.Spec : Prop :=
  ∀ n, P14667382077070034266.a n = A331188 (n + 1)

end A331188

/-! ## A331188.P8338476525768250347

`A329348(n+1)+A117366(n+1)*A331293(n+1)`
-/

namespace A331188.P8338476525768250347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329348 (n + 1) + A117366 (n + 1) * A331293 (n + 1)

end

end A331188.P8338476525768250347

namespace A331188

/-- `A329348(n+1)+A117366(n+1)*A331293(n+1)` -/
def P8338476525768250347.Spec : Prop :=
  ∀ n, P8338476525768250347.a n = A331188 (n + 1)

end A331188

/-! ## A331188.P4591212303221032379

`A108951(n+1-A171462(n+1))`
-/

namespace A331188.P4591212303221032379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 ((n + 1 : ℤ) - A171462 (n + 1)).toNat

end

end A331188.P4591212303221032379

namespace A331188

/-- `A108951(n+1-A171462(n+1))` -/
def P4591212303221032379.Spec : Prop :=
  ∀ n, P4591212303221032379.a n = A331188 (n + 1)

end A331188

/-! ## A331188.P9120838118325818092

`A108951(A269304(n+1)-(n+2))`
-/

namespace A331188.P9120838118325818092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A269304 (n + 1) - (n + 2 : ℤ)).toNat

end

end A331188.P9120838118325818092

namespace A331188

/-- `A108951(A269304(n+1)-(n+2))` -/
def P9120838118325818092.Spec : Prop :=
  ∀ n, P9120838118325818092.a n = A331188 (n + 1)

end A331188

/-! ## A331188.P15115051052893416238

`A108951((n+1)/A006530(n+1))`
-/

namespace A331188.P15115051052893416238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat

end

end A331188.P15115051052893416238

namespace A331188

/-- `A108951((n+1)/A006530(n+1))` -/
def P15115051052893416238.Spec : Prop :=
  ∀ n, P15115051052893416238.a n = A331188 (n + 1)

end A331188

/-! ## A331188.P11082005787986774849

`A108951((n+1)/(A122416(∏{p}[n+1, #])-1))`
-/

namespace A331188.P11082005787986774849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A122416 (∏ p ∈ Nat.primeFactors (f1 n), p) - 1 : ℚ))).toNat

end

end A331188.P11082005787986774849

namespace A331188

/-- `A108951((n+1)/(A122416(∏{p}[n+1, #])-1))` -/
def P11082005787986774849.Spec : Prop :=
  ∀ n, P11082005787986774849.a n = A331188 (n + 1)

end A331188

/-! ## A331188.P3161291984101966100

`A108951((n+1)/A020639(A345941(n+1)))`
-/

namespace A331188.P3161291984101966100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (A345941 (n + 1)).toNat : ℚ))).toNat

end

end A331188.P3161291984101966100

namespace A331188

/-- `A108951((n+1)/A020639(A345941(n+1)))` -/
def P3161291984101966100.Spec : Prop :=
  ∀ n, P3161291984101966100.a n = A331188 (n + 1)

end A331188

/-! ## A331188.P516397213264864683

`A329602(A052126(n+1)²)`
-/

namespace A331188.P516397213264864683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329602 (A052126 (n + 1) ^ 2).toNat

end

end A331188.P516397213264864683

namespace A331188

/-- `A329602(A052126(n+1)²)` -/
def P516397213264864683.Spec : Prop :=
  ∀ n, P516397213264864683.a n = A331188 (n + 1)

end A331188

/-! ## A331188.P429194258412890635

`A108951(n+1)/A108951(A346088((∏{p}[n+1, #]-1)%(n+1)+1))`
-/

namespace A331188.P429194258412890635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108951 (n + 1) : ℚ) / (A108951 (A346088 (Int.tmod (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) - 1) (n + 1 : ℤ) + 1).toNat).toNat : ℚ)

end

end A331188.P429194258412890635

namespace A331188

/-- `A108951(n+1)/A108951(A346088((∏{p}[n+1, #]-1)%(n+1)+1))` -/
def P429194258412890635.Spec : Prop :=
  ∀ n, P429194258412890635.a n = (A331188 (n + 1) : ℚ)

end A331188

/-! ## A331188.P13844196626323829526

`A108951(n+1)/A108951(A318884(n+1)-A318886(n+1))`
-/

namespace A331188.P13844196626323829526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108951 (n + 1) : ℚ) / (A108951 (A318884 (n + 1) - A318886 (n + 1)).toNat : ℚ)

end

end A331188.P13844196626323829526

namespace A331188

/-- `A108951(n+1)/A108951(A318884(n+1)-A318886(n+1))` -/
def P13844196626323829526.Spec : Prop :=
  ∀ n, P13844196626323829526.a n = (A331188 (n + 1) : ℚ)

end A331188

/-! ## A331188.P805650410502521403

`A108951(n+1)*A117366(n+1)/A108951(A117366(n+1))`
-/

namespace A331188.P805650410502521403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108951 (n + 1) * A117366 (n + 1) : ℚ) / (A108951 (A117366 (n + 1)).toNat : ℚ)

end

end A331188.P805650410502521403

namespace A331188

/-- `A108951(n+1)*A117366(n+1)/A108951(A117366(n+1))` -/
def P805650410502521403.Spec : Prop :=
  ∀ n, P805650410502521403.a n = (A331188 (n + 1) : ℚ)

end A331188

/-! ## A331188.P15037625449725978518

`A329602(A342768(n+1))`
-/

namespace A331188.P15037625449725978518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329602 (A342768 (n + 1)).toNat

end

end A331188.P15037625449725978518

namespace A331188

/-- `A329602(A342768(n+1))` -/
def P15037625449725978518.Spec : Prop :=
  ∀ n, P15037625449725978518.a n = A331188 (n + 1)

end A331188

/-! ## A331188.P17678406313697541915

`A329602((n+1)*A052126(n+1))`
-/

namespace A331188.P17678406313697541915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329602 ((n + 1 : ℤ) * A052126 (n + 1)).toNat

end

end A331188.P17678406313697541915

namespace A331188

/-- `A329602((n+1)*A052126(n+1))` -/
def P17678406313697541915.Spec : Prop :=
  ∀ n, P17678406313697541915.a n = A331188 (n + 1)

end A331188

/-! ## A331188.P8246633364339425971

`A124859(A181821(n+1)/A122111(n+1))`
-/

namespace A331188.P8246633364339425971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124859 (SequenceMachineLib.roundAway ((A181821 (n + 1) : ℚ) / (A122111 (n + 1) : ℚ))).toNat

end

end A331188.P8246633364339425971

namespace A331188

/-- `A124859(A181821(n+1)/A122111(n+1))` -/
def P8246633364339425971.Spec : Prop :=
  ∀ n, P8246633364339425971.a n = A331188 (n + 1)

end A331188

/-!
# A331190: Expansion of (-5*(9 - 6*x + 2*x^2))/(-1 + x)^3.

The programs for A331190, the canonical program `A331190.P16704219349906937856` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331190 has offset 0).

The definition of A331190 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((45-30x+10x^2)/(1-3x+3x^2-x^3))` (program `A331190.P16704219349906937856`, by `A331190.P16704219349906937856.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A331190.P16704219349906937856

`ogf((45-30x+10x^2)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A331190

/-- `ogf((45-30x+10x^2)/(1-3x+3x^2-x^3))` -/
def P16704219349906937856.Spec : Prop :=
  ∀ n, P16704219349906937856.a n = A331190 n

theorem P16704219349906937856.correct : P16704219349906937856.Spec := by
  intro n
  simp only [A331190]

end A331190

/-! ## A331190.P359563310159691710

`5*(5*n²+19*n+18)/2`
-/

namespace A331190.P359563310159691710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * (5 * n ^ 2 + 19 * n + 18) : ℚ) / 2

end

end A331190.P359563310159691710

namespace A331190

/-- `5*(5*n²+19*n+18)/2` -/
def P359563310159691710.Spec : Prop :=
  ∀ n, P359563310159691710.a n = (A331190 n : ℚ)

end A331190

/-! ## A331190.P11274549712730649493

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=45, a(1)=105, a(2)=190`
-/

namespace A331190.P11274549712730649493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [45, 105, 190] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A331190.P11274549712730649493

namespace A331190

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P11274549712730649493.Spec : Prop :=
  ∀ n, P11274549712730649493.a n = A331190 n

end A331190

/-! ## A331190.P12668947471728274252

`C(5*(n+2), 2)`
-/

namespace A331190.P12668947471728274252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (5 * (n + 2)) 2

end

end A331190.P12668947471728274252

namespace A331190

/-- `C(5*(n+2), 2)` -/
def P12668947471728274252.Spec : Prop :=
  ∀ n, (P12668947471728274252.a n : ℤ) = A331190 n

end A331190

/-! ## A331190.P2431085046291204358

`Δ[5*A033994(n+1)]`
-/

namespace A331190.P2431085046291204358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A033994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A331190.P2431085046291204358

namespace A331190

/-- `Δ[5*A033994(n+1)]` -/
def P2431085046291204358.Spec : Prop :=
  ∀ n, P2431085046291204358.a n = A331190 n

end A331190

/-! ## A331190.P17574009770277200164

`A085036(n+1)/2+3`
-/

namespace A331190.P17574009770277200164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085036 (n + 1) : ℚ) / 2 + 3

end

end A331190.P17574009770277200164

namespace A331190

/-- `A085036(n+1)/2+3` -/
def P17574009770277200164.Spec : Prop :=
  ∀ n, P17574009770277200164.a n = (A331190 n : ℚ)

end A331190

/-! ## A331190.P7718741354643838747

`A178572(n+2)-(n+2)`
-/

namespace A331190.P7718741354643838747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178572 (n + 2) - (n + 2 : ℤ)

end

end A331190.P7718741354643838747

namespace A331190

/-- `A178572(n+2)-(n+2)` -/
def P7718741354643838747.Spec : Prop :=
  ∀ n, P7718741354643838747.a n = A331190 n

end A331190

/-! ## A331190.P1439138275472051665

`Δ[A228888(n+1)]-(n+1)²`
-/

namespace A331190.P1439138275472051665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((n + 1) ^ 2 : ℤ)

end

end A331190.P1439138275472051665

namespace A331190

/-- `Δ[A228888(n+1)]-(n+1)²` -/
def P1439138275472051665.Spec : Prop :=
  ∀ n, P1439138275472051665.a n = A331190 n

end A331190

/-! ## A331190.P14136054453414682102

`Δ[a(n-1)+C(A008706(n+1), 2)]` with `a(0)=13`
-/

namespace A331190.P14136054453414682102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [13] fun n f1 =>
  f1 (n - 1) + Nat.choose (A008706 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A331190.P14136054453414682102

namespace A331190

/-- `Δ[a(n-1)+C(A008706(n+1), 2)]` -/
def P14136054453414682102.Spec : Prop :=
  ∀ n, P14136054453414682102.a n = A331190 n

end A331190

/-! ## A331190.P17966294140230833945

`A154106(n+1)+A000096(n)`
-/

namespace A331190.P17966294140230833945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154106 (n + 1) + A000096 n

end

end A331190.P17966294140230833945

namespace A331190

/-- `A154106(n+1)+A000096(n)` -/
def P17966294140230833945.Spec : Prop :=
  ∀ n, P17966294140230833945.a n = A331190 n

end A331190

/-! ## A331190.P18251102046247346589

`A033583(n+2)+A028895(n+1)`
-/

namespace A331190.P18251102046247346589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 (n + 2) + A028895 (n + 1)

end

end A331190.P18251102046247346589

namespace A331190

/-- `A033583(n+2)+A028895(n+1)` -/
def P18251102046247346589.Spec : Prop :=
  ∀ n, P18251102046247346589.a n = A331190 n

end A331190

/-! ## A331190.P10327141753185053810

`A081587(n+2)-1`
-/

namespace A331190.P10327141753185053810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081587 (n + 2) - 1

end

end A331190.P10327141753185053810

namespace A331190

/-- `A081587(n+2)-1` -/
def P10327141753185053810.Spec : Prop :=
  ∀ n, P10327141753185053810.a n = A331190 n

end A331190

/-! ## A331190.P11009177112043745496

`5*A005476(n+2)`
-/

namespace A331190.P11009177112043745496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A005476 (n + 2)

end

end A331190.P11009177112043745496

namespace A331190

/-- `5*A005476(n+2)` -/
def P11009177112043745496.Spec : Prop :=
  ∀ n, P11009177112043745496.a n = A331190 n

end A331190

/-! ## A331190.P7515939924844269531

`A126964(n+2)+∑[n+1]`
-/

namespace A331190.P7515939924844269531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126964 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A331190.P7515939924844269531

namespace A331190

/-- `A126964(n+2)+∑[n+1]` -/
def P7515939924844269531.Spec : Prop :=
  ∀ n, P7515939924844269531.a n = A331190 n

end A331190

/-! ## A331190.P3263126927195532595

`A244802(n+3)+∑[n+2]`
-/

namespace A331190.P3263126927195532595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244802 (n + 3) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A331190.P3263126927195532595

namespace A331190

/-- `A244802(n+3)+∑[n+2]` -/
def P3263126927195532595.Spec : Prop :=
  ∀ n, P3263126927195532595.a n = A331190 n

end A331190

/-! ## A331190.P2889909186407828527

`A022282(n+2)-2*(n+2)`
-/

namespace A331190.P2889909186407828527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022282 (n + 2) - (2 * (n + 2) : ℤ)

end

end A331190.P2889909186407828527

namespace A331190

/-- `A022282(n+2)-2*(n+2)` -/
def P2889909186407828527.Spec : Prop :=
  ∀ n, P2889909186407828527.a n = A331190 n

end A331190

/-! ## A331190.P16881021651269109216

`A022283(n+2)-3*(n+2)`
-/

namespace A331190.P16881021651269109216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022283 (n + 2) - (3 * (n + 2) : ℤ)

end

end A331190.P16881021651269109216

namespace A331190

/-- `A022283(n+2)-3*(n+2)` -/
def P16881021651269109216.Spec : Prop :=
  ∀ n, P16881021651269109216.a n = A331190 n

end A331190

/-! ## A331190.P13574915569686787507

`A022280(n+2)+n*(n+2)`
-/

namespace A331190.P13574915569686787507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022280 (n + 2) + (n * (n + 2) : ℤ)

end

end A331190.P13574915569686787507

namespace A331190

/-- `A022280(n+2)+n*(n+2)` -/
def P13574915569686787507.Spec : Prop :=
  ∀ n, P13574915569686787507.a n = A331190 n

end A331190

/-! ## A331190.P11850976871154588331

`A152996(n+2)-n*(n+2)`
-/

namespace A331190.P11850976871154588331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152996 (n + 2) - (n * (n + 2) : ℤ)

end

end A331190.P11850976871154588331

namespace A331190

/-- `A152996(n+2)-n*(n+2)` -/
def P11850976871154588331.Spec : Prop :=
  ∀ n, P11850976871154588331.a n = A331190 n

end A331190

/-! ## A331190.P15826484821477810574

`A236267(n+2)+A235332(n)`
-/

namespace A331190.P15826484821477810574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236267 (n + 2) + A235332 n

end

end A331190.P15826484821477810574

namespace A331190

/-- `A236267(n+2)+A235332(n)` -/
def P15826484821477810574.Spec : Prop :=
  ∀ n, P15826484821477810574.a n = A331190 n

end A331190

/-!
# A331191: Numbers whose dual Zeckendorf representations (A104326) are palindromic.

The programs for A331191, the canonical program `A331191.P5013895762952657066` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331191 has offset 1).

The definition of A331191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331191.P7762640122511657881

`eq[A120613(n+1), A356759(n)]`
-/

namespace A331191.P7762640122511657881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356759 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331191.P7762640122511657881

namespace A331191

/-- `eq[A120613(n+1), A356759(n)]` -/
def P7762640122511657881.Spec : Prop :=
  ∀ n, (P7762640122511657881.a n : ℤ) = A331191 (n + 1)

end A331191

/-! ## A331191.P5013895762952657066

`eq[0, A178226(A003754(n+1))]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A331191

/-- `eq[0, A178226(A003754(n+1))]` -/
def P5013895762952657066.Spec : Prop :=
  ∀ n, (P5013895762952657066.a n : ℤ) = A331191 (n + 1)

theorem P5013895762952657066.correct : P5013895762952657066.Spec := by
  intro n
  simp only [A331191, Nat.add_sub_cancel]

end A331191

/-! ## A331191.P8379928434318815853

`eq[A057427(n), A303536(A003754(n+1))]`
-/

namespace A331191.P8379928434318815853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303536 (A003754 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331191.P8379928434318815853

namespace A331191

/-- `eq[A057427(n), A303536(A003754(n+1))]` -/
def P8379928434318815853.Spec : Prop :=
  ∀ n, (P8379928434318815853.a n : ℤ) = A331191 (n + 1)

end A331191

/-! ## A331191.P10746415991765919438

`eq[A008586(n)%2, A175919(A003754(n+1))]`
-/

namespace A331191.P10746415991765919438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008586 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (A003754 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331191.P10746415991765919438

namespace A331191

/-- `eq[A008586(n)%2, A175919(A003754(n+1))]` -/
def P10746415991765919438.Spec : Prop :=
  ∀ n, (P10746415991765919438.a n : ℤ) = A331191 (n + 1)

end A331191

/-! ## A331191.P10465275679153748445

`eq[A000007(n+1), A193239(A003754(n+1))]`
-/

namespace A331191.P10465275679153748445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193239 (A003754 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331191.P10465275679153748445

namespace A331191

/-- `eq[A000007(n+1), A193239(A003754(n+1))]` -/
def P10465275679153748445.Spec : Prop :=
  ∀ n, (P10465275679153748445.a n : ℤ) = A331191 (n + 1)

end A331191

/-! ## A331191.P7654617500357964383

`eq[1, A178225(∑[A219609(n+1)])]`
-/

namespace A331191.P7654617500357964383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331191.P7654617500357964383

namespace A331191

/-- `eq[1, A178225(∑[A219609(n+1)])]` -/
def P7654617500357964383.Spec : Prop :=
  ∀ n, (P7654617500357964383.a n : ℤ) = A331191 (n + 1)

end A331191

/-!
# A331192: Numbers whose Zeckendorf representation (A014417) and dual Zeckendorf representation (A104326) are both palindromic.

The programs for A331192, there is no canonical definition to state claims against.
-/

/-! ## A331192.P15942722973033486861

`∪[A069403(n+1)-3, A027941(n)]`
-/

namespace A331192.P15942722973033486861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069403 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A331192.P15942722973033486861

/-! ## A331192.P4830620037642261624

`record[A133585(n+1)-A040001(n)²]`
-/

namespace A331192.P4830620037642261624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133585 (n + 1) - A040001 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331192.P4830620037642261624

/-! ## A331192.P11368473076152265145

`∪[2*A001911(2*n), A000071(2*n+1)]`
-/

namespace A331192.P11368473076152265145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001911 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A331192.P11368473076152265145

/-! ## A331192.P9040424755704637837

`∩[A094202(n+1), A331191(n+1)]`
-/

namespace A331192.P9040424755704637837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331192.P9040424755704637837

/-! ## A331192.P12772437711419159224

`eq[n, A356759(A349238(n))]`
-/

namespace A331192.P12772437711419159224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356759 (A349238 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331192.P12772437711419159224

/-!
# A331193: Numbers whose binary and dual Zeckendorf representations are both palindromic.

The programs for A331193, there is no canonical definition to state claims against.
-/

/-! ## A331193.P8023447019721272092

`∩[A006995(n+1), A331191(n+1)]`
-/

namespace A331193.P8023447019721272092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331193.P8023447019721272092

/-! ## A331193.P6032947634203695516

`∩[A180204(n+1), A331191(n+1)]`
-/

namespace A331193.P6032947634203695516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331193.P6032947634203695516

/-! ## A331193.P3130409371004332142

`∩[record[A049776(n+1)-1], A331191(n+1)]`
-/

namespace A331193.P3130409371004332142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049776 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A331193.P3130409371004332142

/-! ## A331193.P7778378822019909749

`∩[A331191(n+1), record[n-A303534(n)²]]`
-/

namespace A331193.P7778378822019909749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331191 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A303534 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331193.P7778378822019909749

/-! ## A331193.P13546752907828147574

`∩[record[n*(1-A178226(n))], A331191(n+1)]`
-/

namespace A331193.P13546752907828147574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A178226 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A331193.P13546752907828147574

/-!
# A331194: Numbers whose last digit is the number of their distinct prime factors.

The programs for A331194, the canonical program `A331194.P6979775353615167908` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331194 has offset 1).

The definition of A331194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4880 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331194.P6979775353615167908

`eq[(n+1)%10, A001221(n+1)]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A331194

/-- `eq[(n+1)%10, A001221(n+1)]+1` -/
def P6979775353615167908.Spec : Prop :=
  ∀ n, (P6979775353615167908.a n : ℤ) = A331194 (n + 1)

theorem P6979775353615167908.correct : P6979775353615167908.Spec := by
  intro n
  simp only [A331194, Nat.add_sub_cancel]

end A331194

/-! ## A331194.P12213530824782891014

`eq[A001221(abs(1-n)+1), A010879(n)]`
-/

namespace A331194.P12213530824782891014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331194.P12213530824782891014

namespace A331194

/-- `eq[A001221(abs(1-n)+1), A010879(n)]` -/
def P12213530824782891014.Spec : Prop :=
  ∀ n, (P12213530824782891014.a n : ℤ) = A331194 (n + 1)

end A331194

/-! ## A331194.P5766834848040273021

`eq[A001221(n+1), A274206(n+1)]+1`
-/

namespace A331194.P5766834848040273021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274206 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A331194.P5766834848040273021

namespace A331194

/-- `eq[A001221(n+1), A274206(n+1)]+1` -/
def P5766834848040273021.Spec : Prop :=
  ∀ n, (P5766834848040273021.a n : ℤ) = A331194 (n + 1)

end A331194

/-! ## A331194.P6987973050504469911

`eq[A001221(A008706(n)), A274206(n+1)]`
-/

namespace A331194.P6987973050504469911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008706 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274206 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331194.P6987973050504469911

namespace A331194

/-- `eq[A001221(A008706(n)), A274206(n+1)]` -/
def P6987973050504469911.Spec : Prop :=
  ∀ n, (P6987973050504469911.a n : ℤ) = A331194 (n + 1)

end A331194

/-! ## A331194.P7719075828415538928

`eq[A001221(A008574(n)+n), A274206(n+1)]`
-/

namespace A331194.P7719075828415538928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008574 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274206 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331194.P7719075828415538928

namespace A331194

/-- `eq[A001221(A008574(n)+n), A274206(n+1)]` -/
def P7719075828415538928.Spec : Prop :=
  ∀ n, (P7719075828415538928.a n : ℤ) = A331194 (n + 1)

end A331194

/-! ## A331194.P11694053976597947177

`eq[A001221(n+1), A251984(A251984(n+1))]+1`
-/

namespace A331194.P11694053976597947177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A251984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A331194.P11694053976597947177

namespace A331194

/-- `eq[A001221(n+1), A251984(A251984(n+1))]+1` -/
def P11694053976597947177.Spec : Prop :=
  ∀ n, (P11694053976597947177.a n : ℤ) = A331194 (n + 1)

end A331194

/-! ## A331194.P4441531680895535817

`eq[A001221(A008706(n)), A251984(9*(n+1))]`
-/

namespace A331194.P4441531680895535817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008706 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (9 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331194.P4441531680895535817

namespace A331194

/-- `eq[A001221(A008706(n)), A251984(9*(n+1))]` -/
def P4441531680895535817.Spec : Prop :=
  ∀ n, (P4441531680895535817.a n : ℤ) = A331194 (n + 1)

end A331194

/-!
# A331195: Three-column table read by rows: triples (i,j,k) in order sorted from the left.

The programs for A331195, there is no canonical definition to state claims against.
-/

/-! ## A331195.P7413389184151775103

`A194849(n)-(2-n%3)`
-/

namespace A331195.P7413389184151775103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194849 n - (2 - ((n % 3 : ℕ) : ℤ))

end

end A331195.P7413389184151775103

/-! ## A331195.P24202659126061541

`A194849(n)-(A057078(n)+1)`
-/

namespace A331195.P24202659126061541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194849 n - (A057078 n + 1)

end

end A331195.P24202659126061541

/-! ## A331195.P11656007021795911569

`A194849(n)-A080425(n+1)`
-/

namespace A331195.P11656007021795911569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194849 n - A080425 (n + 1)

end

end A331195.P11656007021795911569

/-! ## A331195.P15429980007247637696

`A049347(n+1)+A194849(n)-1`
-/

namespace A331195.P15429980007247637696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (n + 1) + (A194849 n - 1)

end

end A331195.P15429980007247637696

/-! ## A331195.P2315568365947613899

`A194849(n)-A131026(2*n+1)`
-/

namespace A331195.P2315568365947613899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194849 n - A131026 (2 * n + 1)

end

end A331195.P2315568365947613899

/-! ## A331195.P12744339294207909864

`A360240(n+1)-1`
-/

namespace A331195.P12744339294207909864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360240 (n + 1) - 1

end

end A331195.P12744339294207909864

/-! ## A331195.P15390767917284113264

`A070198(n)%A360240(n+1)`
-/

namespace A331195.P15390767917284113264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A360240 (n + 1))

end

end A331195.P15390767917284113264

/-! ## A331195.P15820066373309311635

`A030494(n+1)%A360240(n+1)`
-/

namespace A331195.P15820066373309311635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A360240 (n + 1))

end

end A331195.P15820066373309311635

/-! ## A331195.P16749758941794602346

`A058000(n+1)%A360240(n+1)`
-/

namespace A331195.P16749758941794602346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058000 (n + 1)) (A360240 (n + 1))

end

end A331195.P16749758941794602346

/-! ## A331195.P3535408127693305277

`A072828(n+1)%A360240(n+1)`
-/

namespace A331195.P3535408127693305277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A360240 (n + 1))

end

end A331195.P3535408127693305277

/-!
# A331196: Number of nonnegative integer matrices with n distinct columns and any number of nonzero rows with each column sum being 3 and rows in nonincreasing lexicographic order.

The programs for A331196, there is no canonical definition to state claims against.
-/

/-! ## A331196.P17927462174640774756

`A331161(A167614(n+2))`
-/

namespace A331196.P17927462174640774756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331161 (A167614 (n + 2)).toNat

end

end A331196.P17927462174640774756

/-! ## A331196.P17811956228587690411

`A331161(A141214(n)+6)`
-/

namespace A331196.P17811956228587690411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331161 (A141214 n + 6).toNat

end

end A331196.P17811956228587690411

/-! ## A331196.P3220310310238531139

`A331161(A052905(n)+8)`
-/

namespace A331196.P3220310310238531139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331161 (A052905 n + 8).toNat

end

end A331196.P3220310310238531139

/-! ## A331196.P13482886800346509268

`A331161(A055999(n)+9)`
-/

namespace A331196.P13482886800346509268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331161 (A055999 n + 9).toNat

end

end A331196.P13482886800346509268

/-! ## A331196.P5866316206759016210

`A331161(eq[3, A002262(n)])`
-/

namespace A331196.P5866316206759016210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331196.P5866316206759016210

/-!
# A331197: Number of nonnegative integer matrices with 2 distinct columns and any number of nonzero rows with each column sum being n and rows in nonincreasing lexicographic order.

The programs for A331197, there is no canonical definition to state claims against.
-/

/-! ## A331197.P6735957897447136602

`A002774(n)-A000041(n)`
-/

namespace A331197.P6735957897447136602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002774 n - A000041 n

end

end A331197.P6735957897447136602

/-! ## A331197.P948608119349065115

`A002774(n)-∑[A002865(n)]`
-/

namespace A331197.P948608119349065115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002774 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331197.P948608119349065115

/-! ## A331197.P14259846086683584901

`A002774(n)-A054225(∑[n])`
-/

namespace A331197.P14259846086683584901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002774 n - A054225 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A331197.P14259846086683584901

/-! ## A331197.P2183294134113887824

`A201376(A000096(n))-A000041(n)`
-/

namespace A331197.P2183294134113887824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201376 (A000096 n).toNat - A000041 n

end

end A331197.P2183294134113887824

/-! ## A331197.P7050844630286575156

`A054225(∑[4*n])-A000041(n)`
-/

namespace A331197.P7050844630286575156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (∑ j ∈ Finset.range (n + 1), f1 j) - A000041 n

end

end A331197.P7050844630286575156

/-! ## A331197.P9023452266301124620

`A395808(n)+A355390(n)`
-/

namespace A331197.P9023452266301124620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395808 n + A355390 n

end

end A331197.P9023452266301124620

/-! ## A331197.P3569648509546255339

`A091437(2*n)-A000041(n)`
-/

namespace A331197.P3569648509546255339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091437 (2 * n) - A000041 n

end

end A331197.P3569648509546255339

