import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
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
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A352002: a(n) = prime(n)# + prime(n), where prime(n)# is the n-th primorial number A002110(n).

The programs for A352002, the canonical program `A352002.P15129864723797044053` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352002 has offset 1).

The definition of A352002 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A352002.P15129864723797044053

`A002110(n+1)+A000040(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A352002

/-- `A002110(n+1)+A000040(n+1)` -/
def P15129864723797044053.Spec : Prop :=
  ∀ n, P15129864723797044053.a n = A352002 (n + 1)

theorem P15129864723797044053.correct : P15129864723797044053.Spec := by
  intro n
  simp only [A352002, Nat.add_sub_cancel]

end A352002

/-! ## A352002.P2210322508414953784

`record[A108951(n+2)+n+2]`
-/

namespace A352002.P2210322508414953784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 2) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352002.P2210322508414953784

namespace A352002

/-- `record[A108951(n+2)+n+2]` -/
def P2210322508414953784.Spec : Prop :=
  ∀ n, P2210322508414953784.a n = A352002 (n + 1)

end A352002

/-! ## A352002.P8479608973393707017

`Δ[A007504(n)]*A006862(n)`
-/

namespace A352002.P8479608973393707017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006862 n

end

end A352002.P8479608973393707017

namespace A352002

/-- `Δ[A007504(n)]*A006862(n)` -/
def P8479608973393707017.Spec : Prop :=
  ∀ n, P8479608973393707017.a n = A352002 (n + 1)

end A352002

/-! ## A352002.P10345205264014727783

`A228190(n+1)-A007504(n)`
-/

namespace A352002.P10345205264014727783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228190 (n + 1) - A007504 n

end

end A352002.P10345205264014727783

namespace A352002

/-- `A228190(n+1)-A007504(n)` -/
def P10345205264014727783.Spec : Prop :=
  ∀ n, P10345205264014727783.a n = A352002 (n + 1)

end A352002

/-! ## A352002.P3988546553955478349

`A000040(n+1)*A006862(n)`
-/

namespace A352002.P3988546553955478349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A006862 n

end

end A352002.P3988546553955478349

namespace A352002

/-- `A000040(n+1)*A006862(n)` -/
def P3988546553955478349.Spec : Prop :=
  ∀ n, P3988546553955478349.a n = A352002 (n + 1)

end A352002

/-! ## A352002.P1405056385566110208

`Δ[A007504(n)+∑[A002110(n)]]`
-/

namespace A352002.P1405056385566110208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352002.P1405056385566110208

namespace A352002

/-- `Δ[A007504(n)+∑[A002110(n)]]` -/
def P1405056385566110208.Spec : Prop :=
  ∀ n, P1405056385566110208.a n = A352002 (n + 1)

end A352002

/-! ## A352002.P7944021371880564718

`record[A006530(n+2)]*A006862(n)`
-/

namespace A352002.P7944021371880564718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A006862 n

end

end A352002.P7944021371880564718

namespace A352002

/-- `record[A006530(n+2)]*A006862(n)` -/
def P7944021371880564718.Spec : Prop :=
  ∀ n, P7944021371880564718.a n = A352002 (n + 1)

end A352002

/-! ## A352002.P15095091177718264704

`record[A020639(n+2)]*A006862(n)`
-/

namespace A352002.P15095091177718264704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A006862 n

end

end A352002.P15095091177718264704

namespace A352002

/-- `record[A020639(n+2)]*A006862(n)` -/
def P15095091177718264704.Spec : Prop :=
  ∀ n, P15095091177718264704.a n = A352002 (n + 1)

end A352002

/-! ## A352002.P4553770330978484518

`A008578(n+2)+A002110(n+1)`
-/

namespace A352002.P4553770330978484518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + A002110 (n + 1)

end

end A352002.P4553770330978484518

namespace A352002

/-- `A008578(n+2)+A002110(n+1)` -/
def P4553770330978484518.Spec : Prop :=
  ∀ n, P4553770330978484518.a n = A352002 (n + 1)

end A352002

/-! ## A352002.P9501607971097566775

`A182986(n+2)+A002110(n+1)`
-/

namespace A352002.P9501607971097566775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) + A002110 (n + 1)

end

end A352002.P9501607971097566775

namespace A352002

/-- `A182986(n+2)+A002110(n+1)` -/
def P9501607971097566775.Spec : Prop :=
  ∀ n, P9501607971097566775.a n = A352002 (n + 1)

end A352002

/-!
# A352003: Expansion of e.g.f. Product_{k>=1} (1 + x^prime(k))^(1/prime(k)).

The programs for A352003, there is no canonical definition to state claims against.
-/

/-! ## A352003.P142039957294955933

`A100443(n)%(A100408(n+1)+3+n)`
-/

namespace A352003.P142039957294955933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100443 n) (A100408 (n + 1) + 3 + (n : ℤ))

end

end A352003.P142039957294955933

/-! ## A352003.P16197739584062024030

`A100443(n)%A100452(A100408(n+1))`
-/

namespace A352003.P16197739584062024030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100443 n) (A100452 (A100408 (n + 1)).toNat)

end

end A352003.P16197739584062024030

/-! ## A352003.P12585999665374308193

`A327940(n)-A005843(A327941(n)-A327940(n))`
-/

namespace A352003.P12585999665374308193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327940 n - A005843 (A327941 n - A327940 n).toNat

end

end A352003.P12585999665374308193

/-!
# A352004: Expansion of e.g.f. Product_{k>=1} 1/(1 - x^prime(k))^(1/prime(k)!).

The programs for A352004, there is no canonical definition to state claims against.
-/

/-! ## A352004.P6052772509064752002

`floor(A103221(A000254(n))/A128099(n))`
-/

namespace A352004.P6052772509064752002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A103221 (A000254 n).toNat : ℚ) / (A128099 n : ℚ)⌋

end

end A352004.P6052772509064752002

/-! ## A352004.P5700508656781545836

`A127242(A027451(n+1)-A127242(n))`
-/

namespace A352004.P5700508656781545836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127242 (A027451 (n + 1) - A127242 n).toNat

end

end A352004.P5700508656781545836

/-! ## A352004.P5193751021451934716

`A003602(A255906(n))-A139353(n+2)`
-/

namespace A352004.P5193751021451934716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A255906 n).toNat - A139353 (n + 2)

end

end A352004.P5193751021451934716

/-!
# A352006: a(0) = 1; a(n) = Sum_{k=0..floor((n-1)/2)} 2^k * a(k) * a(n-2*k-1).

The programs for A352006, there is no canonical definition to state claims against.
-/

/-! ## A352006.P5641496724917505011

`or(A001045(n), A291168(n²))`
-/

namespace A352006.P5641496724917505011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001045 n) (A291168 (n ^ 2))

end

end A352006.P5641496724917505011

/-! ## A352006.P6749013717333634806

`or(A001045(n), A286326(3^n+3*(1-2^n)))`
-/

namespace A352006.P6749013717333634806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001045 n) (A286326 ((3 ^ n : ℤ) + 3 * (1 - (2 ^ n : ℤ))).toNat)

end

end A352006.P6749013717333634806

/-! ## A352006.P17755334086645157275

`or(A001045(n), A048896(A000757(n)))`
-/

namespace A352006.P17755334086645157275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001045 n) (A048896 (A000757 n).toNat)

end

end A352006.P17755334086645157275

/-! ## A352006.P4598345882482361681

`or(A001045(n), A086567(A001405(n)))`
-/

namespace A352006.P4598345882482361681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001045 n) (A086567 (A001405 n).toNat)

end

end A352006.P4598345882482361681

/-! ## A352006.P14622337259689926390

`or(A001045(n), A028234(A062495(n)))`
-/

namespace A352006.P14622337259689926390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001045 n) (A028234 (A062495 n).toNat)

end

end A352006.P14622337259689926390

/-!
# A352012: a(n) = Sum_{p|n, p prime} (n-1)!/(p-1)!.

The programs for A352012, there is no canonical definition to state claims against.
-/

/-! ## A352012.P9022689497260671420

`∑{p}[n+1, n!/A000010(#)!]`
-/

namespace A352012.P9022689497260671420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorial n : ℚ) / (Nat.factorial (A000010 p).toNat : ℚ)

end

end A352012.P9022689497260671420

/-! ## A352012.P10475700766120061165

`A001221(A000153(n+1))*A089759(3*n+2)`
-/

namespace A352012.P10475700766120061165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000153 (n + 1)).toNat * A089759 (3 * n + 2)

end

end A352012.P10475700766120061165

/-!
# A352013: a(n) = Sum_{d|n} (-1)^(n/d+1) * (n-1)!/(d-1)!.

The programs for A352013, the canonical program `A352013.P6722494435006271655` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352013 has offset 1).

The definition of A352013 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A352013.P6722494435006271655

`∑{d}[n+1, (-1)^((n+1)/#+1)*n!/(#-1)!]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A352013

/-- `∑{d}[n+1, (-1)^((n+1)/#+1)*n!/(#-1)!]` -/
def P6722494435006271655.Spec : Prop :=
  ∀ n, P6722494435006271655.a n = (A352013 (n + 1) : ℝ)

end A352013

/-!
# A352018: G.f. A(x) satisfies: 1 + x = Product_{n>=1} (1 - (-x)^n*A(x)).

The programs for A352018, there is no canonical definition to state claims against.
-/

/-! ## A352018.P15696829725311023551

`A086246(n+1)-∑[A168201(A293747(n))]`
-/

namespace A352018.P15696829725311023551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A293747 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352018.P15696829725311023551

/-! ## A352018.P16324544554735252821

`A330000(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A352018.P16324544554735252821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A330000 (a (n - 1)).toNat

end

end A352018.P16324544554735252821

/-! ## A352018.P10392728275388576741

`A177849(A048470(n+1))`
-/

namespace A352018.P10392728275388576741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A048470 (n + 1)).toNat

end

end A352018.P10392728275388576741

/-! ## A352018.P13270290447816413030

`A371167(A032160(n+1))`
-/

namespace A352018.P13270290447816413030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371167 (A032160 (n + 1)).toNat

end

end A352018.P13270290447816413030

/-! ## A352018.P15764113477278597954

`A100417(A367386(n+1))`
-/

namespace A352018.P15764113477278597954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100417 (A367386 (n + 1)).toNat

end

end A352018.P15764113477278597954

/-!
# A352019: G.f. A(x) satisfies: [x^n] A(x)^(n-1) = [x^n] -1/A(x)^n, for n > 1.

The programs for A352019, there is no canonical definition to state claims against.
-/

/-! ## A352019.P4930094515338675773

`A123108(floor((2^n)^(2*n/3))+1)`
-/

namespace A352019.P4930094515338675773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (⌊(2 ^ n : ℝ) ^ ((2 * n : ℚ) / 3 : ℝ)⌋ + 1).toNat

end

end A352019.P4930094515338675773

/-!
# A352020: G.f. A(x) satisfies: [x^n] A(x)^(2*n+1) = [x^n] 2*A(x)^(n+1), for n > 1.

The programs for A352020, there is no canonical definition to state claims against.
-/

/-! ## A352020.P2371657178674462950

`A252023(n^comp[2*n+3])`
-/

namespace A352020.P2371657178674462950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252023 (n ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A352020.P2371657178674462950

/-!
# A352021: G.f. A(x) satisfies: [x^n] A(x)^(2*n) = [x^n] ( A(x)^n + A(x)^(n+1) ), for n > 1.

The programs for A352021, there is no canonical definition to state claims against.
-/

/-! ## A352021.P15004343250068377021

`A002266(A376041(n))+1`
-/

namespace A352021.P15004343250068377021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A376041 n).toNat + 1

end

end A352021.P15004343250068377021

/-!
# A352023: Primes p such that 1/p does not contain digit '9' in its decimal expansion.

The programs for A352023, there is no canonical definition to state claims against.
-/

/-! ## A352023.P12687961482520781140

`A222007(A329667(n))`
-/

namespace A352023.P12687961482520781140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222007 (A329667 n).toNat

end

end A352023.P12687961482520781140

/-! ## A352023.P8895827413779026973

`A222007(A164362(n+1))`
-/

namespace A352023.P8895827413779026973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222007 (A164362 (n + 1)).toNat

end

end A352023.P8895827413779026973

/-! ## A352023.P14769344642435976918

`A327277(A151417(n+1))`
-/

namespace A352023.P14769344642435976918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327277 (A151417 (n + 1)).toNat

end

end A352023.P14769344642435976918

/-!
# A352025: a(n) = floor(sqrt(6*prime(n))).

The programs for A352025, the canonical program `A352025.P14630994978296992965` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352025 has offset 1).

The definition of A352025 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(6*A000040(n+1)))` (program `A352025.P14630994978296992965`, by `A352025.P14630994978296992965.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A352025.P14630994978296992965

`floor(sqrt(6*A000040(n+1)))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A352025

/-- `floor(sqrt(6*A000040(n+1)))` -/
def P14630994978296992965.Spec : Prop :=
  ∀ n, P14630994978296992965.a n = A352025 (n + 1)

theorem P14630994978296992965.correct : P14630994978296992965.Spec := by
  intro n
  simp only [A352025, Nat.add_sub_cancel]

end A352025

/-! ## A352025.P5236377188026105770

`A000196(A138636(n+1))`
-/

namespace A352025.P5236377188026105770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A138636 (n + 1)).toNat

end

end A352025.P5236377188026105770

namespace A352025

/-- `A000196(A138636(n+1))` -/
def P5236377188026105770.Spec : Prop :=
  ∀ n, P5236377188026105770.a n = A352025 (n + 1)

end A352025

/-! ## A352025.P5682406313023977167

`A000196(6*A000040(n+1))`
-/

namespace A352025.P5682406313023977167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (6 * A000040 (n + 1)).toNat

end

end A352025.P5682406313023977167

namespace A352025

/-- `A000196(6*A000040(n+1))` -/
def P5682406313023977167.Spec : Prop :=
  ∀ n, P5682406313023977167.a n = A352025 (n + 1)

end A352025

/-! ## A352025.P4603902461065694503

`floor(sqrt(6*p?[round(8*n/7)]))`
-/

namespace A352025.P4603902461065694503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (6 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A352025.P4603902461065694503

namespace A352025

/-- `floor(sqrt(6*p?[round(8*n/7)]))` -/
def P4603902461065694503.Spec : Prop :=
  ∀ n, P4603902461065694503.a n = A352025 (n + 1)

end A352025

/-! ## A352025.P8343892959394759925

`floor(sqrt(A330410(n+1)))`
-/

namespace A352025.P8343892959394759925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A330410 (n + 1))

end

end A352025.P8343892959394759925

namespace A352025

/-- `floor(sqrt(A330410(n+1)))` -/
def P8343892959394759925.Spec : Prop :=
  ∀ n, P8343892959394759925.a n = A352025 (n + 1)

end A352025

/-! ## A352025.P16779449112097740488

`floor(sqrt(Δ[6*A007504(n)]))`
-/

namespace A352025.P16779449112097740488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (n + 1) - f1 n)

end

end A352025.P16779449112097740488

namespace A352025

/-- `floor(sqrt(Δ[6*A007504(n)]))` -/
def P16779449112097740488.Spec : Prop :=
  ∀ n, P16779449112097740488.a n = A352025 (n + 1)

end A352025

/-! ## A352025.P253866507463188361

`floor(sqrt(2*A001748(n+1)))`
-/

namespace A352025.P253866507463188361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A001748 (n + 1))

end

end A352025.P253866507463188361

namespace A352025

/-- `floor(sqrt(2*A001748(n+1)))` -/
def P253866507463188361.Spec : Prop :=
  ∀ n, P253866507463188361.a n = A352025 (n + 1)

theorem P253866507463188361.correct : P253866507463188361.Spec := by
  intro n
  simp only [A352025, Nat.add_sub_cancel, A352025.P253866507463188361.a, A352025.P14630994978296992965.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A352025

/-! ## A352025.P15375292201608290701

`floor(sqrt(3*A100484(n+1)))`
-/

namespace A352025.P15375292201608290701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (3 * A100484 (n + 1))

end

end A352025.P15375292201608290701

namespace A352025

/-- `floor(sqrt(3*A100484(n+1)))` -/
def P15375292201608290701.Spec : Prop :=
  ∀ n, P15375292201608290701.a n = A352025 (n + 1)

theorem P15375292201608290701.correct : P15375292201608290701.Spec := by
  intro n
  simp only [A352025, Nat.add_sub_cancel, A352025.P15375292201608290701.a, A352025.P14630994978296992965.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A352025

/-! ## A352025.P3616335444226863692

`floor(record[sqrt(6*A006530(n+2))])`
-/

namespace A352025.P3616335444226863692
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (6 * A006530 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A352025.P3616335444226863692

namespace A352025

/-- `floor(record[sqrt(6*A006530(n+2))])` -/
def P3616335444226863692.Spec : Prop :=
  ∀ n, P3616335444226863692.a n = A352025 (n + 1)

end A352025

/-! ## A352025.P5429657054986016887

`floor(sqrt(6*record[A020639(n+2)]))`
-/

namespace A352025.P5429657054986016887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (6 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A352025.P5429657054986016887

namespace A352025

/-- `floor(sqrt(6*record[A020639(n+2)]))` -/
def P5429657054986016887.Spec : Prop :=
  ∀ n, P5429657054986016887.a n = A352025 (n + 1)

end A352025

/-! ## A352025.P8936791758698830312

`A172471(A063534(n+1))`
-/

namespace A352025.P8936791758698830312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A063534 (n + 1)).toNat

end

end A352025.P8936791758698830312

namespace A352025

/-- `A172471(A063534(n+1))` -/
def P8936791758698830312.Spec : Prop :=
  ∀ n, P8936791758698830312.a n = A352025 (n + 1)

end A352025

/-! ## A352025.P10279256046268108051

`A202304(A100484(n+1))`
-/

namespace A352025.P10279256046268108051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A100484 (n + 1)).toNat

end

end A352025.P10279256046268108051

namespace A352025

/-- `A202304(A100484(n+1))` -/
def P10279256046268108051.Spec : Prop :=
  ∀ n, P10279256046268108051.a n = A352025 (n + 1)

end A352025

/-! ## A352025.P15547125894854776674

`A202304(A001747(n+2))`
-/

namespace A352025.P15547125894854776674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A001747 (n + 2)).toNat

end

end A352025.P15547125894854776674

namespace A352025

/-- `A202304(A001747(n+2))` -/
def P15547125894854776674.Spec : Prop :=
  ∀ n, P15547125894854776674.a n = A352025 (n + 1)

end A352025

/-! ## A352025.P550872132514061425

`A103128(A001748(n+1))`
-/

namespace A352025.P550872132514061425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A001748 (n + 1)).toNat

end

end A352025.P550872132514061425

namespace A352025

/-- `A103128(A001748(n+1))` -/
def P550872132514061425.Spec : Prop :=
  ∀ n, P550872132514061425.a n = A352025 (n + 1)

end A352025

/-! ## A352025.P685012801431863910

`A103128(A112773(n+2))`
-/

