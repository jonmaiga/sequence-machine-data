import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
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
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A217400: Numbers starting with 7.

The programs for A217400, there is no canonical definition to state claims against.
-/

/-! ## A217400.P16710574835512923858

`2*A217397(n+1)-A131835(n+1)`
-/

namespace A217400.P16710574835512923858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A217397 (n + 1) - A131835 (n + 1)

end

end A217400.P16710574835512923858

/-!
# A217401: Numbers starting with 8.

The programs for A217401, there is no canonical definition to state claims against.
-/

/-! ## A217401.P2522637257872247659

`A143473(A217394(n+1))`
-/

namespace A217401.P2522637257872247659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143473 (A217394 (n + 1)).toNat

end

end A217401.P2522637257872247659

/-!
# A217402: Numbers starting with 9.

The programs for A217402, there is no canonical definition to state claims against.
-/

/-! ## A217402.P8249548693408767068

`record[A374504(n+2)]`
-/

namespace A217402.P8249548693408767068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374504 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217402.P8249548693408767068

/-!
# A217403: a(n) is the smallest possible largest prime factor of the difference of two prime numbers q > p such that p + q = 2n.

The programs for A217403, there is no canonical definition to state claims against.
-/

/-! ## A217403.P7769755244801964502

`A306894(A327028(∑{digits}[∑[1-n], #])+1)`
-/

namespace A217403.P7769755244801964502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306894 (A327028 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum + 1).toNat

end

end A217403.P7769755244801964502

/-! ## A217403.P3884719039249547905

`p?[A082498(p?[A115215(n+1)])]`
-/

namespace A217403.P3884719039249547905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115215 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217403.P3884719039249547905

/-! ## A217403.P12757878234304990024

`p?[A093429(A002024(A203647(n+1)))]`
-/

namespace A217403.P12757878234304990024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093429 (A002024 (A203647 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217403.P12757878234304990024

/-! ## A217403.P12063530993121348687

`A240454(lcm(2, A002182(n+1)))`
-/

namespace A217403.P12063530993121348687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240454 (Int.lcm 2 (A002182 (n + 1)))

end

end A217403.P12063530993121348687

/-! ## A217403.P4808415126285495802

`A076662(or(3, A126000(3*n+4)))`
-/

namespace A217403.P4808415126285495802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076662 (Int.lor 3 (A126000 (3 * n + 4))).toNat

end

end A217403.P4808415126285495802

/-!
# A217420: Number of rooted unlabeled trees where the root node has degree 2 and both branches are distinct.

The programs for A217420, there is no canonical definition to state claims against.
-/

/-! ## A217420.P5233431295803855281

`A000081(round(acot(n)+n))-A000055(n)`
-/

namespace A217420.P5233431295803855281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - A000055 n

end

end A217420.P5233431295803855281

/-! ## A217420.P5800185943674993110

`A000081(round(sqrt(n²+1)))-A000055(n)`
-/

namespace A217420.P5800185943674993110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A000055 n

end

end A217420.P5800185943674993110

/-! ## A217420.P8554920384925575932

`A038001(A004280(n+1))-A000055(n)`
-/

namespace A217420.P8554920384925575932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038001 (A004280 (n + 1)).toNat - A000055 n

end

end A217420.P8554920384925575932

/-! ## A217420.P11360437366532385960

`A000081(A028310(n))-(A144520(n)+1)`
-/

namespace A217420.P11360437366532385960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A028310 n).toNat - (A144520 n + 1)

end

end A217420.P11360437366532385960

/-! ## A217420.P14172372825155154406

`A000007(n)+A000081(n)-A000055(n)`
-/

namespace A217420.P14172372825155154406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A000081 n - A000055 n)

end

end A217420.P14172372825155154406

/-! ## A217420.P7554512586999224589

`A000081(n)-A000055(n)%A006706(n)`
-/

namespace A217420.P7554512586999224589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 n - Int.tmod (A000055 n) (A006706 n)

end

end A217420.P7554512586999224589

/-! ## A217420.P13252923437367344086

`(A000081(n)-A000055(n))%A292555(n)`
-/

namespace A217420.P13252923437367344086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000081 n - A000055 n) (A292555 n)

end

end A217420.P13252923437367344086

/-! ## A217420.P5433477713082434079

`A038001(A004280(n+1))-(A144520(n)+1)`
-/

namespace A217420.P5433477713082434079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038001 (A004280 (n + 1)).toNat - (A144520 n + 1)

end

end A217420.P5433477713082434079

/-! ## A217420.P6212216838714435393

`A368983(n)-A005703(n)`
-/

namespace A217420.P6212216838714435393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368983 n - A005703 n

end

end A217420.P6212216838714435393

/-! ## A217420.P4239374263136701412

`A000081(n)+A368983(n)-A369289(n)`
-/

namespace A217420.P4239374263136701412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 n + (A368983 n - A369289 n)

end

end A217420.P4239374263136701412

/-! ## A217420.P13320579858428635853

`A000081(n)+-A000055(n)%A000106(n+2)`
-/

namespace A217420.P13320579858428635853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 n + Int.tmod (-A000055 n) (A000106 (n + 2))

end

end A217420.P13320579858428635853

/-! ## A217420.P7814055289155970878

`-((A000055(n)-A000081(n))%A000108(n))`
-/

namespace A217420.P7814055289155970878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A000055 n - A000081 n) (A000108 n)

end

end A217420.P7814055289155970878

/-!
# A217421: G.f.: Sum_{n>=0} x^n * Sum_{k=0..n} binomial(n,k)^3 * x^k*(1-x)^(n-k).

The programs for A217421, there is no canonical definition to state claims against.
-/

/-! ## A217421.P13782486433356474337

`A294472(A236577(n))`
-/

namespace A217421.P13782486433356474337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294472 (A236577 n).toNat

end

end A217421.P13782486433356474337

/-! ## A217421.P3932809961751642287

`A390627(A358547(n))`
-/

namespace A217421.P3932809961751642287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390627 (A358547 n).toNat

end

end A217421.P3932809961751642287

/-! ## A217421.P11677422137822630290

`A322903(A023361(n)²)`
-/

namespace A217421.P11677422137822630290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322903 (A023361 n ^ 2).toNat

end

end A217421.P11677422137822630290

/-!
# A217434: n divided by the product of all its prime divisors smaller than the largest prime divisor.

The programs for A217434, the canonical program `A217434.P11934691035472252803` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217434 has offset 1).

The definition of A217434 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A217434.P11934691035472252803

`(n+1)*A006530(n+1)/A007947(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A217434

/-- `(n+1)*A006530(n+1)/A007947(n+1)` -/
def P11934691035472252803.Spec : Prop :=
  ∀ n, P11934691035472252803.a n = (A217434 (n + 1) : ℚ)

end A217434

/-! ## A217434.P14572302449796050599

`(n+1)/A293810(n+1)`
-/

namespace A217434.P14572302449796050599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A293810 (n + 1) : ℚ)

end

end A217434.P14572302449796050599

namespace A217434

/-- `(n+1)/A293810(n+1)` -/
def P14572302449796050599.Spec : Prop :=
  ∀ n, P14572302449796050599.a n = (A217434 (n + 1) : ℚ)

end A217434

/-! ## A217434.P7891791856532599246

`(n+1)/A052126(∏{p}[n+1, #])`
-/

namespace A217434.P7891791856532599246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A052126 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ)

end

end A217434.P7891791856532599246

namespace A217434

/-- `(n+1)/A052126(∏{p}[n+1, #])` -/
def P7891791856532599246.Spec : Prop :=
  ∀ n, P7891791856532599246.a n = (A217434 (n + 1) : ℚ)

end A217434

/-! ## A217434.P5233578707413579465

`A003557(n+1)*A006530(n+1)`
-/

namespace A217434.P5233578707413579465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A006530 (n + 1)

end

end A217434.P5233578707413579465

namespace A217434

/-- `A003557(n+1)*A006530(n+1)` -/
def P5233578707413579465.Spec : Prop :=
  ∀ n, P5233578707413579465.a n = A217434 (n + 1)

end A217434

/-! ## A217434.P6303595107362808495

`(n+1)/A051119(A007947(n+1))`
-/

namespace A217434.P6303595107362808495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A051119 (A007947 (n + 1)).toNat : ℚ)

end

end A217434.P6303595107362808495

namespace A217434

/-- `(n+1)/A051119(A007947(n+1))` -/
def P6303595107362808495.Spec : Prop :=
  ∀ n, P6303595107362808495.a n = (A217434 (n + 1) : ℚ)

end A217434

/-! ## A217434.P7646253064390819717

`A102631(n+1)/A052126(n+1)`
-/

namespace A217434.P7646253064390819717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102631 (n + 1) : ℚ) / (A052126 (n + 1) : ℚ)

end

end A217434.P7646253064390819717

namespace A217434

/-- `A102631(n+1)/A052126(n+1)` -/
def P7646253064390819717.Spec : Prop :=
  ∀ n, P7646253064390819717.a n = (A217434 (n + 1) : ℚ)

end A217434

/-! ## A217434.P5852619834433994533

`A253560(n+1)/A007947(n+1)`
-/

namespace A217434.P5852619834433994533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253560 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A217434.P5852619834433994533

namespace A217434

/-- `A253560(n+1)/A007947(n+1)` -/
def P5852619834433994533.Spec : Prop :=
  ∀ n, P5852619834433994533.a n = (A217434 (n + 1) : ℚ)

end A217434

/-! ## A217434.P14776075403591029158

`A130064(n+1)/A381639(n+1)`
-/

namespace A217434.P14776075403591029158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130064 (n + 1) : ℚ) / (A381639 (n + 1) : ℚ)

end

end A217434.P14776075403591029158

namespace A217434

/-- `A130064(n+1)/A381639(n+1)` -/
def P14776075403591029158.Spec : Prop :=
  ∀ n, P14776075403591029158.a n = (A217434 (n + 1) : ℚ)

end A217434

/-! ## A217434.P4252682046855344480

`(A336551(n+1)+1)*A006530(n+1)`
-/

namespace A217434.P4252682046855344480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A336551 (n + 1) + 1) * A006530 (n + 1)

end

end A217434.P4252682046855344480

namespace A217434

/-- `(A336551(n+1)+1)*A006530(n+1)` -/
def P4252682046855344480.Spec : Prop :=
  ∀ n, P4252682046855344480.a n = A217434 (n + 1)

end A217434

/-! ## A217434.P8960367607672265653

`A253560(n+1)/A015052(A015052(n+1))`
-/

namespace A217434.P8960367607672265653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253560 (n + 1) : ℚ) / (A015052 (A015052 (n + 1)).toNat : ℚ)

end

end A217434.P8960367607672265653

namespace A217434

/-- `A253560(n+1)/A015052(A015052(n+1))` -/
def P8960367607672265653.Spec : Prop :=
  ∀ n, P8960367607672265653.a n = (A217434 (n + 1) : ℚ)

end A217434

/-! ## A217434.P6148373527526406878

`A253560(n+1)/A015053(A015053(n+1))`
-/

namespace A217434.P6148373527526406878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253560 (n + 1) : ℚ) / (A015053 (A015053 (n + 1)).toNat : ℚ)

end

end A217434.P6148373527526406878

namespace A217434

/-- `A253560(n+1)/A015053(A015053(n+1))` -/
def P6148373527526406878.Spec : Prop :=
  ∀ n, P6148373527526406878.a n = (A217434 (n + 1) : ℚ)

end A217434

/-! ## A217434.P2371957298126628915

`A001615(n+1)*A006530(n+1)/A048250(n+1)`
-/

namespace A217434.P2371957298126628915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) * A006530 (n + 1) : ℚ) / (A048250 (n + 1) : ℚ)

end

end A217434.P2371957298126628915

namespace A217434

/-- `A001615(n+1)*A006530(n+1)/A048250(n+1)` -/
def P2371957298126628915.Spec : Prop :=
  ∀ n, P2371957298126628915.a n = (A217434 (n + 1) : ℚ)

end A217434

/-! ## A217434.P2131004826074645328

`A000082(n+1)*A006530(n+1)/A181797(n+1)`
-/

namespace A217434.P2131004826074645328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000082 (n + 1) * A006530 (n + 1) : ℚ) / (A181797 (n + 1) : ℚ)

end

end A217434.P2131004826074645328

namespace A217434

/-- `A000082(n+1)*A006530(n+1)/A181797(n+1)` -/
def P2131004826074645328.Spec : Prop :=
  ∀ n, P2131004826074645328.a n = (A217434 (n + 1) : ℚ)

end A217434

/-! ## A217434.P465929005486304102

`gcd(A069359(n+1), A085731(n+1))*A006530(n+1)`
-/

namespace A217434.P465929005486304102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A069359 (n + 1)) (A085731 (n + 1)) : ℤ) * A006530 (n + 1)

end

end A217434.P465929005486304102

namespace A217434

/-- `gcd(A069359(n+1), A085731(n+1))*A006530(n+1)` -/
def P465929005486304102.Spec : Prop :=
  ∀ n, P465929005486304102.a n = A217434 (n + 1)

end A217434

/-! ## A217434.P6062489177213690841

`(n+1)/A062759(A353693(A062759(n+1)))`
-/

namespace A217434.P6062489177213690841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A062759 (A353693 (A062759 (n + 1)).toNat).toNat : ℚ)

end

end A217434.P6062489177213690841

namespace A217434

