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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A129800: Prime numbers that can be written as the concatenation of two other prime numbers in exactly one way.

The programs for A129800, there is no canonical definition to state claims against.
-/

/-! ## A129800.P8164491866553715509

`p?[∑{e}[A000079(n), A272157(#)]]`
-/

namespace A129800.P8164491866553715509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A272157 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129800.P8164491866553715509

/-! ## A129800.P10130194284155025953

`p?[∏{e}[A011782(n), A272157(#)]]`
-/

namespace A129800.P10130194284155025953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A272157 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129800.P10130194284155025953

/-! ## A129800.P14947406981572951795

`∑{e}[A000079(n+1), A272157(#)]`
-/

namespace A129800.P14947406981572951795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A272157 (Nat.factorization (f1 n).natAbs p)

end

end A129800.P14947406981572951795

/-! ## A129800.P840520237025697505

`A272157(n+1)%A272185(A000070(n))`
-/

namespace A129800.P840520237025697505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272157 (n + 1)) (A272185 (A000070 n).toNat)

end

end A129800.P840520237025697505

/-! ## A129800.P8709126447022294812

`A002034(A272157(n+1)*A388715(n+1))`
-/

namespace A129800.P8709126447022294812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A272157 (n + 1) * A388715 (n + 1)).toNat

end

end A129800.P8709126447022294812

/-!
# A129801: Triangle read by rows in which row m (m>=0) gives the numbers 2*m*n + 1 for n = 0, ..., m.

The programs for A129801, there is no canonical definition to state claims against.
-/

/-! ## A129801.P14198231325124787424

`2*A079904(n)+1`
-/

namespace A129801.P14198231325124787424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079904 n + 1

end

end A129801.P14198231325124787424

/-! ## A129801.P3196193501025656343

`log2(A344110(n)²)+1`
-/

namespace A129801.P3196193501025656343
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A344110 n ^ 2 : ℝ) + 1

end

end A129801.P3196193501025656343

/-! ## A129801.P13820786037281888509

`2*A076110(n+1)-1`
-/

namespace A129801.P13820786037281888509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076110 (n + 1) - 1

end

end A129801.P13820786037281888509

/-! ## A129801.P12458722732829407243

`2*A144204(n+1)+3`
-/

namespace A129801.P12458722732829407243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144204 (n + 1) + 3

end

end A129801.P12458722732829407243

/-! ## A129801.P3754927892213325668

`2*∑[char[∑[n+1]]]*A002262(n)+1`
-/

namespace A129801.P3754927892213325668
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A002262 n) + 1

end

end A129801.P3754927892213325668

/-! ## A129801.P3345455859298384213

`A004273(A076110(n+1))`
-/

namespace A129801.P3345455859298384213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A076110 (n + 1)).toNat

end

end A129801.P3345455859298384213

/-! ## A129801.P1936013675772770004

`A005843(A079904(n))+1`
-/

namespace A129801.P1936013675772770004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A079904 n).toNat + 1

end

end A129801.P1936013675772770004

/-! ## A129801.P18286579087660217807

`A162609(A341706(n+1))`
-/

namespace A129801.P18286579087660217807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162609 (A341706 (n + 1)).toNat

end

end A129801.P18286579087660217807

/-! ## A129801.P5485898473448976292

`A079904(n)+A076110(n+1)`
-/

namespace A129801.P5485898473448976292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n + A076110 (n + 1)

end

end A129801.P5485898473448976292

/-! ## A129801.P15597143414952861033

`A132111(n)+1-A073254(n)`
-/

namespace A129801.P15597143414952861033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132111 n + (1 - A073254 n)

end

end A129801.P15597143414952861033

/-!
# A129802: Possible bases for Pepin's primality test for Fermat numbers.

The programs for A129802, there is no canonical definition to state claims against.
-/

/-! ## A129802.P3920157860748675736

`∩[A351026(n+1), A008599(n)]/17`
-/

namespace A129802.P3920157860748675736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008599 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 17

end

end A129802.P3920157860748675736

/-! ## A129802.P15049570867384717813

`lt[A165471(A000578(n)), -A165573(n)]`
-/

namespace A129802.P15049570867384717813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 (A000578 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A165573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129802.P15049570867384717813

/-! ## A129802.P4821213986833376388

`lt[A165471(A000578(n)), A165573(3*n)]`
-/

namespace A129802.P4821213986833376388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 (A000578 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129802.P4821213986833376388

/-! ## A129802.P10093752134256572770

`A136804(lt[A317239(n), A110560(n)])`
-/

namespace A129802.P10093752134256572770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317239 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136804 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A129802.P10093752134256572770

/-!
# A129803: Triangular numbers that are the sum of three consecutive triangular numbers.

The programs for A129803, there is no canonical definition to state claims against.
-/

/-! ## A129803.P16271949834879226055

`floor((sqrt(3)+2)²*a(n-1))-3` with `a(0)=10`
-/

namespace A129803.P16271949834879226055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) ^ 2 * (a (n - 1) : ℝ)⌋ - 3

end

end A129803.P16271949834879226055

/-! ## A129803.P10687017558671360585

`A128862(n+2)`
-/

namespace A129803.P10687017558671360585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128862 (n + 2)

end

end A129803.P10687017558671360585

/-! ## A129803.P35290513367410862

`3*A076140(n+1)+1`
-/

namespace A129803.P35290513367410862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A076140 (n + 1) + 1

end

end A129803.P35290513367410862

/-! ## A129803.P14926127144162802194

`C(A133161(n+2)+1, 2)`
-/

namespace A129803.P14926127144162802194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A133161 (n + 2) + 1).toNat 2

end

end A129803.P14926127144162802194

/-! ## A129803.P3723283888713746127

`A076139(n+1)+A046184(n+2)`
-/

namespace A129803.P3723283888713746127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076139 (n + 1) + A046184 (n + 2)

end

end A129803.P3723283888713746127

/-! ## A129803.P10489241549811089588

`A076139(n+1)+A045899(n+2)+1`
-/

namespace A129803.P10489241549811089588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076139 (n + 1) + (A045899 (n + 2) + 1)

end

end A129803.P10489241549811089588

/-! ## A129803.P8809653682479695530

`A102871(A005843(n+1))+A076140(n)`
-/

namespace A129803.P8809653682479695530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102871 (A005843 (n + 1)).toNat + A076140 n

end

end A129803.P8809653682479695530

/-! ## A129803.P15465955782449006415

`ceil(A151961(2*(n+2))/8)`
-/

namespace A129803.P15465955782449006415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A151961 (2 * (n + 2)) : ℚ) / 8⌉

end

end A129803.P15465955782449006415

/-!
# A129804: a(0) = 1, a(1) = 2; for n>0, a(2*n) = 3*a(2*n-1) - a(2*n-2), a(2*n+1) = 3*a(2*n) - a(2*n-1) - a(n-1).

The programs for A129804, there is no canonical definition to state claims against.
-/

/-! ## A129804.P17479400219665578961

`∑[ceil(A168259(n+1)/2)]`
-/

namespace A129804.P17479400219665578961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A168259 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129804.P17479400219665578961

/-! ## A129804.P5974624216659616227

`∑[A168259(n+1)/A000122(n²)]`
-/

namespace A129804.P5974624216659616227
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168259 (n + 1) : ℚ) / (A000122 (n ^ 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129804.P5974624216659616227

/-! ## A129804.P9269355716336088333

`∑[A168259(n+1)/A036453(n+1)]`
-/

namespace A129804.P9269355716336088333
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168259 (n + 1) : ℚ) / (A036453 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129804.P9269355716336088333

/-! ## A129804.P1276492028617403833

`∑[A168259(n+1)/A020639(A013598(n))]`
-/

namespace A129804.P1276492028617403833
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168259 (n + 1) : ℚ) / (A020639 (A013598 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129804.P1276492028617403833

/-!
# A129805: Primes congruent to +-1 mod 18.

The programs for A129805, the canonical program `A129805.P4512016723305044944` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129805 has offset 1).

The definition of A129805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129805.P4512016723305044944

`p?[a(n-2)+9]` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A129805

/-- `p?[a(n-2)+9]` -/
def P4512016723305044944.Spec : Prop :=
  ∀ n, (P4512016723305044944.a n : ℤ) = A129805 (n + 1)

theorem P4512016723305044944.correct : P4512016723305044944.Spec := by
  intro n
  simp only [A129805, Nat.add_sub_cancel]

end A129805

/-! ## A129805.P5463952436384679034

`p?[9*n-a(n-1)]` with `a(0)=4, a(1)=1`
-/

namespace A129805.P5463952436384679034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f1 =>
  (9 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129805.P5463952436384679034

namespace A129805

/-- `p?[9*n-a(n-1)]` -/
def P5463952436384679034.Spec : Prop :=
  ∀ n, P5463952436384679034.a n = A129805 (n + 1)

end A129805

/-! ## A129805.P8574054354263647683

`∪[A061237(n+1), A061242(n+1)]`
-/

namespace A129805.P8574054354263647683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A129805.P8574054354263647683

namespace A129805

/-- `∪[A061237(n+1), A061242(n+1)]` -/
def P8574054354263647683.Spec : Prop :=
  ∀ n, (P8574054354263647683.a n : ℤ) = A129805 (n + 1)

end A129805

/-! ## A129805.P16130034738745618710

`p?[3*n-(n+1)%3]`
-/

namespace A129805.P16130034738745618710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - (((n + 1) % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129805.P16130034738745618710

namespace A129805

/-- `p?[3*n-(n+1)%3]` -/
def P16130034738745618710.Spec : Prop :=
  ∀ n, P16130034738745618710.a n = A129805 (n + 1)

end A129805

/-! ## A129805.P10548182271027297092

`p?[dr(A015919(n+1)²)*A015919(n+1)]`
-/

namespace A129805.P10548182271027297092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A015919 (n + 1) ^ 2) : ℤ) * A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129805.P10548182271027297092

namespace A129805

/-- `p?[dr(A015919(n+1)²)*A015919(n+1)]` -/
def P10548182271027297092.Spec : Prop :=
  ∀ n, P10548182271027297092.a n = A129805 (n + 1)

end A129805

/-! ## A129805.P17982359691357473672

`p?[(2*n+1)*dr((2*n+1)²)]`
-/

namespace A129805.P17982359691357473672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * SequenceMachineLib.digitalRoot ((2 * n + 1) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A129805.P17982359691357473672

namespace A129805

/-- `p?[(2*n+1)*dr((2*n+1)²)]` -/
def P17982359691357473672.Spec : Prop :=
  ∀ n, (P17982359691357473672.a n : ℤ) = A129805 (n + 1)

end A129805

/-! ## A129805.P11753197825207131497

`A000040(A024706(n+1))`
-/

namespace A129805.P11753197825207131497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A024706 (n + 1)).toNat

end

end A129805.P11753197825207131497

namespace A129805

/-- `A000040(A024706(n+1))` -/
def P11753197825207131497.Spec : Prop :=
  ∀ n, P11753197825207131497.a n = A129805 (n + 1)

end A129805

/-! ## A129805.P14764801635206221606

`p?[dr(A000040(n+1)²)*A000040(n+1)]`
-/

namespace A129805.P14764801635206221606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A000040 (n + 1) ^ 2) : ℤ) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129805.P14764801635206221606

namespace A129805

/-- `p?[dr(A000040(n+1)²)*A000040(n+1)]` -/
def P14764801635206221606.Spec : Prop :=
  ∀ n, P14764801635206221606.a n = A129805 (n + 1)

end A129805

/-! ## A129805.P8600346144039829796

`p?[dr(A008578(n+1)²)*A008578(n+1)]`
-/

namespace A129805.P8600346144039829796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A008578 (n + 1) ^ 2) : ℤ) * A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129805.P8600346144039829796

namespace A129805

/-- `p?[dr(A008578(n+1)²)*A008578(n+1)]` -/
def P8600346144039829796.Spec : Prop :=
  ∀ n, P8600346144039829796.a n = A129805 (n + 1)

end A129805

/-! ## A129805.P2355924519306980719

`p?[dr(A033946(n+1)²)*A033946(n+1)]`
-/

namespace A129805.P2355924519306980719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A033946 (n + 1) ^ 2) : ℤ) * A033946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129805.P2355924519306980719

namespace A129805

/-- `p?[dr(A033946(n+1)²)*A033946(n+1)]` -/
def P2355924519306980719.Spec : Prop :=
  ∀ n, P2355924519306980719.a n = A129805 (n + 1)

end A129805

/-! ## A129805.P2190666772143887122

`p?[dr(A062972(n+1)²)*A062972(n+1)]`
-/

namespace A129805.P2190666772143887122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A062972 (n + 1) ^ 2) : ℤ) * A062972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129805.P2190666772143887122

namespace A129805

/-- `p?[dr(A062972(n+1)²)*A062972(n+1)]` -/
def P2190666772143887122.Spec : Prop :=
  ∀ n, P2190666772143887122.a n = A129805 (n + 1)

end A129805

/-! ## A129805.P13267062746614590987

`p?[lcm(n, dr(n²))]`
-/