namespace A352025.P685012801431863910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A112773 (n + 2)).toNat

end

end A352025.P685012801431863910

namespace A352025

/-- `A103128(A112773(n+2))` -/
def P685012801431863910.Spec : Prop :=
  ∀ n, P685012801431863910.a n = A352025 (n + 1)

end A352025

/-! ## A352025.P4236193303405294321

`A226164(A288313(n+2))`
-/

namespace A352025.P4236193303405294321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226164 (A288313 (n + 2)).toNat

end

end A352025.P4236193303405294321

namespace A352025

/-- `A226164(A288313(n+2))` -/
def P4236193303405294321.Spec : Prop :=
  ∀ n, P4236193303405294321.a n = A352025 (n + 1)

end A352025

/-! ## A352025.P14160244493427455972

`A000196(A330410(n+1))`
-/

namespace A352025.P14160244493427455972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A330410 (n + 1)).toNat

end

end A352025.P14160244493427455972

namespace A352025

/-- `A000196(A330410(n+1))` -/
def P14160244493427455972.Spec : Prop :=
  ∀ n, P14160244493427455972.a n = A352025 (n + 1)

end A352025

/-! ## A352025.P11992190592904990652

`A000196(2*A001748(n+1))`
-/

namespace A352025.P11992190592904990652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * A001748 (n + 1)).toNat

end

end A352025.P11992190592904990652

namespace A352025

/-- `A000196(2*A001748(n+1))` -/
def P11992190592904990652.Spec : Prop :=
  ∀ n, P11992190592904990652.a n = A352025 (n + 1)

end A352025

/-! ## A352025.P7872432986572334196

`A000196(A001748(n+1)+A001748(n+1))`
-/

namespace A352025.P7872432986572334196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A001748 (n + 1) + A001748 (n + 1)).toNat

end

end A352025.P7872432986572334196

namespace A352025

/-- `A000196(A001748(n+1)+A001748(n+1))` -/
def P7872432986572334196.Spec : Prop :=
  ∀ n, P7872432986572334196.a n = A352025 (n + 1)

end A352025

/-!
# A352027: a(n) = binomial(2*n-1,n) - n*(n-1) - 1.

The programs for A352027, the canonical program `A352027.P3046958745770125700` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352027 has offset 1).

The definition of A352027 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*(n+1)-1, n+1)-(n+1)*n-1` (program `A352027.P3046958745770125700`, by `A352027.P3046958745770125700.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A352027.P3046958745770125700

`C(2*(n+1)-1, n+1)-(n+1)*n-1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A352027

/-- `C(2*(n+1)-1, n+1)-(n+1)*n-1` -/
def P3046958745770125700.Spec : Prop :=
  ∀ n, P3046958745770125700.a n = A352027 (n + 1)

theorem P3046958745770125700.correct : P3046958745770125700.Spec := by
  intro n
  simp only [A352027, Nat.add_sub_cancel]

end A352027

/-! ## A352027.P3103837059362117490

`∏[4-2/(n+1)]/2-(∑[2*n]+1)`
-/

namespace A352027.P3103837059362117490
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 2 - ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℚ)

end

end A352027.P3103837059362117490

namespace A352027

/-- `∏[4-2/(n+1)]/2-(∑[2*n]+1)` -/
def P3103837059362117490.Spec : Prop :=
  ∀ n, P3103837059362117490.a n = (A352027 (n + 1) : ℚ)

end A352027

/-! ## A352027.P2567535346944782358

`∑[Δ[(4-2/n)*a(n-1)]-2*n]` with `a(0)=1, a(1)=1`
-/

namespace A352027.P2567535346944782358
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  (4 - 2 / (n : ℚ)) * f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (2 * n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352027.P2567535346944782358

namespace A352027

/-- `∑[Δ[(4-2/n)*a(n-1)]-2*n]` -/
def P2567535346944782358.Spec : Prop :=
  ∀ n, P2567535346944782358.a n = (A352027 (n + 1) : ℚ)

end A352027

/-! ## A352027.P1864772858444310282

`abs((n+1)²-A001405(2*n+1)-n)`
-/

namespace A352027.P1864772858444310282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 1) ^ 2 : ℤ) - A001405 (2 * n + 1) - (n : ℤ)|

end

end A352027.P1864772858444310282

namespace A352027

/-- `abs((n+1)²-A001405(2*n+1)-n)` -/
def P1864772858444310282.Spec : Prop :=
  ∀ n, P1864772858444310282.a n = A352027 (n + 1)

end A352027

/-! ## A352027.P18082252972653732483

`abs(∏[4-2/(n+1)]/2-1-A002378(n))`
-/

namespace A352027.P18082252972653732483
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(∏ j ∈ Finset.range (n + 1), f1 j) / 2 - 1 - (A002378 n : ℚ)|

end

end A352027.P18082252972653732483

namespace A352027

/-- `abs(∏[4-2/(n+1)]/2-1-A002378(n))` -/
def P18082252972653732483.Spec : Prop :=
  ∀ n, P18082252972653732483.a n = (A352027 (n + 1) : ℚ)

end A352027

/-! ## A352027.P711640928024639729

`(A030662(n+1)-A001844(n))/2`
-/

namespace A352027.P711640928024639729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030662 (n + 1) - A001844 n : ℚ) / 2

end

end A352027.P711640928024639729

namespace A352027

/-- `(A030662(n+1)-A001844(n))/2` -/
def P711640928024639729.Spec : Prop :=
  ∀ n, P711640928024639729.a n = (A352027 (n + 1) : ℚ)

end A352027

/-! ## A352027.P16945305351911137867

`∑[A097613(n+1)-A004275(n+1)]`
-/

namespace A352027.P16945305351911137867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097613 (n + 1) - A004275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352027.P16945305351911137867

namespace A352027

/-- `∑[A097613(n+1)-A004275(n+1)]` -/
def P16945305351911137867.Spec : Prop :=
  ∀ n, P16945305351911137867.a n = A352027 (n + 1)

end A352027

/-! ## A352027.P16339031107163889674

`abs((n+1)²-C(2*n+1, n)-n)`
-/

namespace A352027.P16339031107163889674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 1) ^ 2 : ℤ) - (Nat.choose (2 * n + 1) n : ℤ) - (n : ℤ)|

end

end A352027.P16339031107163889674

namespace A352027

/-- `abs((n+1)²-C(2*n+1, n)-n)` -/
def P16339031107163889674.Spec : Prop :=
  ∀ n, P16339031107163889674.a n = A352027 (n + 1)

end A352027

/-!
# A352028: a(n) = Product p_{n*i}^e_i if the prime factorization of n is Product p_i^e_i.

The programs for A352028, there is no canonical definition to state claims against.
-/

/-! ## A352028.P6496861901521815516

`A352001(∑[4*n]+1)`
-/

namespace A352028.P6496861901521815516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352001 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A352028.P6496861901521815516

/-! ## A352028.P17155991687223155090

`or(1, A352001(A001844(n)))`
-/

namespace A352028.P17155991687223155090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A352001 (A001844 n).toNat)

end

end A352028.P17155991687223155090

/-! ## A352028.P5330935280871077653

`A352001(A001844(n))+A000007(n+1)`
-/

namespace A352028.P5330935280871077653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352001 (A001844 n).toNat + A000007 (n + 1)

end

end A352028.P5330935280871077653

/-! ## A352028.P15954729507712331621

`A352001(A001844(n))+A000038(n+1)`
-/

namespace A352028.P15954729507712331621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352001 (A001844 n).toNat + A000038 (n + 1)

end

end A352028.P15954729507712331621

/-! ## A352028.P9307972840739710742

`A007318(C(2, n))*A352001(A001844(n))`
-/

namespace A352028.P9307972840739710742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A352001 (A001844 n).toNat

end

end A352028.P9307972840739710742

/-! ## A352028.P17696503074580510620

`and(1, A007318(n))!*A352001(A001844(n))`
-/

namespace A352028.P17696503074580510620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A007318 n)).toNat : ℤ) * A352001 (A001844 n).toNat

end

end A352028.P17696503074580510620

/-! ## A352028.P12772769745861154174

`A000041(C(n, n²))*A352001(A001844(n))`
-/

namespace A352028.P12772769745861154174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A352001 (A001844 n).toNat

end

end A352028.P12772769745861154174

/-! ## A352028.P2218379337071560170

`A352001(A001844(n))+A008683(4*(n+1))`
-/

namespace A352028.P2218379337071560170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352001 (A001844 n).toNat + A008683 (4 * (n + 1))

end

end A352028.P2218379337071560170

/-! ## A352028.P14838209633403208891

`A014963(10*(n+1))*A352001(A001844(n))`
-/

namespace A352028.P14838209633403208891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A352001 (A001844 n).toNat

end

end A352028.P14838209633403208891

/-! ## A352028.P142542252974902647

`A352001(A001844(n))^(A000040(n+1)%2)`
-/

namespace A352028.P142542252974902647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352001 (A001844 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A352028.P142542252974902647

/-!
# A352030: Numbers n for which every part of the symmetric representation of sigma(n) has maximum width 2.

The programs for A352030, there is no canonical definition to state claims against.
-/

/-! ## A352030.P10187371112060287701

`filter[A375611(n+1), A210455(#)]`
-/

namespace A352030.P10187371112060287701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A210455 (f1 j).toNat = 1) n)

end

end A352030.P10187371112060287701

/-! ## A352030.P18246786271595532885

`∩[A005835(n+1), A375611(n+1)]`
-/

namespace A352030.P18246786271595532885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352030.P18246786271595532885

/-! ## A352030.P2536048606974822796

`∩[A157932(n+1), A375611(n+1)]`
-/

namespace A352030.P2536048606974822796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352030.P2536048606974822796

/-! ## A352030.P8262600650256715164

`lt[A034799(A033630(n)), A033630(n)]`
-/

namespace A352030.P8262600650256715164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034799 (A033630 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352030.P8262600650256715164

/-! ## A352030.P7660355802236860356

`eq[A164880(n+1), A266227(n+1)]+1`
-/

namespace A352030.P7660355802236860356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266227 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A352030.P7660355802236860356

/-!
# A352031: Sum of the cubes of the odd proper divisors of n.

The programs for A352031, the canonical program `A352031.P2060575896999822082` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352031 has offset 1).

The definition of A352031 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051000, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A352031.P2060575896999822082

`A051000(n+1)-(n+1)^3*A000035(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A352031

/-- `A051000(n+1)-(n+1)^3*A000035(n+1)` -/
def P2060575896999822082.Spec : Prop :=
  ∀ n, P2060575896999822082.a n = A352031 (n + 1)

theorem P2060575896999822082.correct : P2060575896999822082.Spec := by
  intro n
  simp only [A352031, Nat.add_sub_cancel]

end A352031

/-! ## A352031.P4510294686747651548

`(∑{d}[n+1, #^3]/∑{d}[and(n+1, -(n+1)), #^3])%(lcm(6, (n+1)^3)/6)`
-/

namespace A352031.P4510294686747651548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), d ^ 3 : ℕ) : ℚ) / ((∑ d ∈ Nat.divisors (f2 n).natAbs, d ^ 3 : ℕ) : ℚ))) (SequenceMachineLib.roundAway ((Nat.lcm 6 ((n + 1) ^ 3) : ℚ) / 6))

end

end A352031.P4510294686747651548

namespace A352031

/-- `(∑{d}[n+1, #^3]/∑{d}[and(n+1, -(n+1)), #^3])%(lcm(6, (n+1)^3)/6)` -/
def P4510294686747651548.Spec : Prop :=
  ∀ n, P4510294686747651548.a n = A352031 (n + 1)

end A352031

/-! ## A352031.P3542867761671349649

`A051000(n+1)%((n+1)^3)`
-/

namespace A352031.P3542867761671349649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051000 (n + 1)) ((n + 1) ^ 3 : ℤ)

end

end A352031.P3542867761671349649

namespace A352031

/-- `A051000(n+1)%((n+1)^3)` -/
def P3542867761671349649.Spec : Prop :=
  ∀ n, P3542867761671349649.a n = A352031 (n + 1)

end A352031

/-! ## A352031.P1466433486299296533

`A045823(floor(n/(xor(n, n+1)+1)))%(lcm(6, (n+1)^3)/6)`
-/

namespace A352031.P1466433486299296533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045823 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat) (SequenceMachineLib.roundAway ((Nat.lcm 6 ((n + 1) ^ 3) : ℚ) / 6))

end

end A352031.P1466433486299296533

namespace A352031

/-- `A045823(floor(n/(xor(n, n+1)+1)))%(lcm(6, (n+1)^3)/6)` -/
def P1466433486299296533.Spec : Prop :=
  ∀ n, P1466433486299296533.a n = A352031 (n + 1)

end A352031

/-! ## A352031.P15212657430145034632

`A045823(A025480(n))%((n+1)^3)`
-/

namespace A352031.P15212657430145034632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045823 (A025480 n).toNat) ((n + 1) ^ 3 : ℤ)

end

end A352031.P15212657430145034632

namespace A352031

/-- `A045823(A025480(n))%((n+1)^3)` -/
def P15212657430145034632.Spec : Prop :=
  ∀ n, P15212657430145034632.a n = A352031 (n + 1)

end A352031

/-! ## A352031.P3486657153893844699

`abs(-A051000(n+1)%A190623(n+1))`
-/

namespace A352031.P3486657153893844699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (-A051000 (n + 1)) (A190623 (n + 1))|

end

end A352031.P3486657153893844699

namespace A352031

/-- `abs(-A051000(n+1)%A190623(n+1))` -/
def P3486657153893844699.Spec : Prop :=
  ∀ n, P3486657153893844699.a n = A352031 (n + 1)

end A352031

/-! ## A352031.P1955525965315512371

`∑{d}[A000265(n+1), A000578(#%(n+1))]`
-/

namespace A352031.P1955525965315512371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000578 (d % (n + 1))

end

end A352031.P1955525965315512371

namespace A352031

/-- `∑{d}[A000265(n+1), A000578(#%(n+1))]` -/
def P1955525965315512371.Spec : Prop :=
  ∀ n, P1955525965315512371.a n = A352031 (n + 1)

end A352031

/-! ## A352031.P4535210347852908019

`∑{d}[n+1, A051000(#)*A157658((n+1)/#)]`
-/

namespace A352031.P4535210347852908019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051000 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A352031.P4535210347852908019

namespace A352031

/-- `∑{d}[n+1, A051000(#)*A157658((n+1)/#)]` -/
def P4535210347852908019.Spec : Prop :=
  ∀ n, P4535210347852908019.a n = A352031 (n + 1)

end A352031

/-! ## A352031.P1767976053765287429

`A051000(n+1)-A000578(A193356(n+1))`
-/

namespace A352031.P1767976053765287429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051000 (n + 1) - A000578 (A193356 (n + 1)).toNat

end

end A352031.P1767976053765287429

namespace A352031

/-- `A051000(n+1)-A000578(A193356(n+1))` -/
def P1767976053765287429.Spec : Prop :=
  ∀ n, P1767976053765287429.a n = A352031 (n + 1)

end A352031

/-! ## A352031.P3522649579982913104

`A001158((n+1)/2^val(n+1, 2))%Δ[A154323(n)]`
-/

namespace A352031.P3522649579982913104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat) (f1 (n + 1) - f1 n)

end

end A352031.P3522649579982913104

namespace A352031

/-- `A001158((n+1)/2^val(n+1, 2))%Δ[A154323(n)]` -/
def P3522649579982913104.Spec : Prop :=
  ∀ n, P3522649579982913104.a n = A352031 (n + 1)

end A352031

/-! ## A352031.P17739840558363645982

`A001158(A000265(n+1))%Δ[A154323(n)]`
-/

namespace A352031.P17739840558363645982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001158 (A000265 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A352031.P17739840558363645982

namespace A352031

/-- `A001158(A000265(n+1))%Δ[A154323(n)]` -/
def P17739840558363645982.Spec : Prop :=
  ∀ n, P17739840558363645982.a n = A352031 (n + 1)

end A352031

/-! ## A352031.P2312459298475954252

`A347162(A097053(n+1))`
-/

namespace A352031.P2312459298475954252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347162 (A097053 (n + 1)).toNat

end

end A352031.P2312459298475954252

namespace A352031

/-- `A347162(A097053(n+1))` -/
def P2312459298475954252.Spec : Prop :=
  ∀ n, P2312459298475954252.a n = A352031 (n + 1)

end A352031

/-!
# A352032: Sum of the 4th powers of the odd proper divisors of n.

The programs for A352032, the canonical program `A352032.P7584704654108786312` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352032 has offset 1).

The definition of A352032 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051001, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A352032.P7584704654108786312

`A051001(n+1)-(n+1)^4*A000035(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A352032

/-- `A051001(n+1)-(n+1)^4*A000035(n+1)` -/
def P7584704654108786312.Spec : Prop :=
  ∀ n, P7584704654108786312.a n = A352032 (n + 1)

theorem P7584704654108786312.correct : P7584704654108786312.Spec := by
  intro n
  simp only [A352032, Nat.add_sub_cancel]

end A352032

/-! ## A352032.P5430358482776238876

`A051001(n+1)%((n+1)^4)`
-/

namespace A352032.P5430358482776238876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051001 (n + 1)) ((n + 1) ^ 4 : ℤ)

end

end A352032.P5430358482776238876

namespace A352032

/-- `A051001(n+1)%((n+1)^4)` -/
def P5430358482776238876.Spec : Prop :=
  ∀ n, P5430358482776238876.a n = A352032 (n + 1)

end A352032

/-! ## A352032.P10975905631012446226

`A001159(A000265(n+1))%((n+1)^4)`
-/

namespace A352032.P10975905631012446226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001159 (A000265 (n + 1)).toNat) ((n + 1) ^ 4 : ℤ)

end

end A352032.P10975905631012446226

namespace A352032

/-- `A001159(A000265(n+1))%((n+1)^4)` -/
def P10975905631012446226.Spec : Prop :=
  ∀ n, P10975905631012446226.a n = A352032 (n + 1)

end A352032

/-! ## A352032.P7646433696942718676

`∑{d}[A000265(n+1), #²²]%A081351(n)²`
-/

namespace A352032.P7646433696942718676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f1 n).natAbs, (d ^ 2) ^ 2 : ℕ) : ℤ) (A081351 n ^ 2)

end

end A352032.P7646433696942718676

namespace A352032

/-- `∑{d}[A000265(n+1), #²²]%A081351(n)²` -/
def P7646433696942718676.Spec : Prop :=
  ∀ n, P7646433696942718676.a n = A352032 (n + 1)

end A352032

/-! ## A352032.P3480437762808489017

`∑{d}[n+1, A051001(#)*A157658((n+1)/#)]`
-/

namespace A352032.P3480437762808489017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051001 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A352032.P3480437762808489017

namespace A352032

/-- `∑{d}[n+1, A051001(#)*A157658((n+1)/#)]` -/
def P3480437762808489017.Spec : Prop :=
  ∀ n, P3480437762808489017.a n = A352032 (n + 1)

end A352032

/-! ## A352032.P16819998413493871674