/-- `(n+1)/A062759(A353693(A062759(n+1)))` -/
def P6062489177213690841.Spec : Prop :=
  ∀ n, P6062489177213690841.a n = (A217434 (n + 1) : ℚ)

end A217434

/-! ## A217434.P9335387609222841944

`(n+1)/A336643(A342768(n+1))`
-/

namespace A217434.P9335387609222841944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A336643 (A342768 (n + 1)).toNat : ℚ)

end

end A217434.P9335387609222841944

namespace A217434

/-- `(n+1)/A336643(A342768(n+1))` -/
def P9335387609222841944.Spec : Prop :=
  ∀ n, P9335387609222841944.a n = (A217434 (n + 1) : ℚ)

end A217434

/-! ## A217434.P9237978013745242735

`(n+1)/A327499(A007947(A353694(n+1)))`
-/

namespace A217434.P9237978013745242735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A327499 (A007947 (A353694 (n + 1)).toNat).toNat : ℚ)

end

end A217434.P9237978013745242735

namespace A217434

/-- `(n+1)/A327499(A007947(A353694(n+1)))` -/
def P9237978013745242735.Spec : Prop :=
  ∀ n, P9237978013745242735.a n = (A217434 (n + 1) : ℚ)

end A217434

/-! ## A217434.P676813376771322651

`A295417(A295417(n+1))/A327499(A007947(n+1))`
-/

namespace A217434.P676813376771322651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295417 (A295417 (n + 1)).toNat : ℚ) / (A327499 (A007947 (n + 1)).toNat : ℚ)

end

end A217434.P676813376771322651

namespace A217434

/-- `A295417(A295417(n+1))/A327499(A007947(n+1))` -/
def P676813376771322651.Spec : Prop :=
  ∀ n, P676813376771322651.a n = (A217434 (n + 1) : ℚ)

end A217434

/-! ## A217434.P10889846541453652581

`A003557(A129598(n+1))`
-/

namespace A217434.P10889846541453652581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A129598 (n + 1)).toNat

end

end A217434.P10889846541453652581

namespace A217434

/-- `A003557(A129598(n+1))` -/
def P10889846541453652581.Spec : Prop :=
  ∀ n, P10889846541453652581.a n = A217434 (n + 1)

end A217434

/-! ## A217434.P16052614398335618961

`A003557(A253560(n+1))`
-/

namespace A217434.P16052614398335618961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A253560 (n + 1)).toNat

end

end A217434.P16052614398335618961

namespace A217434

/-- `A003557(A253560(n+1))` -/
def P16052614398335618961.Spec : Prop :=
  ∀ n, P16052614398335618961.a n = A217434 (n + 1)

end A217434

/-!
# A217435: Number of prime factors of n^n+(n-1)^(n-1), counted with multiplicity.

The programs for A217435, there is no canonical definition to state claims against.
-/

/-! ## A217435.P11467763463747064471

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/A007061(A006127(n))`
-/

namespace A217435.P11467763463747064471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) / (A007061 (A006127 n).toNat : ℚ)

end

end A217435.P11467763463747064471

/-! ## A217435.P9450007872944215284

`A014963(A036052(n))*A078709(n+1)`
-/

namespace A217435.P9450007872944215284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A036052 n).toNat * A078709 (n + 1)

end

end A217435.P9450007872944215284

/-! ## A217435.P15556495839591073450

`A000010(n+1)/A212119(A326617(n))`
-/

namespace A217435.P15556495839591073450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A212119 (A326617 n).toNat : ℚ)

end

end A217435.P15556495839591073450

/-! ## A217435.P3922045752602638895

`A001222(A356164(n+1)+A004064(n+1))`
-/

namespace A217435.P3922045752602638895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A356164 (n + 1) + A004064 (n + 1)).toNat

end

end A217435.P3922045752602638895

/-! ## A217435.P1406381277115090995

`A078709(n+1)*A329313(A039755(n+3))`
-/

namespace A217435.P1406381277115090995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078709 (n + 1) * A329313 (A039755 (n + 3)).toNat

end

end A217435.P1406381277115090995

/-!
# A217436: Triangular array read by rows. T(n,k) is the number of labeled relations on n elements with exactly k vertices of indegree and outdegree = 0.

The programs for A217436, there is no canonical definition to state claims against.
-/

/-! ## A217436.P12272360031082781931

`A325806(A058313(n+1)+A000110(n))`
-/

namespace A217436.P12272360031082781931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325806 (A058313 (n + 1) + A000110 n).toNat

end

end A217436.P12272360031082781931

/-! ## A217436.P13149009898177754157

`A003215(2*n)%A193674(A059380(n+2))`
-/

namespace A217436.P13149009898177754157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003215 (2 * n)) (A193674 (A059380 (n + 2)).toNat)

end

end A217436.P13149009898177754157

/-!
# A217439: Primes or negative values of primes of the form 8*n^2 - 298*n + 2113 for n >= 0.

The programs for A217439, there is no canonical definition to state claims against.
-/

/-! ## A217439.P5163138214000898459

`A217440(A005846(n+1)-(n+1)²)`
-/

namespace A217439.P5163138214000898459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217440 (A005846 (n + 1) - ((n + 1) ^ 2 : ℤ)).toNat

end

end A217439.P5163138214000898459

/-! ## A217439.P2420947257652798605

`A217440(A348809(n)-A023482(n))`
-/

namespace A217439.P2420947257652798605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217440 (A348809 n - A023482 n).toNat

end

end A217439.P2420947257652798605

/-!
# A217440: Primes or negative values of primes of the form 8*n^2 - 326*n + 2659 for n >= 0.

The programs for A217440, there is no canonical definition to state claims against.
-/

/-! ## A217440.P7522405806664268284

`A217439(A005846(n+1)-(n+1)²)`
-/

namespace A217440.P7522405806664268284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217439 (A005846 (n + 1) - ((n + 1) ^ 2 : ℤ)).toNat

end

end A217440.P7522405806664268284

/-!
# A217441: Numbers k such that 26*k+1 is a square.

The programs for A217441, the canonical program `A217441.P2631442354705257693` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217441 has offset 1).

The definition of A217441 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217441.P2631442354705257693

`2*floor((n+1)/2)*(13*floor((n+1)/2)-(-1)^(n+1))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A217441

/-- `2*floor((n+1)/2)*(13*floor((n+1)/2)-(-1)^(n+1))` -/
def P2631442354705257693.Spec : Prop :=
  ∀ n, P2631442354705257693.a n = A217441 (n + 1)

theorem P2631442354705257693.correct : P2631442354705257693.Spec := by
  intro n
  simp only [A217441, Nat.add_sub_cancel]

end A217441

/-! ## A217441.P16719602613375231732

`∑[2*n*A040041(n+1)]`
-/

namespace A217441.P16719602613375231732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A040041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217441.P16719602613375231732

namespace A217441

/-- `∑[2*n*A040041(n+1)]` -/
def P16719602613375231732.Spec : Prop :=
  ∀ n, P16719602613375231732.a n = A217441 (n + 1)

end A217441

/-! ## A217441.P1883656353977712437

`∑[n*(Δ[A042948(n)]+1)!]`
-/

namespace A217441.P1883656353977712437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217441.P1883656353977712437

namespace A217441

/-- `∑[n*(Δ[A042948(n)]+1)!]` -/
def P1883656353977712437.Spec : Prop :=
  ∀ n, (P1883656353977712437.a n : ℤ) = A217441 (n + 1)

end A217441

/-! ## A217441.P1460905817585010309

`A219259(n+1)+A110654(n)²`
-/

namespace A217441.P1460905817585010309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219259 (n + 1) + A110654 n ^ 2

end

end A217441.P1460905817585010309

namespace A217441

/-- `A219259(n+1)+A110654(n)²` -/
def P1460905817585010309.Spec : Prop :=
  ∀ n, P1460905817585010309.a n = A217441 (n + 1)

end A217441

/-! ## A217441.P6912545394750080012

`A132356(n)+(1-A157142(n))²`
-/

namespace A217441.P6912545394750080012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132356 n + (1 - A157142 n) ^ 2

end

end A217441.P6912545394750080012

namespace A217441

/-- `A132356(n)+(1-A157142(n))²` -/
def P6912545394750080012.Spec : Prop :=
  ∀ n, P6912545394750080012.a n = A217441 (n + 1)

end A217441

/-! ## A217441.P10598745096340298020

`2*A219395(n+1)-A132356(n)`
-/

namespace A217441.P10598745096340298020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219395 (n + 1) - A132356 n

end

end A217441.P10598745096340298020

namespace A217441

/-- `2*A219395(n+1)-A132356(n)` -/
def P10598745096340298020.Spec : Prop :=
  ∀ n, P10598745096340298020.a n = A217441 (n + 1)

end A217441

/-! ## A217441.P16010527337830820648

`2*A219392(n+1)-A219395(n+1)`
-/

namespace A217441.P16010527337830820648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219392 (n + 1) - A219395 (n + 1)

end

end A217441.P16010527337830820648

namespace A217441

/-- `2*A219392(n+1)-A219395(n+1)` -/
def P16010527337830820648.Spec : Prop :=
  ∀ n, P16010527337830820648.a n = A217441 (n + 1)

end A217441

/-! ## A217441.P7379018406331901713

`A001082(n+1)+A219258(n+1)-A002378(n)`
-/

namespace A217441.P7379018406331901713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) + (A219258 (n + 1) - A002378 n)

end

end A217441.P7379018406331901713

namespace A217441

/-- `A001082(n+1)+A219258(n+1)-A002378(n)` -/
def P7379018406331901713.Spec : Prop :=
  ∀ n, P7379018406331901713.a n = A217441 (n + 1)

end A217441

/-! ## A217441.P2000608079267717118

`A219257(n+1)+A219396(n+1)-A002378(n)`
-/

namespace A217441.P2000608079267717118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219257 (n + 1) + (A219396 (n + 1) - A002378 n)

end

end A217441.P2000608079267717118

namespace A217441

/-- `A219257(n+1)+A219396(n+1)-A002378(n)` -/
def P2000608079267717118.Spec : Prop :=
  ∀ n, P2000608079267717118.a n = A217441 (n + 1)

end A217441

/-! ## A217441.P10113269951232524724

`A219389(n+1)+A219394(n+1)-A002378(n)`
-/

namespace A217441.P10113269951232524724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219389 (n + 1) + (A219394 (n + 1) - A002378 n)

end

end A217441.P10113269951232524724

namespace A217441

/-- `A219389(n+1)+A219394(n+1)-A002378(n)` -/
def P10113269951232524724.Spec : Prop :=
  ∀ n, P10113269951232524724.a n = A217441 (n + 1)

end A217441

/-! ## A217441.P9163289033640646454

`A219257(n+1)+A219259(n+1)-A132356(n)`
-/

namespace A217441.P9163289033640646454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219257 (n + 1) + (A219259 (n + 1) - A132356 n)

end

end A217441.P9163289033640646454

namespace A217441

/-- `A219257(n+1)+A219259(n+1)-A132356(n)` -/
def P9163289033640646454.Spec : Prop :=
  ∀ n, P9163289033640646454.a n = A217441 (n + 1)

end A217441

/-! ## A217441.P7064685031396251148

`A219258(n+1)+A132356(n)-A219257(n+1)`
-/

namespace A217441.P7064685031396251148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219258 (n + 1) + (A132356 n - A219257 (n + 1))

end

end A217441.P7064685031396251148

namespace A217441

/-- `A219258(n+1)+A132356(n)-A219257(n+1)` -/
def P7064685031396251148.Spec : Prop :=
  ∀ n, P7064685031396251148.a n = A217441 (n + 1)

end A217441

/-! ## A217441.P10510205018321764572

`A219389(n+1)+A219393(n+1)-A132356(n)`
-/

namespace A217441.P10510205018321764572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219389 (n + 1) + (A219393 (n + 1) - A132356 n)

end

end A217441.P10510205018321764572

namespace A217441

/-- `A219389(n+1)+A219393(n+1)-A132356(n)` -/
def P10510205018321764572.Spec : Prop :=
  ∀ n, P10510205018321764572.a n = A217441 (n + 1)

end A217441

/-! ## A217441.P4880364107199411172

`A219394(n+1)+A219396(n+1)-A132356(n)`
-/

namespace A217441.P4880364107199411172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219394 (n + 1) + (A219396 (n + 1) - A132356 n)

end

end A217441.P4880364107199411172

namespace A217441

/-- `A219394(n+1)+A219396(n+1)-A132356(n)` -/
def P4880364107199411172.Spec : Prop :=
  ∀ n, P4880364107199411172.a n = A217441 (n + 1)

end A217441

/-! ## A217441.P6761108885316971665

`A219392(n+1)+A394829(n)-A219190(n+1)`
-/

namespace A217441.P6761108885316971665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219392 (n + 1) + (A394829 n - A219190 (n + 1))

end

end A217441.P6761108885316971665

namespace A217441

/-- `A219392(n+1)+A394829(n)-A219190(n+1)` -/
def P6761108885316971665.Spec : Prop :=
  ∀ n, P6761108885316971665.a n = A217441 (n + 1)

end A217441

/-! ## A217441.P1069918318688560152

`A219257(n+1)+A219395(n+1)-A001082(n+1)`
-/

namespace A217441.P1069918318688560152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219257 (n + 1) + (A219395 (n + 1) - A001082 (n + 1))

end

end A217441.P1069918318688560152

namespace A217441

/-- `A219257(n+1)+A219395(n+1)-A001082(n+1)` -/
def P1069918318688560152.Spec : Prop :=
  ∀ n, P1069918318688560152.a n = A217441 (n + 1)

