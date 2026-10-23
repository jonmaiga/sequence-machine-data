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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
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
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A280900: Number of nX6 0..2 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280900, there is no canonical definition to state claims against.
-/

/-! ## A280900.P17276034036535335577

`A280902(eq[3, A219347(n)])`
-/

namespace A280900.P17276034036535335577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280900.P17276034036535335577

/-! ## A280900.P13357373088563138187

`A280902(eq[16, A057728(n+1)])`
-/

namespace A280900.P13357373088563138187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280900.P13357373088563138187

/-!
# A280901: Number of nX7 0..2 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280901, there is no canonical definition to state claims against.
-/

/-! ## A280901.P11467751819654816481

`A280902(eq[4, A219347(n)])`
-/

namespace A280901.P11467751819654816481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280901.P11467751819654816481

/-! ## A280901.P2175453459676870482

`A280902(eq[6, A193592(n)])`
-/

namespace A280901.P2175453459676870482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280901.P2175453459676870482

/-!
# A280903: Number of 2Xn 0..2 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280903, there is no canonical definition to state claims against.
-/

/-! ## A280903.P5579092321082524341

`A280902(∑[n+1]+2)`
-/

namespace A280903.P5579092321082524341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280902 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A280903.P5579092321082524341

/-! ## A280903.P15681136074464781497

`record[A280902(n+1)/A227578(n)]`
-/

namespace A280903.P15681136074464781497
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280902 (n + 1) : ℚ) / (A227578 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280903.P15681136074464781497

/-! ## A280903.P10007171095896143420

`record[A280902(n+1)/A288972(n)]`
-/

namespace A280903.P10007171095896143420
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280902 (n + 1) : ℚ) / (A288972 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280903.P10007171095896143420

/-! ## A280903.P18010468795353961742

`record[A280902(n+1)/A294746(n)]`
-/

namespace A280903.P18010468795353961742
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280902 (n + 1) : ℚ) / (A294746 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280903.P18010468795353961742

/-! ## A280903.P11882404646960432703

`record[A280902(n+1)/A294950(n)]`
-/

namespace A280903.P11882404646960432703
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280902 (n + 1) : ℚ) / (A294950 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280903.P11882404646960432703

/-!
# A280904: Number of 3Xn 0..2 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280904, there is no canonical definition to state claims against.
-/

/-! ## A280904.P6281865426598420733

`A280902(∑[n+2]+4)`
-/

namespace A280904.P6281865426598420733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280902 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A280904.P6281865426598420733

/-! ## A280904.P14800933560562557553

`A280902(A167614(n+1))+A185238(n)`
-/

namespace A280904.P14800933560562557553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280902 (A167614 (n + 1)).toNat + A185238 n

end

end A280904.P14800933560562557553

/-! ## A280904.P421086088201217900

`A280902(A167614(n+1))%A139822(n)`
-/

namespace A280904.P421086088201217900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280902 (A167614 (n + 1)).toNat) (A139822 n)

end

end A280904.P421086088201217900

/-! ## A280904.P9405924176423637239

`lcm(A087960(n), A280902(A167614(n+1)))`
-/

namespace A280904.P9405924176423637239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A280902 (A167614 (n + 1)).toNat)

end

end A280904.P9405924176423637239

/-! ## A280904.P18086695611996287718

`or(A124760(n), A280902(A167614(n+1)))`
-/

namespace A280904.P18086695611996287718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124760 n) (A280902 (A167614 (n + 1)).toNat)

end

end A280904.P18086695611996287718

/-!
# A280905: Number of 4Xn 0..2 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280905, there is no canonical definition to state claims against.
-/

/-! ## A280905.P10707168659005106528

`A280902(A141214(n)+7)`
-/

namespace A280905.P10707168659005106528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280902 (A141214 n + 7).toNat

end

end A280905.P10707168659005106528

/-! ## A280905.P15331990360590735826

`A280902(A052905(n)+9)`
-/

namespace A280905.P15331990360590735826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280902 (A052905 n + 9).toNat

end

end A280905.P15331990360590735826

/-! ## A280905.P17130077306445799303

`A280902(A055999(n)+10)`
-/

namespace A280905.P17130077306445799303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280902 (A055999 n + 10).toNat

end

end A280905.P17130077306445799303

/-! ## A280905.P11191583023564554688

`A280902(A167614(n+2)+1)`
-/

namespace A280905.P11191583023564554688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280902 (A167614 (n + 2) + 1).toNat

end

end A280905.P11191583023564554688

/-! ## A280905.P13488368819524615622

`A280902(eq[5, A131818(n+1)])`
-/

namespace A280905.P13488368819524615622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280905.P13488368819524615622

/-!
# A280906: Number of 5Xn 0..2 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280906, there is no canonical definition to state claims against.
-/

/-! ## A280906.P6472451009186831211

`A280902(A155212(n)+13)`
-/

namespace A280906.P6472451009186831211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280902 (A155212 n + 13).toNat

end

end A280906.P6472451009186831211

/-! ## A280906.P7675418603050890401

`A280902(A056000(n)+15)`
-/

namespace A280906.P7675418603050890401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280902 (A056000 n + 15).toNat

end

end A280906.P7675418603050890401

/-! ## A280906.P9066672239561901122

`A280902(eq[7, A066657(n)])`
-/

namespace A280906.P9066672239561901122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280906.P9066672239561901122

/-! ## A280906.P4313935600964083931

`A280902(A051936(n+4)+14)`
-/

namespace A280906.P4313935600964083931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280902 (A051936 (n + 4) + 14).toNat

end

end A280906.P4313935600964083931

/-! ## A280906.P10493257082532457498

`A280902(eq[6, A131818(n+1)])`
-/

namespace A280906.P10493257082532457498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280906.P10493257082532457498

/-!
# A280907: Least k such that cototient(k) has exactly n distinct prime factors.

The programs for A280907, there is no canonical definition to state claims against.
-/

/-! ## A280907.P15160655123443464386

`A063507(A002110(n+1))`
-/

namespace A280907.P15160655123443464386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (A002110 (n + 1)).toNat

end

end A280907.P15160655123443464386

/-!
# A280908: Expansion of Product_{k>=1} ((1+x^k) / ((1-x^(2*k-1)) * (1-x^(8*k-4)))).

The programs for A280908, there is no canonical definition to state claims against.
-/

/-! ## A280908.P434713583313600904

`A035938(record[A279944(n+1)])`
-/

namespace A280908.P434713583313600904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035938 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A280908.P434713583313600904

/-! ## A280908.P7572786889443814491

`A035938(2*n+1)%p?[A035941(n+1)]`
-/

namespace A280908.P7572786889443814491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035938 (2 * n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A280908.P7572786889443814491

/-! ## A280908.P10546100594841838824

`A035938(lt[A128763(2*n), A035938(n)])`
-/

namespace A280908.P10546100594841838824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128763 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035938 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A280908.P10546100594841838824

/-! ## A280908.P3754643649356685764

`A035938(2*n+1)%A005846(A001405(n))`
-/

namespace A280908.P3754643649356685764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035938 (2 * n + 1)) (A005846 (A001405 n).toNat)

end

end A280908.P3754643649356685764

/-! ## A280908.P6227102502399982020

`A035938(lt[A040071(n), A100121(3*n+2)])`
-/

namespace A280908.P6227102502399982020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040071 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100121 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035938 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A280908.P6227102502399982020

/-!
# A280909: Expansion of Product_{k>=1} ((1-x^(12*k)) * (1-x^(12*k-10)) * (1-x^(12*k-9)) / (1-x^k)).

The programs for A280909, there is no canonical definition to state claims against.
-/

/-! ## A280909.P2370288630920035824

`floor(A000788(A094925(n+1))^(2/5))`
-/

namespace A280909.P2370288630920035824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000788 (A094925 (n + 1)).toNat : ℝ) ^ ((2 : ℚ) / 5 : ℝ)⌋

end

end A280909.P2370288630920035824

/-! ## A280909.P14011556354404008551

`floor(A318771(3*n)^acot(3))`
-/

namespace A280909.P14011556354404008551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A318771 (3 * n) : ℝ) ^ (SequenceMachineLib.acot (3 : ℝ))⌋

end

end A280909.P14011556354404008551

/-! ## A280909.P5874799065054096061

`A366066(A298402(n))`
-/

namespace A280909.P5874799065054096061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366066 (A298402 n).toNat

end

end A280909.P5874799065054096061

/-!
# A280910: Characteristic sequence of A277238.

The programs for A280910, the canonical program `A280910.P276052425312024874` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280910 has offset 0).

The definition of A280910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280910.P276052425312024874

`char[A277238(n+1)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A280910

/-- `char[A277238(n+1)]` -/
def P276052425312024874.Spec : Prop :=
  ∀ n, (P276052425312024874.a n : ℤ) = A280910 n

theorem P276052425312024874.correct : P276052425312024874.Spec := by
  intro n
  simp only [A280910]

end A280910

/-! ## A280910.P9681788759645301629

`char[record[A277238(A126759(n))]]`
-/

namespace A280910.P9681788759645301629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277238 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A280910.P9681788759645301629

namespace A280910

/-- `char[record[A277238(A126759(n))]]` -/
def P9681788759645301629.Spec : Prop :=
  ∀ n, (P9681788759645301629.a n : ℤ) = A280910 n

end A280910

/-! ## A280910.P3269903721275875298

`char[record[A277238(A133310(n))]]`
-/

namespace A280910.P3269903721275875298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277238 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A280910.P3269903721275875298

namespace A280910

/-- `char[record[A277238(A133310(n))]]` -/
def P3269903721275875298.Spec : Prop :=
  ∀ n, (P3269903721275875298.a n : ℤ) = A280910 n

end A280910

/-! ## A280910.P12582364479049750466

`char[record[A277238(A152271(n))]]`
-/

namespace A280910.P12582364479049750466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277238 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A280910.P12582364479049750466

namespace A280910

/-- `char[record[A277238(A152271(n))]]` -/
def P12582364479049750466.Spec : Prop :=
  ∀ n, (P12582364479049750466.a n : ℤ) = A280910 n

end A280910

/-! ## A280910.P12720659078194759314

`char[record[A277238(A344180(n))]]`
-/

namespace A280910.P12720659078194759314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277238 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A280910.P12720659078194759314

namespace A280910

/-- `char[record[A277238(A344180(n))]]` -/
def P12720659078194759314.Spec : Prop :=
  ∀ n, (P12720659078194759314.a n : ℤ) = A280910 n

end A280910

/-! ## A280910.P11739452295064879972

`char[∪[A035928(n+1), A276795(n+1)]]`
-/

namespace A280910.P11739452295064879972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035928 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276795 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A280910.P11739452295064879972

namespace A280910

/-- `char[∪[A035928(n+1), A276795(n+1)]]` -/
def P11739452295064879972.Spec : Prop :=
  ∀ n, (P11739452295064879972.a n : ℤ) = A280910 n

end A280910

/-! ## A280910.P8188721728707427449

`char[A277238(A008619(n))-A000038(n)]`
-/

namespace A280910.P8188721728707427449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277238 (A008619 n).toNat - A000038 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A280910.P8188721728707427449

namespace A280910

/-- `char[A277238(A008619(n))-A000038(n)]` -/
def P8188721728707427449.Spec : Prop :=
  ∀ n, (P8188721728707427449.a n : ℤ) = A280910 n

end A280910

/-! ## A280910.P6966582129820357046

`char[A277238(A028310(n))-A000038(n)]`
-/

namespace A280910.P6966582129820357046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277238 (A028310 n).toNat - A000038 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A280910.P6966582129820357046

namespace A280910

/-- `char[A277238(A028310(n))-A000038(n)]` -/
def P6966582129820357046.Spec : Prop :=
  ∀ n, (P6966582129820357046.a n : ℤ) = A280910 n

end A280910

/-!
# A280912: Number of partitions of n into odd semiprimes (A046315).

The programs for A280912, there is no canonical definition to state claims against.
-/

/-! ## A280912.P8929186406433553980

`A193929(A280285(n)^A010221(n))`
-/

namespace A280912.P8929186406433553980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (SequenceMachineLib.roundAway ((A280285 n : ℚ) ^ (A010221 n : ℤ))).toNat

end

end A280912.P8929186406433553980

/-! ## A280912.P8897805812161808266

`A193929(A280285(n)^A318423(n+1))`
-/

namespace A280912.P8897805812161808266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (SequenceMachineLib.roundAway ((A280285 n : ℚ) ^ (A318423 (n + 1) : ℤ))).toNat

end

end A280912.P8897805812161808266

/-! ## A280912.P1968942436030006575

`A003056(A280285(n)^A318423(n+1))%4`
-/

namespace A280912.P1968942436030006575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (SequenceMachineLib.roundAway ((A280285 n : ℚ) ^ (A318423 (n + 1) : ℤ))).toNat) 4

end

end A280912.P1968942436030006575

/-! ## A280912.P14167323088169412319

`A255072(A280285(n)^A318423(n+1))%4`
-/

namespace A280912.P14167323088169412319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255072 (SequenceMachineLib.roundAway ((A280285 n : ℚ) ^ (A318423 (n + 1) : ℤ))).toNat) 4

end

end A280912.P14167323088169412319

/-! ## A280912.P13659782609464812822

`A109720(A129100(n)*A280285(n))`
-/

namespace A280912.P13659782609464812822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109720 (A129100 n * A280285 n).toNat

end

end A280912.P13659782609464812822

/-!
# A280913: Number of dots in International Morse numeral representation of n.

The programs for A280913, the canonical program `A280913.P9262733255828361273` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280913 has offset 0).

The definition of A280913 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280913.P9262733255828361273

`a(floor(n/10))+a(n%10)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=4, a(7)=3, a(8)=2, a(9)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A280913

/-- `a(floor(n/10))+a(n%10)` -/
def P9262733255828361273.Spec : Prop :=
  ∀ n, (P9262733255828361273.a n : ℤ) = A280913 n

theorem P9262733255828361273.correct : P9262733255828361273.Spec := by
  intro n
  simp only [A280913]

end A280913

/-! ## A280913.P13622700242499685203

`∑{digits}[n, 5-abs(5-#)]`
-/

namespace A280913.P13622700242499685203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 5 - |5 - (x : ℤ)|).sum

end

end A280913.P13622700242499685203

namespace A280913

/-- `∑{digits}[n, 5-abs(5-#)]` -/
def P13622700242499685203.Spec : Prop :=
  ∀ n, P13622700242499685203.a n = A280913 n

end A280913

/-! ## A280913.P3690502216761108721

`5*A055642(n)-A280916(n)`
-/

namespace A280913.P3690502216761108721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A055642 n - A280916 n

end

end A280913.P3690502216761108721

namespace A280913

/-- `5*A055642(n)-A280916(n)` -/
def P3690502216761108721.Spec : Prop :=
  ∀ n, P3690502216761108721.a n = A280913 n

end A280913

/-! ## A280913.P5333753773788820585

`∑{e}[A054842(n), A271751(#)]`
-/

namespace A280913.P5333753773788820585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A271751 (Nat.factorization (f1 n).natAbs p)

end

end A280913.P5333753773788820585

namespace A280913

/-- `∑{e}[A054842(n), A271751(#)]` -/
def P5333753773788820585.Spec : Prop :=
  ∀ n, P5333753773788820585.a n = A280913 n

end A280913

/-! ## A280913.P4566787067013696942

`∑{e}[A054842(n), A280916(A280916(#))]`
-/

namespace A280913.P4566787067013696942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A280916 (A280916 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A280913.P4566787067013696942

namespace A280913

/-- `∑{e}[A054842(n), A280916(A280916(#))]` -/
def P4566787067013696942.Spec : Prop :=
  ∀ n, P4566787067013696942.a n = A280913 n

end A280913

/-! ## A280913.P14691778886544671459

`A016897(A321332(n))%11`
-/

namespace A280913.P14691778886544671459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016897 (A321332 n).toNat) 11

end

end A280913.P14691778886544671459

namespace A280913

/-- `A016897(A321332(n))%11` -/
def P14691778886544671459.Spec : Prop :=
  ∀ n, P14691778886544671459.a n = A280913 n

end A280913

/-! ## A280913.P3550798908712152807

`5*A055642(n)-A332662(A321332(n)-1)`
-/

namespace A280913.P3550798908712152807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A055642 n - A332662 (A321332 n - 1).toNat

end

end A280913.P3550798908712152807

namespace A280913

/-- `5*A055642(n)-A332662(A321332(n)-1)` -/
def P3550798908712152807.Spec : Prop :=
  ∀ n, P3550798908712152807.a n = A280913 n

end A280913

/-!
# A280916: Number of dashes in International Morse numeral representation of n.

The programs for A280916, the canonical program `A280916.P4628093122961063996` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280916 has offset 0).

The definition of A280916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280916.P4628093122961063996

