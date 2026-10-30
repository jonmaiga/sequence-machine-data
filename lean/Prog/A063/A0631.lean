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
import Seq.B000.C018
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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C010
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A063100: Compute the cototient function for the g(n) = p(n+1)-p(n)-1 composite numbers between two consecutive primes. Let the number of distinct cototient values be c(n). Then, a(n) = g(n)-c(n).

The programs for A063100, there is no canonical definition to state claims against.
-/

/-! ## A063100.P5647995693037562559

`val(A053000(n), A097497(A171565(n)))`
-/

namespace A063100.P5647995693037562559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A053000 n).toNat (A097497 (A171565 n).toNat).toNat

end

end A063100.P5647995693037562559

/-! ## A063100.P1969558136522570129

`and(A028237(n+1), A194670(n+1))`
-/

namespace A063100.P1969558136522570129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028237 (n + 1)) (A194670 (n + 1))

end

end A063100.P1969558136522570129

/-! ## A063100.P11013927235386162614

`A000035(A028237(n+1)*A194670(n+1))`
-/

namespace A063100.P11013927235386162614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A028237 (n + 1) * A194670 (n + 1)).toNat

end

end A063100.P11013927235386162614

/-! ## A063100.P2829902241054394045

`val(A001031(A028237(n+1)), A002373(n+3))`
-/

namespace A063100.P2829902241054394045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001031 (A028237 (n + 1)).toNat).toNat (A002373 (n + 3)).toNat

end

end A063100.P2829902241054394045

/-! ## A063100.P3290527502002687944

`and(A008683(A224982(n+1))², A028237(n+1))`
-/

namespace A063100.P3290527502002687944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (A224982 (n + 1)).toNat ^ 2) (A028237 (n + 1))

end

end A063100.P3290527502002687944

/-!
# A063101: a(n) is the number of divisors of n!*(n! + 1)/2.

The programs for A063101, the canonical program `A063101.P351098770969771744` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063101 has offset 0).

The definition of A063101 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063101.P351098770969771744

`A063440(n!)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A063101

/-- `A063440(n!)` -/
def P351098770969771744.Spec : Prop :=
  ∀ n, P351098770969771744.a n = A063101 n

theorem P351098770969771744.correct : P351098770969771744.Spec := by
  intro n
  simp only [A063101]

end A063101

/-! ## A063101.P7384319820545719455

`A063440(A000142(n))`
-/

namespace A063101.P7384319820545719455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (A000142 n).toNat

end

end A063101.P7384319820545719455

namespace A063101

/-- `A063440(A000142(n))` -/
def P7384319820545719455.Spec : Prop :=
  ∀ n, P7384319820545719455.a n = A063101 n

end A063101

/-! ## A063101.P14436474019314853631

`A063440(A033646(n))`
-/

namespace A063101.P14436474019314853631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (A033646 n).toNat

end

end A063101.P14436474019314853631

namespace A063101

/-- `A063440(A033646(n))` -/
def P14436474019314853631.Spec : Prop :=
  ∀ n, P14436474019314853631.a n = A063101 n

end A063101

/-! ## A063101.P15772515334928273808

`A063440(A033647(n))`
-/

namespace A063101.P15772515334928273808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (A033647 n).toNat

end

end A063101.P15772515334928273808

namespace A063101

/-- `A063440(A033647(n))` -/
def P15772515334928273808.Spec : Prop :=
  ∀ n, P15772515334928273808.a n = A063101 n

end A063101

/-!
# A063102: Dimension of the space of weight 2n cusp forms for Gamma_0( 34 ).

The programs for A063102, the canonical program `A063102.P2024881808488478682` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063102 has offset 1).

The definition of A063102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063102.P2024881808488478682

`a(n-2)+18` with `a(0)=3, a(1)=12, a(2)=20`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063102

/-- `a(n-2)+18` -/
def P2024881808488478682.Spec : Prop :=
  ∀ n, (P2024881808488478682.a n : ℤ) = A063102 (n + 1)

theorem P2024881808488478682.correct : P2024881808488478682.Spec := by
  intro n
  simp only [A063102, Nat.add_sub_cancel]

end A063102

/-! ## A063102.P567403178329063033

`∑[abs(a(n-2))]` with `a(0)=3, a(1)=9, a(2)=8, a(3)=10`
-/

namespace A063102.P567403178329063033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 9, 8, 10] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063102.P567403178329063033

namespace A063102

/-- `∑[abs(a(n-2))]` -/
def P567403178329063033.Spec : Prop :=
  ∀ n, (P567403178329063033.a n : ℤ) = A063102 (n + 1)

end A063102

/-! ## A063102.P5953395381118949695

`∑[18-a(n-1)]` with `a(0)=3, a(1)=9, a(2)=8`
-/

namespace A063102.P5953395381118949695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 9, 8] fun n f1 =>
  18 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063102.P5953395381118949695

namespace A063102

/-- `∑[18-a(n-1)]` -/
def P5953395381118949695.Spec : Prop :=
  ∀ n, P5953395381118949695.a n = A063102 (n + 1)

end A063102

/-! ## A063102.P10656403417521608706

`ogf((3+9x+5x^2+x^3)/(1-x-x^2+x^3))`
-/

namespace A063102.P10656403417521608706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 9, 5, 1] [1, -1, -1, 1] n

end

end A063102.P10656403417521608706

namespace A063102

/-- `ogf((3+9x+5x^2+x^3)/(1-x-x^2+x^3))` -/
def P10656403417521608706.Spec : Prop :=
  ∀ n, P10656403417521608706.a n = A063102 (n + 1)

end A063102

/-! ## A063102.P3713217075339553790

`9*n+(n%2)^n+2`
-/

namespace A063102.P3713217075339553790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + ((n % 2) ^ n + 2)

end

end A063102.P3713217075339553790

namespace A063102

/-- `9*n+(n%2)^n+2` -/
def P3713217075339553790.Spec : Prop :=
  ∀ n, (P3713217075339553790.a n : ℤ) = A063102 (n + 1)

end A063102

/-! ## A063102.P6645258601636747998

`and(1, n)^n+9*n+2`
-/

namespace A063102.P6645258601636747998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n ^ n + (9 * n + 2)

end

end A063102.P6645258601636747998

namespace A063102

/-- `and(1, n)^n+9*n+2` -/
def P6645258601636747998.Spec : Prop :=
  ∀ n, (P6645258601636747998.a n : ℤ) = A063102 (n + 1)

end A063102

/-! ## A063102.P17271189640386434156

`∏{p}[n, #%2]+9*n+2`
-/

namespace A063102.P17271189640386434156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p % 2 + (9 * n + 2)

end

end A063102.P17271189640386434156

namespace A063102

/-- `∏{p}[n, #%2]+9*n+2` -/
def P17271189640386434156.Spec : Prop :=
  ∀ n, (P17271189640386434156.a n : ℤ) = A063102 (n + 1)

end A063102

/-! ## A063102.P10229581709501155968

`9*n+3-char[2*(n+1)]`
-/

namespace A063102.P10229581709501155968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n + 3 : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A063102.P10229581709501155968

namespace A063102

/-- `9*n+3-char[2*(n+1)]` -/
def P10229581709501155968.Spec : Prop :=
  ∀ n, P10229581709501155968.a n = A063102 (n + 1)

end A063102

/-! ## A063102.P960752649238544819

`A063142(n+1)%A017329(n)`
-/

namespace A063102.P960752649238544819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063142 (n + 1)) (A017329 n)

end

end A063102.P960752649238544819

namespace A063102

/-- `A063142(n+1)%A017329(n)` -/
def P960752649238544819.Spec : Prop :=
  ∀ n, P960752649238544819.a n = A063102 (n + 1)

end A063102

/-! ## A063102.P15657057488906681463

`A063150(n+1)%A017593(n)`
-/

namespace A063102.P15657057488906681463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063150 (n + 1)) (A017593 n)

end

end A063102.P15657057488906681463

namespace A063102

/-- `A063150(n+1)%A017593(n)` -/
def P15657057488906681463.Spec : Prop :=
  ∀ n, P15657057488906681463.a n = A063102 (n + 1)

end A063102

/-! ## A063102.P7534925019383519201

`Δ[A009946(n)-Δ[n²]]`
-/

namespace A063102.P7534925019383519201
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009946 n - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063102.P7534925019383519201

namespace A063102

/-- `Δ[A009946(n)-Δ[n²]]` -/
def P7534925019383519201.Spec : Prop :=
  ∀ n, P7534925019383519201.a n = A063102 (n + 1)

end A063102

/-! ## A063102.P14595030405767983687

`Δ[A007590(3*n)-A004277(n)]`
-/

namespace A063102.P14595030405767983687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (3 * n) - A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063102.P14595030405767983687

namespace A063102

/-- `Δ[A007590(3*n)-A004277(n)]` -/
def P14595030405767983687.Spec : Prop :=
  ∀ n, P14595030405767983687.a n = A063102 (n + 1)

end A063102

/-! ## A063102.P6390724772834062535

`A051755(A063289(n+3))`
-/

namespace A063102.P6390724772834062535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (A063289 (n + 3)).toNat

end

end A063102.P6390724772834062535

namespace A063102

/-- `A051755(A063289(n+3))` -/
def P6390724772834062535.Spec : Prop :=
  ∀ n, P6390724772834062535.a n = A063102 (n + 1)

end A063102

/-! ## A063102.P9747263315810277073

`A051755(A047276(n+1)+n)`
-/

namespace A063102.P9747263315810277073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (A047276 (n + 1) + (n : ℤ)).toNat

end

end A063102.P9747263315810277073

namespace A063102

/-- `A051755(A047276(n+1)+n)` -/
def P9747263315810277073.Spec : Prop :=
  ∀ n, P9747263315810277073.a n = A063102 (n + 1)

end A063102

/-! ## A063102.P9303374520197156246

`A004271(A047355(n+2)+n)`
-/

namespace A063102.P9303374520197156246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (A047355 (n + 2) + (n : ℤ)).toNat

end

end A063102.P9303374520197156246

namespace A063102

/-- `A004271(A047355(n+2)+n)` -/
def P9303374520197156246.Spec : Prop :=
  ∀ n, P9303374520197156246.a n = A063102 (n + 1)

end A063102

/-! ## A063102.P507712504111851935

`A028841(A063225(n+1))`
-/

namespace A063102.P507712504111851935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028841 (A063225 (n + 1)).toNat

end

end A063102.P507712504111851935

namespace A063102

/-- `A028841(A063225(n+1))` -/
def P507712504111851935.Spec : Prop :=
  ∀ n, P507712504111851935.a n = A063102 (n + 1)

end A063102

/-! ## A063102.P1925973876974253455

`A268226(A063097(n+1))`
-/

namespace A063102.P1925973876974253455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268226 (A063097 (n + 1)).toNat

end

end A063102.P1925973876974253455

namespace A063102

/-- `A268226(A063097(n+1))` -/
def P1925973876974253455.Spec : Prop :=
  ∀ n, P1925973876974253455.a n = A063102 (n + 1)

end A063102

/-! ## A063102.P11633995730004963507

`A047246(A270545(n+1))`
-/

namespace A063102.P11633995730004963507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047246 (A270545 (n + 1)).toNat

end

end A063102.P11633995730004963507

namespace A063102

/-- `A047246(A270545(n+1))` -/
def P11633995730004963507.Spec : Prop :=
  ∀ n, P11633995730004963507.a n = A063102 (n + 1)

end A063102

/-! ## A063102.P1190702638708222786

`A060464(A063237(n+1))`
-/

namespace A063102.P1190702638708222786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (A063237 (n + 1)).toNat

end

end A063102.P1190702638708222786

namespace A063102

/-- `A060464(A063237(n+1))` -/
def P1190702638708222786.Spec : Prop :=
  ∀ n, P1190702638708222786.a n = A063102 (n + 1)

end A063102

/-! ## A063102.P6906079000188549474

`A272574(A063109(n+1))`
-/

namespace A063102.P6906079000188549474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272574 (A063109 (n + 1)).toNat

end

end A063102.P6906079000188549474

namespace A063102

/-- `A272574(A063109(n+1))` -/
def P6906079000188549474.Spec : Prop :=
  ∀ n, P6906079000188549474.a n = A063102 (n + 1)

end A063102

/-!
# A063105: Dimension of the space of weight 2n cusp forms for Gamma_0( 37 ).

The programs for A063105, the canonical program `A063105.P4165262680559161131` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063105 has offset 1).

The definition of A063105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063105.P649051201609725285

`ogf((2+9x+13x^2+10x^3+3x^4+x^5)/(1-x^2-x^3+x^5))`
-/

namespace A063105.P649051201609725285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 9, 13, 10, 3, 1] [1, 0, -1, -1, 0, 1] n

end

end A063105.P649051201609725285

namespace A063105

/-- `ogf((2+9x+13x^2+10x^3+3x^4+x^5)/(1-x^2-x^3+x^5))` -/
def P649051201609725285.Spec : Prop :=
  ∀ n, P649051201609725285.a n = A063105 (n + 1)

end A063105

/-! ## A063105.P4165262680559161131

`a(n-1)+2*xor(3, n²)%3+4` with `a(0)=2, a(1)=9`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063105

/-- `a(n-1)+2*xor(3, n²)%3+4` -/
def P4165262680559161131.Spec : Prop :=
  ∀ n, (P4165262680559161131.a n : ℤ) = A063105 (n + 1)

theorem P4165262680559161131.correct : P4165262680559161131.Spec := by
  intro n
  simp only [A063105, Nat.add_sub_cancel]

end A063105

/-! ## A063105.P18309650893697761615

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=2, a(1)=9, a(2)=15, a(3)=21, a(4)=27, a(5)=35`
-/

namespace A063105.P18309650893697761615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 9, 15, 21, 27, 35] fun n a =>
  a (n - 2) + a (n - 3) - a (n - 5)

end

end A063105.P18309650893697761615

namespace A063105

/-- `a(n-2)+a(n-3)-a(n-5)` -/
def P18309650893697761615.Spec : Prop :=
  ∀ n, P18309650893697761615.a n = A063105 (n + 1)

end A063105

/-! ## A063105.P12115596622498812065

`A063111(n+1)-or(1, n)`
-/

namespace A063105.P12115596622498812065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063111 (n + 1) - (Nat.lor 1 n : ℤ)

end

end A063105.P12115596622498812065

namespace A063105

/-- `A063111(n+1)-or(1, n)` -/
def P12115596622498812065.Spec : Prop :=
  ∀ n, P12115596622498812065.a n = A063105 (n + 1)

end A063105

/-! ## A063105.P7273424706204881596

`A063081(n+1)+4*n+2`
-/

namespace A063105.P7273424706204881596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063081 (n + 1) + (4 * n + 2 : ℤ)

end

end A063105.P7273424706204881596

namespace A063105

/-- `A063081(n+1)+4*n+2` -/
def P7273424706204881596.Spec : Prop :=
  ∀ n, P7273424706204881596.a n = A063105 (n + 1)

end A063105

/-! ## A063105.P6328509831877886572

`A063129(n+1)-(4*n+2)`
-/

namespace A063105.P6328509831877886572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063129 (n + 1) - (4 * n + 2 : ℤ)

end

end A063105.P6328509831877886572

namespace A063105

/-- `A063129(n+1)-(4*n+2)` -/
def P6328509831877886572.Spec : Prop :=
  ∀ n, P6328509831877886572.a n = A063105 (n + 1)

end A063105

/-! ## A063105.P10699664569117717767

`6*n+A063195(n+1)+2`
-/

namespace A063105.P10699664569117717767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) + (A063195 (n + 1) + 2)

end

end A063105.P10699664569117717767

namespace A063105

/-- `6*n+A063195(n+1)+2` -/
def P10699664569117717767.Spec : Prop :=
  ∀ n, P10699664569117717767.a n = A063105 (n + 1)

end A063105

/-! ## A063105.P9786531213578691560

`8*n+3-A063199(n+1)`
-/

namespace A063105.P9786531213578691560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 3 : ℤ) - A063199 (n + 1)

end

end A063105.P9786531213578691560

namespace A063105

/-- `8*n+3-A063199(n+1)` -/
def P9786531213578691560.Spec : Prop :=
  ∀ n, P9786531213578691560.a n = A063105 (n + 1)

end A063105

/-! ## A063105.P3357304622909807914

`A063089(n+1)+or(1, n+1)`
-/

namespace A063105.P3357304622909807914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063089 (n + 1) + (Nat.lor 1 (n + 1) : ℤ)

end

end A063105.P3357304622909807914

namespace A063105

/-- `A063089(n+1)+or(1, n+1)` -/
def P3357304622909807914.Spec : Prop :=
  ∀ n, P3357304622909807914.a n = A063105 (n + 1)

end A063105

/-! ## A063105.P11327256702205857699

`and(1, n)+A063099(n+1)+n`
-/

namespace A063105.P11327256702205857699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) + (A063099 (n + 1) + (n : ℤ))

end

end A063105.P11327256702205857699

namespace A063105

/-- `and(1, n)+A063099(n+1)+n` -/
def P11327256702205857699.Spec : Prop :=
  ∀ n, P11327256702205857699.a n = A063105 (n + 1)

end A063105

/-! ## A063105.P3587481059544501449

`A063195(n+1)+A016933(n)`
-/

namespace A063105.P3587481059544501449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (n + 1) + A016933 n

end

end A063105.P3587481059544501449

namespace A063105

/-- `A063195(n+1)+A016933(n)` -/
def P3587481059544501449.Spec : Prop :=
  ∀ n, P3587481059544501449.a n = A063105 (n + 1)

end A063105

/-! ## A063105.P7607267713995907634

`A063141(n+1)-A016945(n)`
-/

namespace A063105.P7607267713995907634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063141 (n + 1) - A016945 n

end

end A063105.P7607267713995907634

namespace A063105

/-- `A063141(n+1)-A016945(n)` -/
def P7607267713995907634.Spec : Prop :=
  ∀ n, P7607267713995907634.a n = A063105 (n + 1)

end A063105

/-! ## A063105.P95003051625978433

`A063165(n+1)-A017329(n)`
-/

namespace A063105.P95003051625978433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063165 (n + 1) - A017329 n

end

end A063105.P95003051625978433

namespace A063105

/-- `A063165(n+1)-A017329(n)` -/
def P95003051625978433.Spec : Prop :=
  ∀ n, P95003051625978433.a n = A063105 (n + 1)

end A063105

/-! ## A063105.P1806829009823122388

`A017317(n)-A063203(n+1)`
-/

namespace A063105.P1806829009823122388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n - A063203 (n + 1)

end

end A063105.P1806829009823122388

namespace A063105

/-- `A017317(n)-A063203(n+1)` -/
def P1806829009823122388.Spec : Prop :=
  ∀ n, P1806829009823122388.a n = A063105 (n + 1)

end A063105

/-! ## A063105.P4449569427944945640

`A063111(n+1)-A109613(n)`
-/

namespace A063105.P4449569427944945640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063111 (n + 1) - A109613 n

end

end A063105.P4449569427944945640

namespace A063105

/-- `A063111(n+1)-A109613(n)` -/
def P4449569427944945640.Spec : Prop :=
  ∀ n, P4449569427944945640.a n = A063105 (n + 1)

end A063105

/-! ## A063105.P17014211913679173400

`A063087(n+1)+A007310(n+1)`
-/

namespace A063105.P17014211913679173400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063087 (n + 1) + A007310 (n + 1)

end

end A063105.P17014211913679173400

namespace A063105

/-- `A063087(n+1)+A007310(n+1)` -/
def P17014211913679173400.Spec : Prop :=
  ∀ n, P17014211913679173400.a n = A063105 (n + 1)

end A063105

/-! ## A063105.P9880748898923929883

`A063207(n+1)+A047241(n+1)`
-/

namespace A063105.P9880748898923929883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063207 (n + 1) + A047241 (n + 1)

end

end A063105.P9880748898923929883

namespace A063105

/-- `A063207(n+1)+A047241(n+1)` -/
def P9880748898923929883.Spec : Prop :=
  ∀ n, P9880748898923929883.a n = A063105 (n + 1)

end A063105

/-! ## A063105.P12577040763755662292

`A063214(n+1)+A047623(n+1)`
-/

namespace A063105.P12577040763755662292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063214 (n + 1) + A047623 (n + 1)

end

end A063105.P12577040763755662292

namespace A063105

/-- `A063214(n+1)+A047623(n+1)` -/
def P12577040763755662292.Spec : Prop :=
  ∀ n, P12577040763755662292.a n = A063105 (n + 1)

end A063105

/-! ## A063105.P9969350582074189593

`A063224(n+1)+A063097(n+1)`
-/

namespace A063105.P9969350582074189593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063224 (n + 1) + A063097 (n + 1)

end

end A063105.P9969350582074189593

namespace A063105

/-- `A063224(n+1)+A063097(n+1)` -/
def P9969350582074189593.Spec : Prop :=
  ∀ n, P9969350582074189593.a n = A063105 (n + 1)

end A063105

/-! ## A063105.P16543416686150750288

`A131229(n+1)+A063200(n+1)`
-/

namespace A063105.P16543416686150750288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131229 (n + 1) + A063200 (n + 1)

end

end A063105.P16543416686150750288

namespace A063105

/-- `A131229(n+1)+A063200(n+1)` -/
def P16543416686150750288.Spec : Prop :=
  ∀ n, P16543416686150750288.a n = A063105 (n + 1)

end A063105

/-!
# A063106: Primes of form !n + 2n - 1.

The programs for A063106, there is no canonical definition to state claims against.
-/

/-! ## A063106.P11790276077501573951

`p?[∑[n!+2]-1]`
-/

namespace A063106.P11790276077501573951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063106.P11790276077501573951

/-!
# A063107: Dimension of the space of weight 2n cusp forms for Gamma_0( 39 ).

The programs for A063107, the canonical program `A063107.P14750502468533917442` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063107 has offset 1).

The definition of A063107 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063107.P18089758742996172945

`∑[floor(a(n-3))]` with `a(0)=3, a(1)=9, a(2)=10, a(3)=8, a(4)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A063107.P18089758742996172945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 9, 10, 8, 10] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063107.P18089758742996172945

namespace A063107

/-- `∑[floor(a(n-3))]` -/
def P18089758742996172945.Spec : Prop :=
  ∀ n, (P18089758742996172945.a n : ℤ) = A063107 (n + 1)

end A063107

/-! ## A063107.P13359888667639411050

`ogf((3+9x+10x^2+5x^3+x^4)/(1-x-x^3+x^4))`
-/

namespace A063107.P13359888667639411050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 9, 10, 5, 1] [1, -1, 0, -1, 1] n

end

end A063107.P13359888667639411050

namespace A063107

/-- `ogf((3+9x+10x^2+5x^3+x^4)/(1-x-x^3+x^4))` -/
def P13359888667639411050.Spec : Prop :=
  ∀ n, P13359888667639411050.a n = A063107 (n + 1)

end A063107

/-! ## A063107.P2496377836688087675

`ceil(2/acot(3*n))+∑[5-gcd(3, n)]-1`
-/

namespace A063107.P2496377836688087675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (Nat.gcd 3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (3 * n : ℝ)⌉ + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A063107.P2496377836688087675

namespace A063107

/-- `ceil(2/acot(3*n))+∑[5-gcd(3, n)]-1` -/
def P2496377836688087675.Spec : Prop :=
  ∀ n, P2496377836688087675.a n = A063107 (n + 1)

end A063107

/-! ## A063107.P14750502468533917442

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=3, a(1)=12, a(2)=22, a(3)=30, a(4)=40`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063107

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P14750502468533917442.Spec : Prop :=
  ∀ n, P14750502468533917442.a n = A063107 (n + 1)

theorem P14750502468533917442.correct : P14750502468533917442.Spec := by
  intro n
  simp only [A063107, Nat.add_sub_cancel]

end A063107

/-! ## A063107.P10913632620997278685

`A063117(n+1)+2`
-/

namespace A063107.P10913632620997278685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063117 (n + 1) + 2

end

end A063107.P10913632620997278685

namespace A063107

/-- `A063117(n+1)+2` -/
def P10913632620997278685.Spec : Prop :=
  ∀ n, P10913632620997278685.a n = A063107 (n + 1)

end A063107

/-! ## A063107.P3376562403651003596

`A063238(n+1)-2`
-/

namespace A063107.P3376562403651003596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063238 (n + 1) - 2

end

end A063107.P3376562403651003596

namespace A063107

/-- `A063238(n+1)-2` -/
def P3376562403651003596.Spec : Prop :=
  ∀ n, P3376562403651003596.a n = A063107 (n + 1)

end A063107

/-! ## A063107.P5418306403435670642

`A063111(n+1)+2*n`
-/

namespace A063107.P5418306403435670642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063111 (n + 1) + (2 * n : ℤ)

end

end A063107.P5418306403435670642

namespace A063107

/-- `A063111(n+1)+2*n` -/
def P5418306403435670642.Spec : Prop :=
  ∀ n, P5418306403435670642.a n = A063107 (n + 1)

end A063107

/-! ## A063107.P16187032379749280955

`A063218(n+1)+4*n`
-/

namespace A063107.P16187032379749280955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063218 (n + 1) + (4 * n : ℤ)

end

end A063107.P16187032379749280955

namespace A063107

/-- `A063218(n+1)+4*n` -/
def P16187032379749280955.Spec : Prop :=
  ∀ n, P16187032379749280955.a n = A063107 (n + 1)

end A063107

/-! ## A063107.P17701708355672832678

`A063135(n+1)-2*(n+1)`
-/

namespace A063107.P17701708355672832678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063135 (n + 1) - (2 * (n + 1) : ℤ)

end

end A063107.P17701708355672832678

namespace A063107

/-- `A063135(n+1)-2*(n+1)` -/
def P17701708355672832678.Spec : Prop :=
  ∀ n, P17701708355672832678.a n = A063107 (n + 1)

end A063107

/-! ## A063107.P8662442335428779722

`∑[A000203(a(n²%3))]+4*n` with `a(0)=3, a(1)=5`
-/

namespace A063107.P8662442335428779722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  A000203 (f1 (n ^ 2 % 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (4 * n : ℤ)

end

end A063107.P8662442335428779722

namespace A063107

/-- `∑[A000203(a(n²%3))]+4*n` -/
def P8662442335428779722.Spec : Prop :=
  ∀ n, P8662442335428779722.a n = A063107 (n + 1)

end A063107

/-! ## A063107.P7469296761564117578

`Δ[A053799(n)+A002939(n)]`
-/

namespace A063107.P7469296761564117578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053799 n + A002939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063107.P7469296761564117578

namespace A063107

/-- `Δ[A053799(n)+A002939(n)]` -/
def P7469296761564117578.Spec : Prop :=
  ∀ n, P7469296761564117578.a n = A063107 (n + 1)

end A063107

/-! ## A063107.P1300963739201981320

`A063099(n+1)+A016813(n)`
-/

namespace A063107.P1300963739201981320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063099 (n + 1) + A016813 n

end

end A063107.P1300963739201981320

namespace A063107

/-- `A063099(n+1)+A016813(n)` -/
def P1300963739201981320.Spec : Prop :=
  ∀ n, P1300963739201981320.a n = A063107 (n + 1)

end A063107

/-! ## A063107.P17900292109522602345

`A063089(n+1)+A016825(n)`
-/

namespace A063107.P17900292109522602345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063089 (n + 1) + A016825 n

end

end A063107.P17900292109522602345

namespace A063107

/-- `A063089(n+1)+A016825(n)` -/
def P17900292109522602345.Spec : Prop :=
  ∀ n, P17900292109522602345.a n = A063107 (n + 1)

end A063107

/-! ## A063107.P14251653894055230891

`A063087(n+1)+A016933(n)`
-/

namespace A063107.P14251653894055230891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063087 (n + 1) + A016933 n

end

end A063107.P14251653894055230891

namespace A063107

/-- `A063087(n+1)+A016933(n)` -/
def P14251653894055230891.Spec : Prop :=
  ∀ n, P14251653894055230891.a n = A063107 (n + 1)

end A063107

/-! ## A063107.P3081383240242970554

`A063200(n+1)+A017089(n)`
-/

namespace A063107.P3081383240242970554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063200 (n + 1) + A017089 n

end

end A063107.P3081383240242970554

namespace A063107

/-- `A063200(n+1)+A017089(n)` -/
def P3081383240242970554.Spec : Prop :=
  ∀ n, P3081383240242970554.a n = A063107 (n + 1)

end A063107

/-! ## A063107.P17575780750547280676

`A271114(n)+A063213(n+1)`
-/

namespace A063107.P17575780750547280676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n + A063213 (n + 1)

end

end A063107.P17575780750547280676

namespace A063107

/-- `A271114(n)+A063213(n+1)` -/
def P17575780750547280676.Spec : Prop :=
  ∀ n, P17575780750547280676.a n = A063107 (n + 1)

end A063107

/-! ## A063107.P15570212641444057864

`A063147(n+1)-A004767(n)`
-/

namespace A063107.P15570212641444057864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063147 (n + 1) - A004767 n

end

end A063107.P15570212641444057864

namespace A063107

/-- `A063147(n+1)-A004767(n)` -/
def P15570212641444057864.Spec : Prop :=
  ∀ n, P15570212641444057864.a n = A063107 (n + 1)

end A063107

/-! ## A063107.P6780273521250634778

`A063125(n+1)-A016825(n)`
-/

namespace A063107.P6780273521250634778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063125 (n + 1) - A016825 n

end

end A063107.P6780273521250634778

namespace A063107

/-- `A063125(n+1)-A016825(n)` -/
def P6780273521250634778.Spec : Prop :=
  ∀ n, P6780273521250634778.a n = A063107 (n + 1)

end A063107

/-! ## A063107.P9165104586026993938

`A063161(n+1)-A017593(n)`
-/

namespace A063107.P9165104586026993938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063161 (n + 1) - A017593 n

end

end A063107.P9165104586026993938

namespace A063107

/-- `A063161(n+1)-A017593(n)` -/
def P9165104586026993938.Spec : Prop :=
  ∀ n, P9165104586026993938.a n = A063107 (n + 1)

end A063107

/-! ## A063107.P2230227683815219735

`A063105(n+1)+A047241(n+1)`
-/

namespace A063107.P2230227683815219735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063105 (n + 1) + A047241 (n + 1)

end

end A063107.P2230227683815219735

namespace A063107

/-- `A063105(n+1)+A047241(n+1)` -/
def P2230227683815219735.Spec : Prop :=
  ∀ n, P2230227683815219735.a n = A063107 (n + 1)

end A063107

/-!
# A063108: a(1) = 1; thereafter a(n+1) = a(n) + product of nonzero digits of a(n).

The programs for A063108, there is no canonical definition to state claims against.
-/

/-! ## A063108.P1026755961117874071

`A063114(a(n-1))` with `a(0)=1`
-/

namespace A063108.P1026755961117874071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A063114 (a (n - 1)).toNat

end

end A063108.P1026755961117874071

/-! ## A063108.P17248827318788942715

`A051801(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A063108.P17248827318788942715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051801 (a (n - 1)).toNat + a (n - 1)

end

end A063108.P17248827318788942715

/-! ## A063108.P8607819757235377770

`a(n-1)+sqrt(A352598(a(n-1)))` with `a(0)=1`
-/

namespace A063108.P8607819757235377770
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Real.sqrt (A352598 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℝ)

end

end A063108.P8607819757235377770

/-! ## A063108.P1293047298374964452

`A007954(A004719(a(n-1)))+a(n-1)` with `a(0)=1`
-/

namespace A063108.P1293047298374964452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007954 (A004719 (a (n - 1)).toNat).toNat + a (n - 1)

end

end A063108.P1293047298374964452

/-! ## A063108.P2643643079100951018

`eq[0, A096287(n+1)]+1`
-/

namespace A063108.P2643643079100951018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096287 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063108.P2643643079100951018

/-! ## A063108.P6093475991442805111

`record[gcd(A096287(n+1), A131055(n+1))]`
-/

namespace A063108.P6093475991442805111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A096287 (n + 1)) (A131055 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063108.P6093475991442805111

/-! ## A063108.P12464118017997020936

`eq[A000007(n), A096287(A028310(n))]`
-/

namespace A063108.P12464118017997020936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096287 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063108.P12464118017997020936

/-! ## A063108.P7101440182342803973

`eq[A000038(n), A096287(A028310(n))]`
-/

namespace A063108.P7101440182342803973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096287 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063108.P7101440182342803973

/-!
# A063109: Dimension of the space of weight 2n cusp forms for Gamma_0( 41 ).

The programs for A063109, the canonical program `A063109.P14939599807768131256` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063109 has offset 1).

The definition of A063109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063109.P14939599807768131256

`a(n-2)+14` with `a(0)=3, a(1)=10, a(2)=16`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063109

/-- `a(n-2)+14` -/
def P14939599807768131256.Spec : Prop :=
  ∀ n, (P14939599807768131256.a n : ℤ) = A063109 (n + 1)

theorem P14939599807768131256.correct : P14939599807768131256.Spec := by
  intro n
  simp only [A063109, Nat.add_sub_cancel]

end A063109

/-! ## A063109.P8197430619528303993

`∑[abs(a(n-2))]` with `a(0)=3, a(1)=7, a(2)=6, a(3)=8`
-/

namespace A063109.P8197430619528303993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 7, 6, 8] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063109.P8197430619528303993

namespace A063109

/-- `∑[abs(a(n-2))]` -/
def P8197430619528303993.Spec : Prop :=
  ∀ n, (P8197430619528303993.a n : ℤ) = A063109 (n + 1)

end A063109

/-! ## A063109.P1573455021749862269

`∑[14-a(n-1)]` with `a(0)=3, a(1)=7, a(2)=6`
-/

namespace A063109.P1573455021749862269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 7, 6] fun n f1 =>
  14 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063109.P1573455021749862269

namespace A063109

/-- `∑[14-a(n-1)]` -/
def P1573455021749862269.Spec : Prop :=
  ∀ n, P1573455021749862269.a n = A063109 (n + 1)

end A063109

/-! ## A063109.P10106311680434312795

`ogf((3+7x+3x^2+x^3)/(1-x-x^2+x^3))`
-/

namespace A063109.P10106311680434312795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 7, 3, 1] [1, -1, -1, 1] n

end

end A063109.P10106311680434312795

namespace A063109

/-- `ogf((3+7x+3x^2+x^3)/(1-x-x^2+x^3))` -/
def P10106311680434312795.Spec : Prop :=
  ∀ n, P10106311680434312795.a n = A063109 (n + 1)

end A063109

/-! ## A063109.P12029042042366605779

`(n%2)^n+7*n+2`
-/

namespace A063109.P12029042042366605779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2) ^ n + (7 * n + 2)

end

end A063109.P12029042042366605779

namespace A063109

/-- `(n%2)^n+7*n+2` -/
def P12029042042366605779.Spec : Prop :=
  ∀ n, (P12029042042366605779.a n : ℤ) = A063109 (n + 1)

end A063109

/-! ## A063109.P8061199719388941214

`and(1, n)^n+7*n+2`
-/

namespace A063109.P8061199719388941214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n ^ n + (7 * n + 2)

end

end A063109.P8061199719388941214

namespace A063109

/-- `and(1, n)^n+7*n+2` -/
def P8061199719388941214.Spec : Prop :=
  ∀ n, (P8061199719388941214.a n : ℤ) = A063109 (n + 1)

end A063109

/-! ## A063109.P13079409276336551648

`7*n+3-char[2*(n+1)]`
-/

namespace A063109.P13079409276336551648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n + 3 : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A063109.P13079409276336551648

namespace A063109

/-- `7*n+3-char[2*(n+1)]` -/
def P13079409276336551648.Spec : Prop :=
  ∀ n, P13079409276336551648.a n = A063109 (n + 1)

end A063109

/-! ## A063109.P12011803815441800728

`abs(1-A063237(n+1))`
-/

namespace A063109.P12011803815441800728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A063237 (n + 1)|

end

end A063109.P12011803815441800728

namespace A063109

/-- `abs(1-A063237(n+1))` -/
def P12011803815441800728.Spec : Prop :=
  ∀ n, P12011803815441800728.a n = A063109 (n + 1)

end A063109

/-! ## A063109.P6968085259881948486

`abs(2*n-A063102(n+1))`
-/

namespace A063109.P6968085259881948486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A063102 (n + 1)|

end

end A063109.P6968085259881948486

namespace A063109

/-- `abs(2*n-A063102(n+1))` -/
def P6968085259881948486.Spec : Prop :=
  ∀ n, P6968085259881948486.a n = A063109 (n + 1)

end A063109

/-! ## A063109.P8490822615057552115

`A063157(n+1)%A017113(n)`
-/

namespace A063109.P8490822615057552115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063157 (n + 1)) (A017113 n)

end

end A063109.P8490822615057552115

namespace A063109

/-- `A063157(n+1)%A017113(n)` -/
def P8490822615057552115.Spec : Prop :=
  ∀ n, P8490822615057552115.a n = A063109 (n + 1)

end A063109

/-! ## A063109.P14556835111381540233

`A063142(n+1)%A017581(n)`
-/

namespace A063109.P14556835111381540233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063142 (n + 1)) (A017581 n)

end

end A063109.P14556835111381540233

namespace A063109

/-- `A063142(n+1)%A017581(n)` -/
def P14556835111381540233.Spec : Prop :=
  ∀ n, P14556835111381540233.a n = A063109 (n + 1)

end A063109

/-! ## A063109.P8629753331953348430

`xor(A057427(n), A113803(n+1))`
-/

namespace A063109.P8629753331953348430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A113803 (n + 1))

end

end A063109.P8629753331953348430

namespace A063109

/-- `xor(A057427(n), A113803(n+1))` -/
def P8629753331953348430.Spec : Prop :=
  ∀ n, P8629753331953348430.a n = A063109 (n + 1)

end A063109

/-! ## A063109.P7793418920467792888

`xor(A135528(n+1), A306278(n+1))`
-/

namespace A063109.P7793418920467792888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A135528 (n + 1)) (A306278 (n + 1))

end

end A063109.P7793418920467792888

namespace A063109

/-- `xor(A135528(n+1), A306278(n+1))` -/
def P7793418920467792888.Spec : Prop :=
  ∀ n, P7793418920467792888.a n = A063109 (n + 1)

end A063109

/-! ## A063109.P4417801488441203899

`Δ[A005899(n)-A007590(n+1)]`
-/

namespace A063109.P4417801488441203899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n - A007590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063109.P4417801488441203899

namespace A063109

/-- `Δ[A005899(n)-A007590(n+1)]` -/
def P4417801488441203899.Spec : Prop :=
  ∀ n, P4417801488441203899.a n = A063109 (n + 1)

end A063109

/-! ## A063109.P2938739363996727327

`Δ[A077588(n)+A007590(n+2)]`
-/

namespace A063109.P2938739363996727327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077588 n + A007590 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063109.P2938739363996727327

namespace A063109

/-- `Δ[A077588(n)+A007590(n+2)]` -/
def P2938739363996727327.Spec : Prop :=
  ∀ n, P2938739363996727327.a n = A063109 (n + 1)

end A063109

/-! ## A063109.P4681538305033694633

`A051755(A047276(n+1))`
-/

namespace A063109.P4681538305033694633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (A047276 (n + 1)).toNat

end

end A063109.P4681538305033694633

namespace A063109

/-- `A051755(A047276(n+1))` -/
def P4681538305033694633.Spec : Prop :=
  ∀ n, P4681538305033694633.a n = A063109 (n + 1)

end A063109

/-! ## A063109.P6168915765299043251

`A004271(A047355(n+2))`
-/

namespace A063109.P6168915765299043251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (A047355 (n + 2)).toNat

end

end A063109.P6168915765299043251

namespace A063109

/-- `A004271(A047355(n+2))` -/
def P6168915765299043251.Spec : Prop :=
  ∀ n, P6168915765299043251.a n = A063109 (n + 1)

end A063109

/-! ## A063109.P7113407300060234102

`A051755(A063289(n+3)-n)`
-/

namespace A063109.P7113407300060234102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (A063289 (n + 3) - (n : ℤ)).toNat

end

end A063109.P7113407300060234102

namespace A063109

/-- `A051755(A063289(n+3)-n)` -/
def P7113407300060234102.Spec : Prop :=
  ∀ n, P7113407300060234102.a n = A063109 (n + 1)

end A063109

/-! ## A063109.P11888488376783360255

`∩[A047358(n+1), A058992(n+1)]`
-/

namespace A063109.P11888488376783360255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063109.P11888488376783360255

namespace A063109

/-- `∩[A047358(n+1), A058992(n+1)]` -/
def P11888488376783360255.Spec : Prop :=
  ∀ n, (P11888488376783360255.a n : ℤ) = A063109 (n + 1)

end A063109

/-! ## A063109.P4663239754818179814

`∩[A047358(n+1), A051755(n+2)]`
-/

namespace A063109.P4663239754818179814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063109.P4663239754818179814

namespace A063109

/-- `∩[A047358(n+1), A051755(n+2)]` -/
def P4663239754818179814.Spec : Prop :=
  ∀ n, (P4663239754818179814.a n : ℤ) = A063109 (n + 1)

end A063109

/-!
# A063110: Dimension of the space of weight 2n cusp forms for Gamma_0(42).

The programs for A063110, the canonical program `A063110.P2429224958841916002` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063110 has offset 1).

The definition of A063110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063110.P2429224958841916002

`a(n-1)+16` with `a(0)=5, a(1)=20`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063110

/-- `a(n-1)+16` -/
def P2429224958841916002.Spec : Prop :=
  ∀ n, (P2429224958841916002.a n : ℤ) = A063110 (n + 1)

theorem P2429224958841916002.correct : P2429224958841916002.Spec := by
  intro n
  simp only [A063110, Nat.add_sub_cancel]

end A063110

/-!
# A063111: Dimension of the space of weight 2n cusp forms for Gamma_0( 43 ).

The programs for A063111, the canonical program `A063111.P5455928878559464136` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063111 has offset 1).

The definition of A063111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063111.P18040357301221321192

`∑[floor(a(n-3))]` with `a(0)=3, a(1)=7, a(2)=8, a(3)=6, a(4)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A063111.P18040357301221321192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 7, 8, 6, 8] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063111.P18040357301221321192

namespace A063111

/-- `∑[floor(a(n-3))]` -/
def P18040357301221321192.Spec : Prop :=
  ∀ n, (P18040357301221321192.a n : ℤ) = A063111 (n + 1)

end A063111

/-! ## A063111.P18123594951985783244

`∑[round(a(n-3))]` with `a(0)=3, a(1)=7, a(2)=8, a(3)=6, a(4)=8`

`round` is left out, it is the identity on integers.
-/

namespace A063111.P18123594951985783244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 7, 8, 6, 8] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063111.P18123594951985783244

namespace A063111

/-- `∑[round(a(n-3))]` -/
def P18123594951985783244.Spec : Prop :=
  ∀ n, (P18123594951985783244.a n : ℤ) = A063111 (n + 1)

end A063111

/-! ## A063111.P12280106501491816276

`ogf((3+7x+8x^2+3x^3+x^4)/(1-x-x^3+x^4))`
-/

namespace A063111.P12280106501491816276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 7, 8, 3, 1] [1, -1, 0, -1, 1] n

end

end A063111.P12280106501491816276

namespace A063111

/-- `ogf((3+7x+8x^2+3x^3+x^4)/(1-x-x^3+x^4))` -/
def P12280106501491816276.Spec : Prop :=
  ∀ n, P12280106501491816276.a n = A063111 (n + 1)

end A063111

/-! ## A063111.P2766613117451357397

`∑[a(n-3)%(3-n²)]` with `a(0)=3, a(1)=7, a(2)=8, a(3)=6, a(4)=8`
-/

namespace A063111.P2766613117451357397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 7, 8, 6, 8] fun n f1 =>
  Int.tmod (f1 (n - 3)) (3 - (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063111.P2766613117451357397

namespace A063111

/-- `∑[a(n-3)%(3-n²)]` -/
def P2766613117451357397.Spec : Prop :=
  ∀ n, P2766613117451357397.a n = A063111 (n + 1)

end A063111

/-! ## A063111.P11398809632511504629

`floor(2/acot(n))+2*(ceil(8*n/3)+1)`
-/

namespace A063111.P11398809632511504629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ + 2 * (⌈8 * ((n : ℚ) / 3)⌉ + 1)

end

end A063111.P11398809632511504629

namespace A063111

/-- `floor(2/acot(n))+2*(ceil(8*n/3)+1)` -/
def P11398809632511504629.Spec : Prop :=
  ∀ n, P11398809632511504629.a n = A063111 (n + 1)

end A063111

/-! ## A063111.P13637462580074460338

`∑[(6-char[1])/gcd(3, n)]+or(1, floor(8*n/3))`
-/

namespace A063111.P13637462580074460338
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) : ℚ) / (Nat.gcd 3 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Int.lor 1 ⌊8 * ((n : ℚ) / 3)⌋ : ℚ)

end

end A063111.P13637462580074460338

namespace A063111

/-- `∑[(6-char[1])/gcd(3, n)]+or(1, floor(8*n/3))` -/
def P13637462580074460338.Spec : Prop :=
  ∀ n, P13637462580074460338.a n = (A063111 (n + 1) : ℚ)

end A063111

/-! ## A063111.P5455928878559464136

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=3, a(1)=10, a(2)=18, a(3)=24, a(4)=32`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063111

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P5455928878559464136.Spec : Prop :=
  ∀ n, P5455928878559464136.a n = A063111 (n + 1)

theorem P5455928878559464136.correct : P5455928878559464136.Spec := by
  intro n
  simp only [A063111, Nat.add_sub_cancel]

end A063111

/-! ## A063111.P6930400716490977697

`A063218(n+1)+2*n`
-/

namespace A063111.P6930400716490977697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063218 (n + 1) + (2 * n : ℤ)

end

end A063111.P6930400716490977697

namespace A063111

/-- `A063218(n+1)+2*n` -/
def P6930400716490977697.Spec : Prop :=
  ∀ n, P6930400716490977697.a n = A063111 (n + 1)

end A063111

/-! ## A063111.P14404706496707716661

`A063107(n+1)-2*n`
-/

namespace A063111.P14404706496707716661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063107 (n + 1) - (2 * n : ℤ)

end

end A063111.P14404706496707716661

namespace A063111

/-- `A063107(n+1)-2*n` -/
def P14404706496707716661.Spec : Prop :=
  ∀ n, P14404706496707716661.a n = A063111 (n + 1)

end A063111

/-! ## A063111.P2046750776103306536

`A063105(n+1)+or(1, n)`
-/

namespace A063111.P2046750776103306536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063105 (n + 1) + (Nat.lor 1 n : ℤ)

end

end A063111.P2046750776103306536

namespace A063111

/-- `A063105(n+1)+or(1, n)` -/
def P2046750776103306536.Spec : Prop :=
  ∀ n, P2046750776103306536.a n = A063111 (n + 1)

end A063111

/-! ## A063111.P10169651417554705400

`A063099(n+1)+Δ[n²]`
-/

namespace A063111.P10169651417554705400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063099 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063111.P10169651417554705400

namespace A063111

/-- `A063099(n+1)+Δ[n²]` -/
def P10169651417554705400.Spec : Prop :=
  ∀ n, P10169651417554705400.a n = A063111 (n + 1)

end A063111

/-! ## A063111.P11400390324606158542

`A063089(n+1)+2*(n+1)`
-/

namespace A063111.P11400390324606158542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063089 (n + 1) + (2 * (n + 1) : ℤ)

end

end A063111.P11400390324606158542

namespace A063111

/-- `A063089(n+1)+2*(n+1)` -/
def P11400390324606158542.Spec : Prop :=
  ∀ n, P11400390324606158542.a n = A063111 (n + 1)

end A063111

/-! ## A063111.P10580226696371232931

`A063238(n+1)-2*(n+1)`
-/

namespace A063111.P10580226696371232931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063238 (n + 1) - (2 * (n + 1) : ℤ)

end

end A063111.P10580226696371232931

namespace A063111

/-- `A063238(n+1)-2*(n+1)` -/
def P10580226696371232931.Spec : Prop :=
  ∀ n, P10580226696371232931.a n = A063111 (n + 1)

end A063111

/-! ## A063111.P7678089893100942905

`∑[A000203(a(n²%3))]+2*n` with `a(0)=3, a(1)=5`
-/

namespace A063111.P7678089893100942905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  A000203 (f1 (n ^ 2 % 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n : ℤ)

end

end A063111.P7678089893100942905

namespace A063111

/-- `∑[A000203(a(n²%3))]+2*n` -/
def P7678089893100942905.Spec : Prop :=
  ∀ n, P7678089893100942905.a n = A063111 (n + 1)

end A063111

/-! ## A063111.P16911736562488229574

`A063087(n+1)+A016825(n)`
-/

namespace A063111.P16911736562488229574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063087 (n + 1) + A016825 n

end

end A063111.P16911736562488229574

namespace A063111

/-- `A063087(n+1)+A016825(n)` -/
def P16911736562488229574.Spec : Prop :=
  ∀ n, P16911736562488229574.a n = A063111 (n + 1)

end A063111

/-! ## A063111.P3629317443114587545

`A063200(n+1)+A016933(n)`
-/

namespace A063111.P3629317443114587545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063200 (n + 1) + A016933 n

end

end A063111.P3629317443114587545

namespace A063111

/-- `A063200(n+1)+A016933(n)` -/
def P3629317443114587545.Spec : Prop :=
  ∀ n, P3629317443114587545.a n = A063111 (n + 1)

end A063111

/-! ## A063111.P17465644477330732544

`A109613(n)+A063105(n+1)`
-/

namespace A063111.P17465644477330732544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + A063105 (n + 1)

end

end A063111.P17465644477330732544

namespace A063111

/-- `A109613(n)+A063105(n+1)` -/
def P17465644477330732544.Spec : Prop :=
  ∀ n, P17465644477330732544.a n = A063111 (n + 1)

end A063111

/-! ## A063111.P9558785066329219834

`A239229(n)+A063117(n+1)`
-/

namespace A063111.P9558785066329219834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239229 n + A063117 (n + 1)

end

end A063111.P9558785066329219834

namespace A063111

/-- `A239229(n)+A063117(n+1)` -/
def P9558785066329219834.Spec : Prop :=
  ∀ n, P9558785066329219834.a n = A063111 (n + 1)

end A063111

/-! ## A063111.P1484854815315421398

`A063229(n+1)-A010673(n)`
-/

namespace A063111.P1484854815315421398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063229 (n + 1) - A010673 n

end

end A063111.P1484854815315421398

namespace A063111

/-- `A063229(n+1)-A010673(n)` -/
def P1484854815315421398.Spec : Prop :=
  ∀ n, P1484854815315421398.a n = A063111 (n + 1)

end A063111

/-! ## A063111.P17070360519572796015

`A063135(n+1)-A016825(n)`
-/

namespace A063111.P17070360519572796015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063135 (n + 1) - A016825 n

end

end A063111.P17070360519572796015

namespace A063111

/-- `A063135(n+1)-A016825(n)` -/
def P17070360519572796015.Spec : Prop :=
  ∀ n, P17070360519572796015.a n = A063111 (n + 1)

end A063111

/-!
# A063112: a(1) = 1; a(n+1) = a(n) + product of nonzero digits of a(n) when written in base 3. Display sequence in base 3.

The programs for A063112, the canonical program `A063112.P7730830427237507199` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063112 has offset 1).

The definition of A063112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1942 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063112.P7730830427237507199

`A007089(A063113(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A063112

/-- `A007089(A063113(n+1))` -/
def P7730830427237507199.Spec : Prop :=
  ∀ n, P7730830427237507199.a n = A063112 (n + 1)

theorem P7730830427237507199.correct : P7730830427237507199.Spec := by
  intro n
  simp only [A063112, Nat.add_sub_cancel]

end A063112

/-! ## A063112.P15218580606521013403

`A007089(A288217(n+1)%A166205(n+2))`
-/

namespace A063112.P15218580606521013403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (Int.tmod (A288217 (n + 1)) (A166205 (n + 2))).toNat

end

end A063112.P15218580606521013403

namespace A063112

/-- `A007089(A288217(n+1)%A166205(n+2))` -/
def P15218580606521013403.Spec : Prop :=
  ∀ n, P15218580606521013403.a n = A063112 (n + 1)

end A063112

/-! ## A063112.P8616330776774504215

`filter[A105116(n), A225181(#)]`
-/

namespace A063112.P8616330776774504215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A225181 (f1 j).toNat = 1) n)

end

end A063112.P8616330776774504215

namespace A063112

/-- `filter[A105116(n), A225181(#)]` -/
def P8616330776774504215.Spec : Prop :=
  ∀ n, P8616330776774504215.a n = A063112 (n + 1)

end A063112

/-! ## A063112.P4255877332229200501

`filter[A381579(n), A225181(#)]`
-/

namespace A063112.P4255877332229200501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A225181 (f1 j).toNat = 1) n)

end

end A063112.P4255877332229200501

namespace A063112

/-- `filter[A381579(n), A225181(#)]` -/
def P4255877332229200501.Spec : Prop :=
  ∀ n, P4255877332229200501.a n = A063112 (n + 1)

end A063112

/-!
# A063113: a(1) = 1; a(n+1) = a(n) + product of nonzero digits of a(n) when written in base 3. But display sequence in base 10.

The programs for A063113, the canonical program `A063113.P7442920505588382049` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063113 has offset 1).

The definition of A063113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1943 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063113.P7442920505588382049

`A117592(a(n-1))+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A063113

/-- `A117592(a(n-1))+a(n-1)` -/
def P7442920505588382049.Spec : Prop :=
  ∀ n, P7442920505588382049.a n = A063113 (n + 1)

theorem P7442920505588382049.correct : P7442920505588382049.Spec := by
  intro n
  simp only [A063113, Nat.add_sub_cancel]

end A063113

/-! ## A063113.P4373691491106469200

`a(n-1)+2^A081603(a(n-1))` with `a(0)=1`
-/

namespace A063113.P4373691491106469200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 : ℚ) ^ (A081603 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℤ)

end

end A063113.P4373691491106469200

namespace A063113

/-- `a(n-1)+2^A081603(a(n-1))` -/
def P4373691491106469200.Spec : Prop :=
  ∀ n, P4373691491106469200.a n = (A063113 (n + 1) : ℚ)

end A063113

/-! ## A063113.P7964727051804595333

`a(n-1)+2^A001222(A119985(a(n-1)))` with `a(0)=1`
-/

namespace A063113.P7964727051804595333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 : ℚ) ^ (A001222 (A119985 (SequenceMachineLib.roundAway (a (n - 1))).toNat).toNat : ℤ)

end

end A063113.P7964727051804595333

namespace A063113

/-- `a(n-1)+2^A001222(A119985(a(n-1)))` -/
def P7964727051804595333.Spec : Prop :=
  ∀ n, P7964727051804595333.a n = (A063113 (n + 1) : ℚ)

end A063113

/-! ## A063113.P1006799206823012896

`A028898(A063112(n+1))`
-/

namespace A063113.P1006799206823012896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A063112 (n + 1)).toNat

end

end A063113.P1006799206823012896

namespace A063113

/-- `A028898(A063112(n+1))` -/
def P1006799206823012896.Spec : Prop :=
  ∀ n, P1006799206823012896.a n = A063113 (n + 1)

end A063113

/-! ## A063113.P13086298479239078076

`∑[A000034(A192981(n+1))*A205565(n)]`
-/

namespace A063113.P13086298479239078076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A192981 (n + 1)).toNat * A205565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063113.P13086298479239078076

namespace A063113

/-- `∑[A000034(A192981(n+1))*A205565(n)]` -/
def P13086298479239078076.Spec : Prop :=
  ∀ n, P13086298479239078076.a n = A063113 (n + 1)

end A063113

/-!
# A063114: a(n) = n + product of the nonzero digits of n.

The programs for A063114, the canonical program `A063114.P7069837411164582979` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063114 has offset 1).

The definition of A063114 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051801, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A063114.P7069837411164582979

`n+1+A051801(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063114

/-- `n+1+A051801(n+1)` -/
def P7069837411164582979.Spec : Prop :=
  ∀ n, P7069837411164582979.a n = A063114 (n + 1)

theorem P7069837411164582979.correct : P7069837411164582979.Spec := by
  intro n
  simp only [A063114, Nat.add_sub_cancel]

end A063114

/-! ## A063114.P15822375079274272377

`A051801(1+n)+1+n`
-/

namespace A063114.P15822375079274272377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (1 + n) + 1 + (n : ℤ)

end

end A063114.P15822375079274272377

namespace A063114

/-- `A051801(1+n)+1+n` -/
def P15822375079274272377.Spec : Prop :=
  ∀ n, P15822375079274272377.a n = A063114 (n + 1)

theorem P15822375079274272377.correct : P15822375079274272377.Spec := by
  intro n
  simp only [A063114, Nat.add_sub_cancel, A063114.P15822375079274272377.a, A063114.P7069837411164582979.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A063114

/-! ## A063114.P9070151911250331282

`sqrt(A352598(n+1))+1+n`
-/

namespace A063114.P9070151911250331282
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A352598 (n + 1) : ℝ) + 1 + (n : ℝ)

end

end A063114.P9070151911250331282

namespace A063114

/-- `sqrt(A352598(n+1))+1+n` -/
def P9070151911250331282.Spec : Prop :=
  ∀ n, P9070151911250331282.a n = (A063114 (n + 1) : ℝ)

end A063114

/-! ## A063114.P14024833326355653860

`2*(n+1)-A063543(n+1)`
-/

namespace A063114.P14024833326355653860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A063543 (n + 1)

end

end A063114.P14024833326355653860

namespace A063114

/-- `2*(n+1)-A063543(n+1)` -/
def P14024833326355653860.Spec : Prop :=
  ∀ n, P14024833326355653860.a n = A063114 (n + 1)

theorem P14024833326355653860.correct : P14024833326355653860.Spec := by
  intro n
  simp only [A063114, Nat.add_sub_cancel, A063114.P14024833326355653860.a, A063114.P7069837411164582979.a, A051801, A051801.P15997932515151970978.f1, A051801.P15997932515151970978.a, A063543, A063543.P3901565496532426814.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063114

/-! ## A063114.P16799000150262442742

`∏{digits}[n+1, A028310(#)]+n+1`
-/

namespace A063114.P16799000150262442742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A028310 x).prod + (n + 1 : ℤ)

end

end A063114.P16799000150262442742

namespace A063114

/-- `∏{digits}[n+1, A028310(#)]+n+1` -/
def P16799000150262442742.Spec : Prop :=
  ∀ n, P16799000150262442742.a n = A063114 (n + 1)

end A063114

/-! ## A063114.P16004694997523934822

`A007954(A004185(n+1))+n+1`
-/

namespace A063114.P16004694997523934822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A004185 (n + 1)).toNat + (n + 1 : ℤ)

end

end A063114.P16004694997523934822

namespace A063114

/-- `A007954(A004185(n+1))+n+1` -/
def P16004694997523934822.Spec : Prop :=
  ∀ n, P16004694997523934822.a n = A063114 (n + 1)

end A063114

/-! ## A063114.P468718845144402854

`A007954(A004719(n+1))+1+n`
-/

namespace A063114.P468718845144402854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A004719 (n + 1)).toNat + 1 + (n : ℤ)

end

end A063114.P468718845144402854

namespace A063114

/-- `A007954(A004719(n+1))+1+n` -/
def P468718845144402854.Spec : Prop :=
  ∀ n, P468718845144402854.a n = A063114 (n + 1)

end A063114

/-! ## A063114.P7343328306430585980

`A230101(n+1)/(n+1)+n+1`
-/

namespace A063114.P7343328306430585980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230101 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)

end

end A063114.P7343328306430585980

namespace A063114

/-- `A230101(n+1)/(n+1)+n+1` -/
def P7343328306430585980.Spec : Prop :=
  ∀ n, P7343328306430585980.a n = (A063114 (n + 1) : ℚ)

theorem P7343328306430585980.correct : P7343328306430585980.Spec := by
  intro n
  simp only [A063114, Nat.add_sub_cancel, A063114.P7343328306430585980.a, A063114.P7069837411164582979.a, A051801, A051801.P15997932515151970978.f1, A051801.P15997932515151970978.a, A230101, A230101.P17823981165506777543.f1, A230101.P17823981165506777543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063114

/-!
# A063116: Dimension of the space of weight 2n cusp forms for Gamma_0( 48 ).

The programs for A063116, the canonical program `A063116.P4639072545275040846` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063116 has offset 1).

The definition of A063116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063116.P4639072545275040846

`a(n-1)+16` with `a(0)=3, a(1)=18`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063116

/-- `a(n-1)+16` -/
def P4639072545275040846.Spec : Prop :=
  ∀ n, (P4639072545275040846.a n : ℤ) = A063116 (n + 1)

theorem P4639072545275040846.correct : P4639072545275040846.Spec := by
  intro n
  simp only [A063116, Nat.add_sub_cancel]

end A063116

/-!
# A063117: Dimension of the space of weight 2n cusp forms for Gamma_0( 49 ).

The programs for A063117, the canonical program `A063117.P11919114990679338670` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063117 has offset 1).

The definition of A063117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063117.P11919114990679338670

`a(n-3)+28` with `a(0)=1, a(1)=10, a(2)=20, a(3)=28`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063117

/-- `a(n-3)+28` -/
def P11919114990679338670.Spec : Prop :=
  ∀ n, (P11919114990679338670.a n : ℤ) = A063117 (n + 1)

theorem P11919114990679338670.correct : P11919114990679338670.Spec := by
  intro n
  simp only [A063117, Nat.add_sub_cancel]

end A063117

/-! ## A063117.P8509793026417047375

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=9, a(2)=10, a(3)=8, a(4)=10`
-/

namespace A063117.P8509793026417047375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9, 10, 8, 10] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063117.P8509793026417047375

namespace A063117

/-- `∑[abs(a(n-3))]` -/
def P8509793026417047375.Spec : Prop :=
  ∀ n, (P8509793026417047375.a n : ℤ) = A063117 (n + 1)

end A063117

/-! ## A063117.P15432994640504822661

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=9, a(2)=10, a(3)=8, a(4)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A063117.P15432994640504822661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9, 10, 8, 10] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063117.P15432994640504822661

namespace A063117

/-- `∑[floor(a(n-3))]` -/
def P15432994640504822661.Spec : Prop :=
  ∀ n, (P15432994640504822661.a n : ℤ) = A063117 (n + 1)

end A063117

/-! ## A063117.P1815007750341895627

`ogf((1+9x+10x^2+7x^3+x^4)/(1-x-x^3+x^4))`
-/

namespace A063117.P1815007750341895627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9, 10, 7, 1] [1, -1, 0, -1, 1] n

end

end A063117.P1815007750341895627

namespace A063117

/-- `ogf((1+9x+10x^2+7x^3+x^4)/(1-x-x^3+x^4))` -/
def P1815007750341895627.Spec : Prop :=
  ∀ n, P1815007750341895627.a n = A063117 (n + 1)

end A063117

/-! ## A063117.P8537915079222635530

`10-(and(2, a(n-2))-a(n-1))` with `a(0)=1, a(1)=10`
-/

namespace A063117.P8537915079222635530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  10 - (Int.land 2 (a (n - 2)) - a (n - 1))

end

end A063117.P8537915079222635530

namespace A063117

/-- `10-(and(2, a(n-2))-a(n-1))` -/
def P8537915079222635530.Spec : Prop :=
  ∀ n, P8537915079222635530.a n = A063117 (n + 1)

end A063117

/-! ## A063117.P739762430221781052

`A063107(n+1)-2`
-/

namespace A063117.P739762430221781052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063107 (n + 1) - 2

end

end A063117.P739762430221781052

namespace A063117

/-- `A063107(n+1)-2` -/
def P739762430221781052.Spec : Prop :=
  ∀ n, P739762430221781052.a n = A063117 (n + 1)

end A063117

/-! ## A063117.P14156544043371718284

`A063238(n+1)-4`
-/

namespace A063117.P14156544043371718284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063238 (n + 1) - 4

end

end A063117.P14156544043371718284

namespace A063117

/-- `A063238(n+1)-4` -/
def P14156544043371718284.Spec : Prop :=
  ∀ n, P14156544043371718284.a n = A063117 (n + 1)

end A063117

/-! ## A063117.P15443256572268192654

`A063089(n+1)+4*n`
-/

namespace A063117.P15443256572268192654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063089 (n + 1) + (4 * n : ℤ)

end

end A063117.P15443256572268192654

namespace A063117

/-- `A063089(n+1)+4*n` -/
def P15443256572268192654.Spec : Prop :=
  ∀ n, P15443256572268192654.a n = A063117 (n + 1)

end A063117

/-! ## A063117.P5807854808722864676

`A063087(n+1)+6*n`
-/

namespace A063117.P5807854808722864676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063087 (n + 1) + (6 * n : ℤ)

end

end A063117.P5807854808722864676

namespace A063117

/-- `A063087(n+1)+6*n` -/
def P5807854808722864676.Spec : Prop :=
  ∀ n, P5807854808722864676.a n = A063117 (n + 1)

end A063117

/-! ## A063117.P11592297928162316493

`A063200(n+1)+8*n`
-/

namespace A063117.P11592297928162316493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063200 (n + 1) + (8 * n : ℤ)

end

end A063117.P11592297928162316493

namespace A063117

/-- `A063200(n+1)+8*n` -/
def P11592297928162316493.Spec : Prop :=
  ∀ n, P11592297928162316493.a n = A063117 (n + 1)

end A063117

/-! ## A063117.P12349751357638237877

`A063125(n+1)-4*(n+1)`
-/

namespace A063117.P12349751357638237877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063125 (n + 1) - (4 * (n + 1) : ℤ)

end

end A063117.P12349751357638237877

namespace A063117

/-- `A063125(n+1)-4*(n+1)` -/
def P12349751357638237877.Spec : Prop :=
  ∀ n, P12349751357638237877.a n = A063117 (n + 1)

end A063117

/-! ## A063117.P8081379375018961940

`A063224(n+1)+A022144(n)`
-/

namespace A063117.P8081379375018961940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063224 (n + 1) + A022144 n

end

end A063117.P8081379375018961940

namespace A063117

/-- `A063224(n+1)+A022144(n)` -/
def P8081379375018961940.Spec : Prop :=
  ∀ n, P8081379375018961940.a n = A063117 (n + 1)

end A063117

/-! ## A063117.P2413929674364170675

`A063161(n+1)-A017617(n)`
-/

namespace A063117.P2413929674364170675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063161 (n + 1) - A017617 n

end

end A063117.P2413929674364170675

namespace A063117

/-- `A063161(n+1)-A017617(n)` -/
def P2413929674364170675.Spec : Prop :=
  ∀ n, P2413929674364170675.a n = A063117 (n + 1)

end A063117

/-! ## A063117.P17006431815003158928

`A063111(n+1)-A239229(n)`
-/

namespace A063117.P17006431815003158928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063111 (n + 1) - A239229 n

end

end A063117.P17006431815003158928

namespace A063117

/-- `A063111(n+1)-A239229(n)` -/
def P17006431815003158928.Spec : Prop :=
  ∀ n, P17006431815003158928.a n = A063117 (n + 1)

end A063117

/-! ## A063117.P15253835449725401078

`A242215(n)-A063219(n+1)`
-/

namespace A063117.P15253835449725401078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n - A063219 (n + 1)

end

end A063117.P15253835449725401078

namespace A063117

/-- `A242215(n)-A063219(n+1)` -/
def P15253835449725401078.Spec : Prop :=
  ∀ n, P15253835449725401078.a n = A063117 (n + 1)

end A063117

/-! ## A063117.P13521137110810752869

`A063147(n+1)-A004766(n+1)`
-/

namespace A063117.P13521137110810752869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063147 (n + 1) - A004766 (n + 1)

end

end A063117.P13521137110810752869

namespace A063117

/-- `A063147(n+1)-A004766(n+1)` -/
def P13521137110810752869.Spec : Prop :=
  ∀ n, P13521137110810752869.a n = A063117 (n + 1)

end A063117

/-! ## A063117.P12936333891517290352

`A063098(n+1)-A047410(n+1)`
-/

namespace A063117.P12936333891517290352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063098 (n + 1) - A047410 (n + 1)

end

end A063117.P12936333891517290352

namespace A063117

/-- `A063098(n+1)-A047410(n+1)` -/
def P12936333891517290352.Spec : Prop :=
  ∀ n, P12936333891517290352.a n = A063117 (n + 1)

end A063117

/-! ## A063117.P13235332286094867770

`A119413(n+1)-A063209(n+1)`
-/

namespace A063117.P13235332286094867770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119413 (n + 1) - A063209 (n + 1)

end

end A063117.P13235332286094867770

namespace A063117

/-- `A119413(n+1)-A063209(n+1)` -/
def P13235332286094867770.Spec : Prop :=
  ∀ n, P13235332286094867770.a n = A063117 (n + 1)

end A063117

/-! ## A063117.P4933353113363158911

`A063147(n+1)-(A004767(n)+2)`
-/

namespace A063117.P4933353113363158911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063147 (n + 1) - (A004767 n + 2)

end

end A063117.P4933353113363158911

namespace A063117

/-- `A063147(n+1)-(A004767(n)+2)` -/
def P4933353113363158911.Spec : Prop :=
  ∀ n, P4933353113363158911.a n = A063117 (n + 1)

end A063117

/-! ## A063117.P16029034323581562445

`A063099(n+1)+A016813(n)-2`
-/

namespace A063117.P16029034323581562445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063099 (n + 1) + (A016813 n - 2)

end

end A063117.P16029034323581562445

namespace A063117

/-- `A063099(n+1)+A016813(n)-2` -/
def P16029034323581562445.Spec : Prop :=
  ∀ n, P16029034323581562445.a n = A063117 (n + 1)

end A063117

/-!
# A063118: Dimension of the space of weight 2n cusp forms for Gamma_0(50).

The programs for A063118, the canonical program `A063118.P11069716627849366331` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063118 has offset 1).

The definition of A063118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063118.P11069716627849366331

`a(n-2)+30` with `a(0)=2, a(1)=17, a(2)=31`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063118

/-- `a(n-2)+30` -/
def P11069716627849366331.Spec : Prop :=
  ∀ n, (P11069716627849366331.a n : ℤ) = A063118 (n + 1)

theorem P11069716627849366331.correct : P11069716627849366331.Spec := by
  intro n
  simp only [A063118, Nat.add_sub_cancel]

end A063118

/-! ## A063118.P4163903575655124796

`∑[floor(a(n-2))]` with `a(0)=2, a(1)=15, a(2)=14, a(3)=16`

`floor` is left out, it is the identity on integers.
-/

namespace A063118.P4163903575655124796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 15, 14, 16] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063118.P4163903575655124796

namespace A063118

/-- `∑[floor(a(n-2))]` -/
def P4163903575655124796.Spec : Prop :=
  ∀ n, (P4163903575655124796.a n : ℤ) = A063118 (n + 1)

end A063118

/-! ## A063118.P12805111713699752927

`A063126(n+1)-4`
-/

namespace A063118.P12805111713699752927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063126 (n + 1) - 4

end

end A063118.P12805111713699752927

namespace A063118

/-- `A063126(n+1)-4` -/
def P12805111713699752927.Spec : Prop :=
  ∀ n, P12805111713699752927.a n = A063118 (n + 1)

end A063118

/-! ## A063118.P14049864600920015442

`A063157(n+1)-5`
-/

namespace A063118.P14049864600920015442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063157 (n + 1) - 5

end

end A063118.P14049864600920015442

namespace A063118

/-- `A063157(n+1)-5` -/
def P14049864600920015442.Spec : Prop :=
  ∀ n, P14049864600920015442.a n = A063118 (n + 1)

end A063118

/-! ## A063118.P12757615960174297556

`A063094(n+1)+A008590(n)`
-/

namespace A063118.P12757615960174297556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063094 (n + 1) + A008590 n

end

end A063118.P12757615960174297556

namespace A063118

/-- `A063094(n+1)+A008590(n)` -/
def P12757615960174297556.Spec : Prop :=
  ∀ n, P12757615960174297556.a n = A063118 (n + 1)

end A063118

/-! ## A063118.P6718471549464143291

`A063097(n+1)+A008592(n)`
-/

namespace A063118.P6718471549464143291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063097 (n + 1) + A008592 n

end

end A063118.P6718471549464143291

namespace A063118

/-- `A063097(n+1)+A008592(n)` -/
def P6718471549464143291.Spec : Prop :=
  ∀ n, P6718471549464143291.a n = A063118 (n + 1)

end A063118

/-! ## A063118.P4729111264355285397

`A063093(n+1)+A017293(n)`
-/

namespace A063118.P4729111264355285397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063093 (n + 1) + A017293 n

end

end A063118.P4729111264355285397

namespace A063118

/-- `A063093(n+1)+A017293(n)` -/
def P4729111264355285397.Spec : Prop :=
  ∀ n, P4729111264355285397.a n = A063118 (n + 1)

end A063118

/-! ## A063118.P4130782223016516733

`A131877(n)+A131055(n+1)`
-/

namespace A063118.P4130782223016516733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n + A131055 (n + 1)

end

end A063118.P4130782223016516733

namespace A063118

/-- `A131877(n)+A131055(n+1)` -/
def P4130782223016516733.Spec : Prop :=
  ∀ n, P4130782223016516733.a n = A063118 (n + 1)

end A063118

/-! ## A063118.P18293707513884795114

`A063116(n+1)-A109613(n)`
-/

namespace A063118.P18293707513884795114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063116 (n + 1) - A109613 n

end

end A063118.P18293707513884795114

namespace A063118

/-- `A063116(n+1)-A109613(n)` -/
def P18293707513884795114.Spec : Prop :=
  ∀ n, P18293707513884795114.a n = A063118 (n + 1)

end A063118

/-! ## A063118.P11699183750257928708

`A139608(n)-A063233(n+1)`
-/

namespace A063118.P11699183750257928708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139608 n - A063233 (n + 1)

end

end A063118.P11699183750257928708

namespace A063118

/-- `A139608(n)-A063233(n+1)` -/
def P11699183750257928708.Spec : Prop :=
  ∀ n, P11699183750257928708.a n = A063118 (n + 1)

end A063118

/-! ## A063118.P16514056335293712607

`A063122(n+1)-A047235(n+1)`
-/

namespace A063118.P16514056335293712607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063122 (n + 1) - A047235 (n + 1)

end

end A063118.P16514056335293712607

namespace A063118

/-- `A063122(n+1)-A047235(n+1)` -/
def P16514056335293712607.Spec : Prop :=
  ∀ n, P16514056335293712607.a n = A063118 (n + 1)

end A063118

/-! ## A063118.P12343004773560144125

`A063143(n+1)-A063226(n+1)`
-/

namespace A063118.P12343004773560144125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063143 (n + 1) - A063226 (n + 1)

end

end A063118.P12343004773560144125

namespace A063118

/-- `A063143(n+1)-A063226(n+1)` -/
def P12343004773560144125.Spec : Prop :=
  ∀ n, P12343004773560144125.a n = A063118 (n + 1)

end A063118

/-! ## A063118.P2563270941965305843

`A063142(n+1)-A073760(n+1)`
-/

namespace A063118.P2563270941965305843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063142 (n + 1) - A073760 (n + 1)

end

end A063118.P2563270941965305843

namespace A063118

/-- `A063142(n+1)-A073760(n+1)` -/
def P2563270941965305843.Spec : Prop :=
  ∀ n, P2563270941965305843.a n = A063118 (n + 1)

end A063118

/-! ## A063118.P9914467556684702940

`A063144(n+1)-A131501(n+1)`
-/

namespace A063118.P9914467556684702940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063144 (n + 1) - A131501 (n + 1)

end

end A063118.P9914467556684702940

namespace A063118

/-- `A063144(n+1)-A131501(n+1)` -/
def P9914467556684702940.Spec : Prop :=
  ∀ n, P9914467556684702940.a n = A063118 (n + 1)

end A063118

/-! ## A063118.P11506308531293124325

`A139245(n+1)-A063206(n+1)`
-/

namespace A063118.P11506308531293124325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139245 (n + 1) - A063206 (n + 1)

end

end A063118.P11506308531293124325

namespace A063118

/-- `A139245(n+1)-A063206(n+1)` -/
def P11506308531293124325.Spec : Prop :=
  ∀ n, P11506308531293124325.a n = A063118 (n + 1)

end A063118

/-! ## A063118.P5752492674602742292

`A063128(n+1)-A143988(n+1)`
-/

namespace A063118.P5752492674602742292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063128 (n + 1) - A143988 (n + 1)

end

end A063118.P5752492674602742292

namespace A063118

/-- `A063128(n+1)-A143988(n+1)` -/
def P5752492674602742292.Spec : Prop :=
  ∀ n, P5752492674602742292.a n = A063118 (n + 1)

end A063118

/-! ## A063118.P7266245440195176055

`A063168(n+1)-A255413(n+1)`
-/

namespace A063118.P7266245440195176055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063168 (n + 1) - A255413 (n + 1)

end

end A063118.P7266245440195176055

namespace A063118

/-- `A063168(n+1)-A255413(n+1)` -/
def P7266245440195176055.Spec : Prop :=
  ∀ n, P7266245440195176055.a n = A063118 (n + 1)

end A063118

/-! ## A063118.P10070331271192371958

`A298036(2*n)+A007310(n+1)`
-/

namespace A063118.P10070331271192371958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298036 (2 * n) + A007310 (n + 1)

end

end A063118.P10070331271192371958

namespace A063118

/-- `A298036(2*n)+A007310(n+1)` -/
def P10070331271192371958.Spec : Prop :=
  ∀ n, P10070331271192371958.a n = A063118 (n + 1)

end A063118

/-! ## A063118.P15984730316051574274

`A004277(A004526(n+1)+n)+12*n+1`
-/

namespace A063118.P15984730316051574274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A004526 (n + 1) + (n : ℤ)).toNat + (12 * n + 1 : ℤ)

end

end A063118.P15984730316051574274

namespace A063118

/-- `A004277(A004526(n+1)+n)+12*n+1` -/
def P15984730316051574274.Spec : Prop :=
  ∀ n, P15984730316051574274.a n = A063118 (n + 1)

end A063118

/-! ## A063118.P11083173811608180112

`A016825(4*n)-A063196(n+1)`
-/

namespace A063118.P11083173811608180112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (4 * n) - A063196 (n + 1)

end

end A063118.P11083173811608180112

namespace A063118

/-- `A016825(4*n)-A063196(n+1)` -/
def P11083173811608180112.Spec : Prop :=
  ∀ n, P11083173811608180112.a n = A063118 (n + 1)

end A063118

/-!
# A063119: a(n) = sigma(a(n-1)) + phi(a(n-1)), a(1)=3.

The programs for A063119, the canonical program `A063119.P9962988430281472205` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063119 has offset 1).

The definition of A063119 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(a(n-1))+A000010(a(n-1))` (program `A063119.P9962988430281472205`, by `A063119.P9962988430281472205.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A063119.P9962988430281472205

`A000203(a(n-1))+A000010(a(n-1))` with `a(0)=3`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A063119

/-- `A000203(a(n-1))+A000010(a(n-1))` -/
def P9962988430281472205.Spec : Prop :=
  ∀ n, P9962988430281472205.a n = A063119 (n + 1)

theorem P9962988430281472205.correct : P9962988430281472205.Spec := by
  intro n
  simp only [A063119, Nat.add_sub_cancel]

end A063119

/-! ## A063119.P10692926520963838848

`A065387(a(n-1))` with `a(0)=3`
-/

namespace A063119.P10692926520963838848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A065387 (a (n - 1)).toNat

end

end A063119.P10692926520963838848

namespace A063119

/-- `A065387(a(n-1))` -/
def P10692926520963838848.Spec : Prop :=
  ∀ n, P10692926520963838848.a n = A063119 (n + 1)

end A063119

/-! ## A063119.P5863756573453266816

`record[A065387(gcd(col(n), T(n-1,k)))]` with `a(0)=3`
-/

namespace A063119.P5863756573453266816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A065387 (Int.gcd (SequenceMachineLib.triCol n : ℤ) (SequenceMachineLib.triUp f1 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063119.P5863756573453266816

namespace A063119

/-- `record[A065387(gcd(col(n), T(n-1,k)))]` -/
def P5863756573453266816.Spec : Prop :=
  ∀ n, P5863756573453266816.a n = A063119 (n + 1)

end A063119

/-! ## A063119.P9559338951746163837

`2*A292770(a(n-1))` with `a(0)=3`
-/

namespace A063119.P9559338951746163837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * A292770 (a (n - 1)).toNat

end

end A063119.P9559338951746163837

namespace A063119

/-- `2*A292770(a(n-1))` -/
def P9559338951746163837.Spec : Prop :=
  ∀ n, P9559338951746163837.a n = A063119 (n + 1)

end A063119

/-! ## A063119.P15874909412187794395

`A209187(a(n-1))+a(n-1)` with `a(0)=3`
-/

namespace A063119.P15874909412187794395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A209187 (a (n - 1)).toNat + a (n - 1)

end

end A063119.P15874909412187794395

namespace A063119

/-- `A209187(a(n-1))+a(n-1)` -/
def P15874909412187794395.Spec : Prop :=
  ∀ n, P15874909412187794395.a n = A063119 (n + 1)

end A063119

/-!
# A063120: Dimension of the space of weight 2n cusp forms for Gamma_0( 52 ).

The programs for A063120, the canonical program `A063120.P14216856321015006915` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063120 has offset 1).

The definition of A063120 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063120.P14216856321015006915

`a(n-1)+14` with `a(0)=5, a(1)=18`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063120

/-- `a(n-1)+14` -/
def P14216856321015006915.Spec : Prop :=
  ∀ n, (P14216856321015006915.a n : ℤ) = A063120 (n + 1)

theorem P14216856321015006915.correct : P14216856321015006915.Spec := by
  intro n
  simp only [A063120, Nat.add_sub_cancel]

end A063120

/-!
# A063121: Dimension of the space of weight 2n cusp forms for Gamma_0( 53 ).

The programs for A063121, the canonical program `A063121.P4895836899130114483` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063121 has offset 1).

The definition of A063121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063121.P4895836899130114483

`a(n-2)+18` with `a(0)=4, a(1)=13, a(2)=21`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063121

/-- `a(n-2)+18` -/
def P4895836899130114483.Spec : Prop :=
  ∀ n, (P4895836899130114483.a n : ℤ) = A063121 (n + 1)

theorem P4895836899130114483.correct : P4895836899130114483.Spec := by
  intro n
  simp only [A063121, Nat.add_sub_cancel]

end A063121

/-! ## A063121.P12558731238254027273

`∑[abs(a(n-2))]` with `a(0)=4, a(1)=9, a(2)=8, a(3)=10`
-/

namespace A063121.P12558731238254027273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 9, 8, 10] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063121.P12558731238254027273

namespace A063121

/-- `∑[abs(a(n-2))]` -/
def P12558731238254027273.Spec : Prop :=
  ∀ n, (P12558731238254027273.a n : ℤ) = A063121 (n + 1)

end A063121

/-! ## A063121.P1756564613498891732

`∑[18-a(n-1)]` with `a(0)=4, a(1)=9, a(2)=8`
-/

namespace A063121.P1756564613498891732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 9, 8] fun n f1 =>
  18 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063121.P1756564613498891732

namespace A063121

/-- `∑[18-a(n-1)]` -/
def P1756564613498891732.Spec : Prop :=
  ∀ n, P1756564613498891732.a n = A063121 (n + 1)

end A063121

/-! ## A063121.P1613568273265992769

`ogf((4+9x+4x^2+x^3)/(1-x-x^2+x^3))`
-/

namespace A063121.P1613568273265992769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 9, 4, 1] [1, -1, -1, 1] n

end

end A063121.P1613568273265992769

namespace A063121

/-- `ogf((4+9x+4x^2+x^3)/(1-x-x^2+x^3))` -/
def P1613568273265992769.Spec : Prop :=
  ∀ n, P1613568273265992769.a n = A063121 (n + 1)

end A063121

/-! ## A063121.P1482299153538126418

`9*n+(n%2)^n+3`
-/

namespace A063121.P1482299153538126418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + ((n % 2) ^ n + 3)

end

end A063121.P1482299153538126418

namespace A063121

/-- `9*n+(n%2)^n+3` -/
def P1482299153538126418.Spec : Prop :=
  ∀ n, (P1482299153538126418.a n : ℤ) = A063121 (n + 1)

end A063121

/-! ## A063121.P10360674311775556997

`9*n-char[2*(n+1)]+4`
-/

namespace A063121.P10360674311775556997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 4

end

end A063121.P10360674311775556997

namespace A063121

/-- `9*n-char[2*(n+1)]+4` -/
def P10360674311775556997.Spec : Prop :=
  ∀ n, P10360674311775556997.a n = A063121 (n + 1)

end A063121

/-! ## A063121.P15343868964826911258

`record[gcd(2, n)+2-dr(n)²+n]`
-/

namespace A063121.P15343868964826911258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) + (2 - (SequenceMachineLib.digitalRoot (n : ℤ) ^ 2 : ℤ) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063121.P15343868964826911258

namespace A063121

/-- `record[gcd(2, n)+2-dr(n)²+n]` -/
def P15343868964826911258.Spec : Prop :=
  ∀ n, P15343868964826911258.a n = A063121 (n + 1)

end A063121

/-! ## A063121.P14924606644062193833

`A063150(n+1)%A017581(n)`
-/

namespace A063121.P14924606644062193833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063150 (n + 1)) (A017581 n)

end

end A063121.P14924606644062193833

namespace A063121

/-- `A063150(n+1)%A017581(n)` -/
def P14924606644062193833.Spec : Prop :=
  ∀ n, P14924606644062193833.a n = A063121 (n + 1)

end A063121

/-! ## A063121.P4590432555349999034

`A063134(n+1)%A255413(n+1)`
-/

namespace A063121.P4590432555349999034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063134 (n + 1)) (A255413 (n + 1))

end

end A063121.P4590432555349999034

namespace A063121

/-- `A063134(n+1)%A255413(n+1)` -/
def P4590432555349999034.Spec : Prop :=
  ∀ n, P4590432555349999034.a n = A063121 (n + 1)

end A063121

/-! ## A063121.P2633067242385274279

`Δ[A009946(n)-n]`
-/

namespace A063121.P2633067242385274279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009946 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063121.P2633067242385274279

namespace A063121

/-- `Δ[A009946(n)-n]` -/
def P2633067242385274279.Spec : Prop :=
  ∀ n, P2633067242385274279.a n = A063121 (n + 1)

end A063121

/-! ## A063121.P16627537583866131144

`Δ[A010001(n)-A007590(n+1)]`
-/

namespace A063121.P16627537583866131144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010001 n - A007590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063121.P16627537583866131144

namespace A063121

/-- `Δ[A010001(n)-A007590(n+1)]` -/
def P16627537583866131144.Spec : Prop :=
  ∀ n, P16627537583866131144.a n = A063121 (n + 1)

end A063121

/-! ## A063121.P12252697207641025319

`A223134(A047383(n+1)+n)`
-/

namespace A063121.P12252697207641025319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 (A047383 (n + 1) + (n : ℤ)).toNat

end

end A063121.P12252697207641025319

namespace A063121

/-- `A223134(A047383(n+1)+n)` -/
def P12252697207641025319.Spec : Prop :=
  ∀ n, P12252697207641025319.a n = A063121 (n + 1)

end A063121

/-! ## A063121.P2335815633335853888

`A004276(A047346(n+2)+n)`
-/

namespace A063121.P2335815633335853888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 (A047346 (n + 2) + (n : ℤ)).toNat

end

end A063121.P2335815633335853888

namespace A063121

/-- `A004276(A047346(n+2)+n)` -/
def P2335815633335853888.Spec : Prop :=
  ∀ n, P2335815633335853888.a n = A063121 (n + 1)

end A063121

/-! ## A063121.P8685101862473125979

`A004281(A047355(n+2)+n)`
-/

namespace A063121.P8685101862473125979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 (A047355 (n + 2) + (n : ℤ)).toNat

end

end A063121.P8685101862473125979

namespace A063121

/-- `A004281(A047355(n+2)+n)` -/
def P8685101862473125979.Spec : Prop :=
  ∀ n, P8685101862473125979.a n = A063121 (n + 1)

end A063121

/-! ## A063121.P3251187147000613710

`A047227(A270545(n+1))`
-/

namespace A063121.P3251187147000613710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047227 (A270545 (n + 1)).toNat

end

end A063121.P3251187147000613710

namespace A063121

/-- `A047227(A270545(n+1))` -/
def P3251187147000613710.Spec : Prop :=
  ∀ n, P3251187147000613710.a n = A063121 (n + 1)

end A063121

/-! ## A063121.P10449106043805745591

`A272574(A063237(n+1))`
-/

namespace A063121.P10449106043805745591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272574 (A063237 (n + 1)).toNat

end

end A063121.P10449106043805745591

namespace A063121

/-- `A272574(A063237(n+1))` -/
def P10449106043805745591.Spec : Prop :=
  ∀ n, P10449106043805745591.a n = A063121 (n + 1)

end A063121

/-! ## A063121.P437654957112127454

`A272574(A063109(n+1)+1)`
-/

namespace A063121.P437654957112127454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272574 (A063109 (n + 1) + 1).toNat

end

end A063121.P437654957112127454

namespace A063121

/-- `A272574(A063109(n+1)+1)` -/
def P437654957112127454.Spec : Prop :=
  ∀ n, P437654957112127454.a n = A063121 (n + 1)

end A063121

/-! ## A063121.P16053181829279335241

`A020725(A063102(n+1))`
-/

namespace A063121.P16053181829279335241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A063102 (n + 1)).toNat

end

end A063121.P16053181829279335241

namespace A063121

/-- `A020725(A063102(n+1))` -/
def P16053181829279335241.Spec : Prop :=
  ∀ n, P16053181829279335241.a n = A063121 (n + 1)

end A063121

/-! ## A063121.P18300211135516299567

`eq[A266449(n), A340536(n+1)]`
-/

namespace A063121.P18300211135516299567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266449 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340536 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063121.P18300211135516299567

namespace A063121

/-- `eq[A266449(n), A340536(n+1)]` -/
def P18300211135516299567.Spec : Prop :=
  ∀ n, (P18300211135516299567.a n : ℤ) = A063121 (n + 1)

end A063121

/-! ## A063121.P13603993250648153298

`A057355(A063157(n+1))`
-/

namespace A063121.P13603993250648153298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (A063157 (n + 1)).toNat

end

end A063121.P13603993250648153298

namespace A063121

/-- `A057355(A063157(n+1))` -/
def P13603993250648153298.Spec : Prop :=
  ∀ n, P13603993250648153298.a n = A063121 (n + 1)

end A063121

/-!
# A063122: Dimension of the space of weight 2n cusp forms for Gamma_0( 54 ).

The programs for A063122, the canonical program `A063122.P2756250505962267534` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063122 has offset 1).

The definition of A063122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063122.P2756250505962267534

`a(n-1)+18` with `a(0)=4, a(1)=21`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063122

/-- `a(n-1)+18` -/
def P2756250505962267534.Spec : Prop :=
  ∀ n, (P2756250505962267534.a n : ℤ) = A063122 (n + 1)

theorem P2756250505962267534.correct : P2756250505962267534.Spec := by
  intro n
  simp only [A063122, Nat.add_sub_cancel]

end A063122

/-!
# A063123: Number of solutions (r,s), 0< r< s, to the equation 1/n = 1/r + 1/s + 1/(r*s).

The programs for A063123, the canonical program `A063123.P8123817947040067879` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063123 has offset 1).

The definition of A063123 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063123.P8123817947040067879

`A092517(n+1)/2`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A063123

/-- `A092517(n+1)/2` -/
def P8123817947040067879.Spec : Prop :=
  ∀ n, P8123817947040067879.a n = (A063123 (n + 1) : ℚ)

end A063123

/-! ## A063123.P17034470731787913570

`A000005(n+1)*A000005(n+2)/2`
-/

namespace A063123.P17034470731787913570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A000005 (n + 2) : ℚ) / 2

end

end A063123.P17034470731787913570

namespace A063123

/-- `A000005(n+1)*A000005(n+2)/2` -/
def P17034470731787913570.Spec : Prop :=
  ∀ n, P17034470731787913570.a n = (A063123 (n + 1) : ℚ)

end A063123

/-! ## A063123.P14362406798473302359

`A001281(A092517(n+1))`
-/

namespace A063123.P14362406798473302359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A092517 (n + 1)).toNat

end

end A063123.P14362406798473302359

namespace A063123

/-- `A001281(A092517(n+1))` -/
def P14362406798473302359.Spec : Prop :=
  ∀ n, P14362406798473302359.a n = A063123 (n + 1)

end A063123

/-! ## A063123.P5479399492383406218

`A220466(A092517(n+1)-1)`
-/

namespace A063123.P5479399492383406218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220466 (A092517 (n + 1) - 1).toNat

end

end A063123.P5479399492383406218

namespace A063123

/-- `A220466(A092517(n+1)-1)` -/
def P5479399492383406218.Spec : Prop :=
  ∀ n, P5479399492383406218.a n = A063123 (n + 1)

end A063123

/-! ## A063123.P8213735874524791684

`(A133948(n+1)+A133947(n+1))/2`
-/

namespace A063123.P8213735874524791684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133948 (n + 1) + A133947 (n + 1) : ℚ) / 2

end

end A063123.P8213735874524791684

namespace A063123

/-- `(A133948(n+1)+A133947(n+1))/2` -/
def P8213735874524791684.Spec : Prop :=
  ∀ n, P8213735874524791684.a n = (A063123 (n + 1) : ℚ)

end A063123

/-! ## A063123.P9085305257950220603

`A060778(n+1)/2*A060779(n+1)`
-/

namespace A063123.P9085305257950220603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060778 (n + 1) : ℚ) / 2 * (A060779 (n + 1) : ℚ)

end

end A063123.P9085305257950220603

namespace A063123

/-- `A060778(n+1)/2*A060779(n+1)` -/
def P9085305257950220603.Spec : Prop :=
  ∀ n, P9085305257950220603.a n = (A063123 (n + 1) : ℚ)

end A063123

/-! ## A063123.P3854008882530205656

`A004526(A000005(n+2)*A000005(n+1))`
-/

namespace A063123.P3854008882530205656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000005 (n + 2) * A000005 (n + 1)).toNat

end

end A063123.P3854008882530205656

namespace A063123

/-- `A004526(A000005(n+2)*A000005(n+1))` -/
def P3854008882530205656.Spec : Prop :=
  ∀ n, P3854008882530205656.a n = A063123 (n + 1)

end A063123

/-! ## A063123.P7539277870569916489

`A006370(A000005(n+2)*A000005(n+1))`
-/

namespace A063123.P7539277870569916489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A000005 (n + 2) * A000005 (n + 1)).toNat

end

end A063123.P7539277870569916489

namespace A063123

/-- `A006370(A000005(n+2)*A000005(n+1))` -/
def P7539277870569916489.Spec : Prop :=
  ∀ n, P7539277870569916489.a n = A063123 (n + 1)

end A063123

/-! ## A063123.P16727792474748743613

`A014682(A000005(n+2)*A000005(n+1))`
-/

namespace A063123.P16727792474748743613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A000005 (n + 2) * A000005 (n + 1)).toNat

end

end A063123.P16727792474748743613

namespace A063123

/-- `A014682(A000005(n+2)*A000005(n+1))` -/
def P16727792474748743613.Spec : Prop :=
  ∀ n, P16727792474748743613.a n = A063123 (n + 1)

end A063123

/-! ## A063123.P7200567533635734128

`A025480(A000005(n+2)*A000005(n+1))`
-/

namespace A063123.P7200567533635734128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A000005 (n + 2) * A000005 (n + 1)).toNat

end

end A063123.P7200567533635734128

namespace A063123

/-- `A025480(A000005(n+2)*A000005(n+1))` -/
def P7200567533635734128.Spec : Prop :=
  ∀ n, P7200567533635734128.a n = A063123 (n + 1)

end A063123

/-! ## A063123.P2263924306784495039

`A229949(2*(n+1))/2`
-/

namespace A063123.P2263924306784495039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229949 (2 * (n + 1)) : ℚ) / 2

end

end A063123.P2263924306784495039

namespace A063123

/-- `A229949(2*(n+1))/2` -/
def P2263924306784495039.Spec : Prop :=
  ∀ n, P2263924306784495039.a n = (A063123 (n + 1) : ℚ)

end A063123

/-! ## A063123.P7064339036174502646

`A004526(A229949(2*(n+1)))`
-/

namespace A063123.P7064339036174502646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A229949 (2 * (n + 1))).toNat

end

end A063123.P7064339036174502646

namespace A063123

/-- `A004526(A229949(2*(n+1)))` -/
def P7064339036174502646.Spec : Prop :=
  ∀ n, P7064339036174502646.a n = A063123 (n + 1)

end A063123

/-! ## A063123.P18418350982092146708

`∑{d}[∑[n+1], 1/gcd(2, #)]`
-/

namespace A063123.P18418350982092146708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), 1 / (Nat.gcd 2 d : ℚ)

end

end A063123.P18418350982092146708

namespace A063123

/-- `∑{d}[∑[n+1], 1/gcd(2, #)]` -/
def P18418350982092146708.Spec : Prop :=
  ∀ n, P18418350982092146708.a n = (A063123 (n + 1) : ℚ)

end A063123

/-! ## A063123.P18234243711990341857

`∑{d}[∑[n+1], #%2+1]/2`
-/

namespace A063123.P18234243711990341857
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d % 2 + 1) : ℕ) : ℚ) / 2

end

end A063123.P18234243711990341857

namespace A063123

/-- `∑{d}[∑[n+1], #%2+1]/2` -/
def P18234243711990341857.Spec : Prop :=
  ∀ n, P18234243711990341857.a n = (A063123 (n + 1) : ℚ)

end A063123

/-! ## A063123.P6950696490011267768

`∑{d}[∑[n+1], and(1, #)+1]/2`
-/

namespace A063123.P6950696490011267768
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (Nat.land 1 d + 1) : ℕ) : ℚ) / 2

end

end A063123.P6950696490011267768

namespace A063123

/-- `∑{d}[∑[n+1], and(1, #)+1]/2` -/
def P6950696490011267768.Spec : Prop :=
  ∀ n, P6950696490011267768.a n = (A063123 (n + 1) : ℚ)

end A063123

/-! ## A063123.P2132656289489357251

`∏{e}[∑[2*(n+1)], #+1]/2`
-/

namespace A063123.P2132656289489357251
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2

end

end A063123.P2132656289489357251

namespace A063123

/-- `∏{e}[∑[2*(n+1)], #+1]/2` -/
def P2132656289489357251.Spec : Prop :=
  ∀ n, P2132656289489357251.a n = (A063123 (n + 1) : ℚ)

end A063123

/-! ## A063123.P9507399650663340333

`∑{d}[(n+1)*(n+2), ceil(1/#)]/2`
-/

namespace A063123.P9507399650663340333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉ : ℤ) : ℚ) / 2

end

end A063123.P9507399650663340333

namespace A063123

/-- `∑{d}[(n+1)*(n+2), ceil(1/#)]/2` -/
def P9507399650663340333.Spec : Prop :=
  ∀ n, P9507399650663340333.a n = (A063123 (n + 1) : ℚ)

end A063123

/-! ## A063123.P13367202489509909089

`floor(∏{e}[(n+1)²+n+1, #+1]/2)`
-/

namespace A063123.P13367202489509909089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌋

end

end A063123.P13367202489509909089

namespace A063123

/-- `floor(∏{e}[(n+1)²+n+1, #+1]/2)` -/
def P13367202489509909089.Spec : Prop :=
  ∀ n, P13367202489509909089.a n = A063123 (n + 1)

end A063123

/-! ## A063123.P10428613741264366403

`A002265(2*∏{e}[(n+2)*(n+1), #+1])`
-/

namespace A063123.P10428613741264366403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)))

end

end A063123.P10428613741264366403

namespace A063123

/-- `A002265(2*∏{e}[(n+2)*(n+1), #+1])` -/
def P10428613741264366403.Spec : Prop :=
  ∀ n, P10428613741264366403.a n = A063123 (n + 1)

end A063123

/-! ## A063123.P740603621697613511

`A000005(A278256(n+1))/2`
-/

namespace A063123.P740603621697613511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A278256 (n + 1)).toNat : ℚ) / 2

end

end A063123.P740603621697613511

namespace A063123

/-- `A000005(A278256(n+1))/2` -/
def P740603621697613511.Spec : Prop :=
  ∀ n, P740603621697613511.a n = (A063123 (n + 1) : ℚ)

end A063123

/-!
# A063124: a(n) = # { primes p | prime(n) <= p < 2*prime(n) } where prime(n) is the n-th prime.

The programs for A063124, the canonical program `A063124.P9970457058300728251` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063124 has offset 1).

The definition of A063124 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063124.P11325902119049956148

`A070046(n+1)+1`
-/

namespace A063124.P11325902119049956148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070046 (n + 1) + 1

end

end A063124.P11325902119049956148

namespace A063124

/-- `A070046(n+1)+1` -/
def P11325902119049956148.Spec : Prop :=
  ∀ n, P11325902119049956148.a n = A063124 (n + 1)

theorem P11325902119049956148.correct : P11325902119049956148.Spec := by
  intro n
  simp only [A063124, Nat.add_sub_cancel, A063124.P11325902119049956148.a, A063124.P9970457058300728251.a, A070046, A070046.P5794988103684771228.a, A331677, A331677.P6402599086706022467.a, A020900, A020900.P12967914466540950521.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A063124

/-! ## A063124.P9970457058300728251

`n+1-A331677(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A063124

/-- `n+1-A331677(n+1)` -/
def P9970457058300728251.Spec : Prop :=
  ∀ n, P9970457058300728251.a n = A063124 (n + 1)

theorem P9970457058300728251.correct : P9970457058300728251.Spec := by
  intro n
  simp only [A063124, Nat.add_sub_cancel]

end A063124

/-! ## A063124.P9256763157409536756

`1+n+1-A334051(n+1)`
-/

namespace A063124.P9256763157409536756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + (n + 1) : ℤ) - A334051 (n + 1)

end

end A063124.P9256763157409536756

namespace A063124

/-- `1+n+1-A334051(n+1)` -/
def P9256763157409536756.Spec : Prop :=
  ∀ n, P9256763157409536756.a n = A063124 (n + 1)

theorem P9256763157409536756.correct : P9256763157409536756.Spec := by
  intro n
  simp only [A063124, Nat.add_sub_cancel, A063124.P9256763157409536756.a, A063124.P9970457058300728251.a, A331677, A331677.P6402599086706022467.a, A334051, A334051.P2829152517033935229.a, A020900, A020900.P12967914466540950521.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A063124

/-! ## A063124.P14196713184837922169

`1+A000720(2*A000040(n+1))-(n+1)`
-/

namespace A063124.P14196713184837922169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000720 (2 * A000040 (n + 1)).toNat - (n + 1 : ℤ)

end

end A063124.P14196713184837922169

namespace A063124

/-- `1+A000720(2*A000040(n+1))-(n+1)` -/
def P14196713184837922169.Spec : Prop :=
  ∀ n, P14196713184837922169.a n = A063124 (n + 1)

theorem P14196713184837922169.correct : P14196713184837922169.Spec := by
  intro n
  simp only [A063124, Nat.add_sub_cancel, A063124.P14196713184837922169.a, A063124.P9970457058300728251.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A331677, A331677.P6402599086706022467.a, A020900, A020900.P12967914466540950521.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A063124

/-! ## A063124.P14893554432580706462

`A035250(A000040(n+1))`
-/

namespace A063124.P14893554432580706462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (A000040 (n + 1)).toNat

end

end A063124.P14893554432580706462

namespace A063124

/-- `A035250(A000040(n+1))` -/
def P14893554432580706462.Spec : Prop :=
  ∀ n, P14893554432580706462.a n = A063124 (n + 1)

end A063124

/-! ## A063124.P8664082751821069779

`A020900(n+1)-n`
-/

namespace A063124.P8664082751821069779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020900 (n + 1) - (n : ℤ)

end

end A063124.P8664082751821069779

namespace A063124

/-- `A020900(n+1)-n` -/
def P8664082751821069779.Spec : Prop :=
  ∀ n, P8664082751821069779.a n = A063124 (n + 1)

theorem P8664082751821069779.correct : P8664082751821069779.Spec := by
  intro n
  simp only [A063124, Nat.add_sub_cancel, A063124.P8664082751821069779.a, A063124.P9970457058300728251.a, A020900, A020900.P12967914466540950521.a, A331677, A331677.P6402599086706022467.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A063124

/-! ## A063124.P15136630591607108758

`2-A334051(n+1)+n`
-/

namespace A063124.P15136630591607108758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A334051 (n + 1) + (n : ℤ)

end

end A063124.P15136630591607108758

namespace A063124

/-- `2-A334051(n+1)+n` -/
def P15136630591607108758.Spec : Prop :=
  ∀ n, P15136630591607108758.a n = A063124 (n + 1)

theorem P15136630591607108758.correct : P15136630591607108758.Spec := by
  intro n
  simp only [A063124, Nat.add_sub_cancel, A063124.P15136630591607108758.a, A063124.P9970457058300728251.a, A331677, A331677.P6402599086706022467.a, A334051, A334051.P2829152517033935229.a, A020900, A020900.P12967914466540950521.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A063124

/-! ## A063124.P15261874836436610540

`A298862(n+1)-Δ[n²]`
-/

namespace A063124.P15261874836436610540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298862 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063124.P15261874836436610540

namespace A063124

/-- `A298862(n+1)-Δ[n²]` -/
def P15261874836436610540.Spec : Prop :=
  ∀ n, P15261874836436610540.a n = A063124 (n + 1)

theorem P15261874836436610540.correct : P15261874836436610540.Spec := by
  intro n
  simp only [A063124, Nat.add_sub_cancel, A063124.P15261874836436610540.f1, A063124.P15261874836436610540.a, A063124.P9970457058300728251.a, A298862, A298862.P282422978072333323.a, A331677, A331677.P6402599086706022467.a, A020900, A020900.P12967914466540950521.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A063124

/-! ## A063124.P12362766932304046874

`a(n-1)+A102820(n)-1` with `a(0)=2`
-/

namespace A063124.P12362766932304046874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A102820 n - 1)

end

end A063124.P12362766932304046874

namespace A063124

/-- `a(n-1)+A102820(n)-1` -/
def P12362766932304046874.Spec : Prop :=
  ∀ n, P12362766932304046874.a n = A063124 (n + 1)

end A063124

/-! ## A063124.P18084486460157314668

`A020725(A070046(n+1))`
-/

namespace A063124.P18084486460157314668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A070046 (n + 1)).toNat

end

end A063124.P18084486460157314668

namespace A063124

/-- `A020725(A070046(n+1))` -/
def P18084486460157314668.Spec : Prop :=
  ∀ n, P18084486460157314668.a n = A063124 (n + 1)

end A063124

/-! ## A063124.P8193603365000600252

`Δ[A007504(n)]-A246514(n+1)`
-/

namespace A063124.P8193603365000600252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A246514 (n + 1)

end

end A063124.P8193603365000600252

namespace A063124

/-- `Δ[A007504(n)]-A246514(n+1)` -/
def P8193603365000600252.Spec : Prop :=
  ∀ n, P8193603365000600252.a n = A063124 (n + 1)

end A063124

/-! ## A063124.P13063287467647896889

`A134591(n+1)-A065897(n+1)`
-/

namespace A063124.P13063287467647896889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134591 (n + 1) - A065897 (n + 1)

end

end A063124.P13063287467647896889

namespace A063124

/-- `A134591(n+1)-A065897(n+1)` -/
def P13063287467647896889.Spec : Prop :=
  ∀ n, P13063287467647896889.a n = A063124 (n + 1)

theorem P13063287467647896889.correct : P13063287467647896889.Spec := by
  intro n
  simp only [A063124, Nat.add_sub_cancel, A063124.P13063287467647896889.a, A063124.P9970457058300728251.a, A065897, A065897.P7299211329886055703.a, A134591, A134591.P13784663667261059065.a, A331677, A331677.P6402599086706022467.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A014689, A014689.P6286543075765329050.a, A020900, A020900.P12967914466540950521.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A063124

/-! ## A063124.P18117469465895192332

`A100484(n+1)-A120632(n+1)`
-/

namespace A063124.P18117469465895192332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A120632 (n + 1)

end

end A063124.P18117469465895192332

namespace A063124

/-- `A100484(n+1)-A120632(n+1)` -/
def P18117469465895192332.Spec : Prop :=
  ∀ n, P18117469465895192332.a n = A063124 (n + 1)

theorem P18117469465895192332.correct : P18117469465895192332.Spec := by
  intro n
  simp only [A063124, Nat.add_sub_cancel, A063124.P18117469465895192332.a, A063124.P9970457058300728251.a, A100484, A100484.P9678625670825099636.a, A120632, A120632.P1454145713146504368.a, A331677, A331677.P6402599086706022467.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A020900, A020900.P12967914466540950521.a, A040976, A040976.P11599754272797435513.a, A120633, A120633.P6768074309854591197.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A062234, A062234.P8592873382335253705.a, A070046, A070046.P5794988103684771228.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A063124

/-! ## A063124.P3044494359445806804

`A000040(n+1)-A246514(n+1)`
-/

namespace A063124.P3044494359445806804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A246514 (n + 1)

end

end A063124.P3044494359445806804

namespace A063124

/-- `A000040(n+1)-A246514(n+1)` -/
def P3044494359445806804.Spec : Prop :=
  ∀ n, P3044494359445806804.a n = A063124 (n + 1)

theorem P3044494359445806804.correct : P3044494359445806804.Spec := by
  intro n
  simp only [A063124, Nat.add_sub_cancel, A063124.P3044494359445806804.a, A063124.P9970457058300728251.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A246514, A246514.P626080667968607195.a, A331677, A331677.P6402599086706022467.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A020900, A020900.P12967914466540950521.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A063124

/-! ## A063124.P6918812069364411790

`A001478(n+1)+A020900(n+1)+1`
-/

namespace A063124.P6918812069364411790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A020900 (n + 1) + 1)

end

end A063124.P6918812069364411790

namespace A063124

/-- `A001478(n+1)+A020900(n+1)+1` -/
def P6918812069364411790.Spec : Prop :=
  ∀ n, P6918812069364411790.a n = A063124 (n + 1)

theorem P6918812069364411790.correct : P6918812069364411790.Spec := by
  intro n
  simp only [A063124, Nat.add_sub_cancel, A063124.P6918812069364411790.a, A063124.P9970457058300728251.a, A001478, A001478.P11279598861711037921.a, A020900, A020900.P12967914466540950521.a, A331677, A331677.P6402599086706022467.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A063124

/-! ## A063124.P2409381401337469897

`A006093(n+1)+1-A246514(n+1)`
-/

namespace A063124.P2409381401337469897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (1 - A246514 (n + 1))

end

end A063124.P2409381401337469897

namespace A063124

/-- `A006093(n+1)+1-A246514(n+1)` -/
def P2409381401337469897.Spec : Prop :=
  ∀ n, P2409381401337469897.a n = A063124 (n + 1)

theorem P2409381401337469897.correct : P2409381401337469897.Spec := by
  intro n
  simp only [A063124, Nat.add_sub_cancel, A063124.P2409381401337469897.a, A063124.P9970457058300728251.a, A006093, A006093.P2906174024863549003.a, A246514, A246514.P626080667968607195.a, A331677, A331677.P6402599086706022467.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A020900, A020900.P12967914466540950521.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A063124

/-! ## A063124.P4411500438655947583

`A008864(n+1)-(A246514(n+1)+1)`
-/

namespace A063124.P4411500438655947583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - (A246514 (n + 1) + 1)

end

end A063124.P4411500438655947583

namespace A063124

/-- `A008864(n+1)-(A246514(n+1)+1)` -/
def P4411500438655947583.Spec : Prop :=
  ∀ n, P4411500438655947583.a n = A063124 (n + 1)

theorem P4411500438655947583.correct : P4411500438655947583.Spec := by
  intro n
  simp only [A063124, Nat.add_sub_cancel, A063124.P4411500438655947583.a, A063124.P9970457058300728251.a, A008864, A008864.P9177617808325052279.a, A246514, A246514.P626080667968607195.a, A331677, A331677.P6402599086706022467.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A020900, A020900.P12967914466540950521.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A063124

/-! ## A063124.P10614084304745741743

`A040976(n+1)+2-A246514(n+1)`
-/

namespace A063124.P10614084304745741743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + (2 - A246514 (n + 1))

end

end A063124.P10614084304745741743

namespace A063124

/-- `A040976(n+1)+2-A246514(n+1)` -/
def P10614084304745741743.Spec : Prop :=
  ∀ n, P10614084304745741743.a n = A063124 (n + 1)

theorem P10614084304745741743.correct : P10614084304745741743.Spec := by
  intro n
  simp only [A063124, Nat.add_sub_cancel, A063124.P10614084304745741743.a, A063124.P9970457058300728251.a, A040976, A040976.P11599754272797435513.a, A246514, A246514.P626080667968607195.a, A331677, A331677.P6402599086706022467.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A020900, A020900.P12967914466540950521.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A063124

/-! ## A063124.P1619099468562479221

`2*A000040(n+1)-A120632(n+1)`
-/

namespace A063124.P1619099468562479221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A120632 (n + 1)

end

end A063124.P1619099468562479221

namespace A063124

/-- `2*A000040(n+1)-A120632(n+1)` -/
def P1619099468562479221.Spec : Prop :=
  ∀ n, P1619099468562479221.a n = A063124 (n + 1)

theorem P1619099468562479221.correct : P1619099468562479221.Spec := by
  intro n
  simp only [A063124, Nat.add_sub_cancel, A063124.P1619099468562479221.a, A063124.P9970457058300728251.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A120632, A120632.P1454145713146504368.a, A331677, A331677.P6402599086706022467.a, A020900, A020900.P12967914466540950521.a, A040976, A040976.P11599754272797435513.a, A120633, A120633.P6768074309854591197.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A062234, A062234.P8592873382335253705.a, A070046, A070046.P5794988103684771228.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A063124

/-! ## A063124.P11667801190365149723

`A120632(n+1)-A246514(n+1)-A246514(n+1)`
-/

namespace A063124.P11667801190365149723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120632 (n + 1) - A246514 (n + 1) - A246514 (n + 1)

end

end A063124.P11667801190365149723

namespace A063124

/-- `A120632(n+1)-A246514(n+1)-A246514(n+1)` -/
def P11667801190365149723.Spec : Prop :=
  ∀ n, P11667801190365149723.a n = A063124 (n + 1)

theorem P11667801190365149723.correct : P11667801190365149723.Spec := by
  intro n
  simp only [A063124, Nat.add_sub_cancel, A063124.P11667801190365149723.a, A063124.P9970457058300728251.a, A120632, A120632.P1454145713146504368.a, A246514, A246514.P626080667968607195.a, A331677, A331677.P6402599086706022467.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A020900, A020900.P12967914466540950521.a, A040976, A040976.P11599754272797435513.a, A120633, A120633.P6768074309854591197.a, A062234, A062234.P8592873382335253705.a, A070046, A070046.P5794988103684771228.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A063124

/-!
# A063125: Dimension of the space of weight 2n cusp forms for Gamma_0( 57 ).

The programs for A063125, the canonical program `A063125.P15125150727563673764` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063125 has offset 1).

The definition of A063125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063125.P14441524731408982910

`ogf((5+13x+14x^2+7x^3+x^4)/(1-x-x^3+x^4))`
-/

namespace A063125.P14441524731408982910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 13, 14, 7, 1] [1, -1, 0, -1, 1] n

end

end A063125.P14441524731408982910

namespace A063125

/-- `ogf((5+13x+14x^2+7x^3+x^4)/(1-x-x^3+x^4))` -/
def P14441524731408982910.Spec : Prop :=
  ∀ n, P14441524731408982910.a n = A063125 (n + 1)

end A063125

/-! ## A063125.P12053810815963909618

`∑[7-gcd(3, n)]+floor(2/acot(4*n))`
-/

namespace A063125.P12053810815963909618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - (Nat.gcd 3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌊2 / SequenceMachineLib.acot (4 * n : ℝ)⌋

end

end A063125.P12053810815963909618

namespace A063125

/-- `∑[7-gcd(3, n)]+floor(2/acot(4*n))` -/
def P12053810815963909618.Spec : Prop :=
  ∀ n, P12053810815963909618.a n = A063125 (n + 1)

end A063125

/-! ## A063125.P14491576814956530797

`∑[floor(a(n-3))]+4*n` with `a(0)=5, a(1)=9, a(2)=10, a(3)=8, a(4)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A063125.P14491576814956530797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 9, 10, 8, 10] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4 * n

end

end A063125.P14491576814956530797

namespace A063125

/-- `∑[floor(a(n-3))]+4*n` -/
def P14491576814956530797.Spec : Prop :=
  ∀ n, (P14491576814956530797.a n : ℤ) = A063125 (n + 1)

end A063125

/-! ## A063125.P15125150727563673764

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=5, a(1)=18, a(2)=32, a(3)=44, a(4)=58`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063125

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P15125150727563673764.Spec : Prop :=
  ∀ n, P15125150727563673764.a n = A063125 (n + 1)

theorem P15125150727563673764.correct : P15125150727563673764.Spec := by
  intro n
  simp only [A063125, Nat.add_sub_cancel]

end A063125

/-! ## A063125.P886405994680839445

`A063147(n+1)-1`
-/

namespace A063125.P886405994680839445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063147 (n + 1) - 1

end

end A063125.P886405994680839445

namespace A063125

/-- `A063147(n+1)-1` -/
def P886405994680839445.Spec : Prop :=
  ∀ n, P886405994680839445.a n = A063125 (n + 1)

end A063125

/-! ## A063125.P4507533199902010289

`A063135(n+1)+2*n`
-/

namespace A063125.P4507533199902010289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063135 (n + 1) + (2 * n : ℤ)

end

end A063125.P4507533199902010289

namespace A063125

/-- `A063135(n+1)+2*n` -/
def P4507533199902010289.Spec : Prop :=
  ∀ n, P4507533199902010289.a n = A063125 (n + 1)

end A063125

/-! ## A063125.P4677402159052837341

`A063238(n+1)+4*n`
-/

namespace A063125.P4677402159052837341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063238 (n + 1) + (4 * n : ℤ)

end

end A063125.P4677402159052837341

namespace A063125

/-- `A063238(n+1)+4*n` -/
def P4677402159052837341.Spec : Prop :=
  ∀ n, P4677402159052837341.a n = A063125 (n + 1)

end A063125

/-! ## A063125.P7917311061415912507

`A063117(n+1)+4*(n+1)`
-/

namespace A063125.P7917311061415912507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063117 (n + 1) + (4 * (n + 1) : ℤ)

end

end A063125.P7917311061415912507

namespace A063125

/-- `A063117(n+1)+4*(n+1)` -/
def P7917311061415912507.Spec : Prop :=
  ∀ n, P7917311061415912507.a n = A063125 (n + 1)

end A063125

/-! ## A063125.P5126922870392169603

`4*n+A063107(n+1)+2`
-/

namespace A063125.P5126922870392169603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (A063107 (n + 1) + 2)

end

end A063125.P5126922870392169603

namespace A063125

/-- `4*n+A063107(n+1)+2` -/
def P5126922870392169603.Spec : Prop :=
  ∀ n, P5126922870392169603.a n = A063125 (n + 1)

end A063125

/-! ## A063125.P10665345037606005220

`2*n+∑[A000203(a(n²%3))]+4*n` with `a(0)=5, a(1)=7`
-/

namespace A063125.P10665345037606005220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 7] fun n f1 =>
  A000203 (f1 (n ^ 2 % 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j + (4 * n : ℤ))

end

end A063125.P10665345037606005220

namespace A063125

/-- `2*n+∑[A000203(a(n²%3))]+4*n` -/
def P10665345037606005220.Spec : Prop :=
  ∀ n, P10665345037606005220.a n = A063125 (n + 1)

end A063125

/-! ## A063125.P16396112327419783989

`A063107(n+1)+A016825(n)`
-/

namespace A063125.P16396112327419783989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063107 (n + 1) + A016825 n

end

end A063125.P16396112327419783989

namespace A063125

/-- `A063107(n+1)+A016825(n)` -/
def P16396112327419783989.Spec : Prop :=
  ∀ n, P16396112327419783989.a n = A063125 (n + 1)

end A063125

/-! ## A063125.P17119808522008820000

`A063111(n+1)+A016933(n)`
-/

namespace A063125.P17119808522008820000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063111 (n + 1) + A016933 n

end

end A063125.P17119808522008820000

namespace A063125

/-- `A063111(n+1)+A016933(n)` -/
def P17119808522008820000.Spec : Prop :=
  ∀ n, P17119808522008820000.a n = A063125 (n + 1)

end A063125

/-! ## A063125.P8025810257129001276

`A063099(n+1)+A017101(n)`
-/

namespace A063125.P8025810257129001276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063099 (n + 1) + A017101 n

end

end A063125.P8025810257129001276

namespace A063125

/-- `A063099(n+1)+A017101(n)` -/
def P8025810257129001276.Spec : Prop :=
  ∀ n, P8025810257129001276.a n = A063125 (n + 1)

end A063125

/-! ## A063125.P13303062960756963545

`A063089(n+1)+A017113(n)`
-/

namespace A063125.P13303062960756963545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063089 (n + 1) + A017113 n

end

end A063125.P13303062960756963545

namespace A063125

/-- `A063089(n+1)+A017113(n)` -/
def P13303062960756963545.Spec : Prop :=
  ∀ n, P13303062960756963545.a n = A063125 (n + 1)

end A063125

/-! ## A063125.P11292195724133901738

`A063218(n+1)+A017089(n)`
-/

namespace A063125.P11292195724133901738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063218 (n + 1) + A017089 n

end

end A063125.P11292195724133901738

namespace A063125

/-- `A063218(n+1)+A017089(n)` -/
def P11292195724133901738.Spec : Prop :=
  ∀ n, P11292195724133901738.a n = A063125 (n + 1)

end A063125

/-! ## A063125.P14891679606792855975

`A063087(n+1)+A017317(n)`
-/

namespace A063125.P14891679606792855975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063087 (n + 1) + A017317 n

end

end A063125.P14891679606792855975

namespace A063125

/-- `A063087(n+1)+A017317(n)` -/
def P14891679606792855975.Spec : Prop :=
  ∀ n, P14891679606792855975.a n = A063125 (n + 1)

end A063125

/-! ## A063125.P10789617553142329422

`A063200(n+1)+A017569(n)`
-/

namespace A063125.P10789617553142329422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063200 (n + 1) + A017569 n

end

end A063125.P10789617553142329422

namespace A063125

/-- `A063200(n+1)+A017569(n)` -/
def P10789617553142329422.Spec : Prop :=
  ∀ n, P10789617553142329422.a n = A063125 (n + 1)

end A063125

/-! ## A063125.P4240057613393667887

`A063141(n+1)+A052928(n)`
-/

namespace A063125.P4240057613393667887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063141 (n + 1) + A052928 n

end

end A063125.P4240057613393667887

namespace A063125

/-- `A063141(n+1)+A052928(n)` -/
def P4240057613393667887.Spec : Prop :=
  ∀ n, P4240057613393667887.a n = A063125 (n + 1)

end A063125

/-! ## A063125.P6994840598765018158

`A063161(n+1)-A017113(n)`
-/

namespace A063125.P6994840598765018158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063161 (n + 1) - A017113 n

end

end A063125.P6994840598765018158

namespace A063125

/-- `A063161(n+1)-A017113(n)` -/
def P6994840598765018158.Spec : Prop :=
  ∀ n, P6994840598765018158.a n = A063125 (n + 1)

end A063125

/-! ## A063125.P446855924351918028

`A063107(n+1)+A016813(n)+1`
-/

namespace A063125.P446855924351918028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063107 (n + 1) + (A016813 n + 1)

end

end A063125.P446855924351918028

namespace A063125

/-- `A063107(n+1)+A016813(n)+1` -/
def P446855924351918028.Spec : Prop :=
  ∀ n, P446855924351918028.a n = A063125 (n + 1)

end A063125

/-!
# A063126: Dimension of the space of weight 2n cusp forms for Gamma_0( 58 ).

The programs for A063126, the canonical program `A063126.P4004271112281572894` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063126 has offset 1).

The definition of A063126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063126.P4004271112281572894

`a(n-2)+30` with `a(0)=6, a(1)=21, a(2)=35`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063126

/-- `a(n-2)+30` -/
def P4004271112281572894.Spec : Prop :=
  ∀ n, (P4004271112281572894.a n : ℤ) = A063126 (n + 1)

theorem P4004271112281572894.correct : P4004271112281572894.Spec := by
  intro n
  simp only [A063126, Nat.add_sub_cancel]

end A063126

/-! ## A063126.P9865840180614234245

`∑[abs(a(n-2))]` with `a(0)=6, a(1)=15, a(2)=14, a(3)=16`
-/

namespace A063126.P9865840180614234245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 15, 14, 16] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063126.P9865840180614234245

namespace A063126

/-- `∑[abs(a(n-2))]` -/
def P9865840180614234245.Spec : Prop :=
  ∀ n, (P9865840180614234245.a n : ℤ) = A063126 (n + 1)

end A063126

/-! ## A063126.P12428675150544652233

`∑[30-a(n-1)]` with `a(0)=6, a(1)=15, a(2)=14`
-/

namespace A063126.P12428675150544652233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 15, 14] fun n f1 =>
  30 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063126.P12428675150544652233

namespace A063126

/-- `∑[30-a(n-1)]` -/
def P12428675150544652233.Spec : Prop :=
  ∀ n, P12428675150544652233.a n = A063126 (n + 1)

end A063126

/-! ## A063126.P11642294279517328699

`ogf((6+15x+8x^2+x^3)/(1-x-x^2+x^3))`
-/

namespace A063126.P11642294279517328699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 15, 8, 1] [1, -1, -1, 1] n

end

end A063126.P11642294279517328699

namespace A063126

/-- `ogf((6+15x+8x^2+x^3)/(1-x-x^2+x^3))` -/
def P11642294279517328699.Spec : Prop :=
  ∀ n, P11642294279517328699.a n = A063126 (n + 1)

end A063126

/-! ## A063126.P11818736240812166392

`15*n+6-char[2*(n+1)]`
-/

namespace A063126.P11818736240812166392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (15 * n + 6 : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A063126.P11818736240812166392

namespace A063126

/-- `15*n+6-char[2*(n+1)]` -/
def P11818736240812166392.Spec : Prop :=
  ∀ n, P11818736240812166392.a n = A063126 (n + 1)

end A063126

/-! ## A063126.P3526358718833386669

`Δ[8*n²-n-floor(cosh(log((n+1)²)))]`
-/

namespace A063126.P3526358718833386669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n ^ 2 : ℤ) - (n : ℤ) - ⌊Real.cosh (Real.log ((n + 1) ^ 2 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063126.P3526358718833386669

namespace A063126

/-- `Δ[8*n²-n-floor(cosh(log((n+1)²)))]` -/
def P3526358718833386669.Spec : Prop :=
  ∀ n, P3526358718833386669.a n = A063126 (n + 1)

end A063126

/-! ## A063126.P14271300853162205698

`abs(1-A063157(n+1))`
-/

namespace A063126.P14271300853162205698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A063157 (n + 1)|

end

end A063126.P14271300853162205698

namespace A063126

/-- `abs(1-A063157(n+1))` -/
def P14271300853162205698.Spec : Prop :=
  ∀ n, P14271300853162205698.a n = A063126 (n + 1)

end A063126

/-! ## A063126.P11689645062435428988

`Δ[A299289(n)+(1-n)²]`
-/

namespace A063126.P11689645062435428988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299289 n + (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063126.P11689645062435428988

namespace A063126

/-- `Δ[A299289(n)+(1-n)²]` -/
def P11689645062435428988.Spec : Prop :=
  ∀ n, P11689645062435428988.a n = A063126 (n + 1)

end A063126

/-! ## A063126.P15272690673307758550

`A003664(A268044(n+1))`
-/

namespace A063126.P15272690673307758550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003664 (A268044 (n + 1)).toNat

end

end A063126.P15272690673307758550

namespace A063126

/-- `A003664(A268044(n+1))` -/
def P15272690673307758550.Spec : Prop :=
  ∀ n, P15272690673307758550.a n = A063126 (n + 1)

end A063126

/-! ## A063126.P5830781916503373074

`A281746(A063237(n+1))`
-/

namespace A063126.P5830781916503373074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281746 (A063237 (n + 1)).toNat

end

end A063126.P5830781916503373074

namespace A063126

/-- `A281746(A063237(n+1))` -/
def P5830781916503373074.Spec : Prop :=
  ∀ n, P5830781916503373074.a n = A063126 (n + 1)

end A063126

/-! ## A063126.P9216610508635547431

`A008854(Δ[A009946(n)])`
-/

namespace A063126.P9216610508635547431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (f1 (n + 1) - f1 n).toNat

end

end A063126.P9216610508635547431

namespace A063126

/-- `A008854(Δ[A009946(n)])` -/
def P9216610508635547431.Spec : Prop :=
  ∀ n, P9216610508635547431.a n = A063126 (n + 1)

end A063126

/-! ## A063126.P10585079695923000531

`A047250(A063225(2*n+1)+2)`
-/

namespace A063126.P10585079695923000531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047250 (A063225 (2 * n + 1) + 2).toNat

end

end A063126.P10585079695923000531

namespace A063126

/-- `A047250(A063225(2*n+1)+2)` -/
def P10585079695923000531.Spec : Prop :=
  ∀ n, P10585079695923000531.a n = A063126 (n + 1)

end A063126

/-! ## A063126.P9017459852891998612

`A020705(A063118(n+1))`
-/

namespace A063126.P9017459852891998612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A063118 (n + 1)).toNat

end

end A063126.P9017459852891998612

namespace A063126

/-- `A020705(A063118(n+1))` -/
def P9017459852891998612.Spec : Prop :=
  ∀ n, P9017459852891998612.a n = A063126 (n + 1)

end A063126

/-! ## A063126.P2462401562441284408

`A023443(A063157(n+1))`
-/

namespace A063126.P2462401562441284408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A063157 (n + 1)).toNat

end

end A063126.P2462401562441284408

namespace A063126

/-- `A023443(A063157(n+1))` -/
def P2462401562441284408.Spec : Prop :=
  ∀ n, P2462401562441284408.a n = A063126 (n + 1)

end A063126

/-! ## A063126.P9159502503805316929

`A020710(A063118(n+1)-1)`
-/

namespace A063126.P9159502503805316929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (A063118 (n + 1) - 1).toNat

end

end A063126.P9159502503805316929

namespace A063126

/-- `A020710(A063118(n+1)-1)` -/
def P9159502503805316929.Spec : Prop :=
  ∀ n, P9159502503805316929.a n = A063126 (n + 1)

end A063126

/-! ## A063126.P12988922328141499464

`A330881(A063144(n+1))`
-/

namespace A063126.P12988922328141499464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330881 (A063144 (n + 1)).toNat

end

end A063126.P12988922328141499464

namespace A063126

/-- `A330881(A063144(n+1))` -/
def P12988922328141499464.Spec : Prop :=
  ∀ n, P12988922328141499464.a n = A063126 (n + 1)

end A063126

/-! ## A063126.P14223271994903837899

`A330881(A063155(n+1)-1)`
-/

namespace A063126.P14223271994903837899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330881 (A063155 (n + 1) - 1).toNat

end

end A063126.P14223271994903837899

namespace A063126

/-- `A330881(A063155(n+1)-1)` -/
def P14223271994903837899.Spec : Prop :=
  ∀ n, P14223271994903837899.a n = A063126 (n + 1)

end A063126

/-! ## A063126.P12132563562164139291

`A057359(A063150(n+1))`
-/

namespace A063126.P12132563562164139291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057359 (A063150 (n + 1)).toNat

end

end A063126.P12132563562164139291

namespace A063126

/-- `A057359(A063150(n+1))` -/
def P12132563562164139291.Spec : Prop :=
  ∀ n, P12132563562164139291.a n = A063126 (n + 1)

end A063126

/-!
# A063127: Composite numbers which in base 2 contain their largest proper factor as a substring.

The programs for A063127, there is no canonical definition to state claims against.
-/

/-! ## A063127.P10376367301803975512

`∪[A063131(n+1), Δ[A028387(n)]]`
-/

namespace A063127.P10376367301803975512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063131 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063127.P10376367301803975512

/-! ## A063127.P7024470182203989516

`∪[A000217(3*n+4), A193592(A000124(2*(n+2)))]`
-/

namespace A063127.P7024470182203989516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A000124 (2 * (n + 2))).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063127.P7024470182203989516

/-! ## A063127.P6526392879337876691

`lt[A291454(A038509(n+1)), A125768(n+1)]`
-/

namespace A063127.P6526392879337876691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291454 (A038509 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125768 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063127.P6526392879337876691

/-! ## A063127.P11329962113861173466

`lt[A000045(A001222(n+3)), A125768(n+1)]`
-/

namespace A063127.P11329962113861173466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A001222 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125768 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063127.P11329962113861173466

/-! ## A063127.P15188203384160825176

`lt[A291454(A292593(n+3)), A125768(n+1)]`
-/

namespace A063127.P15188203384160825176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291454 (A292593 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125768 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063127.P15188203384160825176

/-! ## A063127.P1162100213617159789

`lt[A083221(n+2), A090616(A065530(n))]`
-/

namespace A063127.P1162100213617159789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083221 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090616 (A065530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063127.P1162100213617159789

/-! ## A063127.P4180015579044545867

`A118759(∪[A118759(2*(n+2)), A168109(n)])`
-/

namespace A063127.P4180015579044545867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168109 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A063127.P4180015579044545867

/-!
# A063128: Dimension of the space of weight 2n cusp forms for Gamma_0( 60 ).

The programs for A063128, the canonical program `A063128.P6589004412541203115` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063128 has offset 1).

The definition of A063128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063128.P6589004412541203115

`a(n-1)+24` with `a(0)=7, a(1)=30`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063128

/-- `a(n-1)+24` -/
def P6589004412541203115.Spec : Prop :=
  ∀ n, (P6589004412541203115.a n : ℤ) = A063128 (n + 1)

theorem P6589004412541203115.correct : P6589004412541203115.Spec := by
  intro n
  simp only [A063128, Nat.add_sub_cancel]

end A063128

/-!
# A063129: Dimension of the space of weight 2n cusp forms for Gamma_0( 61 ).

The programs for A063129, the canonical program `A063129.P5998583005354371378` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063129 has offset 1).

The definition of A063129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063129.P6462641701185278711

`ogf((4+15x+21x^2+16x^3+5x^4+x^5)/(1-x^2-x^3+x^5))`
-/

namespace A063129.P6462641701185278711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 15, 21, 16, 5, 1] [1, 0, -1, -1, 0, 1] n

end

end A063129.P6462641701185278711

namespace A063129

/-- `ogf((4+15x+21x^2+16x^3+5x^4+x^5)/(1-x^2-x^3+x^5))` -/
def P6462641701185278711.Spec : Prop :=
  ∀ n, P6462641701185278711.a n = A063129 (n + 1)

end A063129

/-! ## A063129.P5998583005354371378

`A063135(n+1)-or(1, n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063129

/-- `A063135(n+1)-or(1, n)` -/
def P5998583005354371378.Spec : Prop :=
  ∀ n, P5998583005354371378.a n = A063129 (n + 1)

theorem P5998583005354371378.correct : P5998583005354371378.Spec := by
  intro n
  simp only [A063129, Nat.add_sub_cancel]

end A063129

/-! ## A063129.P4138137545694182144

`A063141(n+1)-Δ[n²]`
-/

namespace A063129.P4138137545694182144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063141 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063129.P4138137545694182144

namespace A063129

/-- `A063141(n+1)-Δ[n²]` -/
def P4138137545694182144.Spec : Prop :=
  ∀ n, P4138137545694182144.a n = A063129 (n + 1)

end A063129

/-! ## A063129.P4197806222588443977

`A063238(n+1)-or(1, -n)`
-/

namespace A063129.P4197806222588443977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063238 (n + 1) - Int.lor 1 (-(n : ℤ))

end

end A063129.P4197806222588443977

namespace A063129

/-- `A063238(n+1)-or(1, -n)` -/
def P4197806222588443977.Spec : Prop :=
  ∀ n, P4197806222588443977.a n = A063129 (n + 1)

end A063129

/-! ## A063129.P7528073419610541653

`4*n+A063105(n+1)+2`
-/

namespace A063129.P7528073419610541653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (A063105 (n + 1) + 2)

end

end A063129.P7528073419610541653

namespace A063129

/-- `4*n+A063105(n+1)+2` -/
def P7528073419610541653.Spec : Prop :=
  ∀ n, P7528073419610541653.a n = A063129 (n + 1)

end A063129

/-! ## A063129.P17013664331456708446

`A063081(n+1)+8*n+4`
-/

namespace A063129.P17013664331456708446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063081 (n + 1) + (8 * n + 4 : ℤ)

end

end A063129.P17013664331456708446

namespace A063129

/-- `A063081(n+1)+8*n+4` -/
def P17013664331456708446.Spec : Prop :=
  ∀ n, P17013664331456708446.a n = A063129 (n + 1)

end A063129

/-! ## A063129.P4731593179784622905

`A063107(n+1)+or(1, n+1)`
-/

namespace A063129.P4731593179784622905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063107 (n + 1) + (Nat.lor 1 (n + 1) : ℤ)

end

end A063129.P4731593179784622905

namespace A063129

/-- `A063107(n+1)+or(1, n+1)` -/
def P4731593179784622905.Spec : Prop :=
  ∀ n, P4731593179784622905.a n = A063129 (n + 1)

end A063129

/-! ## A063129.P15993155858983286571

`A063165(n+1)-3*(2*n+1)`
-/

namespace A063129.P15993155858983286571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063165 (n + 1) - (3 * (2 * n + 1) : ℤ)

end

end A063129.P15993155858983286571

namespace A063129

/-- `A063165(n+1)-3*(2*n+1)` -/
def P15993155858983286571.Spec : Prop :=
  ∀ n, P15993155858983286571.a n = A063129 (n + 1)

end A063129

/-! ## A063129.P12917764792833791541

`A063105(n+1)+A016825(n)`
-/

namespace A063129.P12917764792833791541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063105 (n + 1) + A016825 n

end

end A063129.P12917764792833791541

namespace A063129

/-- `A063105(n+1)+A016825(n)` -/
def P12917764792833791541.Spec : Prop :=
  ∀ n, P12917764792833791541.a n = A063129 (n + 1)

end A063129

/-! ## A063129.P10200679744656822638

`A063195(n+1)+A017317(n)`
-/

namespace A063129.P10200679744656822638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (n + 1) + A017317 n

end

end A063129.P10200679744656822638

namespace A063129

/-- `A063195(n+1)+A017317(n)` -/
def P10200679744656822638.Spec : Prop :=
  ∀ n, P10200679744656822638.a n = A063129 (n + 1)

end A063129

/-! ## A063129.P1468516021923281845

`A017581(n)-A063199(n+1)`
-/

namespace A063129.P1468516021923281845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 n - A063199 (n + 1)

end

end A063129.P1468516021923281845

namespace A063129

/-- `A017581(n)-A063199(n+1)` -/
def P1468516021923281845.Spec : Prop :=
  ∀ n, P1468516021923281845.a n = A063129 (n + 1)

end A063129

/-! ## A063129.P9113991058827087228

`A063135(n+1)-A109613(n)`
-/

namespace A063129.P9113991058827087228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063135 (n + 1) - A109613 n

end

end A063129.P9113991058827087228

namespace A063129

/-- `A063135(n+1)-A109613(n)` -/
def P9113991058827087228.Spec : Prop :=
  ∀ n, P9113991058827087228.a n = A063129 (n + 1)

end A063129

/-! ## A063129.P8535204474034736014

`A348845(n)-A063235(n+1)`
-/

namespace A063129.P8535204474034736014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n - A063235 (n + 1)

end

end A063129.P8535204474034736014

namespace A063129

/-- `A348845(n)-A063235(n+1)` -/
def P8535204474034736014.Spec : Prop :=
  ∀ n, P8535204474034736014.a n = A063129 (n + 1)

end A063129

/-! ## A063129.P14952628357405392492

`A063111(n+1)+A007310(n+1)`
-/

namespace A063129.P14952628357405392492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063111 (n + 1) + A007310 (n + 1)

end

end A063129.P14952628357405392492

namespace A063129

/-- `A063111(n+1)+A007310(n+1)` -/
def P14952628357405392492.Spec : Prop :=
  ∀ n, P14952628357405392492.a n = A063129 (n + 1)

end A063129

/-! ## A063129.P11100557643257449026

`A063195(n+1)+A017305(n)+1`
-/

namespace A063129.P11100557643257449026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (n + 1) + (A017305 n + 1)

end

end A063129.P11100557643257449026

namespace A063129

/-- `A063195(n+1)+A017305(n)+1` -/
def P11100557643257449026.Spec : Prop :=
  ∀ n, P11100557643257449026.a n = A063129 (n + 1)

end A063129

/-! ## A063129.P1176066455852035191

`A063229(n+1)+A047241(n+1)`
-/

namespace A063129.P1176066455852035191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063229 (n + 1) + A047241 (n + 1)

end

end A063129.P1176066455852035191

namespace A063129

/-- `A063229(n+1)+A047241(n+1)` -/
def P1176066455852035191.Spec : Prop :=
  ∀ n, P1176066455852035191.a n = A063129 (n + 1)

end A063129

/-! ## A063129.P14136500212623156525

`A063244(n+1)+A047623(n+1)`
-/

namespace A063129.P14136500212623156525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063244 (n + 1) + A047623 (n + 1)

end

end A063129.P14136500212623156525

namespace A063129

/-- `A063244(n+1)+A047623(n+1)` -/
def P14136500212623156525.Spec : Prop :=
  ∀ n, P14136500212623156525.a n = A063129 (n + 1)

end A063129

/-! ## A063129.P1882146584721315956

`A063213(n+1)+A063109(n+1)`
-/

namespace A063129.P1882146584721315956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063213 (n + 1) + A063109 (n + 1)

end

end A063129.P1882146584721315956

namespace A063129

/-- `A063213(n+1)+A063109(n+1)` -/
def P1882146584721315956.Spec : Prop :=
  ∀ n, P1882146584721315956.a n = A063129 (n + 1)

end A063129

/-! ## A063129.P7075636733720270010

`A063224(n+1)+A063121(n+1)`
-/

namespace A063129.P7075636733720270010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063224 (n + 1) + A063121 (n + 1)

end

end A063129.P7075636733720270010

namespace A063129

/-- `A063224(n+1)+A063121(n+1)` -/
def P7075636733720270010.Spec : Prop :=
  ∀ n, P7075636733720270010.a n = A063129 (n + 1)

end A063129

/-! ## A063129.P14688700517677572856

`A090772(n+1)+A063099(n+1)`
-/

namespace A063129.P14688700517677572856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090772 (n + 1) + A063099 (n + 1)

end

end A063129.P14688700517677572856

namespace A063129

/-- `A090772(n+1)+A063099(n+1)` -/
def P14688700517677572856.Spec : Prop :=
  ∀ n, P14688700517677572856.a n = A063129 (n + 1)

end A063129

/-!
# A063130: Dimension of the space of weight 2n cusp forms for Gamma_0( 62 ).

The programs for A063130, the canonical program `A063130.P16173570973012781931` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063130 has offset 1).

The definition of A063130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063130.P16173570973012781931

`a(n-1)+16` with `a(0)=7, a(1)=22`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063130

/-- `a(n-1)+16` -/
def P16173570973012781931.Spec : Prop :=
  ∀ n, (P16173570973012781931.a n : ℤ) = A063130 (n + 1)

theorem P16173570973012781931.correct : P16173570973012781931.Spec := by
  intro n
  simp only [A063130, Nat.add_sub_cancel]

end A063130

/-!
# A063131: Odd composite numbers which in base 2 contain their largest proper factor as a substring of digits.

The programs for A063131, there is no canonical definition to state claims against.
-/

/-! ## A063131.P10574888005074939100

`∩[2*n+1, A063127(n+1)]`
-/

namespace A063131.P10574888005074939100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063131.P10574888005074939100

/-! ## A063131.P5837959977001933457

`∩[A063127(n+1), A004273(n)]`
-/

namespace A063131.P5837959977001933457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063131.P5837959977001933457

/-! ## A063131.P5032022584306268225

`∩[A063127(n+1), A005843(n)+1]`
-/

namespace A063131.P5032022584306268225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063131.P5032022584306268225

/-! ## A063131.P3498847431452335311

`∩[A063127(n+1), A038509(n+1)]`
-/

namespace A063131.P3498847431452335311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063131.P3498847431452335311

/-!
# A063132: Composite numbers not divisible by 2 or 3 which in base 3 contain their largest proper factor as a substring.

The programs for A063132, there is no canonical definition to state claims against.
-/

/-! ## A063132.P4786393733017751076

`filter[A063139(n+1), A162289(#)]`
-/

namespace A063132.P4786393733017751076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A063132.P4786393733017751076

/-! ## A063132.P1789298978717902835

`filter[A063139(n+1), A187074(#)]`
-/

namespace A063132.P1789298978717902835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A063132.P1789298978717902835

/-! ## A063132.P1074718838406376494

`filter[A063139(n+1), A320106(#)]`
-/

namespace A063132.P1074718838406376494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A063132.P1074718838406376494

/-! ## A063132.P11650226264459241400

`filter[A063139(n+1), A354354(#)]`
-/

namespace A063132.P11650226264459241400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A063132.P11650226264459241400

/-! ## A063132.P9567427209036951707

`filter[A063139(n+1), A359170(#)]`
-/

namespace A063132.P9567427209036951707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359170 (f1 j).toNat = 1) n)

end

end A063132.P9567427209036951707

/-!
# A063133: Dimension of the space of weight 2n cusp forms for Gamma_0( 65 ).

The programs for A063133, the canonical program `A063133.P647944802669939182` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063133 has offset 1).

The definition of A063133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063133.P647944802669939182

`a(n-2)+28` with `a(0)=5, a(1)=20, a(2)=32`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063133

/-- `a(n-2)+28` -/
def P647944802669939182.Spec : Prop :=
  ∀ n, (P647944802669939182.a n : ℤ) = A063133 (n + 1)

theorem P647944802669939182.correct : P647944802669939182.Spec := by
  intro n
  simp only [A063133, Nat.add_sub_cancel]

end A063133

/-! ## A063133.P3957017262689757363

`∑[abs(a(n-2))]` with `a(0)=5, a(1)=15, a(2)=12, a(3)=16`
-/

namespace A063133.P3957017262689757363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 15, 12, 16] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063133.P3957017262689757363

namespace A063133

/-- `∑[abs(a(n-2))]` -/
def P3957017262689757363.Spec : Prop :=
  ∀ n, (P3957017262689757363.a n : ℤ) = A063133 (n + 1)

end A063133

/-! ## A063133.P10353083346100141047

`∑[floor(a(n-2))]` with `a(0)=5, a(1)=15, a(2)=12, a(3)=16`

`floor` is left out, it is the identity on integers.
-/

namespace A063133.P10353083346100141047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 15, 12, 16] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063133.P10353083346100141047

namespace A063133

/-- `∑[floor(a(n-2))]` -/
def P10353083346100141047.Spec : Prop :=
  ∀ n, (P10353083346100141047.a n : ℤ) = A063133 (n + 1)

end A063133

/-! ## A063133.P2182824431177336344

`∑[ceil(a(n-2))]` with `a(0)=5, a(1)=15, a(2)=12, a(3)=16`

`ceil` is left out, it is the identity on integers.
-/

namespace A063133.P2182824431177336344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 15, 12, 16] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063133.P2182824431177336344

namespace A063133

/-- `∑[ceil(a(n-2))]` -/
def P2182824431177336344.Spec : Prop :=
  ∀ n, (P2182824431177336344.a n : ℤ) = A063133 (n + 1)

end A063133

/-! ## A063133.P4601920252530721790

`∑[round(a(n-2))]` with `a(0)=5, a(1)=15, a(2)=12, a(3)=16`

`round` is left out, it is the identity on integers.
-/

namespace A063133.P4601920252530721790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 15, 12, 16] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063133.P4601920252530721790

namespace A063133

/-- `∑[round(a(n-2))]` -/
def P4601920252530721790.Spec : Prop :=
  ∀ n, (P4601920252530721790.a n : ℤ) = A063133 (n + 1)

end A063133

/-! ## A063133.P15656392345892152410

`ogf((5+15x+7x^2+x^3)/(1-x-x^2+x^3))`
-/

namespace A063133.P15656392345892152410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 15, 7, 1] [1, -1, -1, 1] n

end

end A063133.P15656392345892152410

namespace A063133

/-- `ogf((5+15x+7x^2+x^3)/(1-x-x^2+x^3))` -/
def P15656392345892152410.Spec : Prop :=
  ∀ n, P15656392345892152410.a n = A063133 (n + 1)

end A063133

/-! ## A063133.P8493605267662982750

`A063232(n+1)+4*n`
-/

namespace A063133.P8493605267662982750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063232 (n + 1) + (4 * n : ℤ)

end

end A063133.P8493605267662982750

namespace A063133

/-- `A063232(n+1)+4*n` -/
def P8493605267662982750.Spec : Prop :=
  ∀ n, P8493605267662982750.a n = A063133 (n + 1)

end A063133

/-! ## A063133.P10598744760875142430

`∑[A000005(10*a(n-1))]` with `a(0)=5, a(1)=15`
-/

namespace A063133.P10598744760875142430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 15] fun n f1 =>
  A000005 (10 * f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063133.P10598744760875142430

namespace A063133

/-- `∑[A000005(10*a(n-1))]` -/
def P10598744760875142430.Spec : Prop :=
  ∀ n, P10598744760875142430.a n = A063133 (n + 1)

end A063133

/-! ## A063133.P16604060510037079269

`A154609(n)+A014681(n)`
-/

namespace A063133.P16604060510037079269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n + A014681 n

end

end A063133.P16604060510037079269

namespace A063133

/-- `A154609(n)+A014681(n)` -/
def P16604060510037079269.Spec : Prop :=
  ∀ n, P16604060510037079269.a n = A063133 (n + 1)

end A063133

/-! ## A063133.P5674823485651855206

`A063120(n+1)+A010673(n)`
-/

namespace A063133.P5674823485651855206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063120 (n + 1) + A010673 n

end

end A063133.P5674823485651855206

namespace A063133

/-- `A063120(n+1)+A010673(n)` -/
def P5674823485651855206.Spec : Prop :=
  ∀ n, P5674823485651855206.a n = A063133 (n + 1)

end A063133

/-! ## A063133.P8051728462304796667

`A063221(n+1)+A017089(n)`
-/

namespace A063133.P8051728462304796667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063221 (n + 1) + A017089 n

end

end A063133.P8051728462304796667

namespace A063133

/-- `A063221(n+1)+A017089(n)` -/
def P8051728462304796667.Spec : Prop :=
  ∀ n, P8051728462304796667.a n = A063133 (n + 1)

end A063133

/-! ## A063133.P16097355635528196777

`A127547(n)+A065190(n+1)`
-/

namespace A063133.P16097355635528196777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n + A065190 (n + 1)

end

end A063133.P16097355635528196777

namespace A063133

/-- `A127547(n)+A065190(n+1)` -/
def P16097355635528196777.Spec : Prop :=
  ∀ n, P16097355635528196777.a n = A063133 (n + 1)

end A063133

/-! ## A063133.P10032863964230371198

`A063153(n+1)-A016825(n)`
-/

namespace A063133.P10032863964230371198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063153 (n + 1) - A016825 n

end

end A063133.P10032863964230371198

namespace A063133

/-- `A063153(n+1)-A016825(n)` -/
def P10032863964230371198.Spec : Prop :=
  ∀ n, P10032863964230371198.a n = A063133 (n + 1)

end A063133

/-! ## A063133.P4468099139339367337

`A063126(n+1)-A109613(n)`
-/

namespace A063133.P4468099139339367337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063126 (n + 1) - A109613 n

end

end A063133.P4468099139339367337

namespace A063133

/-- `A063126(n+1)-A109613(n)` -/
def P4468099139339367337.Spec : Prop :=
  ∀ n, P4468099139339367337.a n = A063133 (n + 1)

end A063133

/-! ## A063133.P17113278054891555594

`A090772(n+1)+A063102(n+1)`
-/

namespace A063133.P17113278054891555594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090772 (n + 1) + A063102 (n + 1)

end

end A063133.P17113278054891555594

namespace A063133

/-- `A090772(n+1)+A063102(n+1)` -/
def P17113278054891555594.Spec : Prop :=
  ∀ n, P17113278054891555594.a n = A063133 (n + 1)

end A063133

/-! ## A063133.P15990138382678052124

`A113803(n+1)+A063094(n+1)`
-/

namespace A063133.P15990138382678052124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113803 (n + 1) + A063094 (n + 1)

end

end A063133.P15990138382678052124

namespace A063133

/-- `A113803(n+1)+A063094(n+1)` -/
def P15990138382678052124.Spec : Prop :=
  ∀ n, P15990138382678052124.a n = A063133 (n + 1)

end A063133

/-! ## A063133.P8568752201076552010

`A131229(n+1)+A063121(n+1)`
-/

namespace A063133.P8568752201076552010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131229 (n + 1) + A063121 (n + 1)

end

end A063133.P8568752201076552010

namespace A063133

/-- `A131229(n+1)+A063121(n+1)` -/
def P8568752201076552010.Spec : Prop :=
  ∀ n, P8568752201076552010.a n = A063133 (n + 1)

end A063133

/-! ## A063133.P11477727943173676987

`A063136(n+1)-A047463(n+1)`
-/

namespace A063133.P11477727943173676987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063136 (n + 1) - A047463 (n + 1)

end

end A063133.P11477727943173676987

namespace A063133

/-- `A063136(n+1)-A047463(n+1)` -/
def P11477727943173676987.Spec : Prop :=
  ∀ n, P11477727943173676987.a n = A063133 (n + 1)

end A063133

/-! ## A063133.P10300244565384149343

`A063142(n+1)-A063226(n+1)`
-/

namespace A063133.P10300244565384149343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063142 (n + 1) - A063226 (n + 1)

end

end A063133.P10300244565384149343

namespace A063133

/-- `A063142(n+1)-A063226(n+1)` -/
def P10300244565384149343.Spec : Prop :=
  ∀ n, P10300244565384149343.a n = A063133 (n + 1)

end A063133

/-! ## A063133.P3137329975259592875

`A063155(n+1)-A092259(n+1)`
-/

namespace A063133.P3137329975259592875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063155 (n + 1) - A092259 (n + 1)

end

end A063133.P3137329975259592875

namespace A063133

/-- `A063155(n+1)-A092259(n+1)` -/
def P3137329975259592875.Spec : Prop :=
  ∀ n, P3137329975259592875.a n = A063133 (n + 1)

end A063133

/-!
# A063134: Dimension of the space of weight 2n cusp forms for Gamma_0( 66 ).

The programs for A063134, the canonical program `A063134.P9836581716311842226` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063134 has offset 1).

The definition of A063134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063134.P9836581716311842226

`a(n-1)+24` with `a(0)=9, a(1)=32`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063134

/-- `a(n-1)+24` -/
def P9836581716311842226.Spec : Prop :=
  ∀ n, (P9836581716311842226.a n : ℤ) = A063134 (n + 1)

theorem P9836581716311842226.correct : P9836581716311842226.Spec := by
  intro n
  simp only [A063134, Nat.add_sub_cancel]

end A063134

/-!
# A063135: Dimension of the space of weight 2n cusp forms for Gamma_0( 67 ).

The programs for A063135, the canonical program `A063135.P1727783588593795874` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063135 has offset 1).

The definition of A063135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063135.P16709385634371675292

`ogf((5+11x+12x^2+5x^3+x^4)/(1-x-x^3+x^4))`
-/

namespace A063135.P16709385634371675292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 11, 12, 5, 1] [1, -1, 0, -1, 1] n

end

end A063135.P16709385634371675292

namespace A063135

/-- `ogf((5+11x+12x^2+5x^3+x^4)/(1-x-x^3+x^4))` -/
def P16709385634371675292.Spec : Prop :=
  ∀ n, P16709385634371675292.a n = A063135 (n + 1)

end A063135

/-! ## A063135.P7939427031768041596

`∑[7-gcd(3, n)]+floor(2/acot(3*n))`
-/

namespace A063135.P7939427031768041596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - (Nat.gcd 3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌊2 / SequenceMachineLib.acot (3 * n : ℝ)⌋

end

end A063135.P7939427031768041596

namespace A063135

/-- `∑[7-gcd(3, n)]+floor(2/acot(3*n))` -/
def P7939427031768041596.Spec : Prop :=
  ∀ n, P7939427031768041596.a n = A063135 (n + 1)

end A063135

/-! ## A063135.P12201114418694169592

`∑[floor(a(n-3))]+2*n` with `a(0)=5, a(1)=9, a(2)=10, a(3)=8, a(4)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A063135.P12201114418694169592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 9, 10, 8, 10] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * n

end

end A063135.P12201114418694169592

namespace A063135

/-- `∑[floor(a(n-3))]+2*n` -/
def P12201114418694169592.Spec : Prop :=
  ∀ n, (P12201114418694169592.a n : ℤ) = A063135 (n + 1)

end A063135

/-! ## A063135.P15508551784684066668

`∑[floor(a(n-3))]+n+n` with `a(0)=5, a(1)=9, a(2)=10, a(3)=8, a(4)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A063135.P15508551784684066668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 9, 10, 8, 10] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n + n

end

end A063135.P15508551784684066668

namespace A063135

/-- `∑[floor(a(n-3))]+n+n` -/
def P15508551784684066668.Spec : Prop :=
  ∀ n, (P15508551784684066668.a n : ℤ) = A063135 (n + 1)

end A063135

/-! ## A063135.P1727783588593795874

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=5, a(1)=16, a(2)=28, a(3)=38, a(4)=50`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063135

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P1727783588593795874.Spec : Prop :=
  ∀ n, P1727783588593795874.a n = A063135 (n + 1)

theorem P1727783588593795874.correct : P1727783588593795874.Spec := by
  intro n
  simp only [A063135, Nat.add_sub_cancel]

end A063135

/-! ## A063135.P10599905607284956943

`A063238(n+1)+2*n`
-/

namespace A063135.P10599905607284956943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063238 (n + 1) + (2 * n : ℤ)

end

end A063135.P10599905607284956943

namespace A063135

/-- `A063238(n+1)+2*n` -/
def P10599905607284956943.Spec : Prop :=
  ∀ n, P10599905607284956943.a n = A063135 (n + 1)

end A063135

/-! ## A063135.P13571545752296646572

`A063125(n+1)-2*n`
-/

namespace A063135.P13571545752296646572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063125 (n + 1) - (2 * n : ℤ)

end

end A063135.P13571545752296646572

namespace A063135

/-- `A063125(n+1)-2*n` -/
def P13571545752296646572.Spec : Prop :=
  ∀ n, P13571545752296646572.a n = A063135 (n + 1)

end A063135

/-! ## A063135.P7522648129033364280

`A063129(n+1)+or(1, n)`
-/

namespace A063135.P7522648129033364280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063129 (n + 1) + (Nat.lor 1 n : ℤ)

end

end A063135.P7522648129033364280

namespace A063135

/-- `A063129(n+1)+or(1, n)` -/
def P7522648129033364280.Spec : Prop :=
  ∀ n, P7522648129033364280.a n = A063135 (n + 1)

theorem P7522648129033364280.correct : P7522648129033364280.Spec := by
  intro n
  simp only [A063135, Nat.add_sub_cancel, A063135.P7522648129033364280.a, A063135.P1727783588593795874.a, A063129, A063129.P5998583005354371378.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063135

/-! ## A063135.P16767937499202345776

`A063147(n+1)-Δ[n²]`
-/

namespace A063135.P16767937499202345776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063147 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063135.P16767937499202345776

namespace A063135

/-- `A063147(n+1)-Δ[n²]` -/
def P16767937499202345776.Spec : Prop :=
  ∀ n, P16767937499202345776.a n = A063135 (n + 1)

end A063135

/-! ## A063135.P477700358051992478

`A008458(n)+∑[7-gcd(3, n)]`
-/

namespace A063135.P477700358051992478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - (Nat.gcd 3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063135.P477700358051992478

namespace A063135

/-- `A008458(n)+∑[7-gcd(3, n)]` -/
def P477700358051992478.Spec : Prop :=
  ∀ n, P477700358051992478.a n = A063135 (n + 1)

end A063135

/-! ## A063135.P14791566131412881108

`A063107(n+1)+2*(n+1)`
-/

namespace A063135.P14791566131412881108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063107 (n + 1) + (2 * (n + 1) : ℤ)

end

end A063135.P14791566131412881108

namespace A063135

/-- `A063107(n+1)+2*(n+1)` -/
def P14791566131412881108.Spec : Prop :=
  ∀ n, P14791566131412881108.a n = A063135 (n + 1)

end A063135

/-! ## A063135.P14844442835606621669

`∑[A000203(a(n²%3))]+4*n` with `a(0)=5, a(1)=7`
-/

namespace A063135.P14844442835606621669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 7] fun n f1 =>
  A000203 (f1 (n ^ 2 % 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (4 * n : ℤ)

end

end A063135.P14844442835606621669

namespace A063135

/-- `∑[A000203(a(n²%3))]+4*n` -/
def P14844442835606621669.Spec : Prop :=
  ∀ n, P14844442835606621669.a n = A063135 (n + 1)

end A063135

/-! ## A063135.P13371366828463844951

`A063111(n+1)+A016825(n)`
-/

namespace A063135.P13371366828463844951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063111 (n + 1) + A016825 n

end

end A063135.P13371366828463844951

namespace A063135

/-- `A063111(n+1)+A016825(n)` -/
def P13371366828463844951.Spec : Prop :=
  ∀ n, P13371366828463844951.a n = A063135 (n + 1)

end A063135

/-! ## A063135.P15090474810645994593

`A063099(n+1)+A016945(n)`
-/

namespace A063135.P15090474810645994593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063099 (n + 1) + A016945 n

end

end A063135.P15090474810645994593

namespace A063135

/-- `A063099(n+1)+A016945(n)` -/
def P15090474810645994593.Spec : Prop :=
  ∀ n, P15090474810645994593.a n = A063135 (n + 1)

end A063135

/-! ## A063135.P15249714754243044046

`A063089(n+1)+A016957(n)`
-/

namespace A063135.P15249714754243044046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063089 (n + 1) + A016957 n

end

end A063135.P15249714754243044046

namespace A063135

/-- `A063089(n+1)+A016957(n)` -/
def P15249714754243044046.Spec : Prop :=
  ∀ n, P15249714754243044046.a n = A063135 (n + 1)

end A063135

/-! ## A063135.P5987012784770203286

`A063218(n+1)+A016933(n)`
-/

namespace A063135.P5987012784770203286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063218 (n + 1) + A016933 n

end

end A063135.P5987012784770203286

namespace A063135

/-- `A063218(n+1)+A016933(n)` -/
def P5987012784770203286.Spec : Prop :=
  ∀ n, P5987012784770203286.a n = A063135 (n + 1)

end A063135

/-! ## A063135.P13799185733473000981

`A063087(n+1)+A017113(n)`
-/

namespace A063135.P13799185733473000981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063087 (n + 1) + A017113 n

end

end A063135.P13799185733473000981

namespace A063135

/-- `A063087(n+1)+A017113(n)` -/
def P13799185733473000981.Spec : Prop :=
  ∀ n, P13799185733473000981.a n = A063135 (n + 1)

end A063135

/-! ## A063135.P13757921730207630440

`A063200(n+1)+A017317(n)`
-/

namespace A063135.P13757921730207630440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063200 (n + 1) + A017317 n

end

end A063135.P13757921730207630440

namespace A063135

/-- `A063200(n+1)+A017317(n)` -/
def P13757921730207630440.Spec : Prop :=
  ∀ n, P13757921730207630440.a n = A063135 (n + 1)

end A063135

/-! ## A063135.P5271486411036137975

`A109613(n)+A063129(n+1)`
-/

namespace A063135.P5271486411036137975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + A063129 (n + 1)

end

end A063135.P5271486411036137975

namespace A063135

/-- `A109613(n)+A063129(n+1)` -/
def P5271486411036137975.Spec : Prop :=
  ∀ n, P5271486411036137975.a n = A063135 (n + 1)

end A063135

/-! ## A063135.P1193507615065176002

`A063161(n+1)-A017317(n)`
-/

namespace A063135.P1193507615065176002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063161 (n + 1) - A017317 n

end

end A063135.P1193507615065176002

namespace A063135

/-- `A063161(n+1)-A017317(n)` -/
def P1193507615065176002.Spec : Prop :=
  ∀ n, P1193507615065176002.a n = A063135 (n + 1)

end A063135

/-!
# A063136: Dimension of the space of weight 2n cusp forms for Gamma_0( 68 ).

The programs for A063136, the canonical program `A063136.P1827404066257966904` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063136 has offset 1).

The definition of A063136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063136.P1827404066257966904

`18+a(n-1)` with `a(0)=7, a(1)=24`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063136

/-- `18+a(n-1)` -/
def P1827404066257966904.Spec : Prop :=
  ∀ n, (P1827404066257966904.a n : ℤ) = A063136 (n + 1)

theorem P1827404066257966904.correct : P1827404066257966904.Spec := by
  intro n
  simp only [A063136, Nat.add_sub_cancel]

end A063136

/-!
# A063138: Composite numbers not divisible by 2, 3, 5 or 7 which in base 2 contain their largest proper factor as a substring.

The programs for A063138, there is no canonical definition to state claims against.
-/

/-! ## A063138.P5139027839804918783

`∩[A038511(n+1), A063131(n+1)]`
-/

namespace A063138.P5139027839804918783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063138.P5139027839804918783

/-! ## A063138.P6851781591629137503

`∩[A063131(n+1), A271630(n+1)]`
-/

namespace A063138.P6851781591629137503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063138.P6851781591629137503

/-! ## A063138.P15885492837527267967

`∩[A063131(n+1), A133630(n+1)]`
-/

namespace A063138.P15885492837527267967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063138.P15885492837527267967

/-! ## A063138.P2387046916598153286

`filter[A063131(n+3), A383287(#)]`
-/

namespace A063138.P2387046916598153286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063131 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383287 (f1 j).toNat = 1) n)

end

end A063138.P2387046916598153286

/-! ## A063138.P3310514947094322053

`filter[A063137(n+2), A341591(#)]`
-/

namespace A063138.P3310514947094322053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063137 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341591 (f1 j).toNat = 1) n)

end

end A063138.P3310514947094322053

/-!
# A063139: Composite numbers which in base 3 contain their largest proper factor as a substring.

The programs for A063139, there is no canonical definition to state claims against.
-/

/-! ## A063139.P2590948640596967163

`lt[A200976(n+10), A200976(n)]`
-/

namespace A063139.P2590948640596967163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200976 (n + 10)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200976 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063139.P2590948640596967163

/-! ## A063139.P11298427317758010362

`lt[A328673(n+10), A328673(n)]`
-/

namespace A063139.P11298427317758010362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328673 (n + 10)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328673 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063139.P11298427317758010362

/-! ## A063139.P8624166415171480891

`∩[A372439(n+1), A389917(n+1)]`
-/

namespace A063139.P8624166415171480891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063139.P8624166415171480891

/-! ## A063139.P14812807921762276043

`∩[A114886(n+1), A389917(n+1)]`
-/

namespace A063139.P14812807921762276043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063139.P14812807921762276043

/-!
# A063140: Dimension of the space of weight 2n cusp forms for Gamma_0( 72 ).

The programs for A063140, the canonical program `A063140.P4322434646653930374` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063140 has offset 1).

The definition of A063140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063140.P4322434646653930374

`a(n-1)+24` with `a(0)=5, a(1)=28`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063140

/-- `a(n-1)+24` -/
def P4322434646653930374.Spec : Prop :=
  ∀ n, (P4322434646653930374.a n : ℤ) = A063140 (n + 1)

theorem P4322434646653930374.correct : P4322434646653930374.Spec := by
  intro n
  simp only [A063140, Nat.add_sub_cancel]

end A063140

/-!
# A063141: Dimension of the space of weight 2n cusp forms for Gamma_0( 73 ).

The programs for A063141, the canonical program `A063141.P10391436314524251443` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063141 has offset 1).

The definition of A063141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063141.P4603838334941404720

`ogf((5+18x+25x^2+19x^3+6x^4+x^5)/(1-x^2-x^3+x^5))`
-/

namespace A063141.P4603838334941404720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 18, 25, 19, 6, 1] [1, 0, -1, -1, 0, 1] n

end

end A063141.P4603838334941404720

namespace A063141

/-- `ogf((5+18x+25x^2+19x^3+6x^4+x^5)/(1-x^2-x^3+x^5))` -/
def P4603838334941404720.Spec : Prop :=
  ∀ n, P4603838334941404720.a n = A063141 (n + 1)

end A063141

/-! ## A063141.P10391436314524251443

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=5, a(1)=18, a(2)=30, a(3)=42, a(4)=54, a(5)=68`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063141

/-- `a(n-2)+a(n-3)-a(n-5)` -/
def P10391436314524251443.Spec : Prop :=
  ∀ n, P10391436314524251443.a n = A063141 (n + 1)

theorem P10391436314524251443.correct : P10391436314524251443.Spec := by
  intro n
  simp only [A063141, Nat.add_sub_cancel]

end A063141

/-! ## A063141.P16413702464668005589

`A063147(n+1)-or(1, n)`
-/

namespace A063141.P16413702464668005589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063147 (n + 1) - (Nat.lor 1 n : ℤ)

end

end A063141.P16413702464668005589

namespace A063141

/-- `A063147(n+1)-or(1, n)` -/
def P16413702464668005589.Spec : Prop :=
  ∀ n, P16413702464668005589.a n = A063141 (n + 1)

end A063141

/-! ## A063141.P5449923123638618140

`A063129(n+1)+Δ[n²]`
-/

namespace A063141.P5449923123638618140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063129 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063141.P5449923123638618140

namespace A063141

/-- `A063129(n+1)+Δ[n²]` -/
def P5449923123638618140.Spec : Prop :=
  ∀ n, P5449923123638618140.a n = A063141 (n + 1)

end A063141

/-! ## A063141.P4151561596873248196

`A063165(n+1)-(4*n+2)`
-/

namespace A063141.P4151561596873248196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063165 (n + 1) - (4 * n + 2 : ℤ)

end

end A063141.P4151561596873248196

namespace A063141

/-- `A063165(n+1)-(4*n+2)` -/
def P4151561596873248196.Spec : Prop :=
  ∀ n, P4151561596873248196.a n = A063141 (n + 1)

end A063141

/-! ## A063141.P18014560370930762327

`A063105(n+1)+6*n+3`
-/

namespace A063141.P18014560370930762327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063105 (n + 1) + (6 * n + 3 : ℤ)

end

end A063141.P18014560370930762327

namespace A063141

/-- `A063105(n+1)+6*n+3` -/
def P18014560370930762327.Spec : Prop :=
  ∀ n, P18014560370930762327.a n = A063141 (n + 1)

end A063141

/-! ## A063141.P3505268971275546940

`A063135(n+1)+n%2+n`
-/

namespace A063141.P3505268971275546940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063135 (n + 1) + ((n % 2 + n : ℕ) : ℤ)

end

end A063141.P3505268971275546940

namespace A063141

/-- `A063135(n+1)+n%2+n` -/
def P3505268971275546940.Spec : Prop :=
  ∀ n, P3505268971275546940.a n = A063141 (n + 1)

end A063141

/-! ## A063141.P4942159932856544000

`A063081(n+1)+A017329(n)`
-/

namespace A063141.P4942159932856544000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063081 (n + 1) + A017329 n

end

end A063141.P4942159932856544000

namespace A063141

/-- `A063081(n+1)+A017329(n)` -/
def P4942159932856544000.Spec : Prop :=
  ∀ n, P4942159932856544000.a n = A063141 (n + 1)

end A063141

/-! ## A063141.P7718507168990704952

`A063195(n+1)+A017581(n)`
-/

namespace A063141.P7718507168990704952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (n + 1) + A017581 n

end

end A063141.P7718507168990704952

namespace A063141

/-- `A063195(n+1)+A017581(n)` -/
def P7718507168990704952.Spec : Prop :=
  ∀ n, P7718507168990704952.a n = A063141 (n + 1)

end A063141

/-! ## A063141.P14315878031954032174

`A063125(n+1)-A052928(n)`
-/

namespace A063141.P14315878031954032174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063125 (n + 1) - A052928 n

end

end A063141.P14315878031954032174

namespace A063141

/-- `A063125(n+1)-A052928(n)` -/
def P14315878031954032174.Spec : Prop :=
  ∀ n, P14315878031954032174.a n = A063141 (n + 1)

end A063141

/-! ## A063141.P11542785671601869435

`A063147(n+1)-A109613(n)`
-/

namespace A063141.P11542785671601869435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063147 (n + 1) - A109613 n

end

end A063141.P11542785671601869435

namespace A063141

/-- `A063147(n+1)-A109613(n)` -/
def P11542785671601869435.Spec : Prop :=
  ∀ n, P11542785671601869435.a n = A063141 (n + 1)

end A063141

/-! ## A063141.P11537744945728632864

`A348845(n)-A063230(n+1)`
-/

namespace A063141.P11537744945728632864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n - A063230 (n + 1)

end

end A063141.P11537744945728632864

namespace A063141

/-- `A348845(n)-A063230(n+1)` -/
def P11537744945728632864.Spec : Prop :=
  ∀ n, P11537744945728632864.a n = A063141 (n + 1)

end A063141

/-! ## A063141.P8446733501866018073

`A063081(n+1)+A017317(n)+1`
-/

namespace A063141.P8446733501866018073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063081 (n + 1) + (A017317 n + 1)

end

end A063141.P8446733501866018073

namespace A063141

/-- `A063081(n+1)+A017317(n)+1` -/
def P8446733501866018073.Spec : Prop :=
  ∀ n, P8446733501866018073.a n = A063141 (n + 1)

end A063141

/-! ## A063141.P32675698096185890

`A063238(n+1)+A047233(n+1)`
-/

namespace A063141.P32675698096185890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063238 (n + 1) + A047233 (n + 1)

end

end A063141.P32675698096185890

namespace A063141

/-- `A063238(n+1)+A047233(n+1)` -/
def P32675698096185890.Spec : Prop :=
  ∀ n, P32675698096185890.a n = A063141 (n + 1)

end A063141

/-! ## A063141.P10019008448222955253

`A063213(n+1)+A063121(n+1)`
-/

namespace A063141.P10019008448222955253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063213 (n + 1) + A063121 (n + 1)

end

end A063141.P10019008448222955253

namespace A063141

/-- `A063213(n+1)+A063121(n+1)` -/
def P10019008448222955253.Spec : Prop :=
  ∀ n, P10019008448222955253.a n = A063141 (n + 1)

end A063141

/-! ## A063141.P15392605978999570624

`A090772(n+1)+A063111(n+1)`
-/

namespace A063141.P15392605978999570624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090772 (n + 1) + A063111 (n + 1)

end

end A063141.P15392605978999570624

namespace A063141

/-- `A090772(n+1)+A063111(n+1)` -/
def P15392605978999570624.Spec : Prop :=
  ∀ n, P15392605978999570624.a n = A063141 (n + 1)

end A063141

/-! ## A063141.P13877928902781960729

`A113803(n+1)+A063099(n+1)`
-/

namespace A063141.P13877928902781960729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113803 (n + 1) + A063099 (n + 1)

end

end A063141.P13877928902781960729

namespace A063141

/-- `A113803(n+1)+A063099(n+1)` -/
def P13877928902781960729.Spec : Prop :=
  ∀ n, P13877928902781960729.a n = A063141 (n + 1)

end A063141

/-! ## A063141.P17582114341757059511

`A317439(n+1)+A063129(n+1)`
-/

namespace A063141.P17582114341757059511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317439 (n + 1) + A063129 (n + 1)

end

end A063141.P17582114341757059511

namespace A063141

/-- `A317439(n+1)+A063129(n+1)` -/
def P17582114341757059511.Spec : Prop :=
  ∀ n, P17582114341757059511.a n = A063141 (n + 1)

end A063141

/-! ## A063141.P4980926300127141455

`A063195(n+1)+A017593(n)-1`
-/

namespace A063141.P4980926300127141455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (n + 1) + (A017593 n - 1)

end

end A063141.P4980926300127141455

namespace A063141

/-- `A063195(n+1)+A017593(n)-1` -/
def P4980926300127141455.Spec : Prop :=
  ∀ n, P4980926300127141455.a n = A063141 (n + 1)

end A063141

/-! ## A063141.P7149593403902681583

`A063157(n+1)-A047410(n+1)`
-/

namespace A063141.P7149593403902681583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063157 (n + 1) - A047410 (n + 1)

end

end A063141.P7149593403902681583

namespace A063141

/-- `A063157(n+1)-A047410(n+1)` -/
def P7149593403902681583.Spec : Prop :=
  ∀ n, P7149593403902681583.a n = A063141 (n + 1)

end A063141

/-!
# A063142: Dimension of the space of weight 2n cusp forms for Gamma_0( 74 ).

The programs for A063142, the canonical program `A063142.P8662895455622917962` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063142 has offset 1).

The definition of A063142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063142.P8662895455622917962

`a(n-2)+38` with `a(0)=8, a(1)=27, a(2)=45`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063142

/-- `a(n-2)+38` -/
def P8662895455622917962.Spec : Prop :=
  ∀ n, (P8662895455622917962.a n : ℤ) = A063142 (n + 1)

theorem P8662895455622917962.correct : P8662895455622917962.Spec := by
  intro n
  simp only [A063142, Nat.add_sub_cancel]

end A063142

/-! ## A063142.P4753447769681811511

`∑[floor(a(n-2))]` with `a(0)=8, a(1)=19, a(2)=18, a(3)=20`

`floor` is left out, it is the identity on integers.
-/

namespace A063142.P4753447769681811511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 19, 18, 20] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063142.P4753447769681811511

namespace A063142

/-- `∑[floor(a(n-2))]` -/
def P4753447769681811511.Spec : Prop :=
  ∀ n, (P4753447769681811511.a n : ℤ) = A063142 (n + 1)

end A063142

/-! ## A063142.P13450208581365081568

`ogf((8+19x+10x^2+x^3)/(1-x-x^2+x^3))`
-/

namespace A063142.P13450208581365081568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 19, 10, 1] [1, -1, -1, 1] n

end

end A063142.P13450208581365081568

namespace A063142

/-- `ogf((8+19x+10x^2+x^3)/(1-x-x^2+x^3))` -/
def P13450208581365081568.Spec : Prop :=
  ∀ n, P13450208581365081568.a n = A063142 (n + 1)

end A063142

/-! ## A063142.P11928651997598458445

`19*n+8-char[2*(n+1)]`
-/

namespace A063142.P11928651997598458445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (19 * n + 8 : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A063142.P11928651997598458445

namespace A063142

/-- `19*n+8-char[2*(n+1)]` -/
def P11928651997598458445.Spec : Prop :=
  ∀ n, P11928651997598458445.a n = A063142 (n + 1)

end A063142

/-! ## A063142.P11801197522449535940

`Δ[ceil(2/acot(n/2)²)+n*(9*n-2)]`
-/

namespace A063142.P11801197522449535940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot ((n : ℚ) / 2 : ℝ) ^ 2⌉ + (n : ℤ) * ((9 * n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063142.P11801197522449535940

namespace A063142

/-- `Δ[ceil(2/acot(n/2)²)+n*(9*n-2)]` -/
def P11801197522449535940.Spec : Prop :=
  ∀ n, P11801197522449535940.a n = A063142 (n + 1)

end A063142

/-! ## A063142.P3704498683653767391

`Δ[A007899(n)-(n+1)²]`
-/

namespace A063142.P3704498683653767391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007899 n - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063142.P3704498683653767391

namespace A063142

/-- `Δ[A007899(n)-(n+1)²]` -/
def P3704498683653767391.Spec : Prop :=
  ∀ n, P3704498683653767391.a n = A063142 (n + 1)

end A063142

/-!
# A063143: Dimension of the space of weight 2n cusp forms for Gamma_0( 75 ).

The programs for A063143, the canonical program `A063143.P4759093904244919223` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063143 has offset 1).

The definition of A063143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063143.P4759093904244919223

`a(n-1)+20` with `a(0)=5, a(1)=24`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063143

/-- `a(n-1)+20` -/
def P4759093904244919223.Spec : Prop :=
  ∀ n, (P4759093904244919223.a n : ℤ) = A063143 (n + 1)

theorem P4759093904244919223.correct : P4759093904244919223.Spec := by
  intro n
  simp only [A063143, Nat.add_sub_cancel]

end A063143

/-!
# A063144: Dimension of the space of weight 2n cusp forms for Gamma_0( 76 ).

The programs for A063144, the canonical program `A063144.P16732099207904328805` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063144 has offset 1).

The definition of A063144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063144.P16732099207904328805

`a(n-1)+20` with `a(0)=8, a(1)=27`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063144

/-- `a(n-1)+20` -/
def P16732099207904328805.Spec : Prop :=
  ∀ n, (P16732099207904328805.a n : ℤ) = A063144 (n + 1)

theorem P16732099207904328805.correct : P16732099207904328805.Spec := by
  intro n
  simp only [A063144, Nat.add_sub_cancel]

end A063144

/-!
# A063146: Dimension of the space of weight 2n cusp forms for Gamma_0( 78 ).

The programs for A063146, the canonical program `A063146.P12990539570596953237` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063146 has offset 1).

The definition of A063146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063146.P12990539570596953237

`a(n-1)+28` with `a(0)=11, a(1)=38`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063146

/-- `a(n-1)+28` -/
def P12990539570596953237.Spec : Prop :=
  ∀ n, (P12990539570596953237.a n : ℤ) = A063146 (n + 1)

theorem P12990539570596953237.correct : P12990539570596953237.Spec := by
  intro n
  simp only [A063146, Nat.add_sub_cancel]

end A063146

/-!
# A063147: Dimension of the space of weight 2n cusp forms for Gamma_0( 79 ).

The programs for A063147, the canonical program `A063147.P3365130398821341012` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063147 has offset 1).

The definition of A063147 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063147.P2502019800109258361

`ogf((6+13x+14x^2+6x^3+x^4)/(1-x-x^3+x^4))`
-/

namespace A063147.P2502019800109258361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 13, 14, 6, 1] [1, -1, 0, -1, 1] n

end

end A063147.P2502019800109258361

namespace A063147

/-- `ogf((6+13x+14x^2+6x^3+x^4)/(1-x-x^3+x^4))` -/
def P2502019800109258361.Spec : Prop :=
  ∀ n, P2502019800109258361.a n = A063147 (n + 1)

end A063147

/-! ## A063147.P5714628644355437422

`∑[7-gcd(3, n)]+floor(2/acot(4*n))+1`
-/

namespace A063147.P5714628644355437422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - (Nat.gcd 3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌊2 / SequenceMachineLib.acot (4 * n : ℝ)⌋ + 1

end

end A063147.P5714628644355437422

namespace A063147

/-- `∑[7-gcd(3, n)]+floor(2/acot(4*n))+1` -/
def P5714628644355437422.Spec : Prop :=
  ∀ n, P5714628644355437422.a n = A063147 (n + 1)

end A063147

/-! ## A063147.P6851908531869398195

`∑[floor(a(n-3))]+4*n+1` with `a(0)=5, a(1)=9, a(2)=10, a(3)=8, a(4)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A063147.P6851908531869398195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 9, 10, 8, 10] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4 * n + 1

end

end A063147.P6851908531869398195

namespace A063147

/-- `∑[floor(a(n-3))]+4*n+1` -/
def P6851908531869398195.Spec : Prop :=
  ∀ n, (P6851908531869398195.a n : ℤ) = A063147 (n + 1)

end A063147

/-! ## A063147.P3365130398821341012

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=6, a(1)=19, a(2)=33, a(3)=45, a(4)=59`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063147

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P3365130398821341012.Spec : Prop :=
  ∀ n, P3365130398821341012.a n = A063147 (n + 1)

theorem P3365130398821341012.correct : P3365130398821341012.Spec := by
  intro n
  simp only [A063147, Nat.add_sub_cancel]

end A063147

/-! ## A063147.P17903326253833636240

`A063125(n+1)+1`
-/

namespace A063147.P17903326253833636240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063125 (n + 1) + 1

end

end A063147.P17903326253833636240

namespace A063147

/-- `A063125(n+1)+1` -/
def P17903326253833636240.Spec : Prop :=
  ∀ n, P17903326253833636240.a n = A063147 (n + 1)

end A063147

/-! ## A063147.P6993921135796005616

`A063141(n+1)+or(1, n)`
-/

namespace A063147.P6993921135796005616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063141 (n + 1) + (Nat.lor 1 n : ℤ)

end

end A063147.P6993921135796005616

namespace A063147

/-- `A063141(n+1)+or(1, n)` -/
def P6993921135796005616.Spec : Prop :=
  ∀ n, P6993921135796005616.a n = A063147 (n + 1)

end A063147

/-! ## A063147.P17951716316355991670

`A063135(n+1)+Δ[n²]`
-/

namespace A063147.P17951716316355991670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063135 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063147.P17951716316355991670

namespace A063147

/-- `A063135(n+1)+Δ[n²]` -/
def P17951716316355991670.Spec : Prop :=
  ∀ n, P17951716316355991670.a n = A063147 (n + 1)

end A063147

/-! ## A063147.P11907565652806862172

`4*n+A063238(n+1)+1`
-/

namespace A063147.P11907565652806862172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (A063238 (n + 1) + 1)

end

end A063147.P11907565652806862172

namespace A063147

/-- `4*n+A063238(n+1)+1` -/
def P11907565652806862172.Spec : Prop :=
  ∀ n, P11907565652806862172.a n = A063147 (n + 1)

end A063147

/-! ## A063147.P13864723836812489366

`4*n+A063107(n+1)+3`
-/

namespace A063147.P13864723836812489366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (A063107 (n + 1) + 3)

end

end A063147.P13864723836812489366

namespace A063147

/-- `4*n+A063107(n+1)+3` -/
def P13864723836812489366.Spec : Prop :=
  ∀ n, P13864723836812489366.a n = A063147 (n + 1)

end A063147

/-! ## A063147.P2069921000341717303

`A063107(n+1)+A004767(n)`
-/

namespace A063147.P2069921000341717303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063107 (n + 1) + A004767 n

end

end A063147.P2069921000341717303

namespace A063147

/-- `A063107(n+1)+A004767(n)` -/
def P2069921000341717303.Spec : Prop :=
  ∀ n, P2069921000341717303.a n = A063147 (n + 1)

end A063147

/-! ## A063147.P11052647497962948871

`A063238(n+1)+A016813(n)`
-/

namespace A063147.P11052647497962948871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063238 (n + 1) + A016813 n

end

end A063147.P11052647497962948871

namespace A063147

/-- `A063238(n+1)+A016813(n)` -/
def P11052647497962948871.Spec : Prop :=
  ∀ n, P11052647497962948871.a n = A063147 (n + 1)

end A063147

/-! ## A063147.P10494851472565650020

`A063111(n+1)+A016945(n)`
-/

namespace A063147.P10494851472565650020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063111 (n + 1) + A016945 n

end

end A063147.P10494851472565650020

namespace A063147

/-- `A063111(n+1)+A016945(n)` -/
def P10494851472565650020.Spec : Prop :=
  ∀ n, P10494851472565650020.a n = A063147 (n + 1)

end A063147

/-! ## A063147.P4449466895561310264

`A063099(n+1)+A017113(n)`
-/

namespace A063147.P4449466895561310264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063099 (n + 1) + A017113 n

end

end A063147.P4449466895561310264

namespace A063147

/-- `A063099(n+1)+A017113(n)` -/
def P4449466895561310264.Spec : Prop :=
  ∀ n, P4449466895561310264.a n = A063147 (n + 1)

end A063147

/-! ## A063147.P6019970114842863369

`A063218(n+1)+A017101(n)`
-/

namespace A063147.P6019970114842863369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063218 (n + 1) + A017101 n

end

end A063147.P6019970114842863369

namespace A063147

/-- `A063218(n+1)+A017101(n)` -/
def P6019970114842863369.Spec : Prop :=
  ∀ n, P6019970114842863369.a n = A063147 (n + 1)

end A063147

/-! ## A063147.P7588838219511675323

`A063087(n+1)+A017329(n)`
-/

namespace A063147.P7588838219511675323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063087 (n + 1) + A017329 n

end

end A063147.P7588838219511675323

namespace A063147

/-- `A063087(n+1)+A017329(n)` -/
def P7588838219511675323.Spec : Prop :=
  ∀ n, P7588838219511675323.a n = A063147 (n + 1)

end A063147

/-! ## A063147.P3839955845172030462

`A063200(n+1)+A017581(n)`
-/

namespace A063147.P3839955845172030462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063200 (n + 1) + A017581 n

end

end A063147.P3839955845172030462

namespace A063147

/-- `A063200(n+1)+A017581(n)` -/
def P3839955845172030462.Spec : Prop :=
  ∀ n, P3839955845172030462.a n = A063147 (n + 1)

end A063147

/-! ## A063147.P2199256863857547294

`A109613(n)+A063141(n+1)`
-/

namespace A063147.P2199256863857547294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + A063141 (n + 1)

end

end A063147.P2199256863857547294

namespace A063147

/-- `A109613(n)+A063141(n+1)` -/
def P2199256863857547294.Spec : Prop :=
  ∀ n, P2199256863857547294.a n = A063147 (n + 1)

end A063147

/-! ## A063147.P1565359494793914992

`A063161(n+1)-A017101(n)`
-/

namespace A063147.P1565359494793914992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063161 (n + 1) - A017101 n

end

end A063147.P1565359494793914992

namespace A063147

/-- `A063161(n+1)-A017101(n)` -/
def P1565359494793914992.Spec : Prop :=
  ∀ n, P1565359494793914992.a n = A063147 (n + 1)

end A063147

/-! ## A063147.P2091224926371774379

`A063089(n+1)+A004770(n+1)`
-/

namespace A063147.P2091224926371774379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063089 (n + 1) + A004770 (n + 1)

end

end A063147.P2091224926371774379

namespace A063147

/-- `A063089(n+1)+A004770(n+1)` -/
def P2091224926371774379.Spec : Prop :=
  ∀ n, P2091224926371774379.a n = A063147 (n + 1)

end A063147

/-! ## A063147.P12506227358077097508

`A063117(n+1)+A004766(n+1)`
-/

namespace A063147.P12506227358077097508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063117 (n + 1) + A004766 (n + 1)

end

end A063147.P12506227358077097508

namespace A063147

/-- `A063117(n+1)+A004766(n+1)` -/
def P12506227358077097508.Spec : Prop :=
  ∀ n, P12506227358077097508.a n = A063147 (n + 1)

end A063147

/-!
# A063149: Composite numbers which in base 5 contain their largest proper factor as a substring.

The programs for A063149, the canonical program `A063149.P4679270050047913503` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063149 has offset 1).

The definition of A063149 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063149.P10760013633487244917

`ogf((25+10x-5x^2)/(1-x-x^2+x^3))`
-/

namespace A063149.P10760013633487244917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [25, 10, -5] [1, -1, -1, 1] n

end

end A063149.P10760013633487244917

namespace A063149

/-- `ogf((25+10x-5x^2)/(1-x-x^2+x^3))` -/
def P10760013633487244917.Spec : Prop :=
  ∀ n, P10760013633487244917.a n = A063149 (n + 1)

end A063149

/-! ## A063149.P4679270050047913503

`30*(n+1)-a(n-1)` with `a(0)=25`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063149

/-- `30*(n+1)-a(n-1)` -/
def P4679270050047913503.Spec : Prop :=
  ∀ n, P4679270050047913503.a n = A063149 (n + 1)

theorem P4679270050047913503.correct : P4679270050047913503.Spec := by
  intro n
  simp only [A063149, Nat.add_sub_cancel]

end A063149

/-! ## A063149.P4257822521145096304

`a(n-2)+30` with `a(0)=25, a(1)=35`
-/

namespace A063149.P4257822521145096304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [25, 35] fun n a =>
  a (n - 2) + 30

end

end A063149.P4257822521145096304

namespace A063149

/-- `a(n-2)+30` -/
def P4257822521145096304.Spec : Prop :=
  ∀ n, (P4257822521145096304.a n : ℤ) = A063149 (n + 1)

end A063149

/-! ## A063149.P7439386364334884427

`∑[10*gcd(2, n)]+5`
-/

namespace A063149.P7439386364334884427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A063149.P7439386364334884427

namespace A063149

/-- `∑[10*gcd(2, n)]+5` -/
def P7439386364334884427.Spec : Prop :=
  ∀ n, (P7439386364334884427.a n : ℤ) = A063149 (n + 1)

end A063149

/-! ## A063149.P15338890509589816868

`5*or(1, 3*n+4)`
-/

namespace A063149.P15338890509589816868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.lor 1 (3 * n + 4)

end

end A063149.P15338890509589816868

namespace A063149

/-- `5*or(1, 3*n+4)` -/
def P15338890509589816868.Spec : Prop :=
  ∀ n, (P15338890509589816868.a n : ℤ) = A063149 (n + 1)

end A063149

/-! ## A063149.P17279267669320577719

`∑[30-a(n-1)]` with `a(0)=25, a(1)=10`
-/

namespace A063149.P17279267669320577719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [25, 10] fun n f1 =>
  30 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063149.P17279267669320577719

namespace A063149

/-- `∑[30-a(n-1)]` -/
def P17279267669320577719.Spec : Prop :=
  ∀ n, P17279267669320577719.a n = A063149 (n + 1)

end A063149

/-! ## A063149.P8440180860834367079

`filter[5*(n+2), gcd(6, #)]`
-/

namespace A063149.P8440180860834367079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Nat.gcd 6 (f1 j) = 1) n)

end

end A063149.P8440180860834367079

namespace A063149

/-- `filter[5*(n+2), gcd(6, #)]` -/
def P8440180860834367079.Spec : Prop :=
  ∀ n, (P8440180860834367079.a n : ℤ) = A063149 (n + 1)

end A063149

/-! ## A063149.P17461505828787835584

`5*(and(3*n, -2)+5)`
-/

namespace A063149.P17461505828787835584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (Int.land (3 * n : ℤ) (-2) + 5)

end

end A063149.P17461505828787835584

namespace A063149

/-- `5*(and(3*n, -2)+5)` -/
def P17461505828787835584.Spec : Prop :=
  ∀ n, P17461505828787835584.a n = A063149 (n + 1)

end A063149

/-! ## A063149.P7670657344850681582

`5*(record[xor(2, n)]+n+3)`
-/

namespace A063149.P7670657344850681582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 3))

end

end A063149.P7670657344850681582

namespace A063149

/-- `5*(record[xor(2, n)]+n+3)` -/
def P7670657344850681582.Spec : Prop :=
  ∀ n, (P7670657344850681582.a n : ℤ) = A063149 (n + 1)

end A063149

/-! ## A063149.P7316896806628036418

`5*(∑[(-1)^n+3]+1)`
-/

namespace A063149.P7316896806628036418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A063149.P7316896806628036418

namespace A063149

/-- `5*(∑[(-1)^n+3]+1)` -/
def P7316896806628036418.Spec : Prop :=
  ∀ n, P7316896806628036418.a n = A063149 (n + 1)

end A063149

/-! ## A063149.P9227957618249353103

`record[5*(lcm(3, n+1)-(n-2))]`
-/

namespace A063149.P9227957618249353103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ((Nat.lcm 3 (n + 1) : ℤ) - ((n : ℤ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063149.P9227957618249353103

namespace A063149

/-- `record[5*(lcm(3, n+1)-(n-2))]` -/
def P9227957618249353103.Spec : Prop :=
  ∀ n, P9227957618249353103.a n = A063149 (n + 1)

end A063149

/-! ## A063149.P7366800951450036037

`A267984(n+1)+2*A010711(n)`
-/

namespace A063149.P7366800951450036037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267984 (n + 1) + 2 * A010711 n

end

end A063149.P7366800951450036037

namespace A063149

/-- `A267984(n+1)+2*A010711(n)` -/
def P7366800951450036037.Spec : Prop :=
  ∀ n, P7366800951450036037.a n = A063149 (n + 1)

end A063149

/-! ## A063149.P12809120638933032590

`A084967(n+2)`
-/

namespace A063149.P12809120638933032590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084967 (n + 2)

end

end A063149.P12809120638933032590

namespace A063149

/-- `A084967(n+2)` -/
def P12809120638933032590.Spec : Prop :=
  ∀ n, P12809120638933032590.a n = A063149 (n + 1)

end A063149

/-! ## A063149.P10869220918264288309

`Δ[5*A032528(n+1)]`
-/

namespace A063149.P10869220918264288309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A032528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063149.P10869220918264288309

namespace A063149

/-- `Δ[5*A032528(n+1)]` -/
def P10869220918264288309.Spec : Prop :=
  ∀ n, P10869220918264288309.a n = A063149 (n + 1)

end A063149

/-! ## A063149.P18177605766147680699

`A010721(n+1)+A008597(n+1)`
-/

namespace A063149.P18177605766147680699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010721 (n + 1) + A008597 (n + 1)

end

end A063149.P18177605766147680699

namespace A063149

/-- `A010721(n+1)+A008597(n+1)` -/
def P18177605766147680699.Spec : Prop :=
  ∀ n, P18177605766147680699.a n = A063149 (n + 1)

end A063149

/-! ## A063149.P11121565488734418241

`A113801(n+2)+A017113(n+1)`
-/

namespace A063149.P11121565488734418241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (n + 2) + A017113 (n + 1)

end

end A063149.P11121565488734418241

namespace A063149

/-- `A113801(n+2)+A017113(n+1)` -/
def P11121565488734418241.Spec : Prop :=
  ∀ n, P11121565488734418241.a n = A063149 (n + 1)

end A063149

/-! ## A063149.P16010531342873721892

`A166621(n+2)+A008592(n+1)`
-/

namespace A063149.P16010531342873721892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166621 (n + 2) + A008592 (n + 1)

end

end A063149.P16010531342873721892

namespace A063149

/-- `A166621(n+2)+A008592(n+1)` -/
def P16010531342873721892.Spec : Prop :=
  ∀ n, P16010531342873721892.a n = A063149 (n + 1)

end A063149

/-! ## A063149.P15782425133275479215

`A166542(n+2)+A017557(n+1)`
-/

namespace A063149.P15782425133275479215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166542 (n + 2) + A017557 (n + 1)

end

end A063149.P15782425133275479215

namespace A063149

/-- `A166542(n+2)+A017557(n+1)` -/
def P15782425133275479215.Spec : Prop :=
  ∀ n, P15782425133275479215.a n = A063149 (n + 1)

end A063149

/-! ## A063149.P7080288882873135677

`A168420(n+2)+A017281(n+1)`
-/

namespace A063149.P7080288882873135677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168420 (n + 2) + A017281 (n + 1)

end

end A063149.P7080288882873135677

namespace A063149

/-- `A168420(n+2)+A017281(n+1)` -/
def P7080288882873135677.Spec : Prop :=
  ∀ n, P7080288882873135677.a n = A063149 (n + 1)

end A063149

/-! ## A063149.P4486632568940171797

`A168437(n+2)+A017293(n+1)`
-/

namespace A063149.P4486632568940171797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168437 (n + 2) + A017293 (n + 1)

end

end A063149.P4486632568940171797

namespace A063149

/-- `A168437(n+2)+A017293(n+1)` -/
def P4486632568940171797.Spec : Prop :=
  ∀ n, P4486632568940171797.a n = A063149 (n + 1)

end A063149

/-!
# A063150: Dimension of the space of weight 2n cusp forms for Gamma_0( 82 ).

The programs for A063150, the canonical program `A063150.P12261031747134652143` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063150 has offset 1).

The definition of A063150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063150.P12261031747134652143

`a(n-2)+42` with `a(0)=9, a(1)=30, a(2)=50`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063150

/-- `a(n-2)+42` -/
def P12261031747134652143.Spec : Prop :=
  ∀ n, (P12261031747134652143.a n : ℤ) = A063150 (n + 1)

theorem P12261031747134652143.correct : P12261031747134652143.Spec := by
  intro n
  simp only [A063150, Nat.add_sub_cancel]

end A063150

/-! ## A063150.P5530148511748314677

`ogf((9+21x+11x^2+x^3)/(1-x-x^2+x^3))`
-/

namespace A063150.P5530148511748314677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 21, 11, 1] [1, -1, -1, 1] n

end

end A063150.P5530148511748314677

namespace A063150

/-- `ogf((9+21x+11x^2+x^3)/(1-x-x^2+x^3))` -/
def P5530148511748314677.Spec : Prop :=
  ∀ n, P5530148511748314677.a n = A063150 (n + 1)

end A063150

/-! ## A063150.P8165982276406247309

`record[lcm(2, n)/2]+or(1, 19*n+9)`
-/

namespace A063150.P8165982276406247309
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (Nat.lor 1 (19 * n + 9) : ℚ)

end

end A063150.P8165982276406247309

namespace A063150

/-- `record[lcm(2, n)/2]+or(1, 19*n+9)` -/
def P8165982276406247309.Spec : Prop :=
  ∀ n, P8165982276406247309.a n = (A063150 (n + 1) : ℚ)

end A063150

/-! ## A063150.P3475079232997408446

`Δ[11*n²-∑[n]-round(3/(2*acot(n)))]`
-/

namespace A063150.P3475079232997408446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * n ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - SequenceMachineLib.roundAway (3 / (2 * SequenceMachineLib.acot (n : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063150.P3475079232997408446

namespace A063150

/-- `Δ[11*n²-∑[n]-round(3/(2*acot(n)))]` -/
def P3475079232997408446.Spec : Prop :=
  ∀ n, P3475079232997408446.a n = A063150 (n + 1)

end A063150

/-! ## A063150.P4351485566167029022

`5*(4*n+2)-char[2*(n+1)]+n-1`
-/

namespace A063150.P4351485566167029022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (4 * n + 2) : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ((n : ℤ) - 1)

end

end A063150.P4351485566167029022

namespace A063150

/-- `5*(4*n+2)-char[2*(n+1)]+n-1` -/
def P4351485566167029022.Spec : Prop :=
  ∀ n, P4351485566167029022.a n = A063150 (n + 1)

end A063150

/-! ## A063150.P11619335567299660592

`abs(2-Δ[A007899(n)])`
-/

namespace A063150.P11619335567299660592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (f1 (n + 1) - f1 n)|

end

end A063150.P11619335567299660592

namespace A063150

/-- `abs(2-Δ[A007899(n)])` -/
def P11619335567299660592.Spec : Prop :=
  ∀ n, P11619335567299660592.a n = A063150 (n + 1)

end A063150

/-! ## A063150.P12386905542275954552

`A187326(A063151(n+1))`
-/

namespace A063150.P12386905542275954552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187326 (A063151 (n + 1)).toNat

end

end A063150.P12386905542275954552

namespace A063150

/-- `A187326(A063151(n+1))` -/
def P12386905542275954552.Spec : Prop :=
  ∀ n, P12386905542275954552.a n = A063150 (n + 1)

end A063150

/-! ## A063150.P13702222470674432013

`A032796(A063157(n+1))`
-/

namespace A063150.P13702222470674432013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032796 (A063157 (n + 1)).toNat

end

end A063150.P13702222470674432013

namespace A063150

/-- `A032796(A063157(n+1))` -/
def P13702222470674432013.Spec : Prop :=
  ∀ n, P13702222470674432013.a n = A063150 (n + 1)

end A063150

/-!
# A063151: Dimension of the space of weight 2n cusp forms for Gamma_0( 83 ).

The programs for A063151, the canonical program `A063151.P4873048449995581787` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063151 has offset 1).

The definition of A063151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063151.P4873048449995581787

`a(n-1)+14` with `a(0)=7, a(1)=20`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063151

/-- `a(n-1)+14` -/
def P4873048449995581787.Spec : Prop :=
  ∀ n, (P4873048449995581787.a n : ℤ) = A063151 (n + 1)

theorem P4873048449995581787.correct : P4873048449995581787.Spec := by
  intro n
  simp only [A063151, Nat.add_sub_cancel]

end A063151

/-!
# A063152: Dimension of the space of weight 2n cusp forms for Gamma_0( 84 ).

The programs for A063152, the canonical program `A063152.P12161494883013233756` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063152 has offset 1).

The definition of A063152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063152.P12161494883013233756

`a(n-1)+32` with `a(0)=11, a(1)=42`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063152

/-- `a(n-1)+32` -/
def P12161494883013233756.Spec : Prop :=
  ∀ n, (P12161494883013233756.a n : ℤ) = A063152 (n + 1)

theorem P12161494883013233756.correct : P12161494883013233756.Spec := by
  intro n
  simp only [A063152, Nat.add_sub_cancel]

end A063152

/-!
# A063153: Dimension of the space of weight 2n cusp forms for Gamma_0( 85 ).

The programs for A063153, the canonical program `A063153.P6452090453914175759` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063153 has offset 1).

The definition of A063153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063153.P6452090453914175759

`a(n-2)+36` with `a(0)=7, a(1)=26, a(2)=42`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063153

/-- `a(n-2)+36` -/
def P6452090453914175759.Spec : Prop :=
  ∀ n, (P6452090453914175759.a n : ℤ) = A063153 (n + 1)

theorem P6452090453914175759.correct : P6452090453914175759.Spec := by
  intro n
  simp only [A063153, Nat.add_sub_cancel]

end A063153

/-! ## A063153.P3847627568728029695

`∑[abs(a(n-2))]` with `a(0)=7, a(1)=19, a(2)=16, a(3)=20`
-/

namespace A063153.P3847627568728029695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 19, 16, 20] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063153.P3847627568728029695

namespace A063153

/-- `∑[abs(a(n-2))]` -/
def P3847627568728029695.Spec : Prop :=
  ∀ n, (P3847627568728029695.a n : ℤ) = A063153 (n + 1)

end A063153

/-! ## A063153.P5596044340370852005

`∑[floor(a(n-2))]` with `a(0)=7, a(1)=19, a(2)=16, a(3)=20`

`floor` is left out, it is the identity on integers.
-/

namespace A063153.P5596044340370852005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 19, 16, 20] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063153.P5596044340370852005

namespace A063153

/-- `∑[floor(a(n-2))]` -/
def P5596044340370852005.Spec : Prop :=
  ∀ n, (P5596044340370852005.a n : ℤ) = A063153 (n + 1)

end A063153

/-! ## A063153.P338083121393475169

`∑[ceil(a(n-2))]` with `a(0)=7, a(1)=19, a(2)=16, a(3)=20`

`ceil` is left out, it is the identity on integers.
-/

namespace A063153.P338083121393475169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 19, 16, 20] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063153.P338083121393475169

namespace A063153

/-- `∑[ceil(a(n-2))]` -/
def P338083121393475169.Spec : Prop :=
  ∀ n, (P338083121393475169.a n : ℤ) = A063153 (n + 1)

end A063153

/-! ## A063153.P16661971110584391719

`ogf((7+19x+9x^2+x^3)/(1-x-x^2+x^3))`
-/

namespace A063153.P16661971110584391719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 19, 9, 1] [1, -1, -1, 1] n

end

end A063153.P16661971110584391719

namespace A063153

/-- `ogf((7+19x+9x^2+x^3)/(1-x-x^2+x^3))` -/
def P16661971110584391719.Spec : Prop :=
  ∀ n, P16661971110584391719.a n = A063153 (n + 1)

end A063153

/-! ## A063153.P15635127668881123821

`∑[and(22, 12-a(n-1))]` with `a(0)=7, a(1)=19`
-/

namespace A063153.P15635127668881123821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 19] fun n f1 =>
  Int.land 22 (12 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063153.P15635127668881123821

namespace A063153

/-- `∑[and(22, 12-a(n-1))]` -/
def P15635127668881123821.Spec : Prop :=
  ∀ n, P15635127668881123821.a n = A063153 (n + 1)

end A063153

/-! ## A063153.P9813474007887619347

`or(2, floor(6/acot(3*n+1)))`
-/

namespace A063153.P9813474007887619347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ⌊6 / SequenceMachineLib.acot (3 * n + 1 : ℝ)⌋

end

end A063153.P9813474007887619347

namespace A063153

/-- `or(2, floor(6/acot(3*n+1)))` -/
def P9813474007887619347.Spec : Prop :=
  ∀ n, P9813474007887619347.a n = A063153 (n + 1)

end A063153

/-! ## A063153.P11152348646477349769

`or(2, A063136(n+1))`
-/

namespace A063153.P11152348646477349769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A063136 (n + 1))

end

end A063153.P11152348646477349769

namespace A063153

/-- `or(2, A063136(n+1))` -/
def P11152348646477349769.Spec : Prop :=
  ∀ n, P11152348646477349769.a n = A063153 (n + 1)

end A063153

/-! ## A063153.P1155168499233330247

`A154612(n)+A014681(n)`
-/

namespace A063153.P1155168499233330247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + A014681 n

end

end A063153.P1155168499233330247

namespace A063153

/-- `A154612(n)+A014681(n)` -/
def P1155168499233330247.Spec : Prop :=
  ∀ n, P1155168499233330247.a n = A063153 (n + 1)

end A063153

/-! ## A063153.P13059759556470422797

`A063136(n+1)+A010673(n)`
-/

namespace A063153.P13059759556470422797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063136 (n + 1) + A010673 n

end

end A063153.P13059759556470422797

namespace A063153

/-- `A063136(n+1)+A010673(n)` -/
def P13059759556470422797.Spec : Prop :=
  ∀ n, P13059759556470422797.a n = A063153 (n + 1)

end A063153

/-! ## A063153.P3368505631619751150

`A063122(n+1)+A010703(n)`
-/

namespace A063153.P3368505631619751150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063122 (n + 1) + A010703 n

end

end A063153.P3368505631619751150

namespace A063153

/-- `A063122(n+1)+A010703(n)` -/
def P3368505631619751150.Spec : Prop :=
  ∀ n, P3368505631619751150.a n = A063153 (n + 1)

end A063153

/-! ## A063153.P2893170313659986472

`A063133(n+1)+A016825(n)`
-/

namespace A063153.P2893170313659986472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063133 (n + 1) + A016825 n

end

end A063153.P2893170313659986472

namespace A063153

/-- `A063133(n+1)+A016825(n)` -/
def P2893170313659986472.Spec : Prop :=
  ∀ n, P2893170313659986472.a n = A063153 (n + 1)

end A063153

/-! ## A063153.P9799732781808709502

`A063232(n+1)+A017089(n)`
-/

namespace A063153.P9799732781808709502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063232 (n + 1) + A017089 n

end

end A063153.P9799732781808709502

namespace A063153

/-- `A063232(n+1)+A017089(n)` -/
def P9799732781808709502.Spec : Prop :=
  ∀ n, P9799732781808709502.a n = A063153 (n + 1)

end A063153

/-! ## A063153.P1346251353755423102

`A063221(n+1)+A017569(n)`
-/

namespace A063153.P1346251353755423102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063221 (n + 1) + A017569 n

end

end A063153.P1346251353755423102

namespace A063153

/-- `A063221(n+1)+A017569(n)` -/
def P1346251353755423102.Spec : Prop :=
  ∀ n, P1346251353755423102.a n = A063153 (n + 1)

end A063153

/-! ## A063153.P16819424395103895497

`A063142(n+1)-A109613(n)`
-/

namespace A063153.P16819424395103895497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063142 (n + 1) - A109613 n

end

end A063153.P16819424395103895497

namespace A063153

/-- `A063142(n+1)-A109613(n)` -/
def P16819424395103895497.Spec : Prop :=
  ∀ n, P16819424395103895497.a n = A063153 (n + 1)

end A063153

/-! ## A063153.P1219620564036801489

`A063126(n+1)+A007310(n+1)`
-/

namespace A063153.P1219620564036801489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063126 (n + 1) + A007310 (n + 1)

end

end A063153.P1219620564036801489

namespace A063153

/-- `A063126(n+1)+A007310(n+1)` -/
def P1219620564036801489.Spec : Prop :=
  ∀ n, P1219620564036801489.a n = A063153 (n + 1)

end A063153

/-! ## A063153.P14520700642520540089

`A063157(n+1)+A047233(n+1)`
-/

namespace A063153.P14520700642520540089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063157 (n + 1) + A047233 (n + 1)

end

end A063153.P14520700642520540089

namespace A063153

/-- `A063157(n+1)+A047233(n+1)` -/
def P14520700642520540089.Spec : Prop :=
  ∀ n, P14520700642520540089.a n = A063153 (n + 1)

end A063153

/-! ## A063153.P11451867568528599920

`A063151(n+1)+A047451(n+1)`
-/

namespace A063153.P11451867568528599920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063151 (n + 1) + A047451 (n + 1)

end

end A063153.P11451867568528599920

namespace A063153

/-- `A063151(n+1)+A047451(n+1)` -/
def P11451867568528599920.Spec : Prop :=
  ∀ n, P11451867568528599920.a n = A063153 (n + 1)

end A063153

/-! ## A063153.P6594613843025582351

`A168273(n+1)+A063130(n+1)`
-/

namespace A063153.P6594613843025582351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168273 (n + 1) + A063130 (n + 1)

end

end A063153.P6594613843025582351

namespace A063153

/-- `A168273(n+1)+A063130(n+1)` -/
def P6594613843025582351.Spec : Prop :=
  ∀ n, P6594613843025582351.a n = A063153 (n + 1)

end A063153

/-! ## A063153.P13458398727094098808

`A063150(n+1)-A047235(n+1)`
-/

namespace A063153.P13458398727094098808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063150 (n + 1) - A047235 (n + 1)

end

end A063153.P13458398727094098808

namespace A063153

/-- `A063150(n+1)-A047235(n+1)` -/
def P13458398727094098808.Spec : Prop :=
  ∀ n, P13458398727094098808.a n = A063153 (n + 1)

end A063153

/-!
# A063154: Dimension of the space of weight 2n cusp forms for Gamma_0( 86 ).

The programs for A063154, the canonical program `A063154.P15660357612039554166` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063154 has offset 1).

The definition of A063154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063154.P15660357612039554166

`a(n-1)+22` with `a(0)=10, a(1)=31`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063154

/-- `a(n-1)+22` -/
def P15660357612039554166.Spec : Prop :=
  ∀ n, (P15660357612039554166.a n : ℤ) = A063154 (n + 1)

theorem P15660357612039554166.correct : P15660357612039554166.Spec := by
  intro n
  simp only [A063154, Nat.add_sub_cancel]

end A063154

/-!
# A063155: Dimension of the space of weight 2n cusp forms for Gamma_0( 87 ).

The programs for A063155, the canonical program `A063155.P5258305287720346762` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063155 has offset 1).

The definition of A063155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063155.P5258305287720346762

`a(n-1)+20` with `a(0)=9, a(1)=28`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063155

/-- `a(n-1)+20` -/
def P5258305287720346762.Spec : Prop :=
  ∀ n, (P5258305287720346762.a n : ℤ) = A063155 (n + 1)

theorem P5258305287720346762.correct : P5258305287720346762.Spec := by
  intro n
  simp only [A063155, Nat.add_sub_cancel]

end A063155

/-!
# A063157: Dimension of the space of weight 2n cusp forms for Gamma_0( 89 ).

The programs for A063157, the canonical program `A063157.P15872071186610242370` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063157 has offset 1).

The definition of A063157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063157.P15872071186610242370

`a(n-2)+30` with `a(0)=7, a(1)=22, a(2)=36`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063157

/-- `a(n-2)+30` -/
def P15872071186610242370.Spec : Prop :=
  ∀ n, (P15872071186610242370.a n : ℤ) = A063157 (n + 1)

theorem P15872071186610242370.correct : P15872071186610242370.Spec := by
  intro n
  simp only [A063157, Nat.add_sub_cancel]

end A063157

/-! ## A063157.P3368037501824842852

`∑[abs(a(n-2))]` with `a(0)=7, a(1)=15, a(2)=14, a(3)=16`
-/

namespace A063157.P3368037501824842852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 15, 14, 16] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063157.P3368037501824842852

namespace A063157

/-- `∑[abs(a(n-2))]` -/
def P3368037501824842852.Spec : Prop :=
  ∀ n, (P3368037501824842852.a n : ℤ) = A063157 (n + 1)

end A063157

/-! ## A063157.P3175544291325764215

`∑[30-a(n-1)]` with `a(0)=7, a(1)=15, a(2)=14`
-/

namespace A063157.P3175544291325764215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 15, 14] fun n f1 =>
  30 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063157.P3175544291325764215

namespace A063157

/-- `∑[30-a(n-1)]` -/
def P3175544291325764215.Spec : Prop :=
  ∀ n, P3175544291325764215.a n = A063157 (n + 1)

end A063157

/-! ## A063157.P11565850275800684910

`ogf((7+15x+7x^2+x^3)/(1-x-x^2+x^3))`
-/

namespace A063157.P11565850275800684910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 15, 7, 1] [1, -1, -1, 1] n

end

end A063157.P11565850275800684910

namespace A063157

/-- `ogf((7+15x+7x^2+x^3)/(1-x-x^2+x^3))` -/
def P11565850275800684910.Spec : Prop :=
  ∀ n, P11565850275800684910.a n = A063157 (n + 1)

end A063157

/-! ## A063157.P6133731981595047905

`15*n+7-char[2*(n+1)]`
-/

namespace A063157.P6133731981595047905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (15 * n + 7 : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A063157.P6133731981595047905

namespace A063157

/-- `15*n+7-char[2*(n+1)]` -/
def P6133731981595047905.Spec : Prop :=
  ∀ n, P6133731981595047905.a n = A063157 (n + 1)

end A063157

/-! ## A063157.P7378253480475049897

`xor(15*n+7, char[2*(n+1)])`
-/

namespace A063157.P7378253480475049897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (15 * n + 7) (if ∃ j, f1 j = n then 1 else 0)

end

end A063157.P7378253480475049897

namespace A063157

/-- `xor(15*n+7, char[2*(n+1)])` -/
def P7378253480475049897.Spec : Prop :=
  ∀ n, (P7378253480475049897.a n : ℤ) = A063157 (n + 1)

end A063157

/-! ## A063157.P3279035291539512566

`Δ[A008527(n)-A007590(n+1)]`
-/

namespace A063157.P3279035291539512566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 n - A007590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063157.P3279035291539512566

namespace A063157

/-- `Δ[A008527(n)-A007590(n+1)]` -/
def P3279035291539512566.Spec : Prop :=
  ∀ n, P3279035291539512566.a n = A063157 (n + 1)

end A063157

/-! ## A063157.P14434941516868725066

`A032793(Δ[A009946(n)])`
-/

namespace A063157.P14434941516868725066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032793 (f1 (n + 1) - f1 n).toNat

end

end A063157.P14434941516868725066

namespace A063157

/-- `A032793(Δ[A009946(n)])` -/
def P14434941516868725066.Spec : Prop :=
  ∀ n, P14434941516868725066.a n = A063157 (n + 1)

end A063157

/-! ## A063157.P5690940703228992815

`A020710(A063118(n+1))`
-/

namespace A063157.P5690940703228992815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (A063118 (n + 1)).toNat

end

end A063157.P5690940703228992815

namespace A063157

/-- `A020710(A063118(n+1))` -/
def P5690940703228992815.Spec : Prop :=
  ∀ n, P5690940703228992815.a n = A063157 (n + 1)

end A063157

/-! ## A063157.P11068855482272631147

`A020725(A063126(n+1))`
-/

namespace A063157.P11068855482272631147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A063126 (n + 1)).toNat

end

end A063157.P11068855482272631147

namespace A063157

/-- `A020725(A063126(n+1))` -/
def P11068855482272631147.Spec : Prop :=
  ∀ n, P11068855482272631147.a n = A063157 (n + 1)

end A063157

/-! ## A063157.P7873316496950359803

`A020705(A063118(n+1)+1)`
-/

namespace A063157.P7873316496950359803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A063118 (n + 1) + 1).toNat

end

end A063157.P7873316496950359803

namespace A063157

/-- `A020705(A063118(n+1)+1)` -/
def P7873316496950359803.Spec : Prop :=
  ∀ n, P7873316496950359803.a n = A063157 (n + 1)

end A063157

/-! ## A063157.P14369372180155656001

`A330881(A063155(n+1))`
-/

namespace A063157.P14369372180155656001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330881 (A063155 (n + 1)).toNat

end

end A063157.P14369372180155656001

namespace A063157

/-- `A330881(A063155(n+1))` -/
def P14369372180155656001.Spec : Prop :=
  ∀ n, P14369372180155656001.a n = A063157 (n + 1)

end A063157

/-! ## A063157.P7968772837530203443

`A330881(A063144(n+1)+1)`
-/

namespace A063157.P7968772837530203443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330881 (A063144 (n + 1) + 1).toNat

end

end A063157.P7968772837530203443

namespace A063157

/-- `A330881(A063144(n+1)+1)` -/
def P7968772837530203443.Spec : Prop :=
  ∀ n, P7968772837530203443.a n = A063157 (n + 1)

end A063157

/-! ## A063157.P15158978730176417398

`A057359(A063150(n+1)+1)`
-/

namespace A063157.P15158978730176417398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057359 (A063150 (n + 1) + 1).toNat

end

end A063157.P15158978730176417398

namespace A063157

/-- `A057359(A063150(n+1)+1)` -/
def P15158978730176417398.Spec : Prop :=
  ∀ n, P15158978730176417398.a n = A063157 (n + 1)

end A063157

/-!
# A063158: Dimension of the space of weight 2n cusp forms for Gamma_0( 90 ).

The programs for A063158, the canonical program `A063158.P4275219641059290703` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063158 has offset 1).

The definition of A063158 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063158.P4275219641059290703

`a(n-1)+36` with `a(0)=11, a(1)=46`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063158

/-- `a(n-1)+36` -/
def P4275219641059290703.Spec : Prop :=
  ∀ n, (P4275219641059290703.a n : ℤ) = A063158 (n + 1)

theorem P4275219641059290703.correct : P4275219641059290703.Spec := by
  intro n
  simp only [A063158, Nat.add_sub_cancel]

end A063158

/-!
# A063159: Dimension of the space of weight 2n cusp forms for Gamma_0( 91 ).

The programs for A063159, the canonical program `A063159.P8680012068232969896` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063159 has offset 1).

The definition of A063159 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063159.P11505422404817366746

`ogf((7+19x+20x^2+9x^3+x^4)/(1-x-x^3+x^4))`
-/

namespace A063159.P11505422404817366746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 19, 20, 9, 1] [1, -1, 0, -1, 1] n

end

end A063159.P11505422404817366746

namespace A063159

/-- `ogf((7+19x+20x^2+9x^3+x^4)/(1-x-x^3+x^4))` -/
def P11505422404817366746.Spec : Prop :=
  ∀ n, P11505422404817366746.a n = A063159 (n + 1)

end A063159

/-! ## A063159.P10244193940069099917

`Δ[n*(7*n-2)]+∑[(6-char[1])/gcd(3, n)]`
-/

namespace A063159.P10244193940069099917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((7 * n : ℤ) - 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) : ℚ) / (Nat.gcd 3 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A063159.P10244193940069099917

namespace A063159

/-- `Δ[n*(7*n-2)]+∑[(6-char[1])/gcd(3, n)]` -/
def P10244193940069099917.Spec : Prop :=
  ∀ n, P10244193940069099917.a n = (A063159 (n + 1) : ℚ)

end A063159

/-! ## A063159.P8680012068232969896

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=7, a(1)=26, a(2)=46, a(3)=62, a(4)=82`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063159

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P8680012068232969896.Spec : Prop :=
  ∀ n, P8680012068232969896.a n = A063159 (n + 1)

theorem P8680012068232969896.correct : P8680012068232969896.Spec := by
  intro n
  simp only [A063159, Nat.add_sub_cancel]

end A063159

/-! ## A063159.P3388198336426836432

`A063236(n+1)+A017089(n)`
-/

namespace A063159.P3388198336426836432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063236 (n + 1) + A017089 n

end

end A063159.P3388198336426836432

namespace A063159

/-- `A063236(n+1)+A017089(n)` -/
def P3388198336426836432.Spec : Prop :=
  ∀ n, P3388198336426836432.a n = A063159 (n + 1)

end A063159

/-! ## A063159.P5067861182975512655

`A063220(n+1)+A017569(n)`
-/

namespace A063159.P5067861182975512655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063220 (n + 1) + A017569 n

end

end A063159.P5067861182975512655

namespace A063159

/-- `A063220(n+1)+A017569(n)` -/
def P5067861182975512655.Spec : Prop :=
  ∀ n, P5067861182975512655.a n = A063159 (n + 1)

end A063159

/-! ## A063159.P4565210506722118354

`A063161(n+1)-A047410(n+1)`
-/

namespace A063159.P4565210506722118354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063161 (n + 1) - A047410 (n + 1)

end

end A063159.P4565210506722118354

namespace A063159

/-- `A063161(n+1)-A047410(n+1)` -/
def P4565210506722118354.Spec : Prop :=
  ∀ n, P4565210506722118354.a n = A063159 (n + 1)

end A063159

/-! ## A063159.P2686436480915044951

`A063154(n+1)-A063241(n+1)`
-/

namespace A063159.P2686436480915044951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1) - A063241 (n + 1)

end

end A063159.P2686436480915044951

namespace A063159

/-- `A063154(n+1)-A063241(n+1)` -/
def P2686436480915044951.Spec : Prop :=
  ∀ n, P2686436480915044951.a n = A063159 (n + 1)

end A063159

/-! ## A063159.P3866401455775043577

`A063162(n+1)-2*A047410(n+1)`
-/

namespace A063159.P3866401455775043577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063162 (n + 1) - 2 * A047410 (n + 1)

end

end A063159.P3866401455775043577

namespace A063159

/-- `A063162(n+1)-2*A047410(n+1)` -/
def P3866401455775043577.Spec : Prop :=
  ∀ n, P3866401455775043577.a n = A063159 (n + 1)

end A063159

/-! ## A063159.P9008127314970211856

`or(2, A063238(2*n+1)+2)`
-/

namespace A063159.P9008127314970211856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A063238 (2 * n + 1) + 2)

end

end A063159.P9008127314970211856

namespace A063159

/-- `or(2, A063238(2*n+1)+2)` -/
def P9008127314970211856.Spec : Prop :=
  ∀ n, P9008127314970211856.a n = A063159 (n + 1)

end A063159

/-! ## A063159.P7932977855342569533

`A063222(4*n+1)+5`
-/

namespace A063159.P7932977855342569533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063222 (4 * n + 1) + 5

end

end A063159.P7932977855342569533

namespace A063159

/-- `A063222(4*n+1)+5` -/
def P7932977855342569533.Spec : Prop :=
  ∀ n, P7932977855342569533.a n = A063159 (n + 1)

end A063159

/-! ## A063159.P16465733750848613360

`or(2, A314994(4*n+1))`
-/

namespace A063159.P16465733750848613360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A314994 (4 * n + 1))

end

end A063159.P16465733750848613360

namespace A063159

/-- `or(2, A314994(4*n+1))` -/
def P16465733750848613360.Spec : Prop :=
  ∀ n, P16465733750848613360.a n = A063159 (n + 1)

end A063159

/-! ## A063159.P15962679052211325687

`A047233(A063238(n+1))-A063238(n+1)`
-/

namespace A063159.P15962679052211325687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047233 (A063238 (n + 1)).toNat - A063238 (n + 1)

end

end A063159.P15962679052211325687

namespace A063159

/-- `A047233(A063238(n+1))-A063238(n+1)` -/
def P15962679052211325687.Spec : Prop :=
  ∀ n, P15962679052211325687.a n = A063159 (n + 1)

end A063159

/-! ## A063159.P5947658746875807370

`A154426(A063238(n+1))`
-/

namespace A063159.P5947658746875807370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154426 (A063238 (n + 1)).toNat

end

end A063159.P5947658746875807370

namespace A063159

/-- `A154426(A063238(n+1))` -/
def P5947658746875807370.Spec : Prop :=
  ∀ n, P5947658746875807370.a n = A063159 (n + 1)

end A063159

/-! ## A063159.P14900846558798716427

`A047308(A063147(n+1))`
-/

namespace A063159.P14900846558798716427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047308 (A063147 (n + 1)).toNat

end

end A063159.P14900846558798716427

namespace A063159

/-- `A047308(A063147(n+1))` -/
def P14900846558798716427.Spec : Prop :=
  ∀ n, P14900846558798716427.a n = A063159 (n + 1)

end A063159

/-! ## A063159.P11008855349488539694

`A315132(4*n)+6`
-/

namespace A063159.P11008855349488539694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315132 (4 * n) + 6

end

end A063159.P11008855349488539694

namespace A063159

/-- `A315132(4*n)+6` -/
def P11008855349488539694.Spec : Prop :=
  ∀ n, P11008855349488539694.a n = A063159 (n + 1)

end A063159

/-! ## A063159.P7732734008706214021

`A096068(A063107(n+1))`
-/

namespace A063159.P7732734008706214021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096068 (A063107 (n + 1)).toNat

end

end A063159.P7732734008706214021

namespace A063159

/-- `A096068(A063107(n+1))` -/
def P7732734008706214021.Spec : Prop :=
  ∀ n, P7732734008706214021.a n = A063159 (n + 1)

end A063159

/-!
# A063160: Dimension of the space of weight 2n cusp forms for Gamma_0( 92 ).

The programs for A063160, the canonical program `A063160.P1114631878864370510` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063160 has offset 1).

The definition of A063160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063160.P1114631878864370510

`a(n-1)+24` with `a(0)=10, a(1)=33`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063160

/-- `a(n-1)+24` -/
def P1114631878864370510.Spec : Prop :=
  ∀ n, (P1114631878864370510.a n : ℤ) = A063160 (n + 1)

theorem P1114631878864370510.correct : P1114631878864370510.Spec := by
  intro n
  simp only [A063160, Nat.add_sub_cancel]

end A063160

/-!
# A063161: Dimension of the space of weight 2n cusp forms for Gamma_0( 93 ).

The programs for A063161, the canonical program `A063161.P9870358192729769257` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063161 has offset 1).

The definition of A063161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063161.P9994503048684111656

`ogf((9+21x+22x^2+11x^3+x^4)/(1-x-x^3+x^4))`
-/

namespace A063161.P9994503048684111656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 21, 22, 11, 1] [1, -1, 0, -1, 1] n

end

end A063161.P9994503048684111656

namespace A063161

/-- `ogf((9+21x+22x^2+11x^3+x^4)/(1-x-x^3+x^4))` -/
def P9994503048684111656.Spec : Prop :=
  ∀ n, P9994503048684111656.a n = A063161 (n + 1)

end A063161

/-! ## A063161.P9870358192729769257

`∑[floor(a(n-3))]+12*n` with `a(0)=9, a(1)=9, a(2)=10, a(3)=8, a(4)=10`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063161

/-- `∑[floor(a(n-3))]+12*n` -/
def P9870358192729769257.Spec : Prop :=
  ∀ n, (P9870358192729769257.a n : ℤ) = A063161 (n + 1)

theorem P9870358192729769257.correct : P9870358192729769257.Spec := by
  intro n
  simp only [A063161, Nat.add_sub_cancel]

end A063161

/-! ## A063161.P18074850331750344167

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=9, a(1)=30, a(2)=52, a(3)=72, a(4)=94`
-/

namespace A063161.P18074850331750344167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 30, 52, 72, 94] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A063161.P18074850331750344167

namespace A063161

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P18074850331750344167.Spec : Prop :=
  ∀ n, P18074850331750344167.a n = A063161 (n + 1)

end A063161

/-! ## A063161.P12884498555785529982

`A063125(n+1)+8*n+4`
-/

namespace A063161.P12884498555785529982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063125 (n + 1) + (8 * n + 4 : ℤ)

end

end A063161.P12884498555785529982

namespace A063161

/-- `A063125(n+1)+8*n+4` -/
def P12884498555785529982.Spec : Prop :=
  ∀ n, P12884498555785529982.a n = A063161 (n + 1)

end A063161

/-! ## A063161.P2350028600974550814

`A063147(n+1)+A017101(n)`
-/

namespace A063161.P2350028600974550814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063147 (n + 1) + A017101 n

end

end A063161.P2350028600974550814

namespace A063161

/-- `A063147(n+1)+A017101(n)` -/
def P2350028600974550814.Spec : Prop :=
  ∀ n, P2350028600974550814.a n = A063161 (n + 1)

end A063161

/-! ## A063161.P15528031113621041574

`A063135(n+1)+A017317(n)`
-/

namespace A063161.P15528031113621041574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063135 (n + 1) + A017317 n

end

end A063161.P15528031113621041574

namespace A063161

/-- `A063135(n+1)+A017317(n)` -/
def P15528031113621041574.Spec : Prop :=
  ∀ n, P15528031113621041574.a n = A063161 (n + 1)

end A063161

/-! ## A063161.P12719323396283958795

`A063107(n+1)+A017593(n)`
-/

namespace A063161.P12719323396283958795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063107 (n + 1) + A017593 n

end

end A063161.P12719323396283958795

namespace A063161

/-- `A063107(n+1)+A017593(n)` -/
def P12719323396283958795.Spec : Prop :=
  ∀ n, P12719323396283958795.a n = A063161 (n + 1)

end A063161

/-! ## A063161.P11532129598055763851

`A063117(n+1)+A017617(n)`
-/

namespace A063161.P11532129598055763851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063117 (n + 1) + A017617 n

end

end A063161.P11532129598055763851

namespace A063161

/-- `A063117(n+1)+A017617(n)` -/
def P11532129598055763851.Spec : Prop :=
  ∀ n, P11532129598055763851.a n = A063161 (n + 1)

end A063161

/-! ## A063161.P3351396473588628104

`A063238(n+1)+A017569(n)`
-/

namespace A063161.P3351396473588628104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063238 (n + 1) + A017569 n

end

end A063161.P3351396473588628104

namespace A063161

/-- `A063238(n+1)+A017569(n)` -/
def P3351396473588628104.Spec : Prop :=
  ∀ n, P3351396473588628104.a n = A063161 (n + 1)

end A063161

/-! ## A063161.P10066431754239798467

`A063089(n+1)+A051062(n)`
-/

namespace A063161.P10066431754239798467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063089 (n + 1) + A051062 n

end

end A063161.P10066431754239798467

namespace A063161

/-- `A063089(n+1)+A051062(n)` -/
def P10066431754239798467.Spec : Prop :=
  ∀ n, P10066431754239798467.a n = A063161 (n + 1)

end A063161

/-! ## A063161.P10202476984951676233

`A063159(n+1)+A047410(n+1)`
-/

namespace A063161.P10202476984951676233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063159 (n + 1) + A047410 (n + 1)

end

end A063161.P10202476984951676233

namespace A063161

/-- `A063159(n+1)+A047410(n+1)` -/
def P10202476984951676233.Spec : Prop :=
  ∀ n, P10202476984951676233.a n = A063161 (n + 1)

end A063161

/-! ## A063161.P498290119760040758

`A063224(n+1)+A063155(n+1)`
-/

namespace A063161.P498290119760040758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063224 (n + 1) + A063155 (n + 1)

end

end A063161.P498290119760040758

namespace A063161

/-- `A063224(n+1)+A063155(n+1)` -/
def P498290119760040758.Spec : Prop :=
  ∀ n, P498290119760040758.a n = A063161 (n + 1)

end A063161

/-! ## A063161.P12595110996936406923

`A063162(n+1)-A047410(n+1)`
-/

namespace A063161.P12595110996936406923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063162 (n + 1) - A047410 (n + 1)

end

end A063161.P12595110996936406923

namespace A063161

/-- `A063162(n+1)-A047410(n+1)` -/
def P12595110996936406923.Spec : Prop :=
  ∀ n, P12595110996936406923.a n = A063161 (n + 1)

end A063161

/-! ## A063161.P15373394548040535765

`A063134(n+1)-A047464(n+1)`
-/

namespace A063161.P15373394548040535765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063134 (n + 1) - A047464 (n + 1)

end

end A063161.P15373394548040535765

namespace A063161

/-- `A063134(n+1)-A047464(n+1)` -/
def P15373394548040535765.Spec : Prop :=
  ∀ n, P15373394548040535765.a n = A063161 (n + 1)

end A063161

/-! ## A063161.P1226527401146359181

`A063160(n+1)-A047623(n+1)`
-/

namespace A063161.P1226527401146359181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063160 (n + 1) - A047623 (n + 1)

end

end A063161.P1226527401146359181

namespace A063161

/-- `A063160(n+1)-A047623(n+1)` -/
def P1226527401146359181.Spec : Prop :=
  ∀ n, P1226527401146359181.a n = A063161 (n + 1)

end A063161

/-! ## A063161.P10551089511564569670

`A082369(n+1)-A063219(n+1)`
-/

namespace A063161.P10551089511564569670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1) - A063219 (n + 1)

end

end A063161.P10551089511564569670

namespace A063161

/-- `A082369(n+1)-A063219(n+1)` -/
def P10551089511564569670.Spec : Prop :=
  ∀ n, P10551089511564569670.a n = A063161 (n + 1)

end A063161

/-! ## A063161.P6541789609214431919

`A063154(n+1)-A130823(n+1)`
-/

namespace A063161.P6541789609214431919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1) - A130823 (n + 1)

end

end A063161.P6541789609214431919

namespace A063161

/-- `A063154(n+1)-A130823(n+1)` -/
def P6541789609214431919.Spec : Prop :=
  ∀ n, P6541789609214431919.a n = A063161 (n + 1)

end A063161

/-! ## A063161.P11370737362125176402

`A063089(n+1)+2*A017113(n)`
-/

namespace A063161.P11370737362125176402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063089 (n + 1) + 2 * A017113 n

end

end A063161.P11370737362125176402

namespace A063161

/-- `A063089(n+1)+2*A017113(n)` -/
def P11370737362125176402.Spec : Prop :=
  ∀ n, P11370737362125176402.a n = A063161 (n + 1)

end A063161

/-! ## A063161.P12677141013199942751

`A063218(n+1)+2*A017101(n)`
-/

namespace A063161.P12677141013199942751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063218 (n + 1) + 2 * A017101 n

end

end A063161.P12677141013199942751

namespace A063161

/-- `A063218(n+1)+2*A017101(n)` -/
def P12677141013199942751.Spec : Prop :=
  ∀ n, P12677141013199942751.a n = A063161 (n + 1)

end A063161

/-! ## A063161.P3192893389522369548

`A063200(n+1)+2*A017317(n)`
-/

namespace A063161.P3192893389522369548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063200 (n + 1) + 2 * A017317 n

end

end A063161.P3192893389522369548

namespace A063161

/-- `A063200(n+1)+2*A017317(n)` -/
def P3192893389522369548.Spec : Prop :=
  ∀ n, P3192893389522369548.a n = A063161 (n + 1)

end A063161

/-!
# A063162: Dimension of the space of weight 2n cusp forms for Gamma_0( 94 ).

The programs for A063162, the canonical program `A063162.P12810609293764076423` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063162 has offset 1).

The definition of A063162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063162.P12810609293764076423

`a(n-1)+24` with `a(0)=11, a(1)=34`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063162

/-- `a(n-1)+24` -/
def P12810609293764076423.Spec : Prop :=
  ∀ n, (P12810609293764076423.a n : ℤ) = A063162 (n + 1)

theorem P12810609293764076423.correct : P12810609293764076423.Spec := by
  intro n
  simp only [A063162, Nat.add_sub_cancel]

end A063162

/-!
# A063163: Composite numbers which in base 7 contain their largest proper factor as a substring.

The programs for A063163, there is no canonical definition to state claims against.
-/

/-! ## A063163.P9936036835873690765

`A084968(2%A059802(n+1)+n)`
-/

namespace A063163.P9936036835873690765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084968 (Int.tmod 2 (A059802 (n + 1)) + (n : ℤ)).toNat

end

end A063163.P9936036835873690765

/-! ## A063163.P14461627370617289091

`and(1, A146850(n+1))*A084968(n+2)`
-/

namespace A063163.P14461627370617289091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A146850 (n + 1)) * A084968 (n + 2)

end

end A063163.P14461627370617289091

/-! ## A063163.P17478685783230612740

`A181405((n+1)*(n+3)²)+A084968(n+2)`
-/

namespace A063163.P17478685783230612740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181405 ((n + 1) * (n + 3) ^ 2) + A084968 (n + 2)

end

end A063163.P17478685783230612740

/-! ## A063163.P7458030237965518968

`A084968(n+2)+A000007(A014216(n))`
-/

namespace A063163.P7458030237965518968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084968 (n + 2) + A000007 (A014216 n).toNat

end

end A063163.P7458030237965518968

/-! ## A063163.P17783276476761192320

`A165725(A010211(n)*A084968(n+2))`
-/

namespace A063163.P17783276476761192320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165725 (A010211 n * A084968 (n + 2)).toNat

end

end A063163.P17783276476761192320

/-!
# A063164: Dimension of the space of weight 2n cusp forms for Gamma_0( 96 ).

The programs for A063164, the canonical program `A063164.P7308328804671390351` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063164 has offset 1).

The definition of A063164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063164.P7308328804671390351

`a(n-1)+32` with `a(0)=9, a(1)=40`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063164

/-- `a(n-1)+32` -/
def P7308328804671390351.Spec : Prop :=
  ∀ n, (P7308328804671390351.a n : ℤ) = A063164 (n + 1)

theorem P7308328804671390351.correct : P7308328804671390351.Spec := by
  intro n
  simp only [A063164, Nat.add_sub_cancel]

end A063164

/-!
# A063165: Dimension of the space of weight 2n cusp forms for Gamma_0( 97 ).

The programs for A063165, the canonical program `A063165.P5147967105631691808` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063165 has offset 1).

The definition of A063165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063165.P5147967105631691808

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=7, a(1)=24, a(2)=40, a(3)=56, a(4)=72, a(5)=90`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063165

/-- `a(n-2)+a(n-3)-a(n-5)` -/
def P5147967105631691808.Spec : Prop :=
  ∀ n, P5147967105631691808.a n = A063165 (n + 1)

theorem P5147967105631691808.correct : P5147967105631691808.Spec := by
  intro n
  simp only [A063165, Nat.add_sub_cancel]

end A063165

/-! ## A063165.P9881953843748970322

`4*n+A063141(n+1)+2`
-/

namespace A063165.P9881953843748970322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (A063141 (n + 1) + 2)

end

end A063165.P9881953843748970322

namespace A063165

/-- `4*n+A063141(n+1)+2` -/
def P9881953843748970322.Spec : Prop :=
  ∀ n, P9881953843748970322.a n = A063165 (n + 1)

end A063165

/-! ## A063165.P15602133117940737447

`6*n+A063129(n+1)+3`
-/

namespace A063165.P15602133117940737447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) + (A063129 (n + 1) + 3)

end

end A063165.P15602133117940737447

namespace A063165

/-- `6*n+A063129(n+1)+3` -/
def P15602133117940737447.Spec : Prop :=
  ∀ n, P15602133117940737447.a n = A063165 (n + 1)

end A063165

/-! ## A063165.P13068631239194734531

`A063105(n+1)+10*n+5`
-/

namespace A063165.P13068631239194734531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063105 (n + 1) + (10 * n + 5 : ℤ)

end

end A063165.P13068631239194734531

namespace A063165

/-- `A063105(n+1)+10*n+5` -/
def P13068631239194734531.Spec : Prop :=
  ∀ n, P13068631239194734531.a n = A063165 (n + 1)

end A063165

/-! ## A063165.P2512604674411970956

`A063081(n+1)+14*n+7`
-/

namespace A063165.P2512604674411970956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063081 (n + 1) + (14 * n + 7 : ℤ)

end

end A063165.P2512604674411970956

namespace A063165

/-- `A063081(n+1)+14*n+7` -/
def P2512604674411970956.Spec : Prop :=
  ∀ n, P2512604674411970956.a n = A063165 (n + 1)

end A063165

/-! ## A063165.P16908566605482750234

`A063141(n+1)+A016825(n)`
-/

namespace A063165.P16908566605482750234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063141 (n + 1) + A016825 n

end

end A063165.P16908566605482750234

namespace A063165

/-- `A063141(n+1)+A016825(n)` -/
def P16908566605482750234.Spec : Prop :=
  ∀ n, P16908566605482750234.a n = A063165 (n + 1)

end A063165

/-! ## A063165.P934252300737338334

`A063129(n+1)+A016945(n)`
-/

namespace A063165.P934252300737338334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063129 (n + 1) + A016945 n

end

end A063165.P934252300737338334

namespace A063165

/-- `A063129(n+1)+A016945(n)` -/
def P934252300737338334.Spec : Prop :=
  ∀ n, P934252300737338334.a n = A063165 (n + 1)

end A063165

/-! ## A063165.P16700583338694916794

`A147587(n)+A063081(n+1)`
-/

namespace A063165.P16700583338694916794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 n + A063081 (n + 1)

end

end A063165.P16700583338694916794

namespace A063165

/-- `A147587(n)+A063081(n+1)` -/
def P16700583338694916794.Spec : Prop :=
  ∀ n, P16700583338694916794.a n = A063165 (n + 1)

end A063165

/-! ## A063165.P4668909419462486408

`A348845(n)-A063215(n+1)`
-/

namespace A063165.P4668909419462486408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n - A063215 (n + 1)

end

end A063165.P4668909419462486408

namespace A063165

/-- `A348845(n)-A063215(n+1)` -/
def P4668909419462486408.Spec : Prop :=
  ∀ n, P4668909419462486408.a n = A063165 (n + 1)

end A063165

/-! ## A063165.P15407420579298980298

`A063147(n+1)+A007310(n+1)`
-/

namespace A063165.P15407420579298980298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063147 (n + 1) + A007310 (n + 1)

end

end A063165.P15407420579298980298

namespace A063165

/-- `A063147(n+1)+A007310(n+1)` -/
def P15407420579298980298.Spec : Prop :=
  ∀ n, P15407420579298980298.a n = A063165 (n + 1)

end A063165

/-! ## A063165.P7281678977179703359

`A063224(n+1)+A063157(n+1)`
-/

namespace A063165.P7281678977179703359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063224 (n + 1) + A063157 (n + 1)

end

end A063165.P7281678977179703359

namespace A063165

/-- `A063224(n+1)+A063157(n+1)` -/
def P7281678977179703359.Spec : Prop :=
  ∀ n, P7281678977179703359.a n = A063165 (n + 1)

end A063165

/-! ## A063165.P1470317422598887782

`A090772(n+1)+A063135(n+1)`
-/

namespace A063165.P1470317422598887782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090772 (n + 1) + A063135 (n + 1)

end

end A063165.P1470317422598887782

namespace A063165

/-- `A090772(n+1)+A063135(n+1)` -/
def P1470317422598887782.Spec : Prop :=
  ∀ n, P1470317422598887782.a n = A063165 (n + 1)

end A063165

/-! ## A063165.P7344327719813010979

`A063142(n+1)-A047623(n+1)`
-/

namespace A063165.P7344327719813010979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063142 (n + 1) - A047623 (n + 1)

end

end A063165.P7344327719813010979

namespace A063165

/-- `A063142(n+1)-A047623(n+1)` -/
def P7344327719813010979.Spec : Prop :=
  ∀ n, P7344327719813010979.a n = A063165 (n + 1)

end A063165

/-! ## A063165.P3097459939088812026

`Δ[A008749(7*n)]-1`
-/

namespace A063165.P3097459939088812026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008749 (7 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A063165.P3097459939088812026

namespace A063165

/-- `Δ[A008749(7*n)]-1` -/
def P3097459939088812026.Spec : Prop :=
  ∀ n, P3097459939088812026.a n = A063165 (n + 1)

end A063165

/-! ## A063165.P11795889061594319502

`Δ[A008749(7*n)+A001489(n)]`
-/

namespace A063165.P11795889061594319502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008749 (7 * n) + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063165.P11795889061594319502

namespace A063165

/-- `Δ[A008749(7*n)+A001489(n)]` -/
def P11795889061594319502.Spec : Prop :=
  ∀ n, P11795889061594319502.a n = A063165 (n + 1)

end A063165

/-!
# A063166: Dimension of the space of weight 2n cusp forms for Gamma_0( 98 ).

The programs for A063166, the canonical program `A063166.P3560219568074107896` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063166 has offset 1).

The definition of A063166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063166.P3560219568074107896

`a(n-1)+28` with `a(0)=7, a(1)=34`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063166

/-- `a(n-1)+28` -/
def P3560219568074107896.Spec : Prop :=
  ∀ n, (P3560219568074107896.a n : ℤ) = A063166 (n + 1)

theorem P3560219568074107896.correct : P3560219568074107896.Spec := by
  intro n
  simp only [A063166, Nat.add_sub_cancel]

end A063166

/-!
# A063168: Dimension of the space of weight 2n cusp forms for Gamma_0( 100 ).

The programs for A063168, the canonical program `A063168.P13592748858365207877` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063168 has offset 1).

The definition of A063168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063168.P13592748858365207877

`a(n-1)+30` with `a(0)=7, a(1)=36`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063168

/-- `a(n-1)+30` -/
def P13592748858365207877.Spec : Prop :=
  ∀ n, (P13592748858365207877.a n : ℤ) = A063168 (n + 1)

theorem P13592748858365207877.correct : P13592748858365207877.Spec := by
  intro n
  simp only [A063168, Nat.add_sub_cancel]

end A063168

/-!
# A063169: a(n) = n*A001865(n).

The programs for A063169, the canonical program `A063169.P13322934323422168039` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063169 has offset 1).

The definition of A063169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063169.P13322934323422168039

`∑{#}[n, C(n+1, #+1)*(n+1-(#+1))^(n+1-(#+1))*(#+1)^(#+1)]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063169

/-- `∑{#}[n, C(n+1, #+1)*(n+1-(#+1))^(n+1-(#+1))*(#+1)^(#+1)]` -/
def P13322934323422168039.Spec : Prop :=
  ∀ n, P13322934323422168039.a n = (A063169 (n + 1) : ℚ)

end A063169

/-! ## A063169.P6719929572419211472

`(n+1)*A001865(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063169.P6719929572419211472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001865 (n + 1)

end

end A063169.P6719929572419211472

namespace A063169

/-- `(n+1)*A001865(n+1)` -/
def P6719929572419211472.Spec : Prop :=
  ∀ n, P6719929572419211472.a n = A063169 (n + 1)

end A063169

/-! ## A063169.P12136406699596670148

`A063170(n+1)-(n+1)^(n+1)`
-/

namespace A063169.P12136406699596670148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063170 (n + 1) - ((n + 1) ^ (n + 1) : ℤ)

end

end A063169.P12136406699596670148

namespace A063169

/-- `A063170(n+1)-(n+1)^(n+1)` -/
def P12136406699596670148.Spec : Prop :=
  ∀ n, P12136406699596670148.a n = A063169 (n + 1)

end A063169

/-! ## A063169.P4305813124445599254

`∑{#}[n, (n+1)^#*(n+1)!/#!]`
-/

namespace A063169.P4305813124445599254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((n + 1) ^ k * Nat.factorial (n + 1) : ℚ) / (Nat.factorial k : ℚ)

end

end A063169.P4305813124445599254

namespace A063169

/-- `∑{#}[n, (n+1)^#*(n+1)!/#!]` -/
def P4305813124445599254.Spec : Prop :=
  ∀ n, P4305813124445599254.a n = (A063169 (n + 1) : ℚ)

end A063169

/-! ## A063169.P3646536205061058874

`A398192(∑[n+1]+1)`
-/

namespace A063169.P3646536205061058874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398192 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A063169.P3646536205061058874

namespace A063169

/-- `A398192(∑[n+1]+1)` -/
def P3646536205061058874.Spec : Prop :=
  ∀ n, P3646536205061058874.a n = A063169 (n + 1)

end A063169

/-! ## A063169.P13887550699430303505

`A394081(∑[n+1]+n)`
-/

namespace A063169.P13887550699430303505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394081 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A063169.P13887550699430303505

namespace A063169

/-- `A394081(∑[n+1]+n)` -/
def P13887550699430303505.Spec : Prop :=
  ∀ n, P13887550699430303505.a n = A063169 (n + 1)

end A063169

/-! ## A063169.P1690080305301836051

`(n+1)*record[A350078(n)]`
-/

namespace A063169.P1690080305301836051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063169.P1690080305301836051

namespace A063169

/-- `(n+1)*record[A350078(n)]` -/
def P1690080305301836051.Spec : Prop :=
  ∀ n, P1690080305301836051.a n = A063169 (n + 1)

end A063169

/-! ## A063169.P17320617739829342812

`(n+1)*record[A350079(n)]`
-/

namespace A063169.P17320617739829342812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063169.P17320617739829342812

namespace A063169

/-- `(n+1)*record[A350079(n)]` -/
def P17320617739829342812.Spec : Prop :=
  ∀ n, P17320617739829342812.a n = A063169 (n + 1)

end A063169

/-! ## A063169.P9836025669719686410

`(n+1)*A060281(∑[n]+1)`
-/

namespace A063169.P9836025669719686410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A060281 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A063169.P9836025669719686410

namespace A063169

/-- `(n+1)*A060281(∑[n]+1)` -/
def P9836025669719686410.Spec : Prop :=
  ∀ n, P9836025669719686410.a n = A063169 (n + 1)

end A063169

/-! ## A063169.P18345167158296224564

`(n+1)*A209324(∑[n+1])`
-/

namespace A063169.P18345167158296224564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A209324 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063169.P18345167158296224564

namespace A063169

/-- `(n+1)*A209324(∑[n+1])` -/
def P18345167158296224564.Spec : Prop :=
  ∀ n, P18345167158296224564.a n = A063169 (n + 1)

end A063169

/-!
# A063170: Schenker sums with n-th term.

The programs for A063170, the canonical program `A063170.P6367823103348589224` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063170 has offset 0).

The definition of A063170 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063170.P6367823103348589224

`∑{#}[n, C(n, #)*(n+#)^#*(-#)^(n-#)]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063170

/-- `∑{#}[n, C(n, #)*(n+#)^#*(-#)^(n-#)]` -/
def P6367823103348589224.Spec : Prop :=
  ∀ n, P6367823103348589224.a n = (A063170 n : ℚ)

end A063170

/-! ## A063170.P15837624106031855234

`∑{#}[n, n^#*n!/#!]`
-/

namespace A063170.P15837624106031855234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (n ^ k * Nat.factorial n : ℚ) / (Nat.factorial k : ℚ)

end

end A063170.P15837624106031855234

namespace A063170

/-- `∑{#}[n, n^#*n!/#!]` -/
def P15837624106031855234.Spec : Prop :=
  ∀ n, P15837624106031855234.a n = (A063170 n : ℚ)

end A063170

/-! ## A063170.P17661222330586247161

`A398187(∑[n])`
-/

namespace A063170.P17661222330586247161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398187 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063170.P17661222330586247161

namespace A063170

/-- `A398187(∑[n])` -/
def P17661222330586247161.Spec : Prop :=
  ∀ n, P17661222330586247161.a n = A063170 n

end A063170

/-! ## A063170.P3126328589045547697

`A398192(∑[n])`
-/

namespace A063170.P3126328589045547697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398192 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063170.P3126328589045547697

namespace A063170

/-- `A398192(∑[n])` -/
def P3126328589045547697.Spec : Prop :=
  ∀ n, P3126328589045547697.a n = A063170 n

end A063170

/-! ## A063170.P14807464795882471761

`record[A398187(n)]`
-/

namespace A063170.P14807464795882471761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063170.P14807464795882471761

namespace A063170

/-- `record[A398187(n)]` -/
def P14807464795882471761.Spec : Prop :=
  ∀ n, P14807464795882471761.a n = A063170 n

end A063170

/-! ## A063170.P9479428871721671949

`record[A398192(n)]`
-/

namespace A063170.P9479428871721671949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063170.P9479428871721671949

namespace A063170

/-- `record[A398192(n)]` -/
def P9479428871721671949.Spec : Prop :=
  ∀ n, P9479428871721671949.a n = A063170 n

end A063170

/-! ## A063170.P16796166664291577279

`A089901(n)-n^(n+1)`
-/

namespace A063170.P16796166664291577279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089901 n - (n ^ (n + 1) : ℤ)

end

end A063170.P16796166664291577279

namespace A063170

/-- `A089901(n)-n^(n+1)` -/
def P16796166664291577279.Spec : Prop :=
  ∀ n, P16796166664291577279.a n = A063170 n

end A063170

/-! ## A063170.P8053328324683259437

`record[A244137(n)]-A219706(n)`
-/

namespace A063170.P8053328324683259437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A219706 n

end

end A063170.P8053328324683259437

namespace A063170

/-- `record[A244137(n)]-A219706(n)` -/
def P8053328324683259437.Spec : Prop :=
  ∀ n, P8053328324683259437.a n = A063170 n

end A063170

/-! ## A063170.P10871389408619566376

`A304866(n+1)+A190314(n)`
-/

namespace A063170.P10871389408619566376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304866 (n + 1) + A190314 n

end

end A063170.P10871389408619566376

namespace A063170

/-- `A304866(n+1)+A190314(n)` -/
def P10871389408619566376.Spec : Prop :=
  ∀ n, P10871389408619566376.a n = A063170 n

end A063170

/-! ## A063170.P14104241459113948025

`A228154(∑[n]+1)-A219706(n)`
-/

namespace A063170.P14104241459113948025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228154 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A219706 n

end

end A063170.P14104241459113948025

namespace A063170

/-- `A228154(∑[n]+1)-A219706(n)` -/
def P14104241459113948025.Spec : Prop :=
  ∀ n, P14104241459113948025.a n = A063170 n

end A063170

/-!
# A063171: Dyck language interpreted as binary numbers in ascending order.

The programs for A063171, there is no canonical definition to state claims against.
-/

/-! ## A063171.P14030433363532957962

`A071152(n)/2`
-/

namespace A063171.P14030433363532957962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071152 n : ℚ) / 2

end

end A063171.P14030433363532957962

/-! ## A063171.P1991333683941841473

`A007088(A014486(n))`
-/

namespace A063171.P1991333683941841473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A014486 n).toNat

end

end A063171.P1991333683941841473

/-! ## A063171.P2125988821376978266

`A099820(A057520(n))`
-/

namespace A063171.P2125988821376978266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 (A057520 n).toNat

end

end A063171.P2125988821376978266

/-! ## A063171.P8746053010932538173

`A007088(2*A057520(n))`
-/

namespace A063171.P8746053010932538173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * A057520 n).toNat

end

end A063171.P8746053010932538173

/-! ## A063171.P3863612536554813354

`A099820(A014486(n)/2)`
-/

namespace A063171.P3863612536554813354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 (SequenceMachineLib.roundAway ((A014486 n : ℚ) / 2)).toNat

end

end A063171.P3863612536554813354

/-! ## A063171.P5684310662581719957

`A007088(A057520(n)+A057520(n))`
-/

namespace A063171.P5684310662581719957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A057520 n + A057520 n).toNat

end

end A063171.P5684310662581719957

/-! ## A063171.P10712752572947304030

`A007088(∑[A085192(n)]-A085192(n))`
-/

namespace A063171.P10712752572947304030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ j ∈ Finset.range (n + 1), f1 j - A085192 n).toNat

end

end A063171.P10712752572947304030

/-! ## A063171.P17518013119040751319

`A185544(A194045(n))`
-/

namespace A063171.P17518013119040751319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A194045 n).toNat

end

end A063171.P17518013119040751319

/-! ## A063171.P480659813817038003

`A185544(2*A014486(n))`
-/

namespace A063171.P480659813817038003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A014486 n).toNat

end

end A063171.P480659813817038003

/-! ## A063171.P5166544735581921106

`A185544(4*A057520(n))`
-/

namespace A063171.P5166544735581921106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (4 * A057520 n).toNat

end

end A063171.P5166544735581921106

/-! ## A063171.P1503210022388314450

`A169965(A014486(n)+1)/2`
-/

namespace A063171.P1503210022388314450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169965 (A014486 n + 1).toNat : ℚ) / 2

end

end A063171.P1503210022388314450

/-! ## A063171.P7658342787700792110

`A024630(2*A014486(n))/2`
-/

namespace A063171.P7658342787700792110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024630 (2 * A014486 n).toNat : ℚ) / 2

end

end A063171.P7658342787700792110

/-! ## A063171.P439614765290091026

`A169965(or(1, A014486(n)))/2`
-/

namespace A063171.P439614765290091026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169965 (Int.lor 1 (A014486 n)).toNat : ℚ) / 2

end

end A063171.P439614765290091026

/-! ## A063171.P4255741591556305542

`A169965(xor(1, A014486(n)))/2`
-/

namespace A063171.P4255741591556305542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169965 (Int.xor 1 (A014486 n)).toNat : ℚ) / 2

end

end A063171.P4255741591556305542

/-!
# A063173: Prime-composite array T(m,n): highest power of the n-th prime that divides the m-th composite, read by antidiagonals.

The programs for A063173, the canonical program `A063173.P15522695692086999954` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063173 has offset 1).

The definition of A063173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063173.P15522695692086999954

`val(A002808(A004736(n+1)), A037126(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A063173

/-- `val(A002808(A004736(n+1)), A037126(n+1))` -/
def P15522695692086999954.Spec : Prop :=
  ∀ n, (P15522695692086999954.a n : ℤ) = A063173 (n + 1)

theorem P15522695692086999954.correct : P15522695692086999954.Spec := by
  intro n
  simp only [A063173, Nat.add_sub_cancel]

end A063173

/-! ## A063173.P9615317955532075170

`val(A026239(A104887(n+1)), A037126(n+1))`
-/

namespace A063173.P9615317955532075170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A026239 (A104887 (n + 1)).toNat).toNat (A037126 (n + 1)).toNat

end

end A063173.P9615317955532075170

namespace A063173

/-- `val(A026239(A104887(n+1)), A037126(n+1))` -/
def P9615317955532075170.Spec : Prop :=
  ∀ n, (P9615317955532075170.a n : ℤ) = A063173 (n + 1)

end A063173

/-! ## A063173.P11166413440032031204

`A343222(A068989(n+3)-A038772(3*n+5))`
-/

namespace A063173.P11166413440032031204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343222 (A068989 (n + 3) - A038772 (3 * n + 5)).toNat

end

end A063173.P11166413440032031204

namespace A063173

/-- `A343222(A068989(n+3)-A038772(3*n+5))` -/
def P11166413440032031204.Spec : Prop :=
  ∀ n, P11166413440032031204.a n = A063173 (n + 1)

end A063173

/-!
# A063174: Composites for which the row of the prime-composite array (A063173) includes the leftmost element of a zero-only antidiagonal.

The programs for A063174, there is no canonical definition to state claims against.
-/

/-! ## A063174.P9061985300106619239

`A018252(A014617(n+1))+1`
-/

namespace A063174.P9061985300106619239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A014617 (n + 1)).toNat + 1

end

end A063174.P9061985300106619239

/-! ## A063174.P3624802157326090018

`A002808(A014617(n+1))`
-/

namespace A063174.P3624802157326090018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A014617 (n + 1)).toNat

end

end A063174.P3624802157326090018

/-! ## A063174.P5465719946561664319

`A141468(A014617(n+1)+2)`
-/

namespace A063174.P5465719946561664319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A014617 (n + 1) + 2).toNat

end

end A063174.P5465719946561664319

/-! ## A063174.P16615978025247584230

`A113521(A014617(n+1)+1)`
-/

namespace A063174.P16615978025247584230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113521 (A014617 (n + 1) + 1).toNat

end

end A063174.P16615978025247584230

/-! ## A063174.P13349040477644857256

`A065090(A014617(n+1)+2)`
-/

namespace A063174.P13349040477644857256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (A014617 (n + 1) + 2).toNat

end

end A063174.P13349040477644857256

/-! ## A063174.P15860285605382299807

`A122825(A014617(n+1)+2)`
-/

namespace A063174.P15860285605382299807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122825 (A014617 (n + 1) + 2).toNat

end

end A063174.P15860285605382299807

/-! ## A063174.P12569428200433199685

`A067747(2*A014617(n+1))`
-/

namespace A063174.P12569428200433199685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 * A014617 (n + 1)).toNat

end

end A063174.P12569428200433199685

/-!
# A063175: Composites for which the row of the prime-composite array (A063173) includes the leftmost element of a zero-only diagonal (A067677).

The programs for A063175, there is no canonical definition to state claims against.
-/

/-! ## A063175.P13183334645491943520

`A002808(A067677(n+1))`
-/

namespace A063175.P13183334645491943520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A067677 (n + 1)).toNat

end

end A063175.P13183334645491943520

/-! ## A063175.P9027694554192912820

`A018252(A067677(1+n)+1)`
-/

namespace A063175.P9027694554192912820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A067677 (1 + n) + 1).toNat

end

end A063175.P9027694554192912820

/-! ## A063175.P9975900558949637900

`A072668(A067677(n+1)+1)`
-/

namespace A063175.P9975900558949637900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (A067677 (n + 1) + 1).toNat

end

end A063175.P9975900558949637900

/-! ## A063175.P14714157705902781648

`A113521(A067677(n+1)+1)`
-/

namespace A063175.P14714157705902781648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113521 (A067677 (n + 1) + 1).toNat

end

end A063175.P14714157705902781648

/-! ## A063175.P16456379894719498710

`A065090(A067677(n+1)+2)`
-/

namespace A063175.P16456379894719498710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (A067677 (n + 1) + 2).toNat

end

end A063175.P16456379894719498710

/-!
# A063176: Composites for which the row of the prime-composite array (A063173) includes the leftmost element of both a zero-only antidiagonal and a zero-only diagonal(A067681).

The programs for A063176, there is no canonical definition to state claims against.
-/

/-! ## A063176.P10139347625145398782

`∩[A063174(n+1), A063175(n+1)]`
-/

namespace A063176.P10139347625145398782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063176.P10139347625145398782

/-! ## A063176.P10854142845399509373

`A002808(A067681(n+1))`
-/

namespace A063176.P10854142845399509373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A067681 (n + 1)).toNat

end

end A063176.P10854142845399509373

/-! ## A063176.P15733702630352050249

`A018252(A067681(n+1)+1)`
-/

namespace A063176.P15733702630352050249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A067681 (n + 1) + 1).toNat

end

end A063176.P15733702630352050249

/-! ## A063176.P15729286316390822160

`A141468(A067681(n+1)+2)`
-/

namespace A063176.P15729286316390822160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A067681 (n + 1) + 2).toNat

end

end A063176.P15729286316390822160

/-! ## A063176.P10902920614760728698

`A072668(A067681(n+1)+1)`
-/

namespace A063176.P10902920614760728698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (A067681 (n + 1) + 1).toNat

end

end A063176.P10902920614760728698

/-! ## A063176.P18187304520704385079

`A113521(A067681(n+1)+1)`
-/

namespace A063176.P18187304520704385079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113521 (A067681 (n + 1) + 1).toNat

end

end A063176.P18187304520704385079

/-!
# A063178: Hexagonal spiral sequence: sequence is written as a hexagonal spiral around a 'dummy' center, each entry is the sum of the row in the previous direction containing the previous entry.

The programs for A063178, there is no canonical definition to state claims against.
-/

/-! ## A063178.P8982086675196084600

`A205387(A148940(n))+ceil((n-1)/gcd(2, n))`
-/

namespace A063178.P8982086675196084600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205387 (A148940 n).toNat + ⌈((n : ℤ) - 1 : ℚ) / (Nat.gcd 2 n : ℚ)⌉

end

end A063178.P8982086675196084600

/-! ## A063178.P15527751713717629720

`A000196(A280917(n)+A005663(n))`
-/

namespace A063178.P15527751713717629720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A280917 n + A005663 n).toNat

end

end A063178.P15527751713717629720

/-! ## A063178.P16866484935604300319

`A347050(A100684(n))+A005672(n)`
-/

namespace A063178.P16866484935604300319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347050 (A100684 n).toNat + A005672 n

end

end A063178.P16866484935604300319

/-! ## A063178.P4255362781304711854

`A325835(A037953(n))+A325548(n)`
-/

namespace A063178.P4255362781304711854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325835 (A037953 n).toNat + A325548 n

end

end A063178.P4255362781304711854

/-! ## A063178.P14450763604705825630

`A135034(A005663(n)-A030308(n))`
-/

namespace A063178.P14450763604705825630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 (A005663 n - A030308 n).toNat

end

end A063178.P14450763604705825630

/-!
# A063179: Di-Boustrophedon transform of (1,0,0,0,...): Fill in an array by diagonals alternating in the 'up' and 'down' directions. The n-th diagonal starts with the n-th element of (1,0,0,0,...). When going in the 'up' direction the next element is the sum of the previous element of the diagonal and the previous two elements of the row the new element is in. When going in the 'down' direction the next element is the sum of the previous element of the diagonal and the previous two elements of the column the new element is in. The final element of the n-th diagonal is a(n).

The programs for A063179, there is no canonical definition to state claims against.
-/

/-! ## A063179.P9776564943409034313

`A063180(∑[n+1])`
-/

namespace A063179.P9776564943409034313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063180 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063179.P9776564943409034313

/-! ## A063179.P8677856968965656628

`A063181(A131179(n+1))`
-/

namespace A063179.P8677856968965656628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063181 (A131179 (n + 1)).toNat

end

end A063179.P8677856968965656628

/-! ## A063179.P15958521304558001218

`A063181(A374084(n+1))`
-/

namespace A063179.P15958521304558001218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063181 (A374084 (n + 1)).toNat

end

end A063179.P15958521304558001218

/-! ## A063179.P8467841063115152604

`A063180(A008795(2*n+3))%A118752(n)`
-/

namespace A063179.P8467841063115152604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063180 (A008795 (2 * n + 3)).toNat) (A118752 n)

end

end A063179.P8467841063115152604

/-! ## A063179.P14948003432420301616

`A063415(∑[n])`
-/

namespace A063179.P14948003432420301616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063415 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063179.P14948003432420301616

/-!
# A063180: The array of A063179 read by diagonals in direction of creation.

The programs for A063180, there is no canonical definition to state claims against.
-/

/-! ## A063180.P16768770858897642944

`A063181(A056023(n+1))`
-/

namespace A063180.P16768770858897642944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063181 (A056023 (n + 1)).toNat

end

end A063180.P16768770858897642944

/-! ## A063180.P1038651436601422639

`A282691(A059432(n))`
-/

namespace A063180.P1038651436601422639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282691 (A059432 n).toNat

end

end A063180.P1038651436601422639

/-! ## A063180.P1465355279915270232

`A329362(A185081(n)²)`
-/

namespace A063180.P1465355279915270232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329362 (A185081 n ^ 2).toNat

end

end A063180.P1465355279915270232

/-! ## A063180.P5864126395186121196

`A255270(A092481(n+3)*A191646(n))`
-/

namespace A063180.P5864126395186121196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (A092481 (n + 3) * A191646 n).toNat

end

end A063180.P5864126395186121196

/-!
# A063181: The array of A063179 read by diagonals in the 'up' direction.

The programs for A063181, there is no canonical definition to state claims against.
-/

/-! ## A063181.P17699281847072709667

`A063180(A056023(1+n))`
-/

namespace A063181.P17699281847072709667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063180 (A056023 (1 + n)).toNat

end

end A063181.P17699281847072709667

/-!
# A063182: Number of cyclic subgroups of the group S_n X S_n (where S_n is the symmetric group of degree n).

The programs for A063182, there is no canonical definition to state claims against.
-/

/-! ## A063182.P12729093068785362236

`A171086(A198093(n+1)-A185595(n+1))`
-/

namespace A063182.P12729093068785362236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171086 (A198093 (n + 1) - A185595 (n + 1)).toNat

end

end A063182.P12729093068785362236

/-!
# A063184: Engel expansion of Sum_{k>=0} 1/(1 + k)^k.

The programs for A063184, there is no canonical definition to state claims against.
-/

/-! ## A063184.P11795045946545044930

`A366103(a(n-1)²)` with `a(0)=1, a(1)=2`
-/

namespace A063184.P11795045946545044930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A366103 (a (n - 1) ^ 2).toNat

end

end A063184.P11795045946545044930

/-!
# A063185: Engel expansion of Sum_{k>=0} 1/(2 + k)^k.

The programs for A063185, there is no canonical definition to state claims against.
-/

/-! ## A063185.P2776392101752435301

`or(floor(5*2^(n-2)), A088931(floor(5*2^(n-2))))`
-/

namespace A063185.P2776392101752435301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊5 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋ (A088931 ⌊5 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋.toNat)

end

end A063185.P2776392101752435301

/-!
# A063187: Engel expansion of Sum_{k>=0} 1/(4 + k)^k.

The programs for A063187, there is no canonical definition to state claims against.
-/

/-! ## A063187.P4021342816516713037

`A359360(A296953(3*n)+1)+A048994(n)`
-/

namespace A063187.P4021342816516713037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359360 (A296953 (3 * n) + 1).toNat + A048994 n

end

end A063187.P4021342816516713037

/-!
# A063189: Engel expansion of Sum_{k>=0} 1/(6 + k)^k.

The programs for A063189, there is no canonical definition to state claims against.
-/

/-! ## A063189.P9450373475880900676

`A090369(A018782(n+1))+A018777(n+1)`
-/

namespace A063189.P9450373475880900676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090369 (A018782 (n + 1)).toNat + A018777 (n + 1)

end

end A063189.P9450373475880900676

/-!
# A063195: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 6 ).

The programs for A063195, the canonical program `A063195.P1630113690537469423` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063195 has offset 1).

The definition of A063195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063195.P1630113690537469423

`or(1, a(n-3)+n%2)` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063195

/-- `or(1, a(n-3)+n%2)` -/
def P1630113690537469423.Spec : Prop :=
  ∀ n, (P1630113690537469423.a n : ℤ) = A063195 (n + 1)

theorem P1630113690537469423.correct : P1630113690537469423.Spec := by
  intro n
  simp only [A063195, Nat.add_sub_cancel]

end A063195

/-! ## A063195.P138625130337860638

`or(1, a(n-3)+and(1, n))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A063195.P138625130337860638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  Nat.lor 1 (a (n - 3) + Nat.land 1 n)

end

end A063195.P138625130337860638

namespace A063195

/-- `or(1, a(n-3)+and(1, n))` -/
def P138625130337860638.Spec : Prop :=
  ∀ n, (P138625130337860638.a n : ℤ) = A063195 (n + 1)

theorem P138625130337860638.correct : P138625130337860638.Spec := by
  intro n
  simp only [A063195, Nat.add_sub_cancel, A063195.P138625130337860638.a, A063195.P1630113690537469423.a, SequenceMachineLib.memo_apply]
  try simp

end A063195

/-! ## A063195.P1352808699351337663

`a(n-3)+2*and(1, n)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A063195.P1352808699351337663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1] fun n a =>
  a (n - 3) + 2 * Nat.land 1 n

end

end A063195.P1352808699351337663

namespace A063195

/-- `a(n-3)+2*and(1, n)` -/
def P1352808699351337663.Spec : Prop :=
  ∀ n, (P1352808699351337663.a n : ℤ) = A063195 (n + 1)

end A063195

/-! ## A063195.P10687987119016460262

`or(1, a(n-3)-(-1)^n)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A063195.P10687987119016460262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  Int.lor 1 (a (n - 3) - (-1) ^ n)

end

end A063195.P10687987119016460262

namespace A063195

/-- `or(1, a(n-3)-(-1)^n)` -/
def P10687987119016460262.Spec : Prop :=
  ∀ n, P10687987119016460262.a n = A063195 (n + 1)

end A063195

/-! ## A063195.P4722225050523194326

`2*floor((n-a(n-1))/4)+1` with `a(0)=0`
-/

namespace A063195.P4722225050523194326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * ⌊((n : ℤ) - a (n - 1) : ℚ) / 4⌋ + 1

end

end A063195.P4722225050523194326

namespace A063195

/-- `2*floor((n-a(n-1))/4)+1` -/
def P4722225050523194326.Spec : Prop :=
  ∀ n, P4722225050523194326.a n = A063195 (n + 1)

end A063195

/-! ## A063195.P10737001393962778099

`gcd(3, n+1)+a(n-2)-1` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A063195.P10737001393962778099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  (Nat.gcd 3 (n + 1) : ℤ) + (a (n - 2) - 1)

end

end A063195.P10737001393962778099

namespace A063195

/-- `gcd(3, n+1)+a(n-2)-1` -/
def P10737001393962778099.Spec : Prop :=
  ∀ n, P10737001393962778099.a n = A063195 (n + 1)

end A063195

/-! ## A063195.P9232441471236390440

`(2*comp[comp[3*n]+n]+1)%comp[3*n]`
-/

namespace A063195.P9232441471236390440
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) % SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

end

end A063195.P9232441471236390440

namespace A063195

/-- `(2*comp[comp[3*n]+n]+1)%comp[3*n]` -/
def P9232441471236390440.Spec : Prop :=
  ∀ n, (P9232441471236390440.a n : ℤ) = A063195 (n + 1)

end A063195

/-! ## A063195.P1544392453993845293

`A063081(n+1)-2*n`
-/

namespace A063195.P1544392453993845293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063081 (n + 1) - (2 * n : ℤ)

end

end A063195.P1544392453993845293

namespace A063195

/-- `A063081(n+1)-2*n` -/
def P1544392453993845293.Spec : Prop :=
  ∀ n, P1544392453993845293.a n = A063195 (n + 1)

end A063195

/-! ## A063195.P16307640605995531258

`Δ[n²]-A063199(n+1)`
-/

namespace A063195.P16307640605995531258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A063199 (n + 1)

end

end A063195.P16307640605995531258

namespace A063195

/-- `Δ[n²]-A063199(n+1)` -/
def P16307640605995531258.Spec : Prop :=
  ∀ n, P16307640605995531258.a n = A063195 (n + 1)

end A063195

/-! ## A063195.P12432272331394426136

`A004273(Δ[A001399(n)])`
-/

namespace A063195.P12432272331394426136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (f1 (n + 1) - f1 n).toNat

end

end A063195.P12432272331394426136

namespace A063195

/-- `A004273(Δ[A001399(n)])` -/
def P12432272331394426136.Spec : Prop :=
  ∀ n, P12432272331394426136.a n = A063195 (n + 1)

end A063195

/-! ## A063195.P14476799403075713605

`A004273(A011960(n+1))`
-/

namespace A063195.P14476799403075713605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A011960 (n + 1)).toNat

end

end A063195.P14476799403075713605

namespace A063195

/-- `A004273(A011960(n+1))` -/
def P14476799403075713605.Spec : Prop :=
  ∀ n, P14476799403075713605.a n = A063195 (n + 1)

end A063195

/-! ## A063195.P12608246160216788539

`A004525(A063198(n+1))`
-/

namespace A063195.P12608246160216788539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A063198 (n + 1)).toNat

end

end A063195.P12608246160216788539

namespace A063195

/-- `A004525(A063198(n+1))` -/
def P12608246160216788539.Spec : Prop :=
  ∀ n, P12608246160216788539.a n = A063195 (n + 1)

end A063195

/-! ## A063195.P2007213663987529502

`A004273(A103221(n+1))`
-/

namespace A063195.P2007213663987529502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A103221 (n + 1)).toNat

end

end A063195.P2007213663987529502

namespace A063195

/-- `A004273(A103221(n+1))` -/
def P2007213663987529502.Spec : Prop :=
  ∀ n, P2007213663987529502.a n = A063195 (n + 1)

end A063195

/-! ## A063195.P6359925650778565907

`A065033(n)-A008612(n)`
-/

namespace A063195.P6359925650778565907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n - A008612 n

end

end A063195.P6359925650778565907

namespace A063195

/-- `A065033(n)-A008612(n)` -/
def P6359925650778565907.Spec : Prop :=
  ∀ n, P6359925650778565907.a n = A063195 (n + 1)

end A063195

/-! ## A063195.P7534413274022741511

`A016825(n)-A063203(n+1)`
-/

namespace A063195.P7534413274022741511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A063203 (n + 1)

end

end A063195.P7534413274022741511

namespace A063195

/-- `A016825(n)-A063203(n+1)` -/
def P7534413274022741511.Spec : Prop :=
  ∀ n, P7534413274022741511.a n = A063195 (n + 1)

end A063195

/-! ## A063195.P5639033780822904728

`A063105(n+1)-A016933(n)`
-/

namespace A063195.P5639033780822904728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063105 (n + 1) - A016933 n

end

end A063195.P5639033780822904728

namespace A063195

/-- `A063105(n+1)-A016933(n)` -/
def P5639033780822904728.Spec : Prop :=
  ∀ n, P5639033780822904728.a n = A063195 (n + 1)

end A063195

/-! ## A063195.P1576669554367680147

`A017113(n)-A063215(n+1)`
-/

namespace A063195.P1576669554367680147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 n - A063215 (n + 1)

end

end A063195.P1576669554367680147

namespace A063195

/-- `A017113(n)-A063215(n+1)` -/
def P1576669554367680147.Spec : Prop :=
  ∀ n, P1576669554367680147.a n = A063195 (n + 1)

end A063195

/-! ## A063195.P16169574387169817533

`A063129(n+1)-A017317(n)`
-/

namespace A063195.P16169574387169817533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063129 (n + 1) - A017317 n

end

end A063195.P16169574387169817533

namespace A063195

/-- `A063129(n+1)-A017317(n)` -/
def P16169574387169817533.Spec : Prop :=
  ∀ n, P16169574387169817533.a n = A063195 (n + 1)

end A063195

/-! ## A063195.P9396082480724134871

`A017329(n)-A063223(n+1)`
-/

namespace A063195.P9396082480724134871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n - A063223 (n + 1)

end

end A063195.P9396082480724134871

namespace A063195

/-- `A017329(n)-A063223(n+1)` -/
def P9396082480724134871.Spec : Prop :=
  ∀ n, P9396082480724134871.a n = A063195 (n + 1)

end A063195

/-! ## A063195.P6232696589585778622

`A063141(n+1)-A017581(n)`
-/

namespace A063195.P6232696589585778622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063141 (n + 1) - A017581 n

end

end A063195.P6232696589585778622

namespace A063195

/-- `A063141(n+1)-A017581(n)` -/
def P6232696589585778622.Spec : Prop :=
  ∀ n, P6232696589585778622.a n = A063195 (n + 1)

end A063195

/-!
# A063196: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 7 ).

The programs for A063196, the canonical program `A063196.P6542515056253574600` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063196 has offset 1).

The definition of A063196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063196.P6542515056253574600

`2*n-a(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063196

/-- `2*n-a(n-1)` -/
def P6542515056253574600.Spec : Prop :=
  ∀ n, P6542515056253574600.a n = A063196 (n + 1)

theorem P6542515056253574600.correct : P6542515056253574600.Spec := by
  intro n
  simp only [A063196, Nat.add_sub_cancel]

end A063196

/-! ## A063196.P11948882226529093179

`ogf((x+2x^2-x^3)/(1-x-x^2+x^3))`
-/

namespace A063196.P11948882226529093179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, -1] [1, -1, -1, 1] n

end

end A063196.P11948882226529093179

namespace A063196

/-- `ogf((x+2x^2-x^3)/(1-x-x^2+x^3))` -/
def P11948882226529093179.Spec : Prop :=
  ∀ n, P11948882226529093179.a n = A063196 (n + 1)

end A063196

/-! ## A063196.P6682007573378160618

`or(n, floor(atan(n)))`
-/

namespace A063196.P6682007573378160618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌊Real.arctan (n : ℝ)⌋

end

end A063196.P6682007573378160618

namespace A063196

/-- `or(n, floor(atan(n)))` -/
def P6682007573378160618.Spec : Prop :=
  ∀ n, P6682007573378160618.a n = A063196 (n + 1)

end A063196

/-! ## A063196.P17132507469455970477

`or(n, ceil(abs(sin(n))))`
-/

namespace A063196.P17132507469455970477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌈|Real.sin (n : ℝ)|⌉

end

end A063196.P17132507469455970477

namespace A063196

/-- `or(n, ceil(abs(sin(n))))` -/
def P17132507469455970477.Spec : Prop :=
  ∀ n, P17132507469455970477.a n = A063196 (n + 1)

end A063196

/-! ## A063196.P10490474301327562098

`or(n, ceil(sin(n)²))`
-/

namespace A063196.P10490474301327562098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A063196.P10490474301327562098

namespace A063196

/-- `or(n, ceil(sin(n)²))` -/
def P10490474301327562098.Spec : Prop :=
  ∀ n, P10490474301327562098.a n = A063196 (n + 1)

end A063196

/-! ## A063196.P14534893523474659845

`or(n, round(sqrt(atan(n))))`
-/

namespace A063196.P14534893523474659845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (SequenceMachineLib.roundAway (Real.sqrt (Real.arctan (n : ℝ))))

end

end A063196.P14534893523474659845

namespace A063196

/-- `or(n, round(sqrt(atan(n))))` -/
def P14534893523474659845.Spec : Prop :=
  ∀ n, P14534893523474659845.a n = A063196 (n + 1)

end A063196

/-! ## A063196.P13947001945146562861

`or(n, ceil(tanh(sqrt(n))))`
-/

namespace A063196.P13947001945146562861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌈Real.tanh (Real.sqrt (n : ℝ))⌉

end

end A063196.P13947001945146562861

namespace A063196

/-- `or(n, ceil(tanh(sqrt(n))))` -/
def P13947001945146562861.Spec : Prop :=
  ∀ n, P13947001945146562861.a n = A063196 (n + 1)

end A063196

/-! ## A063196.P18089215190017927109

`or(n, round(tanh(sqrt(n))))`
-/

namespace A063196.P18089215190017927109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (SequenceMachineLib.roundAway (Real.tanh (Real.sqrt (n : ℝ))))

end

end A063196.P18089215190017927109

namespace A063196

/-- `or(n, round(tanh(sqrt(n))))` -/
def P18089215190017927109.Spec : Prop :=
  ∀ n, P18089215190017927109.a n = A063196 (n + 1)

end A063196

/-! ## A063196.P14453520421879469531

`or(n, ceil(sin(atan(n))))`
-/

namespace A063196.P14453520421879469531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌈Real.sin (Real.arctan (n : ℝ))⌉

end

end A063196.P14453520421879469531

namespace A063196

/-- `or(n, ceil(sin(atan(n))))` -/
def P14453520421879469531.Spec : Prop :=
  ∀ n, P14453520421879469531.a n = A063196 (n + 1)

end A063196

/-! ## A063196.P132455069054138897

`or(n, round(sin(atan(n))))`
-/

namespace A063196.P132455069054138897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (SequenceMachineLib.roundAway (Real.sin (Real.arctan (n : ℝ))))

end

end A063196.P132455069054138897

namespace A063196

/-- `or(n, round(sin(atan(n))))` -/
def P132455069054138897.Spec : Prop :=
  ∀ n, P132455069054138897.a n = A063196 (n + 1)

end A063196

/-! ## A063196.P1426129656212469611

`or(n, round(atan(atan(n))))`
-/

namespace A063196.P1426129656212469611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (SequenceMachineLib.roundAway (Real.arctan (Real.arctan (n : ℝ))))

end

end A063196.P1426129656212469611

namespace A063196

/-- `or(n, round(atan(atan(n))))` -/
def P1426129656212469611.Spec : Prop :=
  ∀ n, P1426129656212469611.a n = A063196 (n + 1)

end A063196

/-! ## A063196.P4915676829958132434

`or(n, round(cos(acot(n))))`
-/

namespace A063196.P4915676829958132434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (SequenceMachineLib.roundAway (Real.cos (SequenceMachineLib.acot (n : ℝ))))

end

end A063196.P4915676829958132434

namespace A063196

/-- `or(n, round(cos(acot(n))))` -/
def P4915676829958132434.Spec : Prop :=
  ∀ n, P4915676829958132434.a n = A063196 (n + 1)

end A063196

/-! ## A063196.P1269906178297577880

`or(n, floor(acot(acot(n))))`
-/

namespace A063196.P1269906178297577880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ))⌋

end

end A063196.P1269906178297577880

namespace A063196

/-- `or(n, floor(acot(acot(n))))` -/
def P1269906178297577880.Spec : Prop :=
  ∀ n, P1269906178297577880.a n = A063196 (n + 1)

end A063196

/-! ## A063196.P7223182324357086401

`∑{p}[n, val(#, 2)]+n`
-/

namespace A063196.P7223182324357086401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 2 + n

end

end A063196.P7223182324357086401

namespace A063196

/-- `∑{p}[n, val(#, 2)]+n` -/
def P7223182324357086401.Spec : Prop :=
  ∀ n, (P7223182324357086401.a n : ℤ) = A063196 (n + 1)

end A063196

/-! ## A063196.P7253024057461879048

`val(∏{p}[n, #], 2)+n`
-/

namespace A063196.P7253024057461879048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), p) 2 + n

end

end A063196.P7253024057461879048

namespace A063196

/-- `val(∏{p}[n, #], 2)+n` -/
def P7253024057461879048.Spec : Prop :=
  ∀ n, (P7253024057461879048.a n : ℤ) = A063196 (n + 1)

end A063196

/-! ## A063196.P1946262719567932489

`∑{p}[n, C(2, #)]+n`
-/

namespace A063196.P1946262719567932489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose 2 p + n

end

end A063196.P1946262719567932489

namespace A063196

/-- `∑{p}[n, C(2, #)]+n` -/
def P1946262719567932489.Spec : Prop :=
  ∀ n, (P1946262719567932489.a n : ℤ) = A063196 (n + 1)

end A063196

/-! ## A063196.P13792244960397940682

`or(1, n)%Δ[n²]`
-/

namespace A063196.P13792244960397940682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.lor 1 n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063196.P13792244960397940682

namespace A063196

/-- `or(1, n)%Δ[n²]` -/
def P13792244960397940682.Spec : Prop :=
  ∀ n, P13792244960397940682.a n = A063196 (n + 1)

end A063196

/-! ## A063196.P9987158791666506228

`char[2*(n+1)]+n`
-/

namespace A063196.P9987158791666506228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + n

end

end A063196.P9987158791666506228

namespace A063196

/-- `char[2*(n+1)]+n` -/
def P9987158791666506228.Spec : Prop :=
  ∀ n, (P9987158791666506228.a n : ℤ) = A063196 (n + 1)

end A063196

/-! ## A063196.P9761881105608057514

`or(n, char[or(1, n)+1])`
-/

namespace A063196.P9761881105608057514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (if ∃ j, f1 j = n then 1 else 0)

end

end A063196.P9761881105608057514

namespace A063196

/-- `or(n, char[or(1, n)+1])` -/
def P9761881105608057514.Spec : Prop :=
  ∀ n, (P9761881105608057514.a n : ℤ) = A063196 (n + 1)

end A063196

/-! ## A063196.P18201453785525908181

`or(n, n²%(n+1))`
-/

namespace A063196.P18201453785525908181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n ^ 2 % (n + 1))

end

end A063196.P18201453785525908181

namespace A063196

/-- `or(n, n²%(n+1))` -/
def P18201453785525908181.Spec : Prop :=
  ∀ n, (P18201453785525908181.a n : ℤ) = A063196 (n + 1)

end A063196

/-!
# A063197: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 9 ).

The programs for A063197, the canonical program `A063197.P15071469457008448161` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063197 has offset 1).

The definition of A063197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063197.P15071469457008448161

`n-floor(n/2)+floor(n/3)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063197

/-- `n-floor(n/2)+floor(n/3)` -/
def P15071469457008448161.Spec : Prop :=
  ∀ n, P15071469457008448161.a n = A063197 (n + 1)

theorem P15071469457008448161.correct : P15071469457008448161.Spec := by
  intro n
  simp only [A063197, Nat.add_sub_cancel]

end A063197

/-! ## A063197.P10378182108710541570

`ogf((x+x^2+2x^3+x^4)/(1-x^2-x^3+x^5))`
-/

namespace A063197.P10378182108710541570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 2, 1] [1, 0, -1, -1, 0, 1] n

end

end A063197.P10378182108710541570

namespace A063197

/-- `ogf((x+x^2+2x^3+x^4)/(1-x^2-x^3+x^5))` -/
def P10378182108710541570.Spec : Prop :=
  ∀ n, P10378182108710541570.a n = A063197 (n + 1)

end A063197

/-! ## A063197.P8769447952911245091

`n-round(xor(1, n)/6)`
-/

namespace A063197.P8769447952911245091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6)

end

end A063197.P8769447952911245091

namespace A063197

/-- `n-round(xor(1, n)/6)` -/
def P8769447952911245091.Spec : Prop :=
  ∀ n, P8769447952911245091.a n = A063197 (n + 1)

end A063197

/-! ## A063197.P1292318570414032175

`floor((∑[gcd(3, n)]-2)/2)`
-/

namespace A063197.P1292318570414032175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2 : ℚ) / 2⌋

end

end A063197.P1292318570414032175

namespace A063197

/-- `floor((∑[gcd(3, n)]-2)/2)` -/
def P1292318570414032175.Spec : Prop :=
  ∀ n, P1292318570414032175.a n = A063197 (n + 1)

end A063197

/-! ## A063197.P13936911166762570456

`∑[n%2]+floor(n/3)`
-/

namespace A063197.P13936911166762570456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊(n : ℚ) / 3⌋

end

end A063197.P13936911166762570456

namespace A063197

/-- `∑[n%2]+floor(n/3)` -/
def P13936911166762570456.Spec : Prop :=
  ∀ n, P13936911166762570456.a n = A063197 (n + 1)

end A063197

/-! ## A063197.P15547406582541622229

`floor(∑[5-a(n-1)]/3)` with `a(0)=0, a(1)=4`
-/

namespace A063197.P15547406582541622229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A063197.P15547406582541622229

namespace A063197

/-- `floor(∑[5-a(n-1)]/3)` -/
def P15547406582541622229.Spec : Prop :=
  ∀ n, P15547406582541622229.a n = A063197 (n + 1)

end A063197

/-! ## A063197.P9236728976424393015

`ceil(∑[1-(1-n²)%3]/2)`
-/

namespace A063197.P9236728976424393015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (1 - (n ^ 2 : ℤ)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A063197.P9236728976424393015

namespace A063197

/-- `ceil(∑[1-(1-n²)%3]/2)` -/
def P9236728976424393015.Spec : Prop :=
  ∀ n, P9236728976424393015.a n = A063197 (n + 1)

end A063197

/-! ## A063197.P2336006481841954674

`(comp[4*n]+ceil(n/2))%(n+1)`
-/

namespace A063197.P2336006481841954674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + ⌈(n : ℚ) / 2⌉) (n + 1 : ℤ)

end

end A063197.P2336006481841954674

namespace A063197

/-- `(comp[4*n]+ceil(n/2))%(n+1)` -/
def P2336006481841954674.Spec : Prop :=
  ∀ n, P2336006481841954674.a n = A063197 (n + 1)

end A063197

/-! ## A063197.P13377143740783183850

`∑[a(n-3)-(-1)^n]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=2`
-/

namespace A063197.P13377143740783183850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 2] fun n f1 =>
  f1 (n - 3) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063197.P13377143740783183850

namespace A063197

/-- `∑[a(n-3)-(-1)^n]` -/
def P13377143740783183850.Spec : Prop :=
  ∀ n, P13377143740783183850.a n = A063197 (n + 1)

end A063197

/-! ## A063197.P4295631711931639373

`abs(n-A008615(n))`
-/

namespace A063197.P4295631711931639373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A008615 n|

end

end A063197.P4295631711931639373

namespace A063197

/-- `abs(n-A008615(n))` -/
def P4295631711931639373.Spec : Prop :=
  ∀ n, P4295631711931639373.a n = A063197 (n + 1)

end A063197

/-! ## A063197.P12422746714898866899

`floor(A063212(n+1)/2)`
-/

namespace A063197.P12422746714898866899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A063212 (n + 1) : ℚ) / 2⌋

end

end A063197.P12422746714898866899

namespace A063197

/-- `floor(A063212(n+1)/2)` -/
def P12422746714898866899.Spec : Prop :=
  ∀ n, P12422746714898866899.a n = A063197 (n + 1)

end A063197

/-! ## A063197.P17311512879852888696

`ceil(A002264(n)+n/2)`
-/

namespace A063197.P17311512879852888696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002264 n : ℚ) + (n : ℚ) / 2⌉

end

end A063197.P17311512879852888696

namespace A063197

/-- `ceil(A002264(n)+n/2)` -/
def P17311512879852888696.Spec : Prop :=
  ∀ n, P17311512879852888696.a n = A063197 (n + 1)

end A063197

/-! ## A063197.P10339293723701134833

`ceil(n-A267806(n)/2)`
-/

namespace A063197.P10339293723701134833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) - (A267806 n : ℚ) / 2⌉

end

end A063197.P10339293723701134833

namespace A063197

/-- `ceil(n-A267806(n)/2)` -/
def P10339293723701134833.Spec : Prop :=
  ∀ n, P10339293723701134833.a n = A063197 (n + 1)

end A063197

/-! ## A063197.P12036921700713265447

`floor((A047217(n+1)+1)/2)`
-/

namespace A063197.P12036921700713265447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A047217 (n + 1) + 1 : ℚ) / 2⌋

end

end A063197.P12036921700713265447

namespace A063197

/-- `floor((A047217(n+1)+1)/2)` -/
def P12036921700713265447.Spec : Prop :=
  ∀ n, P12036921700713265447.a n = A063197 (n + 1)

end A063197

/-! ## A063197.P12196836445050979851

`floor((A047202(n+1)-1)/2)`
-/

namespace A063197.P12196836445050979851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A047202 (n + 1) - 1 : ℚ) / 2⌋

end

end A063197.P12196836445050979851

namespace A063197

/-- `floor((A047202(n+1)-1)/2)` -/
def P12196836445050979851.Spec : Prop :=
  ∀ n, P12196836445050979851.a n = A063197 (n + 1)

end A063197

/-! ## A063197.P1428982650642825733

`round(comp[abs(2*n+1-A028242(n))-1+n]/2)`
-/

namespace A063197.P1428982650642825733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 1 : ℤ) - A028242 n| - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2)

end

end A063197.P1428982650642825733

namespace A063197

/-- `round(comp[abs(2*n+1-A028242(n))-1+n]/2)` -/
def P1428982650642825733.Spec : Prop :=
  ∀ n, P1428982650642825733.a n = A063197 (n + 1)

end A063197

/-! ## A063197.P17305051784944024657

`floor(2*A016873(n-A008615(n))/10)`
-/

namespace A063197.P17305051784944024657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * A016873 ((n : ℤ) - A008615 n).toNat : ℚ) / 10⌋

end

end A063197.P17305051784944024657

namespace A063197

/-- `floor(2*A016873(n-A008615(n))/10)` -/
def P17305051784944024657.Spec : Prop :=
  ∀ n, P17305051784944024657.a n = A063197 (n + 1)

end A063197

/-! ## A063197.P2163146014086961291

`A023443(A090168(n+1))`
-/

namespace A063197.P2163146014086961291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A090168 (n + 1)).toNat

end

end A063197.P2163146014086961291

namespace A063197

/-- `A023443(A090168(n+1))` -/
def P2163146014086961291.Spec : Prop :=
  ∀ n, P2163146014086961291.a n = A063197 (n + 1)

end A063197

/-! ## A063197.P9257976349858095482

`floor(A001068(comp[4*n])/2)`
-/

namespace A063197.P9257976349858095482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001068 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2⌋

end

end A063197.P9257976349858095482

namespace A063197

/-- `floor(A001068(comp[4*n])/2)` -/
def P9257976349858095482.Spec : Prop :=
  ∀ n, P9257976349858095482.a n = A063197 (n + 1)

end A063197

/-! ## A063197.P12066105174537506899

`A057361(A042968(n+1))`
-/

namespace A063197.P12066105174537506899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057361 (A042968 (n + 1)).toNat

end

end A063197.P12066105174537506899

namespace A063197

/-- `A057361(A042968(n+1))` -/
def P12066105174537506899.Spec : Prop :=
  ∀ n, P12066105174537506899.a n = A063197 (n + 1)

end A063197

/-!
# A063198: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 10 ).

The programs for A063198, the canonical program `A063198.P1004289492842817557` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063198 has offset 1).

The definition of A063198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063198.P1004289492842817557

`ogf((x+2x^2-2x^3+x^4)/(1-x-x^3+x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063198

/-- `ogf((x+2x^2-2x^3+x^4)/(1-x-x^3+x^4))` -/
def P1004289492842817557.Spec : Prop :=
  ∀ n, P1004289492842817557.a n = A063198 (n + 1)

theorem P1004289492842817557.correct : P1004289492842817557.Spec := by
  intro n
  simp only [A063198, Nat.add_sub_cancel]

end A063198

/-! ## A063198.P13391207113679365351

`2+a(n-3)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=1`
-/

namespace A063198.P13391207113679365351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 1] fun n a =>
  2 + a (n - 3)

end

end A063198.P13391207113679365351

namespace A063198

/-- `2+a(n-3)` -/
def P13391207113679365351.Spec : Prop :=
  ∀ n, (P13391207113679365351.a n : ℤ) = A063198 (n + 1)

end A063198

/-! ## A063198.P16369322520616630229

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=-2, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A063198.P16369322520616630229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, -2, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063198.P16369322520616630229

namespace A063198

/-- `∑[floor(a(n-3))]` -/
def P16369322520616630229.Spec : Prop :=
  ∀ n, P16369322520616630229.a n = A063198 (n + 1)

end A063198

/-! ## A063198.P7748766793506744144

`∑[4/a(n-3)]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=-2, a(4)=2`
-/

namespace A063198.P7748766793506744144
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 2, -2, 2] fun n f1 =>
  4 / f1 (n - 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063198.P7748766793506744144

namespace A063198

/-- `∑[4/a(n-3)]` -/
def P7748766793506744144.Spec : Prop :=
  ∀ n, P7748766793506744144.a n = (A063198 (n + 1) : ℚ)

end A063198

/-! ## A063198.P6605061802485817202

`∑[4*n²%3]%(2*n+1)`
-/

namespace A063198.P6605061802485817202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n ^ 2 % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (2 * n + 1)

end

end A063198.P6605061802485817202

namespace A063198

/-- `∑[4*n²%3]%(2*n+1)` -/
def P6605061802485817202.Spec : Prop :=
  ∀ n, (P6605061802485817202.a n : ℤ) = A063198 (n + 1)

end A063198

/-! ## A063198.P8472292666775350897

`4-(2*gcd(3, n)-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A063198.P8472292666775350897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 - ((2 * Nat.gcd 3 n : ℤ) - a (n - 1))

end

end A063198.P8472292666775350897

namespace A063198

/-- `4-(2*gcd(3, n)-a(n-1))` -/
def P8472292666775350897.Spec : Prop :=
  ∀ n, P8472292666775350897.a n = A063198 (n + 1)

end A063198

/-! ## A063198.P7980381586551976912

`3-(gcd(2, a(n-3))-a(n-3))` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A063198.P7980381586551976912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  3 - ((Int.gcd 2 (a (n - 3)) : ℤ) - a (n - 3))

end

end A063198.P7980381586551976912

namespace A063198

/-- `3-(gcd(2, a(n-3))-a(n-3))` -/
def P7980381586551976912.Spec : Prop :=
  ∀ n, P7980381586551976912.a n = A063198 (n + 1)

end A063198

/-! ## A063198.P8242847972233937886

`∑[2-a(n-1)-a(n-2)]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=-2`
-/

namespace A063198.P8242847972233937886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, -2] fun n f1 =>
  2 - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063198.P8242847972233937886

namespace A063198

/-- `∑[2-a(n-1)-a(n-2)]` -/
def P8242847972233937886.Spec : Prop :=
  ∀ n, P8242847972233937886.a n = A063198 (n + 1)

end A063198

/-! ## A063198.P3801540943047035397

`A063220(n+1)%(2*n+1)`
-/

namespace A063198.P3801540943047035397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063220 (n + 1)) (2 * n + 1 : ℤ)

end

end A063198.P3801540943047035397

namespace A063198

/-- `A063220(n+1)%(2*n+1)` -/
def P3801540943047035397.Spec : Prop :=
  ∀ n, P3801540943047035397.a n = A063198 (n + 1)

end A063198

/-! ## A063198.P9361664089517848554

`A063222(n+1)%(2*n+1)`
-/

namespace A063198.P9361664089517848554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063222 (n + 1)) (2 * n + 1 : ℤ)

end

end A063198.P9361664089517848554

namespace A063198

/-- `A063222(n+1)%(2*n+1)` -/
def P9361664089517848554.Spec : Prop :=
  ∀ n, P9361664089517848554.a n = A063198 (n + 1)

end A063198

/-! ## A063198.P15557851177294538061

`A063236(n+1)%(2*n+1)`
-/

namespace A063198.P15557851177294538061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063236 (n + 1)) (2 * n + 1 : ℤ)

end

end A063198.P15557851177294538061

namespace A063198

/-- `A063236(n+1)%(2*n+1)` -/
def P15557851177294538061.Spec : Prop :=
  ∀ n, P15557851177294538061.a n = A063198 (n + 1)

end A063198

/-! ## A063198.P18991798605081956

`A004273(A008611(n+1))`
-/

namespace A063198.P18991798605081956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A008611 (n + 1)).toNat

end

end A063198.P18991798605081956

namespace A063198

/-- `A004273(A008611(n+1))` -/
def P18991798605081956.Spec : Prop :=
  ∀ n, P18991798605081956.a n = A063198 (n + 1)

end A063198

/-! ## A063198.P10850654321872975871

`n-A063942(A028310(n))`
-/

namespace A063198.P10850654321872975871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A063942 (A028310 n).toNat

end

end A063198.P10850654321872975871

namespace A063198

/-- `n-A063942(A028310(n))` -/
def P10850654321872975871.Spec : Prop :=
  ∀ n, P10850654321872975871.a n = A063198 (n + 1)

end A063198

/-! ## A063198.P2761602614385876754

`A014681(2*A008611(n+1))`
-/

namespace A063198.P2761602614385876754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A008611 (n + 1)).toNat

end

end A063198.P2761602614385876754

namespace A063198

/-- `A014681(2*A008611(n+1))` -/
def P2761602614385876754.Spec : Prop :=
  ∀ n, P2761602614385876754.a n = A063198 (n + 1)

end A063198

/-! ## A063198.P4835031394527228392

`A008486(n)-A047360(n+1)`
-/

namespace A063198.P4835031394527228392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n - A047360 (n + 1)

end

end A063198.P4835031394527228392

namespace A063198

/-- `A008486(n)-A047360(n+1)` -/
def P4835031394527228392.Spec : Prop :=
  ∀ n, P4835031394527228392.a n = A063198 (n + 1)

end A063198

/-! ## A063198.P15211596817491914037

`A063222(n+1)-A016825(n)`
-/

namespace A063198.P15211596817491914037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063222 (n + 1) - A016825 n

end

end A063198.P15211596817491914037

namespace A063198

/-- `A063222(n+1)-A016825(n)` -/
def P15211596817491914037.Spec : Prop :=
  ∀ n, P15211596817491914037.a n = A063198 (n + 1)

end A063198

/-! ## A063198.P17008770868640956933

`A063220(n+1)-A016945(n)`
-/

namespace A063198.P17008770868640956933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063220 (n + 1) - A016945 n

end

end A063198.P17008770868640956933

namespace A063198

/-- `A063220(n+1)-A016945(n)` -/
def P17008770868640956933.Spec : Prop :=
  ∀ n, P17008770868640956933.a n = A063198 (n + 1)

end A063198

/-! ## A063198.P9651370514481337940

`A063236(n+1)-A017329(n)`
-/

namespace A063198.P9651370514481337940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063236 (n + 1) - A017329 n

end

end A063198.P9651370514481337940

namespace A063198

/-- `A063236(n+1)-A017329(n)` -/
def P9651370514481337940.Spec : Prop :=
  ∀ n, P9651370514481337940.a n = A063198 (n + 1)

end A063198

/-! ## A063198.P9136357594245562583

`A143097(n+1)-A008620(n)`
-/

namespace A063198.P9136357594245562583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143097 (n + 1) - A008620 n

end

end A063198.P9136357594245562583

namespace A063198

/-- `A143097(n+1)-A008620(n)` -/
def P9136357594245562583.Spec : Prop :=
  ∀ n, P9136357594245562583.a n = A063198 (n + 1)

end A063198

/-! ## A063198.P14973710808210467729

`A130727(n)-A143098(n+1)`
-/

namespace A063198.P14973710808210467729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130727 n - A143098 (n + 1)

end

end A063198.P14973710808210467729

namespace A063198

/-- `A130727(n)-A143098(n+1)` -/
def P14973710808210467729.Spec : Prop :=
  ∀ n, P14973710808210467729.a n = A063198 (n + 1)

end A063198

/-!
# A063199: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 11 ).

The programs for A063199, the canonical program `A063199.P13522724516214218334` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063199 has offset 1).

The definition of A063199 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063199.P13522724516214218334

`ogf((1+2x+3x^2+3x^3+2x^4-x^5)/(1-x^2-x^3+x^5))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A063199

/-- `ogf((1+2x+3x^2+3x^3+2x^4-x^5)/(1-x^2-x^3+x^5))` -/
def P13522724516214218334.Spec : Prop :=
  ∀ n, P13522724516214218334.a n = A063199 (n + 1)

theorem P13522724516214218334.correct : P13522724516214218334.Spec := by
  intro n
  simp only [A063199, Nat.add_sub_cancel]

end A063199

/-! ## A063199.P3721005094342737347

`a(n-2)-gcd(3, n+1)+5` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A063199.P3721005094342737347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 2) - (Nat.gcd 3 (n + 1) : ℤ) + 5

end

end A063199.P3721005094342737347

namespace A063199

/-- `a(n-2)-gcd(3, n+1)+5` -/
def P3721005094342737347.Spec : Prop :=
  ∀ n, P3721005094342737347.a n = A063199 (n + 1)

end A063199

/-! ## A063199.P10726833035495169102

`floor(A063227(n+1)/2)`
-/

namespace A063199.P10726833035495169102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A063227 (n + 1) : ℚ) / 2⌋

end

end A063199.P10726833035495169102

namespace A063199

/-- `floor(A063227(n+1)/2)` -/
def P10726833035495169102.Spec : Prop :=
  ∀ n, P10726833035495169102.a n = A063199 (n + 1)

end A063199

/-! ## A063199.P9062692444060642179

`Δ[n²]-A063195(n+1)`
-/

namespace A063199.P9062692444060642179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A063195 (n + 1)

end

end A063199.P9062692444060642179

namespace A063199

/-- `Δ[n²]-A063195(n+1)` -/
def P9062692444060642179.Spec : Prop :=
  ∀ n, P9062692444060642179.a n = A063199 (n + 1)

end A063199

/-! ## A063199.P7360200979435630953

`A063203(n+1)-Δ[n²]`
-/

namespace A063199.P7360200979435630953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063203 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063199.P7360200979435630953

namespace A063199

/-- `A063203(n+1)-Δ[n²]` -/
def P7360200979435630953.Spec : Prop :=
  ∀ n, P7360200979435630953.a n = A063199 (n + 1)

end A063199

/-! ## A063199.P10023431193703963089

`A298784(n)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A063199.P10023431193703963089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A298784 n - a (n - 1)

end

end A063199.P10023431193703963089

namespace A063199

/-- `A298784(n)-a(n-1)` -/
def P10023431193703963089.Spec : Prop :=
  ∀ n, P10023431193703963089.a n = A063199 (n + 1)

end A063199

/-! ## A063199.P5373618664852422837

`A047202(n+1)-(n%2)^n`
-/

namespace A063199.P5373618664852422837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047202 (n + 1) - (((n % 2) ^ n : ℕ) : ℤ)

end

end A063199.P5373618664852422837

namespace A063199

/-- `A047202(n+1)-(n%2)^n` -/
def P5373618664852422837.Spec : Prop :=
  ∀ n, P5373618664852422837.a n = A063199 (n + 1)

end A063199

/-! ## A063199.P3485578994566141319

`abs(A063081(n+1)-4*n)+1`
-/

namespace A063199.P3485578994566141319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A063081 (n + 1) - (4 * n : ℤ)| + 1

end

end A063199.P3485578994566141319

namespace A063199

/-- `abs(A063081(n+1)-4*n)+1` -/
def P3485578994566141319.Spec : Prop :=
  ∀ n, P3485578994566141319.a n = A063199 (n + 1)

end A063199

/-! ## A063199.P7745725536528075512

`A047217(n+1)+A040001(n)`
-/

namespace A063199.P7745725536528075512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047217 (n + 1) + A040001 n

end

end A063199.P7745725536528075512

namespace A063199

/-- `A047217(n+1)+A040001(n)` -/
def P7745725536528075512.Spec : Prop :=
  ∀ n, P7745725536528075512.a n = A063199 (n + 1)

end A063199

/-! ## A063199.P6871310750290998506

`A016813(n)-A063081(n+1)`
-/

namespace A063199.P6871310750290998506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A063081 (n + 1)

end

end A063199.P6871310750290998506

namespace A063199

/-- `A016813(n)-A063081(n+1)` -/
def P6871310750290998506.Spec : Prop :=
  ∀ n, P6871310750290998506.a n = A063199 (n + 1)

end A063199

/-! ## A063199.P17871642290158819634

`A063215(n+1)-A016945(n)`
-/

namespace A063199.P17871642290158819634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063215 (n + 1) - A016945 n

end

end A063199.P17871642290158819634

namespace A063199

/-- `A063215(n+1)-A016945(n)` -/
def P17871642290158819634.Spec : Prop :=
  ∀ n, P17871642290158819634.a n = A063199 (n + 1)

end A063199

/-! ## A063199.P14195102057424061311

`A017101(n)-A063105(n+1)`
-/

namespace A063199.P14195102057424061311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n - A063105 (n + 1)

end

end A063199.P14195102057424061311

namespace A063199

/-- `A017101(n)-A063105(n+1)` -/
def P14195102057424061311.Spec : Prop :=
  ∀ n, P14195102057424061311.a n = A063199 (n + 1)

end A063199

/-! ## A063199.P2745482891835063913

`A063223(n+1)-A017113(n)`
-/

namespace A063199.P2745482891835063913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063223 (n + 1) - A017113 n

end

end A063199.P2745482891835063913

namespace A063199

/-- `A063223(n+1)-A017113(n)` -/
def P2745482891835063913.Spec : Prop :=
  ∀ n, P2745482891835063913.a n = A063199 (n + 1)

end A063199

/-! ## A063199.P12135561426482896621

`A063230(n+1)-A017329(n)`
-/

namespace A063199.P12135561426482896621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1) - A017329 n

end

end A063199.P12135561426482896621

namespace A063199

/-- `A063230(n+1)-A017329(n)` -/
def P12135561426482896621.Spec : Prop :=
  ∀ n, P12135561426482896621.a n = A063199 (n + 1)

end A063199

/-! ## A063199.P4900991698624032728

`A017581(n)-A063129(n+1)`
-/

namespace A063199.P4900991698624032728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 n - A063129 (n + 1)

end

end A063199.P4900991698624032728

namespace A063199

/-- `A017581(n)-A063129(n+1)` -/
def P4900991698624032728.Spec : Prop :=
  ∀ n, P4900991698624032728.a n = A063199 (n + 1)

end A063199

/-! ## A063199.P7761303706751683670

`A063235(n+1)-A017593(n)`
-/

namespace A063199.P7761303706751683670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063235 (n + 1) - A017593 n

end

end A063199.P7761303706751683670

namespace A063199

/-- `A063235(n+1)-A017593(n)` -/
def P7761303706751683670.Spec : Prop :=
  ∀ n, P7761303706751683670.a n = A063199 (n + 1)

end A063199

/-! ## A063199.P5295970181712381776

`A063212(n+1)-A062157(n)`
-/

namespace A063199.P5295970181712381776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063212 (n + 1) - A062157 n

end

end A063199.P5295970181712381776

namespace A063199

/-- `A063212(n+1)-A062157(n)` -/
def P5295970181712381776.Spec : Prop :=
  ∀ n, P5295970181712381776.a n = A063199 (n + 1)

end A063199

/-! ## A063199.P12756749098016738304

`A047465(n+1)-A373952(n)`
-/

namespace A063199.P12756749098016738304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047465 (n + 1) - A373952 n

end

end A063199.P12756749098016738304

namespace A063199

/-- `A047465(n+1)-A373952(n)` -/
def P12756749098016738304.Spec : Prop :=
  ∀ n, P12756749098016738304.a n = A063199 (n + 1)

end A063199

/-! ## A063199.P2169289093392287981

`A040000(n)*A063208(n+1)`
-/

namespace A063199.P2169289093392287981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A063208 (n + 1)

end

end A063199.P2169289093392287981

namespace A063199

/-- `A040000(n)*A063208(n+1)` -/
def P2169289093392287981.Spec : Prop :=
  ∀ n, P2169289093392287981.a n = A063199 (n + 1)

end A063199

/-! ## A063199.P1996872164855973898

`A063223(n+1)%A016825(n)`
-/

namespace A063199.P1996872164855973898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063223 (n + 1)) (A016825 n)

end

end A063199.P1996872164855973898

namespace A063199

/-- `A063223(n+1)%A016825(n)` -/
def P1996872164855973898.Spec : Prop :=
  ∀ n, P1996872164855973898.a n = A063199 (n + 1)

end A063199