end A217441

/-! ## A217441.P7156195352622891639

`A219259(n+1)+A219393(n+1)-A219392(n+1)`
-/

namespace A217441.P7156195352622891639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219259 (n + 1) + (A219393 (n + 1) - A219392 (n + 1))

end

end A217441.P7156195352622891639

namespace A217441

/-- `A219259(n+1)+A219393(n+1)-A219392(n+1)` -/
def P7156195352622891639.Spec : Prop :=
  ∀ n, P7156195352622891639.a n = A217441 (n + 1)

end A217441

/-! ## A217441.P6799464315183959347

`∑[n*A040143(n+1)]`
-/

namespace A217441.P6799464315183959347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A040143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217441.P6799464315183959347

namespace A217441

/-- `∑[n*A040143(n+1)]` -/
def P6799464315183959347.Spec : Prop :=
  ∀ n, P6799464315183959347.a n = A217441 (n + 1)

end A217441

/-! ## A217441.P6862958540528388581

`A219389(A042948(n+1))/2`
-/

namespace A217441.P6862958540528388581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219389 (A042948 (n + 1)).toNat : ℚ) / 2

end

end A217441.P6862958540528388581

namespace A217441

/-- `A219389(A042948(n+1))/2` -/
def P6862958540528388581.Spec : Prop :=
  ∀ n, P6862958540528388581.a n = (A217441 (n + 1) : ℚ)

end A217441

/-!
# A217442: Numbers n such that d(prime(n) - 1) | n, where d(k) is the number of divisors of k.

The programs for A217442, the canonical program `A217442.P11818262742147486345` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217442 has offset 1).

The definition of A217442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 803 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217442.P11818262742147486345

`lt[(n+1)%A000005(A006093(n+1)), 1]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A217442

/-- `lt[(n+1)%A000005(A006093(n+1)), 1]+1` -/
def P11818262742147486345.Spec : Prop :=
  ∀ n, (P11818262742147486345.a n : ℤ) = A217442 (n + 1)

theorem P11818262742147486345.correct : P11818262742147486345.Spec := by
  intro n
  simp only [A217442, Nat.add_sub_cancel]

end A217442

/-! ## A217442.P13695544047363481533

`eq[A029180(n), A029217(n)]+1`
-/

namespace A217442.P13695544047363481533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029180 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029217 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A217442.P13695544047363481533

namespace A217442

/-- `eq[A029180(n), A029217(n)]+1` -/
def P13695544047363481533.Spec : Prop :=
  ∀ n, (P13695544047363481533.a n : ℤ) = A217442 (n + 1)

end A217442

/-! ## A217442.P420225549897437767

`∑[A001223(A110650(n+1)^3)]`
-/

namespace A217442.P420225549897437767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A110650 (n + 1) ^ 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217442.P420225549897437767

namespace A217442

/-- `∑[A001223(A110650(n+1)^3)]` -/
def P420225549897437767.Spec : Prop :=
  ∀ n, P420225549897437767.a n = A217442 (n + 1)

end A217442

/-! ## A217442.P13670171840338284344

`eq[2, A123530(A064573(2*n+5))]`
-/

namespace A217442.P13670171840338284344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123530 (A064573 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217442.P13670171840338284344

namespace A217442

/-- `eq[2, A123530(A064573(2*n+5))]` -/
def P13670171840338284344.Spec : Prop :=
  ∀ n, (P13670171840338284344.a n : ℤ) = A217442 (n + 1)

end A217442

/-!
# A217443: Primes p such that p^2 is an arithmetic average of 4 consecutive primes.

The programs for A217443, there is no canonical definition to state claims against.
-/

/-! ## A217443.P16976763227731691072

`p?[A014682(A051395(n+1))]`
-/

namespace A217443.P16976763227731691072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A051395 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217443.P16976763227731691072

/-! ## A217443.P18389091481682149488

`p?[A226152(n+1)]`
-/

namespace A217443.P18389091481682149488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217443.P18389091481682149488

/-! ## A217443.P6531220419262553803

`record[A020639(A226152(n+9))]`
-/

namespace A217443.P6531220419262553803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A226152 (n + 9)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217443.P6531220419262553803

/-! ## A217443.P4871582993443478451

`filter[A226152(n+1), A010051(#)]`
-/

namespace A217443.P4871582993443478451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A217443.P4871582993443478451

/-!
# A217444: a(n) = A(n)*7^(-floor(n+1)/3), where A(n) = 7*A(n-1) - 14*A(n-2) + 7*A(n-3) with A(0)=0, A(1)=1, A(2)=7.

The programs for A217444, the canonical program `A217444.P17270903314284662184` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217444 has offset 0).

The definition of A217444 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217444.P17270903314284662184

`10*a(n-3)-17*a(n-6)+a(n-9)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=5, a(4)=22, a(5)=13, a(6)=52, a(7)=204, a(8)=113`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A217444

/-- `10*a(n-3)-17*a(n-6)+a(n-9)` -/
def P17270903314284662184.Spec : Prop :=
  ∀ n, P17270903314284662184.a n = A217444 n

theorem P17270903314284662184.correct : P17270903314284662184.Spec := by
  intro n
  simp only [A217444]

end A217444

/-!
# A217445: Numbers n such that n! has the same number of terminating zeros in bases 3 and 4.

The programs for A217445, the canonical program `A217445.P645570032554833675` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217445 has offset 1).

The definition of A217445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2702 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217445.P645570032554833675