`a(floor(n/10))+a(n%10)` with `a(0)=5, a(1)=4, a(2)=3, a(3)=2, a(4)=1, a(5)=0, a(6)=1, a(7)=2, a(8)=3, a(9)=4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A280916

/-- `a(floor(n/10))+a(n%10)` -/
def P4628093122961063996.Spec : Prop :=
  ∀ n, (P4628093122961063996.a n : ℤ) = A280916 n

theorem P4628093122961063996.correct : P4628093122961063996.Spec := by
  intro n
  simp only [A280916]

end A280916

/-! ## A280916.P14563325670473548786

`∑{digits}[n, abs(5-#)]`
-/

namespace A280916.P14563325670473548786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => |5 - (x : ℤ)|).sum

end

end A280916.P14563325670473548786

namespace A280916

/-- `∑{digits}[n, abs(5-#)]` -/
def P14563325670473548786.Spec : Prop :=
  ∀ n, P14563325670473548786.a n = A280916 n

end A280916

/-! ## A280916.P14281663817482728444

`5*A055642(n)-A280913(n)`
-/

namespace A280916.P14281663817482728444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A055642 n - A280913 n

end

end A280916.P14281663817482728444

namespace A280916

/-- `5*A055642(n)-A280913(n)` -/
def P14281663817482728444.Spec : Prop :=
  ∀ n, P14281663817482728444.a n = A280916 n

end A280916

/-! ## A280916.P8674820117451004531

`5*A055642(n)-∑{e}[A054842(n), A271751(#)]`
-/

namespace A280916.P8674820117451004531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A055642 n - ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A271751 (Nat.factorization (f1 n).natAbs p)

end

end A280916.P8674820117451004531

namespace A280916

/-- `5*A055642(n)-∑{e}[A054842(n), A271751(#)]` -/
def P8674820117451004531.Spec : Prop :=
  ∀ n, P8674820117451004531.a n = A280916 n

end A280916

/-! ## A280916.P7147164022448369932

`A332662(A321332(n)-1)`
-/

namespace A280916.P7147164022448369932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332662 (A321332 n - 1).toNat

end

end A280916.P7147164022448369932

namespace A280916

/-- `A332662(A321332(n)-1)` -/
def P7147164022448369932.Spec : Prop :=
  ∀ n, P7147164022448369932.a n = A280916 n

end A280916

/-! ## A280916.P12168133820718533385

`A332662(xor(1, A321332(n)))`
-/

namespace A280916.P12168133820718533385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332662 (Int.xor 1 (A321332 n)).toNat

end

end A280916.P12168133820718533385

namespace A280916

/-- `A332662(xor(1, A321332(n)))` -/
def P12168133820718533385.Spec : Prop :=
  ∀ n, P12168133820718533385.a n = A280916 n

end A280916

/-!
# A280917: Expansion of 1/(1 - x - Sum_{k>=1} x^prime(k)).

The programs for A280917, there is no canonical definition to state claims against.
-/

/-! ## A280917.P12151425776187628110

`∑[A341407(n)]`
-/

namespace A280917.P12151425776187628110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280917.P12151425776187628110

/-! ## A280917.P14586925607983776875

`A280254(n)-A178798(A027337(n))`
-/

namespace A280917.P14586925607983776875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280254 n - A178798 (A027337 n).toNat

end

end A280917.P14586925607983776875

/-! ## A280917.P5946031369314207848

`A280254(n)-A178798(A280240(n))`
-/

namespace A280917.P5946031369314207848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280254 n - A178798 (A280240 n).toNat

end

end A280917.P5946031369314207848

/-! ## A280917.P828144409343173980

`A154470(A280254(n))`
-/

namespace A280917.P828144409343173980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A280254 n).toNat

end

end A280917.P828144409343173980

/-! ## A280917.P6518196249306068202

`A280254(A004896(n+1))`
-/

namespace A280917.P6518196249306068202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280254 (A004896 (n + 1)).toNat

end

end A280917.P6518196249306068202

/-!
# A280918: 2nd term of the continued fraction for 2-sqrt(2)^^n, where x^^n denotes tetration.

The programs for A280918, there is no canonical definition to state claims against.
-/

/-! ## A280918.P9519140911097373798

`A198094(n+1)+A158388(n)`
-/

namespace A280918.P9519140911097373798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198094 (n + 1) + A158388 n

end

end A280918.P9519140911097373798

/-! ## A280918.P4120127390033274782

`A198094(n+1)-A153881(n+1)`
-/

namespace A280918.P4120127390033274782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198094 (n + 1) - A153881 (n + 1)

end

end A280918.P4120127390033274782

/-! ## A280918.P11818014468403901202

`A198094(n+1)%A011001(n)+1`
-/

namespace A280918.P11818014468403901202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198094 (n + 1)) (A011001 (n + 48)) + 1

end

end A280918.P11818014468403901202

/-! ## A280918.P1022869515493991071

`A198094(n+1)-A008683(A006530(n+1))`
-/

namespace A280918.P1022869515493991071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198094 (n + 1) - A008683 (A006530 (n + 1)).toNat

end

end A280918.P1022869515493991071

/-! ## A280918.P10298406744141425731

`A198094(n+1)-A008683(A020639(n+1))`
-/

namespace A280918.P10298406744141425731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198094 (n + 1) - A008683 (A020639 (n + 1)).toNat

end

end A280918.P10298406744141425731

/-! ## A280918.P6440450010522814200

`A198094(n+1)-A164117(A000040(n+1))`
-/

namespace A280918.P6440450010522814200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198094 (n + 1) - A164117 (A000040 (n + 1)).toNat

end

end A280918.P6440450010522814200

/-! ## A280918.P3970402036948580168

`A198094(n+1)+A033999(A327441(n+2))`
-/

namespace A280918.P3970402036948580168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198094 (n + 1) + A033999 (A327441 (n + 2)).toNat

end

end A280918.P3970402036948580168

/-!
# A280919: Precipices from the successive terraces, descending by the main diagonal of the pyramid described in A245092. Also first differences of A071562.

The programs for A280919, the canonical program `A280919.P2165921723752371989` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280919 has offset 1).

The definition of A280919 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071562, A280223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A280919.P2165921723752371989

`A280223(A071562(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A280919

/-- `A280223(A071562(n+1))` -/
def P2165921723752371989.Spec : Prop :=
  ∀ n, P2165921723752371989.a n = A280919 (n + 1)

theorem P2165921723752371989.correct : P2165921723752371989.Spec := by
  intro n
  simp only [A280919, Nat.add_sub_cancel]

end A280919

/-! ## A280919.P10993092020857873358

`Δ[eq[1, A347950(n+1)]]`
-/

namespace A280919.P10993092020857873358
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347950 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A280919.P10993092020857873358

namespace A280919

/-- `Δ[eq[1, A347950(n+1)]]` -/
def P10993092020857873358.Spec : Prop :=
  ∀ n, P10993092020857873358.a n = A280919 (n + 1)

end A280919

/-! ## A280919.P8926427631110139578

`Δ[lt[A348327(n+1), 1]]`
-/

namespace A280919.P8926427631110139578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348327 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A280919.P8926427631110139578

namespace A280919

/-- `Δ[lt[A348327(n+1), 1]]` -/
def P8926427631110139578.Spec : Prop :=
  ∀ n, P8926427631110139578.a n = A280919 (n + 1)

end A280919

/-! ## A280919.P4979914849242556498

`A071562(n+2)-A071562(n+1)`
-/

namespace A280919.P4979914849242556498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 2) - A071562 (n + 1)

end

end A280919.P4979914849242556498

namespace A280919

/-- `A071562(n+2)-A071562(n+1)` -/
def P4979914849242556498.Spec : Prop :=
  ∀ n, P4979914849242556498.a n = A280919 (n + 1)

end A280919

/-! ## A280919.P17419890290758713933

`abs(Δ[A071562(A008619(2*n))])`
-/

namespace A280919.P17419890290758713933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A280919.P17419890290758713933

namespace A280919

/-- `abs(Δ[A071562(A008619(2*n))])` -/
def P17419890290758713933.Spec : Prop :=
  ∀ n, P17419890290758713933.a n = A280919 (n + 1)

end A280919

/-! ## A280919.P11820415815932860639

`Δ[A071562(A008619(2*n))]*A000034(2*n)`
-/

namespace A280919.P11820415815932860639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000034 (2 * n)

end

end A280919.P11820415815932860639

namespace A280919

/-- `Δ[A071562(A008619(2*n))]*A000034(2*n)` -/
def P11820415815932860639.Spec : Prop :=
  ∀ n, P11820415815932860639.a n = A280919 (n + 1)

end A280919

/-! ## A280919.P39976130722190017

`((-1)^A000796(n))²*Δ[A071562(A008619(2*n))]`
-/

namespace A280919.P39976130722190017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (A008619 (2 * n)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1 : ℚ) ^ (A000796 (n + 1) : ℤ)) ^ 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A280919.P39976130722190017

namespace A280919

/-- `((-1)^A000796(n))²*Δ[A071562(A008619(2*n))]` -/
def P39976130722190017.Spec : Prop :=
  ∀ n, P39976130722190017.a n = (A280919 (n + 1) : ℚ)

end A280919

/-! ## A280919.P12932770218647794493

`Δ[lt[1, A348364(n+1)]]`
-/

namespace A280919.P12932770218647794493
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348364 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A280919.P12932770218647794493

namespace A280919

/-- `Δ[lt[1, A348364(n+1)]]` -/
def P12932770218647794493.Spec : Prop :=
  ∀ n, P12932770218647794493.a n = A280919 (n + 1)

end A280919

/-! ## A280919.P374985518220635251

`Δ[A071562(A008619(2*n))]%A018910(n)`
-/

namespace A280919.P374985518220635251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A018910 n)

end

end A280919.P374985518220635251

namespace A280919

/-- `Δ[A071562(A008619(2*n))]%A018910(n)` -/
def P374985518220635251.Spec : Prop :=
  ∀ n, P374985518220635251.a n = A280919 (n + 1)

end A280919

/-!
# A280920: Seventh column of Euler's difference table in A068106.

The programs for A280920, there is no canonical definition to state claims against.
-/

/-! ## A280920.P4438907266709345421

`A267386(n+1)%A267405(A267419(n+1))`
-/

namespace A280920.P4438907266709345421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267386 (n + 1)) (A267405 (A267419 (n + 1)).toNat)

end

end A280920.P4438907266709345421

/-! ## A280920.P7176428373962726669

`lcm(A001222(A267407(n+1)), A267386(n+1))`
-/

namespace A280920.P7176428373962726669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001222 (A267407 (n + 1)).toNat) (A267386 (n + 1))

end

end A280920.P7176428373962726669

/-! ## A280920.P3695312628970814492

`A267386(n+1)%A120033(A325545(n))`
-/

namespace A280920.P3695312628970814492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267386 (n + 1)) (A120033 (A325545 n).toNat)

end

end A280920.P3695312628970814492

/-! ## A280920.P8649071340990819075

`A102683(A177523(n))*A267386(n+1)`
-/

namespace A280920.P8649071340990819075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A177523 n).toNat * A267386 (n + 1)

end

end A280920.P8649071340990819075

/-!
# A280921: Degree of SO(n,C), the special orthogonal group, as an algebraic variety.

The programs for A280921, there is no canonical definition to state claims against.
-/

/-! ## A280921.P7798686570279171180

`A280923(n+2)/2`
-/

namespace A280921.P7798686570279171180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280923 (n + 2) : ℚ) / 2

end

end A280921.P7798686570279171180

/-!
# A280922: Degree of Sp(n,C), the symplectic group, as an algebraic variety.

The programs for A280922, there is no canonical definition to state claims against.
-/

/-! ## A280922.P8006059454635645611

`A280921(2*n+3)/A000079(n+1)²`
-/

namespace A280922.P8006059454635645611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280921 (2 * n + 3) : ℚ) / (A000079 (n + 1) ^ 2 : ℚ)

end

end A280922.P8006059454635645611

/-! ## A280922.P17297770729319839221

`A280921(2*n+3)/(2*A000079(2*n+1))`
-/

namespace A280922.P17297770729319839221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280921 (2 * n + 3) : ℚ) / (2 * A000079 (2 * n + 1) : ℚ)

end

end A280922.P17297770729319839221

/-!
# A280923: Degree of O(n,C), the orthogonal group, as an algebraic variety.

The programs for A280923, there is no canonical definition to state claims against.
-/

/-! ## A280923.P9772812284509195663

`2*A280921(n+2)`
-/

namespace A280923.P9772812284509195663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A280921 (n + 2)

end

end A280923.P9772812284509195663

/-! ## A280923.P4326491225643717300

`A280921(n+2)+lcm(A000079(n), A280921(n+2))`
-/

namespace A280923.P4326491225643717300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280921 (n + 2) + (Int.lcm (A000079 n) (A280921 (n + 2)) : ℤ)

end

end A280923.P4326491225643717300

/-! ## A280923.P8607417690030657824

`A280921(n+2)+A280921(n+2)^A007318(∑[n])`
-/

namespace A280923.P8607417690030657824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280921 (n + 2) : ℚ) + (A280921 (n + 2) : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A280923.P8607417690030657824

/-! ## A280923.P13864510013179351253

`A280921(n+2)+A280921(n+2)/A319101(n+1)`
-/

namespace A280923.P13864510013179351253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280921 (n + 2) : ℚ) + (A280921 (n + 2) : ℚ) / (A319101 (n + 1) : ℚ)

end

end A280923.P13864510013179351253

/-! ## A280923.P15056886435005197000

`A280921(n+2)+A280921(n+2)/A007318(C(2, n))`
-/

namespace A280923.P15056886435005197000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280921 (n + 2) : ℚ) + (A280921 (n + 2) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A280923.P15056886435005197000

/-!
# A280926: Least k such that the first n digits of the decimal expansion of the ratio of the perimeter of a regular k-gon to its diameter match those of Pi.

The programs for A280926, there is no canonical definition to state claims against.
-/

/-! ## A280926.P11910314533043514516

`A255234(A073733(n+1))`
-/

namespace A280926.P11910314533043514516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255234 (A073733 (n + 1)).toNat

end

end A280926.P11910314533043514516

/-!
# A280928: Composite numbers having the same digits as their prime factors (with multiplicity), including zero digits.

The programs for A280928, there is no canonical definition to state claims against.
-/

/-! ## A280928.P1681061612333569480

`∩[A020342(n+1), A025283(n+1)]`
-/

namespace A280928.P1681061612333569480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280928.P1681061612333569480

/-! ## A280928.P8565374423547043088

`∩[A020342(n+1), A176670(n+1)]`
-/

namespace A280928.P8565374423547043088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280928.P8565374423547043088

/-! ## A280928.P4357804857453819841

`∩[A020342(n+1), A306474(n+1)]`
-/

namespace A280928.P4357804857453819841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280928.P4357804857453819841

/-! ## A280928.P16343224182849109633

`record[∏{p}[A306474(n+2), #]]`
-/

namespace A280928.P16343224182849109633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306474 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280928.P16343224182849109633

/-! ## A280928.P265570659037273400

`A080718(n+2)+A025465(A131577(n))`
-/

namespace A280928.P265570659037273400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080718 (n + 2) + A025465 (A131577 n).toNat

end

end A280928.P265570659037273400

/-!
# A280929: Number of steps required to reach the first prime when starting from n in the Collatz (or '3x+1') problem.

The programs for A280929, there is no canonical definition to state claims against.
-/

/-! ## A280929.P12696011168047099432

`A274472(A006370(n+1))+1`
-/

namespace A280929.P12696011168047099432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274472 (A006370 (n + 1)).toNat + 1

end

end A280929.P12696011168047099432

/-! ## A280929.P8135469073007743340

`A001222(A166023(n+1)+A001203(n))`
-/

namespace A280929.P8135469073007743340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A166023 (n + 1) + A001203 n).toNat

end

end A280929.P8135469073007743340

/-! ## A280929.P16260631631436818673

`A001222(A226595(n+3)+A001221(n+1))`
-/

namespace A280929.P16260631631436818673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A226595 (n + 3) + A001221 (n + 1)).toNat

end

end A280929.P16260631631436818673

/-! ## A280929.P2355413755508408548

`A375379(and(A066099(n+1), A186655(n+1)))`
-/

namespace A280929.P2355413755508408548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375379 (Int.land (A066099 (n + 1)) (A186655 (n + 1))).toNat

end

end A280929.P2355413755508408548

/-!
# A280930: Primes for which 3 is not the smallest primitive root.

The programs for A280930, there is no canonical definition to state claims against.
-/

/-! ## A280930.P16237563951503091608

`p?[n*A234959(A103309(n)+3)]`
-/