`A001159((n+1)/2^val(n+1, 2))%A081351(n)²`
-/

namespace A352032.P16819998413493871674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001159 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat) (A081351 n ^ 2)

end

end A352032.P16819998413493871674

namespace A352032

/-- `A001159((n+1)/2^val(n+1, 2))%A081351(n)²` -/
def P16819998413493871674.Spec : Prop :=
  ∀ n, P16819998413493871674.a n = A352032 (n + 1)

end A352032

/-! ## A352032.P1422356617555059220

`A284900(A000265(n+1))%A000583(n+1)`
-/

namespace A352032.P1422356617555059220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284900 (A000265 (n + 1)).toNat) (A000583 (n + 1))

end

end A352032.P1422356617555059220

namespace A352032

/-- `A284900(A000265(n+1))%A000583(n+1)` -/
def P1422356617555059220.Spec : Prop :=
  ∀ n, P1422356617555059220.a n = A352032 (n + 1)

end A352032

/-! ## A352032.P3881694232866800021

`A051001(n+1)-A000035(n+1)*A000583(n+1)`
-/

namespace A352032.P3881694232866800021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051001 (n + 1) - A000035 (n + 1) * A000583 (n + 1)

end

end A352032.P3881694232866800021

namespace A352032

/-- `A051001(n+1)-A000035(n+1)*A000583(n+1)` -/
def P3881694232866800021.Spec : Prop :=
  ∀ n, P3881694232866800021.a n = A352032 (n + 1)

theorem P3881694232866800021.correct : P3881694232866800021.Spec := by
  intro n
  simp only [A352032, Nat.add_sub_cancel, A352032.P3881694232866800021.a, A352032.P7584704654108786312.a, A000035, A000035.P2023072528413494694.a, A000583, A000583.P14547500281748394449.a, A051001, A051001.P2883852462470465960.a, A000265, A000265.P16482698636471710744.a, A001159, A001159.P9898895530264138649.f1, A001159.P9898895530264138649.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A352032

/-! ## A352032.P14760277189118660725

`∑{d}[A028234(2*(n+1)), #²²]%A081351(n)²`
-/

namespace A352032.P14760277189118660725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f1 n).natAbs, (d ^ 2) ^ 2 : ℕ) : ℤ) (A081351 n ^ 2)

end

end A352032.P14760277189118660725

namespace A352032

/-- `∑{d}[A028234(2*(n+1)), #²²]%A081351(n)²` -/
def P14760277189118660725.Spec : Prop :=
  ∀ n, P14760277189118660725.a n = A352032 (n + 1)

end A352032

/-! ## A352032.P7241586878456661965

`A347172(A097053(n+1))`
-/

namespace A352032.P7241586878456661965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347172 (A097053 (n + 1)).toNat

end

end A352032.P7241586878456661965

namespace A352032

/-- `A347172(A097053(n+1))` -/
def P7241586878456661965.Spec : Prop :=
  ∀ n, P7241586878456661965.a n = A352032 (n + 1)

end A352032

/-! ## A352032.P13203439557515911441

`A328271(A191871(n+1))%A081351(n)²`
-/

namespace A352032.P13203439557515911441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328271 (A191871 (n + 1)).toNat) (A081351 n ^ 2)

end

end A352032.P13203439557515911441

namespace A352032

/-- `A328271(A191871(n+1))%A081351(n)²` -/
def P13203439557515911441.Spec : Prop :=
  ∀ n, P13203439557515911441.a n = A352032 (n + 1)

end A352032

/-!
# A352033: Sum of the 5th powers of the odd proper divisors of n.

The programs for A352033, the canonical program `A352033.P10755563011180066533` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352033 has offset 1).

The definition of A352033 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051002, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A352033.P10755563011180066533

`A051002(n+1)-(n+1)^5*A000035(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A352033

/-- `A051002(n+1)-(n+1)^5*A000035(n+1)` -/
def P10755563011180066533.Spec : Prop :=
  ∀ n, P10755563011180066533.a n = A352033 (n + 1)

theorem P10755563011180066533.correct : P10755563011180066533.Spec := by
  intro n
  simp only [A352033, Nat.add_sub_cancel]

end A352033

/-! ## A352033.P17820713782512467027

`A051002(n+1)%((n+1)^5)`
-/

namespace A352033.P17820713782512467027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051002 (n + 1)) ((n + 1) ^ 5 : ℤ)

end

end A352033.P17820713782512467027

namespace A352033

/-- `A051002(n+1)%((n+1)^5)` -/
def P17820713782512467027.Spec : Prop :=
  ∀ n, P17820713782512467027.a n = A352033 (n + 1)

end A352033

/-! ## A352033.P6071743937781345196

`∑{d}[A000265(n+1), (#%(n+1))^5]`
-/

namespace A352033.P6071743937781345196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d % (n + 1)) ^ 5

end

end A352033.P6071743937781345196

namespace A352033

/-- `∑{d}[A000265(n+1), (#%(n+1))^5]` -/
def P6071743937781345196.Spec : Prop :=
  ∀ n, (P6071743937781345196.a n : ℤ) = A352033 (n + 1)

end A352033

/-! ## A352033.P17684230001946465397

`∑{d}[n+1, A051002(#)*A157658((n+1)/#)]`
-/

namespace A352033.P17684230001946465397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051002 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A352033.P17684230001946465397

namespace A352033

/-- `∑{d}[n+1, A051002(#)*A157658((n+1)/#)]` -/
def P17684230001946465397.Spec : Prop :=
  ∀ n, P17684230001946465397.a n = A352033 (n + 1)

end A352033

/-! ## A352033.P11366453794177689882

`A284926((n+1)/2^val(n+1, 2))%A000584(n+1)`
-/

namespace A352033.P11366453794177689882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284926 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat) (A000584 (n + 1))

end

end A352033.P11366453794177689882

namespace A352033

/-- `A284926((n+1)/2^val(n+1, 2))%A000584(n+1)` -/
def P11366453794177689882.Spec : Prop :=
  ∀ n, P11366453794177689882.a n = A352033 (n + 1)

end A352033

/-! ## A352033.P13773145348261400374

`A001160(A000265(n+1))%A000584(n+1)`
-/

namespace A352033.P13773145348261400374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001160 (A000265 (n + 1)).toNat) (A000584 (n + 1))

end

end A352033.P13773145348261400374

namespace A352033

/-- `A001160(A000265(n+1))%A000584(n+1)` -/
def P13773145348261400374.Spec : Prop :=
  ∀ n, P13773145348261400374.a n = A352033 (n + 1)

end A352033

/-! ## A352033.P2925411856495360758

`A081864(A003602(n+1))%A000584(n+1)`
-/

namespace A352033.P2925411856495360758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081864 (A003602 (n + 1)).toNat) (A000584 (n + 1))

end

end A352033.P2925411856495360758

namespace A352033

/-- `A081864(A003602(n+1))%A000584(n+1)` -/
def P2925411856495360758.Spec : Prop :=
  ∀ n, P2925411856495360758.a n = A352033 (n + 1)

end A352033

/-!
# A352034: Sum of the 6th powers of the odd proper divisors of n.

The programs for A352034, the canonical program `A352034.P15417253199617285294` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352034 has offset 1).

The definition of A352034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352034.P9118528639780147465

`∑{d}[A000265(n+1), #*(#%(n+1))^5]`
-/

namespace A352034.P9118528639780147465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d * (d % (n + 1)) ^ 5

end

end A352034.P9118528639780147465

namespace A352034

/-- `∑{d}[A000265(n+1), #*(#%(n+1))^5]` -/
def P9118528639780147465.Spec : Prop :=
  ∀ n, (P9118528639780147465.a n : ℤ) = A352034 (n + 1)

end A352034

/-! ## A352034.P15417253199617285294

`A321810(n+1)%(lcm(6, (n+1)^3)/6)²`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A352034

/-- `A321810(n+1)%(lcm(6, (n+1)^3)/6)²` -/
def P15417253199617285294.Spec : Prop :=
  ∀ n, P15417253199617285294.a n = A352034 (n + 1)

theorem P15417253199617285294.correct : P15417253199617285294.Spec := by
  intro n
  simp only [A352034, Nat.add_sub_cancel]

end A352034

/-! ## A352034.P4978216321997506877

`A013954(A000265(n+1))%((n+1)^6)`
-/

namespace A352034.P4978216321997506877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013954 (A000265 (n + 1)).toNat) ((n + 1) ^ 6 : ℤ)

end

end A352034.P4978216321997506877

namespace A352034

/-- `A013954(A000265(n+1))%((n+1)^6)` -/
def P4978216321997506877.Spec : Prop :=
  ∀ n, P4978216321997506877.a n = A352034 (n + 1)

end A352034

/-! ## A352034.P7495822606614781212

`A321810(n+1)-A001014(C(xor(1, n), n))`
-/

namespace A352034.P7495822606614781212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321810 (n + 1) - A001014 (Nat.choose (Nat.xor 1 n) n)

end

end A352034.P7495822606614781212

namespace A352034

/-- `A321810(n+1)-A001014(C(xor(1, n), n))` -/
def P7495822606614781212.Spec : Prop :=
  ∀ n, P7495822606614781212.a n = A352034 (n + 1)

end A352034

/-! ## A352034.P13339719773006181430

`A087508(A352035(n+1))`
-/

namespace A352034.P13339719773006181430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 (A352035 (n + 1)).toNat

end

end A352034.P13339719773006181430

namespace A352034

/-- `A087508(A352035(n+1))` -/
def P13339719773006181430.Spec : Prop :=
  ∀ n, P13339719773006181430.a n = A352034 (n + 1)

end A352034

/-!
# A352035: Sum of the 7th powers of the odd proper divisors of n.

The programs for A352035, the canonical program `A352035.P6837907332843621546` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352035 has offset 1).

The definition of A352035 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321811, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A352035.P6837907332843621546

`A321811(n+1)-(n+1)^7*A000035(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A352035

/-- `A321811(n+1)-(n+1)^7*A000035(n+1)` -/
def P6837907332843621546.Spec : Prop :=
  ∀ n, P6837907332843621546.a n = A352035 (n + 1)

theorem P6837907332843621546.correct : P6837907332843621546.Spec := by
  intro n
  simp only [A352035, Nat.add_sub_cancel]

end A352035

/-! ## A352035.P12919876970250570103

`A321811(n+1)%∑[A022523(n)]`
-/

namespace A352035.P12919876970250570103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321811 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A352035.P12919876970250570103

namespace A352035

/-- `A321811(n+1)%∑[A022523(n)]` -/
def P12919876970250570103.Spec : Prop :=
  ∀ n, P12919876970250570103.a n = A352035 (n + 1)

end A352035

/-! ## A352035.P2313403361326929540

`∑{d}[n+1, A157658(#)*A321811((n+1)/#)]`
-/

namespace A352035.P2313403361326929540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A321811 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A352035.P2313403361326929540

namespace A352035

/-- `∑{d}[n+1, A157658(#)*A321811((n+1)/#)]` -/
def P2313403361326929540.Spec : Prop :=
  ∀ n, P2313403361326929540.a n = A352035 (n + 1)

end A352035

/-! ## A352035.P3606124680953929548

`A087508(A352036(n+1))`
-/

namespace A352035.P3606124680953929548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 (A352036 (n + 1)).toNat

end

end A352035.P3606124680953929548

namespace A352035

/-- `A087508(A352036(n+1))` -/
def P3606124680953929548.Spec : Prop :=
  ∀ n, P3606124680953929548.a n = A352035 (n + 1)

end A352035

/-! ## A352035.P1147588695817579378

`A112652(A352034(n+1))`
-/

namespace A352035.P1147588695817579378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 (A352034 (n + 1)).toNat

end

end A352035.P1147588695817579378

namespace A352035

/-- `A112652(A352034(n+1))` -/
def P1147588695817579378.Spec : Prop :=
  ∀ n, P1147588695817579378.a n = A352035 (n + 1)

end A352035

/-!
# A352036: Sum of the 8th powers of the odd proper divisors of n.

The programs for A352036, the canonical program `A352036.P1158903838014653672` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352036 has offset 1).

The definition of A352036 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321812, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A352036.P1158903838014653672

`A321812(n+1)-(n+1)^8*A000035(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A352036

/-- `A321812(n+1)-(n+1)^8*A000035(n+1)` -/
def P1158903838014653672.Spec : Prop :=
  ∀ n, P1158903838014653672.a n = A352036 (n + 1)

theorem P1158903838014653672.correct : P1158903838014653672.Spec := by
  intro n
  simp only [A352036, Nat.add_sub_cancel]

end A352036

/-! ## A352036.P3287239057156726123

`A321812(n+1)%((n+1)^8)`
-/

namespace A352036.P3287239057156726123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321812 (n + 1)) ((n + 1) ^ 8 : ℤ)

end

end A352036.P3287239057156726123

namespace A352036

/-- `A321812(n+1)%((n+1)^8)` -/
def P3287239057156726123.Spec : Prop :=
  ∀ n, P3287239057156726123.a n = A352036 (n + 1)

end A352036

/-! ## A352036.P7417457455359606602

`A060372((∑{d}[(n+1)/2^val(n+1, 2), #]%(n+1))^6)`
-/

namespace A352036.P7417457455359606602
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 (((∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d) % (n + 1)) ^ 6)

end

end A352036.P7417457455359606602

namespace A352036

/-- `A060372((∑{d}[(n+1)/2^val(n+1, 2), #]%(n+1))^6)` -/
def P7417457455359606602.Spec : Prop :=
  ∀ n, P7417457455359606602.a n = A352036 (n + 1)

end A352036

/-! ## A352036.P16009522719103910692

`A130485(A352035(n+1))`
-/

namespace A352036.P16009522719103910692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130485 (A352035 (n + 1)).toNat

end

end A352036.P16009522719103910692

namespace A352036

/-- `A130485(A352035(n+1))` -/
def P16009522719103910692.Spec : Prop :=
  ∀ n, P16009522719103910692.a n = A352036 (n + 1)

end A352036

/-! ## A352036.P12575809728582181631

`A349395(A352037(n+1)+3)`
-/

namespace A352036.P12575809728582181631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349395 (A352037 (n + 1) + 3).toNat

end

end A352036.P12575809728582181631

namespace A352036

/-- `A349395(A352037(n+1)+3)` -/
def P12575809728582181631.Spec : Prop :=
  ∀ n, P12575809728582181631.a n = A352036 (n + 1)

end A352036

/-!
# A352037: Sum of the 9th powers of the odd proper divisors of n.

The programs for A352037, the canonical program `A352037.P2155073876745302495` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352037 has offset 1).

The definition of A352037 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321813, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A352037.P2155073876745302495

`A321813(n+1)-(n+1)^9*A000035(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A352037

/-- `A321813(n+1)-(n+1)^9*A000035(n+1)` -/
def P2155073876745302495.Spec : Prop :=
  ∀ n, P2155073876745302495.a n = A352037 (n + 1)

theorem P2155073876745302495.correct : P2155073876745302495.Spec := by
  intro n
  simp only [A352037, Nat.add_sub_cancel]

end A352037

/-! ## A352037.P5865451845067830304

`A321813(n+1)-A001017(A193356(n+1))`
-/

namespace A352037.P5865451845067830304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321813 (n + 1) - A001017 (A193356 (n + 1)).toNat

end

end A352037.P5865451845067830304

namespace A352037

/-- `A321813(n+1)-A001017(A193356(n+1))` -/
def P5865451845067830304.Spec : Prop :=
  ∀ n, P5865451845067830304.a n = A352037 (n + 1)

end A352037

/-! ## A352037.P11597091973710631428

`A112652(A352036(n+1))`
-/

namespace A352037.P11597091973710631428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 (A352036 (n + 1)).toNat

end

end A352037.P11597091973710631428

namespace A352037

/-- `A112652(A352036(n+1))` -/
def P11597091973710631428.Spec : Prop :=
  ∀ n, P11597091973710631428.a n = A352037 (n + 1)

end A352037

/-! ## A352037.P6376103515968818617

`A230240(A352036(n+1)+1)`
-/

namespace A352037.P6376103515968818617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230240 (A352036 (n + 1) + 1).toNat

end

end A352037.P6376103515968818617

namespace A352037

/-- `A230240(A352036(n+1)+1)` -/
def P6376103515968818617.Spec : Prop :=
  ∀ n, P6376103515968818617.a n = A352037 (n + 1)

end A352037

/-!
# A352038: Sum of the 10th powers of the odd proper divisors of n.

The programs for A352038, the canonical program `A352038.P14142010787348576659` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352038 has offset 1).

The definition of A352038 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321814, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A352038.P14142010787348576659

`A321814(n+1)-(n+1)^10*A000035(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A352038

/-- `A321814(n+1)-(n+1)^10*A000035(n+1)` -/
def P14142010787348576659.Spec : Prop :=
  ∀ n, P14142010787348576659.a n = A352038 (n + 1)

theorem P14142010787348576659.correct : P14142010787348576659.Spec := by
  intro n
  simp only [A352038, Nat.add_sub_cancel]

end A352038

/-! ## A352038.P7036957073090346210

`A321814(n+1)%((n+1)^10)`
-/

namespace A352038.P7036957073090346210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321814 (n + 1)) ((n + 1) ^ 10 : ℤ)

end

end A352038.P7036957073090346210

namespace A352038

/-- `A321814(n+1)%((n+1)^10)` -/
def P7036957073090346210.Spec : Prop :=
  ∀ n, P7036957073090346210.a n = A352038 (n + 1)

end A352038

/-! ## A352038.P17085374777709396688

`∑{d}[A000265(n+1), ((#%(n+1))^5)²]`
-/

namespace A352038.P17085374777709396688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d % (n + 1)) ^ 5) ^ 2

end

end A352038.P17085374777709396688

namespace A352038

/-- `∑{d}[A000265(n+1), ((#%(n+1))^5)²]` -/
def P17085374777709396688.Spec : Prop :=
  ∀ n, (P17085374777709396688.a n : ℤ) = A352038 (n + 1)

end A352038

/-!
# A352039: a(0) = 1; a(n) = Sum_{k=0..floor(n/3)} binomial(n-2*k,k) * a(k).

The programs for A352039, there is no canonical definition to state claims against.
-/

/-! ## A352039.P10543607255381496378

`Δ[A352042(n+3)]%A002764(2*n+1)`
-/

namespace A352039.P10543607255381496378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352042 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A002764 (2 * n + 1))

end

end A352039.P10543607255381496378

/-! ## A352039.P2195706656882841558

`A257639(A369289(n)+A098051(n))`
-/

namespace A352039.P2195706656882841558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A369289 n + A098051 n).toNat

end

end A352039.P2195706656882841558

/-! ## A352039.P272382838229269170

`A162988(A027432(n))`
-/

namespace A352039.P272382838229269170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162988 (A027432 n).toNat

end

end A352039.P272382838229269170

/-! ## A352039.P14551791341390450658

`A204164(A086625(n))`
-/

namespace A352039.P14551791341390450658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A086625 n).toNat

end

end A352039.P14551791341390450658

/-! ## A352039.P14499667338522647123

`A204164(A152172(n+1))`
-/