`eq[1, or(A057427(n), A180017(n))]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A217445

/-- `eq[1, or(A057427(n), A180017(n))]` -/
def P645570032554833675.Spec : Prop :=
  ∀ n, (P645570032554833675.a n : ℤ) = A217445 (n + 1)

theorem P645570032554833675.correct : P645570032554833675.Spec := by
  intro n
  simp only [A217445, Nat.add_sub_cancel]

end A217445

/-! ## A217445.P2275440737440912464

`eq[A180017(n+1)², A180017(n+1)]+1`
-/

namespace A217445.P2275440737440912464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A217445.P2275440737440912464

namespace A217445

/-- `eq[A180017(n+1)², A180017(n+1)]+1` -/
def P2275440737440912464.Spec : Prop :=
  ∀ n, (P2275440737440912464.a n : ℤ) = A217445 (n + 1)

end A217445

/-! ## A217445.P1367473478416550018

`eq[A053735(n), A065033(A096288(n))]`
-/

namespace A217445.P1367473478416550018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A096288 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217445.P1367473478416550018

namespace A217445

/-- `eq[A053735(n), A065033(A096288(n))]` -/
def P1367473478416550018.Spec : Prop :=
  ∀ n, (P1367473478416550018.a n : ℤ) = A217445 (n + 1)

end A217445

/-! ## A217445.P10305196596900931457

`eq[A000120(n), A123108(A096288(n))]`
-/

namespace A217445.P10305196596900931457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A096288 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217445.P10305196596900931457

namespace A217445

/-- `eq[A000120(n), A123108(A096288(n))]` -/
def P10305196596900931457.Spec : Prop :=
  ∀ n, (P10305196596900931457.a n : ℤ) = A217445 (n + 1)

end A217445

/-! ## A217445.P4154064722429634068

`eq[A000007(n), A321527(A136698(n))]`
-/

namespace A217445.P4154064722429634068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321527 (A136698 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217445.P4154064722429634068

namespace A217445

/-- `eq[A000007(n), A321527(A136698(n))]` -/
def P4154064722429634068.Spec : Prop :=
  ∀ n, (P4154064722429634068.a n : ℤ) = A217445 (n + 1)

end A217445

/-! ## A217445.P9418666136843688453

`eq[A000038(n), A321527(A136698(n))]`
-/

namespace A217445.P9418666136843688453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321527 (A136698 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217445.P9418666136843688453

namespace A217445

/-- `eq[A000038(n), A321527(A136698(n))]` -/
def P9418666136843688453.Spec : Prop :=
  ∀ n, (P9418666136843688453.a n : ℤ) = A217445 (n + 1)

end A217445

/-! ## A217445.P7416223794864387083

`eq[A000038(n)+A180017(n)², A180017(n)]`
-/

namespace A217445.P7416223794864387083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + A180017 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217445.P7416223794864387083

namespace A217445

/-- `eq[A000038(n)+A180017(n)², A180017(n)]` -/
def P7416223794864387083.Spec : Prop :=
  ∀ n, (P7416223794864387083.a n : ℤ) = A217445 (n + 1)

end A217445

/-!
# A217447: Number of n x n permutation matrices that disconnect their zeros.

The programs for A217447, there is no canonical definition to state claims against.
-/

/-! ## A217447.P11747867997713878231

`A332249(A090012(n+1))+A064263(3*n)`
-/

namespace A217447.P11747867997713878231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332249 (A090012 (n + 1)).toNat + A064263 (3 * n)

end

end A217447.P11747867997713878231

/-! ## A217447.P13190835378739169793

`A018597(A018597(n+2))*A172471(3*n+1)`
-/

namespace A217447.P13190835378739169793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018597 (A018597 (n + 2)).toNat * A172471 (3 * n + 1)

end

end A217447.P13190835378739169793

/-!
# A217449: Number of n X n arrays of the minimum value of corresponding elements and their horizontal and vertical neighbors in a random 0..2 n X n array.

The programs for A217449, there is no canonical definition to state claims against.
-/

/-! ## A217449.P5071012868596316612

`A217457(∑[4*n]+1)`
-/

namespace A217449.P5071012868596316612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217457 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A217449.P5071012868596316612

/-! ## A217449.P11271350767108099846

`or(1, A217457(A001844(n)))`
-/

namespace A217449.P11271350767108099846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A217457 (A001844 n).toNat)

end

end A217449.P11271350767108099846

/-! ## A217449.P3662217692609197649

`record[A217457(A152271(n²))]`
-/

namespace A217449.P3662217692609197649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217457 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217449.P3662217692609197649

/-!
# A217450: Number of n X 1 arrays of the minimum value of corresponding elements and their horizontal and vertical neighbors in a random 0..2 n X 1 array.

The programs for A217450, the canonical program `A217450.P8139249064817240088` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217450 has offset 1).

The definition of A217450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 309 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217450.P11305589357062789492

`ogf((-3+3x-3x^2+x^3)/(-1+2x+x^4))`
-/

namespace A217450.P11305589357062789492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -3, 3, -1] [1, -2, 0, 0, -1] n

end

end A217450.P11305589357062789492

namespace A217450

/-- `ogf((-3+3x-3x^2+x^3)/(-1+2x+x^4))` -/
def P11305589357062789492.Spec : Prop :=
  ∀ n, P11305589357062789492.a n = A217450 (n + 1)

end A217450

/-! ## A217450.P8139249064817240088

`2*a(n-1)+a(n-4)` with `a(0)=3, a(1)=3, a(2)=9, a(3)=17`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A217450

/-- `2*a(n-1)+a(n-4)` -/
def P8139249064817240088.Spec : Prop :=
  ∀ n, (P8139249064817240088.a n : ℤ) = A217450 (n + 1)

theorem P8139249064817240088.correct : P8139249064817240088.Spec := by
  intro n
  simp only [A217450, Nat.add_sub_cancel]

end A217450

/-! ## A217450.P16959475692917651680

`A200865(n+2)%A200865(n+1)`
-/

namespace A217450.P16959475692917651680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200865 (n + 2)) (A200865 (n + 1))

end

end A217450.P16959475692917651680

namespace A217450

/-- `A200865(n+2)%A200865(n+1)` -/
def P16959475692917651680.Spec : Prop :=
  ∀ n, P16959475692917651680.a n = A217450 (n + 1)

end A217450

/-! ## A217450.P98174532804725341

`Δ[A200865(A000027(n+1))]-A200865(n+1)`
-/

namespace A217450.P98174532804725341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200865 (A000027 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A200865 (n + 1)

end

end A217450.P98174532804725341

namespace A217450

/-- `Δ[A200865(A000027(n+1))]-A200865(n+1)` -/
def P98174532804725341.Spec : Prop :=
  ∀ n, P98174532804725341.a n = A217450 (n + 1)

end A217450

/-! ## A217450.P12890723705553761781

`sqrt(A207854((n-1)%(n+1)+1))`
-/

namespace A217450.P12890723705553761781
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207854 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) + 1).toNat : ℝ)

end

end A217450.P12890723705553761781

namespace A217450

/-- `sqrt(A207854((n-1)%(n+1)+1))` -/
def P12890723705553761781.Spec : Prop :=
  ∀ n, P12890723705553761781.a n = (A217450 (n + 1) : ℝ)

end A217450

/-! ## A217450.P16620704605840602166

`A200871(A000096(n+2))%A200871(A000096(n+1))`
-/

namespace A217450.P16620704605840602166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200871 (A000096 (n + 2)).toNat) (A200871 (A000096 (n + 1)).toNat)

end

end A217450.P16620704605840602166

namespace A217450

/-- `A200871(A000096(n+2))%A200871(A000096(n+1))` -/
def P16620704605840602166.Spec : Prop :=
  ∀ n, P16620704605840602166.a n = A217450 (n + 1)

end A217450

/-!
# A217451: Number of n X 2 arrays of the minimum value of corresponding elements and their horizontal and vertical neighbors in a random 0..2 n X 2 array.

The programs for A217451, there is no canonical definition to state claims against.
-/

/-! ## A217451.P7385452227455783248

`A217457(∑[n+1]+2)`
-/

namespace A217451.P7385452227455783248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217457 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A217451.P7385452227455783248

/-! ## A217451.P2324607047959843776

`record[root(A217457(n+1), A036073(n))]`
-/

namespace A217451.P2324607047959843776
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A217457 (n + 1) : ℝ) ^ (1 / (A036073 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217451.P2324607047959843776

/-! ## A217451.P2578711390190078493

`record[gcd(A141169(n), A217457(n+2))]`
-/

namespace A217451.P2578711390190078493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141169 n) (A217457 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217451.P2578711390190078493

/-! ## A217451.P1547807709927380717

`A219128(∑[n+2])`
-/

namespace A217451.P1547807709927380717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A217451.P1547807709927380717

/-! ## A217451.P3238420183660656308

`record[A217457(∑[A152271(n)])]`
-/

namespace A217451.P3238420183660656308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217457 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217451.P3238420183660656308

/-!
# A217452: Number of n X 3 arrays of the minimum value of corresponding elements and their horizontal and vertical neighbors in a random 0..2 n X 3 array.

The programs for A217452, there is no canonical definition to state claims against.
-/

/-! ## A217452.P1733219647143756929

`A217457(∑[n+2]+4)`
-/

namespace A217452.P1733219647143756929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217457 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A217452.P1733219647143756929

/-! ## A217452.P2810229758912543856

`or(1, A217457(A167614(n+1)))`
-/

namespace A217452.P2810229758912543856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A217457 (A167614 (n + 1)).toNat)

end

end A217452.P2810229758912543856

/-! ## A217452.P2968781128392326852

`A217457(A055998(n)+6)%A217453(n+1)`
-/

namespace A217452.P2968781128392326852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217457 (A055998 n + 6).toNat) (A217453 (n + 1))

end

end A217452.P2968781128392326852

/-! ## A217452.P7477015401918603331

`A014029(n²)!*A217457(A055998(n)+6)`
-/

namespace A217452.P7477015401918603331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A014029 (n ^ 2)).toNat : ℤ) * A217457 (A055998 n + 6).toNat

end

end A217452.P7477015401918603331

/-! ## A217452.P11161398468196387703

`A217457(A055998(n)+6)+A102683(A306100(n))`
-/

namespace A217452.P11161398468196387703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217457 (A055998 n + 6).toNat + A102683 (A306100 n).toNat

end

end A217452.P11161398468196387703

/-!
# A217453: Number of nX4 arrays of the minimum value of corresponding elements and their horizontal and vertical neighbors in a random 0..2 nX4 array.

The programs for A217453, there is no canonical definition to state claims against.
-/

/-! ## A217453.P14296454642564896171

`A217457(A374004(n+1))`
-/

namespace A217453.P14296454642564896171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217457 (A374004 (n + 1)).toNat

end

end A217453.P14296454642564896171

/-! ## A217453.P14702320180518224743

`A217457(A141214(n)+7)`
-/

namespace A217453.P14702320180518224743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217457 (A141214 n + 7).toNat

end

end A217453.P14702320180518224743

/-! ## A217453.P12058318805219028788

`A217457(A052905(n)+9)`
-/

namespace A217453.P12058318805219028788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217457 (A052905 n + 9).toNat

end

end A217453.P12058318805219028788

/-! ## A217453.P14838465893504766920

`A217457(A055999(n)+10)`
-/

namespace A217453.P14838465893504766920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217457 (A055999 n + 10).toNat

end

end A217453.P14838465893504766920

/-! ## A217453.P3774357139978402799

`A217457(eq[5, A066657(n)])`
-/

namespace A217453.P3774357139978402799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217453.P3774357139978402799

/-!
# A217454: Number of n X 5 arrays of the minimum value of corresponding elements and their horizontal and vertical neighbors in a random 0..2 n X 5 array.

The programs for A217454, there is no canonical definition to state claims against.
-/

/-! ## A217454.P8703799591277234106

`A217457(A374005(n+1))`
-/

namespace A217454.P8703799591277234106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217457 (A374005 (n + 1)).toNat

end

end A217454.P8703799591277234106

/-! ## A217454.P7972875257612117972

`A217457(A167499(n+3))`
-/

namespace A217454.P7972875257612117972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217457 (A167499 (n + 3)).toNat

end

end A217454.P7972875257612117972

/-! ## A217454.P6005236679824066540

`A217457(A155212(n)+13)`
-/

namespace A217454.P6005236679824066540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217457 (A155212 n + 13).toNat

end

end A217454.P6005236679824066540

/-! ## A217454.P2673662169963648791

`A217457(A056000(n)+15)`
-/

namespace A217454.P2673662169963648791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217457 (A056000 n + 15).toNat

end

end A217454.P2673662169963648791

/-! ## A217454.P5131997356873895965

`A217457(eq[7, A066657(n)])`
-/

namespace A217454.P5131997356873895965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217454.P5131997356873895965

/-!
# A217455: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal and vertical neighbors in a random 0..2 nX6 array.

The programs for A217455, there is no canonical definition to state claims against.
-/

/-! ## A217455.P5378982269323618552

`A217457(A374007(n+1))`
-/

namespace A217455.P5378982269323618552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217457 (A374007 (n + 1)).toNat

end

end A217455.P5378982269323618552

/-! ## A217455.P9034662895063186890

`A217457(A056115(n)+21)`
-/

namespace A217455.P9034662895063186890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217457 (A056115 n + 21).toNat

end

end A217455.P9034662895063186890

/-! ## A217455.P1576932483501311503

`A217457(A167614(n+4)+3)`
-/

namespace A217455.P1576932483501311503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217457 (A167614 (n + 4) + 3).toNat

end

end A217455.P1576932483501311503

/-! ## A217455.P8482272548152958206

`A217457(eq[7, A131818(n+1)])`
-/

namespace A217455.P8482272548152958206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217455.P8482272548152958206

/-! ## A217455.P9170782648487580865

`A217457(Δ[A023545(n+1)]+10)`
-/

namespace A217455.P9170782648487580865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217457 (f1 (n + 1) - f1 n + 10).toNat

end

end A217455.P9170782648487580865

/-!
# A217456: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal and vertical neighbors in a random 0..2 nX7 array.

The programs for A217456, there is no canonical definition to state claims against.
-/

/-! ## A217456.P15525827316949784665

`A217457(A374008(n+1))`
-/

namespace A217456.P15525827316949784665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217457 (A374008 (n + 1)).toNat

end

end A217456.P15525827316949784665

/-! ## A217456.P8691436082461368001

`A217457(A055999(n+4))`
-/

namespace A217456.P8691436082461368001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217457 (A055999 (n + 4)).toNat

end

end A217456.P8691436082461368001

/-! ## A217456.P6407041161026827436

`A217457(A167487(n+5))`
-/

namespace A217456.P6407041161026827436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217457 (A167487 (n + 5)).toNat

end

end A217456.P6407041161026827436

/-! ## A217456.P3954341230310303660

`A217457(A056121(n)+22)`
-/

namespace A217456.P3954341230310303660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217457 (A056121 n + 22).toNat

end

end A217456.P3954341230310303660

/-!
# A217460: Odd values of n such that the polynomial 1+x+x^2+...+x^(n-1) is reducible over GF(2).

The programs for A217460, there is no canonical definition to state claims against.
-/

/-! ## A217460.P10001859710189953910

`2*lt[1, A006694(n)]+1`
-/

namespace A217460.P10001859710189953910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A217460.P10001859710189953910

/-! ## A217460.P248515240210558001

`2*lt[A179382(n+1), n]+1`
-/

namespace A217460.P248515240210558001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179382 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A217460.P248515240210558001

/-! ## A217460.P6389467371538807968

`A005408(lt[1, A006694(n)])`
-/

namespace A217460.P6389467371538807968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A217460.P6389467371538807968

/-! ## A217460.P13754535247996445880

`A016825(lt[1, A006694(n)])/2`
-/

namespace A217460.P13754535247996445880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 2

end

end A217460.P13754535247996445880

/-! ## A217460.P8625324761370310661

`A005408(lt[A179382(n+1), n])`
-/

namespace A217460.P8625324761370310661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179382 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A217460.P8625324761370310661

/-! ## A217460.P18363122520107497730

`A005408(lt[A002326(n), 2*n])`
-/

namespace A217460.P18363122520107497730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A217460.P18363122520107497730

/-! ## A217460.P5175615201779175452

`A005408(lt[A002326(n)/2, n])`
-/

namespace A217460.P5175615201779175452
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002326 n : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A217460.P5175615201779175452

/-! ## A217460.P10370293444015831656

`A005408(lt[A002326(n)-n, n])`
-/

namespace A217460.P10370293444015831656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A217460.P10370293444015831656

/-! ## A217460.P9959598206444541734

`eq[char[A050229(n+1)], A056594(n)]`
-/

namespace A217460.P9959598206444541734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A217460.P9959598206444541734

/-! ## A217460.P6390678495632129821

`A008611(3*2*lt[1, A006694(n)])`
-/

namespace A217460.P6390678495632129821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n))

end

end A217460.P6390678495632129821

/-! ## A217460.P9943251840231539921

`A000265(or(1, 2*lt[1, A006694(n)]))`
-/

namespace A217460.P9943251840231539921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Nat.lor 1 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n))

end

end A217460.P9943251840231539921

/-! ## A217460.P4886882762928399179

`A093178(or(1, 2*lt[1, A006694(n)]))`
-/

namespace A217460.P4886882762928399179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (Nat.lor 1 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n))

end

end A217460.P4886882762928399179

/-! ## A217460.P17826061015869634469

`or(1, A327529(2*lt[1, A006694(n)]))`
-/

namespace A217460.P17826061015869634469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A327529 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n))

end

end A217460.P17826061015869634469

/-! ## A217460.P3832297303783378870

`∪[A053850(n+1), A216848(n+1)]`
-/

namespace A217460.P3832297303783378870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A217460.P3832297303783378870

/-! ## A217460.P3198724389205925151

`∪[A071904(n+1), A216838(n+1)]`
-/

namespace A217460.P3198724389205925151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A217460.P3198724389205925151

/-! ## A217460.P3405759358226598088

`∪[A071904(n+1), A216848(n+1)]`
-/

namespace A217460.P3405759358226598088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A217460.P3405759358226598088

/-! ## A217460.P7342423896764942978

`∪[A079290(n+1), A216848(n+1)]`
-/

namespace A217460.P7342423896764942978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A217460.P7342423896764942978

/-! ## A217460.P5722925003154522715

`∪[A108989(n+1), A216848(n+1)]`
-/

namespace A217460.P5722925003154522715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A217460.P5722925003154522715

/-! ## A217460.P8647278224645450203

`∪[A138193(n+1), A216848(n+1)]`
-/

namespace A217460.P8647278224645450203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A217460.P8647278224645450203

/-! ## A217460.P5238957950481369628

`∪[A138786(n+1), A216848(n+1)]`
-/

namespace A217460.P5238957950481369628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A217460.P5238957950481369628

/-!
# A217461: G.f.: Sum_{n>=0} x^n * Sum_{k=0..n} binomial(n,k)^2 * x^k*(4-x)^(n-k).

The programs for A217461, there is no canonical definition to state claims against.
-/

/-! ## A217461.P6961094031435645464

`A092038(or(A026701(n), A026718(n+1)))`
-/

namespace A217461.P6961094031435645464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092038 (Int.lor (A026701 n) (A026718 (n + 1))).toNat

end

end A217461.P6961094031435645464

/-! ## A217461.P3005560017684516833

`A230290(A026768(3*n+1)+A003714(2*n))`
-/

namespace A217461.P3005560017684516833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230290 (A026768 (3 * n + 1) + A003714 (2 * n)).toNat

end

end A217461.P3005560017684516833

/-!
# A217462: a(n) is the sum of total number of nonnegative integer solutions to each of a^2 + b^2 = n, a^2 + 2*b^2 = n, a^2 + 3*b^2 = n and a^2 + 7*b^2 = n. (Order does not matter for the equation a^2+b^2 = n).

The programs for A217462, there is no canonical definition to state claims against.
-/

/-! ## A217462.P1158278190850455798

`A217868(n+1)-A025435(n+1)`
-/

namespace A217462.P1158278190850455798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217868 (n + 1) - A025435 (n + 1)

end

end A217462.P1158278190850455798

/-! ## A217462.P2907624346780305664

`A217868(n+1)-A025426(2*(n+1))`
-/

namespace A217462.P2907624346780305664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217868 (n + 1) - A025426 (2 * (n + 1))

end

end A217462.P2907624346780305664

/-! ## A217462.P6439788866840181873

`A217868(n+1)-∑{e}[A000925(n+1), #]`
-/

namespace A217462.P6439788866840181873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217868 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A217462.P6439788866840181873

/-! ## A217462.P14671222656289710105

`A000161(n+1)+A217868(n+1)-A000925(n+1)`
-/

namespace A217462.P14671222656289710105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (n + 1) + (A217868 (n + 1) - A000925 (n + 1))

end

end A217462.P14671222656289710105

/-! ## A217462.P11530618500048860938

`or(A209859(A209401(n+1)), A216671(n+1))`
-/

namespace A217462.P11530618500048860938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A209859 (A209401 (n + 1)).toNat) (A216671 (n + 1))

end

end A217462.P11530618500048860938

/-!
# A217463: a(n) is the sum of total number of positive integer solutions to each of a^2 + b^2 = n, a^2 + 2*b^2 = n, a^2 + 3*b^2 = n and a^2 + 7*b^2 = n. (Order does not matter for the equation a^2+b^2 = n).