namespace A129805.P13267062746614590987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (SequenceMachineLib.digitalRoot (n ^ 2 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A129805.P13267062746614590987

namespace A129805

/-- `p?[lcm(n, dr(n²))]` -/
def P13267062746614590987.Spec : Prop :=
  ∀ n, (P13267062746614590987.a n : ℤ) = A129805 (n + 1)

end A129805

/-! ## A129805.P4032947045336987977

`p?[∑[A144532(n)]]`
-/

namespace A129805.P4032947045336987977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144532 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129805.P4032947045336987977

namespace A129805

/-- `p?[∑[A144532(n)]]` -/
def P4032947045336987977.Spec : Prop :=
  ∀ n, P4032947045336987977.a n = A129805 (n + 1)

end A129805

/-! ## A129805.P10032677176605023394

`p?[Δ[A195147(n)]]`
-/

namespace A129805.P10032677176605023394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195147 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129805.P10032677176605023394

namespace A129805

/-- `p?[Δ[A195147(n)]]` -/
def P10032677176605023394.Spec : Prop :=
  ∀ n, P10032677176605023394.a n = A129805 (n + 1)

end A129805

/-! ## A129805.P16495809913252643282

`p?[A151977(n+2)+n]`
-/

namespace A129805.P16495809913252643282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151977 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129805.P16495809913252643282

namespace A129805

/-- `p?[A151977(n+2)+n]` -/
def P16495809913252643282.Spec : Prop :=
  ∀ n, P16495809913252643282.a n = A129805 (n + 1)

end A129805

/-! ## A129805.P16293124333337891327

`p?[2*A090570(n+1)-1]`
-/

namespace A129805.P16293124333337891327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090570 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129805.P16293124333337891327

namespace A129805

/-- `p?[2*A090570(n+1)-1]` -/
def P16293124333337891327.Spec : Prop :=
  ∀ n, P16293124333337891327.a n = A129805 (n + 1)

end A129805

/-! ## A129805.P13066486168455798256

`p?[abs(1-∑[2*A010689(n)])]`
-/

namespace A129805.P13066486168455798256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010689 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129805.P13066486168455798256

namespace A129805

/-- `p?[abs(1-∑[2*A010689(n)])]` -/
def P13066486168455798256.Spec : Prop :=
  ∀ n, P13066486168455798256.a n = A129805 (n + 1)

end A129805

/-! ## A129805.P8148185367372184101

`p?[A195147(n+1)-A195147(n)]`
-/

namespace A129805.P8148185367372184101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195147 (n + 1) - A195147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129805.P8148185367372184101

namespace A129805

/-- `p?[A195147(n+1)-A195147(n)]` -/
def P8148185367372184101.Spec : Prop :=
  ∀ n, P8148185367372184101.a n = A129805 (n + 1)

end A129805

/-! ## A129805.P16587700268052625875

`p?[∑[dr(A005897(n))]]`
-/

namespace A129805.P16587700268052625875
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A005897 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A129805.P16587700268052625875

namespace A129805

/-- `p?[∑[dr(A005897(n))]]` -/
def P16587700268052625875.Spec : Prop :=
  ∀ n, (P16587700268052625875.a n : ℤ) = A129805 (n + 1)

end A129805

/-!
# A129806: Primes congruent to +-5 mod 18.

The programs for A129806, the canonical program `A129806.P11638884693842761719` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129806 has offset 1).

The definition of A129806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129806.P11638884693842761719

`p?[or(1, 9*n+4)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A129806

/-- `p?[or(1, 9*n+4)]` -/
def P11638884693842761719.Spec : Prop :=
  ∀ n, (P11638884693842761719.a n : ℤ) = A129806 (n + 1)

theorem P11638884693842761719.correct : P11638884693842761719.Spec := by
  intro n
  simp only [A129806, Nat.add_sub_cancel]

end A129806

/-! ## A129806.P8251878472537734670

`p?[a(n-2)+9]` with `a(0)=4, a(1)=5`
-/

namespace A129806.P8251878472537734670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 5] fun n f1 =>
  f1 (n - 2) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A129806.P8251878472537734670

namespace A129806

/-- `p?[a(n-2)+9]` -/
def P8251878472537734670.Spec : Prop :=
  ∀ n, (P8251878472537734670.a n : ℤ) = A129806 (n + 1)

end A129806

/-! ## A129806.P5408725410731646509

`p?[9*n-a(n-1)]` with `a(0)=5`
-/

namespace A129806.P5408725410731646509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  (9 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129806.P5408725410731646509

namespace A129806

/-- `p?[9*n-a(n-1)]` -/
def P5408725410731646509.Spec : Prop :=
  ∀ n, P5408725410731646509.a n = A129806 (n + 1)

end A129806

/-! ## A129806.P17704894832362250596

`p?[abs(1-((n+1)%3+3*n))]`
-/

namespace A129806.P17704894832362250596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (((n + 1) % 3 + 3 * n : ℕ) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129806.P17704894832362250596

namespace A129806

/-- `p?[abs(1-((n+1)%3+3*n))]` -/
def P17704894832362250596.Spec : Prop :=
  ∀ n, P17704894832362250596.a n = A129806 (n + 1)

end A129806

/-! ## A129806.P7500468897133166128

`p?[2*n+1-dr((n+3)²)]`
-/

namespace A129806.P7500468897133166128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (SequenceMachineLib.digitalRoot ((n + 3) ^ 2 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129806.P7500468897133166128

namespace A129806

/-- `p?[2*n+1-dr((n+3)²)]` -/
def P7500468897133166128.Spec : Prop :=
  ∀ n, P7500468897133166128.a n = A129806 (n + 1)

end A129806

/-! ## A129806.P2025100990964235088

`p?[n*dr(n²+3)]`
-/

namespace A129806.P2025100990964235088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.digitalRoot (n ^ 2 + 3 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A129806.P2025100990964235088

namespace A129806

/-- `p?[n*dr(n²+3)]` -/
def P2025100990964235088.Spec : Prop :=
  ∀ n, (P2025100990964235088.a n : ℤ) = A129806 (n + 1)

end A129806

/-! ## A129806.P10609403490180608639

`record[A006530(or(1, 9*n+4))]`
-/

namespace A129806.P10609403490180608639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.lor 1 (9 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129806.P10609403490180608639

namespace A129806

/-- `record[A006530(or(1, 9*n+4))]` -/
def P10609403490180608639.Spec : Prop :=
  ∀ n, P10609403490180608639.a n = A129806 (n + 1)

end A129806

/-! ## A129806.P965520200234297246

`record[A020639(or(1, 9*n+4))]`
-/

namespace A129806.P965520200234297246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.lor 1 (9 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129806.P965520200234297246

namespace A129806

/-- `record[A020639(or(1, 9*n+4))]` -/
def P965520200234297246.Spec : Prop :=
  ∀ n, P965520200234297246.a n = A129806 (n + 1)

end A129806

/-! ## A129806.P17669151615418231190

`p?[A143988(n+1)]`
-/

namespace A129806.P17669151615418231190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129806.P17669151615418231190

namespace A129806

/-- `p?[A143988(n+1)]` -/
def P17669151615418231190.Spec : Prop :=
  ∀ n, P17669151615418231190.a n = A129806 (n + 1)

end A129806

/-! ## A129806.P1986583116084805867

`p?[2*A193910(n+1)+1]`
-/

namespace A129806.P1986583116084805867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193910 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129806.P1986583116084805867

namespace A129806

/-- `p?[2*A193910(n+1)+1]` -/
def P1986583116084805867.Spec : Prop :=
  ∀ n, P1986583116084805867.a n = A129806 (n + 1)

end A129806

/-! ## A129806.P12583010725875004843

`p?[A166304(n)+A166138(n)]`
-/

namespace A129806.P12583010725875004843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166304 n + A166138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129806.P12583010725875004843

namespace A129806

/-- `p?[A166304(n)+A166138(n)]` -/
def P12583010725875004843.Spec : Prop :=
  ∀ n, P12583010725875004843.a n = A129806 (n + 1)

end A129806

/-! ## A129806.P6138292639085259842

`filter[A143988(n+1), A010051(#)]`
-/

namespace A129806.P6138292639085259842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A129806.P6138292639085259842

namespace A129806

/-- `filter[A143988(n+1), A010051(#)]` -/
def P6138292639085259842.Spec : Prop :=
  ∀ n, P6138292639085259842.a n = A129806 (n + 1)

end A129806

/-! ## A129806.P3561687432989943274

`∩[A000040(n+1), A143988(n+1)]`
-/

namespace A129806.P3561687432989943274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129806.P3561687432989943274

namespace A129806

/-- `∩[A000040(n+1), A143988(n+1)]` -/
def P3561687432989943274.Spec : Prop :=
  ∀ n, (P3561687432989943274.a n : ℤ) = A129806 (n + 1)

end A129806

/-! ## A129806.P2287499439825379379

`∩[A045344(n+1), A143988(n+1)]`
-/

namespace A129806.P2287499439825379379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129806.P2287499439825379379

namespace A129806

/-- `∩[A045344(n+1), A143988(n+1)]` -/
def P2287499439825379379.Spec : Prop :=
  ∀ n, (P2287499439825379379.a n : ℤ) = A129806 (n + 1)

end A129806

/-! ## A129806.P17421569640764844949

`∩[A053577(n+1), A143988(n+1)]`
-/

namespace A129806.P17421569640764844949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129806.P17421569640764844949

namespace A129806

/-- `∩[A053577(n+1), A143988(n+1)]` -/
def P17421569640764844949.Spec : Prop :=
  ∀ n, (P17421569640764844949.a n : ℤ) = A129806 (n + 1)

end A129806

/-! ## A129806.P1172417945609870062

`∩[A053813(n+1), A143988(n+1)]`
-/

namespace A129806.P1172417945609870062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129806.P1172417945609870062

namespace A129806

/-- `∩[A053813(n+1), A143988(n+1)]` -/
def P1172417945609870062.Spec : Prop :=
  ∀ n, (P1172417945609870062.a n : ℤ) = A129806 (n + 1)

end A129806

/-! ## A129806.P11371815648722215040

`∩[A066191(n+1), A143988(n+1)]`
-/

namespace A129806.P11371815648722215040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129806.P11371815648722215040

namespace A129806

/-- `∩[A066191(n+1), A143988(n+1)]` -/
def P11371815648722215040.Spec : Prop :=
  ∀ n, (P11371815648722215040.a n : ℤ) = A129806 (n + 1)

end A129806

/-! ## A129806.P15277240788364929158

`∩[A161346(n+1), A143988(n+1)]`
-/

namespace A129806.P15277240788364929158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129806.P15277240788364929158

namespace A129806

/-- `∩[A161346(n+1), A143988(n+1)]` -/
def P15277240788364929158.Spec : Prop :=
  ∀ n, (P15277240788364929158.a n : ℤ) = A129806 (n + 1)

end A129806

/-! ## A129806.P10479128873005348084

`∩[A082378(n+1), A143988(n+1)]`
-/

namespace A129806.P10479128873005348084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129806.P10479128873005348084

namespace A129806

/-- `∩[A082378(n+1), A143988(n+1)]` -/
def P10479128873005348084.Spec : Prop :=
  ∀ n, (P10479128873005348084.a n : ℤ) = A129806 (n + 1)

end A129806

/-!
# A129807: Primes congruent to +-7 mod 18.

The programs for A129807, the canonical program `A129807.P7069844095240450657` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129807 has offset 1).

The definition of A129807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129807.P7069844095240450657

`p?[9*n-a(n-1)]` with `a(0)=4, a(1)=7`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A129807

/-- `p?[9*n-a(n-1)]` -/
def P7069844095240450657.Spec : Prop :=
  ∀ n, P7069844095240450657.a n = A129807 (n + 1)

theorem P7069844095240450657.correct : P7069844095240450657.Spec := by
  intro n
  simp only [A129807, Nat.add_sub_cancel]

end A129807

/-! ## A129807.P16173049504472193770

`p?[∑[A010144(2*n)]]`
-/

namespace A129807.P16173049504472193770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010144 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129807.P16173049504472193770

namespace A129807

/-- `p?[∑[A010144(2*n)]]` -/
def P16173049504472193770.Spec : Prop :=
  ∀ n, P16173049504472193770.a n = A129807 (n + 1)

end A129807

/-! ## A129807.P4590692535544235190

`p?[∑[A010142(3*n)]]`
-/

namespace A129807.P4590692535544235190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010142 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129807.P4590692535544235190

namespace A129807

/-- `p?[∑[A010142(3*n)]]` -/
def P4590692535544235190.Spec : Prop :=
  ∀ n, P4590692535544235190.a n = A129807 (n + 1)

end A129807

/-! ## A129807.P5894721141550182261

`p?[A008458(n)+A064429(n)-n]`
-/

namespace A129807.P5894721141550182261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A064429 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129807.P5894721141550182261

namespace A129807

/-- `p?[A008458(n)+A064429(n)-n]` -/
def P5894721141550182261.Spec : Prop :=
  ∀ n, P5894721141550182261.a n = A129807 (n + 1)

end A129807

/-! ## A129807.P11244380267626192578

`p?[∑[A040052(n)]]`
-/

namespace A129807.P11244380267626192578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040052 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129807.P11244380267626192578

namespace A129807

/-- `p?[∑[A040052(n)]]` -/
def P11244380267626192578.Spec : Prop :=
  ∀ n, P11244380267626192578.a n = A129807 (n + 1)

end A129807

/-! ## A129807.P4118011452424340525

`p?[Δ[A173102(n+1)]]`
-/

namespace A129807.P4118011452424340525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173102 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129807.P4118011452424340525

namespace A129807

/-- `p?[Δ[A173102(n+1)]]` -/
def P4118011452424340525.Spec : Prop :=
  ∀ n, P4118011452424340525.a n = A129807 (n + 1)

end A129807

/-! ## A129807.P9725419240502872135

`p?[A301291(n+1)+2]`
-/

namespace A129807.P9725419240502872135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129807.P9725419240502872135

namespace A129807

/-- `p?[A301291(n+1)+2]` -/
def P9725419240502872135.Spec : Prop :=
  ∀ n, P9725419240502872135.a n = A129807 (n + 1)

end A129807

/-! ## A129807.P13165585560233707329

`p?[A130877(n+2)+2]`
-/

namespace A129807.P13165585560233707329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130877 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129807.P13165585560233707329

namespace A129807

/-- `p?[A130877(n+2)+2]` -/
def P13165585560233707329.Spec : Prop :=
  ∀ n, P13165585560233707329.a n = A129807 (n + 1)

end A129807

/-! ## A129807.P7686321660716154183

`p?[A030123(n)-2+n]`
-/

namespace A129807.P7686321660716154183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030123 n - 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129807.P7686321660716154183

namespace A129807

/-- `p?[A030123(n)-2+n]` -/
def P7686321660716154183.Spec : Prop :=
  ∀ n, P7686321660716154183.a n = A129807 (n + 1)

end A129807

/-! ## A129807.P6479471970417409370

`filter[A063289(n+4), A010051(#)]`
-/

namespace A129807.P6479471970417409370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063289 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A129807.P6479471970417409370

namespace A129807

/-- `filter[A063289(n+4), A010051(#)]` -/
def P6479471970417409370.Spec : Prop :=
  ∀ n, P6479471970417409370.a n = A129807 (n + 1)

end A129807

/-! ## A129807.P11708337813633969311

`filter[A063289(n+4), A323152(#)]`
-/

namespace A129807.P11708337813633969311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063289 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A129807.P11708337813633969311

namespace A129807

/-- `filter[A063289(n+4), A323152(#)]` -/
def P11708337813633969311.Spec : Prop :=
  ∀ n, P11708337813633969311.a n = A129807 (n + 1)

end A129807

/-! ## A129807.P1235162614286475442

`filter[A063289(n+4), A323153(#)]`
-/

namespace A129807.P1235162614286475442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063289 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A129807.P1235162614286475442

namespace A129807

/-- `filter[A063289(n+4), A323153(#)]` -/
def P1235162614286475442.Spec : Prop :=
  ∀ n, P1235162614286475442.a n = A129807 (n + 1)

end A129807

/-! ## A129807.P17548462396289327005

`record[A006530(A301291(n+1)+2)]`
-/

namespace A129807.P17548462396289327005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A301291 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129807.P17548462396289327005

namespace A129807

/-- `record[A006530(A301291(n+1)+2)]` -/
def P17548462396289327005.Spec : Prop :=
  ∀ n, P17548462396289327005.a n = A129807 (n + 1)

end A129807

/-! ## A129807.P12782175357070600313

`record[A020639(A301291(n+1)+2)]`
-/

namespace A129807.P12782175357070600313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A301291 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129807.P12782175357070600313

namespace A129807

/-- `record[A020639(A301291(n+1)+2)]` -/
def P12782175357070600313.Spec : Prop :=
  ∀ n, P12782175357070600313.a n = A129807 (n + 1)

end A129807

/-! ## A129807.P1462231022471620471

`∩[A004139(n+1), A063289(n+2)]`
-/

namespace A129807.P1462231022471620471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063289 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129807.P1462231022471620471

namespace A129807

/-- `∩[A004139(n+1), A063289(n+2)]` -/
def P1462231022471620471.Spec : Prop :=
  ∀ n, (P1462231022471620471.a n : ℤ) = A129807 (n + 1)

end A129807

/-! ## A129807.P6241245086319652975

`∩[A006005(n+1), A063289(n+2)]`
-/

namespace A129807.P6241245086319652975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063289 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129807.P6241245086319652975

namespace A129807

/-- `∩[A006005(n+1), A063289(n+2)]` -/
def P6241245086319652975.Spec : Prop :=
  ∀ n, (P6241245086319652975.a n : ℤ) = A129807 (n + 1)

end A129807

/-! ## A129807.P3794792795058640184

`∩[A064728(n+1), A063289(n+2)]`
-/

namespace A129807.P3794792795058640184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063289 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129807.P3794792795058640184

namespace A129807

/-- `∩[A064728(n+1), A063289(n+2)]` -/
def P3794792795058640184.Spec : Prop :=
  ∀ n, (P3794792795058640184.a n : ℤ) = A129807 (n + 1)

end A129807

/-! ## A129807.P3599943687676385671

`∩[A065091(n+1), A063289(n+2)]`
-/

namespace A129807.P3599943687676385671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063289 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129807.P3599943687676385671

namespace A129807

/-- `∩[A065091(n+1), A063289(n+2)]` -/
def P3599943687676385671.Spec : Prop :=
  ∀ n, (P3599943687676385671.a n : ℤ) = A129807 (n + 1)

end A129807

/-!
# A129808: Decimal expansion of constant equal to concatenated nonprimes.

The programs for A129808, there is no canonical definition to state claims against.
-/

/-! ## A129808.P11748468783595449769

`Δ[A163120(n+1)]`
-/

namespace A129808.P11748468783595449769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129808.P11748468783595449769

/-! ## A129808.P9590338453968735217

`A163120(n+2)-A163120(n+1)`
-/

namespace A129808.P9590338453968735217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163120 (n + 2) - A163120 (n + 1)

end

end A129808.P9590338453968735217

/-! ## A129808.P13220114634890853377

`Δ[A020719(A163120(Δ[n²]-n))]`
-/

namespace A129808.P13220114634890853377
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 (A163120 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129808.P13220114634890853377

/-! ## A129808.P13697749936176236145

`abs(Δ[A163120(A077168(n))])`
-/

namespace A129808.P13697749936176236145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163120 (A077168 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A129808.P13697749936176236145

/-!
# A129809: Lesser of consecutive prime pairs whose last digits differ by 2.

The programs for A129809, the canonical program `A129809.P16380635724625305868` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129809 has offset 1).

The definition of A129809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2713 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129809.P16380635724625305868

`A065091(eq[2, A129750(n+1)])`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A129809

/-- `A065091(eq[2, A129750(n+1)])` -/
def P16380635724625305868.Spec : Prop :=
  ∀ n, P16380635724625305868.a n = A129809 (n + 1)

theorem P16380635724625305868.correct : P16380635724625305868.Spec := by
  intro n
  simp only [A129809, Nat.add_sub_cancel]

end A129809

/-! ## A129809.P14582386989177388186

`A000040(eq[2, A129750(n+1)]+1)`
-/

namespace A129809.P14582386989177388186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A129809.P14582386989177388186

namespace A129809

/-- `A000040(eq[2, A129750(n+1)]+1)` -/
def P14582386989177388186.Spec : Prop :=
  ∀ n, P14582386989177388186.a n = A129809 (n + 1)

end A129809

/-! ## A129809.P13567196013691309588

`A006005(eq[2, A129750(n+1)]+1)`
-/

namespace A129809.P13567196013691309588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A129809.P13567196013691309588

namespace A129809

/-- `A006005(eq[2, A129750(n+1)]+1)` -/
def P13567196013691309588.Spec : Prop :=
  ∀ n, P13567196013691309588.a n = A129809 (n + 1)

end A129809

/-! ## A129809.P3230518210753452398

`A008578(eq[2, A129750(n+1)]+2)`
-/

namespace A129809.P3230518210753452398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A129809.P3230518210753452398

namespace A129809

/-- `A008578(eq[2, A129750(n+1)]+2)` -/
def P3230518210753452398.Spec : Prop :=
  ∀ n, P3230518210753452398.a n = A129809 (n + 1)

end A129809

/-! ## A129809.P6609429223430056022

`p?[(A129750(n+1)-1)*A000040(n+1)]`
-/

namespace A129809.P6609429223430056022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A129750 (n + 1) - 1) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129809.P6609429223430056022

namespace A129809

/-- `p?[(A129750(n+1)-1)*A000040(n+1)]` -/
def P6609429223430056022.Spec : Prop :=
  ∀ n, P6609429223430056022.a n = A129809 (n + 1)

end A129809

/-!
# A129810: 9^(9^9) mod n.

The programs for A129810, there is no canonical definition to state claims against.
-/

/-! ## A129810.P17288926422038299521

`A332054(n+1)+2*A185238(A332054(n+1))`
-/

namespace A129810.P17288926422038299521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332054 (n + 1) + 2 * A185238 (A332054 (n + 1)).toNat

end

end A129810.P17288926422038299521

/-!
# A129811: Lesser of consecutive prime pairs whose last digits differ by 4.

The programs for A129811, the canonical program `A129811.P9493245702118033988` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129811 has offset 2).

The definition of A129811 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129811.P9493245702118033988

`∩[A097957(n+1), A253970(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A129811

/-- `∩[A097957(n+1), A253970(n+1)]` -/
def P9493245702118033988.Spec : Prop :=
  ∀ n, (P9493245702118033988.a n : ℤ) = A129811 (n + 2)

theorem P9493245702118033988.correct : P9493245702118033988.Spec := by
  intro n
  simp only [A129811, Nat.add_sub_cancel]

end A129811

/-! ## A129811.P2705466723353888348

`∩[A063226(n+1), A253970(n+1)]`
-/

namespace A129811.P2705466723353888348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129811.P2705466723353888348

namespace A129811

/-- `∩[A063226(n+1), A253970(n+1)]` -/
def P2705466723353888348.Spec : Prop :=
  ∀ n, (P2705466723353888348.a n : ℤ) = A129811 (n + 2)

end A129811

/-! ## A129811.P5306780104916924455

`∩[A253970(n+1), A297466(n)]`
-/

namespace A129811.P5306780104916924455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297466 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129811.P5306780104916924455

namespace A129811

/-- `∩[A253970(n+1), A297466(n)]` -/
def P5306780104916924455.Spec : Prop :=
  ∀ n, (P5306780104916924455.a n : ℤ) = A129811 (n + 2)

end A129811

/-! ## A129811.P7068259685010879520

`∩[A253970(n+1), A298786(n)]`
-/

namespace A129811.P7068259685010879520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129811.P7068259685010879520

namespace A129811

/-- `∩[A253970(n+1), A298786(n)]` -/
def P7068259685010879520.Spec : Prop :=
  ∀ n, (P7068259685010879520.a n : ℤ) = A129811 (n + 2)

end A129811

/-! ## A129811.P2951375038341689972

`∩[A063241(n+1), A253970(n+1)]`
-/

namespace A129811.P2951375038341689972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129811.P2951375038341689972

namespace A129811

/-- `∩[A063241(n+1), A253970(n+1)]` -/
def P2951375038341689972.Spec : Prop :=
  ∀ n, (P2951375038341689972.a n : ℤ) = A129811 (n + 2)

end A129811

/-! ## A129811.P6484616782041395359

`∩[A253970(n+1), A326422(n+1)]`
-/

namespace A129811.P6484616782041395359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129811.P6484616782041395359

namespace A129811

/-- `∩[A253970(n+1), A326422(n+1)]` -/
def P6484616782041395359.Spec : Prop :=
  ∀ n, (P6484616782041395359.a n : ℤ) = A129811 (n + 2)

end A129811

/-!
# A129812: Lesser of consecutive prime pairs whose last digits differ by 6.

The programs for A129812, the canonical program `A129812.P15062499110324960971` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129812 has offset 2).

The definition of A129812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129812.P10477749103860589401

`A045319(eq[7, A137727(n+1)])`
-/

namespace A129812.P10477749103860589401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129812.P10477749103860589401

namespace A129812

/-- `A045319(eq[7, A137727(n+1)])` -/
def P10477749103860589401.Spec : Prop :=
  ∀ n, P10477749103860589401.a n = A129812 (n + 2)

end A129812

/-! ## A129812.P1035282387126880404

`A045344(eq[7, A137727(n+1)])`
-/

namespace A129812.P1035282387126880404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129812.P1035282387126880404

namespace A129812

/-- `A045344(eq[7, A137727(n+1)])` -/
def P1035282387126880404.Spec : Prop :=
  ∀ n, P1035282387126880404.a n = A129812 (n + 2)

end A129812

/-! ## A129812.P7471379684748623367

`A065091(eq[7, A137727(n+1)])`
-/

namespace A129812.P7471379684748623367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129812.P7471379684748623367

namespace A129812

/-- `A065091(eq[7, A137727(n+1)])` -/
def P7471379684748623367.Spec : Prop :=
  ∀ n, P7471379684748623367.a n = A129812 (n + 2)

end A129812

/-! ## A129812.P5556630906101190267

`A000040(eq[7, A137727(n+1)]+1)`
-/

namespace A129812.P5556630906101190267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A129812.P5556630906101190267

namespace A129812

/-- `A000040(eq[7, A137727(n+1)]+1)` -/
def P5556630906101190267.Spec : Prop :=
  ∀ n, P5556630906101190267.a n = A129812 (n + 2)

end A129812

/-! ## A129812.P14754621835722406162

`A008578(eq[7, A137727(n+1)]+2)`
-/

namespace A129812.P14754621835722406162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A129812.P14754621835722406162

namespace A129812

/-- `A008578(eq[7, A137727(n+1)]+2)` -/
def P14754621835722406162.Spec : Prop :=
  ∀ n, P14754621835722406162.a n = A129812 (n + 2)

end A129812

/-! ## A129812.P7245443931904642853

`A093515(2*eq[7, A137727(n+1)])`
-/

namespace A129812.P7245443931904642853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129812.P7245443931904642853

namespace A129812

/-- `A093515(2*eq[7, A137727(n+1)])` -/
def P7245443931904642853.Spec : Prop :=
  ∀ n, P7245443931904642853.a n = A129812 (n + 2)

end A129812

/-! ## A129812.P15062499110324960971

`A065091(eq[7, (A000040(n+1)*A000040(n+2))%10])`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A129812

/-- `A065091(eq[7, (A000040(n+1)*A000040(n+2))%10])` -/
def P15062499110324960971.Spec : Prop :=
  ∀ n, P15062499110324960971.a n = A129812 (n + 2)

theorem P15062499110324960971.correct : P15062499110324960971.Spec := by
  intro n
  simp only [A129812, Nat.add_sub_cancel]

end A129812

/-!
# A129813: Lesser of consecutive prime pairs whose last digits differ by 8.

The programs for A129813, there is no canonical definition to state claims against.
-/

/-! ## A129813.P11418050292860352933

`p?[A260222(A253970(n+1))]`
-/

namespace A129813.P11418050292860352933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260222 (A253970 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129813.P11418050292860352933

/-! ## A129813.P9892286129349678676

`∩[A253970(n+1), A275068(n)]`
-/

namespace A129813.P9892286129349678676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275068 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129813.P9892286129349678676

/-! ## A129813.P6714224411748279263

`∩[A031363(n+1), A253970(n+1)]`
-/

namespace A129813.P6714224411748279263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129813.P6714224411748279263

/-! ## A129813.P10474937519918755959

`∩[A038872(n+1), A253970(n+1)]`
-/

namespace A129813.P10474937519918755959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129813.P10474937519918755959

/-! ## A129813.P15855255673097841662

`∩[A045468(n+1), A253970(n+1)]`
-/

namespace A129813.P15855255673097841662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129813.P15855255673097841662

/-!
# A129814: a(n) = Bernoulli(n) * (n+1)!.

The programs for A129814, there is no canonical definition to state claims against.
-/

/-! ## A129814.P13894045862846558900

`A048998(∑[n])`
-/

namespace A129814.P13894045862846558900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048998 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129814.P13894045862846558900

/-! ## A129814.P9024618276113721051

`A048999(∑[n]+n)`
-/

namespace A129814.P9024618276113721051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048999 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A129814.P9024618276113721051

/-! ## A129814.P8891923345313134951

`A033999(n)*A080779(∑[n])`
-/

namespace A129814.P8891923345313134951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A080779 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129814.P8891923345313134951

/-! ## A129814.P13384320718865778985

`A048998(A000217(n))^and(3, Δ[n²])`
-/

namespace A129814.P13384320718865778985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048998 (A000217 n).toNat : ℚ) ^ (Int.land 3 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℤ)

end

end A129814.P13384320718865778985

/-! ## A129814.P15712425021797395394

`A000142(n)*A050925(n)/A050932(n)`
-/

namespace A129814.P15712425021797395394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n * A050925 n : ℚ) / (A050932 n : ℚ)

end

end A129814.P15712425021797395394

/-!
# A129815: Number of reverse alternating fixed-point-free permutations on n letters.

The programs for A129815, there is no canonical definition to state claims against.
-/

/-! ## A129815.P15151578800382450796

`A162980(∑[∑[A014577(n)]])`
-/

namespace A129815.P15151578800382450796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162980 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A129815.P15151578800382450796

/-! ## A129815.P730814353650458416

`A162980(∑[∑[A304109(n+1)]])`
-/

namespace A129815.P730814353650458416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304109 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162980 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A129815.P730814353650458416

/-! ## A129815.P11270291096520857390

`A162980(∑[A074286(n+1)+1])`
-/

namespace A129815.P11270291096520857390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162980 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A129815.P11270291096520857390

/-! ## A129815.P15111180693052655257

`A162980(∑[∑[A192490(2*n+5)]])`
-/

namespace A129815.P15111180693052655257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192490 (2 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162980 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A129815.P15111180693052655257

/-! ## A129815.P10608013038790504472

`A162980(eq[A000007(n), A090030(2*n+3)])`
-/

namespace A129815.P10608013038790504472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090030 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162980 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A129815.P10608013038790504472

/-!
# A129816: Conjectured numbers n such that there do not exist two consecutive primes whose product + n is a square.

The programs for A129816, there is no canonical definition to state claims against.
-/

/-! ## A129816.P3115818905094167563

`comp[∪[A129783(n+1), ∑[n]²]]`
-/

namespace A129816.P3115818905094167563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129783 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f4 j) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A129816.P3115818905094167563

/-! ## A129816.P7900672287825442832

`eq[char[A129783(n+1)], A000007(n)]`
-/

namespace A129816.P7900672287825442832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129783 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A129816.P7900672287825442832

/-!
# A129817: Number of alternating fixed-point-free permutations on n letters.

The programs for A129817, there is no canonical definition to state claims against.
-/

/-! ## A129817.P17405345698492832175

`A162979(floor((n/2)²)+n)`
-/

namespace A129817.P17405345698492832175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162979 (⌊((n : ℚ) / 2) ^ 2⌋ + (n : ℤ)).toNat

end

end A129817.P17405345698492832175

/-! ## A129817.P16932737202722253822

`A025668(A007146(n+1)+2)`
-/

namespace A129817.P16932737202722253822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (A007146 (n + 1) + 2).toNat

end

end A129817.P16932737202722253822

/-! ## A129817.P16683679389191066610

`A325224(A005753(n+1))+1-n`
-/

namespace A129817.P16683679389191066610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325224 (A005753 (n + 1)).toNat + 1 - (n : ℤ)

end

end A129817.P16683679389191066610

/-! ## A129817.P8515224840238008967

`A054404(A188541(n)+A000111(n))`
-/

namespace A129817.P8515224840238008967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A188541 n + A000111 n).toNat

end

end A129817.P8515224840238008967

/-!
# A129818: Riordan array (1/(1+x), x/(1+x)^2), inverse array is A039599.

The programs for A129818, the canonical program `A129818.P1881241174790014130` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129818 has offset 0).

The definition of A129818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129818.P1881241174790014130

`A085478(n)*A097807(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A129818

/-- `A085478(n)*A097807(n)` -/
def P1881241174790014130.Spec : Prop :=
  ∀ n, P1881241174790014130.a n = A129818 n

theorem P1881241174790014130.correct : P1881241174790014130.Spec := by
  intro n
  simp only [A129818]

end A129818

/-! ## A129818.P13276986715665099966

`A054142(n)/A076756(n)*A085478(n)`
-/

namespace A129818.P13276986715665099966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054142 n : ℚ) / (A076756 n : ℚ) * (A085478 n : ℚ)

end

end A129818.P13276986715665099966

namespace A129818

/-- `A054142(n)/A076756(n)*A085478(n)` -/
def P13276986715665099966.Spec : Prop :=
  ∀ n, P13276986715665099966.a n = (A129818 n : ℚ)

end A129818

/-! ## A129818.P7846887929346783299

`A053122(n)/A078812(n)*A085478(n)`
-/

namespace A129818.P7846887929346783299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053122 n : ℚ) / (A078812 n : ℚ) * (A085478 n : ℚ)