namespace A352039.P14499667338522647123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A152172 (n + 1)).toNat

end

end A352039.P14499667338522647123

/-!
# A352042: a(0) = 1; a(n) = Sum_{k=0..floor((n-1)/3)} binomial(n-2*k-1,k) * a(k).

The programs for A352042, there is no canonical definition to state claims against.
-/

/-! ## A352042.P11852203814049168004

`A000194(or(A096812(n), A176498(n+1)))`
-/

namespace A352042.P11852203814049168004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.lor (A096812 n) (A176498 (n + 1))).toNat

end

end A352042.P11852203814049168004

/-! ## A352042.P14612769476676905651

`A135660(Δ[2*a(n-1)])` with `a(0)=-2, a(1)=1, a(2)=3`
-/

namespace A352042.P14612769476676905651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2, 1, 3] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (f1 (n + 1) - f1 n).toNat

end

end A352042.P14612769476676905651

/-! ## A352042.P6781751047699045547

`A085736(a(n-1)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A352042.P6781751047699045547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A085736 (a (n - 1) + a (n - 3)).toNat

end

end A352042.P6781751047699045547

/-! ## A352042.P5096296797802934773

`A085736(a(n-1)-floor(-a(n-3)))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A352042.P5096296797802934773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A085736 (a (n - 1) - (-a (n - 3))).toNat

end

end A352042.P5096296797802934773

/-! ## A352042.P13682526846872944821

`A085736(a(n-1)-ceil(-a(n-3)))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A352042.P13682526846872944821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A085736 (a (n - 1) - (-a (n - 3))).toNat

end

end A352042.P13682526846872944821

/-!
# A352044: a(0) = 1; a(n) = Sum_{k=0..floor((n-1)/2)} binomial(n-1,2*k) * a(k).

The programs for A352044, there is no canonical definition to state claims against.
-/

/-! ## A352044.P9085508583961888528

`∑[A056926(A025276(n+1)²)]`
-/

namespace A352044.P9085508583961888528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A025276 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352044.P9085508583961888528

/-! ## A352044.P6325247255330771462

`∑[A262689(A025276(n+1)²)]`
-/

namespace A352044.P6325247255330771462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A025276 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352044.P6325247255330771462

/-! ## A352044.P10891488527555303227

`∑[A025276(n+1)%A128339(n+1)]`
-/

namespace A352044.P10891488527555303227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025276 (n + 1)) (A128339 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352044.P10891488527555303227

/-! ## A352044.P8534125674623017050

`∑[A025276(n+1)]%A265782(n+1)`
-/

namespace A352044.P8534125674623017050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A265782 (n + 1))

end

end A352044.P8534125674623017050

/-! ## A352044.P6281971401713410365

`A261104(A052814(n))+A025276(n+1)`
-/

namespace A352044.P6281971401713410365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A052814 n).toNat + A025276 (n + 1)

end

end A352044.P6281971401713410365

/-!
# A352045: a(0) = 1; a(n) = Sum_{k=0..floor((n-1)/3)} binomial(n-1,3*k) * a(k).

The programs for A352045, there is no canonical definition to state claims against.
-/

/-! ## A352045.P14970303732457916427

`∏{e}[Δ[floor(3^(n-1))], A024493(#)]`
-/

namespace A352045.P14970303732457916427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A024493 (Nat.factorization (f1 n).natAbs p)

end

end A352045.P14970303732457916427

/-! ## A352045.P5984089563069490210

`A130781(∏{e}[ceil(7*3^(n-2)), #])`
-/

namespace A352045.P5984089563069490210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈7 * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130781 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A352045.P5984089563069490210

/-! ## A352045.P7449478532805902182

`A059995(ceil(5*2^n/3))+(floor(n/3)+1)%2`
-/

namespace A352045.P7449478532805902182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 ⌈5 * ((2 ^ n : ℚ) / 3)⌉.toNat + Int.tmod (⌊(n : ℚ) / 3⌋ + 1) 2

end

end A352045.P7449478532805902182

/-! ## A352045.P11573797791416608923

`A008647(A153237(n+1))`
-/

namespace A352045.P11573797791416608923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A153237 (n + 1)).toNat

end

end A352045.P11573797791416608923

/-! ## A352045.P11884722709100575347

`∏{p}[A002620(A130707(n)), #]`
-/

namespace A352045.P11884722709100575347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A130707 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A352045.P11884722709100575347

/-!
# A352046: Primes of the form (5*4^k + 1)/3.

The programs for A352046, there is no canonical definition to state claims against.
-/

/-! ## A352046.P9204468441067594573

`A048573(2*A309719(n+1))`
-/

namespace A352046.P9204468441067594573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048573 (2 * A309719 (n + 1)).toNat

end

end A352046.P9204468441067594573

/-!
# A352047: Sum of the divisor complements of the odd proper divisors of n.

The programs for A352047, the canonical program `A352047.P11793424880118639784` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352047 has offset 1).

The definition of A352047 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A352047.P11793424880118639784

`A000593(n+1)*A006519(n+1)-A000035(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A352047

/-- `A000593(n+1)*A006519(n+1)-A000035(n+1)` -/
def P11793424880118639784.Spec : Prop :=
  ∀ n, P11793424880118639784.a n = A352047 (n + 1)

theorem P11793424880118639784.correct : P11793424880118639784.Spec := by
  intro n
  simp only [A352047, Nat.add_sub_cancel]

end A352047

/-! ## A352047.P5455160359716158234

`A002131(n+1)-log2(gcd(2, n))`
-/

namespace A352047.P5455160359716158234
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002131 (n + 1) : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A352047.P5455160359716158234

namespace A352047

/-- `A002131(n+1)-log2(gcd(2, n))` -/
def P5455160359716158234.Spec : Prop :=
  ∀ n, P5455160359716158234.a n = (A352047 (n + 1) : ℝ)

end A352047

/-! ## A352047.P18180392685231697616

`A054785(n+1)/2-char[2*n]`
-/

namespace A352047.P18180392685231697616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054785 (n + 1) : ℚ) / 2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ)

end

end A352047.P18180392685231697616

namespace A352047

/-- `A054785(n+1)/2-char[2*n]` -/
def P18180392685231697616.Spec : Prop :=
  ∀ n, P18180392685231697616.a n = (A352047 (n + 1) : ℚ)

end A352047

/-! ## A352047.P9428451491883238181

`A245092(n)+A091570(n+1)`
-/

namespace A352047.P9428451491883238181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 n + A091570 (n + 1)

end

end A352047.P9428451491883238181

namespace A352047

/-- `A245092(n)+A091570(n+1)` -/
def P9428451491883238181.Spec : Prop :=
  ∀ n, P9428451491883238181.a n = A352047 (n + 1)

end A352047

/-! ## A352047.P8899456996240202365

`A002131(n+1)-A059841(n)`
-/

namespace A352047.P8899456996240202365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (n + 1) - A059841 n

end

end A352047.P8899456996240202365

namespace A352047

/-- `A002131(n+1)-A059841(n)` -/
def P8899456996240202365.Spec : Prop :=
  ∀ n, P8899456996240202365.a n = A352047 (n + 1)

end A352047

/-! ## A352047.P14413983211397107981

`A002131(n+1)-char[A005843(n)]`
-/

namespace A352047.P14413983211397107981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A352047.P14413983211397107981

namespace A352047

/-- `A002131(n+1)-char[A005843(n)]` -/
def P14413983211397107981.Spec : Prop :=
  ∀ n, P14413983211397107981.a n = A352047 (n + 1)

end A352047

/-! ## A352047.P11156960878346119638

`A002131(n+1)+A000035(n)-1`
-/

namespace A352047.P11156960878346119638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (n + 1) + (A000035 n - 1)

end

end A352047.P11156960878346119638

namespace A352047

/-- `A002131(n+1)+A000035(n)-1` -/
def P11156960878346119638.Spec : Prop :=
  ∀ n, P11156960878346119638.a n = A352047 (n + 1)

end A352047

/-! ## A352047.P36702570915708040

`A002131(n+1)+A000034(n)-2`
-/

namespace A352047.P36702570915708040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (n + 1) + (A000034 n - 2)

end

end A352047.P36702570915708040

namespace A352047

/-- `A002131(n+1)+A000034(n)-2` -/
def P36702570915708040.Spec : Prop :=
  ∀ n, P36702570915708040.a n = A352047 (n + 1)

end A352047

/-! ## A352047.P15638038397671232809

`∑{d}[n+1, A001227(#)*A053139((n+1)/#)]`
-/

namespace A352047.P15638038397671232809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A053139 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A352047.P15638038397671232809

namespace A352047

/-- `∑{d}[n+1, A001227(#)*A053139((n+1)/#)]` -/
def P15638038397671232809.Spec : Prop :=
  ∀ n, P15638038397671232809.a n = A352047 (n + 1)

end A352047

/-! ## A352047.P13057711584736449458

`∑{d}[n+1, A006519(#)*A296065((n+1)/#)]`
-/

namespace A352047.P13057711584736449458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006519 d * A296065 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A352047.P13057711584736449458

namespace A352047

/-- `∑{d}[n+1, A006519(#)*A296065((n+1)/#)]` -/
def P13057711584736449458.Spec : Prop :=
  ∀ n, P13057711584736449458.a n = A352047 (n + 1)

end A352047

/-! ## A352047.P8999699867674275341

`2^val(n+1, 2)*A000593(n+1)-A059841(n)`
-/

namespace A352047.P8999699867674275341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A000593 (n + 1) - A059841 n

end

end A352047.P8999699867674275341

namespace A352047

/-- `2^val(n+1, 2)*A000593(n+1)-A059841(n)` -/
def P8999699867674275341.Spec : Prop :=
  ∀ n, P8999699867674275341.a n = A352047 (n + 1)

end A352047

/-! ## A352047.P15195923120634012531

`∑{d}[n+1, A059841(#-1)*A087156((n+1)/#)]`
-/

namespace A352047.P15195923120634012531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A087156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A352047.P15195923120634012531

namespace A352047

/-- `∑{d}[n+1, A059841(#-1)*A087156((n+1)/#)]` -/
def P15195923120634012531.Spec : Prop :=
  ∀ n, P15195923120634012531.a n = A352047 (n + 1)

end A352047

/-! ## A352047.P17060028830940884442

`A000203(n+1)-A000203(A152271(n))`
-/

namespace A352047.P17060028830940884442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000203 (A152271 n).toNat

end

end A352047.P17060028830940884442

namespace A352047

/-- `A000203(n+1)-A000203(A152271(n))` -/
def P17060028830940884442.Spec : Prop :=
  ∀ n, P17060028830940884442.a n = A352047 (n + 1)

end A352047

/-! ## A352047.P14975758770445097851

`A088580(n+1)-A088580(A152271(n))`
-/

namespace A352047.P14975758770445097851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A088580 (A152271 n).toNat

end

end A352047.P14975758770445097851

namespace A352047

/-- `A088580(n+1)-A088580(A152271(n))` -/
def P14975758770445097851.Spec : Prop :=
  ∀ n, P14975758770445097851.a n = A352047 (n + 1)

end A352047

/-! ## A352047.P10129328212262178416

`A000203(n+1)-A000203(A063914(n+1)-n)`
-/

namespace A352047.P10129328212262178416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000203 (A063914 (n + 1) - (n : ℤ)).toNat

end

end A352047.P10129328212262178416

namespace A352047

/-- `A000203(n+1)-A000203(A063914(n+1)-n)` -/
def P10129328212262178416.Spec : Prop :=
  ∀ n, P10129328212262178416.a n = A352047 (n + 1)

end A352047

/-! ## A352047.P4189622243269025416

`A002131(n+1)+A352048(n+1)-A076577(n+1)`
-/

namespace A352047.P4189622243269025416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (n + 1) + (A352048 (n + 1) - A076577 (n + 1))

end

end A352047.P4189622243269025416

namespace A352047

/-- `A002131(n+1)+A352048(n+1)-A076577(n+1)` -/
def P4189622243269025416.Spec : Prop :=
  ∀ n, P4189622243269025416.a n = A352047 (n + 1)

end A352047

/-! ## A352047.P16602668532975489441

`A002131(n+1)+A368595(n+1)-A136013(n+1)`
-/

namespace A352047.P16602668532975489441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (n + 1) + (A368595 (n + 1) - A136013 (n + 1))

end

end A352047.P16602668532975489441

namespace A352047

/-- `A002131(n+1)+A368595(n+1)-A136013(n+1)` -/
def P16602668532975489441.Spec : Prop :=
  ∀ n, P16602668532975489441.a n = A352047 (n + 1)

end A352047

/-! ## A352047.P15693330632146383

`A050460(n+1)+A050464(n+1)-A000035(n+1)`
-/

namespace A352047.P15693330632146383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050460 (n + 1) + (A050464 (n + 1) - A000035 (n + 1))

end

end A352047.P15693330632146383

namespace A352047

/-- `A050460(n+1)+A050464(n+1)-A000035(n+1)` -/
def P15693330632146383.Spec : Prop :=
  ∀ n, P15693330632146383.a n = A352047 (n + 1)

end A352047

/-! ## A352047.P17183240632772288534

`A002131(n+1)+A140670(n+2)-A006519(n+2)`
-/

namespace A352047.P17183240632772288534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (n + 1) + (A140670 (n + 2) - A006519 (n + 2))

end

end A352047.P17183240632772288534

namespace A352047

/-- `A002131(n+1)+A140670(n+2)-A006519(n+2)` -/
def P17183240632772288534.Spec : Prop :=
  ∀ n, P17183240632772288534.a n = A352047 (n + 1)

end A352047

/-!
# A352048: Sum of the squares of the divisor complements of the odd proper divisors of n.

The programs for A352048, the canonical program `A352048.P2446368549956049368` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352048 has offset 1).

The definition of A352048 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A352048.P2446368549956049368

`A050999(n+1)*A006519(n+1)²-A000035(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A352048

/-- `A050999(n+1)*A006519(n+1)²-A000035(n+1)` -/
def P2446368549956049368.Spec : Prop :=
  ∀ n, P2446368549956049368.a n = A352048 (n + 1)

theorem P2446368549956049368.correct : P2446368549956049368.Spec := by
  intro n
  simp only [A352048, Nat.add_sub_cancel]

end A352048

/-! ## A352048.P1407675140617823543

`∑{d}[2*(n+1), ((n+1)%#)²]-log2(gcd(2, n))`
-/

namespace A352048.P1407675140617823543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), ((n + 1) % d) ^ 2 : ℕ) : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A352048.P1407675140617823543

namespace A352048

/-- `∑{d}[2*(n+1), ((n+1)%#)²]-log2(gcd(2, n))` -/
def P1407675140617823543.Spec : Prop :=
  ∀ n, P1407675140617823543.a n = (A352048 (n + 1) : ℝ)

end A352048

/-! ## A352048.P4039789184060284212

`A076577(n+1)-log2(gcd(2, n))`
-/

namespace A352048.P4039789184060284212
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A076577 (n + 1) : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A352048.P4039789184060284212

namespace A352048

/-- `A076577(n+1)-log2(gcd(2, n))` -/
def P4039789184060284212.Spec : Prop :=
  ∀ n, P4039789184060284212.a n = (A352048 (n + 1) : ℝ)

end A352048

/-! ## A352048.P14100637636908024502

`∑{d}[n+1, A308422(#)]-char[2*n]`
-/

namespace A352048.P14100637636908024502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A308422 d - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A352048.P14100637636908024502

namespace A352048

/-- `∑{d}[n+1, A308422(#)]-char[2*n]` -/
def P14100637636908024502.Spec : Prop :=
  ∀ n, P14100637636908024502.a n = A352048 (n + 1)

end A352048

/-! ## A352048.P3191364398666331331

`∑{d}[2*(n+1), ((n+1)%#)²]-A059841(n)`
-/

namespace A352048.P3191364398666331331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), ((n + 1) % d) ^ 2 : ℕ) : ℤ) - A059841 n

end

end A352048.P3191364398666331331

namespace A352048

/-- `∑{d}[2*(n+1), ((n+1)%#)²]-A059841(n)` -/
def P3191364398666331331.Spec : Prop :=
  ∀ n, P3191364398666331331.a n = A352048 (n + 1)

end A352048

/-! ## A352048.P13685184044218801806

`A076577(n+1)-A059841(n)`
-/

namespace A352048.P13685184044218801806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076577 (n + 1) - A059841 n

end

end A352048.P13685184044218801806

namespace A352048

/-- `A076577(n+1)-A059841(n)` -/
def P13685184044218801806.Spec : Prop :=
  ∀ n, P13685184044218801806.a n = A352048 (n + 1)

end A352048

/-! ## A352048.P15595989538759500586

`A076577(n+1)-abs(A056594(n))`
-/

namespace A352048.P15595989538759500586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076577 (n + 1) - |A056594 n|

end

end A352048.P15595989538759500586

namespace A352048

/-- `A076577(n+1)-abs(A056594(n))` -/
def P15595989538759500586.Spec : Prop :=
  ∀ n, P15595989538759500586.a n = A352048 (n + 1)

end A352048

/-! ## A352048.P11699610719230822348

`A076577(n+1)-∑[A033999(n)]`
-/

namespace A352048.P11699610719230822348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076577 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352048.P11699610719230822348

namespace A352048

/-- `A076577(n+1)-∑[A033999(n)]` -/
def P11699610719230822348.Spec : Prop :=
  ∀ n, P11699610719230822348.a n = A352048 (n + 1)

end A352048

/-! ## A352048.P12934932832247739706

`(A078306(n+1)+A001157(n+1))/2-char[2*n]`
-/

namespace A352048.P12934932832247739706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078306 (n + 1) + A001157 (n + 1) : ℚ) / 2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ)

end

end A352048.P12934932832247739706

namespace A352048

/-- `(A078306(n+1)+A001157(n+1))/2-char[2*n]` -/
def P12934932832247739706.Spec : Prop :=
  ∀ n, P12934932832247739706.a n = (A352048 (n + 1) : ℚ)

end A352048

/-! ## A352048.P10037267395395545132

`∑{d}[n+1, A001227(#)*A007434((n+1)/#)]-char[2*n]`
-/

namespace A352048.P10037267395395545132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A007434 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A352048.P10037267395395545132

namespace A352048

/-- `∑{d}[n+1, A001227(#)*A007434((n+1)/#)]-char[2*n]` -/
def P10037267395395545132.Spec : Prop :=
  ∀ n, P10037267395395545132.a n = A352048 (n + 1)

end A352048

/-! ## A352048.P1521772684441236285

`∑{d}[n+1, A133700(#)*A321322((n+1)/#)]-char[2*n]`
-/

namespace A352048.P1521772684441236285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133700 d * A321322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A352048.P1521772684441236285

namespace A352048

/-- `∑{d}[n+1, A133700(#)*A321322((n+1)/#)]-char[2*n]` -/
def P1521772684441236285.Spec : Prop :=
  ∀ n, P1521772684441236285.a n = A352048 (n + 1)

end A352048

/-! ## A352048.P5867411918972981810

`A076577(n+1)+A008683(A006519(2*(n+1)))`
-/