The programs for A217463, there is no canonical definition to state claims against.
-/

/-! ## A217463.P10485774980827900450

`A217869(n+1)-A025441(n+1)`
-/

namespace A217463.P10485774980827900450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217869 (n + 1) - A025441 (n + 1)

end

end A217463.P10485774980827900450

/-! ## A217463.P730466578288312990

`A217869(n+1)-A025426((n+1)/gcd(n+1, Δ[(2*n)²²²]))`
-/

namespace A217463.P730466578288312990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((2 * n) ^ 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217869 (n + 1) - A025426 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ))).toNat

end

end A217463.P730466578288312990

/-! ## A217463.P12449944199956075222

`A217869(n+1)-A004526(A002654(n+1))`
-/

namespace A217463.P12449944199956075222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217869 (n + 1) - A004526 (A002654 (n + 1)).toNat

end

end A217463.P12449944199956075222

/-! ## A217463.P13476123239414213360

`A217869(n+1)-A025426(A000265(n+1))`
-/

namespace A217463.P13476123239414213360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217869 (n + 1) - A025426 (A000265 (n + 1)).toNat

end

end A217463.P13476123239414213360

/-!
# A217464: L.g.f.: Sum_{n>=1} x^n/n * Sum_{k=0..n} binomial(n,k)^2 * x^k*(1-x)^(n-k).

The programs for A217464, there is no canonical definition to state claims against.
-/

/-! ## A217464.P356377474634287884

`A007494(A217615(n+1))-A217615(n)`
-/

namespace A217464.P356377474634287884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A217615 (n + 1)).toNat - A217615 n

end

end A217464.P356377474634287884

/-!
# A217465: Composite integers k such that 2^k == 2 (mod k*(k+1)).

The programs for A217465, there is no canonical definition to state claims against.
-/

/-! ## A217465.P5830763032403566867

`∩[A001567(n+1), A216822(n+1)]`
-/

namespace A217465.P5830763032403566867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217465.P5830763032403566867

/-! ## A217465.P7146959340859821845

`∩[A020136(n+1), A216822(n+1)]`
-/

namespace A217465.P7146959340859821845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217465.P7146959340859821845

/-! ## A217465.P2866764187537785699

`∩[A020137(n+1), A216822(n+1)]`
-/

namespace A217465.P2866764187537785699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217465.P2866764187537785699

/-! ## A217465.P10416818916048673436

`∩[A020144(n+1), A216822(n+1)]`
-/

namespace A217465.P10416818916048673436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217465.P10416818916048673436

/-! ## A217465.P17798025099075200909

`∩[A020160(n+1), A216822(n+1)]`
-/

namespace A217465.P17798025099075200909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217465.P17798025099075200909

/-! ## A217465.P8271466361268942001

`∩[A020192(n+1), A216822(n+1)]`
-/

namespace A217465.P8271466361268942001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217465.P8271466361268942001

/-! ## A217465.P16303490892149721866

`∩[A001567(n+1), A375793(n+1)]`
-/

namespace A217465.P16303490892149721866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217465.P16303490892149721866

/-! ## A217465.P12817646552423170713

`∩[A178723(n+1), A216822(n+1)]`
-/

namespace A217465.P12817646552423170713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217465.P12817646552423170713

/-! ## A217465.P4921081827332681665

`∩[A020136(n+1), A375793(n+1)]`
-/

namespace A217465.P4921081827332681665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217465.P4921081827332681665

/-! ## A217465.P17912418777758638389

`∩[A020137(n+1), A375793(n+1)]`
-/

namespace A217465.P17912418777758638389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217465.P17912418777758638389

/-!
# A217466: Primes p such that 2^p == 2 (mod p*(p+1)).

The programs for A217466, there is no canonical definition to state claims against.
-/

/-! ## A217466.P14989347866358886285

`p?[A216822(n+1)]`
-/

namespace A217466.P14989347866358886285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217466.P14989347866358886285

/-! ## A217466.P16482271196595894315

`∩[A165319(n+1), A216822(n+1)]`
-/

namespace A217466.P16482271196595894315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217466.P16482271196595894315

/-! ## A217466.P4272471128551202667

`∩[A165319(n+1), A375793(n+1)]`
-/

namespace A217466.P4272471128551202667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217466.P4272471128551202667

/-! ## A217466.P7230835796682247650

`∩[A191218(n+1), A216822(n+1)]`
-/

namespace A217466.P7230835796682247650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217466.P7230835796682247650

/-! ## A217466.P8552794242378344419

`∩[A191218(n+1), A375793(n+1)]`
-/

namespace A217466.P8552794242378344419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217466.P8552794242378344419

/-! ## A217466.P17518229202582752765

`∩[A049097(n+1), A216822(n+1)]`
-/

namespace A217466.P17518229202582752765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217466.P17518229202582752765

/-! ## A217466.P13280436253013809179

`∩[A049097(n+1), A375793(n+1)]`
-/

namespace A217466.P13280436253013809179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217466.P13280436253013809179

/-! ## A217466.P11207924025176148353

`∩[A002144(n+1), A216822(n+1)]`
-/

namespace A217466.P11207924025176148353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217466.P11207924025176148353

/-! ## A217466.P9093067828086941504

`∩[A002313(n+1), A216822(n+1)]`
-/

namespace A217466.P9093067828086941504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217466.P9093067828086941504

/-! ## A217466.P16510819668894058140

`∩[A002144(n+1), A375793(n+1)]`
-/

namespace A217466.P16510819668894058140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217466.P16510819668894058140

/-! ## A217466.P9021327992333528155

`∩[A002313(n+1), A375793(n+1)]`
-/

namespace A217466.P9021327992333528155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217466.P9021327992333528155

/-! ## A217466.P3354809738919920831

`∩[A055025(n+1), A216822(n+1)]`
-/

namespace A217466.P3354809738919920831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217466.P3354809738919920831

/-! ## A217466.P6031945807014523662

`∩[A120960(n+1), A216822(n+1)]`
-/

namespace A217466.P6031945807014523662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217466.P6031945807014523662

/-! ## A217466.P12503695078580393532

`∩[A172480(n+1), A216822(n+1)]`
-/

namespace A217466.P12503695078580393532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217466.P12503695078580393532

/-! ## A217466.P18122796489986918777

`∩[A055025(n+1), A375793(n+1)]`
-/

namespace A217466.P18122796489986918777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217466.P18122796489986918777

/-! ## A217466.P16697786085056550248

`∩[A120960(n+1), A375793(n+1)]`
-/

namespace A217466.P16697786085056550248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217466.P16697786085056550248

/-! ## A217466.P2658969549968152456

`∩[A172480(n+1), A375793(n+1)]`
-/

namespace A217466.P2658969549968152456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217466.P2658969549968152456

/-! ## A217466.P17427641840910093252

`∩[A175768(n+1), A216822(n+1)]`
-/

namespace A217466.P17427641840910093252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217466.P17427641840910093252

/-! ## A217466.P4497315210571445178

`∩[A175768(n+1), A375793(n+1)]`
-/

namespace A217466.P4497315210571445178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217466.P4497315210571445178

/-! ## A217466.P16107173994797782391

`∩[A109515(n+1), A216822(n+1)]`
-/

namespace A217466.P16107173994797782391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217466.P16107173994797782391

/-!
# A217467: a(1) = 1; for n > 1, the maximum exponent k such that n^k divides the double factorial n!!.

The programs for A217467, the canonical program `A217467.P1457232228138321781` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217467 has offset 1).

The definition of A217467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217467.P1457232228138321781

`val(A006882(abs(1-n)+2), abs(1-n)+2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A217467

/-- `val(A006882(abs(1-n)+2), abs(1-n)+2)` -/
def P1457232228138321781.Spec : Prop :=
  ∀ n, (P1457232228138321781.a n : ℤ) = A217467 (n + 1)

theorem P1457232228138321781.correct : P1457232228138321781.Spec := by
  intro n
  simp only [A217467, Nat.add_sub_cancel]

end A217467

/-! ## A217467.P9550904406737961489

`val(A006882(n+1)*A196841(a(n-1)), n+1)` with `a(0)=1`
-/

namespace A217467.P9550904406737961489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.valuation (A006882 (n + 1) * A196841 (a (n - 1))).toNat (n + 1)

end

end A217467.P9550904406737961489

namespace A217467

/-- `val(A006882(n+1)*A196841(a(n-1)), n+1)` -/
def P9550904406737961489.Spec : Prop :=
  ∀ n, (P9550904406737961489.a n : ℤ) = A217467 (n + 1)

end A217467

/-! ## A217467.P8652533352630623765

`A000009(A324917(3*n+1)+A001055(n+1))`
-/

namespace A217467.P8652533352630623765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A324917 (3 * n + 1) + A001055 (n + 1)).toNat

end

end A217467.P8652533352630623765

namespace A217467

/-- `A000009(A324917(3*n+1)+A001055(n+1))` -/
def P8652533352630623765.Spec : Prop :=
  ∀ n, P8652533352630623765.a n = A217467 (n + 1)

end A217467

/-! ## A217467.P2218431896409783617

`A334436(val(A131387(n+1), A000027(3*(n+1))))`
-/

namespace A217467.P2218431896409783617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334436 (SequenceMachineLib.valuation (A131387 (n + 1)).toNat (A000027 (3 * (n + 1))).toNat)

end

end A217467.P2218431896409783617

namespace A217467

/-- `A334436(val(A131387(n+1), A000027(3*(n+1))))` -/
def P2218431896409783617.Spec : Prop :=
  ∀ n, P2218431896409783617.a n = A217467 (n + 1)

end A217467

/-! ## A217467.P13385025219057800645

`A076259((∑{e}[n+1, #]+1)^∑{d}[n+1, (#+n)%2])`
-/

namespace A217467.P13385025219057800645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1) ^ (∑ d ∈ Nat.divisors (f2 n), (d + n) % 2))

end

end A217467.P13385025219057800645

namespace A217467

/-- `A076259((∑{e}[n+1, #]+1)^∑{d}[n+1, (#+n)%2])` -/
def P13385025219057800645.Spec : Prop :=
  ∀ n, P13385025219057800645.a n = A217467 (n + 1)

end A217467

/-!
# A217469: Multiplicative order of 5 (mod 5*n + 1).

The programs for A217469, there is no canonical definition to state claims against.
-/

/-! ## A217469.P6751751526645461082

`A050977(4*(n+1))`
-/

namespace A217469.P6751751526645461082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050977 (4 * (n + 1))

end

end A217469.P6751751526645461082

/-! ## A217469.P16739079973294959343

`A028310(A050977(Δ[(n+1)²+n²]))`
-/

namespace A217469.P16739079973294959343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A050977 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A217469.P16739079973294959343

/-! ## A217469.P18002909377058586677

`A053448(4*n+5)`
-/

namespace A217469.P18002909377058586677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053448 (4 * n + 5)

end

end A217469.P18002909377058586677

/-! ## A217469.P1332542876917887689

`A007736(5*n+6)`
-/

namespace A217469.P1332542876917887689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007736 (5 * n + 6)

end

end A217469.P1332542876917887689

/-! ## A217469.P16022446308694137061

`A054706(5*n+6)`
-/

namespace A217469.P16022446308694137061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054706 (5 * n + 6)

end

end A217469.P16022446308694137061

/-! ## A217469.P11960272819697948052

`A070677(5*n+6)`
-/

namespace A217469.P11960272819697948052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070677 (5 * n + 6)

end

end A217469.P11960272819697948052

/-!
# A217470: The Diophantine equation x^2 - x*y - G*y^2 = -1, G a positive integer, D = 4*G + 1 not a perfect square, has no solution precisely for G = a(n).

The programs for A217470, there is no canonical definition to state claims against.
-/

/-! ## A217470.P13691098862571969601

`eq[2, A040001(A003285(4*n+1))]`
-/

namespace A217470.P13691098862571969601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A003285 (4 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217470.P13691098862571969601

/-! ## A217470.P16154516130994317267

`eq[2, A020639(A097853(4*n+1))]`
-/

namespace A217470.P16154516130994317267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A097853 (4 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217470.P16154516130994317267

/-! ## A217470.P3834687604150585409

`lt[1, A010123(A097853(4*n+1)²)]`
-/

namespace A217470.P3834687604150585409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 (A097853 (4 * n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A217470.P3834687604150585409

/-! ## A217470.P336559414597716645

`eq[2, A040001(A097853(4*n+1)²)]`
-/

namespace A217470.P336559414597716645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A097853 (4 * n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217470.P336559414597716645

/-! ## A217470.P2856530482032438416

`eq[0, A302826(A008783(n+1)+2)]+1`
-/

namespace A217470.P2856530482032438416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302826 (A008783 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A217470.P2856530482032438416

/-!
# A217471: Partial sum of fifth power of the even-indexed Fibonacci numbers.

The programs for A217471, there is no canonical definition to state claims against.
-/

/-! ## A217471.P8385805393688912464

`∑[A215044(n)]`
-/

namespace A217471.P8385805393688912464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217471.P8385805393688912464

/-! ## A217471.P2139198146766008797

`∑[A056572(2*n)]`
-/

namespace A217471.P2139198146766008797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056572 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217471.P2139198146766008797

/-! ## A217471.P4619201847097687739

`∑[A001906(n)^5]`
-/

namespace A217471.P4619201847097687739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217471.P4619201847097687739

/-! ## A217471.P10028283456174149188

`∑[Δ[A001519(n)]^5]`
-/

namespace A217471.P10028283456174149188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217471.P10028283456174149188

/-! ## A217471.P10291610688936982865

`∑[A000045(2*n)^5]`
-/

namespace A217471.P10291610688936982865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217471.P10291610688936982865

/-!
# A217473: Product of the first n+1 odd-indexed Lucas numbers A000032.

The programs for A217473, there is no canonical definition to state claims against.
-/

/-! ## A217473.P10039067233897544096

`∏[floor(ϕ^Δ[n²])]`
-/

namespace A217473.P10039067233897544096
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A217473.P10039067233897544096

/-! ## A217473.P5067782023294893542

`floor(ϕ^(2*n+1))*a(n-1)` with `a(0)=1`
-/

namespace A217473.P5067782023294893542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.goldenRatio ^ (2 * n + 1)⌋ * a (n - 1)

end

end A217473.P5067782023294893542

/-! ## A217473.P5267625940194944431

`abs(∏[-A002878(n)])`
-/

namespace A217473.P5267625940194944431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A002878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A217473.P5267625940194944431

/-! ## A217473.P12252022223797905275

`abs(∏[Δ[A004146(n)]])`
-/

namespace A217473.P12252022223797905275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004146 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A217473.P12252022223797905275

/-! ## A217473.P7971951627825136779

`abs(∏[Δ[A005248(n)]])`
-/

namespace A217473.P7971951627825136779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A217473.P7971951627825136779

/-!
# A217474: Sequence used for the formula for partial sums of odd powers of even-indexed Fibonacci numbers.

The programs for A217474, there is no canonical definition to state claims against.
-/

/-! ## A217474.P15467677157896956249

`A033999(∑[n+1])*A056592(2*n)`
-/

namespace A217474.P15467677157896956249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (∑ j ∈ Finset.range (n + 1), f1 j) * A056592 (2 * n)

end

end A217474.P15467677157896956249

/-! ## A217474.P15072835400149560805

`abs(A056592(2*n))*A056594(2*(n+1))`
-/

namespace A217474.P15072835400149560805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056592 (2 * n)| * A056594 (2 * (n + 1))

end

end A217474.P15072835400149560805

/-!
# A217476: Coefficient triangle for the square of the monic integer Chebyshev T-polynomials A127672.

The programs for A217476, there is no canonical definition to state claims against.
-/

/-! ## A217476.P9011629001425962930

`A127677(n)+2*char[∑[n]]`
-/

namespace A217476.P9011629001425962930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127677 n + ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A217476.P9011629001425962930

/-! ## A217476.P8197850427077409385

`A010054(n)+A127677(n)+A010054(n)`
-/

namespace A217476.P8197850427077409385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + (A127677 n + A010054 n)

end

end A217476.P8197850427077409385

/-! ## A217476.P8372419711741170486

`A035214(n)²+A127677(n)-A035214(n)`
-/

namespace A217476.P8372419711741170486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n ^ 2 + (A127677 n - A035214 n)

end

end A217476.P8372419711741170486

/-! ## A217476.P5715793508988755499

`A002483(A059268(n))+A110162(n)+A000007(n)`
-/

namespace A217476.P5715793508988755499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002483 (A059268 n).toNat + (A110162 n + A000007 n)

end

end A217476.P5715793508988755499

/-! ## A217476.P4225359327245592594

`A000038(A002262(n))+A054977(n)*A110162(n)`
-/

namespace A217476.P4225359327245592594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A002262 n).toNat + A054977 n * A110162 n

end

end A217476.P4225359327245592594

/-! ## A217476.P10178735705412158287

`A000038(A002262(n))+A000038(n)!*A110162(n)`
-/

namespace A217476.P10178735705412158287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A002262 n).toNat + (Nat.factorial (A000038 n).toNat : ℤ) * A110162 n

end

end A217476.P10178735705412158287

/-! ## A217476.P12191715125875024790

`A000038(A155584(n+1))+A054977(n)*A110162(n)`
-/

namespace A217476.P12191715125875024790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A155584 (n + 1)).toNat + A054977 n * A110162 n

end

end A217476.P12191715125875024790

/-! ## A217476.P14277606599232564739

`A089800(2*n)+A110162(n)+A008683(A008574(n))`
-/

namespace A217476.P14277606599232564739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089800 (2 * n) + (A110162 n + A008683 (A008574 n).toNat)

end

end A217476.P14277606599232564739

/-! ## A217476.P12861793285236510954

`A000038(A002262(n))+A110162(n)+A010051(2*(n+1))`
-/

namespace A217476.P12861793285236510954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A002262 n).toNat + (A110162 n + A010051 (2 * (n + 1)))

end

end A217476.P12861793285236510954

/-! ## A217476.P5094011872081461581

`A000038(A002262(n))+A110162(n)-A008683(2*(n+1)²)`
-/

namespace A217476.P5094011872081461581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A002262 n).toNat + (A110162 n - A008683 (2 * (n + 1) ^ 2))

end

end A217476.P5094011872081461581

/-!
# A217477: Z-sequence for the Riordan triangle A111125.

The programs for A217477, the canonical program `A217477.P11172635933459327032` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217477 has offset 0).

The definition of A217477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217477.P11692733619219295349

`(2/n-4)*a(n-1)` with `a(0)=3, a(1)=-4`
-/

namespace A217477.P11692733619219295349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, -4] fun n a =>
  (2 / (n : ℚ) - 4) * a (n - 1)