end

end A129818.P7846887929346783299

namespace A129818

/-- `A053122(n)/A078812(n)*A085478(n)` -/
def P7846887929346783299.Spec : Prop :=
  ∀ n, P7846887929346783299.a n = (A129818 n : ℚ)

end A129818

/-! ## A129818.P10672371422814985050

`A085478(n)/A114164(n)*A123876(n)`
-/

namespace A129818.P10672371422814985050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085478 n : ℚ) / (A114164 n : ℚ) * (A123876 n : ℚ)

end

end A129818.P10672371422814985050

namespace A129818

/-- `A085478(n)/A114164(n)*A123876(n)` -/
def P10672371422814985050.Spec : Prop :=
  ∀ n, P10672371422814985050.a n = (A129818 n : ℚ)

end A129818

/-! ## A129818.P15352594634403844832

`A258993(n+2)/A109954(n)*A085478(n)`
-/

namespace A129818.P15352594634403844832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258993 (n + 2) : ℚ) / (A109954 n : ℚ) * (A085478 n : ℚ)

end

end A129818.P15352594634403844832

namespace A129818

/-- `A258993(n+2)/A109954(n)*A085478(n)` -/
def P15352594634403844832.Spec : Prop :=
  ∀ n, P15352594634403844832.a n = (A129818 n : ℚ)

end A129818

/-! ## A129818.P14071624076535778208

`A143858(n+1)/A109954(n)*A085478(n)`
-/

namespace A129818.P14071624076535778208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143858 (n + 1) : ℚ) / (A109954 n : ℚ) * (A085478 n : ℚ)

end

end A129818.P14071624076535778208

namespace A129818

/-- `A143858(n+1)/A109954(n)*A085478(n)` -/
def P14071624076535778208.Spec : Prop :=
  ∀ n, P14071624076535778208.a n = (A129818 n : ℚ)

end A129818

/-! ## A129818.P17965436593578059430

`A171822(n)/A076756(n)`
-/

namespace A129818.P17965436593578059430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171822 n : ℚ) / (A076756 n : ℚ)

end

end A129818.P17965436593578059430

namespace A129818

/-- `A171822(n)/A076756(n)` -/
def P17965436593578059430.Spec : Prop :=
  ∀ n, P17965436593578059430.a n = (A129818 n : ℚ)

end A129818

/-! ## A129818.P1355254725582512553

`A039599(n)/A114193(n)*A114192(n)`
-/

namespace A129818.P1355254725582512553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039599 n : ℚ) / (A114193 n : ℚ) * (A114192 n : ℚ)

end

end A129818.P1355254725582512553

namespace A129818

/-- `A039599(n)/A114193(n)*A114192(n)` -/
def P1355254725582512553.Spec : Prop :=
  ∀ n, P1355254725582512553.a n = (A129818 n : ℚ)

end A129818

/-! ## A129818.P9491941461925739432

`A092865(A061885(n))`
-/

namespace A129818.P9491941461925739432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092865 (A061885 n).toNat

end

end A129818.P9491941461925739432

namespace A129818

/-- `A092865(A061885(n))` -/
def P9491941461925739432.Spec : Prop :=
  ∀ n, P9491941461925739432.a n = A129818 n

end A129818

/-! ## A129818.P12858383425014203774

`A049310(A185868(n+1)-1)`
-/

namespace A129818.P12858383425014203774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (A185868 (n + 1) - 1).toNat

end

end A129818.P12858383425014203774

namespace A129818

/-- `A049310(A185868(n+1)-1)` -/
def P12858383425014203774.Spec : Prop :=
  ∀ n, P12858383425014203774.a n = A129818 n

end A129818

/-! ## A129818.P4402245581400273113

`A049310(lt[A133300(n+1), 1])`
-/

namespace A129818.P4402245581400273113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133300 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A129818.P4402245581400273113

namespace A129818

/-- `A049310(lt[A133300(n+1), 1])` -/
def P4402245581400273113.Spec : Prop :=
  ∀ n, P4402245581400273113.a n = A129818 n

end A129818

/-! ## A129818.P11635270120807054566

`A049310(A003056(n)²+2*n)`
-/

namespace A129818.P11635270120807054566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (A003056 n ^ 2 + (2 * n : ℤ)).toNat

end

end A129818.P11635270120807054566

namespace A129818

/-- `A049310(A003056(n)²+2*n)` -/
def P11635270120807054566.Spec : Prop :=
  ∀ n, P11635270120807054566.a n = A129818 n

end A129818

/-! ## A129818.P16897081896798191322

`A185331(A185869(n+1))`
-/

namespace A129818.P16897081896798191322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185331 (A185869 (n + 1)).toNat

end

end A129818.P16897081896798191322

namespace A129818

/-- `A185331(A185869(n+1))` -/
def P16897081896798191322.Spec : Prop :=
  ∀ n, P16897081896798191322.a n = A129818 n

end A129818

/-! ## A129818.P16813530084871053820

`A049310(eq[(n+1)*A049310(n+1), A162515(n)])`
-/

namespace A129818.P16813530084871053820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A049310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A129818.P16813530084871053820

namespace A129818

/-- `A049310(eq[(n+1)*A049310(n+1), A162515(n)])` -/
def P16813530084871053820.Spec : Prop :=
  ∀ n, P16813530084871053820.a n = A129818 n

end A129818

/-!
# A129819: Antidiagonal sums of triangular array T: T(j,k) = (k+1)/2 for odd k, T(j,k) = 0 for k = 0, T(j,k) = j+1-k/2 for even k > 0; 0 <= k <= j.

The programs for A129819, the canonical program `A129819.P3399235555489970762` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129819 has offset 0).

The definition of A129819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129819.P3399235555489970762

`∑[floor(n*gcd(2, n)/4)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A129819

/-- `∑[floor(n*gcd(2, n)/4)]` -/
def P3399235555489970762.Spec : Prop :=
  ∀ n, P3399235555489970762.a n = A129819 n

theorem P3399235555489970762.correct : P3399235555489970762.Spec := by
  intro n
  simp only [A129819]

end A129819

/-! ## A129819.P8188572743263587285

`∑[floor(n/(3-(-1)^n))]`
-/

namespace A129819.P8188572743263587285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (3 - (-1) ^ n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129819.P8188572743263587285

namespace A129819

/-- `∑[floor(n/(3-(-1)^n))]` -/
def P8188572743263587285.Spec : Prop :=
  ∀ n, P8188572743263587285.a n = A129819 n

end A129819

/-! ## A129819.P12734088936120489581

`floor((n/2)²)-floor(∑[1/2-a(n-1)]²)` with `a(0)=0`
-/

namespace A129819.P12734088936120489581
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  (1 : ℚ) / 2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋ - ⌊(∑ j ∈ Finset.range (n + 1), f1 j) ^ 2⌋

end

end A129819.P12734088936120489581

namespace A129819

/-- `floor((n/2)²)-floor(∑[1/2-a(n-1)]²)` -/
def P12734088936120489581.Spec : Prop :=
  ∀ n, P12734088936120489581.a n = A129819 n

end A129819

/-! ## A129819.P4913714163977748543

`round(A032438(n)/4)`
-/

namespace A129819.P4913714163977748543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A032438 n : ℚ) / 4)

end

end A129819.P4913714163977748543

namespace A129819

/-- `round(A032438(n)/4)` -/
def P4913714163977748543.Spec : Prop :=
  ∀ n, P4913714163977748543.a n = A129819 n

end A129819

/-! ## A129819.P12706031211271026829

`∑[A106466(n)]-(n+1)`
-/

namespace A129819.P12706031211271026829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A129819.P12706031211271026829

namespace A129819

/-- `∑[A106466(n)]-(n+1)` -/
def P12706031211271026829.Spec : Prop :=
  ∀ n, P12706031211271026829.a n = A129819 n

end A129819

/-! ## A129819.P7694941230513108107

`A124072(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A129819.P7694941230513108107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A124072 (n - 1) + a (n - 1)

end

end A129819.P7694941230513108107

namespace A129819

/-- `A124072(n-1)+a(n-1)` -/
def P7694941230513108107.Spec : Prop :=
  ∀ n, P7694941230513108107.a n = A129819 n

end A129819

/-! ## A129819.P6617000479362615089

`A282513(n)-(a(n-1)+n)` with `a(0)=0`
-/

namespace A129819.P6617000479362615089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A282513 n - (a (n - 1) + (n : ℤ))

end

end A129819.P6617000479362615089

namespace A129819

/-- `A282513(n)-(a(n-1)+n)` -/
def P6617000479362615089.Spec : Prop :=
  ∀ n, P6617000479362615089.a n = A129819 n

end A129819

/-! ## A129819.P3353828611071666019

`∑[A124072(n)]-A124072(n)`
-/

namespace A129819.P3353828611071666019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124072 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A124072 n

end

end A129819.P3353828611071666019

namespace A129819

/-- `∑[A124072(n)]-A124072(n)` -/
def P3353828611071666019.Spec : Prop :=
  ∀ n, P3353828611071666019.a n = A129819 n

end A129819

/-! ## A129819.P2086436148719879731

`A211520(n)+A059169(n+1)`
-/

namespace A129819.P2086436148719879731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211520 n + A059169 (n + 1)

end

end A129819.P2086436148719879731

namespace A129819

/-- `A211520(n)+A059169(n+1)` -/
def P2086436148719879731.Spec : Prop :=
  ∀ n, P2086436148719879731.a n = A129819 n

end A129819

/-! ## A129819.P1562294279775002137

`A296141(n+1)+A159915(n)`
-/

namespace A129819.P1562294279775002137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296141 (n + 1) + A159915 n

end

end A129819.P1562294279775002137

namespace A129819

/-- `A296141(n+1)+A159915(n)` -/
def P1562294279775002137.Spec : Prop :=
  ∀ n, P1562294279775002137.a n = A129819 n

end A129819

/-! ## A129819.P12788176290439582767

`(∑[A186421(n)]-A110654(n))/2`
-/

namespace A129819.P12788176290439582767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186421 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A110654 n : ℤ) : ℚ) / 2

end

end A129819.P12788176290439582767

namespace A129819

/-- `(∑[A186421(n)]-A110654(n))/2` -/
def P12788176290439582767.Spec : Prop :=
  ∀ n, P12788176290439582767.a n = (A129819 n : ℚ)

end A129819

/-! ## A129819.P739097530632236960

`A001399(A001651(n+1))-(n+1)`
-/

namespace A129819.P739097530632236960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A001651 (n + 1)).toNat - (n + 1 : ℤ)

end

end A129819.P739097530632236960

namespace A129819

/-- `A001399(A001651(n+1))-(n+1)` -/
def P739097530632236960.Spec : Prop :=
  ∀ n, P739097530632236960.a n = A129819 n

end A129819

/-! ## A129819.P6405176930093969208

`A002620(A004526(n))+A001971(n)`
-/

namespace A129819.P6405176930093969208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A004526 n).toNat + A001971 n

end

end A129819.P6405176930093969208

namespace A129819

/-- `A002620(A004526(n))+A001971(n)` -/
def P6405176930093969208.Spec : Prop :=
  ∀ n, P6405176930093969208.a n = A129819 n

end A129819

/-! ## A129819.P18180367666172365027

`A002620(n)-A002620(A065033(n))`
-/

namespace A129819.P18180367666172365027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n - A002620 (A065033 n).toNat

end

end A129819.P18180367666172365027

namespace A129819

/-- `A002620(n)-A002620(A065033(n))` -/
def P18180367666172365027.Spec : Prop :=
  ∀ n, P18180367666172365027.a n = A129819 n

end A129819

/-! ## A129819.P2488173900678530493

`A002620(n)-A002620(A110654(n))`
-/

namespace A129819.P2488173900678530493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n - A002620 (A110654 n).toNat

end

end A129819.P2488173900678530493

namespace A129819

/-- `A002620(n)-A002620(A110654(n))` -/
def P2488173900678530493.Spec : Prop :=
  ∀ n, P2488173900678530493.a n = A129819 n

end A129819

/-! ## A129819.P11755506067895873256

`A033638(n)-A033638(A065033(n))`
-/

namespace A129819.P11755506067895873256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n - A033638 (A065033 n).toNat

end

end A129819.P11755506067895873256

namespace A129819

/-- `A033638(n)-A033638(A065033(n))` -/
def P11755506067895873256.Spec : Prop :=
  ∀ n, P11755506067895873256.a n = A129819 n

end A129819

/-! ## A129819.P3463574040875168191

`A033638(n)-A033638(A110654(n))`
-/

namespace A129819.P3463574040875168191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n - A033638 (A110654 n).toNat

end

end A129819.P3463574040875168191

namespace A129819

/-- `A033638(n)-A033638(A110654(n))` -/
def P3463574040875168191.Spec : Prop :=
  ∀ n, P3463574040875168191.a n = A129819 n

end A129819

/-! ## A129819.P3985718679339134255

`A002620(n)-A002620(Δ[A002620(n)])`
-/

namespace A129819.P3985718679339134255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n - A002620 (f1 (n + 1) - f1 n).toNat

end

end A129819.P3985718679339134255

namespace A129819

/-- `A002620(n)-A002620(Δ[A002620(n)])` -/
def P3985718679339134255.Spec : Prop :=
  ∀ n, P3985718679339134255.a n = A129819 n

end A129819

/-! ## A129819.P12781765128902766326

`A033638(n)-A033638(Δ[A033638(n)])`
-/

namespace A129819.P12781765128902766326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n - A033638 (f1 (n + 1) - f1 n).toNat

end

end A129819.P12781765128902766326

namespace A129819

/-- `A033638(n)-A033638(Δ[A033638(n)])` -/
def P12781765128902766326.Spec : Prop :=
  ∀ n, P12781765128902766326.a n = A129819 n

end A129819

/-!
# A129820: List of pairs of consecutive nonprime odd numbers {m-1,m+1}.

The programs for A129820, there is no canonical definition to state claims against.
-/

/-! ## A129820.P11466603531892066003

`or(1, lt[4, A049711(n+3)])`
-/

namespace A129820.P11466603531892066003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A129820.P11466603531892066003

/-! ## A129820.P11013119725602859141

`or(1, lt[7, A065151(n+2)])`
-/

namespace A129820.P11013119725602859141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065151 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A129820.P11013119725602859141

/-! ## A129820.P17951146073348166643

`A061673(∑[log2(gcd(2, n))])-(-1)^n`
-/

namespace A129820.P17951146073348166643
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061673 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - (-1) ^ n

end

end A129820.P17951146073348166643

/-! ## A129820.P8926369843617487902

`A061673(floor(n/2)+1)-(-1)^n`
-/

namespace A129820.P8926369843617487902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061673 (⌊(n : ℚ) / 2⌋ + 1).toNat - (-1) ^ n

end

end A129820.P8926369843617487902

/-! ## A129820.P12034325070935587059

`A109613(lt[3, A064722(n+2)])`
-/

namespace A129820.P12034325070935587059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A129820.P12034325070935587059

/-! ## A129820.P11376534737469887840

`A109613(lt[4, A049711(n+3)])`
-/

namespace A129820.P11376534737469887840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A129820.P11376534737469887840

/-! ## A129820.P14972869455849571786

`A109613(lt[7, A065151(n+2)])`
-/

namespace A129820.P14972869455849571786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065151 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A129820.P14972869455849571786

/-! ## A129820.P18275539068498278819

`A269345(A008619(n))+A010673(n)`
-/

namespace A129820.P18275539068498278819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269345 (A008619 n).toNat + A010673 n

end

end A129820.P18275539068498278819

/-! ## A129820.P9213774896384643654

`A109613(lt[A110560(n), A078772(n+1)])`
-/

namespace A129820.P9213774896384643654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A129820.P9213774896384643654

/-! ## A129820.P8762498134782959329

`A109613(lt[A110560(n), A175078(n+1)])`
-/

namespace A129820.P8762498134782959329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A129820.P8762498134782959329

/-!
# A129821: Triangle read by rows: T(n, k) = (n-k)^n - n*k*(n-k) + k^n, with T(0, 0) = 1.

The programs for A129821, there is no canonical definition to state claims against.
-/

/-! ## A129821.P1655300857690183850

`A003987(n)^A103823(A351870(n))`
-/

namespace A129821.P1655300857690183850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003987 n : ℚ) ^ (A103823 (A351870 n).toNat : ℤ)

end

end A129821.P1655300857690183850

/-! ## A129821.P8042494697268988084

`(A280172(n+1)-1)^A103823(A351870(n))`
-/

namespace A129821.P8042494697268988084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280172 (n + 1) - 1 : ℚ) ^ (A103823 (A351870 n).toNat : ℤ)

end

end A129821.P8042494697268988084

/-! ## A129821.P12301056858859643938

`A059253(A163907(n))^A103823(A351870(n))`
-/

namespace A129821.P12301056858859643938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059253 (A163907 n).toNat : ℚ) ^ (A103823 (A351870 n).toNat : ℤ)

end

end A129821.P12301056858859643938

/-! ## A129821.P2805627954586843493

`A025581(A286108(n))^A103823(A351870(n))`
-/

namespace A129821.P2805627954586843493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 (A286108 n).toNat : ℚ) ^ (A103823 (A351870 n).toNat : ℤ)

end

end A129821.P2805627954586843493

/-! ## A129821.P2884242744856627469

`A049581(A286098(n))^A103823(A351870(n))`
-/

namespace A129821.P2884242744856627469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049581 (A286098 n).toNat : ℚ) ^ (A103823 (A351870 n).toNat : ℤ)

end

end A129821.P2884242744856627469

/-!
# A129822: Array read by rows: each row lists three consecutive nonprime odd numbers.

The programs for A129822, there is no canonical definition to state claims against.
-/

/-! ## A129822.P2276711026893288847

`eq[1, A125117(A007623(n))]`
-/

namespace A129822.P2276711026893288847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125117 (A007623 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A129822.P2276711026893288847

/-! ## A129822.P5171102391144983895

`lt[A230595(2*n+2), A125117(A007623(n))]`
-/

namespace A129822.P5171102391144983895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230595 (2 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125117 (A007623 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129822.P5171102391144983895

/-!
# A129824: a(n) = Product_{k=0..n} (1 + binomial(n,k)).

The programs for A129824, there is no canonical definition to state claims against.
-/

/-! ## A129824.P10815648037429085525

`2*A055612(n)`
-/

namespace A129824.P10815648037429085525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055612 n

end

end A129824.P10815648037429085525

/-! ## A129824.P8368285188500927241

`A000005(A096014(n+1))*A304902(n)`
-/

namespace A129824.P8368285188500927241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A096014 (n + 1)).toNat * A304902 n

end

end A129824.P8368285188500927241

/-! ## A129824.P5853365463057647819

`2*A020639(A004277(n))*A304902(n)`
-/

namespace A129824.P5853365463057647819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A020639 (A004277 n).toNat * A304902 n)

end

end A129824.P5853365463057647819

/-! ## A129824.P9424919342538243842

`A001222(A096014(n+1)²)*A304902(n)`
-/

namespace A129824.P9424919342538243842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A096014 (n + 1) ^ 2).toNat * A304902 n

end

end A129824.P9424919342538243842

/-!
# A129825: a(n) = n!*Bernoulli(n-1), n > 2; a(0)=0, a(1)=1, a(2)=1.

The programs for A129825, there is no canonical definition to state claims against.
-/

/-! ## A129825.P4644115665614154853

`A129724(n)-A080779(A000096(n))`
-/

namespace A129825.P4644115665614154853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129724 n - A080779 (A000096 n).toNat

end

end A129825.P4644115665614154853

/-! ## A129825.P12134352790473976227

`A129724(n)-A001332(n)/A168136(n)`
-/

namespace A129825.P12134352790473976227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129724 n : ℚ) - (A001332 n : ℚ) / (A168136 n : ℚ)

end

end A129825.P12134352790473976227

/-! ## A129825.P3656860368594710110

`A129724(n)-∏{d}[floor(2^(n-1)), A000005(#)]`
-/

namespace A129825.P3656860368594710110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129724 n - ∏ d ∈ Nat.divisors (f1 n).natAbs, A000005 d

end

end A129825.P3656860368594710110