namespace A352048.P5867411918972981810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076577 (n + 1) + A008683 (A006519 (2 * (n + 1))).toNat

end

end A352048.P5867411918972981810

namespace A352048

/-- `A076577(n+1)+A008683(A006519(2*(n+1)))` -/
def P5867411918972981810.Spec : Prop :=
  ∀ n, P5867411918972981810.a n = A352048 (n + 1)

end A352048

/-! ## A352048.P5242191505088739982

`A076577(n+1)-A008683(A006519(n+1)²)`
-/

namespace A352048.P5242191505088739982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076577 (n + 1) - A008683 (A006519 (n + 1) ^ 2).toNat

end

end A352048.P5242191505088739982

namespace A352048

/-- `A076577(n+1)-A008683(A006519(n+1)²)` -/
def P5242191505088739982.Spec : Prop :=
  ∀ n, P5242191505088739982.a n = A352048 (n + 1)

end A352048

/-! ## A352048.P10504243398881325883

`A076577(n+1)-A056594(n²)`
-/

namespace A352048.P10504243398881325883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076577 (n + 1) - A056594 (n ^ 2)

end

end A352048.P10504243398881325883

namespace A352048

/-- `A076577(n+1)-A056594(n²)` -/
def P10504243398881325883.Spec : Prop :=
  ∀ n, P10504243398881325883.a n = A352048 (n + 1)

end A352048

/-!
# A352049: Sum of the cubes of the divisor complements of the odd proper divisors of n.

The programs for A352049, the canonical program `A352049.P5425156672999922043` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352049 has offset 1).

The definition of A352049 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051000, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A352049.P5425156672999922043

`A051000(n+1)*A006519(n+1)^3-A000035(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A352049

/-- `A051000(n+1)*A006519(n+1)^3-A000035(n+1)` -/
def P5425156672999922043.Spec : Prop :=
  ∀ n, P5425156672999922043.a n = A352049 (n + 1)

theorem P5425156672999922043.correct : P5425156672999922043.Spec := by
  intro n
  simp only [A352049, Nat.add_sub_cancel]

end A352049

/-! ## A352049.P12520799733543931205

`A007331(n+1)-log2(gcd(2, n))`
-/

namespace A352049.P12520799733543931205
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A007331 (n + 1) : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A352049.P12520799733543931205

namespace A352049

/-- `A007331(n+1)-log2(gcd(2, n))` -/
def P12520799733543931205.Spec : Prop :=
  ∀ n, P12520799733543931205.a n = (A352049 (n + 1) : ℝ)

end A352049

/-! ## A352049.P2818951140963677290

`A007331(n+1)-∑[A062157(n+1)]`
-/

namespace A352049.P2818951140963677290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007331 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352049.P2818951140963677290

namespace A352049

/-- `A007331(n+1)-∑[A062157(n+1)]` -/
def P2818951140963677290.Spec : Prop :=
  ∀ n, P2818951140963677290.a n = A352049 (n + 1)

end A352049

/-! ## A352049.P2748526101871404651

`A007331(n+1)-A080545(A281071(n+1))`
-/

namespace A352049.P2748526101871404651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007331 (n + 1) - A080545 (A281071 (n + 1)).toNat

end

end A352049.P2748526101871404651

namespace A352049

/-- `A007331(n+1)-A080545(A281071(n+1))` -/
def P2748526101871404651.Spec : Prop :=
  ∀ n, P2748526101871404651.a n = A352049 (n + 1)

end A352049

/-! ## A352049.P13415370765491823100

`A007331(n+1)+A352048(n+1)-A076577(n+1)`
-/

namespace A352049.P13415370765491823100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007331 (n + 1) + (A352048 (n + 1) - A076577 (n + 1))

end

end A352049.P13415370765491823100

namespace A352049

/-- `A007331(n+1)+A352048(n+1)-A076577(n+1)` -/
def P13415370765491823100.Spec : Prop :=
  ∀ n, P13415370765491823100.a n = A352049 (n + 1)

end A352049

/-! ## A352049.P16530305259367451158

`∑[Δ[∑{d}[2*n, (n%#)^3]]-(-1)^n]`
-/

namespace A352049.P16530305259367451158
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), (n % d) ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352049.P16530305259367451158

namespace A352049

/-- `∑[Δ[∑{d}[2*n, (n%#)^3]]-(-1)^n]` -/
def P16530305259367451158.Spec : Prop :=
  ∀ n, P16530305259367451158.a n = A352049 (n + 1)

end A352049

/-! ## A352049.P6887758656362406023

`A007331(n+1)-A000035(n+1)`
-/

namespace A352049.P6887758656362406023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007331 (n + 1) - A000035 (n + 1)

end

end A352049.P6887758656362406023

namespace A352049

/-- `A007331(n+1)-A000035(n+1)` -/
def P6887758656362406023.Spec : Prop :=
  ∀ n, P6887758656362406023.a n = A352049 (n + 1)

end A352049

/-! ## A352049.P3598427469254916452

`A007331(n+1)-A101455(n+1)²`
-/

namespace A352049.P3598427469254916452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007331 (n + 1) - A101455 (n + 1) ^ 2

end

end A352049.P3598427469254916452

namespace A352049

/-- `A007331(n+1)-A101455(n+1)²` -/
def P3598427469254916452.Spec : Prop :=
  ∀ n, P3598427469254916452.a n = A352049 (n + 1)

end A352049

/-! ## A352049.P813628444145332969

`A007331(n+1)-∑[A165326(n+1)]`
-/

namespace A352049.P813628444145332969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007331 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352049.P813628444145332969

namespace A352049

/-- `A007331(n+1)-∑[A165326(n+1)]` -/
def P813628444145332969.Spec : Prop :=
  ∀ n, P813628444145332969.a n = A352049 (n + 1)

end A352049

/-!
# A352050: Sum of the 4th powers of the divisor complements of the odd proper divisors of n.

The programs for A352050, the canonical program `A352050.P14963246555403053139` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352050 has offset 1).

The definition of A352050 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051001, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A352050.P14963246555403053139

`A051001(n+1)*A006519(n+1)^4-A000035(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A352050

/-- `A051001(n+1)*A006519(n+1)^4-A000035(n+1)` -/
def P14963246555403053139.Spec : Prop :=
  ∀ n, P14963246555403053139.a n = A352050 (n + 1)

theorem P14963246555403053139.correct : P14963246555403053139.Spec := by
  intro n
  simp only [A352050, Nat.add_sub_cancel]

end A352050

/-! ## A352050.P6545278638303582511

`A285989(n+1)-log2(gcd(2, n))`
-/

namespace A352050.P6545278638303582511
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A285989 (n + 1) : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A352050.P6545278638303582511

namespace A352050

/-- `A285989(n+1)-log2(gcd(2, n))` -/
def P6545278638303582511.Spec : Prop :=
  ∀ n, P6545278638303582511.a n = (A352050 (n + 1) : ℝ)

end A352050

/-! ## A352050.P15015319135469987884

`A285989(n+1)-A059841(n)`
-/

namespace A352050.P15015319135469987884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285989 (n + 1) - A059841 n

end

end A352050.P15015319135469987884

namespace A352050

/-- `A285989(n+1)-A059841(n)` -/
def P15015319135469987884.Spec : Prop :=
  ∀ n, P15015319135469987884.a n = A352050 (n + 1)

end A352050

/-! ## A352050.P7916053604153483642

`A285989(n+1)-char[A005843(n)]`
-/

namespace A352050.P7916053604153483642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285989 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A352050.P7916053604153483642

namespace A352050

/-- `A285989(n+1)-char[A005843(n)]` -/
def P7916053604153483642.Spec : Prop :=
  ∀ n, P7916053604153483642.a n = A352050 (n + 1)

end A352050

/-! ## A352050.P3422137224802514838

`A001159(n+1)-A001159(A152271(n))`
-/

namespace A352050.P3422137224802514838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001159 (n + 1) - A001159 (A152271 n).toNat

end

end A352050.P3422137224802514838

namespace A352050

/-- `A001159(n+1)-A001159(A152271(n))` -/
def P3422137224802514838.Spec : Prop :=
  ∀ n, P3422137224802514838.a n = A352050 (n + 1)

end A352050

/-! ## A352050.P12575290410839691987

`A285989(n+1)-A000035(n+1)`
-/

namespace A352050.P12575290410839691987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285989 (n + 1) - A000035 (n + 1)

end

end A352050.P12575290410839691987

namespace A352050

/-- `A285989(n+1)-A000035(n+1)` -/
def P12575290410839691987.Spec : Prop :=
  ∀ n, P12575290410839691987.a n = A352050 (n + 1)

end A352050

/-!
# A352051: Sum of the 5th powers of the divisor complements of the odd proper divisors of n.

The programs for A352051, the canonical program `A352051.P15218436939402893896` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352051 has offset 1).

The definition of A352051 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051002, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A352051.P15218436939402893896

`A051002(n+1)*A006519(n+1)^5-A000035(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A352051

/-- `A051002(n+1)*A006519(n+1)^5-A000035(n+1)` -/
def P15218436939402893896.Spec : Prop :=
  ∀ n, P15218436939402893896.a n = A352051 (n + 1)

theorem P15218436939402893896.correct : P15218436939402893896.Spec := by
  intro n
  simp only [A352051, Nat.add_sub_cancel]

end A352051

/-! ## A352051.P6939118510702855494

`A096960(n+1)-log2(gcd(2, n))`
-/

namespace A352051.P6939118510702855494
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A096960 (n + 1) : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A352051.P6939118510702855494

namespace A352051

/-- `A096960(n+1)-log2(gcd(2, n))` -/
def P6939118510702855494.Spec : Prop :=
  ∀ n, P6939118510702855494.a n = (A352051 (n + 1) : ℝ)

end A352051

/-! ## A352051.P2615357607800392202

`∑{d}[A000265(n+1), ((n+1)/#)^5]-char[2*n]`
-/

namespace A352051.P2615357607800392202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 1 : ℚ) / (d : ℚ)) ^ 5 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℚ)

end

end A352051.P2615357607800392202

namespace A352051

/-- `∑{d}[A000265(n+1), ((n+1)/#)^5]-char[2*n]` -/
def P2615357607800392202.Spec : Prop :=
  ∀ n, P2615357607800392202.a n = (A352051 (n + 1) : ℚ)

end A352051

/-! ## A352051.P2127970682138938701

`A096960(n+1)-A059841(n)`
-/

namespace A352051.P2127970682138938701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096960 (n + 1) - A059841 n

end

end A352051.P2127970682138938701

namespace A352051

/-- `A096960(n+1)-A059841(n)` -/
def P2127970682138938701.Spec : Prop :=
  ∀ n, P2127970682138938701.a n = A352051 (n + 1)

theorem P2127970682138938701.correct : P2127970682138938701.Spec := by
  intro n
  simp only [A352051, Nat.add_sub_cancel, A352051.P2127970682138938701.a, A352051.P15218436939402893896.a, A000035, A000035.P2023072528413494694.a, A006519, A006519.P10435570611646570274.a, A051002, A051002.P11635871298119985317.a, A059841, A059841.P7264174615531153985.a, A096960, A096960.P12612714756278171164.a, A003602, A003602.P7612175048291952394.a, A081864, A081864.P18173580079460019944.f2, A081864.P18173580079460019944.f1, A081864.P18173580079460019944.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A352051

/-! ## A352051.P15458924977958959119

`A096960(n+1)-abs(A056594(n))`
-/

namespace A352051.P15458924977958959119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096960 (n + 1) - |A056594 n|

end

end A352051.P15458924977958959119

namespace A352051

/-- `A096960(n+1)-abs(A056594(n))` -/
def P15458924977958959119.Spec : Prop :=
  ∀ n, P15458924977958959119.a n = A352051 (n + 1)

end A352051

/-! ## A352051.P15798460800198125880

`A096960(n+1)+A352048(n+1)-A076577(n+1)`
-/

namespace A352051.P15798460800198125880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096960 (n + 1) + (A352048 (n + 1) - A076577 (n + 1))

end

end A352051.P15798460800198125880

namespace A352051

/-- `A096960(n+1)+A352048(n+1)-A076577(n+1)` -/
def P15798460800198125880.Spec : Prop :=
  ∀ n, P15798460800198125880.a n = A352051 (n + 1)

end A352051

/-! ## A352051.P5720028931250929903

`∑{d}[n+1, A238533(#)*A285989((n+1)/#)]-A059841(n)`
-/

namespace A352051.P5720028931250929903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A238533 d * A285989 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - A059841 n

end

end A352051.P5720028931250929903

namespace A352051

/-- `∑{d}[n+1, A238533(#)*A285989((n+1)/#)]-A059841(n)` -/
def P5720028931250929903.Spec : Prop :=
  ∀ n, P5720028931250929903.a n = A352051 (n + 1)

end A352051

/-! ## A352051.P1243677199342114676

`A096960(n+1)-A056594(n²)`
-/

namespace A352051.P1243677199342114676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096960 (n + 1) - A056594 (n ^ 2)

end

end A352051.P1243677199342114676

namespace A352051

/-- `A096960(n+1)-A056594(n²)` -/
def P1243677199342114676.Spec : Prop :=
  ∀ n, P1243677199342114676.a n = A352051 (n + 1)

end A352051

/-!
# A352052: Sum of the 6th powers of the divisor complements of the odd proper divisors of n.

The programs for A352052, the canonical program `A352052.P6009857033034604906` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352052 has offset 1).

The definition of A352052 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321810, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A352052.P6009857033034604906

`A321810(n+1)*A006519(n+1)^6-A000035(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A352052

/-- `A321810(n+1)*A006519(n+1)^6-A000035(n+1)` -/
def P6009857033034604906.Spec : Prop :=
  ∀ n, P6009857033034604906.a n = A352052 (n + 1)

theorem P6009857033034604906.correct : P6009857033034604906.Spec := by
  intro n
  simp only [A352052, Nat.add_sub_cancel]

end A352052

/-! ## A352052.P454753904799859368

`A321817(n+1)-log2(gcd(2, n))`
-/

namespace A352052.P454753904799859368
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A321817 (n + 1) : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A352052.P454753904799859368

namespace A352052

/-- `A321817(n+1)-log2(gcd(2, n))` -/
def P454753904799859368.Spec : Prop :=
  ∀ n, P454753904799859368.a n = (A352052 (n + 1) : ℝ)

end A352052

/-! ## A352052.P4842856347831940173

`A321817(n+1)-A059841(n)`
-/

namespace A352052.P4842856347831940173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321817 (n + 1) - A059841 n

end

end A352052.P4842856347831940173

namespace A352052

/-- `A321817(n+1)-A059841(n)` -/
def P4842856347831940173.Spec : Prop :=
  ∀ n, P4842856347831940173.a n = A352052 (n + 1)

end A352052

/-! ## A352052.P217636853148935128

`A321817(n+1)-abs(A056594(n))`
-/

namespace A352052.P217636853148935128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321817 (n + 1) - |A056594 n|

end

end A352052.P217636853148935128

namespace A352052

/-- `A321817(n+1)-abs(A056594(n))` -/
def P217636853148935128.Spec : Prop :=
  ∀ n, P217636853148935128.a n = A352052 (n + 1)

end A352052

/-! ## A352052.P9335189974341344219

`A013954(n+1)-A013954(A152271(n))`
-/

namespace A352052.P9335189974341344219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013954 (n + 1) - A013954 (A152271 n).toNat

end

end A352052.P9335189974341344219

namespace A352052

/-- `A013954(n+1)-A013954(A152271(n))` -/
def P9335189974341344219.Spec : Prop :=
  ∀ n, P9335189974341344219.a n = A352052 (n + 1)

end A352052

/-! ## A352052.P16888080898871800415

`A321817(n+1)-A048647(3*(n+1))%2`
-/

namespace A352052.P16888080898871800415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321817 (n + 1) - Int.tmod (A048647 (3 * (n + 1))) 2

end

end A352052.P16888080898871800415

namespace A352052

/-- `A321817(n+1)-A048647(3*(n+1))%2` -/
def P16888080898871800415.Spec : Prop :=
  ∀ n, P16888080898871800415.a n = A352052 (n + 1)

end A352052

/-! ## A352052.P9455235315788365156

`A321817(n+1)-A056594(n²)`
-/

namespace A352052.P9455235315788365156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321817 (n + 1) - A056594 (n ^ 2)

end

end A352052.P9455235315788365156

namespace A352052

/-- `A321817(n+1)-A056594(n²)` -/
def P9455235315788365156.Spec : Prop :=
  ∀ n, P9455235315788365156.a n = A352052 (n + 1)

end A352052

/-!
# A352053: Sum of the 7th powers of the divisor complements of the odd proper divisors of n.

The programs for A352053, the canonical program `A352053.P1294094474084752061` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352053 has offset 1).

The definition of A352053 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321811, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A352053.P1294094474084752061

`A321811(n+1)*A006519(n+1)^7-A000035(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A352053

/-- `A321811(n+1)*A006519(n+1)^7-A000035(n+1)` -/
def P1294094474084752061.Spec : Prop :=
  ∀ n, P1294094474084752061.a n = A352053 (n + 1)

theorem P1294094474084752061.correct : P1294094474084752061.Spec := by
  intro n
  simp only [A352053, Nat.add_sub_cancel]

end A352053

/-! ## A352053.P1140644227216962486

`∑{d}[2*(n+1), ((n+1)%#)^7]-log2(gcd(2, n))`
-/

namespace A352053.P1140644227216962486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), ((n + 1) % d) ^ 7 : ℕ) : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A352053.P1140644227216962486

namespace A352053

/-- `∑{d}[2*(n+1), ((n+1)%#)^7]-log2(gcd(2, n))` -/
def P1140644227216962486.Spec : Prop :=
  ∀ n, P1140644227216962486.a n = (A352053 (n + 1) : ℝ)

end A352053

/-! ## A352053.P14623292149650442833

`A096961(n+1)-log2(gcd(2, n))`
-/

namespace A352053.P14623292149650442833
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A096961 (n + 1) : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A352053.P14623292149650442833

namespace A352053

/-- `A096961(n+1)-log2(gcd(2, n))` -/
def P14623292149650442833.Spec : Prop :=
  ∀ n, P14623292149650442833.a n = (A352053 (n + 1) : ℝ)

end A352053

/-! ## A352053.P6078953008853898522

`∑{d}[2*(n+1), ((n+1)%#)^7]-∑[A033999(n)]`
-/

namespace A352053.P6078953008853898522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), ((n + 1) % d) ^ 7 : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A352053.P6078953008853898522

namespace A352053

/-- `∑{d}[2*(n+1), ((n+1)%#)^7]-∑[A033999(n)]` -/
def P6078953008853898522.Spec : Prop :=
  ∀ n, P6078953008853898522.a n = A352053 (n + 1)

end A352053

/-! ## A352053.P14902315639476839031

`A096961(n+1)-A059841(n)`
-/

namespace A352053.P14902315639476839031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096961 (n + 1) - A059841 n

end

end A352053.P14902315639476839031

namespace A352053