end

end A217477.P11692733619219295349

namespace A217477

/-- `(2/n-4)*a(n-1)` -/
def P11692733619219295349.Spec : Prop :=
  ∀ n, P11692733619219295349.a n = (A217477 n : ℚ)

end A217477

/-! ## A217477.P401610211859392936

`A110556(n)*A255176(n)`
-/

namespace A217477.P401610211859392936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110556 n * A255176 n

end

end A217477.P401610211859392936

namespace A217477

/-- `A110556(n)*A255176(n)` -/
def P401610211859392936.Spec : Prop :=
  ∀ n, P401610211859392936.a n = A217477 n

end A217477

/-! ## A217477.P2949961031166521479

`comp[A163985(n)]*A168491(n)`
-/

namespace A217477.P2949961031166521479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A168491 n

end

end A217477.P2949961031166521479

namespace A217477

/-- `comp[A163985(n)]*A168491(n)` -/
def P2949961031166521479.Spec : Prop :=
  ∀ n, P2949961031166521479.a n = A217477 n

end A217477

/-! ## A217477.P11172635933459327032

`(A004277(n)+2)*A168491(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A217477

/-- `(A004277(n)+2)*A168491(n)` -/
def P11172635933459327032.Spec : Prop :=
  ∀ n, P11172635933459327032.a n = A217477 n

theorem P11172635933459327032.correct : P11172635933459327032.Spec := by
  intro n
  simp only [A217477]

end A217477

/-! ## A217477.P2938021401773860449

`A051755(n+2)*A168491(n)`
-/

namespace A217477.P2938021401773860449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (n + 2) * A168491 n

end

end A217477.P2938021401773860449

namespace A217477

/-- `A051755(n+2)*A168491(n)` -/
def P2938021401773860449.Spec : Prop :=
  ∀ n, P2938021401773860449.a n = A217477 n

end A217477

/-! ## A217477.P14985445424431371769

`A092535(n+2)*A168491(n)`
-/

namespace A217477.P14985445424431371769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092535 (n + 2) * A168491 n

end

end A217477.P14985445424431371769

namespace A217477

/-- `A092535(n+2)*A168491(n)` -/
def P14985445424431371769.Spec : Prop :=
  ∀ n, P14985445424431371769.a n = A217477 n

end A217477

/-! ## A217477.P3527557683232497387

`(A004273(n)+3)*A168491(n)`
-/

namespace A217477.P3527557683232497387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004273 n + 3) * A168491 n

end

end A217477.P3527557683232497387

namespace A217477

/-- `(A004273(n)+3)*A168491(n)` -/
def P3527557683232497387.Spec : Prop :=
  ∀ n, P3527557683232497387.a n = A217477 n

end A217477

/-! ## A217477.P6649222473277619912

`(A028310(2*n)+2)*A168491(n)`
-/

namespace A217477.P6649222473277619912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028310 (2 * n) + 2) * A168491 n

end

end A217477.P6649222473277619912

namespace A217477

/-- `(A028310(2*n)+2)*A168491(n)` -/
def P6649222473277619912.Spec : Prop :=
  ∀ n, P6649222473277619912.a n = A217477 n

end A217477

/-! ## A217477.P11058187304620317407

`(A004273(n)+3)*A090192(2*n+1)`
-/

namespace A217477.P11058187304620317407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004273 n + 3) * A090192 (2 * n + 1)

end

end A217477.P11058187304620317407

namespace A217477

/-- `(A004273(n)+3)*A090192(2*n+1)` -/
def P11058187304620317407.Spec : Prop :=
  ∀ n, P11058187304620317407.a n = A217477 n

end A217477

/-! ## A217477.P6171262043926673461

`(A004277(n)+2)*A182492(4*n+3)`
-/

namespace A217477.P6171262043926673461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 n + 2) * A182492 (4 * n + 3)

end

end A217477.P6171262043926673461

namespace A217477

/-- `(A004277(n)+2)*A182492(4*n+3)` -/
def P6171262043926673461.Spec : Prop :=
  ∀ n, P6171262043926673461.a n = A217477 n

end A217477

/-! ## A217477.P11640134844893435382

`A110556(n)*A324653(2-C(2, n+2))`
-/

namespace A217477.P11640134844893435382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110556 n * A324653 (2 - Nat.choose 2 (n + 2))

end

end A217477.P11640134844893435382

namespace A217477

/-- `A110556(n)*A324653(2-C(2, n+2))` -/
def P11640134844893435382.Spec : Prop :=
  ∀ n, P11640134844893435382.a n = A217477 n

end A217477

/-! ## A217477.P11255822825047013094

`A000108(n)/(-1)^n*A051755(n+2)`
-/

namespace A217477.P11255822825047013094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) / ((-1) ^ n : ℚ) * (A051755 (n + 2) : ℚ)

end

end A217477.P11255822825047013094

namespace A217477

/-- `A000108(n)/(-1)^n*A051755(n+2)` -/
def P11255822825047013094.Spec : Prop :=
  ∀ n, P11255822825047013094.a n = (A217477 n : ℚ)

end A217477

/-! ## A217477.P5545530701517799767

`(A004280(n+2)+1)*A090192(2*n+1)`
-/

namespace A217477.P5545530701517799767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004280 (n + 2) + 1) * A090192 (2 * n + 1)

end

end A217477.P5545530701517799767

namespace A217477

/-- `(A004280(n+2)+1)*A090192(2*n+1)` -/
def P5545530701517799767.Spec : Prop :=
  ∀ n, P5545530701517799767.a n = A217477 n

end A217477

/-! ## A217477.P5757968273993295638

`(A028310(2*n)+2)*A090192(2*n+1)`
-/

namespace A217477.P5757968273993295638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028310 (2 * n) + 2) * A090192 (2 * n + 1)

end

end A217477.P5757968273993295638

namespace A217477

/-- `(A028310(2*n)+2)*A090192(2*n+1)` -/
def P5757968273993295638.Spec : Prop :=
  ∀ n, P5757968273993295638.a n = A217477 n

end A217477

/-! ## A217477.P8061366469118809160

`A000005(A100484(n+1))*A110556(n)`
-/

namespace A217477.P8061366469118809160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A100484 (n + 1)).toNat * A110556 n

end

end A217477.P8061366469118809160

namespace A217477

/-- `A000005(A100484(n+1))*A110556(n)` -/
def P8061366469118809160.Spec : Prop :=
  ∀ n, P8061366469118809160.a n = A217477 n

end A217477

/-! ## A217477.P13329645091642074401

`A105523(2*n)-A005843(n+1)*A105523(2*n+1)`
-/

namespace A217477.P13329645091642074401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 (2 * n) - A005843 (n + 1) * A105523 (2 * n + 1)

end

end A217477.P13329645091642074401

namespace A217477

/-- `A105523(2*n)-A005843(n+1)*A105523(2*n+1)` -/
def P13329645091642074401.Spec : Prop :=
  ∀ n, P13329645091642074401.a n = A217477 n

end A217477

/-! ## A217477.P15596596270182465235

`(A084099(2*n+1)+A084099(2*n))*A063886(2*n)`
-/

namespace A217477.P15596596270182465235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A084099 (2 * n + 1) + A084099 (2 * n)) * A063886 (2 * n)

end

end A217477.P15596596270182465235

namespace A217477

/-- `(A084099(2*n+1)+A084099(2*n))*A063886(2*n)` -/
def P15596596270182465235.Spec : Prop :=
  ∀ n, P15596596270182465235.a n = A217477 n

end A217477

/-! ## A217477.P10232195622220145741

`(A084099(2*n+1)+A084099(2*n))*A126869(2*n)`
-/

namespace A217477.P10232195622220145741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A084099 (2 * n + 1) + A084099 (2 * n)) * A126869 (2 * n)

end

end A217477.P10232195622220145741

namespace A217477

/-- `(A084099(2*n+1)+A084099(2*n))*A126869(2*n)` -/
def P10232195622220145741.Spec : Prop :=
  ∀ n, P10232195622220145741.a n = A217477 n

end A217477

/-! ## A217477.P4659553531787543679

`A084099(2*n+1)*A182027(2*n+1)-A084099(2*n)`
-/

namespace A217477.P4659553531787543679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 (2 * n + 1) * A182027 (2 * n + 1) - A084099 (2 * n)

end

end A217477.P4659553531787543679

namespace A217477

/-- `A084099(2*n+1)*A182027(2*n+1)-A084099(2*n)` -/
def P4659553531787543679.Spec : Prop :=
  ∀ n, P4659553531787543679.a n = A217477 n

end A217477

/-!
# A217478: Triangle of coefficients of polynomials providing the second term of the numerator for the generating function for odd powers (2*m+1) of Chebyshev S-polynomials. The present polynomials are called P(m;1,x^2).

The programs for A217478, there is no canonical definition to state claims against.
-/

/-! ## A217478.P11738279227749853938

`A053122(comp[∑[n-1]])`
-/

namespace A217478.P11738279227749853938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053122 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A217478.P11738279227749853938

/-! ## A217478.P16601022164827518354

`A130777(A185869(comp[C(n, 2)]))`
-/

namespace A217478.P16601022164827518354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130777 (A185869 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A217478.P16601022164827518354

/-! ## A217478.P7503368629947765302

`A112552(A185871(n+1)-2)`
-/

namespace A217478.P7503368629947765302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112552 (A185871 (n + 1) - 2).toNat

end

end A217478.P7503368629947765302

/-! ## A217478.P16346253345759855652

`A049310(lt[1, A133300(n+1)])`
-/

namespace A217478.P16346253345759855652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A217478.P16346253345759855652

/-! ## A217478.P4515355765689429489

`A053123(A099375(n)+1+n)`
-/

namespace A217478.P4515355765689429489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053123 (A099375 n + 1 + (n : ℤ)).toNat

end

end A217478.P4515355765689429489

/-! ## A217478.P18114177209988347219

`A053123(A061579(comp[∑[n]])+1)`
-/

namespace A217478.P18114177209988347219
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053123 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1).toNat

end

end A217478.P18114177209988347219

/-! ## A217478.P7923109524715421962

`A053123(A061579(comp[∑[n-1]]))`
-/

namespace A217478.P7923109524715421962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053123 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A217478.P7923109524715421962

/-! ## A217478.P4166135021919744659

`or(char[1], A053122(A007401(n+1)))`
-/

namespace A217478.P4166135021919744659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A053122 (A007401 (n + 1)).toNat)

end

end A217478.P4166135021919744659

/-! ## A217478.P9704870423658068414

`A053123(2*A004736(n+1)+n)`
-/

namespace A217478.P9704870423658068414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053123 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A217478.P9704870423658068414

/-! ## A217478.P7236390186569779211

`A049310(eq[A049310(n+1), A053118(n)])`
-/

namespace A217478.P7236390186569779211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A217478.P7236390186569779211

/-!
# A217482: Quarter-square tetrahedrals: a(n) = k*(k - 1)*(k - 2)/6, k = A002620(n).

The programs for A217482, the canonical program `A217482.P1281182467908924875` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217482 has offset 0).

The definition of A217482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217482.P1281182467908924875

`C(floor(n²/4), 3)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A217482