namespace A280930.P16237563951503091608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A234959 (A103309 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280930.P16237563951503091608

/-! ## A280930.P1916985101927664314

`eq[A032741(n), A267871(A046145(n))]`
-/

namespace A280930.P1916985101927664314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 (A046145 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280930.P1916985101927664314

/-! ## A280930.P80254751856148314

`eq[A018783(n), A267208(A103309(n))]`
-/

namespace A280930.P80254751856148314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267208 (A103309 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280930.P80254751856148314

/-! ## A280930.P10080949467812100707

`eq[A032741(n), A267208(A103309(n))]`
-/

namespace A280930.P10080949467812100707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267208 (A103309 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280930.P10080949467812100707

/-! ## A280930.P9562284131124441375

`p?[A000040(n+1)*A035214(A223942(n+1))]`
-/

namespace A280930.P9562284131124441375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A035214 (A223942 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280930.P9562284131124441375

/-!
# A280931: a(n) = 2*F(n-1) + 9*F(n-4) + 9*F(n-7) where n >= 7 and F = A000045.

The programs for A280931, the canonical program `A280931.P1698629247050584999` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280931 has offset 7).

The definition of A280931 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280931.P1698629247050584999

`a(n-1)+a(n-2)` with `a(0)=34, a(1)=62`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A280931

/-- `a(n-1)+a(n-2)` -/
def P1698629247050584999.Spec : Prop :=
  ∀ n, (P1698629247050584999.a n : ℤ) = A280931 (n + 7)

theorem P1698629247050584999.correct : P1698629247050584999.Spec := by
  intro n
  simp only [A280931, Nat.add_sub_cancel]

end A280931

/-! ## A280931.P12400128003612543218

`2*A022125(n+2)`
-/

namespace A280931.P12400128003612543218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022125 (n + 2)

end

end A280931.P12400128003612543218

namespace A280931

/-- `2*A022125(n+2)` -/
def P12400128003612543218.Spec : Prop :=
  ∀ n, P12400128003612543218.a n = A280931 (n + 7)

end A280931

/-! ## A280931.P10053236416575669006

`A097657(n+2)+A022088(n)`
-/

namespace A280931.P10053236416575669006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097657 (n + 2) + A022088 n

end

end A280931.P10053236416575669006

namespace A280931

/-- `A097657(n+2)+A022088(n)` -/
def P10053236416575669006.Spec : Prop :=
  ∀ n, P10053236416575669006.a n = A280931 (n + 7)

end A280931

/-! ## A280931.P14627036600139153149

`A118658(n)+A022377(n+2)`
-/

namespace A280931.P14627036600139153149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022377 (n + 2)

end

end A280931.P14627036600139153149

namespace A280931

/-- `A118658(n)+A022377(n+2)` -/
def P14627036600139153149.Spec : Prop :=
  ∀ n, P14627036600139153149.a n = A280931 (n + 7)

end A280931

/-! ## A280931.P6039655188455241688

`A022125(n+3)+A022125(n)`
-/

namespace A280931.P6039655188455241688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022125 (n + 3) + A022125 n

end

end A280931.P6039655188455241688

namespace A280931

/-- `A022125(n+3)+A022125(n)` -/
def P6039655188455241688.Spec : Prop :=
  ∀ n, P6039655188455241688.a n = A280931 (n + 7)

end A280931

/-! ## A280931.P11369415208845806392

`A022388(n+3)+A022115(n)`
-/

namespace A280931.P11369415208845806392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022388 (n + 3) + A022115 n

end

end A280931.P11369415208845806392

namespace A280931

/-- `A022388(n+3)+A022115(n)` -/
def P11369415208845806392.Spec : Prop :=
  ∀ n, P11369415208845806392.a n = A280931 (n + 7)

end A280931

/-! ## A280931.P14225133462160530412

`A022351(n+3)+A022345(n)`
-/

namespace A280931.P14225133462160530412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 (n + 3) + A022345 n

end

end A280931.P14225133462160530412

namespace A280931

/-- `A022351(n+3)+A022345(n)` -/
def P14225133462160530412.Spec : Prop :=
  ∀ n, P14225133462160530412.a n = A280931 (n + 7)

end A280931

/-! ## A280931.P10832827727680811684

`A258160(n+3)+A022112(n)`
-/

namespace A280931.P10832827727680811684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258160 (n + 3) + A022112 n

end

end A280931.P10832827727680811684

namespace A280931

/-- `A258160(n+3)+A022112(n)` -/
def P10832827727680811684.Spec : Prop :=
  ∀ n, P10832827727680811684.a n = A280931 (n + 7)

end A280931

/-! ## A280931.P15453127613158957968

`A294116(n+3)-A280154(n)`
-/

namespace A280931.P15453127613158957968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294116 (n + 3) - A280154 n

end

end A280931.P15453127613158957968

namespace A280931

/-- `A294116(n+3)-A280154(n)` -/
def P15453127613158957968.Spec : Prop :=
  ∀ n, P15453127613158957968.a n = A280931 (n + 7)

end A280931

/-! ## A280931.P8994718781745613860

`A022375(n+2)+A022112(n+1)`
-/

namespace A280931.P8994718781745613860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022375 (n + 2) + A022112 (n + 1)

end

end A280931.P8994718781745613860

namespace A280931

/-- `A022375(n+2)+A022112(n+1)` -/
def P8994718781745613860.Spec : Prop :=
  ∀ n, P8994718781745613860.a n = A280931 (n + 7)

end A280931

/-! ## A280931.P17913579662400003118

`A098127(n+3)+A000032(n+1)`
-/

namespace A280931.P17913579662400003118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098127 (n + 3) + A000032 (n + 1)

end

end A280931.P17913579662400003118

namespace A280931

/-- `A098127(n+3)+A000032(n+1)` -/
def P17913579662400003118.Spec : Prop :=
  ∀ n, P17913579662400003118.a n = A280931 (n + 7)

end A280931

/-! ## A280931.P14455213805725117773

`A022387(n+2)-A118658(n+1)`
-/

namespace A280931.P14455213805725117773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022387 (n + 2) - A118658 (n + 1)

end

end A280931.P14455213805725117773

namespace A280931

/-- `A022387(n+2)-A118658(n+1)` -/
def P14455213805725117773.Spec : Prop :=
  ∀ n, P14455213805725117773.a n = A280931 (n + 7)

end A280931

/-! ## A280931.P7379057332315333419

`A206420(n+4)+A190995(n+1)`
-/

namespace A280931.P7379057332315333419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206420 (n + 4) + A190995 (n + 1)

end

end A280931.P7379057332315333419

namespace A280931

/-- `A206420(n+4)+A190995(n+1)` -/
def P7379057332315333419.Spec : Prop :=
  ∀ n, P7379057332315333419.a n = A280931 (n + 7)

end A280931

/-! ## A280931.P13877932394732386462

`A206423(n+5)-A206422(n+1)`
-/

namespace A280931.P13877932394732386462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206423 (n + 5) - A206422 (n + 1)

end

end A280931.P13877932394732386462

namespace A280931

/-- `A206423(n+5)-A206422(n+1)` -/
def P13877932394732386462.Spec : Prop :=
  ∀ n, P13877932394732386462.a n = A280931 (n + 7)

end A280931

/-! ## A280931.P5795635838426903439

`A101156(n+6)+2*A022139(n)`
-/

namespace A280931.P5795635838426903439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101156 (n + 6) + 2 * A022139 n

end

end A280931.P5795635838426903439

namespace A280931

/-- `A101156(n+6)+2*A022139(n)` -/
def P5795635838426903439.Spec : Prop :=
  ∀ n, P5795635838426903439.a n = A280931 (n + 7)

end A280931

/-! ## A280931.P5614442371666909105

`A280932(n+8)-A022130(n+3)`
-/

namespace A280931.P5614442371666909105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280932 (n + 8) - A022130 (n + 3)

end

end A280931.P5614442371666909105

namespace A280931

/-- `A280932(n+8)-A022130(n+3)` -/
def P5614442371666909105.Spec : Prop :=
  ∀ n, P5614442371666909105.a n = A280931 (n + 7)

end A280931

/-! ## A280931.P14941346936257263426

`9*A000032(n+3)-A000032(n)`
-/

namespace A280931.P14941346936257263426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A000032 (n + 3) - A000032 n

end

end A280931.P14941346936257263426

namespace A280931

/-- `9*A000032(n+3)-A000032(n)` -/
def P14941346936257263426.Spec : Prop :=
  ∀ n, P14941346936257263426.a n = A280931 (n + 7)

end A280931

/-! ## A280931.P2551580199215922715

`2*(A206564(n+2)+A022087(n+1))`
-/

namespace A280931.P2551580199215922715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A206564 (n + 2) + A022087 (n + 1))

end

end A280931.P2551580199215922715

namespace A280931

/-- `2*(A206564(n+2)+A022087(n+1))` -/
def P2551580199215922715.Spec : Prop :=
  ∀ n, P2551580199215922715.a n = A280931 (n + 7)

end A280931

/-! ## A280931.P12687901514332808197

`A022377(n+1)+A022119(n)+A022115(n)`
-/

namespace A280931.P12687901514332808197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022377 (n + 1) + (A022119 n + A022115 n)

end

end A280931.P12687901514332808197

namespace A280931

/-- `A022377(n+1)+A022119(n)+A022115(n)` -/
def P12687901514332808197.Spec : Prop :=
  ∀ n, P12687901514332808197.a n = A280931 (n + 7)

end A280931

/-! ## A280931.P1405477692143718094

`A022104(n+1)+A022376(n)+A022108(n+1)`
-/

namespace A280931.P1405477692143718094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022104 (n + 1) + (A022376 n + A022108 (n + 1))

end

end A280931.P1405477692143718094

namespace A280931

/-- `A022104(n+1)+A022376(n)+A022108(n+1)` -/
def P1405477692143718094.Spec : Prop :=
  ∀ n, P1405477692143718094.a n = A280931 (n + 7)

end A280931

/-!
# A280932: a(n) = 2*F(n-1) + 2*F(n-3) + 10*F(n-5) + 9*F(n-8) where n >= 8 and F = A000045.

The programs for A280932, the canonical program `A280932.P9307497907304321465` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280932 has offset 8).

The definition of A280932 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280932.P9307497907304321465

`a(n-1)+a(n-2)` with `a(0)=56, a(1)=97`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A280932

/-- `a(n-1)+a(n-2)` -/
def P9307497907304321465.Spec : Prop :=
  ∀ n, (P9307497907304321465.a n : ℤ) = A280932 (n + 8)

theorem P9307497907304321465.correct : P9307497907304321465.Spec := by
  intro n
  simp only [A280932, Nat.add_sub_cancel]

end A280932

/-! ## A280932.P9637072678110912933

`A022375(n+3)+A022117(n)`
-/

namespace A280932.P9637072678110912933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022375 (n + 3) + A022117 n

end

end A280932.P9637072678110912933

namespace A280932

/-- `A022375(n+3)+A022117(n)` -/
def P9637072678110912933.Spec : Prop :=
  ∀ n, P9637072678110912933.a n = A280932 (n + 8)

end A280932

/-! ## A280932.P9270051203142818008

`A022098(n)+A000045(n+10)`
-/

namespace A280932.P9270051203142818008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 n + A000045 (n + 10)

end

end A280932.P9270051203142818008

namespace A280932

/-- `A022098(n)+A000045(n+10)` -/
def P9270051203142818008.Spec : Prop :=
  ∀ n, P9270051203142818008.a n = A280932 (n + 8)

end A280932

/-! ## A280932.P14248305776324147641

`A022375(n+2)+A022116(n+3)`
-/

namespace A280932.P14248305776324147641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022375 (n + 2) + A022116 (n + 3)

end

end A280932.P14248305776324147641

namespace A280932

/-- `A022375(n+2)+A022116(n+3)` -/
def P14248305776324147641.Spec : Prop :=
  ∀ n, P14248305776324147641.a n = A280932 (n + 8)

end A280932

/-! ## A280932.P9285204512647659334

`A206611(n+4)+A206610(n+4)`
-/

namespace A280932.P9285204512647659334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206611 (n + 4) + A206610 (n + 4)

end

end A280932.P9285204512647659334

namespace A280932

/-- `A206611(n+4)+A206610(n+4)` -/
def P9285204512647659334.Spec : Prop :=
  ∀ n, P9285204512647659334.a n = A280932 (n + 8)

end A280932

/-! ## A280932.P7253266427155513839

`A206612(n+4)+A206609(n+4)`
-/

namespace A280932.P7253266427155513839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206612 (n + 4) + A206609 (n + 4)

end

end A280932.P7253266427155513839

namespace A280932

/-- `A206612(n+4)+A206609(n+4)` -/
def P7253266427155513839.Spec : Prop :=
  ∀ n, P7253266427155513839.a n = A280932 (n + 8)

end A280932

/-! ## A280932.P7707889130838834810

`A280931(n+7)+A022130(n+3)`
-/

namespace A280932.P7707889130838834810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280931 (n + 7) + A022130 (n + 3)

end

end A280932.P7707889130838834810

namespace A280932

/-- `A280931(n+7)+A022130(n+3)` -/
def P7707889130838834810.Spec : Prop :=
  ∀ n, P7707889130838834810.a n = A280932 (n + 8)

end A280932

/-! ## A280932.P10675472302982397166

`A258160(n+3)+A000285(n+5)+A000285(n)`
-/

namespace A280932.P10675472302982397166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258160 (n + 3) + (A000285 (n + 5) + A000285 n)

end

end A280932.P10675472302982397166

namespace A280932

/-- `A258160(n+3)+A000285(n+5)+A000285(n)` -/
def P10675472302982397166.Spec : Prop :=
  ∀ n, P10675472302982397166.a n = A280932 (n + 8)

end A280932

/-! ## A280932.P12979430961650147264

`A280154(n+1)+A022345(n+5)-A006355(n+4)`
-/

namespace A280932.P12979430961650147264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280154 (n + 1) + (A022345 (n + 5) - A006355 (n + 4))

end

end A280932.P12979430961650147264

namespace A280932

/-- `A280154(n+1)+A022345(n+5)-A006355(n+4)` -/
def P12979430961650147264.Spec : Prop :=
  ∀ n, P12979430961650147264.a n = A280932 (n + 8)

end A280932

/-! ## A280932.P17178258439783641245

`A000285(n+7)-Δ[A022087(n)]`
-/

namespace A280932.P17178258439783641245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 (n + 7) - (f1 (n + 1) - f1 n)

end

end A280932.P17178258439783641245

namespace A280932

/-- `A000285(n+7)-Δ[A022087(n)]` -/
def P17178258439783641245.Spec : Prop :=
  ∀ n, P17178258439783641245.a n = A280932 (n + 8)

end A280932

/-! ## A280932.P7603493323742044418

`A000285(n+7)+A022096(n)-A022095(n+1)`
-/

namespace A280932.P7603493323742044418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 (n + 7) + (A022096 n - A022095 (n + 1))

end

end A280932.P7603493323742044418

namespace A280932

/-- `A000285(n+7)+A022096(n)-A022095(n+1)` -/
def P7603493323742044418.Spec : Prop :=
  ∀ n, P7603493323742044418.a n = A280932 (n + 8)

end A280932

/-! ## A280932.P3891661520701364388

`A280931(n+8)+A187892(n)-A187892(n+1)`
-/

namespace A280932.P3891661520701364388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280931 (n + 8) + (A187892 n - A187892 (n + 1))

end

end A280932.P3891661520701364388

namespace A280932

/-- `A280931(n+8)+A187892(n)-A187892(n+1)` -/
def P3891661520701364388.Spec : Prop :=
  ∀ n, P3891661520701364388.a n = A280932 (n + 8)

end A280932

/-! ## A280932.P7973328454644525863

`A022098(n)+Δ[A000071(n+11)]`
-/

namespace A280932.P7973328454644525863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 n + (f1 (n + 1) - f1 n)

end

end A280932.P7973328454644525863

namespace A280932

/-- `A022098(n)+Δ[A000071(n+11)]` -/
def P7973328454644525863.Spec : Prop :=
  ∀ n, P7973328454644525863.a n = A280932 (n + 8)

end A280932

/-! ## A280932.P986916189568005929

`Δ[A022130(n+6)+Δ[A022130(n)]]`
-/

namespace A280932.P986916189568005929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022130 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022130 (n + 6) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280932.P986916189568005929

namespace A280932

/-- `Δ[A022130(n+6)+Δ[A022130(n)]]` -/
def P986916189568005929.Spec : Prop :=
  ∀ n, P986916189568005929.a n = A280932 (n + 8)

end A280932

/-! ## A280932.P3310989294351241809

`Δ[A022312(n+1)+A000071(n+11)]`
-/

namespace A280932.P3310989294351241809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022312 (n + 1) + A000071 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280932.P3310989294351241809

namespace A280932

/-- `Δ[A022312(n+1)+A000071(n+11)]` -/
def P3310989294351241809.Spec : Prop :=
  ∀ n, P3310989294351241809.a n = A280932 (n + 8)

end A280932

/-!
# A280933: Expansion of Product_{k>=2} (1 + x^(Fibonacci(k)^2)).

The programs for A280933, there is no canonical definition to state claims against.
-/

/-! ## A280933.P578163651498026033

`char[n*char[A287962(n+1)]]`
-/

namespace A280933.P578163651498026033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287962 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A280933.P578163651498026033

/-! ## A280933.P1457449643460877475

`a(2-char[A287962(n+2)])` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A280933.P1457449643460877475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287962 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (2 - (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A280933.P1457449643460877475

/-! ## A280933.P1640525800163787250

`A000007(n)+char[A287962(n+1)]`
-/

namespace A280933.P1640525800163787250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287962 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A280933.P1640525800163787250

/-! ## A280933.P1781050362182898175

`A019590(n+1)+char[A287962(n+2)]`
-/

namespace A280933.P1781050362182898175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287962 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A280933.P1781050362182898175

/-! ## A280933.P18877410134579782

`char[A287962(n+1)]+A054977(n)-1`
-/

namespace A280933.P18877410134579782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287962 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A054977 n - 1)

end

end A280933.P18877410134579782

/-! ## A280933.P2310247199434483523

`char[A287962(n+1)]+A000038(n)/2`
-/

namespace A280933.P2310247199434483523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287962 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) + (A000038 n : ℚ) / 2

end

end A280933.P2310247199434483523

/-! ## A280933.P1610321701949425467

`and(1, A104794(n)+char[A287962(n+1)])`
-/

namespace A280933.P1610321701949425467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287962 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A104794 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A280933.P1610321701949425467

/-! ## A280933.P1371820673674437403

`and(1, A320967(n)+char[A287962(n+1)])`
-/

namespace A280933.P1371820673674437403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287962 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A320967 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A280933.P1371820673674437403

/-! ## A280933.P1107951712079848885

`A054521(∑[n+1])+char[A287962(n+1)]`
-/

namespace A280933.P1107951712079848885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287962 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (∑ j ∈ Finset.range (n + 1), f1 j) + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A280933.P1107951712079848885

/-! ## A280933.P15516966525073672731

`char[A287962(n+1)]+val(A000040(n+1), 2)`
-/

namespace A280933.P15516966525073672731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2

end

end A280933.P15516966525073672731

/-! ## A280933.P1022295635433484083

`char[A287962(n+1)]+and(1, A000010(n+2))`
-/

namespace A280933.P1022295635433484083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287962 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + Int.land 1 (A000010 (n + 2))

end

end A280933.P1022295635433484083

/-! ## A280933.P15225643825392436419

`A000045(char[A287962(n+1)]+C(2, n+2))`
-/

namespace A280933.P15225643825392436419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287962 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + Nat.choose 2 (n + 2))

end

end A280933.P15225643825392436419

/-! ## A280933.P15107196224644522436

`char[A287962(n+1)]-A000032(floor(1/(n+1)))+2`
-/

namespace A280933.P15107196224644522436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287962 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A000032 ⌊1 / (n + 1 : ℚ)⌋.toNat + 2

end

end A280933.P15107196224644522436

/-! ## A280933.P6488777605585783256

`char[A287962(n+1)]+C(2, n+2)^A000203(n+2)`
-/

namespace A280933.P6488777605585783256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287962 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) + (Nat.choose 2 (n + 2) : ℚ) ^ (A000203 (n + 2) : ℤ)

end

end A280933.P6488777605585783256

/-! ## A280933.P6262018004838257122

`char[A287962(n+1)]+C(2, n+2)^A014963(n+2)`
-/

namespace A280933.P6262018004838257122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287962 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) + (Nat.choose 2 (n + 2) : ℚ) ^ (A014963 (n + 2) : ℤ)