/-- `A096961(n+1)-A059841(n)` -/
def P14902315639476839031.Spec : Prop :=
  ∀ n, P14902315639476839031.a n = A352053 (n + 1)

end A352053

/-! ## A352053.P5939045255165403289

`A096961(n+1)+A352048(n+1)-A076577(n+1)`
-/

namespace A352053.P5939045255165403289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096961 (n + 1) + (A352048 (n + 1) - A076577 (n + 1))

end

end A352053.P5939045255165403289

namespace A352053

/-- `A096961(n+1)+A352048(n+1)-A076577(n+1)` -/
def P5939045255165403289.Spec : Prop :=
  ∀ n, P5939045255165403289.a n = A352053 (n + 1)

end A352053

/-!
# A352054: Sum of the 8th powers of the divisor complements of the odd proper divisors of n.

The programs for A352054, the canonical program `A352054.P9801773408996031235` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352054 has offset 1).

The definition of A352054 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321812, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A352054.P9801773408996031235

`A321812(n+1)*A006519(n+1)^8-A000035(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A352054

/-- `A321812(n+1)*A006519(n+1)^8-A000035(n+1)` -/
def P9801773408996031235.Spec : Prop :=
  ∀ n, P9801773408996031235.a n = A352054 (n + 1)

theorem P9801773408996031235.correct : P9801773408996031235.Spec := by
  intro n
  simp only [A352054, Nat.add_sub_cancel]

end A352054

/-! ## A352054.P644597179242968589

`A321818(n+1)-log2(gcd(2, n))`
-/

namespace A352054.P644597179242968589
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A321818 (n + 1) : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A352054.P644597179242968589

namespace A352054

/-- `A321818(n+1)-log2(gcd(2, n))` -/
def P644597179242968589.Spec : Prop :=
  ∀ n, P644597179242968589.a n = (A352054 (n + 1) : ℝ)

end A352054

/-! ## A352054.P9699312142203447521

`A321818(n+1)-A059841(n)`
-/

namespace A352054.P9699312142203447521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321818 (n + 1) - A059841 n

end

end A352054.P9699312142203447521

namespace A352054

/-- `A321818(n+1)-A059841(n)` -/
def P9699312142203447521.Spec : Prop :=
  ∀ n, P9699312142203447521.a n = A352054 (n + 1)

end A352054

/-! ## A352054.P8899825583582355895

`A321818(n+1)-abs(A056594(n))`
-/

namespace A352054.P8899825583582355895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321818 (n + 1) - |A056594 n|

end

end A352054.P8899825583582355895

namespace A352054

/-- `A321818(n+1)-abs(A056594(n))` -/
def P8899825583582355895.Spec : Prop :=
  ∀ n, P8899825583582355895.a n = A352054 (n + 1)

end A352054

/-! ## A352054.P11636441153192537971

`A321818(n+1)+A000035(n)-1`
-/

namespace A352054.P11636441153192537971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321818 (n + 1) + (A000035 n - 1)

end

end A352054.P11636441153192537971

namespace A352054

/-- `A321818(n+1)+A000035(n)-1` -/
def P11636441153192537971.Spec : Prop :=
  ∀ n, P11636441153192537971.a n = A352054 (n + 1)

end A352054

/-! ## A352054.P6134422261939196304

`A321818(n+1)-A056594(n²)`
-/

namespace A352054.P6134422261939196304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321818 (n + 1) - A056594 (n ^ 2)

end

end A352054.P6134422261939196304

namespace A352054

/-- `A321818(n+1)-A056594(n²)` -/
def P6134422261939196304.Spec : Prop :=
  ∀ n, P6134422261939196304.a n = A352054 (n + 1)

end A352054

/-!
# A352055: Sum of the 9th powers of the divisor complements of the odd proper divisors of n.

The programs for A352055, the canonical program `A352055.P13209063821443067745` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352055 has offset 1).

The definition of A352055 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321813, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A352055.P13209063821443067745

`A321813(n+1)*A006519(n+1)^9-A000035(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A352055

/-- `A321813(n+1)*A006519(n+1)^9-A000035(n+1)` -/
def P13209063821443067745.Spec : Prop :=
  ∀ n, P13209063821443067745.a n = A352055 (n + 1)

theorem P13209063821443067745.correct : P13209063821443067745.Spec := by
  intro n
  simp only [A352055, Nat.add_sub_cancel]

end A352055

/-! ## A352055.P10482091510321639166

`∑{d}[2*(n+1), ((n+1)%#)^9]-log2(gcd(2, n))`
-/

namespace A352055.P10482091510321639166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), ((n + 1) % d) ^ 9 : ℕ) : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A352055.P10482091510321639166

namespace A352055

/-- `∑{d}[2*(n+1), ((n+1)%#)^9]-log2(gcd(2, n))` -/
def P10482091510321639166.Spec : Prop :=
  ∀ n, P10482091510321639166.a n = (A352055 (n + 1) : ℝ)

end A352055

/-! ## A352055.P15594232697163483653

`A096962(n+1)-log2(gcd(2, n))`
-/

namespace A352055.P15594232697163483653
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A096962 (n + 1) : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A352055.P15594232697163483653

namespace A352055

/-- `A096962(n+1)-log2(gcd(2, n))` -/
def P15594232697163483653.Spec : Prop :=
  ∀ n, P15594232697163483653.a n = (A352055 (n + 1) : ℝ)

end A352055

/-! ## A352055.P12489183540481430139

`∑{d}[2*(n+1), ((n+1)%#)^9]-A059841(n)`
-/

namespace A352055.P12489183540481430139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), ((n + 1) % d) ^ 9 : ℕ) : ℤ) - A059841 n

end

end A352055.P12489183540481430139

namespace A352055

/-- `∑{d}[2*(n+1), ((n+1)%#)^9]-A059841(n)` -/
def P12489183540481430139.Spec : Prop :=
  ∀ n, P12489183540481430139.a n = A352055 (n + 1)

end A352055

/-! ## A352055.P10191094718508442114

`A096962(n+1)-A059841(n)`
-/

namespace A352055.P10191094718508442114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096962 (n + 1) - A059841 n

end

end A352055.P10191094718508442114

namespace A352055

/-- `A096962(n+1)-A059841(n)` -/
def P10191094718508442114.Spec : Prop :=
  ∀ n, P10191094718508442114.a n = A352055 (n + 1)

end A352055

/-! ## A352055.P16265080650695793281

`A096962(n+1)-A080764(A194368(n+2))`
-/

namespace A352055.P16265080650695793281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096962 (n + 1) - A080764 (A194368 (n + 2)).toNat

end

end A352055.P16265080650695793281

namespace A352055

/-- `A096962(n+1)-A080764(A194368(n+2))` -/
def P16265080650695793281.Spec : Prop :=
  ∀ n, P16265080650695793281.a n = A352055 (n + 1)

end A352055

/-!
# A352056: Sum of the 10th powers of the divisor complements of the odd proper divisors of n.

The programs for A352056, the canonical program `A352056.P14532830796557254508` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352056 has offset 1).

The definition of A352056 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321814, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A352056.P14532830796557254508

`A321814(n+1)*A006519(n+1)^10-A000035(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A352056

/-- `A321814(n+1)*A006519(n+1)^10-A000035(n+1)` -/
def P14532830796557254508.Spec : Prop :=
  ∀ n, P14532830796557254508.a n = A352056 (n + 1)

theorem P14532830796557254508.correct : P14532830796557254508.Spec := by
  intro n
  simp only [A352056, Nat.add_sub_cancel]

end A352056

/-! ## A352056.P14431857869326630830

`∑{d}[2*(n+1), ((n+1)%#)^10]-log2(gcd(2, n))`
-/

namespace A352056.P14431857869326630830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), ((n + 1) % d) ^ 10 : ℕ) : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A352056.P14431857869326630830

namespace A352056

/-- `∑{d}[2*(n+1), ((n+1)%#)^10]-log2(gcd(2, n))` -/
def P14431857869326630830.Spec : Prop :=
  ∀ n, P14431857869326630830.a n = (A352056 (n + 1) : ℝ)

end A352056

/-! ## A352056.P9209066467809584200

`A321819(n+1)-log2(gcd(2, n))`
-/

namespace A352056.P9209066467809584200
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A321819 (n + 1) : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A352056.P9209066467809584200

namespace A352056

/-- `A321819(n+1)-log2(gcd(2, n))` -/
def P9209066467809584200.Spec : Prop :=
  ∀ n, P9209066467809584200.a n = (A352056 (n + 1) : ℝ)

end A352056

/-! ## A352056.P14585819964836641982

`∑{d}[A000265(n+1), ((n+1)/#)^10]-char[2*n]`
-/

namespace A352056.P14585819964836641982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 1 : ℚ) / (d : ℚ)) ^ 10 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℚ)

end

end A352056.P14585819964836641982

namespace A352056

/-- `∑{d}[A000265(n+1), ((n+1)/#)^10]-char[2*n]` -/
def P14585819964836641982.Spec : Prop :=
  ∀ n, P14585819964836641982.a n = (A352056 (n + 1) : ℚ)

end A352056

/-! ## A352056.P3608796847223978157

`A321819(n+1)-A059841(n)`
-/

namespace A352056.P3608796847223978157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321819 (n + 1) - A059841 n

end

end A352056.P3608796847223978157

namespace A352056

/-- `A321819(n+1)-A059841(n)` -/
def P3608796847223978157.Spec : Prop :=
  ∀ n, P3608796847223978157.a n = A352056 (n + 1)

end A352056

/-! ## A352056.P1685147947418308640

`A321819(n+1)-A048298(A296306(n+1))`
-/

namespace A352056.P1685147947418308640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321819 (n + 1) - A048298 (A296306 (n + 1)).toNat

end

end A352056.P1685147947418308640

namespace A352056

/-- `A321819(n+1)-A048298(A296306(n+1))` -/
def P1685147947418308640.Spec : Prop :=
  ∀ n, P1685147947418308640.a n = A352056 (n + 1)

end A352056

/-!
# A352057: Triangular numbers whose nonzero digits are all the same.

The programs for A352057, there is no canonical definition to state claims against.
-/

/-! ## A352057.P16551111966426979554

`C(A352148(n+1)+1, 2)`
-/

namespace A352057.P16551111966426979554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A352148 (n + 1) + 1).toNat 2

end

end A352057.P16551111966426979554

/-! ## A352057.P2136030070132950042

`A000217(A352148(n+1))`
-/

namespace A352057.P2136030070132950042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A352148 (n + 1)).toNat

end

end A352057.P2136030070132950042

/-! ## A352057.P2813882237266223948

`A161680(A352148(n+1)+1)`
-/

namespace A352057.P2813882237266223948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A352148 (n + 1) + 1).toNat

end

end A352057.P2813882237266223948

/-! ## A352057.P13433565569384952537

`A000124(A352148(n+1))-A007318(∑[n])`
-/

namespace A352057.P13433565569384952537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A352148 (n + 1)).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A352057.P13433565569384952537

/-! ## A352057.P6786027898336704504

`A133263(A352148(n+1))-A036453(n+1)`
-/

namespace A352057.P6786027898336704504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (A352148 (n + 1)).toNat - A036453 (n + 1)

end

end A352057.P6786027898336704504

/-!
# A352058: a(n) = Sum_{p|n, p prime} n!/(p!*(n/p)!).

The programs for A352058, there is no canonical definition to state claims against.
-/

/-! ## A352058.P9133919171048943727

`A029578(A121860(n+1)-A322977(n+1))`
-/

namespace A352058.P9133919171048943727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A121860 (n + 1) - A322977 (n + 1)).toNat

end

end A352058.P9133919171048943727

/-! ## A352058.P5114112386647483282

`A306585(A093178(n))%A303489(∑[n+3]+1)`
-/

namespace A352058.P5114112386647483282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306585 (A093178 n).toNat) (A303489 (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A352058.P5114112386647483282

/-!
# A352059: a(n) = Sum_{p|n, p prime} (n-1)!/(n/p-1)!.

The programs for A352059, there is no canonical definition to state claims against.
-/

/-! ## A352059.P9146319509778613509

`A106612(A001190(n)*A081125(n))`
-/

namespace A352059.P9146319509778613509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A001190 n * A081125 n).toNat

end

end A352059.P9146319509778613509

/-! ## A352059.P5782851736546679116

`A004526((∑{p}[n+1, gcd(n, #)]+1)*n!)`
-/

namespace A352059.P5782851736546679116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p + 1) * Nat.factorial n)

end

end A352059.P5782851736546679116

/-! ## A352059.P16351826892006289011

`A025480(n!*∏{e}[∏{e}[n+1, #+1], #+1])`
-/

namespace A352059.P16351826892006289011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Nat.factorial n * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)))

end

end A352059.P16351826892006289011

/-!
# A352060: a(n) = (n - 1)! * omega(n), where omega(n) = number of distinct primes dividing n (A001221).

The programs for A352060, the canonical program `A352060.P16517942845462648918` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352060 has offset 1).

The definition of A352060 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!*A001221(n+1)` (program `A352060.P16517942845462648918`, by `A352060.P16517942845462648918.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A352060.P16517942845462648918

`n!*A001221(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A352060

/-- `n!*A001221(n+1)` -/
def P16517942845462648918.Spec : Prop :=
  ∀ n, P16517942845462648918.a n = A352060 (n + 1)

theorem P16517942845462648918.correct : P16517942845462648918.Spec := by
  intro n
  simp only [A352060, Nat.add_sub_cancel]

end A352060

/-! ## A352060.P7198514643677517979

`∑{e}[n+1, lcm(#, n!)]`
-/

namespace A352060.P7198514643677517979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.lcm (Nat.factorization (f1 n) p) (Nat.factorial n)

end

end A352060.P7198514643677517979

namespace A352060

/-- `∑{e}[n+1, lcm(#, n!)]` -/
def P7198514643677517979.Spec : Prop :=
  ∀ n, (P7198514643677517979.a n : ℤ) = A352060 (n + 1)

end A352060

/-! ## A352060.P17175830552294708352

`∑{e}[n+1, and(-#, n!)]`
-/

namespace A352060.P17175830552294708352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.land (-(Nat.factorization (f1 n) p : ℤ)) (Nat.factorial n : ℤ)

end

end A352060.P17175830552294708352

namespace A352060

/-- `∑{e}[n+1, and(-#, n!)]` -/
def P17175830552294708352.Spec : Prop :=
  ∀ n, P17175830552294708352.a n = A352060 (n + 1)

end A352060

/-! ## A352060.P3606375084134250327

`∑{p}[n+1, n!+val(#, 4)]`
-/

namespace A352060.P3606375084134250327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorial n + SequenceMachineLib.valuation p 4)

end

end A352060.P3606375084134250327

namespace A352060

/-- `∑{p}[n+1, n!+val(#, 4)]` -/
def P3606375084134250327.Spec : Prop :=
  ∀ n, (P3606375084134250327.a n : ℤ) = A352060 (n + 1)

end A352060

/-! ## A352060.P2184517879223281452

`∑{p}[n+1, and(1-#, n!)]`
-/

namespace A352060.P2184517879223281452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.land (1 - (p : ℤ)) (Nat.factorial n : ℤ)

end

end A352060.P2184517879223281452

namespace A352060

/-- `∑{p}[n+1, and(1-#, n!)]` -/
def P2184517879223281452.Spec : Prop :=
  ∀ n, P2184517879223281452.a n = A352060 (n + 1)

end A352060

/-! ## A352060.P7164061469876814131

`∑{p}[n+1, gcd(n, n*#)!]`
-/

namespace A352060.P7164061469876814131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.gcd n (n * p))

end

end A352060.P7164061469876814131

namespace A352060

/-- `∑{p}[n+1, gcd(n, n*#)!]` -/
def P7164061469876814131.Spec : Prop :=
  ∀ n, (P7164061469876814131.a n : ℤ) = A352060 (n + 1)

end A352060

/-! ## A352060.P13818692682422547779

`∑{e}[∏{p}[n+1, #], (n*#)!]`
-/

namespace A352060.P13818692682422547779
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial (n * Nat.factorization (f1 n) p)

end

end A352060.P13818692682422547779

namespace A352060

/-- `∑{e}[∏{p}[n+1, #], (n*#)!]` -/
def P13818692682422547779.Spec : Prop :=
  ∀ n, (P13818692682422547779.a n : ℤ) = A352060 (n + 1)

end A352060

/-! ## A352060.P115538575195453859

`∑{e}[∏{p}[n+1, #], n!/#]`
-/

namespace A352060.P115538575195453859
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorial n : ℚ) / (Nat.factorization (f1 n) p : ℚ)

end

end A352060.P115538575195453859

namespace A352060

/-- `∑{e}[∏{p}[n+1, #], n!/#]` -/
def P115538575195453859.Spec : Prop :=
  ∀ n, P115538575195453859.a n = (A352060 (n + 1) : ℚ)

end A352060

/-! ## A352060.P3226558755547395249

`∑{e}[∏{p}[n+1, #], n!^#]`
-/

namespace A352060.P3226558755547395249
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial n ^ Nat.factorization (f1 n) p

end

end A352060.P3226558755547395249

namespace A352060

/-- `∑{e}[∏{p}[n+1, #], n!^#]` -/
def P3226558755547395249.Spec : Prop :=
  ∀ n, (P3226558755547395249.a n : ℤ) = A352060 (n + 1)

end A352060

/-! ## A352060.P14501954568351413314

`∑{p}[n+1, (C(#, n+2)+n)!]`
-/

namespace A352060.P14501954568351413314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.choose p (n + 2) + n)

end

end A352060.P14501954568351413314

namespace A352060

/-- `∑{p}[n+1, (C(#, n+2)+n)!]` -/
def P14501954568351413314.Spec : Prop :=
  ∀ n, (P14501954568351413314.a n : ℤ) = A352060 (n + 1)

end A352060

/-!
# A352061: Numbers n = 2^m * q, m > 0 and q > 1 odd, where the smallest odd divisor p > 1 is the m-th Mersenne prime 2^(m+1) - 1.

The programs for A352061, there is no canonical definition to state claims against.
-/

/-! ## A352061.P5230829177642326203

`filter[A225241(n+1), A374197(#)]`
-/

namespace A352061.P5230829177642326203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374197 (f1 j).toNat = 1) n)

end

end A352061.P5230829177642326203

/-! ## A352061.P13302241989857535473

`∩[A225241(n+1), A374198(n+1)]`
-/

namespace A352061.P13302241989857535473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352061.P13302241989857535473

/-! ## A352061.P17683000197540041193

`A181569(eq[xor(n, n+1), A111787(n+1)])`
-/

namespace A352061.P17683000197540041193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A352061.P17683000197540041193

/-! ## A352061.P9058345815120744429

`eq[A038712(A008486(n)), A163169(n)]`
-/

namespace A352061.P9058345815120744429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A008486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163169 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352061.P9058345815120744429

/-! ## A352061.P14163836707011666808

`eq[A038712(A008706(n)), A163169(n)]`
-/

namespace A352061.P14163836707011666808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A008706 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163169 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352061.P14163836707011666808

/-! ## A352061.P12421625593075937797