/-- `C(floor(n²/4), 3)` -/
def P1281182467908924875.Spec : Prop :=
  ∀ n, (P1281182467908924875.a n : ℤ) = A217482 n

theorem P1281182467908924875.correct : P1281182467908924875.Spec := by
  intro n
  simp only [A217482]

end A217482

/-! ## A217482.P6666175764924061071

`1/6*floor(n²/4)*(floor(n²/4)-1)*(floor(n²/4)-2)`
-/

namespace A217482.P6666175764924061071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * (⌊(n ^ 2 : ℚ) / 4⌋ : ℚ) * (⌊(n ^ 2 : ℚ) / 4⌋ - 1 : ℚ) * (⌊(n ^ 2 : ℚ) / 4⌋ - 2 : ℚ)

end

end A217482.P6666175764924061071

namespace A217482

/-- `1/6*floor(n²/4)*(floor(n²/4)-1)*(floor(n²/4)-2)` -/
def P6666175764924061071.Spec : Prop :=
  ∀ n, P6666175764924061071.a n = (A217482 n : ℚ)

end A217482

/-! ## A217482.P6322765926728867404

`lcm(2, C(A002620(n), 3))`
-/

namespace A217482.P6322765926728867404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.choose (A002620 n).toNat 3)

end

end A217482.P6322765926728867404

namespace A217482

/-- `lcm(2, C(A002620(n), 3))` -/
def P6322765926728867404.Spec : Prop :=
  ∀ n, (P6322765926728867404.a n : ℤ) = A217482 n

end A217482

/-! ## A217482.P11281079266493123744

`A008683(4*(n+1))+C(A002620(n), 3)`
-/

namespace A217482.P11281079266493123744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + (Nat.choose (A002620 n).toNat 3 : ℤ)

end

end A217482.P11281079266493123744

namespace A217482

/-- `A008683(4*(n+1))+C(A002620(n), 3)` -/
def P11281079266493123744.Spec : Prop :=
  ∀ n, P11281079266493123744.a n = A217482 n

end A217482

/-! ## A217482.P9379134362831504557

`C(A002620(n), 3)/A000041(C(2, n+2))`
-/

namespace A217482.P9379134362831504557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A002620 n).toNat 3 : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A217482.P9379134362831504557

namespace A217482

/-- `C(A002620(n), 3)/A000041(C(2, n+2))` -/
def P9379134362831504557.Spec : Prop :=
  ∀ n, P9379134362831504557.a n = (A217482 n : ℚ)

end A217482

/-! ## A217482.P6685187198470656750

`∑{d}[A002620(n), A346760(#)]`
-/

namespace A217482.P6685187198470656750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A346760 d

end

end A217482.P6685187198470656750

namespace A217482

/-- `∑{d}[A002620(n), A346760(#)]` -/
def P6685187198470656750.Spec : Prop :=
  ∀ n, P6685187198470656750.a n = A217482 n

end A217482

/-! ## A217482.P11714284285023767354

`A000292(A002620(n))-A030179(n)`
-/

namespace A217482.P11714284285023767354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A002620 n).toNat - A030179 n

end

end A217482.P11714284285023767354

namespace A217482

/-- `A000292(A002620(n))-A030179(n)` -/
def P11714284285023767354.Spec : Prop :=
  ∀ n, P11714284285023767354.a n = A217482 n

end A217482

/-! ## A217482.P8518811529289380482

`A000292(sqrt(A030179(n)))-A030179(n)`
-/

namespace A217482.P8518811529289380482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (SequenceMachineLib.roundAway (Real.sqrt (A030179 n : ℝ))).toNat - A030179 n

end

end A217482.P8518811529289380482

namespace A217482

/-- `A000292(sqrt(A030179(n)))-A030179(n)` -/
def P8518811529289380482.Spec : Prop :=
  ∀ n, P8518811529289380482.a n = A217482 n

end A217482

/-! ## A217482.P4391147463715658714

`A007290(floor((n/2)²))/2`
-/

namespace A217482.P4391147463715658714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007290 ⌊((n : ℚ) / 2) ^ 2⌋.toNat : ℚ) / 2

end

end A217482.P4391147463715658714

namespace A217482

/-- `A007290(floor((n/2)²))/2` -/
def P4391147463715658714.Spec : Prop :=
  ∀ n, P4391147463715658714.a n = (A217482 n : ℚ)

theorem P4391147463715658714.correct : P4391147463715658714.Spec := by
  intro n
  simp only [A217482, Nat.add_sub_cancel, A217482.P4391147463715658714.a, A217482.P1281182467908924875.a, A007290, A007290.P9295456119697579818.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A217482

/-! ## A217482.P5590991621742277809

`A050407(A033638(n))-1`
-/

namespace A217482.P5590991621742277809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050407 (A033638 n).toNat - 1

end

end A217482.P5590991621742277809

namespace A217482

/-- `A050407(A033638(n))-1` -/
def P5590991621742277809.Spec : Prop :=
  ∀ n, P5590991621742277809.a n = A217482 n

end A217482

/-! ## A217482.P8959919416421993149

`A014557(2*A002620(n))/2`
-/

namespace A217482.P8959919416421993149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014557 (2 * A002620 n).toNat : ℚ) / 2

end

end A217482.P8959919416421993149

namespace A217482

/-- `A014557(2*A002620(n))/2` -/
def P8959919416421993149.Spec : Prop :=
  ∀ n, P8959919416421993149.a n = (A217482 n : ℚ)

end A217482

/-! ## A217482.P9735100367615372125

`A014557(A004526(n²))/2`
-/

namespace A217482.P9735100367615372125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014557 (A004526 (n ^ 2)).toNat : ℚ) / 2

end

end A217482.P9735100367615372125

namespace A217482

/-- `A014557(A004526(n²))/2` -/
def P9735100367615372125.Spec : Prop :=
  ∀ n, P9735100367615372125.a n = (A217482 n : ℚ)

end A217482

/-!
# A217483: Alternating sums of the numbers in sequence A080253.

The programs for A217483, there is no canonical definition to state claims against.
-/

/-! ## A217483.P1280082008272541120

`A080253(n)-a(n-1)` with `a(0)=1`
-/

namespace A217483.P1280082008272541120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080253 n - a (n - 1)

end

end A217483.P1280082008272541120

/-! ## A217483.P13612918115431640388

`A355219(n)/sqrt(A000302(n))-a(n-1)` with `a(0)=1`
-/

namespace A217483.P13612918115431640388
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A355219 n : ℝ) / Real.sqrt (A000302 n : ℝ) - a (n - 1)

end

end A217483.P13612918115431640388

/-! ## A217483.P14059239415396402868

`A355219(n)/record[A059268(n)]-a(n-1)` with `a(0)=1`
-/

namespace A217483.P14059239415396402868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A355219 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) - a (n - 1)

end

end A217483.P14059239415396402868

/-! ## A217483.P10625506701514059578

`A355219(n)/record[A155038(n+1)]-a(n-1)` with `a(0)=1`
-/

namespace A217483.P10625506701514059578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155038 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A355219 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) - a (n - 1)

end

end A217483.P10625506701514059578

/-! ## A217483.P14504947269038914713

`A355219(n)/A059268(A000096(n))-a(n-1)` with `a(0)=1`
-/

namespace A217483.P14504947269038914713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A355219 n : ℚ) / (A059268 (A000096 n).toNat : ℚ) - a (n - 1)

end

end A217483.P14504947269038914713

/-!
# A217484: Partial sums of the numbers in sequence A080253.

The programs for A217484, there is no canonical definition to state claims against.
-/

/-! ## A217484.P13248008428547001589

`∑[A080253(n)]`
-/

namespace A217484.P13248008428547001589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217484.P13248008428547001589

/-! ## A217484.P1593465883108763391

`∑[A162313(∑[n])]`
-/

namespace A217484.P1593465883108763391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162313 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217484.P1593465883108763391

/-! ## A217484.P8822606974862622554

`record[∑[A145901(n)]/A225117(n)]`
-/

namespace A217484.P8822606974862622554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145901 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A225117 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217484.P8822606974862622554

/-! ## A217484.P3490133216893350019

`A080253(n)+a((n-1)%p?[A054406(n+1)])` with `a(0)=1`
-/

namespace A217484.P3490133216893350019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080253 n + a (Int.tmod ((n : ℤ) - 1) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A217484.P3490133216893350019

/-! ## A217484.P8875598495611640197

`∑[A355219(n)/2^n]`
-/

namespace A217484.P8875598495611640197
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355219 n : ℚ) / (2 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217484.P8875598495611640197

/-!
# A217485: Convolution of the numbers in sequence A080253.

The programs for A217485, there is no canonical definition to state claims against.
-/

/-! ## A217485.P15951751132880422462

`or(n+1, A328260(A251179(n)))`
-/

namespace A217485.P15951751132880422462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A328260 (A251179 n).toNat)

end

end A217485.P15951751132880422462

/-!
# A217486: Binomial convolution of the numbers in sequence A080253.

The programs for A217486, there is no canonical definition to state claims against.
-/

/-! ## A217486.P12614306391048485067

`A216794(n+1)/2`
-/

namespace A217486.P12614306391048485067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216794 (n + 1) : ℚ) / 2

end

end A217486.P12614306391048485067

/-! ## A217486.P4075391955743317194

`A162314(n+1)/4`
-/

namespace A217486.P4075391955743317194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162314 (n + 1) : ℚ) / 4

end

end A217486.P4075391955743317194

/-! ## A217486.P13597698363028764006

`2^n*A000670(n+1)`
-/

namespace A217486.P13597698363028764006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000670 (n + 1)

end

end A217486.P13597698363028764006

/-! ## A217486.P6887117903414947218

`2^n*A122101(∑[n+1])`
-/

namespace A217486.P6887117903414947218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A122101 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A217486.P6887117903414947218

/-! ## A217486.P17525382275140142702

`2^(n-1)*A000629(n+1)`
-/

namespace A217486.P17525382275140142702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000629 (n + 1) : ℚ)

end

end A217486.P17525382275140142702

/-! ## A217486.P3855599484508464185

`record[A000670(floor(n/(xor(n, n+1)+1))+1)]/2^-n`
-/

namespace A217486.P3855599484508464185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A217486.P3855599484508464185

/-! ## A217486.P17905561680363830424

`record[A000629(n)*A034008(n)]`
-/

namespace A217486.P17905561680363830424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000629 n * A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217486.P17905561680363830424

/-! ## A217486.P11939888972498507619

`A000670(n+1)*A011782(n+1)`
-/