end

end A280933.P6262018004838257122

/-! ## A280933.P14884172587892153573

`char[A057427(n)*A287962(A065033(n))]`
-/

namespace A280933.P14884172587892153573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A287962 (A065033 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A280933.P14884172587892153573

/-! ## A280933.P11350085320785711292

`char[A287962(A065033(n))%A008706(n)]`
-/

namespace A280933.P11350085320785711292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287962 (A065033 n).toNat) (A008706 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A280933.P11350085320785711292

/-! ## A280933.P76293721405995018

`char[A287962(n+1)]+A008683(A008574(n))`
-/

namespace A280933.P76293721405995018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287962 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + A008683 (A008574 n).toNat

end

end A280933.P76293721405995018

/-! ## A280933.P13758921439631687836

`A007814(A056206(n))+char[A287962(n+1)]`
-/

namespace A280933.P13758921439631687836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287962 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A056206 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A280933.P13758921439631687836

/-! ## A280933.P14906477093980972588

`char[A287962(n+1)]-A008683(A140513(n))`
-/

namespace A280933.P14906477093980972588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287962 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A008683 (A140513 n).toNat

end

end A280933.P14906477093980972588

/-!
# A280934: Number of 2 X 2 matrices with all elements in {0,..,n} and (sum of terms) = permanent.

The programs for A280934, the canonical program `A280934.P5201375484770458822` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280934 has offset 0).

The definition of A280934 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A280934.P5201375484770458822

`a(n-1)+4*A000005(n+1)+8` with `a(0)=1, a(1)=1, a(2)=4, a(3)=36`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A280934

/-- `a(n-1)+4*A000005(n+1)+8` -/
def P5201375484770458822.Spec : Prop :=
  ∀ n, P5201375484770458822.a n = A280934 n

theorem P5201375484770458822.correct : P5201375484770458822.Spec := by
  intro n
  simp only [A280934]

end A280934

/-!
# A280937: Expansion of Product_{k>=1} ((1 - x^(7*(2*k-1))) * (1 - x^(7*k)) / (1 - x^k)).

The programs for A280937, there is no canonical definition to state claims against.
-/

/-! ## A280937.P6358574343331864068

`A037145(n)+A000701(A187829(n+1))`
-/

namespace A280937.P6358574343331864068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 n + A000701 (A187829 (n + 1)).toNat

end

end A280937.P6358574343331864068

/-! ## A280937.P5791063915603378240

`A027341(n)-A026814(A187829(n+1))`
-/

namespace A280937.P5791063915603378240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027341 n - A026814 (A187829 (n + 1)).toNat

end

end A280937.P5791063915603378240

/-! ## A280937.P16599718969558352430

`A027341(n)-A026815(A187829(n+1)+1)`
-/

namespace A280937.P16599718969558352430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027341 n - A026815 (A187829 (n + 1) + 1).toNat

end

end A280937.P16599718969558352430

/-! ## A280937.P6463394488652997209

`A027341(n)-A024794(A187829(n+1)+2)`
-/

namespace A280937.P6463394488652997209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027341 n - A024794 (A187829 (n + 1) + 2).toNat

end

end A280937.P6463394488652997209

/-! ## A280937.P17858204469335233480

`A027341(n)-A026816(A187829(n+1)+2)`
-/

namespace A280937.P17858204469335233480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027341 n - A026816 (A187829 (n + 1) + 2).toNat

end

end A280937.P17858204469335233480

/-!
# A280938: Expansion of Product_{k>=1} (1 - x^(8*(2*k-1))) * (1 - x^(8*k)) / (1 - x^k).

The programs for A280938, there is no canonical definition to state claims against.
-/

/-! ## A280938.P16024964640613992533

`A260164(n)+A239705(A024622(n))`
-/

namespace A280938.P16024964640613992533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260164 n + A239705 (A024622 n).toNat

end

end A280938.P16024964640613992533

/-! ## A280938.P17262006775987678887

`A025451(A184955(n))+A260164(n)-1`
-/

namespace A280938.P17262006775987678887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 (A184955 n).toNat + (A260164 n - 1)

end

end A280938.P17262006775987678887

/-! ## A280938.P10145374796945436044

`or(A178580(A228754(n+1)), A260164(n))`
-/

namespace A280938.P10145374796945436044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A178580 (A228754 (n + 1)).toNat) (A260164 n)

end

end A280938.P10145374796945436044

/-! ## A280938.P16872382803661481371

`A260164(n)+A184955(A184955(n))`
-/

namespace A280938.P16872382803661481371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260164 n + A184955 (A184955 n).toNat

end

end A280938.P16872382803661481371

/-! ## A280938.P17422989992148315049

`A260164(n)%A050803(A023426(n))`
-/

namespace A280938.P17422989992148315049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260164 n) (A050803 (A023426 n).toNat)

end

end A280938.P17422989992148315049

/-!
# A280939: Expansion of e.g.f.: 2*sinh(x/2) / sqrt(2 - exp(x)).

The programs for A280939, there is no canonical definition to state claims against.
-/

/-! ## A280939.P8729831469848849259

`A014304(n+1)+A014304(n)`
-/

namespace A280939.P8729831469848849259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014304 (n + 1) + A014304 n

end

end A280939.P8729831469848849259

/-! ## A280939.P9661035258152703373

`A008619(3*A052822(n))`
-/

namespace A280939.P9661035258152703373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (3 * A052822 n).toNat

end

end A280939.P9661035258152703373

/-!
# A280940: Irregular triangle read by rows: T(n,k) is the number of subparts in the k-th part of the symmetric representation of sigma(n).

The programs for A280940, there is no canonical definition to state claims against.
-/

/-! ## A280940.P18435667392243562839

`A384225(n+1)%5`
-/

namespace A280940.P18435667392243562839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384225 (n + 1)) 5

end

end A280940.P18435667392243562839

/-! ## A280940.P5239712244424642827

`A384225(n*a(n-1)+1)` with `a(0)=1`
-/

namespace A280940.P5239712244424642827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A384225 ((n : ℤ) * a (n - 1) + 1).toNat

end

end A280940.P5239712244424642827

/-! ## A280940.P13282534410642660021

`A000015(A384225(n+1))`
-/

namespace A280940.P13282534410642660021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A384225 (n + 1)).toNat

end

end A280940.P13282534410642660021

/-! ## A280940.P2959726987174034339

`A384225(A055643(n)+1)`
-/

namespace A280940.P2959726987174034339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384225 (A055643 n + 1).toNat

end

end A280940.P2959726987174034339

/-! ## A280940.P7335879756473956478

`A384225(A071669(n)+1)`
-/

namespace A280940.P7335879756473956478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384225 (A071669 n + 1).toNat

end

end A280940.P7335879756473956478

/-! ## A280940.P16568421979077605983

`A384225(A130446(n+1))`
-/

namespace A280940.P16568421979077605983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384225 (A130446 (n + 1)).toNat

end

end A280940.P16568421979077605983

/-! ## A280940.P2232385401096937967

`A006950(A384225(n+1)+1)`
-/

namespace A280940.P2232385401096937967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 (A384225 (n + 1) + 1).toNat

end

end A280940.P2232385401096937967

/-! ## A280940.P6204518507708438113

`A022825(A384225(n+1)+1)`
-/

namespace A280940.P6204518507708438113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022825 (A384225 (n + 1) + 1).toNat

end

end A280940.P6204518507708438113

/-! ## A280940.P10368760118529887021

`A242289(A384225(n+1)+1)`
-/

namespace A280940.P10368760118529887021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242289 (A384225 (n + 1) + 1).toNat

end

end A280940.P10368760118529887021

/-! ## A280940.P17277345646096132267

`A384225(A272159(n+1)+1)`
-/

namespace A280940.P17277345646096132267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384225 (A272159 (n + 1) + 1).toNat

end

end A280940.P17277345646096132267

/-!
# A280944: Maximum sum of a set of different positive integers less than or equal to n whose pairwise sums are all different.

The programs for A280944, there is no canonical definition to state claims against.
-/

/-! ## A280944.P8996491147991120358

`∑[A081604(A349461(n+1))-1]`
-/

namespace A280944.P8996491147991120358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A349461 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280944.P8996491147991120358

/-! ## A280944.P17150123368624183717

`∑[A081604(A008611(A349461(n+1)))]`
-/

namespace A280944.P17150123368624183717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A008611 (A349461 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280944.P17150123368624183717

/-! ## A280944.P7129142206374857384

`∑[A090529(A268448(n+3))]`
-/

namespace A280944.P7129142206374857384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090529 (A268448 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280944.P7129142206374857384

/-! ## A280944.P6105682322717895075

`∑[A000196(A028772(n+5))]`
-/

namespace A280944.P6105682322717895075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A028772 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280944.P6105682322717895075

/-! ## A280944.P10493921450432634017

`A118759(A256966(n+2))`
-/

namespace A280944.P10493921450432634017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A256966 (n + 2)).toNat

end

end A280944.P10493921450432634017

/-!
# A280946: Numbers n such that n and number of proper divisors (A032741) of n are relatively prime and n is a nonprime (A018252).

The programs for A280946, there is no canonical definition to state claims against.
-/

/-! ## A280946.P4799522984503112403

`eq[A007814(n+1), A154269(A114848(n))]`
-/

namespace A280946.P4799522984503112403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A114848 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280946.P4799522984503112403

/-!
# A280947: Expansion of Product_{k>=1} (1 - x^(18*k)) * (1 - x^(18*k-9)) * (1 + x^k) / (1 - x^k).

The programs for A280947, there is no canonical definition to state claims against.
-/

/-! ## A280947.P2723689878592467872

`∑[∑[A056556(A143419(3*n))]]`
-/

namespace A280947.P2723689878592467872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A143419 (3 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280947.P2723689878592467872

/-! ## A280947.P11322115880701026695

`A054846(A107742(2*n+1)-n)`
-/

namespace A280947.P11322115880701026695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A107742 (2 * n + 1) - (n : ℤ)).toNat

end

end A280947.P11322115880701026695

/-! ## A280947.P4459201852518990408

`∑[A000196(A295831(2*n))]`
-/

namespace A280947.P4459201852518990408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A295831 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280947.P4459201852518990408

/-! ## A280947.P14969408450409986138

`∑[A137734(∑[A089117(n+1)])]`
-/

namespace A280947.P14969408450409986138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089117 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280947.P14969408450409986138

/-! ## A280947.P6409347488208678707

`A000006(∑[A036890(n+1)+1])`
-/

namespace A280947.P6409347488208678707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036890 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A280947.P6409347488208678707

/-!
# A280949: Expansion of Product_{k>=1} (1 - x^(12*k)) * (1 - x^(4*k-2)) / (1 - x^k).

The programs for A280949, there is no canonical definition to state claims against.
-/

/-! ## A280949.P8049055434572058746

`A085736(A341496(n)+A000009(n))`
-/

namespace A280949.P8049055434572058746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A341496 n + A000009 n).toNat

end

end A280949.P8049055434572058746

/-! ## A280949.P16206126433855712123

`A280451(n)+A253513(A232623(n))`
-/

namespace A280949.P16206126433855712123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280451 n + A253513 (A232623 n).toNat

end

end A280949.P16206126433855712123

/-! ## A280949.P1527406318984368548

`A085736(A038348(n)-A331848(n))`
-/

namespace A280949.P1527406318984368548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A038348 n - A331848 n).toNat

end

end A280949.P1527406318984368548

/-! ## A280949.P8260829316368272173

`A316719(n)-A056926(A006927(n))`
-/

namespace A280949.P8260829316368272173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316719 n - A056926 (A006927 n).toNat

end

end A280949.P8260829316368272173

/-! ## A280949.P2444404505561004563

`∑[A036020(n)-A055641(A022112(n))]`
-/

namespace A280949.P2444404505561004563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036020 n - A055641 (A022112 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280949.P2444404505561004563

/-!
# A280950: Expansion of Product_{k>=0} 1/(1 - x^(3*k*(k+1)/2+1)).

The programs for A280950, there is no canonical definition to state claims against.
-/

/-! ## A280950.P11884186458577725443

`A278949(A007494(n)%A062241(n))`
-/

namespace A280950.P11884186458577725443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278949 (Int.tmod (A007494 n) (A062241 n)).toNat

end

end A280950.P11884186458577725443

/-! ## A280950.P16118292745155701120

`A278949(A032766(n)%A062241(n))`
-/

namespace A280950.P16118292745155701120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278949 (Int.tmod (A032766 n) (A062241 n)).toNat

end

end A280950.P16118292745155701120

/-! ## A280950.P3187183744464030217

`A278949(lt[A212084(3*(n+1)), A143586(n+1)])`
-/

namespace A280950.P3187183744464030217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212084 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278949 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A280950.P3187183744464030217

/-! ## A280950.P3889914512220654203

`A295659(A090452(2*(n+1)))+A068980(n)`
-/

namespace A280950.P3889914512220654203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295659 (A090452 (2 * (n + 1))).toNat + A068980 n

end

end A280950.P3889914512220654203

/-! ## A280950.P7236808179348608460

`A278949(A156261(3*n+5)-2)`
-/

namespace A280950.P7236808179348608460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278949 (A156261 (3 * n + 5) - 2).toNat

end

end A280950.P7236808179348608460

/-!
# A280951: Expansion of Product_{k>=0} 1/(1 - x^(2*k*(k+1)+1)).

The programs for A280951, there is no canonical definition to state claims against.
-/

/-! ## A280951.P16564352241435167285

`A279041(A066096(n))+C(n, A341057(n+1))`
-/

namespace A280951.P16564352241435167285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279041 (A066096 n).toNat + (Nat.choose n (A341057 (n + 1)).toNat : ℤ)

end

end A280951.P16564352241435167285

/-! ## A280951.P16219213133741781865

`A279041(A066096(n))+A000007(A218121(n+1))`
-/

namespace A280951.P16219213133741781865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279041 (A066096 n).toNat + A000007 (A218121 (n + 1)).toNat

end

end A280951.P16219213133741781865

/-! ## A280951.P13685598484279825081

`A279041(A066096(n))*A296077(A053072(n+1))`
-/

namespace A280951.P13685598484279825081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279041 (A066096 n).toNat * A296077 (A053072 (n + 1)).toNat

end

end A280951.P13685598484279825081

/-! ## A280951.P7594663092548387410

`A055396(A242658(n))*A279041(A066096(n))`
-/

namespace A280951.P7594663092548387410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A242658 n).toNat * A279041 (A066096 n).toNat

end

end A280951.P7594663092548387410

/-! ## A280951.P3562352643061620458

`A279041(A066096(n))+A000038(A093919(n+1))`
-/

namespace A280951.P3562352643061620458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279041 (A066096 n).toNat + A000038 (A093919 (n + 1)).toNat

end

end A280951.P3562352643061620458

/-!
# A280952: Expansion of Product_{k>=0} 1/(1 - x^(5*k*(k+1)/2+1)).

The programs for A280952, there is no canonical definition to state claims against.
-/

/-! ## A280952.P5322909046714388214

`A280953(lt[n, A235610(n+1)])`
-/

namespace A280952.P5322909046714388214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A280952.P5322909046714388214

/-! ## A280952.P3281187162425375267

`∑[A283991(∑[A340154(3*n+4)])]`
-/

namespace A280952.P3281187162425375267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340154 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283991 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280952.P3281187162425375267

/-! ## A280952.P3647325497167654406

`A025769(floor(n/2))%A236198(n+1)`
-/

namespace A280952.P3647325497167654406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025769 ⌊(n : ℚ) / 2⌋.toNat) (A236198 (n + 1))

end

end A280952.P3647325497167654406

/-! ## A280952.P496447452550142870

`A025769(A004526(n)%A036624(n))`
-/

namespace A280952.P496447452550142870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025769 (Int.tmod (A004526 n) (A036624 n)).toNat

end

end A280952.P496447452550142870

/-! ## A280952.P12948051804745879050

`∑[round(A173732(2*n)/A364828(2*n+5))^n]`
-/

namespace A280952.P12948051804745879050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A173732 (2 * n) : ℚ) / (A364828 (2 * n + 5) : ℚ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280952.P12948051804745879050

/-!
# A280953: Expansion of Product_{k>=0} 1/(1 - x^(3*k*(k+1)+1)).

The programs for A280953, there is no canonical definition to state claims against.
-/

/-! ## A280953.P1549578051775271444

`∑[A286935(n)]%A352136(3*n+5)`
-/

namespace A280953.P1549578051775271444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286935 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A352136 (3 * n + 5))

end

end A280953.P1549578051775271444

/-! ## A280953.P1495873800026595326

`∑[A286935(n)%A335458(n+2)]`
-/

namespace A280953.P1495873800026595326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286935 n) (A335458 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280953.P1495873800026595326

/-! ## A280953.P15205696069807140417

`∑[A286935(n)]+C(A360675(n), n+2)`
-/

namespace A280953.P15205696069807140417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286935 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose (A360675 n).toNat (n + 2) : ℤ)

end

end A280953.P15205696069807140417

/-! ## A280953.P10146849405945981502

`∑[A286935(n)%A003358(A001844(n))]`
-/

namespace A280953.P10146849405945981502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286935 n) (A003358 (A001844 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280953.P10146849405945981502

/-! ## A280953.P17308614952285608425

`A121373(A271634(n+1))+∑[A286935(n)]`
-/

namespace A280953.P17308614952285608425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286935 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A271634 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280953.P17308614952285608425

/-! ## A280953.P8324189234037917240

`∑[A286935(n)^A001844(n)]`
-/

namespace A280953.P8324189234037917240
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286935 n : ℚ) ^ (A001844 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280953.P8324189234037917240

/-!
# A280954: Number of integer partitions of n using predecessors of prime numbers.

The programs for A280954, there is no canonical definition to state claims against.
-/

/-! ## A280954.P15385110936242889006

`A280962(floor(n/2))`
-/

namespace A280954.P15385110936242889006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280962 ⌊(n : ℚ) / 2⌋.toNat

end

end A280954.P15385110936242889006

/-! ## A280954.P2349592420712311994

`A033999(n)²*A280962(ceil((n-1)/2))`
-/

namespace A280954.P2349592420712311994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A280962 ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat

end

end A280954.P2349592420712311994

/-! ## A280954.P7929396118473177163

`A280962(ceil((n-1)/2))+A008683(A046099(n+1))`
-/

namespace A280954.P7929396118473177163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280962 ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat + A008683 (A046099 (n + 1)).toNat

end

end A280954.P7929396118473177163

/-! ## A280954.P12407492460438637783

`A001221(A060308(n+1))*A280962(ceil((n-1)/2))`
-/

namespace A280954.P12407492460438637783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A060308 (n + 1)).toNat * A280962 ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat

end

end A280954.P12407492460438637783

/-! ## A280954.P18131334153940189261

`A280962(ceil((n-1)/2))%A000041(n+4)`
-/

namespace A280954.P18131334153940189261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280962 ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat) (A000041 (n + 4))