`eq[A038712(A028310(n)), A163169(n)]`
-/

namespace A352061.P12421625593075937797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163169 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352061.P12421625593075937797

/-! ## A352061.P1515948296033372208

`eq[A038712(A233583(n+1)), A163169(n)]`
-/

namespace A352061.P1515948296033372208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163169 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352061.P1515948296033372208

/-!
# A352063: Number of ordered factorizations of 2*n + 1 into odd factors > 1.

The programs for A352063, there is no canonical definition to state claims against.
-/

/-! ## A352063.P14690323356570447284

`A074206(2*n+1)`
-/

namespace A352063.P14690323356570447284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (2 * n + 1)

end

end A352063.P14690323356570447284

/-! ## A352063.P10654391536945489394

`A378222(2*n+1)`
-/

namespace A352063.P10654391536945489394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378222 (2 * n + 1)

end

end A352063.P10654391536945489394

/-! ## A352063.P17643397536968940793

`A002033(2*n)`
-/

namespace A352063.P17643397536968940793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (2 * n)

end

end A352063.P17643397536968940793

/-! ## A352063.P12127906507833025597

`A345182(Δ[n²])`
-/

namespace A352063.P12127906507833025597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345182 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A352063.P12127906507833025597

/-! ## A352063.P17407609870147357008

`A117621(2*(n+1))`
-/

namespace A352063.P17407609870147357008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117621 (2 * (n + 1))

end

end A352063.P17407609870147357008

/-! ## A352063.P593835825765650193

`round(A335283(2*n+1)/2)`
-/

namespace A352063.P593835825765650193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A335283 (2 * n + 1) : ℚ) / 2)

end

end A352063.P593835825765650193

/-! ## A352063.P2839217554686917132

`A050324(A101296(2*n+1))`
-/

namespace A352063.P2839217554686917132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050324 (A101296 (2 * n + 1)).toNat

end

end A352063.P2839217554686917132

/-! ## A352063.P414928445689040490

`A008621(A253249(2*n+1))`
-/

namespace A352063.P414928445689040490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A253249 (2 * n + 1)).toNat

end

end A352063.P414928445689040490

/-! ## A352063.P15392726618549415328

`A004525(A335283(2*n+1))`
-/

namespace A352063.P15392726618549415328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A335283 (2 * n + 1)).toNat

end

end A352063.P15392726618549415328

/-! ## A352063.P15416347836422378673

`A308077(Δ[n²])`
-/

namespace A352063.P15416347836422378673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308077 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A352063.P15416347836422378673

/-! ## A352063.P2404746364512411715

`A325144(Δ[n²])`
-/

namespace A352063.P2404746364512411715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325144 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A352063.P2404746364512411715

/-! ## A352063.P4626967490690513987

`A371209(Δ[n²])`
-/

namespace A352063.P4626967490690513987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371209 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A352063.P4626967490690513987

/-! ## A352063.P4087487873527073898

`∑{d}[Δ[n²], A174725(#)]`
-/

namespace A352063.P4087487873527073898
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A174725 d

end

end A352063.P4087487873527073898

/-! ## A352063.P14366966399852499065

`abs(A308077(2*n+1))`
-/

namespace A352063.P14366966399852499065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A308077 (2 * n + 1)|

end

end A352063.P14366966399852499065

/-! ## A352063.P14552260427577018909

`ceil(A067824(2*n+1)/2)`
-/

namespace A352063.P14552260427577018909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A067824 (2 * n + 1) : ℚ) / 2⌉

end

end A352063.P14552260427577018909

/-! ## A352063.P4276202884786663342

`A050369(2*n+1)/(2*n+1)`
-/

namespace A352063.P4276202884786663342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050369 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A352063.P4276202884786663342

/-! ## A352063.P7338351884619647560

`A358276(2*n+1)/(2*n+1)`
-/

namespace A352063.P7338351884619647560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358276 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A352063.P7338351884619647560

/-! ## A352063.P8428061630891522903

`A004525(A067824(2*n+1))`
-/

namespace A352063.P8428061630891522903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A067824 (2 * n + 1)).toNat

end

end A352063.P8428061630891522903

/-!
# A352064: Irregular triangle T(n,k) where row n lists the positions of n in A275314.

The programs for A352064, there is no canonical definition to state claims against.
-/

/-! ## A352064.P16914031897661745281

`A122111(A343012(n+1)%A229861(2*n+1))`
-/

namespace A352064.P16914031897661745281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (Int.tmod (A343012 (n + 1)) (A229861 (2 * n + 1))).toNat

end

end A352064.P16914031897661745281

/-! ## A352064.P1182273854859388924

`A277905(n+1)%A319068(A330880(n+1))`
-/

namespace A352064.P1182273854859388924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277905 (n + 1)) (A319068 (A330880 (n + 1)).toNat)

end

end A352064.P1182273854859388924

/-!
# A352066: a(0) = 1; a(n) = Sum_{k=0..floor((n-1)/4)} binomial(n-1,4*k) * a(k).

The programs for A352066, there is no canonical definition to state claims against.
-/

/-! ## A352066.P15948129041927849788

`∏{e}[floor(2^(n-1)), A038503(#)]`
-/

namespace A352066.P15948129041927849788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A038503 (Nat.factorization (f1 n).natAbs p)

end

end A352066.P15948129041927849788

/-! ## A352066.P3146194596250408104

`A038503((n-1)%A089421(n))`
-/

namespace A352066.P3146194596250408104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 (Int.tmod ((n : ℤ) - 1) (A089421 n)).toNat

end

end A352066.P3146194596250408104

/-! ## A352066.P11172956541582915741

`A038503(floor(log2(A324840(n+3))))`
-/

namespace A352066.P11172956541582915741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 (Nat.log 2 (A324840 (n + 3)).toNat)

end

end A352066.P11172956541582915741

/-! ## A352066.P3902822025986062711

`A038503(A001222(ceil(2^(n-1))))`
-/

namespace A352066.P3902822025986062711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 (A001222 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

end

end A352066.P3902822025986062711

/-!
# A352067: Triangle read by rows: T(n,k) is the number of connected graphs with n nodes and degeneracy k, 0 <= k < n.

The programs for A352067, there is no canonical definition to state claims against.
-/

/-! ## A352067.P12829986491412213696

`A089843(A368486(n))`
-/

namespace A352067.P12829986491412213696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089843 (A368486 n).toNat

end

end A352067.P12829986491412213696

/-! ## A352067.P1040974350493997533

`A117707(lcm(A247453(n), A326474(n)))`
-/

namespace A352067.P1040974350493997533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (Int.lcm (A247453 n) (A326474 n))

end

end A352067.P1040974350493997533

/-! ## A352067.P11692727947522861795

`∑{d}[A211183(n), A050142(#)]`
-/

namespace A352067.P11692727947522861795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A050142 d

end

end A352067.P11692727947522861795

/-! ## A352067.P9662481423297130980

`A167749(A145905(n))+A167749(n)`
-/

namespace A352067.P9662481423297130980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167749 (A145905 n).toNat + A167749 n

end

end A352067.P9662481423297130980

/-! ## A352067.P8403137733073267706

`A000032(A113092(n))%A000285(A172380(n))`
-/

namespace A352067.P8403137733073267706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (A113092 n).toNat) (A000285 (A172380 n).toNat)

end

end A352067.P8403137733073267706

/-!
# A352068: Number of C4-free graphs (graphs with no induced cycle of length four) with n nodes.

The programs for A352068, there is no canonical definition to state claims against.
-/

/-! ## A352068.P18224442874310114749

`A036234(A137545(n+1))`
-/

namespace A352068.P18224442874310114749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A137545 (n + 1)).toNat

end

end A352068.P18224442874310114749

/-! ## A352068.P6895074341435888641

`A036234(A137546(n+1))`
-/

namespace A352068.P6895074341435888641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A137546 (n + 1)).toNat

end

end A352068.P6895074341435888641

/-!
# A352069: Expansion of e.g.f. 1 / (1 + log(1 - 3*x) / 3).

The programs for A352069, there is no canonical definition to state claims against.
-/

/-! ## A352069.P7846228312086676511

`A226213(2*n*a(n-1))` with `a(0)=1`
-/

namespace A352069.P7846228312086676511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A226213 (2 * ((n : ℤ) * a (n - 1))).toNat

end

end A352069.P7846228312086676511

/-!
# A352070: Expansion of e.g.f. 1/(1 - log(1 + 3*x))^(1/3).

The programs for A352070, there is no canonical definition to state claims against.
-/

/-! ## A352070.P2124709523369527686

`A147064(A202025(n+1))`
-/

namespace A352070.P2124709523369527686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147064 (A202025 (n + 1)).toNat

end

end A352070.P2124709523369527686

/-! ## A352070.P7324420661405517800

`A231145(A094545(n)+7)`
-/

namespace A352070.P7324420661405517800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231145 (A094545 n + 7).toNat

end

end A352070.P7324420661405517800

/-!
# A352071: Expansion of e.g.f. 1 / (1 + log(1 - 4*x) / 4).

The programs for A352071, there is no canonical definition to state claims against.
-/

/-! ## A352071.P4625862382886374126

`A315991((n-1)*a(n-1))` with `a(0)=1`
-/

namespace A352071.P4625862382886374126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A315991 (((n : ℤ) - 1) * a (n - 1)).toNat

end

end A352071.P4625862382886374126

/-!
# A352072: a(n) = least k such that A003586(n) | 12^k.

The programs for A352072, there is no canonical definition to state claims against.
-/

/-! ## A352072.P15241101327362683679

`A054712(∑[A061987(n)])-1`
-/

namespace A352072.P15241101327362683679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054712 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A352072.P15241101327362683679

/-! ## A352072.P2534748189199859794

`A054712(A003586(n+1))-1`
-/

namespace A352072.P2534748189199859794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054712 (A003586 (n + 1)).toNat - 1

end

end A352072.P2534748189199859794

/-! ## A352072.P4447474948778914033

`A054712(sqrt(A025620(n+1)))-1`
-/

namespace A352072.P4447474948778914033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054712 (SequenceMachineLib.roundAway (Real.sqrt (A025620 (n + 1) : ℝ))).toNat - 1

end

end A352072.P4447474948778914033

/-! ## A352072.P1447261434851068209

`A054712(A007694(n+2)/2)-1`
-/

namespace A352072.P1447261434851068209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054712 (SequenceMachineLib.roundAway ((A007694 (n + 2) : ℚ) / 2)).toNat - 1

end

end A352072.P1447261434851068209

/-! ## A352072.P5085515615791319699

`A054712(A065119(n+1)/3)-1`
-/

namespace A352072.P5085515615791319699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054712 (SequenceMachineLib.roundAway ((A065119 (n + 1) : ℚ) / 3)).toNat - 1

end

end A352072.P5085515615791319699

/-! ## A352072.P11834839391388240716

`A054712(sqrt(A063755(n+2))/2)-1`
-/

namespace A352072.P11834839391388240716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054712 (SequenceMachineLib.roundAway (Real.sqrt (A063755 (n + 2) : ℝ) / 2)).toNat - 1

end

end A352072.P11834839391388240716

/-! ## A352072.P941663231888725790

`A054712(ceil(A190812(n+1)/2))-1`
-/

namespace A352072.P941663231888725790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054712 ⌈(A190812 (n + 1) : ℚ) / 2⌉.toNat - 1

end

end A352072.P941663231888725790

/-! ## A352072.P347405660524513412

`abs(1-A054712(A003586(Δ[n²]-n)))`
-/

namespace A352072.P347405660524513412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A054712 (A003586 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat|

end

end A352072.P347405660524513412

/-! ## A352072.P14667273229706121500

`A134824(n+2)+A054712(A003586(n+1))`
-/

namespace A352072.P14667273229706121500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A054712 (A003586 (n + 1)).toNat

end

end A352072.P14667273229706121500

/-!
# A352073: Expansion of e.g.f. 1/(1 - log(1 + 4*x))^(1/4).

The programs for A352073, there is no canonical definition to state claims against.
-/

/-! ## A352073.P5805780323274200291

`A201059(A000405(n))`
-/

namespace A352073.P5805780323274200291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201059 (A000405 n).toNat

end

end A352073.P5805780323274200291

/-! ## A352073.P17528852766031413182

`A118679(A148667(n))`
-/

namespace A352073.P17528852766031413182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118679 (A148667 n).toNat

end

end A352073.P17528852766031413182

/-!
# A352074: a(n) = Sum_{k=0..n} Stirling1(n,k) * k! * (-n)^(n-k).

The programs for A352074, there is no canonical definition to state claims against.
-/

/-! ## A352074.P13328417117700634456

`A000026(A243486(n))`
-/

namespace A352074.P13328417117700634456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A243486 n).toNat

end

end A352074.P13328417117700634456

/-!
# A352075: Expansion of e.g.f. sqrt(1 - log(1 - 2*x)).

The programs for A352075, there is no canonical definition to state claims against.
-/

/-! ## A352075.P8037852880407740471

`A098794(2^n)-n²`
-/

namespace A352075.P8037852880407740471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098794 (2 ^ n) - (n ^ 2 : ℤ)

end

end A352075.P8037852880407740471

/-! ## A352075.P17211500597967627397

`A174358(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=5, a(4)=25`
-/

namespace A352075.P17211500597967627397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 5, 25] fun n a =>
  A174358 (a (n - 1)).toNat

end

end A352075.P17211500597967627397

/-!
# A352076: G.f.: 1/(1 + (x + x)/(1 + (x + x^2)/(1 + (x + x^3)/(1 + (x + x^4)/(1 ...))))), a continued fraction.

The programs for A352076, there is no canonical definition to state claims against.
-/

/-! ## A352076.P14711038722698485325

`A003056(A111531(n))*A280560(n)`
-/

namespace A352076.P14711038722698485325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A111531 n).toNat * A280560 n

end

end A352076.P14711038722698485325

/-! ## A352076.P7994119111246469453

`A000120(A261559(n+1))*A071109(n)`
-/

namespace A352076.P7994119111246469453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A261559 (n + 1)).toNat * A071109 n

end

end A352076.P7994119111246469453

/-!
# A352077: a(n) = floor( Sum_{k=1..n} k^(1/3) ).

The programs for A352077, the canonical program `A352077.P4707584038636025061` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352077 has offset 0).

The definition of A352077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 740 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352077.P4707584038636025061

`floor(∑[n^(1/3)])`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A352077

/-- `floor(∑[n^(1/3)])` -/
def P4707584038636025061.Spec : Prop :=
  ∀ n, P4707584038636025061.a n = A352077 n

theorem P4707584038636025061.correct : P4707584038636025061.Spec := by
  intro n
  simp only [A352077]

end A352077

/-! ## A352077.P10316090323797060194

`floor(∑[root(A028310(n), 3)])-1`
-/

namespace A352077.P10316090323797060194
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℝ) ^ (1 / (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ - 1

end

end A352077.P10316090323797060194

namespace A352077

/-- `floor(∑[root(A028310(n), 3)])-1` -/
def P10316090323797060194.Spec : Prop :=
  ∀ n, P10316090323797060194.a n = A352077 n

end A352077

/-! ## A352077.P3656544577898729284

`ceil(log(∑[A323672(n)]))`
-/

namespace A352077.P3656544577898729284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉

end

end A352077.P3656544577898729284

namespace A352077

/-- `ceil(log(∑[A323672(n)]))` -/
def P3656544577898729284.Spec : Prop :=
  ∀ n, P3656544577898729284.a n = A352077 n

end A352077

/-! ## A352077.P8934400968359193617

`round(log(A058801(n+2)))`
-/

namespace A352077.P8934400968359193617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A058801 (n + 2) : ℝ))

end

end A352077.P8934400968359193617

namespace A352077

/-- `round(log(A058801(n+2)))` -/
def P8934400968359193617.Spec : Prop :=
  ∀ n, P8934400968359193617.a n = A352077 n

end A352077

/-! ## A352077.P7524073327345430853

`A213857(n+1)%A000567(A056391(n+1))`
-/

namespace A352077.P7524073327345430853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213857 (n + 1)) (A000567 (A056391 (n + 1)).toNat)

end

end A352077.P7524073327345430853

namespace A352077

/-- `A213857(n+1)%A000567(A056391(n+1))` -/
def P7524073327345430853.Spec : Prop :=
  ∀ n, P7524073327345430853.a n = A352077 n

end A352077

/-!
# A352078: Number of ordered triples (a,b,c) of positive integers less than n with the property that n divides a*b*c.

The programs for A352078, there is no canonical definition to state claims against.
-/

/-! ## A352078.P6191802947492332873

`A372881(n+1)-A003215(n)`
-/

namespace A352078.P6191802947492332873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372881 (n + 1) - A003215 n

end

end A352078.P6191802947492332873

/-! ## A352078.P16233564088011655298

`A372881(n+1)-Δ[A000578(n)]`
-/

namespace A352078.P16233564088011655298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372881 (n + 1) - (f1 (n + 1) - f1 n)

end

end A352078.P16233564088011655298

/-!
# A352079: The number of nonnegative integers that have a shortest divisor addition chain of length n.

The programs for A352079, there is no canonical definition to state claims against.
-/

/-! ## A352079.P15816513485178813502

`A163101(A107479(n+1))`
-/

namespace A352079.P15816513485178813502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163101 (A107479 (n + 1)).toNat

end

end A352079.P15816513485178813502

/-! ## A352079.P10091912889814760768

`A359415(A245800(n+1))`
-/

namespace A352079.P10091912889814760768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359415 (A245800 (n + 1)).toNat

end

end A352079.P10091912889814760768

/-! ## A352079.P1196076520241883448

`A000196(A320805(n)+A000079(n))`
-/

namespace A352079.P1196076520241883448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A320805 n + A000079 n).toNat

end

end A352079.P1196076520241883448

/-! ## A352079.P12492501626511048314

`A000194(A320805(n)+A034007(n))`
-/

namespace A352079.P12492501626511048314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A320805 n + A034007 n).toNat

end

end A352079.P12492501626511048314

/-! ## A352079.P3965418199080386592

`A003065(n)-A001222(A304887(n))`
-/

namespace A352079.P3965418199080386592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003065 n - A001222 (A304887 n).toNat

end

end A352079.P3965418199080386592

/-!
# A352080: a(n) is the number of times that the square root operation must be applied to n in order to reach an irrational number.

The programs for A352080, the canonical program `A352080.P17911797979102270506` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352080 has offset 2).

The definition of A352080 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052409, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A352080.P17911797979102270506