/-! ## A129825.P10069486257175845377

`A080779(C(n, 2))%A035117(n+1)`
-/

namespace A129825.P10069486257175845377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080779 (Nat.choose n 2)) (A035117 (n + 1))

end

end A129825.P10069486257175845377

/-! ## A129825.P17910511703370044006

`A161739(∑[n]+1)`
-/

namespace A129825.P17910511703370044006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161739 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A129825.P17910511703370044006

/-!
# A129826: Transformed Bernoulli twin numbers.

The programs for A129826, there is no canonical definition to state claims against.
-/

/-! ## A129826.P2747902376840288873

`A140333(∑[n])`
-/

namespace A129826.P2747902376840288873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140333 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129826.P2747902376840288873

/-! ## A129826.P14038358836320701942

`A140333(A000217(n))+char[16]`
-/

namespace A129826.P14038358836320701942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140333 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A129826.P14038358836320701942

/-! ## A129826.P17882516123904872404

`A217657(n)+A140333(A000217(n))`
-/

namespace A129826.P17882516123904872404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 n + A140333 (A000217 n).toNat

end

end A129826.P17882516123904872404

/-! ## A129826.P15289714196394659604

`A051714(n)*A140333(A000217(n))`
-/

namespace A129826.P15289714196394659604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051714 n * A140333 (A000217 n).toNat

end

end A129826.P15289714196394659604

/-! ## A129826.P1602987212756523176

`A140333(A000217(n))%A065100(n)`
-/

namespace A129826.P1602987212756523176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140333 (A000217 n).toNat) (A065100 n)

end

end A129826.P1602987212756523176

/-!
# A129827: Numbers k such that Euler's totient phi(k) divided by 2 is a perfect square.

The programs for A129827, the canonical program `A129827.P12783245347972754053` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129827 has offset 1).

The definition of A129827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129827.P12783245347972754053

`eq[2, A007913(A000010(n+1))]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A129827

/-- `eq[2, A007913(A000010(n+1))]+1` -/
def P12783245347972754053.Spec : Prop :=
  ∀ n, (P12783245347972754053.a n : ℤ) = A129827 (n + 1)

theorem P12783245347972754053.correct : P12783245347972754053.Spec := by
  intro n
  simp only [A129827, Nat.add_sub_cancel]

end A129827

/-! ## A129827.P3792018288623903535

`eq[2, A000034(A193386(n+1))]+1`
-/

namespace A129827.P3792018288623903535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A193386 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A129827.P3792018288623903535

namespace A129827

/-- `eq[2, A000034(A193386(n+1))]+1` -/
def P3792018288623903535.Spec : Prop :=
  ∀ n, (P3792018288623903535.a n : ℤ) = A129827 (n + 1)

end A129827

/-! ## A129827.P16414819708241363699

`eq[A000010(n+1), A038722(A000010(n+1)+1)]+1`
-/

namespace A129827.P16414819708241363699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A129827.P16414819708241363699

namespace A129827

/-- `eq[A000010(n+1), A038722(A000010(n+1)+1)]+1` -/
def P16414819708241363699.Spec : Prop :=
  ∀ n, (P16414819708241363699.a n : ℤ) = A129827 (n + 1)

end A129827

/-! ## A129827.P16868642091198378957

`eq[2, A127013(A000010(n+2)+1)]+2`
-/

namespace A129827.P16868642091198378957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127013 (A000010 (n + 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A129827.P16868642091198378957

namespace A129827

/-- `eq[2, A127013(A000010(n+2)+1)]+2` -/
def P16868642091198378957.Spec : Prop :=
  ∀ n, (P16868642091198378957.a n : ℤ) = A129827 (n + 1)

end A129827

/-! ## A129827.P2775291144864328039

`eq[A000010(n+1), A056011(A000010(n+1)+1)]+1`
-/

namespace A129827.P2775291144864328039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A129827.P2775291144864328039

namespace A129827

/-- `eq[A000010(n+1), A056011(A000010(n+1)+1)]+1` -/
def P2775291144864328039.Spec : Prop :=
  ∀ n, (P2775291144864328039.a n : ℤ) = A129827 (n + 1)

end A129827

/-!
# A129828: Odd primes p such that p divides both Apery numbers A005259((p-3)/2) and A005259((p+1)/2).

The programs for A129828, there is no canonical definition to state claims against.
-/

/-! ## A129828.P3694285251329565379

`A179679(A002353(n+1))`
-/

namespace A129828.P3694285251329565379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179679 (A002353 (n + 1)).toNat

end

end A129828.P3694285251329565379

/-!
# A129831: Alternating sum of double factorials: n!! - (n-1)!! + (n-2)!! - ... 1!!.

The programs for A129831, the canonical program `A129831.P13980928109898495750` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129831 has offset 1).

The definition of A129831 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129831.P13980928109898495750

`A006882(n+1)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A129831

/-- `A006882(n+1)-a(n-1)` -/
def P13980928109898495750.Spec : Prop :=
  ∀ n, P13980928109898495750.a n = A129831 (n + 1)

theorem P13980928109898495750.correct : P13980928109898495750.Spec := by
  intro n
  simp only [A129831, Nat.add_sub_cancel]

end A129831

/-! ## A129831.P3487661520560032939

`abs(∑[(n+1)*a(n-2)])` with `a(0)=1, a(1)=-2`
-/

namespace A129831.P3487661520560032939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n f1 =>
  (n + 1 : ℤ) * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A129831.P3487661520560032939

namespace A129831

/-- `abs(∑[(n+1)*a(n-2)])` -/
def P3487661520560032939.Spec : Prop :=
  ∀ n, P3487661520560032939.a n = A129831 (n + 1)

end A129831

/-! ## A129831.P6631572316694402904

`Δ[n*a(n-2)]+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A129831.P6631572316694402904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  n * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + a (n - 2)

end

end A129831.P6631572316694402904

namespace A129831

/-- `Δ[n*a(n-2)]+a(n-2)` -/
def P6631572316694402904.Spec : Prop :=
  ∀ n, P6631572316694402904.a n = A129831 (n + 1)

end A129831

/-! ## A129831.P12562912778168704699

`∏[(n+1)/a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A129831.P12562912778168704699
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A129831.P12562912778168704699

namespace A129831

/-- `∏[(n+1)/a(n-1)]-a(n-1)` -/
def P12562912778168704699.Spec : Prop :=
  ∀ n, P12562912778168704699.a n = (A129831 (n + 1) : ℚ)

end A129831

/-! ## A129831.P2945276993838465477

`(-1)^n*∑[(n+1)*a(n-2)]` with `a(0)=1, a(1)=-2`
-/

namespace A129831.P2945276993838465477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n f1 =>
  (n + 1 : ℤ) * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129831.P2945276993838465477

namespace A129831

/-- `(-1)^n*∑[(n+1)*a(n-2)]` -/
def P2945276993838465477.Spec : Prop :=
  ∀ n, P2945276993838465477.a n = A129831 (n + 1)

end A129831

/-! ## A129831.P15530410584188806099

`(n+1)*(a(n-2)+a(n-3))-a(n-1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A129831.P15530410584188806099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (n + 1 : ℤ) * (a (n - 2) + a (n - 3)) - a (n - 1)

end

end A129831.P15530410584188806099

namespace A129831

/-- `(n+1)*(a(n-2)+a(n-3))-a(n-1)` -/
def P15530410584188806099.Spec : Prop :=
  ∀ n, P15530410584188806099.a n = A129831 (n + 1)

end A129831

/-! ## A129831.P16090944692169553918

`A216466(n+1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A129831.P16090944692169553918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A216466 (n + 1) - a (n - 1)

end

end A129831.P16090944692169553918

namespace A129831

/-- `A216466(n+1)-a(n-1)` -/
def P16090944692169553918.Spec : Prop :=
  ∀ n, P16090944692169553918.a n = A129831 (n + 1)

end A129831

/-! ## A129831.P7944368605337325861

`abs(∑[-(n+1)!/a(n-1)])` with `a(0)=1`
-/

namespace A129831.P7944368605337325861
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  -((Nat.factorial (n + 1) : ℚ) / f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A129831.P7944368605337325861

namespace A129831

/-- `abs(∑[-(n+1)!/a(n-1)])` -/
def P7944368605337325861.Spec : Prop :=
  ∀ n, P7944368605337325861.a n = (A129831 (n + 1) : ℚ)

end A129831

/-!
# A129832: Integers n such that the n-th cyclotomic polynomial Phi(n) is irreducible over GF(2).

The programs for A129832, there is no canonical definition to state claims against.
-/

/-! ## A129832.P9041376697218062887

`eq[1, A318622(n+1)]+1`
-/

namespace A129832.P9041376697218062887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318622 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A129832.P9041376697218062887

/-! ## A129832.P12457260694641302721

`lt[abs(1-n)*A318622(abs(1-n)+1), n]`
-/

namespace A129832.P12457260694641302721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| * A318622 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A129832.P12457260694641302721

/-! ## A129832.P8183559638352052562

`record[A038040(n+1)/A091248(n+1)]`
-/

namespace A129832.P8183559638352052562
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (A091248 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129832.P8183559638352052562

/-! ## A129832.P11784410622606462828

`record[A000027(n+1)/A318622(n+1)]`
-/

namespace A129832.P11784410622606462828
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A318622 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129832.P11784410622606462828

/-! ## A129832.P13801664304150652634

`record[A028310(n+1)/A318622(n+1)]`
-/

namespace A129832.P13801664304150652634
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (n + 1) : ℚ) / (A318622 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129832.P13801664304150652634

/-! ## A129832.P8209333192930921103

`record[A065883(n+1)/A318622(n+1)]`
-/

namespace A129832.P8209333192930921103
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065883 (n + 1) : ℚ) / (A318622 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129832.P8209333192930921103

/-! ## A129832.P15405136204372904320

`lt[A000010(A318622(n+1)+1), 2]+1`
-/

namespace A129832.P15405136204372904320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A318622 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A129832.P15405136204372904320

/-! ## A129832.P9246412636052521698

`eq[A000010(n+1), A007733(n+1)]+1`
-/

namespace A129832.P9246412636052521698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A129832.P9246412636052521698

/-! ## A129832.P9325616048668910335

`lt[A318622(n+1), A000040(gcd(n, n+1))]+1`
-/

namespace A129832.P9325616048668910335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.gcd n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A129832.P9325616048668910335

/-! ## A129832.P11030770520334866559

`eq[1, A000010(n+1)/A054703((n+1)/and(n+1, -(n+1)))]+1`
-/

namespace A129832.P11030770520334866559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A054703 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1

end

end A129832.P11030770520334866559

/-!
# A129833: a(n) = Sum_{k = 0..n } binomial(n + 1, k + 1)*binomial(n, k)*k!.

The programs for A129833, there is no canonical definition to state claims against.
-/

/-! ## A129833.P7251855098475606513

`A097662(n+1)/(n+1)`
-/

namespace A129833.P7251855098475606513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097662 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A129833.P7251855098475606513

/-! ## A129833.P14336649220745723286

`(A002720(n+1)-1)/(n+1)`
-/

namespace A129833.P14336649220745723286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002720 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

end

end A129833.P14336649220745723286

/-! ## A129833.P17461620859404260402

`(A176120(∑[n+2])-1)/(n+1)`
-/

namespace A129833.P17461620859404260402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176120 (∑ j ∈ Finset.range (n + 1), f1 j) - 1 : ℚ) / (n + 1 : ℚ)

end

end A129833.P17461620859404260402

/-! ## A129833.P12600847532027425677

`(A056953(2*(n+1))-1)/(n+1)`
-/

namespace A129833.P12600847532027425677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056953 (2 * (n + 1)) - 1 : ℚ) / (n + 1 : ℚ)

end

end A129833.P12600847532027425677

/-! ## A129833.P17415470040720261711

`floor(A176120(∑[n+2])/A254667(n+1))`
-/

namespace A129833.P17415470040720261711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A176120 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A254667 (n + 1) : ℚ)⌋

end

end A129833.P17415470040720261711

/-!
# A129834: (k-1)/2 where k runs over odd terms of A001372.

The programs for A129834, there is no canonical definition to state claims against.
-/

/-! ## A129834.P16896830622633833247

`A241760(∑[p?[A232697(n)]])`
-/

namespace A129834.P16896830622633833247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241760 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A129834.P16896830622633833247

/-! ## A129834.P13086767698959888270

`A085859(A026977(n+1)+10)`
-/

namespace A129834.P13086767698959888270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085859 (A026977 (n + 1) + 10).toNat

end

end A129834.P13086767698959888270

/-! ## A129834.P13148632974605040527

`A076197(n+1)%A055034(A076318(n+1))`
-/

namespace A129834.P13148632974605040527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076197 (n + 1)) (A055034 (A076318 (n + 1)).toNat)

end

end A129834.P13148632974605040527

/-!
# A129835: A computation-universal sequence of natural numbers (with zero).

The programs for A129835, there is no canonical definition to state claims against.
-/

/-! ## A129835.P10681347699853310497

`n%A106501(A250554(A008621(n)))`
-/

namespace A129835.P10681347699853310497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A106501 (A250554 (A008621 n).toNat).toNat)

end

end A129835.P10681347699853310497

/-! ## A129835.P3434386805126705517

`lcm(A008683(A073817(n)), A160377(n+1))`
-/

namespace A129835.P3434386805126705517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A073817 n).toNat) (A160377 (n + 1))

end

end A129835.P3434386805126705517

/-! ## A129835.P18030658151486693055

`A001222(A000079(n))%A070875(A002265(n))`
-/

namespace A129835.P18030658151486693055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A000079 n).toNat) (A070875 (A002265 n).toNat)

end

end A129835.P18030658151486693055

/-! ## A129835.P1722395934365577624

`n%A130253(A024631(n))`
-/

namespace A129835.P1722395934365577624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A130253 (A024631 n).toNat)

end

end A129835.P1722395934365577624

/-!
# A129838: Number of up/down (or down/up) compositions of n into distinct parts.

The programs for A129838, there is no canonical definition to state claims against.
-/

/-! ## A129838.P1295745797869936133

`(A349054(n)+1)/2`
-/

namespace A129838.P1295745797869936133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349054 n + 1 : ℚ) / 2

end

end A129838.P1295745797869936133

/-! ## A129838.P80644992566507630

`ceil(A349054(n)/2)`
-/

namespace A129838.P80644992566507630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A349054 n : ℚ) / 2⌉

end

end A129838.P80644992566507630

/-! ## A129838.P17232043160561164673

`A014682(A349054(n)+1)`
-/

namespace A129838.P17232043160561164673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A349054 n + 1).toNat

end

end A129838.P17232043160561164673

/-! ## A129838.P11271179772323915636

`A090331(A349054(n)+1)`
-/

namespace A129838.P11271179772323915636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090331 (A349054 n + 1).toNat

end

end A129838.P11271179772323915636

/-!
# A129839: a(n) = Stirling_2(n,3)^2.

The programs for A129839, the canonical program `A129839.P7754594862249456300` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129839 has offset 0).

The definition of A129839 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129839.P7754594862249456300

`floor(((3^n+3*(1-2^n))/6)²)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A129839

/-- `floor(((3^n+3*(1-2^n))/6)²)` -/
def P7754594862249456300.Spec : Prop :=
  ∀ n, P7754594862249456300.a n = A129839 n

theorem P7754594862249456300.correct : P7754594862249456300.Spec := by
  intro n
  simp only [A129839]

end A129839

/-! ## A129839.P5389408264712193573

`floor(xor(1, 3^n+3*(1-2^n))/6)^2`
-/

namespace A129839.P5389408264712193573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.xor 1 ((3 ^ n : ℤ) + 3 * (1 - (2 ^ n : ℤ))) : ℚ) / 6⌋ ^ 2

end

end A129839.P5389408264712193573

namespace A129839

/-- `floor(xor(1, 3^n+3*(1-2^n))/6)^2` -/
def P5389408264712193573.Spec : Prop :=
  ∀ n, P5389408264712193573.a n = A129839 n

end A129839

/-! ## A129839.P8524491313303352864

`(ceil(∑[3^(n-2)])-round(2^(n-1)-cos(2)))^2`
-/

namespace A129839.P8524491313303352864
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ - SequenceMachineLib.roundAway (((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.cos (2 : ℝ))) ^ 2

end

end A129839.P8524491313303352864

namespace A129839

/-- `(ceil(∑[3^(n-2)])-round(2^(n-1)-cos(2)))^2` -/
def P8524491313303352864.Spec : Prop :=
  ∀ n, P8524491313303352864.a n = A129839 n

end A129839

/-! ## A129839.P18095766636069232899

`((ceil(∑[3^(n-2)])-ceil(2^(n-1)))%(2^n-1+(2^n+3)*2^(n-1)-3^n))²`
-/

namespace A129839.P18095766636069232899
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉) (SequenceMachineLib.roundAway (((2 ^ n : ℤ) - 1 : ℚ) + ((2 ^ n + 3 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (3 ^ n : ℚ)))) ^ 2

end

end A129839.P18095766636069232899

namespace A129839

/-- `((ceil(∑[3^(n-2)])-ceil(2^(n-1)))%(2^n-1+(2^n+3)*2^(n-1)-3^n))²` -/
def P18095766636069232899.Spec : Prop :=
  ∀ n, P18095766636069232899.a n = A129839 n

end A129839

/-! ## A129839.P9351151245251702277

`A000392(n)²`
-/

namespace A129839.P9351151245251702277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 n ^ 2

end

end A129839.P9351151245251702277

namespace A129839

/-- `A000392(n)²` -/
def P9351151245251702277.Spec : Prop :=
  ∀ n, P9351151245251702277.a n = A129839 n

end A129839

/-! ## A129839.P9896104193805495101

`(A094033(n)/3)²`
-/

namespace A129839.P9896104193805495101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A094033 n : ℚ) / 3) ^ 2

end

end A129839.P9896104193805495101

namespace A129839

/-- `(A094033(n)/3)²` -/
def P9896104193805495101.Spec : Prop :=
  ∀ n, P9896104193805495101.a n = (A129839 n : ℚ)

end A129839

/-! ## A129839.P10200086770582777609

`∑{d}[n, A056279(#)]²`
-/

namespace A129839.P10200086770582777609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A056279 d) ^ 2

end

end A129839.P10200086770582777609

namespace A129839

/-- `∑{d}[n, A056279(#)]²` -/
def P10200086770582777609.Spec : Prop :=
  ∀ n, P10200086770582777609.a n = A129839 n

end A129839

/-! ## A129839.P16051143736189735523

`∑[A001047(A289207(n))]²`
-/

namespace A129839.P16051143736189735523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A129839.P16051143736189735523

namespace A129839

/-- `∑[A001047(A289207(n))]²` -/
def P16051143736189735523.Spec : Prop :=
  ∀ n, P16051143736189735523.a n = A129839 n

end A129839

/-! ## A129839.P16624508642599464193

`(A007051(n)-A085281(n))²`
-/

namespace A129839.P16624508642599464193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007051 n - A085281 n) ^ 2

end

end A129839.P16624508642599464193

namespace A129839

/-- `(A007051(n)-A085281(n))²` -/
def P16624508642599464193.Spec : Prop :=
  ∀ n, P16624508642599464193.a n = A129839 n

end A129839

/-! ## A129839.P11121246765603194370

`(A011782(n)-A124302(n))²`
-/

namespace A129839.P11121246765603194370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011782 n - A124302 n) ^ 2

end

end A129839.P11121246765603194370

namespace A129839

/-- `(A011782(n)-A124302(n))²` -/
def P11121246765603194370.Spec : Prop :=
  ∀ n, P11121246765603194370.a n = A129839 n

end A129839

/-! ## A129839.P16519281717948605255

`(A060816(n)-A083313(n))²`
-/

namespace A129839.P16519281717948605255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060816 n - A083313 n) ^ 2

end

end A129839.P16519281717948605255

namespace A129839

/-- `(A060816(n)-A083313(n))²` -/
def P16519281717948605255.Spec : Prop :=
  ∀ n, P16519281717948605255.a n = A129839 n

end A129839

/-! ## A129839.P9000248666844326433

`∑{d}[n, A000392(n)*A056279(#)]`
-/

namespace A129839.P9000248666844326433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000392 n * A056279 d

end

end A129839.P9000248666844326433

namespace A129839

/-- `∑{d}[n, A000392(n)*A056279(#)]` -/
def P9000248666844326433.Spec : Prop :=
  ∀ n, P9000248666844326433.a n = A129839 n

end A129839

/-! ## A129839.P16924302063697504384

`(A053156(n+1)-A053581(n))²`
-/

namespace A129839.P16924302063697504384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053156 (n + 1) - A053581 n) ^ 2

end

end A129839.P16924302063697504384

namespace A129839

/-- `(A053156(n+1)-A053581(n))²` -/
def P16924302063697504384.Spec : Prop :=
  ∀ n, P16924302063697504384.a n = A129839 n

end A129839

/-! ## A129839.P13968177612384000023

`((A000079(n)-A094388(n))/2)²`
-/

namespace A129839.P13968177612384000023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000079 n - A094388 n : ℚ) / 2) ^ 2

end

end A129839.P13968177612384000023

namespace A129839

/-- `((A000079(n)-A094388(n))/2)²` -/
def P13968177612384000023.Spec : Prop :=
  ∀ n, P13968177612384000023.a n = (A129839 n : ℚ)

end A129839

/-! ## A129839.P13002094175102300458

`A000392(round(acot(n)+n))*A000392(n)`
-/

namespace A129839.P13002094175102300458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat * A000392 n

end

end A129839.P13002094175102300458

namespace A129839

/-- `A000392(round(acot(n)+n))*A000392(n)` -/
def P13002094175102300458.Spec : Prop :=
  ∀ n, P13002094175102300458.a n = A129839 n

end A129839

/-! ## A129839.P12486964041870437185

`A000392(n)*A000392(A028310(n))`
-/

namespace A129839.P12486964041870437185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 n * A000392 (A028310 n).toNat

end

end A129839.P12486964041870437185

namespace A129839

/-- `A000392(n)*A000392(A028310(n))` -/
def P12486964041870437185.Spec : Prop :=
  ∀ n, P12486964041870437185.a n = A129839 n

end A129839

/-! ## A129839.P1718726605030799634

`A000392(A004525(2*n))*A000392(n)`
-/

namespace A129839.P1718726605030799634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (A004525 (2 * n)).toNat * A000392 n

end

end A129839.P1718726605030799634

namespace A129839