end

end A280954.P18131334153940189261

/-! ## A280954.P3438243563085054784

`A000027(A280962(ceil((n-1)/2)))`
-/

namespace A280954.P3438243563085054784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A280962 ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat).toNat

end

end A280954.P3438243563085054784

/-!
# A280955: Number of n X 2 0..2 arrays with no element equal to more than one of its horizontal, vertical and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280955, the canonical program `A280955.P2465458272490337908` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280955 has offset 1).

The definition of A280955 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280955.P9640564194951523834

`ogf((-2-x+2x^2+x^3)/(-1+4x+4x^2+x^3))`
-/

namespace A280955.P9640564194951523834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, -2, -1] [1, -4, -4, -1] n

end

end A280955.P9640564194951523834

namespace A280955

/-- `ogf((-2-x+2x^2+x^3)/(-1+4x+4x^2+x^3))` -/
def P9640564194951523834.Spec : Prop :=
  ∀ n, P9640564194951523834.a n = A280955 (n + 1)

end A280955

/-! ## A280955.P2465458272490337908

`4*a(n-1)+4*a(n-2)+a(n-3)` with `a(0)=2, a(1)=9, a(2)=42, a(3)=205`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A280955

/-- `4*a(n-1)+4*a(n-2)+a(n-3)` -/
def P2465458272490337908.Spec : Prop :=
  ∀ n, (P2465458272490337908.a n : ℤ) = A280955 (n + 1)

theorem P2465458272490337908.correct : P2465458272490337908.Spec := by
  intro n
  simp only [A280955, Nat.add_sub_cancel]

end A280955

/-! ## A280955.P9491173602458368414

`A183304(2*n+1)+A000007(n)`
-/

namespace A280955.P9491173602458368414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183304 (2 * n + 1) + A000007 n

end

end A280955.P9491173602458368414

namespace A280955

/-- `A183304(2*n+1)+A000007(n)` -/
def P9491173602458368414.Spec : Prop :=
  ∀ n, P9491173602458368414.a n = A280955 (n + 1)

end A280955

/-! ## A280955.P16021367096253361786

`Δ[A052980(2*n)-A208645(2*n)]`
-/

namespace A280955.P16021367096253361786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 (2 * n) - A208645 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280955.P16021367096253361786

namespace A280955

/-- `Δ[A052980(2*n)-A208645(2*n)]` -/
def P16021367096253361786.Spec : Prop :=
  ∀ n, P16021367096253361786.a n = A280955 (n + 1)

end A280955

/-! ## A280955.P16508712049868656114

`A052980(2*n+1)+A052910(2*n)`
-/

namespace A280955.P16508712049868656114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 (2 * n + 1) + A052910 (2 * n)

end

end A280955.P16508712049868656114

namespace A280955

/-- `A052980(2*n+1)+A052910(2*n)` -/
def P16508712049868656114.Spec : Prop :=
  ∀ n, P16508712049868656114.a n = A280955 (n + 1)

end A280955

/-! ## A280955.P6375232644994469294

`A052910(2*n)-A110513(2*n+1)`
-/

namespace A280955.P6375232644994469294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052910 (2 * n) - A110513 (2 * n + 1)

end

end A280955.P6375232644994469294

namespace A280955

/-- `A052910(2*n)-A110513(2*n+1)` -/
def P6375232644994469294.Spec : Prop :=
  ∀ n, P6375232644994469294.a n = A280955 (n + 1)

end A280955

/-! ## A280955.P14644027518274942401

`Δ[A269735(2*n+1)+A052980(2*n)]`
-/

namespace A280955.P14644027518274942401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269735 (2 * n + 1) + A052980 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280955.P14644027518274942401

namespace A280955

/-- `Δ[A269735(2*n+1)+A052980(2*n)]` -/
def P14644027518274942401.Spec : Prop :=
  ∀ n, P14644027518274942401.a n = A280955 (n + 1)

end A280955

/-! ## A280955.P15900007953074510768

`A008998(2*n+1)+A052910(2*n)-A008998(2*n)`
-/

namespace A280955.P15900007953074510768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 (2 * n + 1) + (A052910 (2 * n) - A008998 (2 * n))

end

end A280955.P15900007953074510768

namespace A280955

/-- `A008998(2*n+1)+A052910(2*n)-A008998(2*n)` -/
def P15900007953074510768.Spec : Prop :=
  ∀ n, P15900007953074510768.a n = A280955 (n + 1)

end A280955

/-! ## A280955.P11588198487216983278

`Δ[record[A110513(n)%A008998(n)]]`
-/

namespace A280955.P11588198487216983278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110513 n) (A008998 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280955.P11588198487216983278

namespace A280955

/-- `Δ[record[A110513(n)%A008998(n)]]` -/
def P11588198487216983278.Spec : Prop :=
  ∀ n, P11588198487216983278.a n = A280955 (n + 1)

end A280955

/-! ## A280955.P10857899176775602922

`Δ[A052980(2*n)%A052980(2*n+1)]`
-/

namespace A280955.P10857899176775602922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052980 (2 * n)) (A052980 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280955.P10857899176775602922

namespace A280955

/-- `Δ[A052980(2*n)%A052980(2*n+1)]` -/
def P10857899176775602922.Spec : Prop :=
  ∀ n, P10857899176775602922.a n = A280955 (n + 1)

end A280955

/-! ## A280955.P2154742725866735770

`Δ[A110513(2*n)%A110513(2*n+1)]`
-/

namespace A280955.P2154742725866735770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110513 (2 * n)) (A110513 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280955.P2154742725866735770

namespace A280955

/-- `Δ[A110513(2*n)%A110513(2*n+1)]` -/
def P2154742725866735770.Spec : Prop :=
  ∀ n, P2154742725866735770.a n = A280955 (n + 1)

end A280955

/-!
# A280956: Number of nX3 0..2 arrays with no element equal to more than one of its horizontal, vertical and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280956, there is no canonical definition to state claims against.
-/

/-! ## A280956.P3062799089937818834

`A280961(∑[n+2]+4)`
-/

namespace A280956.P3062799089937818834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280961 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A280956.P3062799089937818834

/-! ## A280956.P12317357161105761975

`A280961(A167614(n+1))%((12*n+2)^6)`
-/

namespace A280956.P12317357161105761975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280961 (A167614 (n + 1)).toNat) ((12 * n + 2) ^ 6 : ℤ)

end

end A280956.P12317357161105761975

/-! ## A280956.P14991881801132849792

`A280961(A167614(n+1))+A185255(n)`
-/

namespace A280956.P14991881801132849792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280961 (A167614 (n + 1)).toNat + A185255 n

end

end A280956.P14991881801132849792

/-! ## A280956.P12018487559451667489

`A280961(A167614(n+1))+A185284(n)`
-/

namespace A280956.P12018487559451667489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280961 (A167614 (n + 1)).toNat + A185284 n

end

end A280956.P12018487559451667489

/-! ## A280956.P6763117280155042279

`A307637(n)+A280961(A167614(n+1))`
-/

namespace A280956.P6763117280155042279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307637 n + A280961 (A167614 (n + 1)).toNat

end

end A280956.P6763117280155042279

/-!
# A280957: Number of nX4 0..2 arrays with no element equal to more than one of its horizontal, vertical and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280957, there is no canonical definition to state claims against.
-/

/-! ## A280957.P13410837387220209791

`A280961(∑[n+3]+7)`
-/

namespace A280957.P13410837387220209791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280961 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A280957.P13410837387220209791

/-!
# A280958: Number of n X 5 0..2 arrays with no element equal to more than one of its horizontal, vertical and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280958, there is no canonical definition to state claims against.
-/

/-! ## A280958.P12381419687866818890

`A280961(A374005(n+1))`
-/

namespace A280958.P12381419687866818890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280961 (A374005 (n + 1)).toNat

end

end A280958.P12381419687866818890

/-! ## A280958.P12959124730531957491

`A280961(A167499(n+3))`
-/

namespace A280958.P12959124730531957491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280961 (A167499 (n + 3)).toNat

end

end A280958.P12959124730531957491

/-! ## A280958.P4675141537637061003

`A280961(A155212(n)+13)`
-/

namespace A280958.P4675141537637061003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280961 (A155212 n + 13).toNat

end

end A280958.P4675141537637061003

/-! ## A280958.P14927803295396794315

`A280961(A056000(n)+15)`
-/

namespace A280958.P14927803295396794315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280961 (A056000 n + 15).toNat

end

end A280958.P14927803295396794315

/-! ## A280958.P9480575865078478398

`A280961(eq[7, A066657(n)])`
-/

namespace A280958.P9480575865078478398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280958.P9480575865078478398

/-!
# A280959: Number of nX6 0..2 arrays with no element equal to more than one of its horizontal, vertical and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280959, there is no canonical definition to state claims against.
-/

/-! ## A280959.P9791957093806233057

`A280961(A374007(n+1))`
-/

namespace A280959.P9791957093806233057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280961 (A374007 (n + 1)).toNat

end

end A280959.P9791957093806233057

/-! ## A280959.P14264812522499602839

`A280961(A166136(n+4))`
-/

namespace A280959.P14264812522499602839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280961 (A166136 (n + 4)).toNat

end

end A280959.P14264812522499602839

/-! ## A280959.P1758711188946690660

`A280961(A167487(n+4)-1)`
-/

namespace A280959.P1758711188946690660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280961 (A167487 (n + 4) - 1).toNat

end

end A280959.P1758711188946690660

/-! ## A280959.P6390109551013021987

`A280961(A016028(n+8)+3)`
-/

namespace A280959.P6390109551013021987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280961 (A016028 (n + 8) + 3).toNat

end

end A280959.P6390109551013021987

/-! ## A280959.P13727336964621755225

`A280961(A155212(n+1)+14)`
-/

namespace A280959.P13727336964621755225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280961 (A155212 (n + 1) + 14).toNat

end

end A280959.P13727336964621755225

/-!
# A280960: Number of nX7 0..2 arrays with no element equal to more than one of its horizontal, vertical and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280960, there is no canonical definition to state claims against.
-/

/-! ## A280960.P15991310238716692635

`A280961(A374008(n+1))`
-/

namespace A280960.P15991310238716692635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280961 (A374008 (n + 1)).toNat

end

end A280960.P15991310238716692635

/-! ## A280960.P16608547988855384547

`A280961(A167487(n+5))`
-/

namespace A280960.P16608547988855384547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280961 (A167487 (n + 5)).toNat

end

end A280960.P16608547988855384547

/-! ## A280960.P961249925897292676

`A280961(A056119(n)+28)`
-/

namespace A280960.P961249925897292676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280961 (A056119 n + 28).toNat

end

end A280960.P961249925897292676

/-! ## A280960.P1146174170693228845

`A280961(eq[11, A066657(n)])`
-/

namespace A280960.P1146174170693228845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280960.P1146174170693228845

/-! ## A280960.P2658329361961568198

`A280961(A166136(n+5)+1)`
-/

namespace A280960.P2658329361961568198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280961 (A166136 (n + 5) + 1).toNat

end

end A280960.P2658329361961568198

/-!
# A280961: T(n,k)=Number of nXk 0..2 arrays with no element equal to more than one of its horizontal, vertical and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280961, there is no canonical definition to state claims against.
-/

/-! ## A280961.P7689825152336242261

`xor(A007305(n), A218354(A070938(n+1)))`
-/

namespace A280961.P7689825152336242261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007305 n) (A218354 (A070938 (n + 1)).toNat)

end

end A280961.P7689825152336242261

/-! ## A280961.P10180296600974944097

`xor(A007305(n), A218354(A077739(n+1)))`
-/

namespace A280961.P10180296600974944097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007305 n) (A218354 (A077739 (n + 1)).toNat)

end

end A280961.P10180296600974944097

/-! ## A280961.P7354064524348225721

`xor(A007305(n), A218354(A276142(n+1)))`
-/

namespace A280961.P7354064524348225721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007305 n) (A218354 (A276142 (n + 1)).toNat)

end

end A280961.P7354064524348225721

/-! ## A280961.P16470355381223549094

`A302026(A241130(n+1)%A128352(n+1))`
-/

namespace A280961.P16470355381223549094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (Int.tmod (A241130 (n + 1)) (A128352 (n + 1))).toNat

end

end A280961.P16470355381223549094

/-! ## A280961.P13982548237253495691

`A302026(A241130(n+1))%A159262(n+1)`
-/

namespace A280961.P13982548237253495691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302026 (A241130 (n + 1)).toNat) (A159262 (n + 1))

end

end A280961.P13982548237253495691

/-!
# A280962: Number of integer partitions of the n-th even number or the n-th odd number using predecessors of prime numbers.

The programs for A280962, there is no canonical definition to state claims against.
-/

/-! ## A280962.P16573015928909802014

`A280954(A005843(n))`
-/

namespace A280962.P16573015928909802014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280954 (A005843 n).toNat

end

end A280962.P16573015928909802014

/-! ## A280962.P15289994708101885490

`A280954(A005408(n))`
-/

namespace A280962.P15289994708101885490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280954 (A005408 n).toNat

end

end A280962.P15289994708101885490

/-! ## A280962.P6768695143304014149

`A392816(n)-a(n-1)` with `a(0)=1`
-/

namespace A280962.P6768695143304014149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A392816 n - a (n - 1)

end

end A280962.P6768695143304014149

/-! ## A280962.P6352284145448159054

`A280954(2*n)`
-/

namespace A280962.P6352284145448159054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280954 (2 * n)

end

end A280962.P6352284145448159054

/-! ## A280962.P2958186268754809483

`record[A280954(and(n, n+1))]`
-/

namespace A280962.P2958186268754809483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280954 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280962.P2958186268754809483

/-! ## A280962.P16403526340446443088

`record[A280954(n)-and(1, n)]`
-/

namespace A280962.P16403526340446443088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280954 n - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280962.P16403526340446443088

/-! ## A280962.P16915722827532287510

`record[A280954(A080782(n+1))]`
-/