`A007814(A052409(n+2))+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A352080

/-- `A007814(A052409(n+2))+1` -/
def P17911797979102270506.Spec : Prop :=
  ∀ n, P17911797979102270506.a n = A352080 (n + 2)

theorem P17911797979102270506.correct : P17911797979102270506.Spec := by
  intro n
  simp only [A352080, Nat.add_sub_cancel]

end A352080

/-! ## A352080.P1436925723035138681

`A001511(A267116(n+2))`
-/

namespace A352080.P1436925723035138681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A267116 (n + 2)).toNat

end

end A352080.P1436925723035138681

namespace A352080

/-- `A001511(A267116(n+2))` -/
def P1436925723035138681.Spec : Prop :=
  ∀ n, P1436925723035138681.a n = A352080 (n + 2)

end A352080

/-! ## A352080.P4136262645579722734

`Δ[a(floor(sqrt(n+1))-1)+n]` with `a(0)=1`
-/

namespace A352080.P4136262645579722734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (Nat.sqrt (n + 1) - 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A352080.P4136262645579722734

namespace A352080

/-- `Δ[a(floor(sqrt(n+1))-1)+n]` -/
def P4136262645579722734.Spec : Prop :=
  ∀ n, P4136262645579722734.a n = A352080 (n + 2)

end A352080

/-! ## A352080.P18404975779839238172

`A001511(A052409(n+2))`
-/

namespace A352080.P18404975779839238172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A052409 (n + 2)).toNat

end

end A352080.P18404975779839238172

namespace A352080

/-- `A001511(A052409(n+2))` -/
def P18404975779839238172.Spec : Prop :=
  ∀ n, P18404975779839238172.a n = A352080 (n + 2)

theorem P18404975779839238172.correct : P18404975779839238172.Spec := by
  intro n
  simp only [A352080, Nat.add_sub_cancel, A352080.P18404975779839238172.a, A352080.P17911797979102270506.a, A001511, A001511.P17146462531039486101.a, A007814, A007814.P13537437864234730737.a, A052409, A052409.P7338948793466901153.a, A006519, A006519.P10435570611646570274.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A051904, A051904.P9263651810596342710.a, A046523, A046523.P3407874444772092792.a, A071178, A071178.P17375525505785378954.a, A171977, A171977.P14092944863121073856.a, A006530, A006530.P13372528560459906635.a, A038712, A038712.P3404197303190209645.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A352080

/-! ## A352080.P483375613764615257

`A055396(A293442(n+2))`
-/

namespace A352080.P483375613764615257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A293442 (n + 2)).toNat

end

end A352080.P483375613764615257

namespace A352080

/-- `A055396(A293442(n+2))` -/
def P483375613764615257.Spec : Prop :=
  ∀ n, P483375613764615257.a n = A352080 (n + 2)

end A352080

/-! ## A352080.P7629668708273815592

`A007814(A329616(n+2))+1`
-/

namespace A352080.P7629668708273815592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A329616 (n + 2)).toNat + 1

end

end A352080.P7629668708273815592

namespace A352080

/-- `A007814(A329616(n+2))+1` -/
def P7629668708273815592.Spec : Prop :=
  ∀ n, P7629668708273815592.a n = A352080 (n + 2)

end A352080

/-! ## A352080.P5358551161912551412

`∏{e}[A052409((n+2)²), #]`
-/

namespace A352080.P5358551161912551412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 ((n + 2) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A352080.P5358551161912551412

namespace A352080

/-- `∏{e}[A052409((n+2)²), #]` -/
def P5358551161912551412.Spec : Prop :=
  ∀ n, (P5358551161912551412.a n : ℤ) = A352080 (n + 2)

end A352080

/-! ## A352080.P3503275392649917169

`A005361(A052409((n+2)²))`
-/

namespace A352080.P3503275392649917169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A052409 ((n + 2) ^ 2)).toNat

end

end A352080.P3503275392649917169

namespace A352080

/-- `A005361(A052409((n+2)²))` -/
def P3503275392649917169.Spec : Prop :=
  ∀ n, P3503275392649917169.a n = A352080 (n + 2)

end A352080

/-! ## A352080.P13710262103431804463

`A007814(A329616((n+2)²))`
-/

namespace A352080.P13710262103431804463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A329616 ((n + 2) ^ 2)).toNat

end

end A352080.P13710262103431804463

namespace A352080

/-- `A007814(A329616((n+2)²))` -/
def P13710262103431804463.Spec : Prop :=
  ∀ n, P13710262103431804463.a n = A352080 (n + 2)

end A352080

/-! ## A352080.P10494222015884968748

`A333940(A360997(n+2))`
-/

namespace A352080.P10494222015884968748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333940 (A360997 (n + 2)).toNat

end

end A352080.P10494222015884968748

namespace A352080

/-- `A333940(A360997(n+2))` -/
def P10494222015884968748.Spec : Prop :=
  ∀ n, P10494222015884968748.a n = A352080 (n + 2)

end A352080

/-!
# A352082: a(n) = Sum_{k=0..floor(n/2)} (n-2*k)^n.

The programs for A352082, there is no canonical definition to state claims against.
-/

/-! ## A352082.P2099314530805064191

`A308358(A010754(n)+(n+1)^n+1)`
-/

namespace A352082.P2099314530805064191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308358 (A010754 n + ((n + 1) ^ n : ℤ) + 1).toNat

end

end A352082.P2099314530805064191

/-! ## A352082.P1710812427335794834

`ceil(A331684(3*(n+1))/A161330(2*(n+1)))`
-/

namespace A352082.P1710812427335794834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A331684 (3 * (n + 1)) : ℚ) / (A161330 (2 * (n + 1)) : ℚ)⌉

end

end A352082.P1710812427335794834

/-!
# A352084: Integers m such that wt(m) divides wt(m^2) where wt(m) = A000120(m) is the binary weight of m.

The programs for A352084, there is no canonical definition to state claims against.
-/

/-! ## A352084.P5248066241294260739

`eq[A035322(n+1), A266298(A247640(n))]`
-/

namespace A352084.P5248066241294260739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266298 (A247640 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352084.P5248066241294260739

/-! ## A352084.P8526028189573228980

`eq[A268411(n), A304708(A160983(n+1))]`
-/

namespace A352084.P8526028189573228980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268411 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304708 (A160983 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352084.P8526028189573228980

/-! ## A352084.P4969487439429685873

`A268415(n+1)+A185284(2*n+1)`
-/

namespace A352084.P4969487439429685873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268415 (n + 1) + A185284 (2 * n + 1)

end

end A352084.P4969487439429685873

/-! ## A352084.P12503048093255484621

`A268415(n+1)+A025469(A338586(n))`
-/

namespace A352084.P12503048093255484621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268415 (n + 1) + A025469 (A338586 n).toNat

end

end A352084.P12503048093255484621

/-! ## A352084.P3406648061872405902

`eq[A202705(A161038(n+1)), A268411(n)]`
-/

namespace A352084.P3406648061872405902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202705 (A161038 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268411 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352084.P3406648061872405902

/-!
# A352085: a(n) is the quotient wt(m^2) / wt(m), where wt = binary weight = A000120 and m = A352084(n).

The programs for A352085, there is no canonical definition to state claims against.
-/

/-! ## A352085.P16116850231121125769

`A159918(A352084(n+1))/A000120(A352084(n+1))`
-/

namespace A352085.P16116850231121125769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159918 (A352084 (n + 1)).toNat : ℚ) / (A000120 (A352084 (n + 1)).toNat : ℚ)

end

end A352085.P16116850231121125769

/-! ## A352085.P18325808005957545128

`A002033(A243611(n+1)!)`
-/

namespace A352085.P18325808005957545128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (Nat.factorial (A243611 (n + 1)).toNat)

end

end A352085.P18325808005957545128

/-! ## A352085.P1708419983226508688

`A031346(A243611(n+1)!)+1`
-/

namespace A352085.P1708419983226508688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (Nat.factorial (A243611 (n + 1)).toNat) + 1

end

end A352085.P1708419983226508688

/-! ## A352085.P15074671832257188815

`A327103(∏{p}[A094387(2*n+1), #])`
-/

namespace A352085.P15074671832257188815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094387 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327103 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A352085.P15074671832257188815

/-! ## A352085.P15930063356129269371

`A111890(A243611(n+1)%A286845(n+2))`
-/

namespace A352085.P15930063356129269371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111890 (Int.tmod (A243611 (n + 1)) (A286845 (n + 2))).toNat

end

end A352085.P15930063356129269371

/-!
# A352087: Numbers whose minimal (or greedy) tribonacci representation (A278038) is palindromic.

The programs for A352087, the canonical program `A352087.P2052615442428702218` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352087 has offset 1).

The definition of A352087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352087.P2052615442428702218

`eq[0, A175919(A003726(n+1))]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A352087

/-- `eq[0, A175919(A003726(n+1))]` -/
def P2052615442428702218.Spec : Prop :=
  ∀ n, (P2052615442428702218.a n : ℤ) = A352087 (n + 1)

theorem P2052615442428702218.correct : P2052615442428702218.Spec := by
  intro n
  simp only [A352087, Nat.add_sub_cancel]

end A352087

/-! ## A352087.P15550972474555672281

`lt[A175919(A003726(n+1)), A000005(n+1)]`
-/

namespace A352087.P15550972474555672281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (A003726 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352087.P15550972474555672281

namespace A352087

/-- `lt[A175919(A003726(n+1)), A000005(n+1)]` -/
def P15550972474555672281.Spec : Prop :=
  ∀ n, (P15550972474555672281.a n : ℤ) = A352087 (n + 1)

end A352087

/-! ## A352087.P3947246924401262124

`lt[A175919(A003726(n+1)), A002262(n)+1]`
-/

namespace A352087.P3947246924401262124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (A003726 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352087.P3947246924401262124

namespace A352087

/-- `lt[A175919(A003726(n+1)), A002262(n)+1]` -/
def P3947246924401262124.Spec : Prop :=
  ∀ n, (P3947246924401262124.a n : ℤ) = A352087 (n + 1)

end A352087

/-! ## A352087.P4836635911154624406

`lt[A175919(A003726(n+1)), A025581(n)+1]`
-/

namespace A352087.P4836635911154624406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (A003726 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352087.P4836635911154624406

namespace A352087

/-- `lt[A175919(A003726(n+1)), A025581(n)+1]` -/
def P4836635911154624406.Spec : Prop :=
  ∀ n, (P4836635911154624406.a n : ℤ) = A352087 (n + 1)

end A352087

/-! ## A352087.P8065880022015024586

`lt[A175919(A003726(n+1)), A349520(n+1)]`
-/

namespace A352087.P8065880022015024586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (A003726 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352087.P8065880022015024586

namespace A352087

/-- `lt[A175919(A003726(n+1)), A349520(n+1)]` -/
def P8065880022015024586.Spec : Prop :=
  ∀ n, (P8065880022015024586.a n : ℤ) = A352087 (n + 1)

end A352087

/-! ## A352087.P5056901681969803856

`lt[A008593(n)*A175919(A003726(n+1)), 2]`
-/

namespace A352087.P5056901681969803856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n * A175919 (A003726 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352087.P5056901681969803856

namespace A352087

/-- `lt[A008593(n)*A175919(A003726(n+1)), 2]` -/
def P5056901681969803856.Spec : Prop :=
  ∀ n, (P5056901681969803856.a n : ℤ) = A352087 (n + 1)

end A352087

/-! ## A352087.P16597676561526985014

`lt[A000010(n+1)*A175919(A003726(n+1)), 2]`
-/

namespace A352087.P16597676561526985014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A175919 (A003726 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352087.P16597676561526985014

namespace A352087

/-- `lt[A000010(n+1)*A175919(A003726(n+1)), 2]` -/
def P16597676561526985014.Spec : Prop :=
  ∀ n, (P16597676561526985014.a n : ℤ) = A352087 (n + 1)

end A352087

/-! ## A352087.P469679894211922754

`lt[A002473(n+1)*A175919(A003726(n+1)), 2]`
-/

namespace A352087.P469679894211922754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1) * A175919 (A003726 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352087.P469679894211922754

namespace A352087

/-- `lt[A002473(n+1)*A175919(A003726(n+1)), 2]` -/
def P469679894211922754.Spec : Prop :=
  ∀ n, (P469679894211922754.a n : ℤ) = A352087 (n + 1)

end A352087

/-!
# A352088: Numbers whose binary and minimal tribonacci representations are both palindromic.

The programs for A352088, there is no canonical definition to state claims against.
-/

/-! ## A352088.P12122197673377817296

`∩[A006995(n+1), A352087(n+1)]`
-/

namespace A352088.P12122197673377817296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352088.P12122197673377817296

/-! ## A352088.P1379656368390277407

`∩[A180204(n+1), A352087(n+1)]`
-/

namespace A352088.P1379656368390277407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352088.P1379656368390277407

/-!
# A352089: Tribonacci-Niven numbers: numbers that are divisible by the number of terms in their minimal (or greedy) representation in terms of the tribonacci numbers (A278038).

The programs for A352089, there is no canonical definition to state claims against.
-/

/-! ## A352089.P11362702269923909035

`lt[A003714(A069605(n+1)), A280341(n)]`
-/

namespace A352089.P11362702269923909035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A069605 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280341 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352089.P11362702269923909035

/-! ## A352089.P14476036607211092621

`lt[A062684(A069605(n+1)), A000043(n+1)]`
-/

namespace A352089.P14476036607211092621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062684 (A069605 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352089.P14476036607211092621

/-! ## A352089.P7500896106399031944

`lt[A217088(A069605(n+1)), A127073(n+1)]`
-/

namespace A352089.P7500896106399031944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217088 (A069605 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127073 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352089.P7500896106399031944

/-! ## A352089.P4863696848934970042

`lt[A084747(A069605(n+1)), A003022(n+2)]`
-/

namespace A352089.P4863696848934970042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084747 (A069605 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003022 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352089.P4863696848934970042

/-! ## A352089.P2469904111413362657

`lt[A261328(A069605(n+1)), A130440(2*n+1)]`
-/

namespace A352089.P2469904111413362657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261328 (A069605 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130440 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352089.P2469904111413362657

/-!
# A352090: Numbers k such that k and k+1 are both tribonacci-Niven numbers (A352089).

The programs for A352090, there is no canonical definition to state claims against.
-/

/-! ## A352090.P17531364094552702531

`∩[A352089(n+1)-1, A352089(n+1)]`
-/

namespace A352090.P17531364094552702531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352089 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352090.P17531364094552702531

/-! ## A352090.P8868005221321891000

`∩[A352089(n+1), A023443(A352089(n+1))]`
-/

namespace A352090.P8868005221321891000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A352089 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352090.P8868005221321891000

/-!
# A352091: Starts of runs of 3 consecutive tribonacci-Niven numbers (A352089).

The programs for A352091, there is no canonical definition to state claims against.
-/

/-! ## A352091.P4212554136323071916

`A352090(eq[1, Δ[A352090(n+1)]]+1)`
-/

namespace A352091.P4212554136323071916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A352091.P4212554136323071916

/-! ## A352091.P10110275227726640642

`∩[A352089(n+1), A352090(n+1)-1]`
-/

namespace A352091.P10110275227726640642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352090 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352091.P10110275227726640642

/-!
# A352094: Column 2 of triangle A352093.

The programs for A352094, there is no canonical definition to state claims against.
-/

/-! ## A352094.P720586536387009649

`A352093(∑[n+2]+2)`
-/

namespace A352094.P720586536387009649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352093 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A352094.P720586536387009649

/-! ## A352094.P12137921988811318435

`record[gcd(A328748(n), A352093(n))]`
-/

namespace A352094.P12137921988811318435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A328748 n) (A352093 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352094.P12137921988811318435

/-! ## A352094.P12588722668874961013

`record[A010054(n)*A352093(n+1)]`
-/

namespace A352094.P12588722668874961013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A352093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352094.P12588722668874961013

/-! ## A352094.P2895856630891992913

`record[gcd(A327245(n), A352093(n+1))]`
-/

namespace A352094.P2895856630891992913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A327245 n) (A352093 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352094.P2895856630891992913

/-!
# A352095: Dimension of the space of Siegel cusp forms of genus 3 and weight 2n.

The programs for A352095, there is no canonical definition to state claims against.
-/

/-! ## A352095.P3268826205683599219

`A027634(n)-A029143(n)`
-/

namespace A352095.P3268826205683599219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027634 n - A029143 n

end

end A352095.P3268826205683599219

/-! ## A352095.P5701312720584260802

`A027634(n)-Δ[A091498(n)-A001402(n)]`
-/

namespace A352095.P5701312720584260802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091498 n - A001402 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027634 n - (f1 (n + 1) - f1 n)

end

end A352095.P5701312720584260802

/-! ## A352095.P12513699285490248860

`A027634(n)-(A037145(n)-Δ[A026812(n+1)])`
-/

namespace A352095.P12513699285490248860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027634 n - (A037145 n - (f1 (n + 1) - f1 n))

end

end A352095.P12513699285490248860

/-! ## A352095.P6673826858279230544

`A027634(n)-Δ[A091498(n)-A026812(n+6)]`
-/

namespace A352095.P6673826858279230544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091498 n - A026812 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027634 n - (f1 (n + 1) - f1 n)

end

end A352095.P6673826858279230544

/-! ## A352095.P16511204575635112507

`A027634(n)-A027640(2*n)`
-/

namespace A352095.P16511204575635112507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027634 n - A027640 (2 * n)

end

end A352095.P16511204575635112507

/-! ## A352095.P1954830632623502015

`A027634(n)-A029270(2*n)`
-/

namespace A352095.P1954830632623502015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027634 n - A029270 (2 * n)

end

end A352095.P1954830632623502015

/-! ## A352095.P17035422026835175405

`A027634(n)-(A029386(2*n+1)+A029386(2*n))`
-/

namespace A352095.P17035422026835175405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027634 n - (A029386 (2 * n + 1) + A029386 (2 * n))

end

end A352095.P17035422026835175405

/-! ## A352095.P2052900034501312606

`A027634(n)-(A029177(2*n)-A029250(2*n+1))`
-/

namespace A352095.P2052900034501312606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027634 n - (A029177 (2 * n) - A029250 (2 * n + 1))

end

end A352095.P2052900034501312606

/-!
# A352097: a(1) = 4, a(2) = 9; let i = a(n-2) and j = a(n-1); a(n) = least k not already in the sequence such that gcd(j, k) = 1 and 1 < gcd(i, k) != i != k.

The programs for A352097, there is no canonical definition to state claims against.
-/

/-! ## A352097.P8300542031431717942

`A263648(n+1)%A259789(A141928(n+1))`
-/

namespace A352097.P8300542031431717942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263648 (n + 1)) (A259789 (A141928 (n + 1)).toNat)

end

end A352097.P8300542031431717942

/-! ## A352097.P18407413679398585302

`A263648(A062399(n+1))%A089995(A000010(n+2))`
-/

namespace A352097.P18407413679398585302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263648 (A062399 (n + 1)).toNat) (A089995 (A000010 (n + 2)).toNat)

end

end A352097.P18407413679398585302

/-!
# A352099: Number of inequivalent {-1,1} matrices of order n, up to permutation of rows and/or columns and multiplication of rows and/or columns by -1.

The programs for A352099, there is no canonical definition to state claims against.
-/

/-! ## A352099.P906232804280123578

`A395363(∑[n+1])`
-/

namespace A352099.P906232804280123578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395363 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A352099.P906232804280123578

/-! ## A352099.P9867906566696832824

`∑[A349039(∏[A026698(n)])]`
-/

namespace A352099.P9867906566696832824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026698 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349039 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352099.P9867906566696832824