namespace A217486.P11939888972498507619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (n + 1) * A011782 (n + 1)

end

end A217486.P11939888972498507619

/-! ## A217486.P587360882565394500

`A000670(n+1)*A131577(n+1)`
-/

namespace A217486.P587360882565394500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (n + 1) * A131577 (n + 1)

end

end A217486.P587360882565394500

/-! ## A217486.P1748906093471740247

`A000670(n+1)*A034008(n+2)`
-/

namespace A217486.P1748906093471740247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (n + 1) * A034008 (n + 2)

end

end A217486.P1748906093471740247

/-!
# A217487: Partial sums of the squares of the numbers in sequence A080253.

The programs for A217487, there is no canonical definition to state claims against.
-/

/-! ## A217487.P5692066162417984252

`∑[A080253(n)²]`
-/

namespace A217487.P5692066162417984252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080253 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217487.P5692066162417984252

/-! ## A217487.P6741445131979447014

`∑[(A355219(n)/record[A059268(n)])²]`
-/

namespace A217487.P6741445131979447014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A355219 n : ℚ) / (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217487.P6741445131979447014

/-! ## A217487.P272597339807256728

`∑[(A355219(n)/record[A155038(n+1)])²]`
-/

namespace A217487.P272597339807256728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155038 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A355219 n : ℚ) / (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217487.P272597339807256728

/-! ## A217487.P6468860588889525198

`∑[A080253(n)^A059268(A000124(n))]`
-/

namespace A217487.P6468860588889525198
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080253 n : ℚ) ^ (A059268 (A000124 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217487.P6468860588889525198

/-! ## A217487.P2991415428177877521

`∑[A355219(n)²/A000302(n)]`
-/

namespace A217487.P2991415428177877521
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355219 n ^ 2 : ℚ) / (A000302 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217487.P2991415428177877521

/-!
# A217488: Alternating sums of the squares of the numbers in sequence A080253.

The programs for A217488, there is no canonical definition to state claims against.
-/

/-! ## A217488.P3675875377987483733

`A080253(n)²-a(n-1)` with `a(0)=1`
-/

namespace A217488.P3675875377987483733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080253 n ^ 2 - a (n - 1)

end

end A217488.P3675875377987483733

/-!
# A217489: Least positive integer without a digit 1, not listed earlier and not divisible by any digit of the preceding term.

The programs for A217489, there is no canonical definition to state claims against.
-/

/-! ## A217489.P18257429120277569254

`A217491(A077168(n))`
-/

namespace A217489.P18257429120277569254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217491 (A077168 n).toNat

end

end A217489.P18257429120277569254

/-! ## A217489.P15394705426658850194

`A217491(A043319(n+1))`
-/

namespace A217489.P15394705426658850194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217491 (A043319 (n + 1)).toNat

end

end A217489.P15394705426658850194

/-! ## A217489.P13036812775989367869

`A217491(A044916(n+1))`
-/

namespace A217489.P13036812775989367869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217491 (A044916 (n + 1)).toNat

end

end A217489.P13036812775989367869

/-! ## A217489.P17636847467518349805

`A217491(A055646(n+1))`
-/

namespace A217489.P17636847467518349805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217491 (A055646 (n + 1)).toNat

end

end A217489.P17636847467518349805

/-! ## A217489.P13463302040564719973

`A217491(A055647(n)+1)`
-/

namespace A217489.P13463302040564719973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217491 (A055647 n + 1).toNat

end

end A217489.P13463302040564719973

/-!
# A217491: Next largest positive integer without a digit 1 and not divisible by any digit of the preceding term.

The programs for A217491, there is no canonical definition to state claims against.
-/

/-! ## A217491.P11735543173912373635

`record[A217489(n+1)-A185144(A018117(n))]`
-/

namespace A217491.P11735543173912373635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217489 (n + 1) - A185144 (A018117 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217491.P11735543173912373635

/-! ## A217491.P12842012293254598395

`record[A217489(n+1)-A165656(n)]`
-/

namespace A217491.P12842012293254598395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217489 (n + 1) - A165656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217491.P12842012293254598395

/-! ## A217491.P6934186566655797408

`record[A217489(n+1)-A185036(n)]`
-/

namespace A217491.P6934186566655797408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217489 (n + 1) - A185036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217491.P6934186566655797408

/-! ## A217491.P5699555812793359640

`record[A217489(n+1)-A025456(A126683(n))]`
-/

namespace A217491.P5699555812793359640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217489 (n + 1) - A025456 (A126683 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217491.P5699555812793359640

/-! ## A217491.P13354136063290352355

`record[A217489(n+1)]-A014376(A266646(n+1))`
-/

namespace A217491.P13354136063290352355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A014376 (A266646 (n + 1)).toNat

end

end A217491.P13354136063290352355

/-!
# A217492: Numbers k such that 9^k + 10 is prime.

The programs for A217492, there is no canonical definition to state claims against.
-/

/-! ## A217492.P2143685000330549586

`record[A025480(A217137(n+1))]`
-/

namespace A217492.P2143685000330549586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A217137 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217492.P2143685000330549586

/-! ## A217492.P11391464749803239042

`record[A142150(A217137(n+2))]`
-/

namespace A217492.P11391464749803239042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A217137 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217492.P11391464749803239042

/-! ## A217492.P934824762676342833

`eq[1, A255542(2*n)]`
-/

namespace A217492.P934824762676342833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255542 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217492.P934824762676342833

/-! ## A217492.P10565745250193218139

`A110654(eq[(-1)^n, A255542(n)])`
-/

namespace A217492.P10565745250193218139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A217492.P10565745250193218139

/-! ## A217492.P853686547392343349

`lt[A255542(2*n)^A255542(n), 2]`
-/

namespace A217492.P853686547392343349
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255542 (2 * n) : ℚ) ^ (A255542 n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A217492.P853686547392343349

/-!
# A217493: Numbers k such that 9^k - 10 is prime.

The programs for A217493, there is no canonical definition to state claims against.
-/

/-! ## A217493.P3906921644785271362

`record[A273943(A217347(n+1))]`
-/

namespace A217493.P3906921644785271362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A217347 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217493.P3906921644785271362

/-! ## A217493.P10745328979636157700

`record[A032742(A217347(n+2))]`
-/

namespace A217493.P10745328979636157700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A217347 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217493.P10745328979636157700

/-!
# A217494: Primes of the form 2*n^2 + 34*n + 15.

The programs for A217494, there is no canonical definition to state claims against.
-/

/-! ## A217494.P3464019703663170194

`p?[A001105(n)-A128468(n)]`
-/

namespace A217494.P3464019703663170194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n - A128468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217494.P3464019703663170194

/-! ## A217494.P12568344772409740747

`p?[A005893(n)-A156376(n)]`
-/

namespace A217494.P12568344772409740747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n - A156376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217494.P12568344772409740747

/-! ## A217494.P6081861616931019937

`p?[A305068(n+1)+A195147(n)]`
-/

namespace A217494.P6081861616931019937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305068 (n + 1) + A195147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217494.P6081861616931019937

/-! ## A217494.P12141504979831235489

`p?[A179207(n+1)-A161705(n)]`
-/

namespace A217494.P12141504979831235489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179207 (n + 1) - A161705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217494.P12141504979831235489

/-! ## A217494.P9148384806485493105

`p?[A116940(n)-(A008600(n)+2)]`
-/

namespace A217494.P9148384806485493105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116940 n - (A008600 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217494.P9148384806485493105

/-!
# A217495: Primes of the form 2*n^2 + 46*n + 21.

The programs for A217495, there is no canonical definition to state claims against.
-/

/-! ## A217495.P16866173471635150634

`p?[A046092(3*n+1)-243]`
-/

namespace A217495.P16866173471635150634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (3 * n + 1) - 243

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217495.P16866173471635150634

/-! ## A217495.P2035195825001013372

`p?[A258016(2*n+1)+2*(n+1)²]`
-/

namespace A217495.P2035195825001013372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258016 (2 * n + 1) + (2 * (n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217495.P2035195825001013372

/-! ## A217495.P9173530754613642408

`p?[A152811(n+1)-A053742(n)]`
-/

namespace A217495.P9173530754613642408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152811 (n + 1) - A053742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217495.P9173530754613642408

/-! ## A217495.P17745770675282897456

`p?[A001844(n)-A304157(n+1)]`
-/

namespace A217495.P17745770675282897456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - A304157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217495.P17745770675282897456

/-! ## A217495.P5990754801247330514

`p?[A236283(n+1)+2*A017509(n)]`
-/

namespace A217495.P5990754801247330514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236283 (n + 1) + 2 * A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217495.P5990754801247330514

/-! ## A217495.P15932239044638110908

`p?[A059993(n)-2*A073762(n+1)]`
-/

namespace A217495.P15932239044638110908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059993 n - 2 * A073762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217495.P15932239044638110908

/-! ## A217495.P6004078998169061096

`p?[A017497(4*n+1)+A001844(n)]`
-/

namespace A217495.P6004078998169061096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 (4 * n + 1) + A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217495.P6004078998169061096

/-! ## A217495.P18035578859235499268

`p?[A090288(n)+A017377(4*n+1)]`
-/

namespace A217495.P18035578859235499268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090288 n + A017377 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217495.P18035578859235499268

/-! ## A217495.P17421900292574890069

`p?[A227719(2*(n+3))-A152773(n)]`
-/

namespace A217495.P17421900292574890069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227719 (2 * (n + 3)) - A152773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217495.P17421900292574890069

/-! ## A217495.P4092294896040259185

`p?[A227720(2*(n+3))-A152773(n)]`
-/

namespace A217495.P4092294896040259185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227720 (2 * (n + 3)) - A152773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217495.P4092294896040259185

/-!
# A217496: Primes of the form 2*n^2 + 50*n + 23.

The programs for A217496, there is no canonical definition to state claims against.
-/

/-! ## A217496.P11871525633392878616

`p?[2*n²+50*n+23]`
-/

namespace A217496.P11871525633392878616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2 + (50 * n + 23)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A217496.P11871525633392878616

/-! ## A217496.P17809348229867370393

`p?[A132768(n)+A132764(n+1)]%A016961(n+1)`
-/

namespace A217496.P17809348229867370393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132768 n + A132764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016961 (n + 1))

end

end A217496.P17809348229867370393

/-! ## A217496.P18170472763469944204

`∩[A008578(n+1), A132768(n)+A132764(n+1)]`
-/

namespace A217496.P18170472763469944204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132768 n + A132764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217496.P18170472763469944204

/-!
# A217497: Primes of the form 2*n^2 + 54*n + 25.

The programs for A217497, there is no canonical definition to state claims against.
-/

/-! ## A217497.P13666336479070147664

`p?[2*A212325(n)-1]`
-/

namespace A217497.P13666336479070147664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212325 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217497.P13666336479070147664

/-! ## A217497.P6862770617760367328

`p?[A054000(n+1)+A053742(n)]`
-/

namespace A217497.P6862770617760367328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054000 (n + 1) + A053742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217497.P6862770617760367328

/-! ## A217497.P10871097317378743092

`p?[A093328(n+1)+A053741(n)]`
-/

namespace A217497.P10871097317378743092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093328 (n + 1) + A053741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217497.P10871097317378743092

/-! ## A217497.P8092549223979156342

`p?[A132770(n)+A132766(n+1)]`
-/

namespace A217497.P8092549223979156342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132770 n + A132766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217497.P8092549223979156342

/-! ## A217497.P17980678688249101332

`p?[A001105(n)-(A053742(n)+2)]`
-/

namespace A217497.P17980678688249101332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n - (A053742 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217497.P17980678688249101332

/-!
# A217498: Primes of the form 2*n^2 + 58*n + 27.

The programs for A217498, the canonical program `A217498.P11505697027508340187` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217498 has offset 1).

The definition of A217498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217498.P11505697027508340187

`p?[2*((n+2)²-3)+50*n+25]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A217498

/-- `p?[2*((n+2)²-3)+50*n+25]` -/
def P11505697027508340187.Spec : Prop :=
  ∀ n, P11505697027508340187.a n = A217498 (n + 1)

theorem P11505697027508340187.correct : P11505697027508340187.Spec := by
  intro n
  simp only [A217498, Nat.add_sub_cancel]

end A217498

/-!
# A217499: Primes of the form 2*n^2 + 70*n + 33.

The programs for A217499, there is no canonical definition to state claims against.
-/

/-! ## A217499.P13453269295275327121

`p?[A195147(n)+2*A305068(n+1)]`
-/

namespace A217499.P13453269295275327121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195147 n + 2 * A305068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217499.P13453269295275327121

/-! ## A217499.P14352201356423791718

`p?[A001844(n)-A270296(2*(n+3))]`
-/

namespace A217499.P14352201356423791718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - A270296 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217499.P14352201356423791718

/-! ## A217499.P13175836945093773223

`p?[A005893(n)-(6*A017461(n)+1)]`
-/

namespace A217499.P13175836945093773223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n - (6 * A017461 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217499.P13175836945093773223

/-! ## A217499.P17158648530549536385

`p?[A304839(n+1)+A000217(2*(n+2))]`
-/

namespace A217499.P17158648530549536385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + A000217 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217499.P17158648530549536385

/-! ## A217499.P2494976051863924896

`p?[A195147(2*n+1)%A171435(2*n+5)²]`
-/

namespace A217499.P2494976051863924896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195147 (2 * n + 1)) (A171435 (2 * n + 5) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217499.P2494976051863924896