/-- `A000392(A004525(2*n))*A000392(n)` -/
def P1718726605030799634.Spec : Prop :=
  ∀ n, P1718726605030799634.a n = A129839 n

end A129839

/-! ## A129839.P5587576698332372736

`A000392(n)*A057427(n)*A000392(n)`
-/

namespace A129839.P5587576698332372736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 n * A057427 n * A000392 n

end

end A129839.P5587576698332372736

namespace A129839

/-- `A000392(n)*A057427(n)*A000392(n)` -/
def P5587576698332372736.Spec : Prop :=
  ∀ n, P5587576698332372736.a n = A129839 n

end A129839

/-!
# A129842: Primes p such that (p^2 - 3p - 2)/2 is prime.

The programs for A129842, there is no canonical definition to state claims against.
-/

/-! ## A129842.P12395691914600031729

`record[A006530(A187677(n+1)+1)]`
-/

namespace A129842.P12395691914600031729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A187677 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129842.P12395691914600031729

/-! ## A129842.P4018559495014397209

`p?[(n+4)*A001222(A034856(n+1))]`
-/

namespace A129842.P4018559495014397209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A001222 (A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129842.P4018559495014397209

/-! ## A129842.P9300914142719741100

`p?[(n+4)*A001222(A055998(n)+1)]`
-/

namespace A129842.P9300914142719741100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A001222 (A055998 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129842.P9300914142719741100

/-! ## A129842.P438337438666202023

`p?[(n+3)*A010051(A055998(n)+1)+1]`
-/

namespace A129842.P438337438666202023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A010051 (A055998 n + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129842.P438337438666202023

/-! ## A129842.P5625920025836238345

`record[A006530(record[A006530((2*n+3)*(n+4)+1)]+1)]`
-/

namespace A129842.P5625920025836238345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((2 * n + 3) * (n + 4) + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129842.P5625920025836238345

/-!
# A129843: a(n) = number of positive integers that are <= n and are coprime to n!! (n!! = A006882(n)).

The programs for A129843, there is no canonical definition to state claims against.
-/

/-! ## A129843.P18365276546313007905

`A001221(A082500(n+2)*A181804(n+1))`
-/

namespace A129843.P18365276546313007905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A082500 (n + 2) * A181804 (n + 1)).toNat

end

end A129843.P18365276546313007905

/-! ## A129843.P2908099911643430557

`A001221(lcm(A082500(n+2), A181804(n+1)))`
-/

namespace A129843.P2908099911643430557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A082500 (n + 2)) (A181804 (n + 1)))

end

end A129843.P2908099911643430557

/-! ## A129843.P4680927255121489820

`A254315(xor(A033429(n), A254344(n)))`
-/

namespace A129843.P4680927255121489820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254315 (Int.xor (A033429 n) (A254344 n)).toNat

end

end A129843.P4680927255121489820

/-! ## A129843.P5362458543392999481

`A055642(A354838(n+1)-A333224(n))`
-/

namespace A129843.P5362458543392999481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A354838 (n + 1) - A333224 n).toNat

end

end A129843.P5362458543392999481

/-! ## A129843.P13973009318076589096

`A055642(A354838(n+1)-A293810(n+1))`
-/

namespace A129843.P13973009318076589096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A354838 (n + 1) - A293810 (n + 1)).toNat

end

end A129843.P13973009318076589096

/-!
# A129845: Numbers n such that n and 2n share at least one digit.

The programs for A129845, there is no canonical definition to state claims against.
-/

/-! ## A129845.P15690745642569843099

`eq[char[A038365(n+1)], A000007(n)]`
-/

namespace A129845.P15690745642569843099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038365 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A129845.P15690745642569843099

/-! ## A129845.P12210130520809792812

`eq[char[A038365(n+1)], A000038(n)]`
-/

namespace A129845.P12210130520809792812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038365 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A129845.P12210130520809792812

/-! ## A129845.P17053451833111975618

`eq[char[A038365(n+1)], A115753(n+1)]`
-/

namespace A129845.P17053451833111975618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038365 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115753 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A129845.P17053451833111975618

/-! ## A129845.P17308491487469770756

`eq[char[A038365(n+1)], A285476(n)]`
-/

namespace A129845.P17308491487469770756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038365 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A129845.P17308491487469770756

/-! ## A129845.P3492887920987236858

`eq[char[A038365(n+1)], A084099(2*n)]`
-/

namespace A129845.P3492887920987236858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038365 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A129845.P3492887920987236858

/-!
# A129846: Numbers k such that k and 3*k share at least one digit.

The programs for A129846, there is no canonical definition to state claims against.
-/

/-! ## A129846.P17141165391358630935

`comp[A140467(n+1)-1]+1`
-/

namespace A129846.P17141165391358630935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140467 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A129846.P17141165391358630935

/-!
# A129847: a(n) = number of set partitions of {1, 2, ..., n} whose blocks consist only of elements that differ by two or less (that is, have only the forms {i}, {i,i+1}, {i,i+2}, or {i,i+1,i+2}).

The programs for A129847, the canonical program `A129847.P17722728975946342825` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129847 has offset 0).

The definition of A129847 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129847.P17722728975946342825

`a(n-1)+a(n-2)+2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A129847

/-- `a(n-1)+a(n-2)+2*a(n-3)+a(n-4)` -/
def P17722728975946342825.Spec : Prop :=
  ∀ n, (P17722728975946342825.a n : ℤ) = A129847 n

theorem P17722728975946342825.correct : P17722728975946342825.Spec := by
  intro n
  simp only [A129847]

end A129847

/-! ## A129847.P14419370717235465111

`Δ[A309462(n+3)]-A309462(n+3)`
-/

namespace A129847.P14419370717235465111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309462 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A309462 (n + 3)

end

end A129847.P14419370717235465111

namespace A129847

/-- `Δ[A309462(n+3)]-A309462(n+3)` -/
def P14419370717235465111.Spec : Prop :=
  ∀ n, P14419370717235465111.a n = A129847 n

end A129847

/-! ## A129847.P2804678324789073974

`Δ[Δ[A309462(n+2)]]%A309462(n+2)`
-/

namespace A129847.P2804678324789073974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309462 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A309462 (n + 2))

end

end A129847.P2804678324789073974

namespace A129847

/-- `Δ[Δ[A309462(n+2)]]%A309462(n+2)` -/
def P2804678324789073974.Spec : Prop :=
  ∀ n, P2804678324789073974.a n = A129847 n

end A129847

/-! ## A129847.P15632562765540570358

`Δ[A141073(2*n+5)]-A141073(2*n+5)`
-/

namespace A129847.P15632562765540570358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141073 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A141073 (2 * n + 5)

end

end A129847.P15632562765540570358

namespace A129847

/-- `Δ[A141073(2*n+5)]-A141073(2*n+5)` -/
def P15632562765540570358.Spec : Prop :=
  ∀ n, P15632562765540570358.a n = A129847 n

end A129847

/-!
# A129848: Numbers n such that n and 4n share at least one digit.

The programs for A129848, there is no canonical definition to state claims against.
-/

/-! ## A129848.P11023416908378592236

`record[A266146(2*(n+1))+A249905(n)]`
-/

namespace A129848.P11023416908378592236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266146 (2 * (n + 1)) + A249905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129848.P11023416908378592236

/-! ## A129848.P3185375658830341175

`lt[A300750(2*n+5), A300748(A300726(n+2))]`
-/

namespace A129848.P3185375658830341175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300750 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300748 (A300726 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129848.P3185375658830341175

/-! ## A129848.P3635149780512393741

`lt[A204922(n+5), A002260(A000041(n))]`
-/

namespace A129848.P3635149780512393741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A000041 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129848.P3635149780512393741

/-!
# A129850: Slowest strictly increasing sequence such that sum of three consecutive terms shares at least one digit with one of the summands.

The programs for A129850, there is no canonical definition to state claims against.
-/

/-! ## A129850.P14154131069669850587

`comp[A129948(n+1)-1]+1`
-/

namespace A129850.P14154131069669850587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129948 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A129850.P14154131069669850587

/-! ## A129850.P5431524341584832234

`comp[A063435(n)*A129948(n+1)]`
-/

namespace A129850.P5431524341584832234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 n * A129948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A129850.P5431524341584832234

/-! ## A129850.P6451108362274325932

`comp[lcm(A063435(n+1), A129948(n+1))]`
-/

namespace A129850.P6451108362274325932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A063435 (n + 1)) (A129948 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A129850.P6451108362274325932

/-! ## A129850.P192854228701001087

`comp[∪[A129948(n+1), A129974(n+1)]]`
-/

namespace A129850.P192854228701001087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129948 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129974 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A129850.P192854228701001087

/-! ## A129850.P4176201059908733484

`comp[∪[A129948(n+1), A129991(n+1)]]`
-/

namespace A129850.P4176201059908733484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129948 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129991 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A129850.P4176201059908733484

/-! ## A129850.P2719020399739225780

`comp[∪[A129948(n+1), A129992(n+1)]]`
-/

namespace A129850.P2719020399739225780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129948 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129992 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A129850.P2719020399739225780

/-!
# A129852: Nondescending wiggly sums: number of sums adding to n in which terms alternately do not decrease and do not increase.

The programs for A129852, there is no canonical definition to state claims against.
-/

/-! ## A129852.P4880936715849623359

`A194287(A293346(n))`
-/

namespace A129852.P4880936715849623359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194287 (A293346 n).toNat

end

end A129852.P4880936715849623359

/-! ## A129852.P17409196499277881481

`A125005(n²+4)+A005169(n+1)`
-/

namespace A129852.P17409196499277881481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (n ^ 2 + 4) + A005169 (n + 1)

end

end A129852.P17409196499277881481

/-! ## A129852.P293517854979551117

`A025469(A119365(n))+A005169(n+1)`
-/

namespace A129852.P293517854979551117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (A119365 n).toNat + A005169 (n + 1)

end

end A129852.P293517854979551117

/-! ## A129852.P12761825890515882803

`A005169(n+1)+A004197(A181153(n))`
-/

namespace A129852.P12761825890515882803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005169 (n + 1) + A004197 (A181153 n).toNat

end

end A129852.P12761825890515882803

/-! ## A129852.P13681216529565457172

`A090750(A227038(n))+A005169(n+1)`
-/

namespace A129852.P13681216529565457172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090750 (A227038 n).toNat + A005169 (n + 1)

end

end A129852.P13681216529565457172

/-!
# A129853: Nonascending wiggly sums: number of sums adding to n in which terms alternately do not increase and do not decrease.

The programs for A129853, there is no canonical definition to state claims against.
-/

/-! ## A129853.P12249697267771824667

`A100196(A319765(n))`
-/

namespace A129853.P12249697267771824667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A319765 n).toNat

end

end A129853.P12249697267771824667

/-! ## A129853.P9165418334968953010

`A245710(A320797(n))+A000045(n+1)`
-/

namespace A129853.P9165418334968953010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245710 (A320797 n).toNat + A000045 (n + 1)

end

end A129853.P9165418334968953010

/-! ## A129853.P14248127496422698089

`A316345(A233256(n+1))+A079960(n)`
-/

namespace A129853.P14248127496422698089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316345 (A233256 (n + 1)).toNat + A079960 n

end

end A129853.P14248127496422698089

/-! ## A129853.P11983050497535968319

`A115180(A191388(n))`
-/

namespace A129853.P11983050497535968319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115180 (A191388 n).toNat

end

end A129853.P11983050497535968319

/-! ## A129853.P5929561644722439625

`A115180(A191794(n))`
-/

namespace A129853.P5929561644722439625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115180 (A191794 n).toNat

end

end A129853.P5929561644722439625

/-!
# A129854: Decimal Gray code ordering of the semiprimes.

The programs for A129854, the canonical program `A129854.P8077324237429274704` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129854 has offset 0).

The definition of A129854 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A129854.P8077324237429274704

`A001358(1+A003188(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A129854

/-- `A001358(1+A003188(n))` -/
def P8077324237429274704.Spec : Prop :=
  ∀ n, P8077324237429274704.a n = A129854 n

theorem P8077324237429274704.correct : P8077324237429274704.Spec := by
  intro n
  simp only [A129854]

end A129854

/-! ## A129854.P117928754236888633

`A001358(xor(n, floor(n/2))+1)`
-/

namespace A129854.P117928754236888633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + 1).toNat

end

end A129854.P117928754236888633

namespace A129854

/-- `A001358(xor(n, floor(n/2))+1)` -/
def P117928754236888633.Spec : Prop :=
  ∀ n, P117928754236888633.a n = A129854 n

end A129854

/-! ## A129854.P4848920317843635536

`A176540(xor(n, floor(n/2))+2)`
-/

namespace A129854.P4848920317843635536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + 2).toNat

end

end A129854.P4848920317843635536

namespace A129854

/-- `A176540(xor(n, floor(n/2))+2)` -/
def P4848920317843635536.Spec : Prop :=
  ∀ n, P4848920317843635536.a n = A129854 n

end A129854

/-! ## A129854.P15523498904121486243

`sqrt(A074985(xor(n, floor(n/2))+1))`
-/

namespace A129854.P15523498904121486243
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074985 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + 1).toNat : ℝ)

end

end A129854.P15523498904121486243

namespace A129854

/-- `sqrt(A074985(xor(n, floor(n/2))+1))` -/
def P15523498904121486243.Spec : Prop :=
  ∀ n, P15523498904121486243.a n = (A129854 n : ℝ)

end A129854

/-! ## A129854.P13675930731930338000

`A186621(xor(n, floor(n/2))+1)+1`
-/

namespace A129854.P13675930731930338000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + 1).toNat + 1

end

end A129854.P13675930731930338000

namespace A129854

/-- `A186621(xor(n, floor(n/2))+1)+1` -/
def P13675930731930338000.Spec : Prop :=
  ∀ n, P13675930731930338000.a n = A129854 n

end A129854

/-!
# A129855: A symmetrical triangle of coefficients based on A000217: a(n) = Binomial[n + 2, 2]; t(n,m)=a(n - m + 1)*a(m + 1).

The programs for A129855, there is no canonical definition to state claims against.
-/

/-! ## A129855.P15076268979260565089

`A098358((n-comp[∑[n]])²-n)`
-/

namespace A129855.P15076268979260565089
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098358 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (n : ℤ)).toNat

end

end A129855.P15076268979260565089

/-! ## A129855.P1868651157114965856

`A113582(lt[1, A047996(n)]+1)-1`
-/

namespace A129855.P1868651157114965856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) - 1

end

end A129855.P1868651157114965856

/-! ## A129855.P13935088319870022668

`A113582(lt[3, A002262(n+2)]+1)-1`
-/

namespace A129855.P13935088319870022668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) - 1

end

end A129855.P13935088319870022668

/-! ## A129855.P4438928899227274560

`9/A003991(n+1)*A185904(n+1)`
-/

namespace A129855.P4438928899227274560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 / (A003991 (n + 1) : ℚ) * (A185904 (n + 1) : ℚ)

end

end A129855.P4438928899227274560

/-! ## A129855.P13808628637191511720

`A113582(lt[n+2, A001263(n+1)]+1)-1`
-/

namespace A129855.P13808628637191511720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) - 1

end

end A129855.P13808628637191511720

/-! ## A129855.P11085516044930474508

`A268759(lt[A075795(n+1), A268759(n)])`
-/

namespace A129855.P11085516044930474508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268759 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A129855.P11085516044930474508

/-! ## A129855.P5323402820894033390

`A268759(lt[A134464(n+1), A309559(n)])`
-/

namespace A129855.P5323402820894033390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268759 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A129855.P5323402820894033390

/-! ## A129855.P18229719245310980675

`A025747(A002260(n+1))*A025747(A004736(n+1))`
-/

namespace A129855.P18229719245310980675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025747 (A002260 (n + 1)).toNat * A025747 (A004736 (n + 1)).toNat

end

end A129855.P18229719245310980675

/-! ## A129855.P14240420952905470123

`∑{d}[6*A036561(n), A000005(#)]`
-/

namespace A129855.P14240420952905470123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000005 d

end

end A129855.P14240420952905470123

/-!
# A129856: Primes that are one less than the difference between consecutive primes.

The programs for A129856, the canonical program `A129856.P3920010008458318143` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129856 has offset 1).

The definition of A129856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129856.P3920010008458318143