namespace A280962.P16915722827532287510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280954 (A080782 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280962.P16915722827532287510

/-! ## A280962.P7888445887862477023

`record[A280954(A000120(n)+n)]`
-/

namespace A280962.P7888445887862477023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280954 (A000120 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280962.P7888445887862477023

/-! ## A280962.P4231780092715395410

`record[A280954(A002260(n+2)+n)]`
-/

namespace A280962.P4231780092715395410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280954 (A002260 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280962.P4231780092715395410

/-! ## A280962.P5038613667381869949

`record[A280954(n)-A000035(n)]`
-/

namespace A280962.P5038613667381869949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280954 n - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280962.P5038613667381869949

/-! ## A280962.P10059001597726848513

`record[A280954(A062050(n+1))]`
-/

namespace A280962.P10059001597726848513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280954 (A062050 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280962.P10059001597726848513

/-! ## A280962.P2273004462301326475

`record[A280954(A008611(n))]`
-/

namespace A280962.P2273004462301326475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280954 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280962.P2273004462301326475

/-! ## A280962.P14063702568757959319

`record[A280954(A126257(n))]`
-/

namespace A280962.P14063702568757959319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280954 (A126257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280962.P14063702568757959319

/-!
# A280963: Numbers n such that for all divisors of n, ratios of 2 consecutive divisors of n will always reduce to lowest terms to a fraction with numerator=denominator+2.

The programs for A280963, there is no canonical definition to state claims against.
-/

/-! ## A280963.P15171982576567519336

`eq[ceil(abs((1-n)/2)), A136180(n^(n%2))]`
-/

namespace A280963.P15171982576567519336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136180 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280963.P15171982576567519336

/-! ## A280963.P4168605764937204135

`eq[A004526(n), A136180(n+1)]+1`
-/

namespace A280963.P4168605764937204135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136180 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A280963.P4168605764937204135

/-! ## A280963.P11193831656272343358

`A004442(eq[n, 2*A136180(n+1)])`
-/

namespace A280963.P11193831656272343358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280963.P11193831656272343358

/-! ## A280963.P17390063002048730610

`A109613(eq[n, 2*A136180(n+1)])`
-/

namespace A280963.P17390063002048730610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280963.P17390063002048730610

/-! ## A280963.P14218951701448314353

`A165998(eq[n, 2*A136180(n+1)])`
-/

namespace A280963.P14218951701448314353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280963.P14218951701448314353

/-!
# A280965: Nonsquares whose distances to the two nearest squares are squares.

The programs for A280965, the canonical program `A280965.P11828091217461109387` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280965 has offset 1).

The definition of A280965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280965.P12515123440826172548

`∩[A234334(n+1), A263651(n+1)]`
-/

namespace A280965.P12515123440826172548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280965.P12515123440826172548

namespace A280965

/-- `∩[A234334(n+1), A263651(n+1)]` -/
def P12515123440826172548.Spec : Prop :=
  ∀ n, (P12515123440826172548.a n : ℤ) = A280965 (n + 1)

end A280965

/-! ## A280965.P11828091217461109387

`∩[A256173(n+1), A263651(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A280965

/-- `∩[A256173(n+1), A263651(n+1)]` -/
def P11828091217461109387.Spec : Prop :=
  ∀ n, (P11828091217461109387.a n : ℤ) = A280965 (n + 1)

theorem P11828091217461109387.correct : P11828091217461109387.Spec := by
  intro n
  simp only [A280965, Nat.add_sub_cancel]

end A280965

/-! ## A280965.P8410329655473939252

`filter[A234334(n+2), A049240(#)]`
-/

namespace A280965.P8410329655473939252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A280965.P8410329655473939252

namespace A280965

/-- `filter[A234334(n+2), A049240(#)]` -/
def P8410329655473939252.Spec : Prop :=
  ∀ n, P8410329655473939252.a n = A280965 (n + 1)

end A280965

/-! ## A280965.P1175310995973228626

`∩[A000415(n+1), A234334(n+1)]`
-/

namespace A280965.P1175310995973228626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280965.P1175310995973228626

namespace A280965

/-- `∩[A000415(n+1), A234334(n+1)]` -/
def P1175310995973228626.Spec : Prop :=
  ∀ n, (P1175310995973228626.a n : ℤ) = A280965 (n + 1)

end A280965

/-! ## A280965.P8261918628508786232

`∩[A079896(n+1), A234334(n+1)]`
-/

namespace A280965.P8261918628508786232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280965.P8261918628508786232

namespace A280965

/-- `∩[A079896(n+1), A234334(n+1)]` -/
def P8261918628508786232.Spec : Prop :=
  ∀ n, (P8261918628508786232.a n : ℤ) = A280965 (n + 1)

end A280965

/-! ## A280965.P16375214036664513135

`∩[A218485(n+1), A234334(n+1)]`
-/

namespace A280965.P16375214036664513135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280965.P16375214036664513135

namespace A280965

/-- `∩[A218485(n+1), A234334(n+1)]` -/
def P16375214036664513135.Spec : Prop :=
  ∀ n, (P16375214036664513135.a n : ℤ) = A280965 (n + 1)

end A280965

/-! ## A280965.P9453933602841853432

`∩[A218485(n+1), A263651(n+1)]`
-/

namespace A280965.P9453933602841853432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280965.P9453933602841853432

namespace A280965

/-- `∩[A218485(n+1), A263651(n+1)]` -/
def P9453933602841853432.Spec : Prop :=
  ∀ n, (P9453933602841853432.a n : ℤ) = A280965 (n + 1)

end A280965

/-! ## A280965.P13883293003204471796

`filter[A234334(n+2), A267594(#)]`
-/

namespace A280965.P13883293003204471796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A280965.P13883293003204471796

namespace A280965

/-- `filter[A234334(n+2), A267594(#)]` -/
def P13883293003204471796.Spec : Prop :=
  ∀ n, P13883293003204471796.a n = A280965 (n + 1)

end A280965

/-! ## A280965.P1762651090347212668

`filter[A234334(n+2), A267612(#)]`
-/

namespace A280965.P1762651090347212668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267612 (f1 j).toNat = 1) n)

end

end A280965.P1762651090347212668

namespace A280965

/-- `filter[A234334(n+2), A267612(#)]` -/
def P1762651090347212668.Spec : Prop :=
  ∀ n, P1762651090347212668.a n = A280965 (n + 1)

end A280965

/-! ## A280965.P15573498420004618237

`filter[A234334(n+2), A267635(#)]`
-/

namespace A280965.P15573498420004618237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A280965.P15573498420004618237

namespace A280965

/-- `filter[A234334(n+2), A267635(#)]` -/
def P15573498420004618237.Spec : Prop :=
  ∀ n, P15573498420004618237.a n = A280965 (n + 1)

end A280965

/-!
# A280968: a(n) = A001097(n) + A001097(n+1).

The programs for A280968, the canonical program `A280968.P4817024604496871762` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280968 has offset 1).

The definition of A280968 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163656, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A280968.P4817024604496871762

`2*A163656(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A280968

/-- `2*A163656(n+1)` -/
def P4817024604496871762.Spec : Prop :=
  ∀ n, P4817024604496871762.a n = A280968 (n + 1)

theorem P4817024604496871762.correct : P4817024604496871762.Spec := by
  intro n
  simp only [A280968, Nat.add_sub_cancel]

end A280968

/-! ## A280968.P17537738799820153043

`A001097(n+1)+A001097(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280968.P17537738799820153043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1) + A001097 (n + 2)

end

end A280968.P17537738799820153043

namespace A280968

/-- `A001097(n+1)+A001097(n+2)` -/
def P17537738799820153043.Spec : Prop :=
  ∀ n, P17537738799820153043.a n = A280968 (n + 1)

end A280968

/-! ## A280968.P13492503012267709878

`A171688(n+1)+A278972(n+1)/2`
-/

namespace A280968.P13492503012267709878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171688 (n + 1) : ℚ) + (A278972 (n + 1) : ℚ) / 2

end

end A280968.P13492503012267709878

namespace A280968

/-- `A171688(n+1)+A278972(n+1)/2` -/
def P13492503012267709878.Spec : Prop :=
  ∀ n, P13492503012267709878.a n = (A280968 (n + 1) : ℚ)

end A280968

/-! ## A280968.P7102262290015384396

`A171688(n+1)+A161220(n+1)+2*(n+1)`
-/

namespace A280968.P7102262290015384396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1) + (A161220 (n + 1) + (2 * (n + 1) : ℤ))

end

end A280968.P7102262290015384396

namespace A280968

/-- `A171688(n+1)+A161220(n+1)+2*(n+1)` -/
def P7102262290015384396.Spec : Prop :=
  ∀ n, P7102262290015384396.a n = A280968 (n + 1)

end A280968

/-! ## A280968.P8379792861785097677

`A163656(A000027(n+1))+A163656(n+1)`
-/

namespace A280968.P8379792861785097677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163656 (A000027 (n + 1)).toNat + A163656 (n + 1)

end

end A280968.P8379792861785097677

namespace A280968

/-- `A163656(A000027(n+1))+A163656(n+1)` -/
def P8379792861785097677.Spec : Prop :=
  ∀ n, P8379792861785097677.a n = A280968 (n + 1)

end A280968

/-! ## A280968.P11105220157751531790

`A171688(n+1)+A265760(n+1)+A130706(n)`
-/

namespace A280968.P11105220157751531790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1) + (A265760 (n + 1) + A130706 n)

end

end A280968.P11105220157751531790

namespace A280968

/-- `A171688(n+1)+A265760(n+1)+A130706(n)` -/
def P11105220157751531790.Spec : Prop :=
  ∀ n, P11105220157751531790.a n = A280968 (n + 1)

end A280968

/-! ## A280968.P14815152301269263351

`A171688(n+1)+∪[A006512(n+1)-2, A006512(n+1)]`
-/

namespace A280968.P14815152301269263351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A280968.P14815152301269263351

namespace A280968

/-- `A171688(n+1)+∪[A006512(n+1)-2, A006512(n+1)]` -/
def P14815152301269263351.Spec : Prop :=
  ∀ n, P14815152301269263351.a n = A280968 (n + 1)

end A280968

/-! ## A280968.P4549350720575186215

`A171688(n+1)+A161165(n+1)-(A167397(n+1)+1+n)`
-/

namespace A280968.P4549350720575186215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1) + (A161165 (n + 1) - (A167397 (n + 1) + 1 + (n : ℤ)))

end

end A280968.P4549350720575186215

namespace A280968

/-- `A171688(n+1)+A161165(n+1)-(A167397(n+1)+1+n)` -/
def P4549350720575186215.Spec : Prop :=
  ∀ n, P4549350720575186215.a n = A280968 (n + 1)

end A280968

/-! ## A280968.P14922459020194684022

`A096281(ceil(cosh(sin(n))+n))`
-/

namespace A280968.P14922459020194684022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096281 ⌈Real.cosh (Real.sin (n : ℝ)) + (n : ℝ)⌉.toNat

end

end A280968.P14922459020194684022

namespace A280968

/-- `A096281(ceil(cosh(sin(n))+n))` -/
def P14922459020194684022.Spec : Prop :=
  ∀ n, P14922459020194684022.a n = A280968 (n + 1)

end A280968

/-! ## A280968.P234336261230221843

`A096281(n-floor(acot(n))+2)`
-/

namespace A280968.P234336261230221843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096281 ((n : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋ + 2).toNat

end

end A280968.P234336261230221843

namespace A280968

/-- `A096281(n-floor(acot(n))+2)` -/
def P234336261230221843.Spec : Prop :=
  ∀ n, P234336261230221843.a n = A280968 (n + 1)

end A280968

/-! ## A280968.P4637374955019971359

`A096281(ceil(sqrt(∑[2*n]))+1)`
-/

namespace A280968.P4637374955019971359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096281 (⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ + 1).toNat

end

end A280968.P4637374955019971359

namespace A280968

/-- `A096281(ceil(sqrt(∑[2*n]))+1)` -/
def P4637374955019971359.Spec : Prop :=
  ∀ n, P4637374955019971359.a n = A280968 (n + 1)

end A280968

/-! ## A280968.P3031577839930400736

`xor(floor(acot(n)²), A096281(n+2))`
-/

namespace A280968.P3031577839930400736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ (A096281 (n + 2))

end

end A280968.P3031577839930400736

namespace A280968

/-- `xor(floor(acot(n)²), A096281(n+2))` -/
def P3031577839930400736.Spec : Prop :=
  ∀ n, P3031577839930400736.a n = A280968 (n + 1)

end A280968

/-! ## A280968.P5891353241153606942

`A096281(n+2)-A000038(n)`
-/

namespace A280968.P5891353241153606942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096281 (n + 2) - A000038 n

end

end A280968.P5891353241153606942

namespace A280968

/-- `A096281(n+2)-A000038(n)` -/
def P5891353241153606942.Spec : Prop :=
  ∀ n, P5891353241153606942.a n = A280968 (n + 1)

end A280968

/-! ## A280968.P8542187048662979610

`A171821(n+2)+A171688(n+1)`
-/

namespace A280968.P8542187048662979610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 2) + A171688 (n + 1)

end

end A280968.P8542187048662979610

namespace A280968

/-- `A171821(n+2)+A171688(n+1)` -/
def P8542187048662979610.Spec : Prop :=
  ∀ n, P8542187048662979610.a n = A280968 (n + 1)

end A280968

/-! ## A280968.P175337723374796988

`A265760(n+2)+A077800(n+2)`
-/

namespace A280968.P175337723374796988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 2) + A077800 (n + 2)

end

end A280968.P175337723374796988

namespace A280968

/-- `A265760(n+2)+A077800(n+2)` -/
def P175337723374796988.Spec : Prop :=
  ∀ n, P175337723374796988.a n = A280968 (n + 1)

end A280968

/-! ## A280968.P4518080448885848052

`A171821(n+2)+A077800(n+3)`
-/

namespace A280968.P4518080448885848052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 2) + A077800 (n + 3)

end

end A280968.P4518080448885848052

namespace A280968

/-- `A171821(n+2)+A077800(n+3)` -/
def P4518080448885848052.Spec : Prop :=
  ∀ n, P4518080448885848052.a n = A280968 (n + 1)

end A280968

/-! ## A280968.P2217017267712405874

`A171821(n+2)+A171821(n+3)`
-/

namespace A280968.P2217017267712405874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 2) + A171821 (n + 3)

end

end A280968.P2217017267712405874

namespace A280968

/-- `A171821(n+2)+A171821(n+3)` -/
def P2217017267712405874.Spec : Prop :=
  ∀ n, P2217017267712405874.a n = A280968 (n + 1)

end A280968

/-! ## A280968.P2610986563114747063

`record[A096281(A052938(n))]`
-/

namespace A280968.P2610986563114747063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096281 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280968.P2610986563114747063

namespace A280968

/-- `record[A096281(A052938(n))]` -/
def P2610986563114747063.Spec : Prop :=
  ∀ n, P2610986563114747063.a n = A280968 (n + 1)

end A280968

/-! ## A280968.P10840269484306944368

`filter[A096281(n+1), A378550(#)]`
-/

namespace A280968.P10840269484306944368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A280968.P10840269484306944368

namespace A280968

/-- `filter[A096281(n+1), A378550(#)]` -/
def P10840269484306944368.Spec : Prop :=
  ∀ n, P10840269484306944368.a n = A280968 (n + 1)

end A280968

/-!
# A280970: Number of comparisons required to sort all permutations of [n] by MTF sort.

The programs for A280970, the canonical program `A280970.P3487054780338042189` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280970 has offset 0).

The definition of A280970 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280970.P3487054780338042189