`p?[A001223(n+1)-1]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A129856

/-- `p?[A001223(n+1)-1]` -/
def P3920010008458318143.Spec : Prop :=
  ∀ n, P3920010008458318143.a n = A129856 (n + 1)

theorem P3920010008458318143.correct : P3920010008458318143.Spec := by
  intro n
  simp only [A129856, Nat.add_sub_cancel]

end A129856

/-! ## A129856.P12977472016556735346

`p?[A143051(A001223(n+1))]`
-/

namespace A129856.P12977472016556735346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (A001223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129856.P12977472016556735346

namespace A129856

/-- `p?[A143051(A001223(n+1))]` -/
def P12977472016556735346.Spec : Prop :=
  ∀ n, P12977472016556735346.a n = A129856 (n + 1)

end A129856

/-! ## A129856.P15858435499991676948

`p?[A014681(A001223(n+2))]`
-/

namespace A129856.P15858435499991676948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A001223 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129856.P15858435499991676948

namespace A129856

/-- `p?[A014681(A001223(n+2))]` -/
def P15858435499991676948.Spec : Prop :=
  ∀ n, P15858435499991676948.a n = A129856 (n + 1)

end A129856

/-! ## A129856.P5156686117941271356

`p?[A136800(n+1)]`
-/

namespace A129856.P5156686117941271356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129856.P5156686117941271356

namespace A129856

/-- `p?[A136800(n+1)]` -/
def P5156686117941271356.Spec : Prop :=
  ∀ n, P5156686117941271356.a n = A129856 (n + 1)

end A129856

/-! ## A129856.P7426554928751551152

`filter[A136800(n+1), A010051(#)]`
-/

namespace A129856.P7426554928751551152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A129856.P7426554928751551152

namespace A129856

/-- `filter[A136800(n+1), A010051(#)]` -/
def P7426554928751551152.Spec : Prop :=
  ∀ n, P7426554928751551152.a n = A129856 (n + 1)

end A129856

/-! ## A129856.P16712971537318511524

`filter[A136800(n+1), A080339(#)]`
-/

namespace A129856.P16712971537318511524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A129856.P16712971537318511524

namespace A129856

/-- `filter[A136800(n+1), A080339(#)]` -/
def P16712971537318511524.Spec : Prop :=
  ∀ n, P16712971537318511524.a n = A129856 (n + 1)

end A129856

/-! ## A129856.P14486762863568854545

`filter[A136800(n+1), A080545(#)]`
-/

namespace A129856.P14486762863568854545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A129856.P14486762863568854545

namespace A129856

/-- `filter[A136800(n+1), A080545(#)]` -/
def P14486762863568854545.Spec : Prop :=
  ∀ n, P14486762863568854545.a n = A129856 (n + 1)

end A129856

/-! ## A129856.P4558344310230315144

`p?[A005408(A047846(n+2))]`
-/

namespace A129856.P4558344310230315144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A047846 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129856.P4558344310230315144

namespace A129856

/-- `p?[A005408(A047846(n+2))]` -/
def P4558344310230315144.Spec : Prop :=
  ∀ n, P4558344310230315144.a n = A129856 (n + 1)

end A129856

/-! ## A129856.P9310759417707442363

`p?[Δ[p?[2*n+1]]-1]`
-/

namespace A129856.P9310759417707442363
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129856.P9310759417707442363

namespace A129856

/-- `p?[Δ[p?[2*n+1]]-1]` -/
def P9310759417707442363.Spec : Prop :=
  ∀ n, P9310759417707442363.a n = A129856 (n + 1)

end A129856

/-! ## A129856.P96428886511818288

`p?[A046933(n+1)]`
-/

namespace A129856.P96428886511818288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129856.P96428886511818288

namespace A129856

/-- `p?[A046933(n+1)]` -/
def P96428886511818288.Spec : Prop :=
  ∀ n, P96428886511818288.a n = A129856 (n + 1)

end A129856

/-! ## A129856.P14105789790780954542

`p?[A176246(n+1)]`
-/

namespace A129856.P14105789790780954542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129856.P14105789790780954542

namespace A129856

/-- `p?[A176246(n+1)]` -/
def P14105789790780954542.Spec : Prop :=
  ∀ n, P14105789790780954542.a n = A129856 (n + 1)

end A129856

/-! ## A129856.P13630858834192333446

`p?[A135732(n+2)]`
-/

namespace A129856.P13630858834192333446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135732 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129856.P13630858834192333446

namespace A129856

/-- `p?[A135732(n+2)]` -/
def P13630858834192333446.Spec : Prop :=
  ∀ n, P13630858834192333446.a n = A129856 (n + 1)

end A129856

/-! ## A129856.P2841253359864874148

`p?[∑[A036263(n+1)]]`
-/

namespace A129856.P2841253359864874148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129856.P2841253359864874148

namespace A129856

/-- `p?[∑[A036263(n+1)]]` -/
def P2841253359864874148.Spec : Prop :=
  ∀ n, P2841253359864874148.a n = A129856 (n + 1)

end A129856

/-! ## A129856.P11846181361061941586

`p?[Δ[A065091(n+1)]-1]`
-/

namespace A129856.P11846181361061941586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129856.P11846181361061941586

namespace A129856

/-- `p?[Δ[A065091(n+1)]-1]` -/
def P11846181361061941586.Spec : Prop :=
  ∀ n, P11846181361061941586.a n = A129856 (n + 1)

end A129856

/-! ## A129856.P17241932182611555351

`p?[Δ[A086304(n+1)]-1]`
-/

namespace A129856.P17241932182611555351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129856.P17241932182611555351

namespace A129856

/-- `p?[Δ[A086304(n+1)]-1]` -/
def P17241932182611555351.Spec : Prop :=
  ∀ n, P17241932182611555351.a n = A129856 (n + 1)

end A129856

/-! ## A129856.P17092232393698297289

`p?[Δ[A118538(n+1)]-1]`
-/

namespace A129856.P17092232393698297289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129856.P17092232393698297289

namespace A129856

/-- `p?[Δ[A118538(n+1)]-1]` -/
def P17092232393698297289.Spec : Prop :=
  ∀ n, P17092232393698297289.a n = A129856 (n + 1)

end A129856

/-! ## A129856.P8944451148159352432

`p?[Δ[A172367(n+1)]-1]`
-/

namespace A129856.P8944451148159352432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129856.P8944451148159352432

namespace A129856

/-- `p?[Δ[A172367(n+1)]-1]` -/
def P8944451148159352432.Spec : Prop :=
  ∀ n, P8944451148159352432.a n = A129856 (n + 1)

end A129856

/-! ## A129856.P10336467188106734240

`p?[Δ[A215848(n+1)]-1]`
-/

namespace A129856.P10336467188106734240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129856.P10336467188106734240

namespace A129856

/-- `p?[Δ[A215848(n+1)]-1]` -/
def P10336467188106734240.Spec : Prop :=
  ∀ n, P10336467188106734240.a n = A129856 (n + 1)

end A129856

/-! ## A129856.P10664917596665532393

`p?[2*A100820(n+1)+1]`
-/

namespace A129856.P10664917596665532393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100820 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129856.P10664917596665532393

namespace A129856

/-- `p?[2*A100820(n+1)+1]` -/
def P10664917596665532393.Spec : Prop :=
  ∀ n, P10664917596665532393.a n = A129856 (n + 1)

end A129856

/-!
# A129857: Nonnegative values x of solutions (x, y) to the Diophantine equation x^2+(x+857)^2 = y^2.

The programs for A129857, there is no canonical definition to state claims against.
-/

/-! ## A129857.P628844542647115840

`A123654(n+1)+A130608(n+1)-A129837(3*n+1)`
-/

namespace A129857.P628844542647115840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123654 (n + 1) + (A130608 (n + 1) - A129837 (3 * n + 1))

end

end A129857.P628844542647115840

/-!
# A129858: A triangle of coefficients based on A000217: a(n)=Binomial[n+2,2]; t(n,m)=a(n - m + 1)*a(m + 1) - a((n - m + 1)*(m + 1)).

The programs for A129858, there is no canonical definition to state claims against.
-/

/-! ## A129858.P7988905688463636060

`A129855(n+1)-A253145(A003991(n+1))`
-/

namespace A129858.P7988905688463636060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129855 (n + 1) - A253145 (A003991 (n + 1)).toNat

end

end A129858.P7988905688463636060

/-! ## A129858.P5549011672735884445

`A007425(6*A036561(n))-A253145(A003991(n+1))`
-/

namespace A129858.P5549011672735884445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (6 * A036561 n).toNat - A253145 (A003991 (n + 1)).toNat

end

end A129858.P5549011672735884445

/-! ## A129858.P8752146435553687632

`A140978(n+1)+A130259(A207989(n+1))`
-/

namespace A129858.P8752146435553687632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140978 (n + 1) + A130259 (A207989 (n + 1)).toNat

end

end A129858.P8752146435553687632

/-! ## A129858.P15081829201994995835

`A140978(n+1)+A081604(A232496(n+2))`
-/

namespace A129858.P15081829201994995835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140978 (n + 1) + A081604 (A232496 (n + 2)).toNat

end

end A129858.P15081829201994995835

/-! ## A129858.P8545601546495820377

`A061885(A141429(n+1)+A032555(n+1))`
-/

namespace A129858.P8545601546495820377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 (A141429 (n + 1) + A032555 (n + 1)).toNat

end

end A129858.P8545601546495820377

/-!
# A129860: Number of unrooted bifurcating tree shapes with n leaves.

The programs for A129860, there is no canonical definition to state claims against.
-/

/-! ## A129860.P17904545138101360420

`A000672(char[36]+n)`
-/

namespace A129860.P17904545138101360420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000672 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A129860.P17904545138101360420

/-! ## A129860.P6065096138486921060

`A000672(n)-char[36]`
-/

namespace A129860.P6065096138486921060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000672 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A129860.P6065096138486921060

/-! ## A129860.P7991751560843977837

`A052120(2*(n+1))+char[42]`
-/

namespace A129860.P7991751560843977837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052120 (2 * (n + 1)) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A129860.P7991751560843977837

/-! ## A129860.P15685389923998609957

`A052120(2*(floor(2/(n+1)*∑[n])+1))`
-/

namespace A129860.P15685389923998609957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052120 (2 * (⌊2 / (n + 1 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋ + 1)).toNat

end

end A129860.P15685389923998609957

/-! ## A129860.P10707493207696400393

`A025466(n)+A000672(n)`
-/

namespace A129860.P10707493207696400393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 n + A000672 n

end

end A129860.P10707493207696400393

/-!
# A129861: Smallest square s such that A024352(n) + s is square.

The programs for A129861, there is no canonical definition to state claims against.
-/

/-! ## A129861.P15610505663122712775

`A204997(A024352(n+1)%A193631(3*n+4))`
-/

namespace A129861.P15610505663122712775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204997 (Int.tmod (A024352 (n + 1)) (A193631 (3 * n + 4))).toNat

end

end A129861.P15610505663122712775

/-! ## A129861.P7488092415968015674

`A236104(lt[A000931(n), A095112(n+1)])`
-/

namespace A129861.P7488092415968015674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236104 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A129861.P7488092415968015674

/-!
# A129863: Sums of three consecutive pentagonal numbers.

The programs for A129863, the canonical program `A129863.P6499707514520794287` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129863 has offset 0).

The definition of A129863 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129863.P6499707514520794287

`n*(9*n+15)/2+6`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A129863

/-- `n*(9*n+15)/2+6` -/
def P6499707514520794287.Spec : Prop :=
  ∀ n, P6499707514520794287.a n = (A129863 n : ℚ)

end A129863

/-! ## A129863.P3073911725909408835

`∑[3*ceil(3/acot(n))]`
-/

namespace A129863.P3073911725909408835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌈3 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129863.P3073911725909408835

namespace A129863

/-- `∑[3*ceil(3/acot(n))]` -/
def P3073911725909408835.Spec : Prop :=
  ∀ n, P3073911725909408835.a n = A129863 n

end A129863

/-! ## A129863.P16585652293326430065

`∑[a(n-1)+9]` with `a(0)=6, a(1)=12`
-/

namespace A129863.P16585652293326430065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 12] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129863.P16585652293326430065

namespace A129863

/-- `∑[a(n-1)+9]` -/
def P16585652293326430065.Spec : Prop :=
  ∀ n, (P16585652293326430065.a n : ℤ) = A129863 n

end A129863

/-! ## A129863.P13293602058923389191

`3*A143689(n+1)`
-/

namespace A129863.P13293602058923389191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A143689 (n + 1)

end

end A129863.P13293602058923389191

namespace A129863

/-- `3*A143689(n+1)` -/
def P13293602058923389191.Spec : Prop :=
  ∀ n, P13293602058923389191.a n = A129863 n

end A129863

/-! ## A129863.P13081860326334259731

`3*(A000326(n+1)+1)`
-/

namespace A129863.P13081860326334259731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A000326 (n + 1) + 1)

end

end A129863.P13081860326334259731

namespace A129863

/-- `3*(A000326(n+1)+1)` -/
def P13081860326334259731.Spec : Prop :=
  ∀ n, P13081860326334259731.a n = A129863 n

end A129863

/-! ## A129863.P7377982609466151135

`3*(A115067(n+1)+2)`
-/

namespace A129863.P7377982609466151135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A115067 (n + 1) + 2)

end

end A129863.P7377982609466151135

namespace A129863

/-- `3*(A115067(n+1)+2)` -/
def P7377982609466151135.Spec : Prop :=
  ∀ n, P7377982609466151135.a n = A129863 n

end A129863

/-! ## A129863.P13386688221217224172

`Δ[(A000217(n)+1)*3*n]`
-/

namespace A129863.P13386688221217224172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 n + 1) * (3 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129863.P13386688221217224172

namespace A129863

/-- `Δ[(A000217(n)+1)*3*n]` -/
def P13386688221217224172.Spec : Prop :=
  ∀ n, P13386688221217224172.a n = A129863 n

end A129863

/-! ## A129863.P9204535044612772355

`Δ[3*A064808(n)]`
-/

namespace A129863.P9204535044612772355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A064808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129863.P9204535044612772355

namespace A129863

/-- `Δ[3*A064808(n)]` -/
def P9204535044612772355.Spec : Prop :=
  ∀ n, P9204535044612772355.a n = A129863 n

end A129863

/-! ## A129863.P7178425853031103507

`Δ[n*A290768(n+1)]`
-/

namespace A129863.P7178425853031103507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A290768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129863.P7178425853031103507

namespace A129863

/-- `Δ[n*A290768(n+1)]` -/
def P7178425853031103507.Spec : Prop :=
  ∀ n, P7178425853031103507.a n = A129863 n

end A129863

/-! ## A129863.P4440443067544025461

`Δ[3*A189890(n+1)]`
-/

namespace A129863.P4440443067544025461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A189890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129863.P4440443067544025461

namespace A129863

/-- `Δ[3*A189890(n+1)]` -/
def P4440443067544025461.Spec : Prop :=
  ∀ n, P4440443067544025461.a n = A129863 n

end A129863

/-! ## A129863.P17782889708200347906

`3*A319390(Δ[n²])`
-/

namespace A129863.P17782889708200347906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A319390 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A129863.P17782889708200347906

namespace A129863

/-- `3*A319390(Δ[n²])` -/
def P17782889708200347906.Spec : Prop :=
  ∀ n, P17782889708200347906.a n = A129863 n

end A129863

/-! ## A129863.P12460574507923246473

`A167614(3*n+1)`
-/

namespace A129863.P12460574507923246473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (3 * n + 1)

end

end A129863.P12460574507923246473

namespace A129863

/-- `A167614(3*n+1)` -/
def P12460574507923246473.Spec : Prop :=
  ∀ n, P12460574507923246473.a n = A129863 n

end A129863

/-! ## A129863.P234475355980643145

`A152950(3*(n+1))`
-/

namespace A129863.P234475355980643145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152950 (3 * (n + 1))

end

end A129863.P234475355980643145

namespace A129863

/-- `A152950(3*(n+1))` -/
def P234475355980643145.Spec : Prop :=
  ∀ n, P234475355980643145.a n = A129863 n

end A129863

/-! ## A129863.P8028048448192916706

`∑[record[A002517(n+3)]]`
-/

namespace A129863.P8028048448192916706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129863.P8028048448192916706

namespace A129863

/-- `∑[record[A002517(n+3)]]` -/
def P8028048448192916706.Spec : Prop :=
  ∀ n, P8028048448192916706.a n = A129863 n

end A129863

/-! ## A129863.P7254897397007043736

`A152949(3*(n+1)+1)`
-/

namespace A129863.P7254897397007043736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152949 (3 * (n + 1) + 1)

end

end A129863.P7254897397007043736

namespace A129863

/-- `A152949(3*(n+1)+1)` -/
def P7254897397007043736.Spec : Prop :=
  ∀ n, P7254897397007043736.a n = A129863 n

end A129863

/-! ## A129863.P14967165098331402721

`A016028(3*(n+1)+2)`
-/

namespace A129863.P14967165098331402721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016028 (3 * (n + 1) + 2)

end

end A129863.P14967165098331402721

namespace A129863

/-- `A016028(3*(n+1)+2)` -/
def P14967165098331402721.Spec : Prop :=
  ∀ n, P14967165098331402721.a n = A129863 n

end A129863

/-! ## A129863.P16134405718159626297

`A252460(Δ[(3*n)²])`
-/

namespace A129863.P16134405718159626297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252460 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A129863.P16134405718159626297

namespace A129863

/-- `A252460(Δ[(3*n)²])` -/
def P16134405718159626297.Spec : Prop :=
  ∀ n, P16134405718159626297.a n = A129863 n

end A129863

/-! ## A129863.P7487066755423998565

`A278512(A242215(n))`
-/

namespace A129863.P7487066755423998565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278512 (A242215 n).toNat

end

end A129863.P7487066755423998565

namespace A129863

/-- `A278512(A242215(n))` -/
def P7487066755423998565.Spec : Prop :=
  ∀ n, P7487066755423998565.a n = A129863 n

end A129863

/-!
# A129864: Numbers that are both lucky and emirp.

The programs for A129864, there is no canonical definition to state claims against.
-/

/-! ## A129864.P10282149399160455138

`∩[A006567(n+1), A031157(n+1)]`
-/

namespace A129864.P10282149399160455138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129864.P10282149399160455138

/-! ## A129864.P6694125693674764199

`∩[A006567(n+1), A043772(n+1)]`
-/

namespace A129864.P6694125693674764199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129864.P6694125693674764199

/-! ## A129864.P12383243911966949994

`∩[A006567(n+1), A118643(n+1)]`
-/

namespace A129864.P12383243911966949994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129864.P12383243911966949994

/-! ## A129864.P14662825240358124433

`∩[A006567(n+1), A137165(n+1)]`
-/

namespace A129864.P14662825240358124433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129864.P14662825240358124433

/-! ## A129864.P3450594492096749916

`∩[A000959(n+1), A006567(n+1)]`
-/

namespace A129864.P3450594492096749916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129864.P3450594492096749916

/-! ## A129864.P1674556469401701964

`filter[A006567(n+1), A145649(#)]`
-/

namespace A129864.P1674556469401701964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A129864.P1674556469401701964

/-! ## A129864.P3917598731185657692

`∩[A031157(n+1), A068893(n+1)]`
-/

namespace A129864.P3917598731185657692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129864.P3917598731185657692

/-! ## A129864.P2412449561592340425

`∩[A031157(n+1), A109019(n+1)]`
-/

namespace A129864.P2412449561592340425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129864.P2412449561592340425

/-! ## A129864.P1954338139963485756

`∩[A031157(n+1), A350867(n+1)]`
-/

namespace A129864.P1954338139963485756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129864.P1954338139963485756

/-!
# A129867: Row sums of triangular array T: T(j,k) = k*(j-k)! for k < j, T(j,k) = 1 for k = j; 1 <= k <= j.

The programs for A129867, there is no canonical definition to state claims against.
-/

/-! ## A129867.P3084106877065799265

`∑[∑[n!]]-n`
-/

namespace A129867.P3084106877065799265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A129867.P3084106877065799265

/-! ## A129867.P215307009672475340

`∑[∑[xor(n!, char[1])]]`
-/

namespace A129867.P215307009672475340
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.factorial n) (if ∃ j, f3 j = n then 1 else 0)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129867.P215307009672475340

/-! ## A129867.P1353733283941168684

`∑[∑[lcm(n!, dr(n))]]+1`
-/