`a(n-1)*n+(n-1)!*(2^n+(n-3)*n/2)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A280970

/-- `a(n-1)*n+(n-1)!*(2^n+(n-3)*n/2)` -/
def P3487054780338042189.Spec : Prop :=
  ∀ n, P3487054780338042189.a n = (A280970 n : ℚ)

end A280970

/-! ## A280970.P2003012399151733876

`∑[∑[A011371(A035053(2*n))]]`
-/

namespace A280970.P2003012399151733876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A035053 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280970.P2003012399151733876

namespace A280970

/-- `∑[∑[A011371(A035053(2*n))]]` -/
def P2003012399151733876.Spec : Prop :=
  ∀ n, P2003012399151733876.a n = A280970 n

end A280970

/-!
# A280971: Composite numbers having the same bits as their prime factors (with multiplicity), including zero bits.

The programs for A280971, there is no canonical definition to state claims against.
-/

/-! ## A280971.P3048098289479169422

`∩[A146209(n+1), A260046(n+1)]`
-/

namespace A280971.P3048098289479169422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280971.P3048098289479169422

/-! ## A280971.P5575520648517888780

`∩[A280967(A048266(n+1)), A278909(n+1)]`
-/

namespace A280971.P5575520648517888780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280967 (A048266 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280971.P5575520648517888780

/-! ## A280971.P8938573689709394123

`∩[A260046(n+1), A387462(n+1)]`
-/

namespace A280971.P8938573689709394123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280971.P8938573689709394123

/-!
# A280973: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 305", based on the 5-celled von Neumann neighborhood.

The programs for A280973, there is no canonical definition to state claims against.
-/

/-! ## A280973.P16034051310549209929

`A007088(A280975(n))`
-/

namespace A280973.P16034051310549209929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280975 n).toNat

end

end A280973.P16034051310549209929

/-! ## A280973.P12933074181340204454

`A185544(2*A280975(n))`
-/

namespace A280973.P12933074181340204454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A280975 n).toNat

end

end A280973.P12933074181340204454

/-! ## A280973.P5100156938029873711

`A185544(A280975(n)+A326680(n)+A280975(n))`
-/

namespace A280973.P5100156938029873711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A280975 n + (A326680 n + A280975 n)).toNat

end

end A280973.P5100156938029873711

/-!
# A280974: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 305", based on the 5-celled von Neumann neighborhood.

The programs for A280974, there is no canonical definition to state claims against.
-/

/-! ## A280974.P4709461704976761181

`A007088(A280976(n))`
-/

namespace A280974.P4709461704976761181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280976 n).toNat

end

end A280974.P4709461704976761181

/-! ## A280974.P3982484169788242427

`A185544(2*A280976(n))`
-/

namespace A280974.P3982484169788242427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A280976 n).toNat

end

end A280974.P3982484169788242427

/-! ## A280974.P8035330493901919323

`A185544(A280976(n)+A280976(n))`
-/

namespace A280974.P8035330493901919323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A280976 n + A280976 n).toNat

end

end A280974.P8035330493901919323

/-!
# A280977: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 307", based on the 5-celled von Neumann neighborhood.

The programs for A280977, there is no canonical definition to state claims against.
-/

/-! ## A280977.P11819244319387869102

`A007088(A280979(n))`
-/

namespace A280977.P11819244319387869102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280979 n).toNat

end

end A280977.P11819244319387869102

/-! ## A280977.P7135318627382924404

`A185544(2*A280979(n))`
-/

namespace A280977.P7135318627382924404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A280979 n).toNat

end

end A280977.P7135318627382924404

/-!
# A280978: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 307", based on the 5-celled von Neumann neighborhood.

The programs for A280978, there is no canonical definition to state claims against.
-/

/-! ## A280978.P16702524340146281376

`A007088(A280980(n))`
-/

namespace A280978.P16702524340146281376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280980 n).toNat

end

end A280978.P16702524340146281376

/-! ## A280978.P2038892695240182405

`A185544(2*A280980(n))`
-/

namespace A280978.P2038892695240182405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A280980 n).toNat

end

end A280978.P2038892695240182405

/-!
# A280981: Partial products of A049820; a(1) = a(2) = 1.

The programs for A280981, there is no canonical definition to state claims against.
-/

/-! ## A280981.P6503286289854726240

`∏[ceil(sqrt(n²+4))-∏{e}[n+1, #+1]]`
-/

namespace A280981.P6503286289854726240
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉ - ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280981.P6503286289854726240

/-! ## A280981.P8064325097964649738

`∏[round(sqrt((n+1-∏{e}[n+1, #+1])²+1))]`
-/

namespace A280981.P8064325097964649738
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((n + 1 : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)) ^ 2 + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280981.P8064325097964649738

/-! ## A280981.P3692812700010639088

`(n+1-∏{e}[n+1, #+1])*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A280981.P3692812700010639088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((n + 1 : ℤ) - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)) * a (n - 1)

end

end A280981.P3692812700010639088

/-! ## A280981.P14471763045864753568

`∏[2-A212356(n+1)+n]`
-/

namespace A280981.P14471763045864753568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A212356 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280981.P14471763045864753568

/-! ## A280981.P11647857527801555340

`a(n-1)*A049820(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A280981.P11647857527801555340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A049820 (n + 1)

end

end A280981.P11647857527801555340

/-! ## A280981.P9239535339617439604

`(n+1-A000005(n+1))*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A280981.P9239535339617439604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((n + 1 : ℤ) - A000005 (n + 1)) * a (n - 1)

end

end A280981.P9239535339617439604

/-! ## A280981.P2125033866417630795

`∏[A028310(A049820(n+1))]`
-/

namespace A280981.P2125033866417630795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A049820 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280981.P2125033866417630795

/-! ## A280981.P18273092609959176590

`∏[gcd(A003418(n), A049820(n+1))]`
-/

namespace A280981.P18273092609959176590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 n) (A049820 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280981.P18273092609959176590

/-! ## A280981.P9276031796578846008

`∏[A028310(1-Δ[A006218(n)]+n)]`
-/

namespace A280981.P9276031796578846008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (1 - (f2 (n + 1) - f2 n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280981.P9276031796578846008

/-! ## A280981.P8793216142235413924

`∏[A028310(n+1-A000005(n+1))]`
-/

namespace A280981.P8793216142235413924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n + 1 : ℤ) - A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280981.P8793216142235413924

/-!
# A280982: Partial products of A024816; a(1) = a(2) = 1.

The programs for A280982, there is no canonical definition to state claims against.
-/

/-! ## A280982.P1437442268325665945

`a(n-1)*A024816(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A280982.P1437442268325665945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A024816 (n + 1)

end

end A280982.P1437442268325665945

/-! ## A280982.P8279422419143020603

`(∑[n+1]-A000203(n+1))*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A280982.P8279422419143020603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000203 (n + 1)) * a (n - 1)

end

end A280982.P8279422419143020603

/-! ## A280982.P12988424913924642864

`∏[A028310(A024816(n+1))]`
-/

namespace A280982.P12988424913924642864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A024816 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280982.P12988424913924642864

/-! ## A280982.P3664312264363242315

`∏[or(A010052(n), A024816(n+1))]`
-/

namespace A280982.P3664312264363242315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010052 n) (A024816 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280982.P3664312264363242315

/-! ## A280982.P11398754481693259449

`∏[or(A024816(n+1), A036987(n))]`
-/

namespace A280982.P11398754481693259449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024816 (n + 1)) (A036987 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280982.P11398754481693259449

/-!
# A280984: Minimum number of dominoes on an n X n chessboard needed to prevent placement of another domino.

The programs for A280984, there is no canonical definition to state claims against.
-/

/-! ## A280984.P3774118478317448344

`record[A008611(A256913(2*n)+1)]`
-/

namespace A280984.P3774118478317448344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A256913 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280984.P3774118478317448344

/-! ## A280984.P1137497903989991157

`A008810(n+1)%A200080(n+1)`
-/

namespace A280984.P1137497903989991157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008810 (n + 1)) (A200080 (n + 1))

end

end A280984.P1137497903989991157

/-! ## A280984.P8934611899587910383

`A036410(2*n+1)%A007671(n+1)`
-/

namespace A280984.P8934611899587910383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036410 (2 * n + 1)) (A007671 (n + 1))

end

end A280984.P8934611899587910383

/-! ## A280984.P2788343078523134544

`(A032765(n)+1)%A192391(3*n+1)`
-/

namespace A280984.P2788343078523134544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032765 n + 1) (A192391 (3 * n + 1))

end

end A280984.P2788343078523134544

/-! ## A280984.P16956992960228205717

`A008806(C(3, A277317(n+1))+2*n)`
-/

namespace A280984.P16956992960228205717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008806 (Nat.choose 3 (A277317 (n + 1)).toNat + 2 * n)

end

end A280984.P16956992960228205717

/-!
# A280985: 

The programs for A280985, there is no canonical definition to state claims against.
-/

/-! ## A280985.P2191219750291417428

`A338358(n)+a(n-1)` with `a(0)=1`
-/

namespace A280985.P2191219750291417428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A338358 n + a (n - 1)

end

end A280985.P2191219750291417428

/-! ## A280985.P14638417837969389502

`and(A127202(n+1), A375155(n+1))`
-/

namespace A280985.P14638417837969389502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127202 (n + 1)) (A375155 (n + 1))

end

end A280985.P14638417837969389502

/-! ## A280985.P7454996842028351041

`A127202(n+1)%A004733(n)`
-/

namespace A280985.P7454996842028351041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127202 (n + 1)) (A004733 n)

end

end A280985.P7454996842028351041

/-! ## A280985.P18097137149477791486

`and(A003261(n+1), A127202(n+1))`
-/

namespace A280985.P18097137149477791486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003261 (n + 1)) (A127202 (n + 1))

end

end A280985.P18097137149477791486

/-! ## A280985.P9722905954009777678

`and(A127202(n+1), A163383(n+1))`
-/

namespace A280985.P9722905954009777678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127202 (n + 1)) (A163383 (n + 1))

end

end A280985.P9722905954009777678

/-! ## A280985.P10625267251117147175

`and(A063396(n), A127202(n+1))`
-/

namespace A280985.P10625267251117147175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063396 n) (A127202 (n + 1))

end

end A280985.P10625267251117147175

/-! ## A280985.P4130203640717332755

`and(A055580(n), A127202(n+1))`
-/

namespace A280985.P4130203640717332755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055580 n) (A127202 (n + 1))

end

end A280985.P4130203640717332755

/-! ## A280985.P14719975220516337092

`and(A107392(n), A127202(n+1))`
-/

namespace A280985.P14719975220516337092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107392 n) (A127202 (n + 1))

end

end A280985.P14719975220516337092

/-! ## A280985.P4919034180574736373

`and(A107464(n), A127202(n+1))`
-/

namespace A280985.P4919034180574736373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107464 n) (A127202 (n + 1))

end

end A280985.P4919034180574736373

/-! ## A280985.P4860849229826656217

`and(A107953(n), A127202(n+1))`
-/

namespace A280985.P4860849229826656217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107953 n) (A127202 (n + 1))

end

end A280985.P4860849229826656217

/-! ## A280985.P13555114821204791911

`and(A127202(n+1), A211386(n))`
-/

namespace A280985.P13555114821204791911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127202 (n + 1)) (A211386 n)

end

end A280985.P13555114821204791911

/-! ## A280985.P14812169569509184918

`and(A107954(n), A127202(n+1))`
-/

namespace A280985.P14812169569509184918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107954 n) (A127202 (n + 1))

end

end A280985.P14812169569509184918

/-! ## A280985.P13923017163046921049

`and(A107955(n), A127202(n+1))`
-/

namespace A280985.P13923017163046921049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107955 n) (A127202 (n + 1))

end

end A280985.P13923017163046921049

/-! ## A280985.P5461250801681818033

`gcd(A127202(n+1), A392539(n))`
-/

namespace A280985.P5461250801681818033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127202 (n + 1)) (A392539 n)

end

end A280985.P5461250801681818033

/-! ## A280985.P10028955686124414280

`and(A018886(n+1), A127202(n+1))`
-/

namespace A280985.P10028955686124414280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018886 (n + 1)) (A127202 (n + 1))

end

end A280985.P10028955686124414280

/-! ## A280985.P14614403934184183997

`and(A060160(n+1), A127202(n+1))`
-/

namespace A280985.P14614403934184183997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060160 (n + 1)) (A127202 (n + 1))

end

end A280985.P14614403934184183997

/-! ## A280985.P2510202911949066825

`and(A127202(n+1), A267527(n))`
-/

namespace A280985.P2510202911949066825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127202 (n + 1)) (A267527 n)

end

end A280985.P2510202911949066825

/-! ## A280985.P8319951085405233773

`and(A127202(n+1), A233868(n+1))`
-/

namespace A280985.P8319951085405233773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127202 (n + 1)) (A233868 (n + 1))

end

end A280985.P8319951085405233773

/-! ## A280985.P13281253510208944521

`and(A103454(n), A127202(n+1))`
-/

namespace A280985.P13281253510208944521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103454 n) (A127202 (n + 1))

end

end A280985.P13281253510208944521

/-! ## A280985.P14826326210982182237

`and(A127202(n+1), A263806(n))`
-/

namespace A280985.P14826326210982182237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127202 (n + 1)) (A263806 n)

end

end A280985.P14826326210982182237

/-!
# A280986: Least k > 0 such that (k*n)^2 is in A002202, or 0 if no such k exists.

The programs for A280986, there is no canonical definition to state claims against.
-/

/-! ## A280986.P2440923574030728973

`A172008(A288326(n)+A020639(n+1))`
-/

namespace A280986.P2440923574030728973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172008 (A288326 n + A020639 (n + 1)).toNat

end

end A280986.P2440923574030728973

/-! ## A280986.P8531680315492160125

`gcd(record[A211096(n)], A039074(n+1))`
-/

namespace A280986.P8531680315492160125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211096 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A039074 (n + 1))

end

end A280986.P8531680315492160125

/-! ## A280986.P1928423901010992883

`gcd(∏{d}[n, #], A046691(A088814(n+1)))`
-/

namespace A280986.P1928423901010992883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A046691 (A088814 (n + 1)).toNat)

end

end A280986.P1928423901010992883

/-! ## A280986.P3722721119094168465

`gcd(A053828(n), A053828(A125606(n)))`
-/

namespace A280986.P3722721119094168465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053828 n) (A053828 (A125606 n).toNat)

end

end A280986.P3722721119094168465

/-! ## A280986.P3925284964785330699

`A001511(A260443(n)+p?[A077028(n)])`
-/

namespace A280986.P3925284964785330699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A260443 n + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A280986.P3925284964785330699

/-!
# A280987: {Concatenation n, n-1, n-2, ...3,2,1} mod sigma(n).

The programs for A280987, there is no canonical definition to state claims against.
-/

/-! ## A280987.P16968274194778754478

`A000422(n+1)%∑{d}[n+1, #]`
-/

namespace A280987.P16968274194778754478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000422 (n + 1)) ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A280987.P16968274194778754478

/-! ## A280987.P3240105569086247396

`A000422(n+1)%Δ[A160664(n)]`
-/

namespace A280987.P3240105569086247396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000422 (n + 1)) (f1 (n + 1) - f1 n)

end

end A280987.P3240105569086247396

/-! ## A280987.P700074178486931818

`(A072861(n+1)+A000422(n+1))%A143348(n+1)`
-/

namespace A280987.P700074178486931818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072861 (n + 1) + A000422 (n + 1)) (A143348 (n + 1))

end

end A280987.P700074178486931818

/-! ## A280987.P12632634431587734053

`(A074400(n+1)+A000422(n+1))%A143348(n+1)`
-/

namespace A280987.P12632634431587734053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074400 (n + 1) + A000422 (n + 1)) (A143348 (n + 1))

end

end A280987.P12632634431587734053

/-! ## A280987.P9658900404944513016

`(A000422(n+1)-A239050(n+1))%A143348(n+1)`
-/

namespace A280987.P9658900404944513016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000422 (n + 1) - A239050 (n + 1)) (A143348 (n + 1))

end

end A280987.P9658900404944513016

/-! ## A280987.P10674788211049354828

`(A000422(n+1)-A272027(n+1))%A143348(n+1)`
-/

namespace A280987.P10674788211049354828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000422 (n + 1) - A272027 (n + 1)) (A143348 (n + 1))

end

end A280987.P10674788211049354828

/-! ## A280987.P16228758748121180550

`(A000422(n+1)-A274535(n+1))%A143348(n+1)`
-/

namespace A280987.P16228758748121180550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000422 (n + 1) - A274535 (n + 1)) (A143348 (n + 1))

end

end A280987.P16228758748121180550

/-!
# A280989: Rounded percent probability that a positive test result for some condition is a true positive when n% of the tested population has that condition and the test is 95% accurate.

The programs for A280989, the canonical program `A280989.P5609435097380809924` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280989 has offset 0).

The definition of A280989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280989.P5609435097380809924

`round(950*n/(9*n+50))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A280989

/-- `round(950*n/(9*n+50))` -/
def P5609435097380809924.Spec : Prop :=
  ∀ n, P5609435097380809924.a n = A280989 n

theorem P5609435097380809924.correct : P5609435097380809924.Spec := by
  intro n
  simp only [A280989]

end A280989

/-!
# A280990: Least prime p such that n divides phi(p*n).

The programs for A280990, there is no canonical definition to state claims against.
-/

/-! ## A280990.P16097573810062899858

`A164022(A109395(n+1))%((A004438(n+1)+2)²-3)²`
-/

namespace A280990.P16097573810062899858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164022 (A109395 (n + 1)).toNat) (((A004438 (n + 1) + 2) ^ 2 - 3) ^ 2)

end

end A280990.P16097573810062899858

/-! ## A280990.P6881425605975402757

`A057427(A050167(n))*A164022(A109395(n+1))`
-/

namespace A280990.P6881425605975402757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A050167 n).toNat * A164022 (A109395 (n + 1)).toNat

end

end A280990.P6881425605975402757

/-! ## A280990.P11542331423783594504

`A164022(A109395(n+1))+A000007(A004438(n+1))`
-/

namespace A280990.P11542331423783594504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164022 (A109395 (n + 1)).toNat + A000007 (A004438 (n + 1)).toNat

end

end A280990.P11542331423783594504

/-! ## A280990.P4349216782277108424

`A054977(A226806(n+1))*A164022(A109395(n+1))`
-/

namespace A280990.P4349216782277108424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A226806 (n + 1)).toNat * A164022 (A109395 (n + 1)).toNat

end

end A280990.P4349216782277108424

/-! ## A280990.P8311829359803720811

`A164022(A109395(n+1))%A062725(A139949(n+1))`
-/

namespace A280990.P8311829359803720811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164022 (A109395 (n + 1)).toNat) (A062725 (A139949 (n + 1)).toNat)

end

end A280990.P8311829359803720811

/-! ## A280990.P6395808333803686841

`A164022(A109395(n+1))+A000010(A004438(n+1)+2)%2`
-/

namespace A280990.P6395808333803686841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164022 (A109395 (n + 1)).toNat + Int.tmod (A000010 (A004438 (n + 1) + 2).toNat) 2

end

end A280990.P6395808333803686841

/-! ## A280990.P18354462656062264194

`A164022(A109395(n+1))%A007535(A003114(n))`
-/

namespace A280990.P18354462656062264194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164022 (A109395 (n + 1)).toNat) (A007535 (A003114 n).toNat)

end

end A280990.P18354462656062264194

/-!
# A280991: Positive integers that can be expressed as the sum of four pairwise coprime squares.

The programs for A280991, there is no canonical definition to state claims against.
-/

/-! ## A280991.P2766496877371255726

`A103215(n+1)+A000122(A016826(n))`
-/

namespace A280991.P2766496877371255726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103215 (n + 1) + A000122 (A016826 n).toNat

end

end A280991.P2766496877371255726

/-! ## A280991.P13238644231191622591

`A103215(n+1)+A061142(A046002(n+1))`
-/

namespace A280991.P13238644231191622591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103215 (n + 1) + A061142 (A046002 (n + 1)).toNat

end

end A280991.P13238644231191622591

/-! ## A280991.P1722272604429087214

`A151925(A224770(2*(n+2)))+A103215(n+1)`
-/

namespace A280991.P1722272604429087214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151925 (A224770 (2 * (n + 2))).toNat + A103215 (n + 1)

end

end A280991.P1722272604429087214

/-! ## A280991.P203576033473851457

`A103266(A278253(3*n+5))+A103215(n+1)`
-/

namespace A280991.P203576033473851457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103266 (A278253 (3 * n + 5)).toNat + A103215 (n + 1)

end

end A280991.P203576033473851457

/-!
# A280992: Squarefree triangular numbers that are products of consecutive primes.

The programs for A280992, there is no canonical definition to state claims against.
-/

/-! ## A280992.P11984726179909376341

`lcm(A076375(n+1), A181131(A219751(n)))`
-/

namespace A280992.P11984726179909376341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A076375 (n + 1)) (A181131 (A219751 n).toNat)

end

end A280992.P11984726179909376341

/-! ## A280992.P3262965593638413800

`record[A096334(A054068(n+1)+A007318(n+1))]`
-/

namespace A280992.P3262965593638413800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 (A054068 (n + 1) + A007318 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280992.P3262965593638413800

/-! ## A280992.P16595582770245315925

`∩[A000217(A156351(2*n+1)), A077011(n+1)]`
-/

namespace A280992.P16595582770245315925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A156351 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280992.P16595582770245315925

/-!
# A280993: Primes such that the absolute value of the difference between the largest digit and the sum of all the other digits is a cube.

The programs for A280993, there is no canonical definition to state claims against.
-/

/-! ## A280993.P13048423210335010626

`p?[∑[dr(A324324(n+1)²)]]`
-/

namespace A280993.P13048423210335010626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A324324 (n + 1) ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A280993.P13048423210335010626

/-!
# A280994: Triangle read by rows giving Matula-Goebel numbers of planted achiral trees with n nodes.

The programs for A280994, there is no canonical definition to state claims against.
-/

/-! ## A280994.P11197418900686202225

`A324841(record[A001057(A330878(n+1))])`
-/

namespace A280994.P11197418900686202225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A330878 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324841 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A280994.P11197418900686202225

/-! ## A280994.P12534212541985118268

`A323306(lt[A247936(n), A018252(n+1)])`
-/

namespace A280994.P12534212541985118268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247936 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323306 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A280994.P12534212541985118268

/-! ## A280994.P2989579841650842145

`record[A063973(A233777(n))]`
-/

namespace A280994.P2989579841650842145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063973 (A233777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280994.P2989579841650842145

/-! ## A280994.P16298091274582029824

`record[A161924(A020753(n+1))]`
-/

namespace A280994.P16298091274582029824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161924 (A020753 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280994.P16298091274582029824

/-!
# A280995: a(n) is the number produced when n is converted to binary reflected Gray code, the binary digits are reversed and the code is converted back to decimal.

The programs for A280995, the canonical program `A280995.P6106047691923245664` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280995 has offset 0).

The definition of A280995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280995.P16678580671391518157

`A006257(A341915(n))`
-/

namespace A280995.P16678580671391518157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A341915 n).toNat

end

end A280995.P16678580671391518157

namespace A280995

/-- `A006257(A341915(n))` -/
def P16678580671391518157.Spec : Prop :=
  ∀ n, P16678580671391518157.a n = A280995 n

end A280995

/-! ## A280995.P6106047691923245664

`A003188(n)-A055945(A003188(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A280995

/-- `A003188(n)-A055945(A003188(n))` -/
def P6106047691923245664.Spec : Prop :=
  ∀ n, P6106047691923245664.a n = A280995 n

theorem P6106047691923245664.correct : P6106047691923245664.Spec := by
  intro n
  simp only [A280995]

end A280995

/-! ## A280995.P6354198641415556816

`A030101(n)+A036044(n)-A281499(n)`
-/

namespace A280995.P6354198641415556816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n + (A036044 n - A281499 n)

end

end A280995.P6354198641415556816

namespace A280995

/-- `A030101(n)+A036044(n)-A281499(n)` -/
def P6354198641415556816.Spec : Prop :=
  ∀ n, P6354198641415556816.a n = A280995 n

end A280995

/-! ## A280995.P4843785254747549762

`A030101(xor(n, floor(n/2)))`
-/

namespace A280995.P4843785254747549762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A280995.P4843785254747549762

namespace A280995

/-- `A030101(xor(n, floor(n/2)))` -/
def P4843785254747549762.Spec : Prop :=
  ∀ n, P4843785254747549762.a n = A280995 n

end A280995

/-! ## A280995.P7211404805339617465

`A030101(and(2*n, -n)-ceil(n/2))`
-/

namespace A280995.P7211404805339617465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.land (2 * n : ℤ) (-(n : ℤ)) - ⌈(n : ℚ) / 2⌉).toNat

end

end A280995.P7211404805339617465

namespace A280995

/-- `A030101(and(2*n, -n)-ceil(n/2))` -/
def P7211404805339617465.Spec : Prop :=
  ∀ n, P7211404805339617465.a n = A280995 n

end A280995

/-! ## A280995.P2010276924102604538

`A030101(∑[2/a(n-1)]-and(2*n+1, n+1))` with `a(0)=1`
-/

namespace A280995.P2010276924102604538
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j - (Nat.land (2 * n + 1) (n + 1) : ℚ))).toNat