namespace A129867.P1353733283941168684
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Nat.factorial n) (SequenceMachineLib.digitalRoot (n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A129867.P1353733283941168684

/-! ## A129867.P16220028187874067506

`∑[xor(4, ∑[n!]+3)]+1`
-/

namespace A129867.P16220028187874067506
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (∑ j ∈ Finset.range (n + 1), f2 j + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A129867.P16220028187874067506

/-! ## A129867.P3016678890299678208

`∑[or(1, xor(-1, ∑[-n!]))]`
-/

namespace A129867.P3016678890299678208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.factorial n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.xor (-1) (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129867.P3016678890299678208

/-! ## A129867.P15228167996925291029

`∑[or(1, ∑[n!%∑[n!]])]`
-/

namespace A129867.P15228167996925291029
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n % (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129867.P15228167996925291029

/-! ## A129867.P15447472564633643804

`∑[∑[n*a(n-1)]]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A129867.P15447472564633643804
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f2 =>
  n * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129867.P15447472564633643804

/-! ## A129867.P5175797136846832849

`∑[∑[a(n-1)/n^(-1)]]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A129867.P5175797136846832849
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 2] fun n f2 =>
  f2 (n - 1) / (n : ℚ) ^ (-1 : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129867.P5175797136846832849

/-! ## A129867.P17122761805802623913

`(n+1)*(a(n-1)-a(n-2))+2` with `a(0)=1, a(1)=2`
-/

namespace A129867.P17122761805802623913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n + 1 : ℤ) * (a (n - 1) - a (n - 2)) + 2

end

end A129867.P17122761805802623913

/-! ## A129867.P11054475242641319209

`A014145(n)+1`
-/

namespace A129867.P11054475242641319209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014145 n + 1

end

end A129867.P11054475242641319209

/-!
# A129868: Binary palindromic numbers with only one 0 bit.

The programs for A129868, the canonical program `A129868.P17346803767250849322` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129868 has offset 0).

The definition of A129868 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129868.P17346803767250849322

`(2^n-1)*(2*2^n+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A129868

/-- `(2^n-1)*(2*2^n+1)` -/
def P17346803767250849322.Spec : Prop :=
  ∀ n, P17346803767250849322.a n = A129868 n

theorem P17346803767250849322.correct : P17346803767250849322.Spec := by
  intro n
  simp only [A129868]

end A129868

/-! ## A129868.P15229383115039836216

`6*a(n-1)-8*a(n-2)-3` with `a(0)=0, a(1)=5`
-/

namespace A129868.P15229383115039836216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  6 * a (n - 1) - 8 * a (n - 2) - 3

end

end A129868.P15229383115039836216

namespace A129868

/-- `6*a(n-1)-8*a(n-2)-3` -/
def P15229383115039836216.Spec : Prop :=
  ∀ n, P15229383115039836216.a n = A129868 n

theorem P15229383115039836216.correct : P15229383115039836216.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A129868, Nat.add_sub_cancel, A129868.P15229383115039836216.a, A129868.P17346803767250849322.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A129868, Nat.add_sub_cancel, A129868.P15229383115039836216.a, A129868.P17346803767250849322.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A129868

/-! ## A129868.P5594918554339226356

`A006516(n+1)-1`
-/

namespace A129868.P5594918554339226356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 (n + 1) - 1

end

end A129868.P5594918554339226356

namespace A129868

/-- `A006516(n+1)-1` -/
def P5594918554339226356.Spec : Prop :=
  ∀ n, P5594918554339226356.a n = A129868 n

end A129868

/-! ## A129868.P11860232814254169912

`xor(2*4^n-1, 2^n)`
-/

namespace A129868.P11860232814254169912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 * 4 ^ n : ℤ) - 1) (2 ^ n : ℤ)

end

end A129868.P11860232814254169912

namespace A129868

/-- `xor(2*4^n-1, 2^n)` -/
def P11860232814254169912.Spec : Prop :=
  ∀ n, P11860232814254169912.a n = A129868 n

end A129868

/-! ## A129868.P7737979115360720589

`abs(1-lcm(2^n, ∑[2^n]))`
-/

namespace A129868.P7737979115360720589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.lcm (2 ^ n) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)|

end

end A129868.P7737979115360720589

namespace A129868

/-- `abs(1-lcm(2^n, ∑[2^n]))` -/
def P7737979115360720589.Spec : Prop :=
  ∀ n, P7737979115360720589.a n = A129868 n

end A129868

/-! ## A129868.P9767787033627137575

`xor(∑[2^n]², ∑[2^n])/2`
-/

namespace A129868.P9767787033627137575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 2

end

end A129868.P9767787033627137575

namespace A129868

/-- `xor(∑[2^n]², ∑[2^n])/2` -/
def P9767787033627137575.Spec : Prop :=
  ∀ n, P9767787033627137575.a n = (A129868 n : ℚ)

end A129868

/-! ## A129868.P5529865520893346909

`record[gcd(2, n)^(n+1)-1-2^(n/2)]`
-/

namespace A129868.P5529865520893346909
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 2 n ^ (n + 1) : ℤ) - 1 : ℝ) - (2 : ℝ) ^ ((n : ℚ) / 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129868.P5529865520893346909

namespace A129868

/-- `record[gcd(2, n)^(n+1)-1-2^(n/2)]` -/
def P5529865520893346909.Spec : Prop :=
  ∀ n, P5529865520893346909.a n = (A129868 n : ℝ)

end A129868

/-! ## A129868.P2414015233234474642

`∑[(C(2^n, 2)+4^n)%(2^n*∑[2^n])]`
-/

namespace A129868.P2414015233234474642
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 ^ n) 2 + 4 ^ n) % (2 ^ n * (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129868.P2414015233234474642

namespace A129868

/-- `∑[(C(2^n, 2)+4^n)%(2^n*∑[2^n])]` -/
def P2414015233234474642.Spec : Prop :=
  ∀ n, (P2414015233234474642.a n : ℤ) = A129868 n

end A129868

/-! ## A129868.P12364336414013932470

`A171476(n)-1`
-/

namespace A129868.P12364336414013932470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171476 n - 1

end

end A129868.P12364336414013932470

namespace A129868

/-- `A171476(n)-1` -/
def P12364336414013932470.Spec : Prop :=
  ∀ n, P12364336414013932470.a n = A129868 n

end A129868

/-! ## A129868.P4885322723689813351

`A274638(Δ[n²])`
-/

namespace A129868.P4885322723689813351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274638 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A129868.P4885322723689813351

namespace A129868

/-- `A274638(Δ[n²])` -/
def P4885322723689813351.Spec : Prop :=
  ∀ n, P4885322723689813351.a n = A129868 n

end A129868

/-! ## A129868.P2873458788826538456

`∑[A010036(n)]-1`
-/

namespace A129868.P2873458788826538456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A129868.P2873458788826538456

namespace A129868

/-- `∑[A010036(n)]-1` -/
def P2873458788826538456.Spec : Prop :=
  ∀ n, P2873458788826538456.a n = A129868 n

end A129868

/-! ## A129868.P5428266521023275104

`record[A278756(n)-1]`
-/

namespace A129868.P5428266521023275104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278756 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129868.P5428266521023275104

namespace A129868

/-- `record[A278756(n)-1]` -/
def P5428266521023275104.Spec : Prop :=
  ∀ n, P5428266521023275104.a n = A129868 n

end A129868

/-! ## A129868.P2537513649182986326

`record[A282418(n)-1]`
-/

namespace A129868.P2537513649182986326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282418 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129868.P2537513649182986326

namespace A129868

/-- `record[A282418(n)-1]` -/
def P2537513649182986326.Spec : Prop :=
  ∀ n, P2537513649182986326.a n = A129868 n

end A129868

/-! ## A129868.P7785451697502634039

`record[A287470(n)-1]`
-/

namespace A129868.P7785451697502634039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287470 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129868.P7785451697502634039

namespace A129868

/-- `record[A287470(n)-1]` -/
def P7785451697502634039.Spec : Prop :=
  ∀ n, P7785451697502634039.a n = A129868 n

end A129868

/-! ## A129868.P4458667548163457498

`A134169(n+1)-2`
-/

namespace A129868.P4458667548163457498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134169 (n + 1) - 2

end

end A129868.P4458667548163457498

namespace A129868

/-- `A134169(n+1)-2` -/
def P4458667548163457498.Spec : Prop :=
  ∀ n, P4458667548163457498.a n = A129868 n

end A129868

/-! ## A129868.P17611216977944269581

`A122746(2*n)-1`
-/

namespace A129868.P17611216977944269581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122746 (2 * n) - 1

end

end A129868.P17611216977944269581

namespace A129868

/-- `A122746(2*n)-1` -/
def P17611216977944269581.Spec : Prop :=
  ∀ n, P17611216977944269581.a n = A129868 n

end A129868

/-! ## A129868.P11455606963630986065

`A170940(n+1)/2`
-/

namespace A129868.P11455606963630986065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170940 (n + 1) : ℚ) / 2

end

end A129868.P11455606963630986065

namespace A129868

/-- `A170940(n+1)/2` -/
def P11455606963630986065.Spec : Prop :=
  ∀ n, P11455606963630986065.a n = (A129868 n : ℚ)

end A129868

/-! ## A129868.P11443932859682942557

`A278756(2*n)-1`
-/

namespace A129868.P11443932859682942557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278756 (2 * n) - 1

end

end A129868.P11443932859682942557

namespace A129868

/-- `A278756(2*n)-1` -/
def P11443932859682942557.Spec : Prop :=
  ∀ n, P11443932859682942557.a n = A129868 n

end A129868

/-! ## A129868.P14052865261228641618

`A282418(2*n)-1`
-/

namespace A129868.P14052865261228641618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282418 (2 * n) - 1

end

end A129868.P14052865261228641618

namespace A129868

/-- `A282418(2*n)-1` -/
def P14052865261228641618.Spec : Prop :=
  ∀ n, P14052865261228641618.a n = A129868 n

end A129868

/-!
# A129869: Number of positive clusters of type D_n.

The programs for A129869, the canonical program `A129869.P14571244715897988627` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129869 has offset 1).

The definition of A129869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129869.P14571244715897988627

`floor(((n-1)/2+n)*A000108(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A129869

/-- `floor(((n-1)/2+n)*A000108(n))` -/
def P14571244715897988627.Spec : Prop :=
  ∀ n, P14571244715897988627.a n = A129869 (n + 1)

theorem P14571244715897988627.correct : P14571244715897988627.Spec := by
  intro n
  simp only [A129869, Nat.add_sub_cancel]

end A129869

/-! ## A129869.P15998281766996586546

`A265610(n)+A000245(n)`
-/

namespace A129869.P15998281766996586546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265610 n + A000245 n

end

end A129869.P15998281766996586546

namespace A129869

/-- `A265610(n)+A000245(n)` -/
def P15998281766996586546.Spec : Prop :=
  ∀ n, P15998281766996586546.a n = A129869 (n + 1)

end A129869

/-! ## A129869.P9259030990882942630

`A276666(n)+record[A138364(n)]`
-/

namespace A129869.P9259030990882942630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276666 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129869.P9259030990882942630

namespace A129869

/-- `A276666(n)+record[A138364(n)]` -/
def P9259030990882942630.Spec : Prop :=
  ∀ n, P9259030990882942630.a n = A129869 (n + 1)

end A129869

/-! ## A129869.P7920753832825892980

`record[A116385(n)-A126930(n)]`
-/

namespace A129869.P7920753832825892980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116385 n - A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129869.P7920753832825892980

namespace A129869

/-- `record[A116385(n)-A126930(n)]` -/
def P7920753832825892980.Spec : Prop :=
  ∀ n, P7920753832825892980.a n = A129869 (n + 1)

end A129869

/-! ## A129869.P9953194870583173767

`A029651(n)-2*A000108(n)`
-/

namespace A129869.P9953194870583173767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 n - 2 * A000108 n

end

end A129869.P9953194870583173767

namespace A129869

/-- `A029651(n)-2*A000108(n)` -/
def P9953194870583173767.Spec : Prop :=
  ∀ n, P9953194870583173767.a n = A129869 (n + 1)

end A129869

/-! ## A129869.P5605767407146814616

`A050168(2*n)-2*A208355(2*n)`
-/

namespace A129869.P5605767407146814616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 (2 * n) - 2 * A208355 (2 * n)

end

end A129869.P5605767407146814616

namespace A129869

/-- `A050168(2*n)-2*A208355(2*n)` -/
def P5605767407146814616.Spec : Prop :=
  ∀ n, P5605767407146814616.a n = A129869 (n + 1)

end A129869

/-! ## A129869.P11565418364654277311

`A276666(n)+A037952(A004273(n))`
-/

namespace A129869.P11565418364654277311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276666 n + A037952 (A004273 n).toNat

end

end A129869.P11565418364654277311

namespace A129869

/-- `A276666(n)+A037952(A004273(n))` -/
def P11565418364654277311.Spec : Prop :=
  ∀ n, P11565418364654277311.a n = A129869 (n + 1)

end A129869

/-! ## A129869.P13492850095178275053

`A001791(n)+A001791(n)-A088218(n)`
-/

namespace A129869.P13492850095178275053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n + (A001791 n - A088218 n)

end

end A129869.P13492850095178275053

namespace A129869

/-- `A001791(n)+A001791(n)-A088218(n)` -/
def P13492850095178275053.Spec : Prop :=
  ∀ n, P13492850095178275053.a n = A129869 (n + 1)

end A129869

/-! ## A129869.P5175581416017575496

`A276666(n)+A004273(n)*A120588(n)`
-/

namespace A129869.P5175581416017575496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276666 n + A004273 n * A120588 n

end

end A129869.P5175581416017575496

namespace A129869

/-- `A276666(n)+A004273(n)*A120588(n)` -/
def P5175581416017575496.Spec : Prop :=
  ∀ n, P5175581416017575496.a n = A129869 (n + 1)

end A129869

/-! ## A129869.P1837330888614273210

`A000108(n+1)+A265610(n)-A000108(n)`
-/

namespace A129869.P1837330888614273210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A265610 n - A000108 n)

end

end A129869.P1837330888614273210

namespace A129869

/-- `A000108(n+1)+A265610(n)-A000108(n)` -/
def P1837330888614273210.Spec : Prop :=
  ∀ n, P1837330888614273210.a n = A129869 (n + 1)

end A129869

/-! ## A129869.P13528427609193911590

`A091526(n+1)+A091526(n+1)+A091526(n)`
-/

namespace A129869.P13528427609193911590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091526 (n + 1) + (A091526 (n + 1) + A091526 n)

end

end A129869.P13528427609193911590

namespace A129869

/-- `A091526(n+1)+A091526(n+1)+A091526(n)` -/
def P13528427609193911590.Spec : Prop :=
  ∀ n, P13528427609193911590.a n = A129869 (n + 1)

end A129869

/-! ## A129869.P15781409976094316601

`A053368(n)-A184937(n)`
-/

namespace A129869.P15781409976094316601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053368 n - A184937 n

end

end A129869.P15781409976094316601

namespace A129869

/-- `A053368(n)-A184937(n)` -/
def P15781409976094316601.Spec : Prop :=
  ∀ n, P15781409976094316601.a n = A129869 (n + 1)

end A129869

/-! ## A129869.P11350877269121457083

`A162551(n)-A088218(n)`
-/

namespace A129869.P11350877269121457083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162551 n - A088218 n

end

end A129869.P11350877269121457083

namespace A129869

/-- `A162551(n)-A088218(n)` -/
def P11350877269121457083.Spec : Prop :=
  ∀ n, P11350877269121457083.a n = A129869 (n + 1)

end A129869

/-! ## A129869.P9600912517513932474

`Δ[A088218(n)]-A000108(n)`
-/

namespace A129869.P9600912517513932474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000108 n

end

end A129869.P9600912517513932474

namespace A129869

/-- `Δ[A088218(n)]-A000108(n)` -/
def P9600912517513932474.Spec : Prop :=
  ∀ n, P9600912517513932474.a n = A129869 (n + 1)

end A129869

/-! ## A129869.P8164743300365899709

`Δ[A260878(n)]-A000108(n)`
-/

namespace A129869.P8164743300365899709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000108 n

end

end A129869.P8164743300365899709

namespace A129869

/-- `Δ[A260878(n)]-A000108(n)` -/
def P8164743300365899709.Spec : Prop :=
  ∀ n, P8164743300365899709.a n = A129869 (n + 1)

end A129869

/-! ## A129869.P7388193150272528458

`A026619(n+1)-A028329(n)`
-/

namespace A129869.P7388193150272528458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026619 (n + 1) - A028329 n

end

end A129869.P7388193150272528458

namespace A129869

/-- `A026619(n+1)-A028329(n)` -/
def P7388193150272528458.Spec : Prop :=
  ∀ n, P7388193150272528458.a n = A129869 (n + 1)

end A129869

/-! ## A129869.P12020482224696419020

`A062561(n)-A097613(n+1)`
-/

namespace A129869.P12020482224696419020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062561 n - A097613 (n + 1)

end

end A129869.P12020482224696419020

namespace A129869

/-- `A062561(n)-A097613(n+1)` -/
def P12020482224696419020.Spec : Prop :=
  ∀ n, P12020482224696419020.a n = A129869 (n + 1)

end A129869

/-! ## A129869.P7761210523805543988

`2*A001791(n)-A088218(n)`
-/

namespace A129869.P7761210523805543988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001791 n - A088218 n

end

end A129869.P7761210523805543988

namespace A129869

/-- `2*A001791(n)-A088218(n)` -/
def P7761210523805543988.Spec : Prop :=
  ∀ n, P7761210523805543988.a n = A129869 (n + 1)

end A129869

/-! ## A129869.P12942420611397664505

`n*A068875(n)-A088218(n)`
-/

namespace A129869.P12942420611397664505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A068875 n - A088218 n

end

end A129869.P12942420611397664505

namespace A129869

/-- `n*A068875(n)-A088218(n)` -/
def P12942420611397664505.Spec : Prop :=
  ∀ n, P12942420611397664505.a n = A129869 (n + 1)

end A129869

/-! ## A129869.P7624292016212670562

`Δ[A088218(n)]-A120588(n+1)`
-/

namespace A129869.P7624292016212670562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A120588 (n + 1)

end

end A129869.P7624292016212670562

namespace A129869

/-- `Δ[A088218(n)]-A120588(n+1)` -/
def P7624292016212670562.Spec : Prop :=
  ∀ n, P7624292016212670562.a n = A129869 (n + 1)

end A129869

/-!
# A129871: A variant of Sylvester's sequence: a(0)=1 and for n>0, a(n) = (a(0)*a(1)*...*a(n-1)) + 1.

The programs for A129871, there is no canonical definition to state claims against.
-/

/-! ## A129871.P1680360266301889937

`2*C(a(n-1), 2)+1` with `a(0)=1, a(1)=2`
-/

namespace A129871.P1680360266301889937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * Nat.choose (a (n - 1)) 2 + 1

end

end A129871.P1680360266301889937

/-! ## A129871.P15260008461717278070

`lcm(2, C(a(n-1), 2))+1` with `a(0)=1, a(1)=2`
-/

namespace A129871.P15260008461717278070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lcm 2 (Nat.choose (a (n - 1)) 2) + 1

end

end A129871.P15260008461717278070

/-! ## A129871.P9252323215000992254

`ceil((1/2-a(n-1))²)` with `a(0)=1, a(1)=2`
-/

namespace A129871.P9252323215000992254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌈((1 : ℚ) / 2 - (a (n - 1) : ℚ)) ^ 2⌉

end

end A129871.P9252323215000992254

/-! ## A129871.P12307630014710019574

`floor((1/2-a(n-1))²)+1` with `a(0)=1, a(1)=2`
-/

namespace A129871.P12307630014710019574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊((1 : ℚ) / 2 - (a (n - 1) : ℚ)) ^ 2⌋ + 1

end

end A129871.P12307630014710019574

/-! ## A129871.P13985163357607394530

`a(n-1)+(1-a(n-1))²` with `a(0)=1, a(1)=2`
-/

namespace A129871.P13985163357607394530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (1 - a (n - 1)) ^ 2

end

end A129871.P13985163357607394530

/-!
# A129872: Sequence M_n arising in enumeration of arrays of directed blocks (see 2007 Quaintance reference for precise definition). [The next term is not an integer.].

The programs for A129872, there is no canonical definition to state claims against.
-/

/-! ## A129872.P614820624679257237

`A098181(Δ[A050146(n)])`
-/

namespace A129872.P614820624679257237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 (f1 (n + 1) - f1 n).toNat

end

end A129872.P614820624679257237

/-! ## A129872.P1043479500758050577

`A026777(2*n)+A001221(A026775(3*n+1))`
-/

namespace A129872.P1043479500758050577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026777 (2 * n) + A001221 (A026775 (3 * n + 1)).toNat

end

end A129872.P1043479500758050577

/-!
# A129873: Sequence s_n arising in enumeration of arrays of directed blocks (see Quaintance reference for precise definition).

The programs for A129873, there is no canonical definition to state claims against.
-/

/-! ## A129873.P4103371819725263542

`A126042(comp[3*n]+2)`
-/

namespace A129873.P4103371819725263542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126042 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)

end

end A129873.P4103371819725263542

/-! ## A129873.P8335668153583583122

`A129875(n+1)+A129874(n+1)`
-/

namespace A129873.P8335668153583583122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129875 (n + 1) + A129874 (n + 1)

end

end A129873.P8335668153583583122

/-! ## A129873.P15211248049158105066

`∪[A126042(3*n+4), A047098(n+1)]`
-/

namespace A129873.P15211248049158105066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126042 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A129873.P15211248049158105066

/-!
# A129874: Sequence h_n arising in enumeration of arrays of directed blocks (see Quaintance reference for precise definition).

The programs for A129874, there is no canonical definition to state claims against.
-/

/-! ## A129874.P14983607217315898698

`A129873(n+1)-A129875(n+1)`
-/

namespace A129874.P14983607217315898698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129873 (n + 1) - A129875 (n + 1)

end

end A129874.P14983607217315898698

/-!
# A129875: Sequence t_n arising in enumeration of arrays of directed blocks (see Quaintance reference for precise definition).

The programs for A129875, there is no canonical definition to state claims against.
-/

/-! ## A129875.P9460910389571650993

`A126042(comp[3*n]+2)-A129874(n+1)`
-/

namespace A129875.P9460910389571650993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126042 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2) - A129874 (n + 1)

end

end A129875.P9460910389571650993

/-! ## A129875.P11442522527387463141

`A129873(n+1)-A129874(n+1)`
-/

namespace A129875.P11442522527387463141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129873 (n + 1) - A129874 (n + 1)

end

end A129875.P11442522527387463141

/-!
# A129876: Sequence i_n arising in enumeration of arrays of directed blocks (see Quaintance reference for precise definition).

The programs for A129876, there is no canonical definition to state claims against.
-/

/-! ## A129876.P8218501445455567864

`A129880(n+1)+A129878(n+1)`
-/

namespace A129876.P8218501445455567864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129880 (n + 1) + A129878 (n + 1)

end

end A129876.P8218501445455567864

/-! ## A129876.P11577057761393564262

`A363183(n)+A089361((n+1)!+3)`
-/

namespace A129876.P11577057761393564262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363183 n + A089361 (Nat.factorial (n + 1) + 3)

end

end A129876.P11577057761393564262

/-!
# A129877: Sequence i_{a_n} arising in enumeration of arrays of directed blocks (see Quaintance reference for precise definition), where i_n is A129876, a_n is A129878.

The programs for A129877, there is no canonical definition to state claims against.
-/

/-! ## A129877.P10082502590075305096

`A036044(A201163(n)^A164281(2*n))`
-/

namespace A129877.P10082502590075305096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (SequenceMachineLib.roundAway ((A201163 n : ℚ) ^ (A164281 (2 * n) : ℤ))).toNat

end

end A129877.P10082502590075305096

/-!
# A129878: Sequence a_n arising in enumeration of arrays of directed blocks (see Quaintance reference for precise definition).

The programs for A129878, there is no canonical definition to state claims against.
-/

/-! ## A129878.P3690258182412364860

`A129876(n+1)-A129880(n+1)`
-/

namespace A129878.P3690258182412364860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129876 (n + 1) - A129880 (n + 1)

end

end A129878.P3690258182412364860

/-!
# A129879: Sequence a_{a_n} arising in enumeration of arrays of directed blocks (see Quaintance reference for precise definition), where a_n is A129878.

The programs for A129879, there is no canonical definition to state claims against.
-/

/-! ## A129879.P9401148329717307315

`A247974(A275780(n))-∑[n]`
-/

namespace A129879.P9401148329717307315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247974 (A275780 n).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A129879.P9401148329717307315

/-! ## A129879.P13438246679419146645

`A371128(A054633(n)+A008000(n))`
-/

namespace A129879.P13438246679419146645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371128 (A054633 n + A008000 n).toNat

end

end A129879.P13438246679419146645

/-!
# A129880: Sequence d_n arising in enumeration of arrays of directed blocks (see Quaintance reference for precise definition).

The programs for A129880, there is no canonical definition to state claims against.
-/

/-! ## A129880.P5958889707812786050

`A129876(n+1)-A129878(n+1)`
-/

namespace A129880.P5958889707812786050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129876 (n + 1) - A129878 (n + 1)

end

end A129880.P5958889707812786050

/-! ## A129880.P13821627418136832593

`A028310(A129876(n+1)%A129878(n+1))`
-/

namespace A129880.P13821627418136832593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A129876 (n + 1)) (A129878 (n + 1))).toNat

end

end A129880.P13821627418136832593

/-!
# A129889: Write down n, then n*(n+1).

The programs for A129889, the canonical program `A129889.P4892323476713999206` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129889 has offset 0).

The definition of A129889 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129889.P17557620406325889568

`((1+2*n-n²)*(-1)^n-(1-2*n-n²))/8`
-/

namespace A129889.P17557620406325889568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((1 + 2 * n : ℤ) - (n ^ 2 : ℤ)) * (-1) ^ n - (1 - (2 * n : ℤ) - (n ^ 2 : ℤ)) : ℚ) / 8

end

end A129889.P17557620406325889568

namespace A129889

/-- `((1+2*n-n²)*(-1)^n-(1-2*n-n²))/8` -/
def P17557620406325889568.Spec : Prop :=
  ∀ n, P17557620406325889568.a n = (A129889 n : ℚ)

end A129889

/-! ## A129889.P4892323476713999206