end

end A280995.P2010276924102604538

namespace A280995

/-- `A030101(∑[2/a(n-1)]-and(2*n+1, n+1))` -/
def P2010276924102604538.Spec : Prop :=
  ∀ n, P2010276924102604538.a n = A280995 n

end A280995

/-! ## A280995.P6051827765272654382

`A030101(A003188(n))`
-/

namespace A280995.P6051827765272654382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A003188 n).toNat

end

end A280995.P6051827765272654382

namespace A280995

/-- `A030101(A003188(n))` -/
def P6051827765272654382.Spec : Prop :=
  ∀ n, P6051827765272654382.a n = A280995 n

end A280995

/-! ## A280995.P3932832461345510194

`A325401(2*A003188(n))`
-/

namespace A280995.P3932832461345510194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A003188 n).toNat

end

end A280995.P3932832461345510194

namespace A280995

/-- `A325401(2*A003188(n))` -/
def P3932832461345510194.Spec : Prop :=
  ∀ n, P3932832461345510194.a n = A280995 n

end A280995

/-! ## A280995.P4567161051355663684

`A030101(A105081(n+1)-1)`
-/

namespace A280995.P4567161051355663684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A105081 (n + 1) - 1).toNat

end

end A280995.P4567161051355663684

namespace A280995

/-- `A030101(A105081(n+1)-1)` -/
def P4567161051355663684.Spec : Prop :=
  ∀ n, P4567161051355663684.a n = A280995 n

end A280995

/-! ## A280995.P13741614556207952779

`A325401(A003188(n)+A003188(n))`
-/

namespace A280995.P13741614556207952779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A003188 n + A003188 n).toNat

end

end A280995.P13741614556207952779

namespace A280995

/-- `A325401(A003188(n)+A003188(n))` -/
def P13741614556207952779.Spec : Prop :=
  ∀ n, P13741614556207952779.a n = A280995 n

end A280995

/-! ## A280995.P8684612182266045697

`A030101(A193231(A006068(A193231(n))))`
-/

namespace A280995.P8684612182266045697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A193231 (A006068 (A193231 n).toNat).toNat).toNat

end

end A280995.P8684612182266045697

namespace A280995

/-- `A030101(A193231(A006068(A193231(n))))` -/
def P8684612182266045697.Spec : Prop :=
  ∀ n, P8684612182266045697.a n = A280995 n

end A280995

/-! ## A280995.P7119231788264445271

`A030101(A395535(n))`
-/

namespace A280995.P7119231788264445271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A395535 n).toNat

end

end A280995.P7119231788264445271

namespace A280995

/-- `A030101(A395535(n))` -/
def P7119231788264445271.Spec : Prop :=
  ∀ n, P7119231788264445271.a n = A280995 n

end A280995

/-! ## A280995.P9983121417545998410

`A030109(A003188(n)+2^ceil(log2(n+1)))`
-/

namespace A280995.P9983121417545998410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (SequenceMachineLib.roundAway ((A003188 n : ℚ) + (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat

end

end A280995.P9983121417545998410

namespace A280995

/-- `A030109(A003188(n)+2^ceil(log2(n+1)))` -/
def P9983121417545998410.Spec : Prop :=
  ∀ n, P9983121417545998410.a n = A280995 n

end A280995

/-! ## A280995.P4227069636798155068

`A030109(A062383(n)+A003188(n))`
-/

namespace A280995.P4227069636798155068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A062383 n + A003188 n).toNat

end

end A280995.P4227069636798155068

namespace A280995

/-- `A030109(A062383(n)+A003188(n))` -/
def P4227069636798155068.Spec : Prop :=
  ∀ n, P4227069636798155068.a n = A280995 n

end A280995

/-! ## A280995.P12550387502798561027

`A030109(or(A003188(n), A062383(n)))`
-/

namespace A280995.P12550387502798561027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (Int.lor (A003188 n) (A062383 n)).toNat

end

end A280995.P12550387502798561027

namespace A280995

/-- `A030109(or(A003188(n), A062383(n)))` -/
def P12550387502798561027.Spec : Prop :=
  ∀ n, P12550387502798561027.a n = A280995 n

end A280995

/-! ## A280995.P16674933854997269612

`A030109(xor(A003188(n), A062383(n)))`
-/

namespace A280995.P16674933854997269612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (Int.xor (A003188 n) (A062383 n)).toNat

end

end A280995.P16674933854997269612

namespace A280995

/-- `A030109(xor(A003188(n), A062383(n)))` -/
def P16674933854997269612.Spec : Prop :=
  ∀ n, P16674933854997269612.a n = A280995 n

end A280995

/-! ## A280995.P13360582424580945856

`A030101(A268820((n+1)*2*n))`
-/

namespace A280995.P13360582424580945856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A268820 ((n + 1) * (2 * n))).toNat

end

end A280995.P13360582424580945856

namespace A280995

/-- `A030101(A268820((n+1)*2*n))` -/
def P13360582424580945856.Spec : Prop :=
  ∀ n, P13360582424580945856.a n = A280995 n

end A280995

/-!
# A280996: Prime Matula-Goebel numbers of generalized Bethe trees.

The programs for A280996, there is no canonical definition to state claims against.
-/

/-! ## A280996.P12429217539405394090

`A000040(A214577(n%a(n-1)))` with `a(0)=2`
-/

namespace A280996.P12429217539405394090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (A214577 (Int.tmod (n : ℤ) (a (n - 1))).toNat).toNat

end

end A280996.P12429217539405394090

/-! ## A280996.P6673009735496134581

`A000040(∪[2^n, A214577(n+1)])`
-/

namespace A280996.P6673009735496134581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214577 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A280996.P6673009735496134581

/-! ## A280996.P13545901334030755436

`A000040(∪[A214577(n+1), A000079(n)])`
-/

namespace A280996.P13545901334030755436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A280996.P13545901334030755436

/-! ## A280996.P5809640652908916461

`A000040(∪[A214577(n+1), A167725(n+1)])`
-/

namespace A280996.P5809640652908916461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167725 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A280996.P5809640652908916461

/-! ## A280996.P18324429775010211595

`A000040(∪[A214577(n+1), A321832(n+1)])`
-/

namespace A280996.P18324429775010211595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321832 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A280996.P18324429775010211595

/-! ## A280996.P3257831185761261319

`A000040(∪[A214577(n+1), A029991(n+2)])`
-/

namespace A280996.P3257831185761261319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029991 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A280996.P3257831185761261319

/-!
# A280997: Primes that have exactly 3 ones in both their binary and ternary expansions.

The programs for A280997, there is no canonical definition to state claims against.
-/

/-! ## A280997.P6202313582912187252

`∩[A070739(n+1), A281004(n+1)]`
-/

namespace A280997.P6202313582912187252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280997.P6202313582912187252

/-! ## A280997.P10002952634867423809

`∩[A081091(n+1), A281004(n+1)]`
-/

namespace A280997.P10002952634867423809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280997.P10002952634867423809

/-! ## A280997.P6575234219231186468

`∩[A128898(n+1), A281004(n+1)]`
-/

namespace A280997.P6575234219231186468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280997.P6575234219231186468

/-! ## A280997.P14363680241759690036

`p?[A281004(n+1)]`
-/

namespace A280997.P14363680241759690036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280997.P14363680241759690036

/-! ## A280997.P15002189617647555680

`p?[record[A281004(A106466(n))]]`
-/

namespace A280997.P15002189617647555680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281004 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280997.P15002189617647555680

/-!
# A280998: Numbers with a prime number of 1's in their binary reflected Gray code representation.

The programs for A280998, the canonical program `A280998.P3756375050482110601` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280998 has offset 1).

The definition of A280998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4049 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280998.P18285892635648392210

`eq[1, A053989(A088748(n))]`
-/

namespace A280998.P18285892635648392210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (A088748 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280998.P18285892635648392210

namespace A280998

/-- `eq[1, A053989(A088748(n))]` -/
def P18285892635648392210.Spec : Prop :=
  ∀ n, (P18285892635648392210.a n : ℤ) = A280998 (n + 1)

end A280998

/-! ## A280998.P3756375050482110601

`eq[2, ∏{e}[A005811(n)², #]]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A280998

/-- `eq[2, ∏{e}[A005811(n)², #]]` -/
def P3756375050482110601.Spec : Prop :=
  ∀ n, (P3756375050482110601.a n : ℤ) = A280998 (n + 1)

theorem P3756375050482110601.correct : P3756375050482110601.Spec := by
  intro n
  simp only [A280998, Nat.add_sub_cancel]

end A280998

/-! ## A280998.P3866478804092907521

`eq[1, A003415(A005811(n))]`
-/

namespace A280998.P3866478804092907521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280998.P3866478804092907521

namespace A280998

/-- `eq[1, A003415(A005811(n))]` -/
def P3866478804092907521.Spec : Prop :=
  ∀ n, (P3866478804092907521.a n : ℤ) = A280998 (n + 1)

end A280998

/-! ## A280998.P2896713941974757327

`eq[2, ∏{e}[A005811(n), A264986(#)]]`
-/

namespace A280998.P2896713941974757327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, A264986 (Nat.factorization (f3 n).natAbs p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280998.P2896713941974757327

namespace A280998

/-- `eq[2, ∏{e}[A005811(n), A264986(#)]]` -/
def P2896713941974757327.Spec : Prop :=
  ∀ n, (P2896713941974757327.a n : ℤ) = A280998 (n + 1)

end A280998

/-! ## A280998.P9443504524833031610

`eq[2, A000005(A005811(n+1))]+1`
-/

namespace A280998.P9443504524833031610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A005811 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A280998.P9443504524833031610

namespace A280998

/-- `eq[2, A000005(A005811(n+1))]+1` -/
def P9443504524833031610.Spec : Prop :=
  ∀ n, (P9443504524833031610.a n : ℤ) = A280998 (n + 1)

end A280998

/-! ## A280998.P16888684445288059998

`eq[1, A001222(A008620(2^A005811(n)))]`
-/

namespace A280998.P16888684445288059998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008620 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A005811 n : ℤ))).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280998.P16888684445288059998

namespace A280998

/-- `eq[1, A001222(A008620(2^A005811(n)))]` -/
def P16888684445288059998.Spec : Prop :=
  ∀ n, (P16888684445288059998.a n : ℤ) = A280998 (n + 1)

end A280998

/-! ## A280998.P10936716907306080119

`eq[A005811(n), A035031(A005811(n)+1)]`
-/

namespace A280998.P10936716907306080119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (A005811 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280998.P10936716907306080119

namespace A280998

/-- `eq[A005811(n), A035031(A005811(n)+1)]` -/
def P10936716907306080119.Spec : Prop :=
  ∀ n, (P10936716907306080119.a n : ℤ) = A280998 (n + 1)

end A280998

/-! ## A280998.P3785375194519829440

`eq[1, A087116(A265723(n)+A087116(n))]`
-/

namespace A280998.P3785375194519829440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (A265723 n + A087116 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280998.P3785375194519829440

namespace A280998

/-- `eq[1, A087116(A265723(n)+A087116(n))]` -/
def P3785375194519829440.Spec : Prop :=
  ∀ n, (P3785375194519829440.a n : ℤ) = A280998 (n + 1)

end A280998

/-! ## A280998.P3309925540253289820

`eq[1, A001222(A001222(A243353(n+1)))]+1`
-/

namespace A280998.P3309925540253289820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001222 (A243353 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A280998.P3309925540253289820

namespace A280998

/-- `eq[1, A001222(A001222(A243353(n+1)))]+1` -/
def P3309925540253289820.Spec : Prop :=
  ∀ n, (P3309925540253289820.a n : ℤ) = A280998 (n + 1)

end A280998

/-!
# A280999: Numbers with a prime number of 0's in their binary reflected Gray code representation.

The programs for A280999, the canonical program `A280999.P3057871319140881242` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280999 has offset 1).

The definition of A280999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4790 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280999.P3057871319140881242

`eq[1, A032741(A092339(n))]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A280999

/-- `eq[1, A032741(A092339(n))]` -/
def P3057871319140881242.Spec : Prop :=
  ∀ n, (P3057871319140881242.a n : ℤ) = A280999 (n + 1)

theorem P3057871319140881242.correct : P3057871319140881242.Spec := by
  intro n
  simp only [A280999, Nat.add_sub_cancel]

end A280999

/-! ## A280999.P1353788198530109690

`lt[0, A137331(A281499(n))]`
-/

namespace A280999.P1353788198530109690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137331 (A281499 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A280999.P1353788198530109690

namespace A280999

/-- `lt[0, A137331(A281499(n))]` -/
def P1353788198530109690.Spec : Prop :=
  ∀ n, (P1353788198530109690.a n : ℤ) = A280999 (n + 1)

end A280999

/-! ## A280999.P10530892407564145971

`eq[1, A137331(A281499(n+1))]+1`
-/

namespace A280999.P10530892407564145971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137331 (A281499 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A280999.P10530892407564145971

namespace A280999

/-- `eq[1, A137331(A281499(n+1))]+1` -/
def P10530892407564145971.Spec : Prop :=
  ∀ n, (P10530892407564145971.a n : ℤ) = A280999 (n + 1)

end A280999

/-! ## A280999.P1350064870689723974

`eq[1, A137331(A281499(2*n-n))]`
-/

namespace A280999.P1350064870689723974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137331 (A281499 (2 * n - n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280999.P1350064870689723974

namespace A280999

/-- `eq[1, A137331(A281499(2*n-n))]` -/
def P1350064870689723974.Spec : Prop :=
  ∀ n, (P1350064870689723974.a n : ℤ) = A280999 (n + 1)

end A280999

/-! ## A280999.P14383221450652917023

`eq[1, A032741(A080791(A003188(n)))]`
-/

namespace A280999.P14383221450652917023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A080791 (A003188 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280999.P14383221450652917023

namespace A280999

/-- `eq[1, A032741(A080791(A003188(n)))]` -/
def P14383221450652917023.Spec : Prop :=
  ∀ n, (P14383221450652917023.a n : ℤ) = A280999 (n + 1)

end A280999

/-! ## A280999.P14068556637264144837

`eq[1, A102673(A227185(n)!)]`
-/

namespace A280999.P14068556637264144837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 (Nat.factorial (A227185 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280999.P14068556637264144837

namespace A280999

/-- `eq[1, A102673(A227185(n)!)]` -/
def P14068556637264144837.Spec : Prop :=
  ∀ n, (P14068556637264144837.a n : ℤ) = A280999 (n + 1)

end A280999

/-! ## A280999.P851600333839440753

`eq[2, A109671(A227185(n)!)]`
-/

namespace A280999.P851600333839440753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109671 (Nat.factorial (A227185 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280999.P851600333839440753

namespace A280999

/-- `eq[2, A109671(A227185(n)!)]` -/
def P851600333839440753.Spec : Prop :=
  ∀ n, (P851600333839440753.a n : ℤ) = A280999 (n + 1)

end A280999

/-! ## A280999.P12472247561456155952

`eq[2, A227739(A227185(n)!)]`
-/

namespace A280999.P12472247561456155952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227739 (Nat.factorial (A227185 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280999.P12472247561456155952

namespace A280999

/-- `eq[2, A227739(A227185(n)!)]` -/
def P12472247561456155952.Spec : Prop :=
  ∀ n, (P12472247561456155952.a n : ℤ) = A280999 (n + 1)

end A280999

/-! ## A280999.P12459044738169709018

`eq[A227185(A227185(n))^(n+1), A000079(n+1)]`
-/

namespace A280999.P12459044738169709018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227185 (A227185 n).toNat ^ (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280999.P12459044738169709018

namespace A280999

/-- `eq[A227185(A227185(n))^(n+1), A000079(n+1)]` -/
def P12459044738169709018.Spec : Prop :=
  ∀ n, (P12459044738169709018.a n : ℤ) = A280999 (n + 1)

end A280999

/-! ## A280999.P2818727193833250834

`eq[A167489(A227185(n)), A178815(n+1)]`
-/

namespace A280999.P2818727193833250834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (A227185 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178815 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280999.P2818727193833250834

namespace A280999

/-- `eq[A167489(A227185(n)), A178815(n+1)]` -/
def P2818727193833250834.Spec : Prop :=
  ∀ n, (P2818727193833250834.a n : ℤ) = A280999 (n + 1)

end A280999