`a(n-2)+A124625(n)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A129889

/-- `a(n-2)+A124625(n)` -/
def P4892323476713999206.Spec : Prop :=
  ∀ n, P4892323476713999206.a n = A129889 n

theorem P4892323476713999206.correct : P4892323476713999206.Spec := by
  intro n
  simp only [A129889]

end A129889

/-! ## A129889.P1824167222878492777

`lcm(floor(n/2), ceil(n/2))`
-/

namespace A129889.P1824167222878492777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌊(n : ℚ) / 2⌋ ⌈(n : ℚ) / 2⌉

end

end A129889.P1824167222878492777

namespace A129889

/-- `lcm(floor(n/2), ceil(n/2))` -/
def P1824167222878492777.Spec : Prop :=
  ∀ n, (P1824167222878492777.a n : ℤ) = A129889 n

end A129889

/-! ## A129889.P1511280269632898743

`floor((n/2)^gcd(2, n+1))`
-/

namespace A129889.P1511280269632898743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ Nat.gcd 2 (n + 1)⌋

end

end A129889.P1511280269632898743

namespace A129889

/-- `floor((n/2)^gcd(2, n+1))` -/
def P1511280269632898743.Spec : Prop :=
  ∀ n, P1511280269632898743.a n = A129889 n

end A129889

/-! ## A129889.P9768681413651268067

`round((n/2)^gcd(n-1, 2*n))`
-/

namespace A129889.P9768681413651268067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℚ) / 2) ^ Int.gcd ((n : ℤ) - 1) (2 * n : ℤ))

end

end A129889.P9768681413651268067

namespace A129889

/-- `round((n/2)^gcd(n-1, 2*n))` -/
def P9768681413651268067.Spec : Prop :=
  ∀ n, P9768681413651268067.a n = A129889 n

end A129889

/-! ## A129889.P4843178668839472386

`gcd(C(n, 2), xor(1, n))*ceil(n/2)`
-/

namespace A129889.P4843178668839472386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (Nat.choose n 2) (Nat.xor 1 n) : ℤ) * ⌈(n : ℚ) / 2⌉

end

end A129889.P4843178668839472386

namespace A129889

/-- `gcd(C(n, 2), xor(1, n))*ceil(n/2)` -/
def P4843178668839472386.Spec : Prop :=
  ∀ n, P4843178668839472386.a n = A129889 n

end A129889

/-! ## A129889.P2248454934149723797

`gcd(xor(1, -n), ∑[n])*floor(n/2)`
-/

namespace A129889.P2248454934149723797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (Int.xor 1 (-(n : ℤ))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ) * ⌊(n : ℚ) / 2⌋

end

end A129889.P2248454934149723797

namespace A129889

/-- `gcd(xor(1, -n), ∑[n])*floor(n/2)` -/
def P2248454934149723797.Spec : Prop :=
  ∀ n, P2248454934149723797.a n = A129889 n

end A129889

/-! ## A129889.P11617406635179697299

`gcd(floor((n/2)²), ∑[n%or(1, n)])`
-/

namespace A129889.P11617406635179697299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊((n : ℚ) / 2) ^ 2⌋ ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A129889.P11617406635179697299

namespace A129889

/-- `gcd(floor((n/2)²), ∑[n%or(1, n)])` -/
def P11617406635179697299.Spec : Prop :=
  ∀ n, (P11617406635179697299.a n : ℤ) = A129889 n

end A129889

/-! ## A129889.P9994789032094151089

`gcd(1-n, floor(n/2))*ceil(n/2)`
-/

namespace A129889.P9994789032094151089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋ : ℤ) * ⌈(n : ℚ) / 2⌉

end

end A129889.P9994789032094151089

namespace A129889

/-- `gcd(1-n, floor(n/2))*ceil(n/2)` -/
def P9994789032094151089.Spec : Prop :=
  ∀ n, P9994789032094151089.a n = A129889 n

end A129889

/-! ## A129889.P1179767611764749855

`a(n-2)+C(n-1, and(1, n))` with `a(0)=0, a(1)=0`
-/

namespace A129889.P1179767611764749855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + Nat.choose ((n : ℤ) - 1).toNat (Nat.land 1 n)

end

end A129889.P1179767611764749855

namespace A129889

/-- `a(n-2)+C(n-1, and(1, n))` -/
def P1179767611764749855.Spec : Prop :=
  ∀ n, (P1179767611764749855.a n : ℤ) = A129889 n

end A129889

/-! ## A129889.P16131425044549081753

`lcm(2, 2-n)+a(n-2)-(n-3)` with `a(0)=0, a(1)=0`
-/

namespace A129889.P16131425044549081753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (Int.lcm 2 (2 - (n : ℤ)) : ℤ) + (a (n - 2) - ((n : ℤ) - 3))

end

end A129889.P16131425044549081753

namespace A129889

/-- `lcm(2, 2-n)+a(n-2)-(n-3)` -/
def P16131425044549081753.Spec : Prop :=
  ∀ n, P16131425044549081753.a n = A129889 n

end A129889

/-! ## A129889.P3243051549163848702

`a(n-2)+(4*a(n-1)+1)%n` with `a(0)=0, a(1)=0`
-/

namespace A129889.P3243051549163848702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + (4 * a (n - 1) + 1) % n

end

end A129889.P3243051549163848702

namespace A129889

/-- `a(n-2)+(4*a(n-1)+1)%n` -/
def P3243051549163848702.Spec : Prop :=
  ∀ n, (P3243051549163848702.a n : ℤ) = A129889 n

end A129889

/-! ## A129889.P17398933129835805540

`gcd(∑[(n-2)*(n²-n)], ∑[and(n, -2)/2])`
-/

namespace A129889.P17398933129835805540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * ((n ^ 2 : ℤ) - (n : ℤ))

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-2) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A129889.P17398933129835805540

namespace A129889

/-- `gcd(∑[(n-2)*(n²-n)], ∑[and(n, -2)/2])` -/
def P17398933129835805540.Spec : Prop :=
  ∀ n, (P17398933129835805540.a n : ℤ) = A129889 n

end A129889

/-! ## A129889.P11610125301996851566

`A354280(xor(1, n))`
-/

namespace A129889.P11610125301996851566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354280 (Nat.xor 1 n)

end

end A129889.P11610125301996851566

namespace A129889

/-- `A354280(xor(1, n))` -/
def P11610125301996851566.Spec : Prop :=
  ∀ n, P11610125301996851566.a n = A129889 n

end A129889

/-! ## A129889.P14575176251360313333

`floor(n/2)*A152271(n)`
-/

namespace A129889.P14575176251360313333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ * A152271 n

end

end A129889.P14575176251360313333

namespace A129889

/-- `floor(n/2)*A152271(n)` -/
def P14575176251360313333.Spec : Prop :=
  ∀ n, P14575176251360313333.a n = A129889 n

end A129889

/-! ## A129889.P14100501442146728238

`ceil(n/2)*A057979(n)`
-/

namespace A129889.P14100501442146728238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ * A057979 n

end

end A129889.P14100501442146728238

namespace A129889

/-- `ceil(n/2)*A057979(n)` -/
def P14100501442146728238.Spec : Prop :=
  ∀ n, P14100501442146728238.a n = A129889 n

end A129889

/-! ## A129889.P563220662777065281

`A135276(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A129889.P563220662777065281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A135276 (n - 1) - a (n - 1)

end

end A129889.P563220662777065281

namespace A129889

/-- `A135276(n-1)-a(n-1)` -/
def P563220662777065281.Spec : Prop :=
  ∀ n, P563220662777065281.a n = A129889 n

end A129889

/-! ## A129889.P12835973671685936110

`gcd(∑[3*2*C(n, 3)], A002620(n))`
-/

namespace A129889.P12835973671685936110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (2 * Nat.choose n 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A002620 n)

end

end A129889.P12835973671685936110

namespace A129889

/-- `gcd(∑[3*2*C(n, 3)], A002620(n))` -/
def P12835973671685936110.Spec : Prop :=
  ∀ n, (P12835973671685936110.a n : ℤ) = A129889 n

end A129889

/-! ## A129889.P2856033442307876035

`gcd(floor((n/2)²), A002378(floor(n/2)))`
-/

namespace A129889.P2856033442307876035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊((n : ℚ) / 2) ^ 2⌋ (A002378 ⌊(n : ℚ) / 2⌋.toNat)

end

end A129889.P2856033442307876035

namespace A129889

/-- `gcd(floor((n/2)²), A002378(floor(n/2)))` -/
def P2856033442307876035.Spec : Prop :=
  ∀ n, (P2856033442307876035.a n : ℤ) = A129889 n

end A129889

/-! ## A129889.P16982356754387995307

`A354280(A004442(n))`
-/

namespace A129889.P16982356754387995307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354280 (A004442 n).toNat

end

end A129889.P16982356754387995307

namespace A129889

/-- `A354280(A004442(n))` -/
def P16982356754387995307.Spec : Prop :=
  ∀ n, P16982356754387995307.a n = A129889 n

end A129889

/-!
# A129890: a(n) = (2*n+2)!! - (2*n+1)!!.

The programs for A129890, the canonical program `A129890.P10315040289470255892` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129890 has offset 0).

The definition of A129890 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129890.P10315040289470255892

`(2*n+1)*a(n-1)+A000165(n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A129890

/-- `(2*n+1)*a(n-1)+A000165(n)` -/
def P10315040289470255892.Spec : Prop :=
  ∀ n, P10315040289470255892.a n = A129890 n

theorem P10315040289470255892.correct : P10315040289470255892.Spec := by
  intro n
  simp only [A129890]

end A129890

/-! ## A129890.P2248380705091224810

`∏[2*(n+1)]-∏[2*n+1]`
-/

namespace A129890.P2248380705091224810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A129890.P2248380705091224810

namespace A129890

/-- `∏[2*(n+1)]-∏[2*n+1]` -/
def P2248380705091224810.Spec : Prop :=
  ∀ n, P2248380705091224810.a n = A129890 n

end A129890

/-! ## A129890.P1654395931078881059

`A336599(∑[n]+1)`
-/

namespace A129890.P1654395931078881059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336599 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A129890.P1654395931078881059

namespace A129890

/-- `A336599(∑[n]+1)` -/
def P1654395931078881059.Spec : Prop :=
  ∀ n, P1654395931078881059.a n = A129890 n

end A129890

/-! ## A129890.P13427083698037964292

`record[A336599(n+1)]`
-/

namespace A129890.P13427083698037964292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129890.P13427083698037964292

namespace A129890

/-- `record[A336599(n+1)]` -/
def P13427083698037964292.Spec : Prop :=
  ∀ n, P13427083698037964292.a n = A129890 n

end A129890

/-! ## A129890.P16689456076586613909

`A007911(2*n+3)`
-/

namespace A129890.P16689456076586613909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007911 (2 * n + 3)

end

end A129890.P16689456076586613909

namespace A129890

/-- `A007911(2*n+3)` -/
def P16689456076586613909.Spec : Prop :=
  ∀ n, P16689456076586613909.a n = A129890 n

end A129890

/-! ## A129890.P12682354627960644399

`A265649(∑[n+1]+1)`
-/

namespace A129890.P12682354627960644399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265649 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A129890.P12682354627960644399

namespace A129890

/-- `A265649(∑[n+1]+1)` -/
def P12682354627960644399.Spec : Prop :=
  ∀ n, P12682354627960644399.a n = A129890 n

end A129890

/-! ## A129890.P14122763330128397369

`A204912((n+1)*Δ[n²])`
-/

namespace A129890.P14122763330128397369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204912 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A129890.P14122763330128397369

namespace A129890

/-- `A204912((n+1)*Δ[n²])` -/
def P14122763330128397369.Spec : Prop :=
  ∀ n, P14122763330128397369.a n = A129890 n

end A129890

/-! ## A129890.P7862039095692340574

`A049606(n+1)*A120778(n)`
-/

namespace A129890.P7862039095692340574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049606 (n + 1) * A120778 n

end

end A129890.P7862039095692340574

namespace A129890

/-- `A049606(n+1)*A120778(n)` -/
def P7862039095692340574.Spec : Prop :=
  ∀ n, P7862039095692340574.a n = A129890 n

end A129890

/-! ## A129890.P7510885017326446657

`A000346(n)/A000108(n)*A001147(n)`
-/

namespace A129890.P7510885017326446657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000346 n : ℚ) / (A000108 n : ℚ) * (A001147 n : ℚ)

end

end A129890.P7510885017326446657

namespace A129890

/-- `A000346(n)/A000108(n)*A001147(n)` -/
def P7510885017326446657.Spec : Prop :=
  ∀ n, P7510885017326446657.a n = (A129890 n : ℚ)

end A129890

/-! ## A129890.P653136266720900859

`A000165(n+1)/A046161(n+1)*A120778(n)`
-/

namespace A129890.P653136266720900859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000165 (n + 1) : ℚ) / (A046161 (n + 1) : ℚ) * (A120778 n : ℚ)

end

end A129890.P653136266720900859

namespace A129890

/-- `A000165(n+1)/A046161(n+1)*A120778(n)` -/
def P653136266720900859.Spec : Prop :=
  ∀ n, P653136266720900859.a n = (A129890 n : ℚ)

end A129890

/-!
# A129891: Sum of coefficients of polynomials defined in comments lines.

The programs for A129891, the canonical program `A129891.P17659601998160518947` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129891 has offset 0).

The definition of A129891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 293 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129891.P17659601998160518947

`Δ[A021008(n)]-A021008(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A129891

/-- `Δ[A021008(n)]-A021008(n)` -/
def P17659601998160518947.Spec : Prop :=
  ∀ n, P17659601998160518947.a n = A129891 n

theorem P17659601998160518947.correct : P17659601998160518947.Spec := by
  intro n
  simp only [A129891]

end A129891

/-! ## A129891.P13325988574364902605

`A021008(n+1)%A021008(n)`
-/

namespace A129891.P13325988574364902605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A021008 (n + 1)) (A021008 n)

end

end A129891.P13325988574364902605

namespace A129891

/-- `A021008(n+1)%A021008(n)` -/
def P13325988574364902605.Spec : Prop :=
  ∀ n, P13325988574364902605.a n = A129891 n

end A129891

/-! ## A129891.P8577778068137857316

`Δ[A021008(n)]+A021008(n)*A153881(n+2)`
-/

namespace A129891.P8577778068137857316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A021008 n * A153881 (n + 2)

end

end A129891.P8577778068137857316

namespace A129891

/-- `Δ[A021008(n)]+A021008(n)*A153881(n+2)` -/
def P8577778068137857316.Spec : Prop :=
  ∀ n, P8577778068137857316.a n = A129891 n

end A129891

/-!
# A129893: a(n) = s!/(s-n)! where s = (n*(n+1)/2)+1.

The programs for A129893, there is no canonical definition to state claims against.
-/

/-! ## A129893.P17835049747161587803

`n!*C(∑[n]+1, n)`
-/

namespace A129893.P17835049747161587803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) n

end

end A129893.P17835049747161587803

/-! ## A129893.P13209294823629313535

`n!*A107868(n)`
-/

namespace A129893.P13209294823629313535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A107868 n

end

end A129893.P13209294823629313535

/-! ## A129893.P6294399703456478576

`A000142(n)*A107868(n)`
-/

namespace A129893.P6294399703456478576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A107868 n

end

end A129893.P6294399703456478576

/-! ## A129893.P12677924498945286771

`A000142(n)*A180272(A000124(n))`
-/

namespace A129893.P12677924498945286771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A180272 (A000124 n).toNat

end

end A129893.P12677924498945286771

/-!
# A129895: a(1)=1. a(n) = a(n-1) + number of triangular numbers among the first (n-1) terms of the sequence.

The programs for A129895, the canonical program `A129895.P12294206677227520664` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129895 has offset 1).

The definition of A129895 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129895.P12294206677227520664

`2*a(n-1)-2*a(n-3)+2*a(n-5)-2*a(n-7)+a(n-8)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=7, a(5)=9, a(6)=11, a(7)=13`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A129895

/-- `2*a(n-1)-2*a(n-3)+2*a(n-5)-2*a(n-7)+a(n-8)` -/
def P12294206677227520664.Spec : Prop :=
  ∀ n, P12294206677227520664.a n = A129895 (n + 1)

theorem P12294206677227520664.correct : P12294206677227520664.Spec := by
  intro n
  simp only [A129895, Nat.add_sub_cancel]

end A129895

/-! ## A129895.P18080669314460874483

`∑[∑[char[or(5, n)-4]]]+1`
-/

namespace A129895.P18080669314460874483
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 n : ℤ) - 4

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A129895.P18080669314460874483

namespace A129895

/-- `∑[∑[char[or(5, n)-4]]]+1` -/
def P18080669314460874483.Spec : Prop :=
  ∀ n, (P18080669314460874483.a n : ℤ) = A129895 (n + 1)

end A129895

/-! ## A129895.P3093136454483409876

`∑[∑[char[-or(5, -n)]]]+1`
-/

namespace A129895.P3093136454483409876
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 5 (-(n : ℤ))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A129895.P3093136454483409876

namespace A129895

/-- `∑[∑[char[-or(5, -n)]]]+1` -/
def P3093136454483409876.Spec : Prop :=
  ∀ n, (P3093136454483409876.a n : ℤ) = A129895 (n + 1)

end A129895

/-! ## A129895.P5321802772916883066

`∑[∑[char[xor(2, n)+n-1]]]+1`
-/

namespace A129895.P5321802772916883066
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 n : ℤ) + ((n : ℤ) - 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A129895.P5321802772916883066

namespace A129895

/-- `∑[∑[char[xor(2, n)+n-1]]]+1` -/
def P5321802772916883066.Spec : Prop :=
  ∀ n, (P5321802772916883066.a n : ℤ) = A129895 (n + 1)

end A129895

/-! ## A129895.P5571698705241584793

`∑[∑[A006918(n)%2]]+1`
-/

namespace A129895.P5571698705241584793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006918 n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A129895.P5571698705241584793

namespace A129895

/-- `∑[∑[A006918(n)%2]]+1` -/
def P5571698705241584793.Spec : Prop :=
  ∀ n, P5571698705241584793.a n = A129895 (n + 1)

end A129895

/-! ## A129895.P10222315031446069959

`∑[∑[and(n, A342892(n))]]+1`
-/

namespace A129895.P10222315031446069959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A342892 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A129895.P10222315031446069959

namespace A129895

/-- `∑[∑[and(n, A342892(n))]]+1` -/
def P10222315031446069959.Spec : Prop :=
  ∀ n, P10222315031446069959.a n = A129895 (n + 1)

end A129895

/-! ## A129895.P12944584736547901296

`∑[∑[∑[A195036(n)]%2]]+1`
-/

namespace A129895.P12944584736547901296
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f3 j) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A129895.P12944584736547901296

namespace A129895

/-- `∑[∑[∑[A195036(n)]%2]]+1` -/
def P12944584736547901296.Spec : Prop :=
  ∀ n, P12944584736547901296.a n = A129895 (n + 1)

end A129895

/-! ## A129895.P11390192764700994154

`∑[∑[char[A047243(n+2)+n]]+1]`
-/

namespace A129895.P11390192764700994154
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047243 (n + 2) + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129895.P11390192764700994154

namespace A129895

/-- `∑[∑[char[A047243(n+2)+n]]+1]` -/
def P11390192764700994154.Spec : Prop :=
  ∀ n, (P11390192764700994154.a n : ℤ) = A129895 (n + 1)

end A129895

/-! ## A129895.P15467760589724021190

`∑[comp[∑[A004767(n)%8]]-n+1]`
-/

namespace A129895.P15467760589724021190
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004767 n) 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129895.P15467760589724021190

namespace A129895

/-- `∑[comp[∑[A004767(n)%8]]-n+1]` -/
def P15467760589724021190.Spec : Prop :=
  ∀ n, P15467760589724021190.a n = A129895 (n + 1)

end A129895

/-! ## A129895.P13384215327566583039

`∑[A004524(∑[A178090(a(n-1))])]+1` with `a(0)=2`
-/

namespace A129895.P13384215327566583039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A178090 (f2 (n - 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A129895.P13384215327566583039

namespace A129895

/-- `∑[A004524(∑[A178090(a(n-1))])]+1` -/
def P13384215327566583039.Spec : Prop :=
  ∀ n, P13384215327566583039.a n = A129895 (n + 1)

end A129895

/-! ## A129895.P12440248388509050644

`A001972(n+1)-A004525(A004525(n+1))`
-/

namespace A129895.P12440248388509050644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 (n + 1) - A004525 (A004525 (n + 1)).toNat

end

end A129895.P12440248388509050644

namespace A129895

/-- `A001972(n+1)-A004525(A004525(n+1))` -/
def P12440248388509050644.Spec : Prop :=
  ∀ n, P12440248388509050644.a n = A129895 (n + 1)

end A129895

/-! ## A129895.P16308435231187199275

`∑[∑[and(n, A260445(n+2))]]+1`
-/

namespace A129895.P16308435231187199275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A260445 (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A129895.P16308435231187199275

namespace A129895

/-- `∑[∑[and(n, A260445(n+2))]]+1` -/
def P16308435231187199275.Spec : Prop :=
  ∀ n, P16308435231187199275.a n = A129895 (n + 1)

end A129895

/-! ## A129895.P2636298162723779210

`∑[and(n, A260394(n+2))]+a(n-1)` with `a(0)=1`
-/

namespace A129895.P2636298162723779210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A260394 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A129895.P2636298162723779210

namespace A129895

/-- `∑[and(n, A260394(n+2))]+a(n-1)` -/
def P2636298162723779210.Spec : Prop :=
  ∀ n, P2636298162723779210.a n = A129895 (n + 1)

end A129895

/-! ## A129895.P8853433241493298522

`A173711(n+5)+a(n-1)` with `a(0)=1`
-/

namespace A129895.P8853433241493298522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A173711 (n + 5) + a (n - 1)

end

end A129895.P8853433241493298522

namespace A129895

/-- `A173711(n+5)+a(n-1)` -/
def P8853433241493298522.Spec : Prop :=
  ∀ n, P8853433241493298522.a n = A129895 (n + 1)

end A129895

/-! ## A129895.P3365118307538945432

`A307707(a(n-1)+2)+a(n-1)` with `a(0)=1`
-/

namespace A129895.P3365118307538945432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307707 (a (n - 1) + 2).toNat + a (n - 1)

end

end A129895.P3365118307538945432

namespace A129895

/-- `A307707(a(n-1)+2)+a(n-1)` -/
def P3365118307538945432.Spec : Prop :=
  ∀ n, P3365118307538945432.a n = A129895 (n + 1)

end A129895

/-!
# A129896: a(1)=1. a(n) = a(n-1) + number of Fibonacci numbers among the first (n-1) terms of the sequence.

The programs for A129896, there is no canonical definition to state claims against.
-/

/-! ## A129896.P12275386262990636080

`∑[∑[A377782(A085104(n+1))]]`
-/

namespace A129896.P12275386262990636080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377782 (A085104 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129896.P12275386262990636080

/-! ## A129896.P13849306528420619885

`A367193(a(n-1)+n+1)` with `a(0)=1`
-/

namespace A129896.P13849306528420619885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A367193 (a (n - 1) + (n + 1 : ℤ)).toNat

end

end A129896.P13849306528420619885

/-! ## A129896.P2642894086462733504

`∑[∑[A088517(A000029(n))]]`
-/

namespace A129896.P2642894086462733504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088517 (A000029 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129896.P2642894086462733504

/-! ## A129896.P12478143861054213432

`∑[∑[A088534(A196723(n))]]`
-/

namespace A129896.P12478143861054213432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 (A196723 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129896.P12478143861054213432

/-! ## A129896.P8792557521976858029

`∑[∑[A379671(A253565(n))]]`
-/

namespace A129896.P8792557521976858029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379671 (A253565 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129896.P8792557521976858029

/-!
# A129897: a(n) is the integer that results from truncating both e and Pi to n digits, adding the results, and discarding the decimal point.

The programs for A129897, there is no canonical definition to state claims against.
-/

/-! ## A129897.P6128860081673867164

`A011545(n)+A011543(n)`
-/

namespace A129897.P6128860081673867164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011545 n + A011543 n

end

end A129897.P6128860081673867164

/-! ## A129897.P3497447127586149403

`A011543(n)+record[A322777(n+1)]`
-/

namespace A129897.P3497447127586149403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011543 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129897.P3497447127586149403

/-! ## A129897.P9629123780640447714

`A011543(n)+A249126(n+1)/A011543(n)`
-/

namespace A129897.P9629123780640447714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011543 n : ℚ) + (A249126 (n + 1) : ℚ) / (A011543 n : ℚ)

end

end A129897.P9629123780640447714

/-! ## A129897.P14208374507559556363

`A011545(n)+A249126(n+1)/A011545(n)`
-/

namespace A129897.P14208374507559556363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011545 n : ℚ) + (A249126 (n + 1) : ℚ) / (A011545 n : ℚ)

end

end A129897.P14208374507559556363

/-! ## A129897.P4665231853535672378

`A011543(n)+A276195(n)-A276195(n)%A078604(n)`
-/

namespace A129897.P4665231853535672378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011543 n + (A276195 n - Int.tmod (A276195 n) (A078604 n))

end

end A129897.P4665231853535672378

/-!
# A129899: Smaller member p of a pair of consecutive primes (p,q) such that p^2 + q^2 is ten times a prime number.

The programs for A129899, there is no canonical definition to state claims against.
-/

/-! ## A129899.P10834618761820234205

`A263978(A191047(n+1))+A072669(n+1)`
-/

namespace A129899.P10834618761820234205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263978 (A191047 (n + 1)).toNat + A072669 (n + 1)

end

end A129899.P10834618761820234205

/-! ## A129899.P6183948274729900429

`∩[A160024(n+1), A330236(n+1)]`
-/

namespace A129899.P6183948274729900429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129899.P6183948274729900429

/-! ## A129899.P4529606796082516111

`record[p?[A096008(A095976(3*n+5))]]`
-/

namespace A129899.P4529606796082516111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096008 (A095976 (3 * n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129899.P4529606796082516111

/-! ## A129899.P8783946360199599399

`p?[lcm(A349140(n+1), A349144(n+5))]`
-/

namespace A129899.P8783946360199599399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A349140 (n + 1)) (A349144 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A129899.P8783946360199599399

/-! ## A129899.P16069313806083178263

`A073681(lt[A025065(n), A074909(2*n+1)])`
-/

namespace A129899.P16069313806083178263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073681 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A129899.P16069313806083178263

