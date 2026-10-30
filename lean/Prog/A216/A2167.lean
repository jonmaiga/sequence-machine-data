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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
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
# A216702: a(n) = Product_{k=1..n} (16 - 4/k).

The programs for A216702, the canonical program `A216702.P12345660710392839381` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216702 has offset 0).

The definition of A216702 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216702.P12345660710392839381

`4*(4*n-1)/n*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A216702

/-- `4*(4*n-1)/n*a(n-1)` -/
def P12345660710392839381.Spec : Prop :=
  ∀ n, P12345660710392839381.a n = (A216702 n : ℚ)

end A216702

/-! ## A216702.P11563406275991629796

`A248325(∑[n]+n)`
-/

namespace A216702.P11563406275991629796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248325 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A216702.P11563406275991629796

namespace A216702

/-- `A248325(∑[n]+n)` -/
def P11563406275991629796.Spec : Prop :=
  ∀ n, P11563406275991629796.a n = A216702 n

end A216702

/-! ## A216702.P539194192812667338

`2^n*A004982(n)`
-/

namespace A216702.P539194192812667338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A004982 n

end

end A216702.P539194192812667338

namespace A216702

/-- `2^n*A004982(n)` -/
def P539194192812667338.Spec : Prop :=
  ∀ n, P539194192812667338.a n = A216702 n

end A216702

/-! ## A216702.P11914682877789527235

`(n+1)*A025749(n+1)`
-/

namespace A216702.P11914682877789527235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A025749 (n + 1)

end

end A216702.P11914682877789527235

namespace A216702

/-- `(n+1)*A025749(n+1)` -/
def P11914682877789527235.Spec : Prop :=
  ∀ n, P11914682877789527235.a n = A216702 n

end A216702

/-! ## A216702.P10586322676706941272

`(n+1)*A034256(n+1)/4`
-/

namespace A216702.P10586322676706941272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A034256 (n + 1) : ℚ) / 4)

end

end A216702.P10586322676706941272

namespace A216702

/-- `(n+1)*A034256(n+1)/4` -/
def P10586322676706941272.Spec : Prop :=
  ∀ n, P10586322676706941272.a n = (A216702 n : ℚ)

end A216702

/-! ## A216702.P8434311285736666914

`A004982(n)*A016116(2*n)`
-/

namespace A216702.P8434311285736666914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004982 n * A016116 (2 * n)

end

end A216702.P8434311285736666914

namespace A216702

/-- `A004982(n)*A016116(2*n)` -/
def P8434311285736666914.Spec : Prop :=
  ∀ n, P8434311285736666914.a n = A216702 n

end A216702

/-! ## A216702.P8952925413190044705

`A004982(n)*A131816(A000096(n))`
-/

namespace A216702.P8952925413190044705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004982 n * A131816 (A000096 n).toNat

end

end A216702.P8952925413190044705

namespace A216702

/-- `A004982(n)*A131816(A000096(n))` -/
def P8952925413190044705.Spec : Prop :=
  ∀ n, P8952925413190044705.a n = A216702 n

end A216702

/-! ## A216702.P9812543543793252037

`(A008574(n)-A178334(n))*A034256(n)`
-/

namespace A216702.P9812543543793252037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008574 n - A178334 n) * A034256 n

end

end A216702.P9812543543793252037

namespace A216702

/-- `(A008574(n)-A178334(n))*A034256(n)` -/
def P9812543543793252037.Spec : Prop :=
  ∀ n, P9812543543793252037.a n = A216702 n

end A216702

/-! ## A216702.P2202806530290038659

`A000079(n)²/A000142(n)*A008545(n)`
-/

namespace A216702.P2202806530290038659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n ^ 2 : ℚ) / (A000142 n : ℚ) * (A008545 n : ℚ)

end

end A216702.P2202806530290038659

namespace A216702

/-- `A000079(n)²/A000142(n)*A008545(n)` -/
def P2202806530290038659.Spec : Prop :=
  ∀ n, P2202806530290038659.a n = (A216702 n : ℚ)

end A216702

/-!
# A216703: a(n) = Product_{k=1..n} (49 - 7/k).

The programs for A216703, there is no canonical definition to state claims against.
-/

/-! ## A216703.P2254278871591660750

`(49-7/n)*a(n-1)` with `a(0)=1`
-/

namespace A216703.P2254278871591660750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (49 - 7 / (n : ℚ)) * a (n - 1)

end

end A216703.P2254278871591660750

/-! ## A216703.P10089197671094985518

`A248329(∑[n]+n)`
-/

namespace A216703.P10089197671094985518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248329 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A216703.P10089197671094985518

/-! ## A216703.P11101014986379532657

`(n+1)*A025752(n+1)`
-/

namespace A216703.P11101014986379532657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A025752 (n + 1)

end

end A216703.P11101014986379532657

/-! ## A216703.P11044074856637838539

`record[gcd(A248329(n), A276837(n))]`
-/

namespace A216703.P11044074856637838539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A248329 n) (A276837 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216703.P11044074856637838539

/-! ## A216703.P6849849326160738510

`A025752(A077168(n))*A077168(n)`
-/

namespace A216703.P6849849326160738510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025752 (A077168 n).toNat * A077168 n

end

end A216703.P6849849326160738510

/-!
# A216704: a(n) = Product_{k=1..n} (64 - 8/k).

The programs for A216704, there is no canonical definition to state claims against.
-/

/-! ## A216704.P834456450915717247

`4*(16-2/n)*a(n-1)` with `a(0)=1`
-/

namespace A216704.P834456450915717247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * ((16 - 2 / (n : ℚ)) * a (n - 1))

end

end A216704.P834456450915717247

/-! ## A216704.P2527684358187600889

`A248332(∑[n]+n)`
-/

namespace A216704.P2527684358187600889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248332 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A216704.P2527684358187600889

/-! ## A216704.P14374370171725054070

`(n+1)*A025753(n+1)`
-/

namespace A216704.P14374370171725054070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A025753 (n + 1)

end

end A216704.P14374370171725054070

/-! ## A216704.P6697508515932963595

`A000079(n)²*A097183(n)`
-/

namespace A216704.P6697508515932963595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A097183 n

end

end A216704.P6697508515932963595

/-! ## A216704.P7056106316031712966

`A000079(2*n)*A097183(n)`
-/

namespace A216704.P7056106316031712966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) * A097183 n

end

end A216704.P7056106316031712966

/-! ## A216704.P905224951760015794

`A016116(4*n)*A097183(n)`
-/

namespace A216704.P905224951760015794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (4 * n) * A097183 n

end

end A216704.P905224951760015794

/-! ## A216704.P14321693825551398663

`record[A025753(A123108(n))*A123108(n)]`
-/

namespace A216704.P14321693825551398663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025753 (A123108 n).toNat * A123108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216704.P14321693825551398663

/-!
# A216705: a(n) = Product_{k=1..n} (81 - 9/k).

The programs for A216705, there is no canonical definition to state claims against.
-/

/-! ## A216705.P13901482704691655834

`3*(27-3/n)*a(n-1)` with `a(0)=1`
-/

namespace A216705.P13901482704691655834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((27 - 3 / (n : ℚ)) * a (n - 1))

end

end A216705.P13901482704691655834

/-! ## A216705.P5175045289577412570

`3^n*A097192(n)`
-/

namespace A216705.P5175045289577412570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A097192 n

end

end A216705.P5175045289577412570

/-! ## A216705.P17254322168818524027

`(n+1)*A025754(n+1)`
-/

namespace A216705.P17254322168818524027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A025754 (n + 1)

end

end A216705.P17254322168818524027

/-! ## A216705.P10976623472632569154

`A097192(n)*A108411(2*n)`
-/

namespace A216705.P10976623472632569154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097192 n * A108411 (2 * n)

end

end A216705.P10976623472632569154

/-! ## A216705.P641262133202621146

`3^n*A097190(A000096(n))`
-/

namespace A216705.P641262133202621146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A097190 (A000096 n).toNat

end

end A216705.P641262133202621146

/-!
# A216706: a(n) = Product_{k=1..n} (100 - 10/k).

The programs for A216706, there is no canonical definition to state claims against.
-/

/-! ## A216706.P14807841252152649299

`(n+1)*A025755(n+1)`
-/

namespace A216706.P14807841252152649299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A025755 (n + 1)

end

end A216706.P14807841252152649299

/-! ## A216706.P17956282401471331163

`A025755(A077168(n))*A077168(n)`
-/

namespace A216706.P17956282401471331163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025755 (A077168 n).toNat * A077168 n

end

end A216706.P17956282401471331163

/-!
# A216708: Number of compositions (ordered partitions) of n into 2 or more distinct nonnegative parts.

The programs for A216708, there is no canonical definition to state claims against.
-/

/-! ## A216708.P3953570994307755162

`A032020(n)+A072576(n)-A054977(n)`
-/

namespace A216708.P3953570994307755162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n + (A072576 n - A054977 n)

end

end A216708.P3953570994307755162

/-! ## A216708.P8889127778666075477

`A072576(n)+A216695(n)-A000007(n)`
-/

namespace A216708.P8889127778666075477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072576 n + (A216695 n - A000007 n)

end

end A216708.P8889127778666075477

/-! ## A216708.P9061259474157005366

`A072576(n)+A216695(n)-a(A000038(n))` with `a(0)=0, a(1)=2`
-/

namespace A216708.P9061259474157005366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A072576 n + (A216695 n - a (A000038 n).toNat)

end

end A216708.P9061259474157005366

/-! ## A216708.P18273213283670976907

`A216695(n)+A072576(n)%A171856(n)`
-/

namespace A216708.P18273213283670976907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216695 n + Int.tmod (A072576 n) (A171856 n)

end

end A216708.P18273213283670976907

/-! ## A216708.P5433193245341653040

`A242447(A000124(n))+A072576(n)-1`
-/

namespace A216708.P5433193245341653040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A000124 n).toNat + (A072576 n - 1)

end

end A216708.P5433193245341653040

/-!
# A216710: Expansion of (1-3*x+x^2)^2/(1-9*x+28*x^2-35*x^3+15*x^4-x^5).

The programs for A216710, the canonical program `A216710.P16776522567471702591` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216710 has offset 0).

The definition of A216710 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-6x+11x^2-6x^3+x^4)/(1-9x+28x^2-35x^3+15x^4-x^5))` (program `A216710.P16776522567471702591`, by `A216710.P16776522567471702591.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A216710.P16776522567471702591

`ogf((1-6x+11x^2-6x^3+x^4)/(1-9x+28x^2-35x^3+15x^4-x^5))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A216710

/-- `ogf((1-6x+11x^2-6x^3+x^4)/(1-9x+28x^2-35x^3+15x^4-x^5))` -/
def P16776522567471702591.Spec : Prop :=
  ∀ n, P16776522567471702591.a n = A216710 n

theorem P16776522567471702591.correct : P16776522567471702591.Spec := by
  intro n
  simp only [A216710]

end A216710

/-! ## A216710.P5089759717242435602

`9*a(n-1)-28*a(n-2)+35*a(n-3)-15*a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=10, a(3)=35, a(4)=126`
-/

namespace A216710.P5089759717242435602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 10, 35, 126] fun n a =>
  9 * a (n - 1) - 28 * a (n - 2) + 35 * a (n - 3) - 15 * a (n - 4) + a (n - 5)

end

end A216710.P5089759717242435602

namespace A216710

/-- `9*a(n-1)-28*a(n-2)+35*a(n-3)-15*a(n-4)+a(n-5)` -/
def P5089759717242435602.Spec : Prop :=
  ∀ n, P5089759717242435602.a n = A216710 n

end A216710

/-! ## A216710.P14913574296094046283

`A336675(Δ[n²])`
-/

namespace A216710.P14913574296094046283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336675 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A216710.P14913574296094046283

namespace A216710

/-- `A336675(Δ[n²])` -/
def P14913574296094046283.Spec : Prop :=
  ∀ n, P14913574296094046283.a n = A216710 n

end A216710

/-! ## A216710.P4653576711504299923

`record[A336675(n*n%2)]`
-/

namespace A216710.P4653576711504299923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336675 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216710.P4653576711504299923

namespace A216710

/-- `record[A336675(n*n%2)]` -/
def P4653576711504299923.Spec : Prop :=
  ∀ n, P4653576711504299923.a n = A216710 n

end A216710

/-! ## A216710.P6994539937972386846

`record[and((-1)^n, A336675(n))]`
-/

namespace A216710.P6994539937972386846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-1) ^ n) (A336675 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216710.P6994539937972386846

namespace A216710

/-- `record[and((-1)^n, A336675(n))]` -/
def P6994539937972386846.Spec : Prop :=
  ∀ n, P6994539937972386846.a n = A216710 n

end A216710

/-! ## A216710.P12546439846193114616

`record[A336675(n/A040001(n))]`
-/

namespace A216710.P12546439846193114616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336675 (SequenceMachineLib.roundAway ((n : ℚ) / (A040001 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216710.P12546439846193114616

namespace A216710

/-- `record[A336675(n/A040001(n))]` -/
def P12546439846193114616.Spec : Prop :=
  ∀ n, P12546439846193114616.a n = A216710 n

end A216710

/-! ## A216710.P10158007536809789557

`A224514(n+1)-A224509(n)`
-/

namespace A216710.P10158007536809789557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224514 (n + 1) - A224509 n

end

end A216710.P10158007536809789557

namespace A216710

/-- `A224514(n+1)-A224509(n)` -/
def P10158007536809789557.Spec : Prop :=
  ∀ n, P10158007536809789557.a n = A216710 n

end A216710

/-! ## A216710.P13683918000996683015

`2*A224514(n)-A211216(n)`
-/

namespace A216710.P13683918000996683015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A224514 n - A211216 n

end

end A216710.P13683918000996683015

namespace A216710

/-- `2*A224514(n)-A211216(n)` -/
def P13683918000996683015.Spec : Prop :=
  ∀ n, P13683918000996683015.a n = A216710 n

end A216710

/-! ## A216710.P7180560998095687593

`record[(2-A040001(n))*A336675(n)]`
-/

namespace A216710.P7180560998095687593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A040001 n) * A336675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216710.P7180560998095687593

namespace A216710

/-- `record[(2-A040001(n))*A336675(n)]` -/
def P7180560998095687593.Spec : Prop :=
  ∀ n, P7180560998095687593.a n = A216710 n

end A216710

/-! ## A216710.P18145841343874436953

`A336675(2*n+1)+A000007(n+1)`
-/

namespace A216710.P18145841343874436953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336675 (2 * n + 1) + A000007 (n + 1)

end

end A216710.P18145841343874436953

namespace A216710

/-- `A336675(2*n+1)+A000007(n+1)` -/
def P18145841343874436953.Spec : Prop :=
  ∀ n, P18145841343874436953.a n = A216710 n

end A216710

/-! ## A216710.P10275618257672865832

`A220948(n+1)-3*A220948(n)`
-/

namespace A216710.P10275618257672865832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220948 (n + 1) - 3 * A220948 n

end

end A216710.P10275618257672865832

namespace A216710

/-- `A220948(n+1)-3*A220948(n)` -/
def P10275618257672865832.Spec : Prop :=
  ∀ n, P10275618257672865832.a n = A216710 n

end A216710

/-! ## A216710.P11716461392923106932

`A223940(2*n+1)-∑[A223940(2*n)]`
-/

namespace A216710.P11716461392923106932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223940 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223940 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216710.P11716461392923106932

namespace A216710

/-- `A223940(2*n+1)-∑[A223940(2*n)]` -/
def P11716461392923106932.Spec : Prop :=
  ∀ n, P11716461392923106932.a n = A216710 n

end A216710

/-! ## A216710.P16246520431266275458

`A122608(2*n+1)-Δ[Δ[A122608(2*n+1)]]`
-/

namespace A216710.P16246520431266275458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122608 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122608 (2 * n + 1) - (f1 (n + 1) - f1 n)

end

end A216710.P16246520431266275458

namespace A216710

/-- `A122608(2*n+1)-Δ[Δ[A122608(2*n+1)]]` -/
def P16246520431266275458.Spec : Prop :=
  ∀ n, P16246520431266275458.a n = A216710 n

end A216710

/-! ## A216710.P143871820306109364

`A224509(n+1)-(A224509(n)+A220948(n))`
-/

namespace A216710.P143871820306109364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224509 (n + 1) - (A224509 n + A220948 n)

end

end A216710.P143871820306109364

namespace A216710

/-- `A224509(n+1)-(A224509(n)+A220948(n))` -/
def P143871820306109364.Spec : Prop :=
  ∀ n, P143871820306109364.a n = A216710 n

end A216710

/-! ## A216710.P2666945145487046254

`A153360(2*(n+1))-A090994(2*(n+1))`
-/

namespace A216710.P2666945145487046254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153360 (2 * (n + 1)) - A090994 (2 * (n + 1))

end

end A216710.P2666945145487046254

namespace A216710

/-- `A153360(2*(n+1))-A090994(2*(n+1))` -/
def P2666945145487046254.Spec : Prop :=
  ∀ n, P2666945145487046254.a n = A216710 n

end A216710

/-! ## A216710.P5249380882208815677

`2*A090994(2*n+1)-A090994(2*(n+1))`
-/

namespace A216710.P5249380882208815677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090994 (2 * n + 1) - A090994 (2 * (n + 1))

end

end A216710.P5249380882208815677

namespace A216710

/-- `2*A090994(2*n+1)-A090994(2*(n+1))` -/
def P5249380882208815677.Spec : Prop :=
  ∀ n, P5249380882208815677.a n = A216710 n

end A216710

/-! ## A216710.P7297778699318744863

`(A090994(2*n+1)+A090994(2*n+1))%A090994(2*n+2)`
-/

namespace A216710.P7297778699318744863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090994 (2 * n + 1) + A090994 (2 * n + 1)) (A090994 (2 * n + 2))

end

end A216710.P7297778699318744863

namespace A216710

/-- `(A090994(2*n+1)+A090994(2*n+1))%A090994(2*n+2)` -/
def P7297778699318744863.Spec : Prop :=
  ∀ n, P7297778699318744863.a n = A216710 n

end A216710

/-! ## A216710.P17912198631166372288

`gcd(A029655(n+1)*A336675(2*n+1), A336675(2*n+1))`
-/

namespace A216710.P17912198631166372288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029655 (n + 1) * A336675 (2 * n + 1)) (A336675 (2 * n + 1))

end

end A216710.P17912198631166372288

namespace A216710

/-- `gcd(A029655(n+1)*A336675(2*n+1), A336675(2*n+1))` -/
def P17912198631166372288.Spec : Prop :=
  ∀ n, (P17912198631166372288.a n : ℤ) = A216710 n

end A216710

/-!
# A216711: Expansion of q * (phi(q) * psi(-q))^8 in powers of q where phi(), psi() are Ramanujan theta functions.

The programs for A216711, there is no canonical definition to state claims against.
-/

/-! ## A216711.P14605322768365358515

`(-1)^n*A002288(n+1)`
-/

namespace A216711.P14605322768365358515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A002288 (n + 1)

end

end A216711.P14605322768365358515

/-! ## A216711.P3447500644471116251

`A002288(n+1)*A033999(n)`
-/

namespace A216711.P3447500644471116251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002288 (n + 1) * A033999 n

end

end A216711.P3447500644471116251

/-! ## A216711.P12490561937502979834

`-(A002288(n+1)/A033999(n+1))`
-/

namespace A216711.P12490561937502979834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A002288 (n + 1) : ℚ) / (A033999 (n + 1) : ℚ))

end

end A216711.P12490561937502979834

/-! ## A216711.P2222350881754349723

`A002288(n+1)*A030211(n)/A134461(n)`
-/

namespace A216711.P2222350881754349723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002288 (n + 1) * A030211 n : ℚ) / (A134461 n : ℚ)

end

end A216711.P2222350881754349723

/-! ## A216711.P12403168411092789332

`A002288(n+1)/A033999(n+2)`
-/

namespace A216711.P12403168411092789332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002288 (n + 1) : ℚ) / (A033999 (n + 2) : ℚ)

end

end A216711.P12403168411092789332

/-! ## A216711.P1038921144198053930

`A002288(n+1)*A009531(2*n+1)`
-/

namespace A216711.P1038921144198053930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002288 (n + 1) * A009531 (2 * n + 1)

end

end A216711.P1038921144198053930

/-! ## A216711.P3030219269264129134

`∑{#}[n, A134461(#)*A134461(n-#)]`
-/

namespace A216711.P3030219269264129134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A134461 k * A134461 (n - k)

end

end A216711.P3030219269264129134

/-! ## A216711.P7066991841553268608

`A302855(n+1)-abs(A002614(n+1))`
-/

namespace A216711.P7066991841553268608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302855 (n + 1) - |A002614 (n + 1)|

end

end A216711.P7066991841553268608

/-! ## A216711.P2460587524917089652

`A302855(n+1)-lcm(A002614(n+1), A014709(n))`
-/

namespace A216711.P2460587524917089652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302855 (n + 1) - (Int.lcm (A002614 (n + 1)) (A014709 n) : ℤ)

end

end A216711.P2460587524917089652

/-!
# A216712: G.f.: A(x) = 1 + x*A(x)^3 / ( A(-x)*A(I*x)*A(-I*x) ), where I^2 = -1.

The programs for A216712, there is no canonical definition to state claims against.
-/

/-! ## A216712.P13356825949548311343

`A002293(n)-A199363(A003266(n))`
-/

namespace A216712.P13356825949548311343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n - A199363 (A003266 n).toNat

end

end A216712.P13356825949548311343

/-! ## A216712.P15823584150078936725

`A002293(n)-A199363(A293993(n))`
-/

namespace A216712.P15823584150078936725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n - A199363 (A293993 n).toNat

end

end A216712.P15823584150078936725

/-!
# A216713: G.f.: A(x) = 1 + x*A(x)^2 / ( A(w*x)*A(w^2*x) ), where w = exp(2*Pi*I/3).

The programs for A216713, there is no canonical definition to state claims against.
-/

/-! ## A216713.P12746405127292750594

`A200505(A050534(n))+A050535(n)`
-/

namespace A216713.P12746405127292750594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200505 (A050534 n).toNat + A050535 n

end

end A216713.P12746405127292750594

/-! ## A216713.P6688128173803318194

`A007095(A004211(n))/A000602(n)`
-/

namespace A216713.P6688128173803318194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007095 (A004211 n).toNat : ℚ) / (A000602 n : ℚ)

end

end A216713.P6688128173803318194

/-! ## A216713.P4493711740102759983

`A007095(A004211(n))/A001522(n)`
-/

namespace A216713.P4493711740102759983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007095 (A004211 n).toNat : ℚ) / (A001522 n : ℚ)

end

end A216713.P4493711740102759983

/-!
# A216714: a(n) = 2^(n-5) - A000931(n).

The programs for A216714, the canonical program `A216714.P12598557137374359763` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216714 has offset 5).

The definition of A216714 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-A000931(n+5)` (program `A216714.P12598557137374359763`, by `A216714.P12598557137374359763.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A216714.P5805577398242644151

`ogf((x+x^2-x^3)/(1-2x-x^2+x^3+2x^4))`
-/

namespace A216714.P5805577398242644151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, -1] [1, -2, -1, 1, 2] n

end

end A216714.P5805577398242644151

namespace A216714

/-- `ogf((x+x^2-x^3)/(1-2x-x^2+x^3+2x^4))` -/
def P5805577398242644151.Spec : Prop :=
  ∀ n, P5805577398242644151.a n = A216714 (n + 5)

end A216714

/-! ## A216714.P12598557137374359763

`2^n-A000931(n+5)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A216714

/-- `2^n-A000931(n+5)` -/
def P12598557137374359763.Spec : Prop :=
  ∀ n, P12598557137374359763.a n = A216714 (n + 5)

theorem P12598557137374359763.correct : P12598557137374359763.Spec := by
  intro n
  simp only [A216714, Nat.add_sub_cancel]

end A216714

/-! ## A216714.P12443265462128593086

`2*a(n-1)+a(n-2)-a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6`
-/

namespace A216714.P12443265462128593086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 6] fun n a =>
  2 * a (n - 1) + a (n - 2) - a (n - 3) - 2 * a (n - 4)

end

end A216714.P12443265462128593086

namespace A216714

/-- `2*a(n-1)+a(n-2)-a(n-3)-2*a(n-4)` -/
def P12443265462128593086.Spec : Prop :=
  ∀ n, P12443265462128593086.a n = A216714 (n + 5)

end A216714

/-! ## A216714.P7741059900197877336

`2^n-∑[A000931(n)]`
-/

namespace A216714.P7741059900197877336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216714.P7741059900197877336

namespace A216714

/-- `2^n-∑[A000931(n)]` -/
def P7741059900197877336.Spec : Prop :=
  ∀ n, P7741059900197877336.a n = A216714 (n + 5)

end A216714

/-! ## A216714.P6573767682363893136

`2^n-A134816(n+1)`
-/

namespace A216714.P6573767682363893136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A134816 (n + 1)

end

end A216714.P6573767682363893136

namespace A216714

/-- `2^n-A134816(n+1)` -/
def P6573767682363893136.Spec : Prop :=
  ∀ n, P6573767682363893136.a n = A216714 (n + 5)

end A216714

/-! ## A216714.P8589224294867388731

`2^n-A182097(n+2)`
-/

namespace A216714.P8589224294867388731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A182097 (n + 2)

end

end A216714.P8589224294867388731

namespace A216714

/-- `2^n-A182097(n+2)` -/
def P8589224294867388731.Spec : Prop :=
  ∀ n, P8589224294867388731.a n = A216714 (n + 5)

end A216714

/-! ## A216714.P10480306954956394189

`2^n-∑[sqrt(A133037(n))]`
-/

namespace A216714.P10480306954956394189
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133037 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℝ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216714.P10480306954956394189

namespace A216714

/-- `2^n-∑[sqrt(A133037(n))]` -/
def P10480306954956394189.Spec : Prop :=
  ∀ n, P10480306954956394189.a n = (A216714 (n + 5) : ℝ)

end A216714

/-! ## A216714.P14892108559258323204

`2*2^(n-1)-A133034(n+9)`
-/

namespace A216714.P14892108559258323204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A133034 (n + 9) : ℚ)

end

end A216714.P14892108559258323204

namespace A216714

/-- `2*2^(n-1)-A133034(n+9)` -/
def P14892108559258323204.Spec : Prop :=
  ∀ n, P14892108559258323204.a n = (A216714 (n + 5) : ℚ)

end A216714

/-! ## A216714.P11277349822014196333

`∑[A011782(n)-A000931(n)]`
-/

namespace A216714.P11277349822014196333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A000931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216714.P11277349822014196333

namespace A216714

/-- `∑[A011782(n)-A000931(n)]` -/
def P11277349822014196333.Spec : Prop :=
  ∀ n, P11277349822014196333.a n = A216714 (n + 5)

end A216714

/-! ## A216714.P1063551052877610078

`A000051(n)-A052954(n+2)`
-/

namespace A216714.P1063551052877610078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A052954 (n + 2)

end

end A216714.P1063551052877610078

namespace A216714

/-- `A000051(n)-A052954(n+2)` -/
def P1063551052877610078.Spec : Prop :=
  ∀ n, P1063551052877610078.a n = A216714 (n + 5)

end A216714

/-! ## A216714.P14898270766964321447

`A000051(n)-(∑[A000931(n)]+1)`
-/

namespace A216714.P14898270766964321447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A216714.P14898270766964321447

namespace A216714

/-- `A000051(n)-(∑[A000931(n)]+1)` -/
def P14898270766964321447.Spec : Prop :=
  ∀ n, P14898270766964321447.a n = A216714 (n + 5)

end A216714

/-! ## A216714.P11020009536024784077

`A000225(n)+1-∑[A000931(n)]`
-/

namespace A216714.P11020009536024784077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A216714.P11020009536024784077

namespace A216714

/-- `A000225(n)+1-∑[A000931(n)]` -/
def P11020009536024784077.Spec : Prop :=
  ∀ n, P11020009536024784077.a n = A216714 (n + 5)

end A216714

/-! ## A216714.P5392796789817048997

`A000295(n)+∑[1-A000931(n)]`
-/

namespace A216714.P5392796789817048997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216714.P5392796789817048997

namespace A216714

/-- `A000295(n)+∑[1-A000931(n)]` -/
def P5392796789817048997.Spec : Prop :=
  ∀ n, P5392796789817048997.a n = A216714 (n + 5)

end A216714

/-! ## A216714.P2382855559815951984

`A000079(n)-Δ[A164001(n+2)]`
-/

namespace A216714.P2382855559815951984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (f1 (n + 1) - f1 n)

end

end A216714.P2382855559815951984

namespace A216714

/-- `A000079(n)-Δ[A164001(n+2)]` -/
def P2382855559815951984.Spec : Prop :=
  ∀ n, P2382855559815951984.a n = A216714 (n + 5)

end A216714

/-! ## A216714.P9577515774234599817

`A000051(n)-(A134816(n+1)+1)`
-/

namespace A216714.P9577515774234599817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A134816 (n + 1) + 1)

end

end A216714.P9577515774234599817

namespace A216714

/-- `A000051(n)-(A134816(n+1)+1)` -/
def P9577515774234599817.Spec : Prop :=
  ∀ n, P9577515774234599817.a n = A216714 (n + 5)

end A216714

/-! ## A216714.P2618154418604841529

`A000225(n)+1-A134816(n+1)`
-/

namespace A216714.P2618154418604841529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A134816 (n + 1))

end

end A216714.P2618154418604841529

namespace A216714

/-- `A000225(n)+1-A134816(n+1)` -/
def P2618154418604841529.Spec : Prop :=
  ∀ n, P2618154418604841529.a n = A216714 (n + 5)

end A216714

/-! ## A216714.P13648022033985165247

`A129973(n+2)+A000079(n)-A000045(n+1)`
-/

namespace A216714.P13648022033985165247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129973 (n + 2) + (A000079 n - A000045 (n + 1))

end

end A216714.P13648022033985165247

namespace A216714

/-- `A129973(n+2)+A000079(n)-A000045(n+1)` -/
def P13648022033985165247.Spec : Prop :=
  ∀ n, P13648022033985165247.a n = A216714 (n + 5)

end A216714

/-! ## A216714.P14442792699941974331

`A000931(n+1)+A038360(n+3)-A000079(n)`
-/

namespace A216714.P14442792699941974331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 1) + (A038360 (n + 3) - A000079 n)

end

end A216714.P14442792699941974331

namespace A216714

/-- `A000931(n+1)+A038360(n+3)-A000079(n)` -/
def P14442792699941974331.Spec : Prop :=
  ∀ n, P14442792699941974331.a n = A216714 (n + 5)

end A216714

/-!
# A216715: Triangle of coefficients of polynomials arising from INVERT transform of number of conjugacy classes in group of unitriangular n X n matrices over GF(q).

The programs for A216715, there is no canonical definition to state claims against.
-/

/-! ## A216715.P11702962775169043911

`A097867(A265644(n))`
-/

namespace A216715.P11702962775169043911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097867 (A265644 n).toNat

end

end A216715.P11702962775169043911

/-! ## A216715.P2357524903213391776

`A257022(A256069(n))`
-/

namespace A216715.P2357524903213391776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257022 (A256069 n).toNat

end

end A216715.P2357524903213391776

/-! ## A216715.P9449887532072751018

`A319081(A239098(n))`
-/

namespace A216715.P9449887532072751018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319081 (A239098 n).toNat

end

end A216715.P9449887532072751018

/-! ## A216715.P8533645594547466490

`A036043(A256116(n)²)`
-/

namespace A216715.P8533645594547466490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036043 (A256116 n ^ 2).toNat

end

end A216715.P8533645594547466490

/-! ## A216715.P5323202293710957687

`A280073(A135313(n)+1)`
-/

namespace A216715.P5323202293710957687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280073 (A135313 n + 1).toNat

end

end A216715.P5323202293710957687

/-!
# A216719: Triangle read by rows: number of circular permutations of [1..n] with k progressions of rise 1, distance 2 and length 3 (n >= 3, k >= 0).

The programs for A216719, there is no canonical definition to state claims against.
-/

/-! ## A216719.P14087342394279177100

`A129534(n+2)+A124762(A101946(n))`
-/

namespace A216719.P14087342394279177100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129534 (n + 2) + A124762 (A101946 n).toNat

end

end A216719.P14087342394279177100

/-!
# A216721: Second column of A216719.

The programs for A216721, there is no canonical definition to state claims against.
-/

/-! ## A216721.P6012527728295904906

`A216719(∑[n+1]+5)`
-/

namespace A216721.P6012527728295904906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216719 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A216721.P6012527728295904906

/-! ## A216721.P3472224112810626719

`and(-1, A216719(A167499(n)))`
-/

namespace A216721.P3472224112810626719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A216719 (A167499 n).toNat)

end

end A216721.P3472224112810626719

/-! ## A216721.P14284132092240133191

`record[A216719(n+5)%Δ[A216719(n+5)]]`
-/

namespace A216721.P14284132092240133191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216719 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216719 (n + 5)) (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216721.P14284132092240133191

/-! ## A216721.P8654853636414711783

`A216719(A167499(n))+A059995(n)`
-/

namespace A216721.P8654853636414711783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216719 (A167499 n).toNat + A059995 n

end

end A216721.P8654853636414711783

/-!
# A216723: Second column of A216722.

The programs for A216723, there is no canonical definition to state claims against.
-/

/-! ## A216723.P14068394182103922264

`A216722(∑[n+3]+1)`
-/

namespace A216723.P14068394182103922264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216722 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A216723.P14068394182103922264

/-! ## A216723.P2651834588376936342

`(n+3)*A035060(A000088(n))`
-/

namespace A216723.P2651834588376936342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A035060 (A000088 n).toNat

end

end A216723.P2651834588376936342

/-!
# A216728: (2*n)!*((2*n+1)/2)^n/(2*n+1).

The programs for A216728, the canonical program `A216728.P7650639976163566094` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216728 has offset 0).

The definition of A216728 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216728.P7650639976163566094

`(2*n)!*((2*n+1)/2)^n/(2*n+1)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A216728

/-- `(2*n)!*((2*n+1)/2)^n/(2*n+1)` -/
def P7650639976163566094.Spec : Prop :=
  ∀ n, P7650639976163566094.a n = (A216728 n : ℚ)

end A216728

/-! ## A216728.P14191617834170802556

`n!*A034941(n)`
-/

namespace A216728.P14191617834170802556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A034941 n

end

end A216728.P14191617834170802556

namespace A216728

/-- `n!*A034941(n)` -/
def P14191617834170802556.Spec : Prop :=
  ∀ n, P14191617834170802556.a n = A216728 n

end A216728

/-! ## A216728.P2332301129393787806

`(2*n+1)^(n-2)*∏[Δ[n²]]*A000142(n)`
-/

namespace A216728.P2332301129393787806
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) * (A000142 n : ℚ)

end

end A216728.P2332301129393787806

namespace A216728

/-- `(2*n+1)^(n-2)*∏[Δ[n²]]*A000142(n)` -/
def P2332301129393787806.Spec : Prop :=
  ∀ n, P2332301129393787806.a n = (A216728 n : ℚ)

end A216728

/-! ## A216728.P9398818924422767516

`A000142(n)*A034941(n)`
-/

namespace A216728.P9398818924422767516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A034941 n

end

end A216728.P9398818924422767516

namespace A216728

/-- `A000142(n)*A034941(n)` -/
def P9398818924422767516.Spec : Prop :=
  ∀ n, P9398818924422767516.a n = A216728 n

end A216728

/-! ## A216728.P1676753577904192391

`(2*n+1)^(n-1)*(2*n)!/2^n`
-/

namespace A216728.P1676753577904192391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.factorial (2 * n) : ℚ) / (2 ^ n : ℚ)

end

end A216728.P1676753577904192391

namespace A216728

/-- `(2*n+1)^(n-1)*(2*n)!/2^n` -/
def P1676753577904192391.Spec : Prop :=
  ∀ n, P1676753577904192391.a n = (A216728 n : ℚ)

end A216728

/-!
# A216729: a(n) = (3*n)!*((3*n+1)/6)^n/(3*n+1).

The programs for A216729, the canonical program `A216729.P31368104860728007` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216729 has offset 0).

The definition of A216729 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216729.P31368104860728007

`(3*n)!*((3*n+1)/6)^n/(3*n+1)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A216729

/-- `(3*n)!*((3*n+1)/6)^n/(3*n+1)` -/
def P31368104860728007.Spec : Prop :=
  ∀ n, P31368104860728007.a n = (A216729 n : ℚ)

end A216729

/-! ## A216729.P15158785529261796117

`n!*A200313(n)`
-/

namespace A216729.P15158785529261796117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A200313 n

end

end A216729.P15158785529261796117

namespace A216729

/-- `n!*A200313(n)` -/
def P15158785529261796117.Spec : Prop :=
  ∀ n, P15158785529261796117.a n = A216729 n

end A216729

/-!
# A216731: Primes p > 3 such that there is no power of 3 in the open interval (2p, 3p).

The programs for A216731, the canonical program `A216731.P4716723728717069116` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216731 has offset 1).

The definition of A216731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1157 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216731.P4716723728717069116

`p?[A134026(n+2)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A216731

/-- `p?[A134026(n+2)]` -/
def P4716723728717069116.Spec : Prop :=
  ∀ n, P4716723728717069116.a n = A216731 (n + 1)

theorem P4716723728717069116.correct : P4716723728717069116.Spec := by
  intro n
  simp only [A216731, Nat.add_sub_cancel]

end A216731

/-! ## A216731.P4388047598134368891

`filter[A134026(n+2), A010051(#)]`
-/

namespace A216731.P4388047598134368891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134026 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A216731.P4388047598134368891

namespace A216731

/-- `filter[A134026(n+2), A010051(#)]` -/
def P4388047598134368891.Spec : Prop :=
  ∀ n, P4388047598134368891.a n = A216731 (n + 1)

end A216731

/-! ## A216731.P13522508925454676715

`∩[A006005(n+1), A134026(n+1)]`
-/

namespace A216731.P13522508925454676715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216731.P13522508925454676715

namespace A216731

/-- `∩[A006005(n+1), A134026(n+1)]` -/
def P13522508925454676715.Spec : Prop :=
  ∀ n, (P13522508925454676715.a n : ℤ) = A216731 (n + 1)

end A216731

/-! ## A216731.P14104973482229010107

`∩[A065091(n+1), A134026(n+1)]`
-/

namespace A216731.P14104973482229010107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216731.P14104973482229010107

namespace A216731

/-- `∩[A065091(n+1), A134026(n+1)]` -/
def P14104973482229010107.Spec : Prop :=
  ∀ n, (P14104973482229010107.a n : ℤ) = A216731 (n + 1)

end A216731

/-! ## A216731.P10936181564047147162

`∩[A108719(n+1), A134026(n+1)]`
-/

namespace A216731.P10936181564047147162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216731.P10936181564047147162

namespace A216731

/-- `∩[A108719(n+1), A134026(n+1)]` -/
def P10936181564047147162.Spec : Prop :=
  ∀ n, (P10936181564047147162.a n : ℤ) = A216731 (n + 1)

end A216731

/-! ## A216731.P16830495128092288619

`∩[A134026(n+1), A140475(n+1)]`
-/

namespace A216731.P16830495128092288619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216731.P16830495128092288619

namespace A216731

/-- `∩[A134026(n+1), A140475(n+1)]` -/
def P16830495128092288619.Spec : Prop :=
  ∀ n, (P16830495128092288619.a n : ℤ) = A216731 (n + 1)

end A216731

/-! ## A216731.P11118037173004257864

`∩[A134026(n+1), A171577(n+1)]`
-/

namespace A216731.P11118037173004257864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216731.P11118037173004257864

namespace A216731

/-- `∩[A134026(n+1), A171577(n+1)]` -/
def P11118037173004257864.Spec : Prop :=
  ∀ n, (P11118037173004257864.a n : ℤ) = A216731 (n + 1)

end A216731

/-! ## A216731.P2861005154119692198

`∩[A134026(n+1), A193339(n+1)]`
-/

namespace A216731.P2861005154119692198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216731.P2861005154119692198

namespace A216731

/-- `∩[A134026(n+1), A193339(n+1)]` -/
def P2861005154119692198.Spec : Prop :=
  ∀ n, (P2861005154119692198.a n : ℤ) = A216731 (n + 1)

end A216731

/-! ## A216731.P10193957520938549052

`∩[A134026(n+1), A215848(n+1)]`
-/

namespace A216731.P10193957520938549052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216731.P10193957520938549052

namespace A216731

/-- `∩[A134026(n+1), A215848(n+1)]` -/
def P10193957520938549052.Spec : Prop :=
  ∀ n, (P10193957520938549052.a n : ℤ) = A216731 (n + 1)

end A216731

/-! ## A216731.P1243001482684033301

`∩[A134026(n+1), A227231(n+1)]`
-/

namespace A216731.P1243001482684033301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216731.P1243001482684033301

namespace A216731

/-- `∩[A134026(n+1), A227231(n+1)]` -/
def P1243001482684033301.Spec : Prop :=
  ∀ n, (P1243001482684033301.a n : ℤ) = A216731 (n + 1)

end A216731

/-! ## A216731.P3267310931132670822

`∩[A134026(n+1), A383300(n+1)]`
-/

namespace A216731.P3267310931132670822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216731.P3267310931132670822

namespace A216731

/-- `∩[A134026(n+1), A383300(n+1)]` -/
def P3267310931132670822.Spec : Prop :=
  ∀ n, (P3267310931132670822.a n : ℤ) = A216731 (n + 1)

end A216731

/-! ## A216731.P9347911176365471122

`filter[A134026(n+1), A080545(#)]`
-/

namespace A216731.P9347911176365471122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A216731.P9347911176365471122

namespace A216731

/-- `filter[A134026(n+1), A080545(#)]` -/
def P9347911176365471122.Spec : Prop :=
  ∀ n, P9347911176365471122.a n = A216731 (n + 1)

end A216731

/-! ## A216731.P9642455951913011388

`filter[A134026(n+1), A171387(#)]`
-/

namespace A216731.P9642455951913011388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A216731.P9642455951913011388

namespace A216731

/-- `filter[A134026(n+1), A171387(#)]` -/
def P9642455951913011388.Spec : Prop :=
  ∀ n, P9642455951913011388.a n = A216731 (n + 1)

end A216731

/-! ## A216731.P16798128844218874103

`filter[A134026(n+2), A080339(#)]`
-/

namespace A216731.P16798128844218874103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134026 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A216731.P16798128844218874103

namespace A216731

/-- `filter[A134026(n+2), A080339(#)]` -/
def P16798128844218874103.Spec : Prop :=
  ∀ n, P16798128844218874103.a n = A216731 (n + 1)

end A216731

/-! ## A216731.P8273935240125082512

`p?[lt[n, A338478(n)]]`
-/

namespace A216731.P8273935240125082512
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338478 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A216731.P8273935240125082512

namespace A216731

/-- `p?[lt[n, A338478(n)]]` -/
def P8273935240125082512.Spec : Prop :=
  ∀ n, (P8273935240125082512.a n : ℤ) = A216731 (n + 1)

end A216731

/-! ## A216731.P17389441872352708434

`p?[A265355(A001651(n+3)+1)]`
-/

namespace A216731.P17389441872352708434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265355 (A001651 (n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216731.P17389441872352708434

namespace A216731

/-- `p?[A265355(A001651(n+3)+1)]` -/
def P17389441872352708434.Spec : Prop :=
  ∀ n, P17389441872352708434.a n = A216731 (n + 1)

end A216731

/-! ## A216731.P7585019705773048981

`p?[lt[A338246(n)+1, A338247(n)]]`
-/

namespace A216731.P7585019705773048981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338246 n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338247 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A216731.P7585019705773048981

namespace A216731

/-- `p?[lt[A338246(n)+1, A338247(n)]]` -/
def P7585019705773048981.Spec : Prop :=
  ∀ n, (P7585019705773048981.a n : ℤ) = A216731 (n + 1)

end A216731

/-! ## A216731.P17257459093201197584

`p?[A004525(A297251(n+2))]`
-/

namespace A216731.P17257459093201197584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A297251 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216731.P17257459093201197584

namespace A216731

/-- `p?[A004525(A297251(n+2))]` -/
def P17257459093201197584.Spec : Prop :=
  ∀ n, P17257459093201197584.a n = A216731 (n + 1)

end A216731

/-! ## A216731.P12781952663548739689

`p?[A029578(A132141(n+4))]`
-/

namespace A216731.P12781952663548739689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A132141 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216731.P12781952663548739689

namespace A216731

/-- `p?[A029578(A132141(n+4))]` -/
def P12781952663548739689.Spec : Prop :=
  ∀ n, P12781952663548739689.a n = A216731 (n + 1)

end A216731

/-! ## A216731.P18048605386857692711

`p?[A110654(A132141(4*n+1))]`
-/

namespace A216731.P18048605386857692711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A132141 (4 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216731.P18048605386857692711

namespace A216731

/-- `p?[A110654(A132141(4*n+1))]` -/
def P18048605386857692711.Spec : Prop :=
  ∀ n, P18048605386857692711.a n = A216731 (n + 1)

end A216731

/-!
# A216732: Conjectural order of largest subgraph of diameter n of the two-dimensional mesh with maximal degree 3.

The programs for A216732, there is no canonical definition to state claims against.
-/

/-! ## A216732.P8409896444716660765

`∑[A162341(∑{d}[A050032(n+5)+1, #])]`
-/

namespace A216732.P8409896444716660765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050032 (n + 5) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162341 (∑ d ∈ Nat.divisors (f2 n).natAbs, d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216732.P8409896444716660765

/-! ## A216732.P2587461296899752562

`A007590(n+2)+A001222(A261060(n+5))`
-/

namespace A216732.P2587461296899752562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (n + 2) + A001222 (A261060 (n + 5)).toNat

end

end A216732.P2587461296899752562

/-!
# A216733: a(1)=1; thereafter a(n) = (n/2)*Sum_{i=1..n-1} K(i,n-i)*a(i)*a(n-i), where K(i,j)=i/j+j/i+2.

The programs for A216733, there is no canonical definition to state claims against.
-/

/-! ## A216733.P12824511334769705052

`(n+1)²*A323694(n)`
-/

namespace A216733.P12824511334769705052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A323694 n

end

end A216733.P12824511334769705052

/-! ## A216733.P15127255231542247999

`(n+1)*A393629(n+1)`
-/

namespace A216733.P15127255231542247999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A393629 (n + 1)

end

end A216733.P15127255231542247999

/-! ## A216733.P2032968639925757797

`(n+1)*A085161(A085161(n+1))*A323694(n)`
-/

namespace A216733.P2032968639925757797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A085161 (A085161 (n + 1)).toNat * A323694 n)

end

end A216733.P2032968639925757797

/-!
# A216734: Primes p such that x^6 = -2 has no solution mod p.

The programs for A216734, there is no canonical definition to state claims against.
-/

/-! ## A216734.P4537968445478813228

`∪[A003628(n+1), A040034(n+1)]`
-/

namespace A216734.P4537968445478813228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216734.P4537968445478813228

/-! ## A216734.P17714158248644543188

`p?[(n+2)%A055677(n)]`
-/

namespace A216734.P17714158248644543188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A055677 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216734.P17714158248644543188

/-! ## A216734.P14010042929689264963

`or(A032741(A185245(n)), A216740(n+1))`
-/

namespace A216734.P14010042929689264963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032741 (A185245 n).toNat) (A216740 (n + 1))

end

end A216734.P14010042929689264963

/-! ## A216734.P8316469559074338442

`or(A032741(A185245(n)), A216772(n+1))`
-/

namespace A216734.P8316469559074338442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032741 (A185245 n).toNat) (A216772 (n + 1))

end

end A216734.P8316469559074338442

/-! ## A216734.P17564895632537837115

`A175386(A216740(n+1))`
-/

namespace A216734.P17564895632537837115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175386 (A216740 (n + 1)).toNat

end

end A216734.P17564895632537837115

/-!
# A216735: Primes p such that x^8 = -2 has no solution mod p.

The programs for A216735, there is no canonical definition to state claims against.
-/

/-! ## A216735.P11939880216069991387

`A084318(A216739(n+1))`
-/

namespace A216735.P11939880216069991387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084318 (A216739 (n + 1)).toNat

end

end A216735.P11939880216069991387

/-! ## A216735.P15786483366803427373

`A216739(n+1)%A216498(n+1)`
-/

namespace A216735.P15786483366803427373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216739 (n + 1)) (A216498 (n + 1))

end

end A216735.P15786483366803427373

/-! ## A216735.P11074105689624395286

`A216739(n+1)+A010894(ceil((n+1)/∏{p}[n+1, (n+1)/#]))`
-/

namespace A216735.P11074105689624395286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216739 (n + 1) + A010894 (⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉.toNat + 21)

end

end A216735.P11074105689624395286

/-! ## A216735.P2498505252388947453

`A216739(n+1)+A025469(A084938(n))`
-/

namespace A216735.P2498505252388947453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216739 (n + 1) + A025469 (A084938 n).toNat

end

end A216735.P2498505252388947453

/-! ## A216735.P17200625516481784151

`A216739(n+1)%A386637(A003105(n))`
-/

namespace A216735.P17200625516481784151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216739 (n + 1)) (A386637 (A003105 n).toNat)

end

end A216735.P17200625516481784151

/-!
# A216736: Primes p such that x^10 = -2 has no solution mod p.

The programs for A216736, there is no canonical definition to state claims against.
-/

/-! ## A216736.P2853625549528102110

`∪[A003628(n+1), A040160(n+1)]`
-/

namespace A216736.P2853625549528102110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216736.P2853625549528102110

/-! ## A216736.P9254968196667569883

`∩[A216751(n+1), A216770(n+1)]`
-/

namespace A216736.P9254968196667569883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216736.P9254968196667569883

/-! ## A216736.P17631717024368042641

`record[A216770(n+1)%A141214(A291769(n))]`
-/

namespace A216736.P17631717024368042641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216770 (n + 1)) (A141214 (A291769 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216736.P17631717024368042641

/-! ## A216736.P10943897718188152247

`A060067(A216770(n+1))`
-/

namespace A216736.P10943897718188152247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060067 (A216770 (n + 1)).toNat

end

end A216736.P10943897718188152247

/-! ## A216736.P4169184782985472191

`A216770(∑[∑[A151660(n)]])`
-/

namespace A216736.P4169184782985472191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151660 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216770 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A216736.P4169184782985472191

/-!
# A216737: Primes p such that x^12 = -2 has no solution mod p.

The programs for A216737, there is no canonical definition to state claims against.
-/

/-! ## A216737.P12394917530179424408

`∪[A040034(n+1), A216690(n+1)]`
-/

namespace A216737.P12394917530179424408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216737.P12394917530179424408

/-! ## A216737.P10036968522213423407

`∪[A070179(n+1), A216734(n+1)]`
-/

namespace A216737.P10036968522213423407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216737.P10036968522213423407

/-! ## A216737.P1297757679744629705

`∪[A216690(n+1), A216734(n+1)]`
-/

namespace A216737.P1297757679744629705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216737.P1297757679744629705

/-! ## A216737.P6753332103093522555

`A175386(A216749(n+1))`
-/

namespace A216737.P6753332103093522555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175386 (A216749 (n + 1)).toNat

end

end A216737.P6753332103093522555

/-! ## A216737.P10130508512027254301

`A216749(n+1)%A254751(n+1)`
-/

namespace A216737.P10130508512027254301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216749 (n + 1)) (A254751 (n + 1))

end

end A216737.P10130508512027254301

/-!
# A216738: Primes p such that x^14 = -2 has no solution mod p.

The programs for A216738, there is no canonical definition to state claims against.
-/

/-! ## A216738.P5333847922768159559

`∪[A003628(n+1), A042967(n+1)]`
-/

namespace A216738.P5333847922768159559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216738.P5333847922768159559

/-! ## A216738.P11393754756651563303

`p?[comp[A051076(n+1)]]`
-/

namespace A216738.P11393754756651563303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051076 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A216738.P11393754756651563303

/-! ## A216738.P14925562423787144684

`A216745(lt[A216715(n+1), A216724(2*n+1)])`
-/

namespace A216738.P14925562423787144684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216724 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216745 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A216738.P14925562423787144684

/-! ## A216738.P14543911037908970814

`or(A000120(A325222(n)), A165815(n+1))`
-/

namespace A216738.P14543911037908970814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000120 (A325222 n).toNat) (A165815 (n + 1))

end

end A216738.P14543911037908970814

/-! ## A216738.P3869688557526633247

`or(A165815(n+1), A263848(A156764(n)))`
-/

namespace A216738.P3869688557526633247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A165815 (n + 1)) (A263848 (A156764 n).toNat)

end

end A216738.P3869688557526633247

/-!
# A216739: Primes p such that x^16 = -2 has no solution mod p.

The programs for A216739, there is no canonical definition to state claims against.
-/

/-! ## A216739.P9622330188662883230

`∪[A216735(n+1), A049564(n+2)]%A253456(3*n+5)`
-/

namespace A216739.P9622330188662883230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049564 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A253456 (3 * n + 5))

end

end A216739.P9622330188662883230

/-!
# A216740: Primes p such that x^18 = -2 has no solution mod p.

The programs for A216740, there is no canonical definition to state claims against.
-/

/-! ## A216740.P4000549260710293012

`∪[A003628(n+1), A059262(n+1)]`
-/

namespace A216740.P4000549260710293012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216740.P4000549260710293012

/-! ## A216740.P1489392333569718670

`or(A000007(A025885(2*(n+1))), A216772(n+1))`
-/

namespace A216740.P1489392333569718670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A025885 (2 * (n + 1))).toNat) (A216772 (n + 1))

end

end A216740.P1489392333569718670

/-! ## A216740.P16559877346032998853

`A216772(n+1)+A000035(A054785(2*(n+2)))`
-/

namespace A216740.P16559877346032998853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216772 (n + 1) + A000035 (A054785 (2 * (n + 2))).toNat

end

end A216740.P16559877346032998853

/-! ## A216740.P431221610449146826

`A332461(A216772(n+1))`
-/

namespace A216740.P431221610449146826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332461 (A216772 (n + 1)).toNat

end

end A216740.P431221610449146826

/-! ## A216740.P14626698702078817002

`A216772(n+1)+A036987(A075229(n+1))`
-/

namespace A216740.P14626698702078817002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216772 (n + 1) + A036987 (A075229 (n + 1)).toNat

end

end A216740.P14626698702078817002

/-! ## A216740.P2256000069710606230

`A216772(A239707(A000040(n+1))+n)`
-/

namespace A216740.P2256000069710606230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216772 (A239707 (A000040 (n + 1)).toNat + (n : ℤ)).toNat

end

end A216740.P2256000069710606230

/-! ## A216740.P4630018061912442466

`A216772(n+1)+A000038(A000040(n+1))`
-/

namespace A216740.P4630018061912442466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216772 (n + 1) + A000038 (A000040 (n + 1)).toNat

end

end A216740.P4630018061912442466

/-! ## A216740.P9812504756713955180

`A216772(n+1)+A000038(A268185(n+1))`
-/

namespace A216740.P9812504756713955180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216772 (n + 1) + A000038 (A268185 (n + 1)).toNat

end

end A216740.P9812504756713955180

/-! ## A216740.P6279199822003838282

`A037284(A216772(n+1))`
-/

namespace A216740.P6279199822003838282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037284 (A216772 (n + 1)).toNat

end

end A216740.P6279199822003838282

/-! ## A216740.P17435449616863588104

`A007955(A216772(n+1))`
-/

namespace A216740.P17435449616863588104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A216772 (n + 1)).toNat

end

end A216740.P17435449616863588104

/-! ## A216740.P12290665251756691126

`A216772(n+1)%A005567(n)`
-/

namespace A216740.P12290665251756691126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216772 (n + 1)) (A005567 n)

end

end A216740.P12290665251756691126

/-! ## A216740.P12430620893418523759

`A216772(n+1)%A001816(n)`
-/

namespace A216740.P12430620893418523759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216772 (n + 1)) (A001816 n)

end

end A216740.P12430620893418523759

/-! ## A216740.P18026020813688589080

`and(A107955(n), A216772(n+1))`
-/

namespace A216740.P18026020813688589080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107955 n) (A216772 (n + 1))

end

end A216740.P18026020813688589080

/-! ## A216740.P1601718634837544192

`and(A093069(n+1), A216772(n+1))`
-/

namespace A216740.P1601718634837544192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093069 (n + 1)) (A216772 (n + 1))

end

end A216740.P1601718634837544192

/-! ## A216740.P10591787915232138387

`and(A093112(n+1), A216772(n+1))`
-/

namespace A216740.P10591787915232138387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093112 (n + 1)) (A216772 (n + 1))

end

end A216740.P10591787915232138387

/-! ## A216740.P13363698292775562398

`and(A140529(n), A216772(n+1))`
-/

namespace A216740.P13363698292775562398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140529 n) (A216772 (n + 1))

end

end A216740.P13363698292775562398

/-! ## A216740.P6119163136603779232

`and(A206372(n), A216772(n+1))`
-/

namespace A216740.P6119163136603779232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A206372 n) (A216772 (n + 1))

end

end A216740.P6119163136603779232

/-!
# A216741: Primes p such that x^20 = -2 has no solution mod p.

The programs for A216741, there is no canonical definition to state claims against.
-/

/-! ## A216741.P13550265007347805103

`∪[A040160(n+1), A216690(n+1)]`
-/

namespace A216741.P13550265007347805103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216741.P13550265007347805103

/-! ## A216741.P9723590703777115755

`∪[A070179(n+1), A216736(n+1)]`
-/

namespace A216741.P9723590703777115755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216741.P9723590703777115755

/-! ## A216741.P1680014486062359264

`∪[A216690(n+1), A216736(n+1)]`
-/

namespace A216741.P1680014486062359264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216741.P1680014486062359264

/-! ## A216741.P7969297079468628542

`p?[A347663(A322435(n+1))+n+3]`
-/

namespace A216741.P7969297079468628542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347663 (A322435 (n + 1)).toNat + (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216741.P7969297079468628542

/-! ## A216741.P7744439521749377192

`p?[lt[A138951(n+3), A138948(n+5)]]`
-/

namespace A216741.P7744439521749377192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138951 (n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138948 (n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A216741.P7744439521749377192

/-!
# A216742: Primes p such that x^22 = -2 has no solution mod p.

The programs for A216742, there is no canonical definition to state claims against.
-/

/-! ## A216742.P13190970051192109895

`∪[A003628(n+1), A059241(n+1)]`
-/

namespace A216742.P13190970051192109895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216742.P13190970051192109895

/-! ## A216742.P12395782582957427465

`record[A007918(or(4, A265564(n)))]`
-/

namespace A216742.P12395782582957427465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (Int.lor 4 (A265564 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216742.P12395782582957427465

/-! ## A216742.P16580691689725226427

`p?[lt[A080917(n), A353589(n)]]`
-/

namespace A216742.P16580691689725226427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080917 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353589 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A216742.P16580691689725226427

/-! ## A216742.P788342928990540822

`A089189(eq[A010054(3*n), A326684(n)])`
-/

namespace A216742.P788342928990540822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089189 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A216742.P788342928990540822

/-! ## A216742.P278778841892080467

`∩[A192452(n+1), A216753(n+1)]`
-/

namespace A216742.P278778841892080467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216742.P278778841892080467

/-!
# A216743: Primes p such that x^24 = -2 has no solution mod p.

The programs for A216743, there is no canonical definition to state claims against.
-/

/-! ## A216743.P18031188237585858537

`∪[A040034(n+1), A216735(n+1)]`
-/

namespace A216743.P18031188237585858537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216743.P18031188237585858537

/-! ## A216743.P4200713706722845569

`∪[A216734(n+1), A216735(n+1)]`
-/

namespace A216743.P4200713706722845569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216743.P4200713706722845569

/-! ## A216743.P10533806596003998180

`∪[A216735(n+1), A216737(n+1)]`
-/

namespace A216743.P10533806596003998180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216743.P10533806596003998180

/-! ## A216743.P11211436628334725526

`A216769(n+1)%p?[A167499(n)]`
-/

namespace A216743.P11211436628334725526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216769 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A216743.P11211436628334725526

/-! ## A216743.P14386776977483334589

`A006530(A033630(n)*A216769(n+1))`
-/

namespace A216743.P14386776977483334589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A033630 n * A216769 (n + 1)).toNat

end

end A216743.P14386776977483334589

/-! ## A216743.P2154761534304463756

`A006530(lcm(A033630(n), A216769(n+1)))`
-/

namespace A216743.P2154761534304463756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm (A033630 n) (A216769 (n + 1)))

end

end A216743.P2154761534304463756

/-! ## A216743.P14936982850354818434

`or(A008966(A005892(n)), A216769(n+1))`
-/

namespace A216743.P14936982850354818434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008966 (A005892 n).toNat) (A216769 (n + 1))

end

end A216743.P14936982850354818434

/-! ## A216743.P7343420226251002569

`A216769(n+1)+A000007(A209334(n+1))`
-/

namespace A216743.P7343420226251002569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216769 (n + 1) + A000007 (A209334 (n + 1)).toNat

end

end A216743.P7343420226251002569

/-! ## A216743.P4560188569168726931

`A033677(A000005(n+1)*A216769(n+1))`
-/

namespace A216743.P4560188569168726931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A000005 (n + 1) * A216769 (n + 1)).toNat

end

end A216743.P4560188569168726931

/-! ## A216743.P3904468323854852657

`A216769(n+1)*A265890(A034856(n+1))`
-/

namespace A216743.P3904468323854852657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216769 (n + 1) * A265890 (A034856 (n + 1)).toNat

end

end A216743.P3904468323854852657

/-! ## A216743.P1023619463721756483

`A265822(A216769(n+1))`
-/

namespace A216743.P1023619463721756483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265822 (A216769 (n + 1)).toNat

end

end A216743.P1023619463721756483

/-! ## A216743.P12357216751912641185

`A216769(A033677((n+1)²))`
-/

namespace A216743.P12357216751912641185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216769 (A033677 ((n + 1) ^ 2)).toNat

end

end A216743.P12357216751912641185

/-! ## A216743.P12145802660613178606

`A006530(A213217(n)*A216769(n+1))`
-/

namespace A216743.P12145802660613178606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A213217 n * A216769 (n + 1)).toNat

end

end A216743.P12145802660613178606

/-!
# A216744: Primes p such that x^26 = -2 has no solution mod p.

The programs for A216744, there is no canonical definition to state claims against.
-/

/-! ## A216744.P426007729712083532

`∪[A003628(n+1), A059245(n+1)]`
-/

namespace A216744.P426007729712083532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216744.P426007729712083532

/-! ## A216744.P18083741586991620949

`p?[n*n%A077316(A033715(n)+1)]`
-/

namespace A216744.P18083741586991620949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (n : ℤ) (A077316 (A033715 n + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216744.P18083741586991620949

/-! ## A216744.P10823710170511962994

`A216736(lt[A216726(2*n+7), A026553(n)])`
-/

namespace A216744.P10823710170511962994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216726 (2 * n + 7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216736 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A216744.P10823710170511962994

/-! ## A216744.P698088602591140862

`∩[A165887(n+1), A216771(n+1)]`
-/

namespace A216744.P698088602591140862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216744.P698088602591140862

/-!
# A216745: Primes p such that x^28 = -2 has no solution mod p.

The programs for A216745, there is no canonical definition to state claims against.
-/

/-! ## A216745.P8501272130400195123

`∪[A042967(n+1), A216690(n+1)]`
-/

namespace A216745.P8501272130400195123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216745.P8501272130400195123

/-! ## A216745.P5276780484773256895

`∪[A070179(n+1), A216738(n+1)]`
-/

namespace A216745.P5276780484773256895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216745.P5276780484773256895

/-! ## A216745.P6585308095116894664

`∪[A216690(n+1), A216738(n+1)]`
-/

namespace A216745.P6585308095116894664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216745.P6585308095116894664

/-! ## A216745.P12216275247344751556

`record[p?[A323259(A002144(n+1))]]`
-/

namespace A216745.P12216275247344751556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323259 (A002144 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216745.P12216275247344751556

/-! ## A216745.P12932027015443466353

`record[p?[A323259(A002313(n+1))]]`
-/

namespace A216745.P12932027015443466353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323259 (A002313 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216745.P12932027015443466353

/-!
# A216746: Primes p such that x^30 = -2 has no solution mod p.

The programs for A216746, there is no canonical definition to state claims against.
-/

/-! ## A216746.P8758106137721355104

`∪[A003628(n+1), A059308(n+1)]`
-/

namespace A216746.P8758106137721355104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216746.P8758106137721355104

/-! ## A216746.P4745171028274583464

`∪[A040034(n+1), A216736(n+1)]`
-/

namespace A216746.P4745171028274583464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216746.P4745171028274583464

/-! ## A216746.P4260040128068384898

`∪[A040160(n+1), A216734(n+1)]`
-/

namespace A216746.P4260040128068384898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216746.P4260040128068384898

/-! ## A216746.P11087268715344824488

`∪[A059308(n+1), A216734(n+1)]`
-/

namespace A216746.P11087268715344824488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216746.P11087268715344824488

/-! ## A216746.P9061018405391238932

`∪[A059308(n+1), A216736(n+1)]`
-/

namespace A216746.P9061018405391238932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216746.P9061018405391238932

/-! ## A216746.P1040327251571475410

`∪[A216734(n+1), A216736(n+1)]`
-/

namespace A216746.P1040327251571475410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216746.P1040327251571475410

/-!
# A216747: Primes p such that x^32 = -2 has no solution mod p.

The programs for A216747, there is no canonical definition to state claims against.
-/

/-! ## A216747.P2227990762558026707

`A216777(n+1)%A017642(A053577(n+1))`
-/

namespace A216747.P2227990762558026707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216777 (n + 1)) (A017642 (A053577 (n + 1)).toNat)

end

end A216747.P2227990762558026707

/-! ## A216747.P18178490305275471953

`A216777(n+1)+A000007(A190349(2*(n+1)))`
-/

namespace A216747.P18178490305275471953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216777 (n + 1) + A000007 (A190349 (2 * (n + 1))).toNat

end

end A216747.P18178490305275471953

/-! ## A216747.P10952322115066492660

`A216777(n+1)+A056594(A071904(3*n+4))`
-/

namespace A216747.P10952322115066492660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216777 (n + 1) + A056594 (A071904 (3 * n + 4)).toNat

end

end A216747.P10952322115066492660

/-! ## A216747.P14042840398974449870

`A216777(n+1)+A036987(A075229(n+1))`
-/

namespace A216747.P14042840398974449870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216777 (n + 1) + A036987 (A075229 (n + 1)).toNat

end

end A216747.P14042840398974449870

/-! ## A216747.P1275291828624686713

`A216777(n+1)+A076563(A000040(n+1))`
-/

namespace A216747.P1275291828624686713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216777 (n + 1) + A076563 (A000040 (n + 1)).toNat

end

end A216747.P1275291828624686713

/-! ## A216747.P15041785045051292407

`A216777(n+1)+A010054(A045344(n+1))`
-/

namespace A216747.P15041785045051292407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216777 (n + 1) + A010054 (A045344 (n + 1)).toNat

end

end A216747.P15041785045051292407

/-! ## A216747.P12918704017073544560

`A037284(A216777(n+1))`
-/

namespace A216747.P12918704017073544560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037284 (A216777 (n + 1)).toNat

end

end A216747.P12918704017073544560

/-! ## A216747.P11177365829331491224

`A007955(A216777(n+1))`
-/

namespace A216747.P11177365829331491224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A216777 (n + 1)).toNat

end

end A216747.P11177365829331491224

/-! ## A216747.P2721370323545064978

`A216777(n+1)%A005567(n)`
-/

namespace A216747.P2721370323545064978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216777 (n + 1)) (A005567 n)

end

end A216747.P2721370323545064978

/-! ## A216747.P11324003430886951649

`A216777(n+1)%A001816(n)`
-/

namespace A216747.P11324003430886951649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216777 (n + 1)) (A001816 n)

end

end A216747.P11324003430886951649

/-! ## A216747.P13976547539554118872

`and(A107955(n), A216777(n+1))`
-/

namespace A216747.P13976547539554118872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107955 n) (A216777 (n + 1))

end

end A216747.P13976547539554118872

/-! ## A216747.P1496076560338506390

`and(A093069(n+1), A216777(n+1))`
-/

namespace A216747.P1496076560338506390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093069 (n + 1)) (A216777 (n + 1))

end

end A216747.P1496076560338506390

/-! ## A216747.P13376994300304764251

`and(A093112(n+1), A216777(n+1))`
-/

namespace A216747.P13376994300304764251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093112 (n + 1)) (A216777 (n + 1))

end

end A216747.P13376994300304764251

/-! ## A216747.P15189511222663213814

`and(A140529(n), A216777(n+1))`
-/

namespace A216747.P15189511222663213814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140529 n) (A216777 (n + 1))

end

end A216747.P15189511222663213814

/-! ## A216747.P18293023109863040189

`and(A206372(n), A216777(n+1))`
-/

namespace A216747.P18293023109863040189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A206372 n) (A216777 (n + 1))

end

end A216747.P18293023109863040189

/-!
# A216748: Primes p such that x^34 = -2 has no solution mod p.

The programs for A216748, there is no canonical definition to state claims against.
-/

/-! ## A216748.P16213247006321592540

`∪[A003628(n+1), A058999(n+1)]`
-/

namespace A216748.P16213247006321592540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216748.P16213247006321592540

/-! ## A216748.P1916307061475730586

`p?[A047437(n+1)-A094404(n+1)]`
-/

namespace A216748.P1916307061475730586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047437 (n + 1) - A094404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216748.P1916307061475730586

/-! ## A216748.P16742347205870082019

`record[A006530(A047550(n+1)*A099796(n+1))]`
-/

namespace A216748.P16742347205870082019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A047550 (n + 1) * A099796 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216748.P16742347205870082019

/-! ## A216748.P5747666210367006885

`p?[A006991(A133137(n+1))]`
-/

namespace A216748.P5747666210367006885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006991 (A133137 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216748.P5747666210367006885

/-! ## A216748.P3241717402566264732

`∩[A008864(n+1)-1, A006991(A133137(n+1))]`
-/

namespace A216748.P3241717402566264732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006991 (A133137 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216748.P3241717402566264732

/-!
# A216749: Primes p such that x^36 = -2 has no solution mod p.

The programs for A216749, there is no canonical definition to state claims against.
-/

/-! ## A216749.P7432639879123888273

`∪[A216690(n+1), A216740(n+1)]`
-/

namespace A216749.P7432639879123888273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216749.P7432639879123888273

/-! ## A216749.P8679525607776689712

`∪[A216737(n+1), A216740(n+1)]`
-/

namespace A216749.P8679525607776689712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216749.P8679525607776689712

/-!
# A216750: Primes p such that x^38 = -2 has no solution mod p.

The programs for A216750, there is no canonical definition to state claims against.
-/

/-! ## A216750.P11524364225855861044

`∪[A003628(n+1), A059244(n+1)]`
-/

namespace A216750.P11524364225855861044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216750.P11524364225855861044

/-! ## A216750.P10070562817300871805

`p?[A004442(5*n+4)-A130734(n+1)]`
-/

namespace A216750.P10070562817300871805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (5 * n + 4) - A130734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216750.P10070562817300871805

/-! ## A216750.P11868601353788613883

`p?[A014681(A008587(n))-A130734(n+1)]`
-/

namespace A216750.P11868601353788613883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A008587 n).toNat - A130734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216750.P11868601353788613883

/-!
# A216751: Primes p such that x^40 = -2 has no solution mod p.

The programs for A216751, there is no canonical definition to state claims against.
-/

/-! ## A216751.P1062475218562103104

`∪[A040160(n+1), A216735(n+1)]`
-/

namespace A216751.P1062475218562103104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216751.P1062475218562103104

/-! ## A216751.P17064986761224599674

`∪[A216735(n+1), A216736(n+1)]`
-/

namespace A216751.P17064986761224599674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216751.P17064986761224599674

/-! ## A216751.P10876392224051771145

`∪[A216735(n+1), A216741(n+1)]`
-/

namespace A216751.P10876392224051771145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216751.P10876392224051771145

/-! ## A216751.P18278819067927319471

`p?[or(A023927(2*n+1), A140139(n+3))]`
-/

namespace A216751.P18278819067927319471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023927 (2 * n + 1)) (A140139 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216751.P18278819067927319471

/-!
# A216752: Primes p such that x^42 = -2 has no solution mod p.

The programs for A216752, there is no canonical definition to state claims against.
-/

/-! ## A216752.P10044801222714938309

`∪[A003628(n+1), A059310(n+1)]`
-/

namespace A216752.P10044801222714938309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216752.P10044801222714938309

/-! ## A216752.P11752463031435518267

`∪[A040034(n+1), A216738(n+1)]`
-/

namespace A216752.P11752463031435518267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216752.P11752463031435518267

/-! ## A216752.P14028468819576332456

`∪[A042967(n+1), A216734(n+1)]`
-/

namespace A216752.P14028468819576332456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216752.P14028468819576332456

/-! ## A216752.P15241179944929735396

`∪[A059310(n+1), A216734(n+1)]`
-/

namespace A216752.P15241179944929735396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216752.P15241179944929735396

/-! ## A216752.P6468183312348754022

`∪[A059310(n+1), A216738(n+1)]`
-/

namespace A216752.P6468183312348754022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216752.P6468183312348754022

/-! ## A216752.P3182149277388774592

`∪[A216734(n+1), A216738(n+1)]`
-/

namespace A216752.P3182149277388774592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216752.P3182149277388774592

/-!
# A216753: Primes p such that x^44 = -2 has no solution mod p.

The programs for A216753, there is no canonical definition to state claims against.
-/

/-! ## A216753.P9594157588392701402

`∪[A059241(n+1), A216690(n+1)]`
-/

namespace A216753.P9594157588392701402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216753.P9594157588392701402

/-! ## A216753.P6133292547416259667

`∪[A070179(n+1), A216742(n+1)]`
-/

namespace A216753.P6133292547416259667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216753.P6133292547416259667

/-! ## A216753.P6281856382577572231

`∪[A216690(n+1), A216742(n+1)]`
-/

namespace A216753.P6281856382577572231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216753.P6281856382577572231

/-! ## A216753.P8096179004013960324

`∩[A177987(n+1), A216743(n+1)]`
-/

namespace A216753.P8096179004013960324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216753.P8096179004013960324

/-! ## A216753.P4522040484341553142

`∩[A177987(n+1), A216769(n+1)]`
-/

namespace A216753.P4522040484341553142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216753.P4522040484341553142

/-!
# A216754: Digital root of fourth power of Fibonacci numbers.

The programs for A216754, the canonical program `A216754.P14933782455688842539` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216754 has offset 0).

The definition of A216754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216754.P14933782455688842539

`dr(A388539(n)²)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A216754

/-- `dr(A388539(n)²)` -/
def P14933782455688842539.Spec : Prop :=
  ∀ n, (P14933782455688842539.a n : ℤ) = A216754 n

theorem P14933782455688842539.correct : P14933782455688842539.Spec := by
  intro n
  simp only [A216754]

end A216754

/-!
# A216755: Digital root of the fifth power of Fibonacci(n).

The programs for A216755, the canonical program `A216755.P13433552324222863409` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216755 has offset 1).

The definition of A216755 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216755.P13433552324222863409

`dr(A000045(n+1)^5)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A216755

/-- `dr(A000045(n+1)^5)` -/
def P13433552324222863409.Spec : Prop :=
  ∀ n, (P13433552324222863409.a n : ℤ) = A216755 (n + 1)

theorem P13433552324222863409.correct : P13433552324222863409.Spec := by
  intro n
  simp only [A216755, Nat.add_sub_cancel]

end A216755

/-!
# A216756: a(n) = floor(e^e^(n/e^gamma)).

The programs for A216756, the canonical program `A216756.P5329085788967408740` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216756 has offset 0).

The definition of A216756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216756.P5329085788967408740

`floor(exp(exp(n/exp(γ))))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A216756

/-- `floor(exp(exp(n/exp(γ))))` -/
def P5329085788967408740.Spec : Prop :=
  ∀ n, P5329085788967408740.a n = A216756 n

theorem P5329085788967408740.correct : P5329085788967408740.Spec := by
  intro n
  simp only [A216756]

end A216756

/-!
# A216757: a(n) = 6*a(n-1) - 9*a(n-2) + 3*a(n-3).

The programs for A216757, the canonical program `A216757.P18292628145194819567` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216757 has offset 1).

The definition of A216757 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-9*a(n-2)+3*a(n-3)` (program `A216757.P18292628145194819567`, by `A216757.P18292628145194819567.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A216757.P17026163258233635201

`ogf((-3x+3x^2)/(1-6x+9x^2-3x^3))`
-/

namespace A216757.P17026163258233635201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -3, 3] [1, -6, 9, -3] n

end

end A216757.P17026163258233635201

namespace A216757

/-- `ogf((-3x+3x^2)/(1-6x+9x^2-3x^3))` -/
def P17026163258233635201.Spec : Prop :=
  ∀ n, P17026163258233635201.a n = A216757 (n + 1)

end A216757

/-! ## A216757.P18292628145194819567

`6*a(n-1)-9*a(n-2)+3*a(n-3)` with `a(0)=0, a(1)=-3, a(2)=-15`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A216757

/-- `6*a(n-1)-9*a(n-2)+3*a(n-3)` -/
def P18292628145194819567.Spec : Prop :=
  ∀ n, P18292628145194819567.a n = A216757 (n + 1)

theorem P18292628145194819567.correct : P18292628145194819567.Spec := by
  intro n
  simp only [A216757, Nat.add_sub_cancel]

end A216757

/-! ## A216757.P10203758975631223551

`3*(a(n-1)-A124292(n+1))` with `a(0)=0`
-/

namespace A216757.P10203758975631223551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * (a (n - 1) - A124292 (n + 1))

end

end A216757.P10203758975631223551

namespace A216757

/-- `3*(a(n-1)-A124292(n+1))` -/
def P10203758975631223551.Spec : Prop :=
  ∀ n, P10203758975631223551.a n = A216757 (n + 1)

end A216757

/-! ## A216757.P14548623342020150743

`-(A124292(n+4)%A124292(n+3))`
-/

namespace A216757.P14548623342020150743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A124292 (n + 4)) (A124292 (n + 3))

end

end A216757.P14548623342020150743

namespace A216757

/-- `-(A124292(n+4)%A124292(n+3))` -/
def P14548623342020150743.Spec : Prop :=
  ∀ n, P14548623342020150743.a n = A216757 (n + 1)

end A216757

/-!
# A216758: Number of horizontal, vertical, diagonal, antidiagonal or knight-move neighbor colorings of an nX3 array with new integer colors introduced in row major order.

The programs for A216758, there is no canonical definition to state claims against.
-/

/-! ## A216758.P13296011406048469820

`A216760(∑[n+2]+4)`
-/

namespace A216758.P13296011406048469820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216760 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A216758.P13296011406048469820

/-! ## A216758.P5749171439771017619

`record[A216760(A167614(∑{e}[n+1, #]+1))]`
-/

namespace A216758.P5749171439771017619
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216760 (A167614 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216758.P5749171439771017619

/-! ## A216758.P12779334179602024201

`A216760(A167614(n+1))+n-∑{digits}[n, #]`
-/

namespace A216758.P12779334179602024201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216760 (A167614 (n + 1)).toNat + ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ))

end

end A216758.P12779334179602024201

/-!
# A216759: Number of horizontal, vertical, diagonal, antidiagonal or knight-move neighbor colorings of an nX4 array with new integer colors introduced in row major order.

The programs for A216759, there is no canonical definition to state claims against.
-/

/-! ## A216759.P13321095337842060650

`A216760(∑[n+4]+3)`
-/

namespace A216759.P13321095337842060650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216760 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A216759.P13321095337842060650

/-!
# A216761: n * floor(log_2(n)) * floor(log_2(log_2(n))) * floor(log_2(log_2(log_2(n)))) ....

The programs for A216761, there is no canonical definition to state claims against.
-/

/-! ## A216761.P508226721976942859

`(n+1)*a(floor(log2(n+1))-1)` with `a(0)=1`
-/

namespace A216761.P508226721976942859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (Nat.log 2 (n + 1) - 1)

end

end A216761.P508226721976942859

/-! ## A216761.P13158398300454684468

`abs((n+1)*a(ceil(log2(n+2))-2))` with `a(0)=1`
-/

namespace A216761.P13158398300454684468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (⌈Real.logb 2 (n + 2 : ℝ)⌉ - 2).toNat

end

end A216761.P13158398300454684468

/-! ## A216761.P12024598708032319760

`ceil((n+1)*a(ceil(log2(n+2))-2))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A216761.P12024598708032319760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (⌈Real.logb 2 (n + 2 : ℝ)⌉ - 2).toNat

end

end A216761.P12024598708032319760

/-! ## A216761.P17045176203818823210

`floor((n+1)*a(∑[char[2^n-1]]-2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A216761.P17045176203818823210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A216761.P17045176203818823210

/-! ## A216761.P5594773567183882419

`(n+1)*A320843(floor(log2(n+1)))`
-/

namespace A216761.P5594773567183882419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A320843 (Nat.log 2 (n + 1))

end

end A216761.P5594773567183882419

/-! ## A216761.P11121775919704420058

`(n+1)*A005727(A000523(n+1))`
-/

namespace A216761.P11121775919704420058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005727 (A000523 (n + 1)).toNat

end

end A216761.P11121775919704420058

/-! ## A216761.P15834699137009526701

`(n+1)*A336860(A000108(floor(log2(n+1))))`
-/

namespace A216761.P15834699137009526701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A336860 (A000108 (Nat.log 2 (n + 1))).toNat

end

end A216761.P15834699137009526701

/-!
# A216762: a(n) = n * ceiling(log_2(n)) * ceiling(log_2(log_2(n))) * ceiling(log_2(log_2(log_2(n)))) ....

The programs for A216762, there is no canonical definition to state claims against.
-/

/-! ## A216762.P13092549433340605903

`(1+n)*a(floor(log2(n)))` with `a(0)=1`
-/

namespace A216762.P13092549433340605903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (1 + n) * a (Nat.log 2 n)

end

end A216762.P13092549433340605903

/-! ## A216762.P2076025754808987304

`(n+1)/a(floor(log2(n)))^-1` with `a(0)=1`
-/

namespace A216762.P2076025754808987304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) / a (Nat.log 2 n) ^ (-1 : ℤ)

end

end A216762.P2076025754808987304

/-! ## A216762.P9319959876638516323

`abs((n+1)*a(ceil(log2(n+1))-1))` with `a(0)=1`
-/

namespace A216762.P9319959876638516323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (⌈Real.logb 2 (n + 1 : ℝ)⌉ - 1).toNat

end

end A216762.P9319959876638516323

/-! ## A216762.P11524081479769488675

`ceil((n+1)*a(ceil(log2(n+1))-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A216762.P11524081479769488675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (⌈Real.logb 2 (n + 1 : ℝ)⌉ - 1).toNat

end

end A216762.P11524081479769488675

/-! ## A216762.P16237283223275053491

`floor((n+1)*a(∑[char[2^n]]-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A216762.P16237283223275053491
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A216762.P16237283223275053491

/-! ## A216762.P2110051131014907009

`a(floor(log2(n)))*A008619(2*n)` with `a(0)=1`
-/

namespace A216762.P2110051131014907009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (Nat.log 2 n) * A008619 (2 * n)

end

end A216762.P2110051131014907009

/-! ## A216762.P2435005930857888

`(n+1)*A000010(A003817(or(1, n)))`
-/

namespace A216762.P2435005930857888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (A003817 (Nat.lor 1 n)).toNat

end

end A216762.P2435005930857888

/-! ## A216762.P5058124953833608974

`(n+1)*A000010(A035327(n)+n)`
-/

namespace A216762.P5058124953833608974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (A035327 n + (n : ℤ)).toNat

end

end A216762.P5058124953833608974

/-! ## A216762.P18251387414233445380

`(n+1)*A000010(A000225(A070939(n)))`
-/

namespace A216762.P18251387414233445380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (A000225 (A070939 n).toNat).toNat

end

end A216762.P18251387414233445380

/-!
# A216763: The Lambda word generated by (1+sqrt(5))/2.

The programs for A216763, there is no canonical definition to state claims against.
-/

/-! ## A216763.P14719531354690477150

`A216448(n)+A185284(A052083(n+1))`
-/

namespace A216763.P14719531354690477150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216448 n + A185284 (A052083 (n + 1)).toNat

end

end A216763.P14719531354690477150

/-! ## A216763.P7436493562387810475

`A216448(n)+A010054(A229364(n+3))`
-/

namespace A216763.P7436493562387810475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216448 n + A010054 (A229364 (n + 3)).toNat

end

end A216763.P7436493562387810475

/-! ## A216763.P16733153650150493085

`A216448(n)-A175424(A175423(n))`
-/

namespace A216763.P16733153650150493085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216448 n - A175424 (A175423 n).toNat

end

end A216763.P16733153650150493085

/-! ## A216763.P13599564222999071539

`A216448(n)+A185284(A332072(n+1))`
-/

namespace A216763.P13599564222999071539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216448 n + A185284 (A332072 (n + 1)).toNat

end

end A216763.P13599564222999071539

/-!
# A216764: The Lambda word generated by Pi - 2.

The programs for A216764, there is no canonical definition to state claims against.
-/

/-! ## A216764.P800546194004146747

`ceil(floor(sqrt(2*n))/A113365(n))`
-/

namespace A216764.P800546194004146747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.sqrt (2 * n) : ℚ) / (A113365 n : ℚ)⌉

end

end A216764.P800546194004146747

/-! ## A216764.P17659318228707680106

`ceil(floor(sqrt(2*n))/A135893(n))`
-/

namespace A216764.P17659318228707680106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.sqrt (2 * n) : ℚ) / (A135893 n : ℚ)⌉

end

end A216764.P17659318228707680106

/-! ## A216764.P1510666956312644377

`ceil(floor(sqrt(2*n))/A136234(n))`
-/

namespace A216764.P1510666956312644377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.sqrt (2 * n) : ℚ) / (A136234 n : ℚ)⌉

end

end A216764.P1510666956312644377

/-! ## A216764.P15692576466362942251

`A051340(n)%A235039(n)`
-/

namespace A216764.P15692576466362942251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051340 n) (A235039 n)

end

end A216764.P15692576466362942251

/-! ## A216764.P10239383120099376149

`A172471(ceil(n/A113365(n)))`
-/

namespace A216764.P10239383120099376149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 ⌈(n : ℚ) / (A113365 n : ℚ)⌉.toNat

end

end A216764.P10239383120099376149

/-!
# A216765: Perfect powers (squares, cubes, etc., not including 1) plus 1.

The programs for A216765, there is no canonical definition to state claims against.
-/

/-! ## A216765.P16191497322680201050

`A045542(n+1)+2`
-/

namespace A216765.P16191497322680201050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1) + 2

end

end A216765.P16191497322680201050

/-! ## A216765.P2438307971053158082

`A001597(n+2)+1`
-/

namespace A216765.P2438307971053158082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 2) + 1

end

end A216765.P2438307971053158082

/-! ## A216765.P46355839452853509

`∑[A053289(1+n)]+2`
-/

namespace A216765.P46355839452853509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053289 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A216765.P46355839452853509

/-! ## A216765.P9079188796253606853

`∑[A076412(n+1)]+2`
-/

namespace A216765.P9079188796253606853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A216765.P9079188796253606853

/-! ## A216765.P11124166935006547262

`∪[A389957(n+1), A389958(n+1)]`
-/

namespace A216765.P11124166935006547262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216765.P11124166935006547262

/-! ## A216765.P9776429212967098122

`abs(A157985(n+2))+1`
-/

namespace A216765.P9776429212967098122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157985 (n + 2)| + 1

end

end A216765.P9776429212967098122

/-! ## A216765.P13509472591572295666

`sqrt(A340588(n+2))+1`
-/

namespace A216765.P13509472591572295666
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A340588 (n + 2) : ℝ) + 1

end

end A216765.P13509472591572295666

/-! ## A216765.P6706463732612503210

`Δ[A076408(n+1)]+1`
-/

namespace A216765.P6706463732612503210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A216765.P6706463732612503210

/-! ## A216765.P7827187972430161843

`A000040(n+2)+A075146(n+2)+1`
-/

namespace A216765.P7827187972430161843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + (A075146 (n + 2) + 1)

end

end A216765.P7827187972430161843

/-! ## A216765.P4495357326856991897

`A076405(n+2)/A025478(n+2)+1`
-/

namespace A216765.P4495357326856991897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076405 (n + 2) : ℚ) / (A025478 (n + 2) : ℚ) + 1

end

end A216765.P4495357326856991897

/-! ## A216765.P18053421963521892625

`A224866(A399523(n+2))`
-/

namespace A216765.P18053421963521892625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (A399523 (n + 2)).toNat

end

end A216765.P18053421963521892625

/-! ## A216765.P177265176255563782

`∩[A080262(n+1), A224866(n+1)]`
-/

namespace A216765.P177265176255563782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216765.P177265176255563782

/-! ## A216765.P16949390477418704085

`record[A072103(A304088(n))+1]`
-/

namespace A216765.P16949390477418704085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072103 (A304088 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216765.P16949390477418704085

/-! ## A216765.P14418143282072363960

`lt[0, A175070(n+1)]+2`
-/

namespace A216765.P14418143282072363960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175070 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A216765.P14418143282072363960

/-! ## A216765.P1555942406270377139

`lt[1, A052409(n+1)]+2`
-/

namespace A216765.P1555942406270377139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A216765.P1555942406270377139

/-! ## A216765.P15733080303577139037

`lt[1, A295924(n+1)]+2`
-/

namespace A216765.P15733080303577139037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295924 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A216765.P15733080303577139037

/-! ## A216765.P1196686974607477720

`lt[A052410(n+1), n]+2`
-/

namespace A216765.P1196686974607477720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A216765.P1196686974607477720

/-! ## A216765.P9492752201519238406

`lt[1, A158052(n+1)²]+2`
-/

namespace A216765.P9492752201519238406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158052 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A216765.P9492752201519238406

/-! ## A216765.P2340988451146695058

`lt[1, A089723(n+1)]+2`
-/

namespace A216765.P2340988451146695058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A216765.P2340988451146695058

/-! ## A216765.P4733892358472021032

`lt[1, A295920(n+1)]+2`
-/

namespace A216765.P4733892358472021032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295920 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A216765.P4733892358472021032

/-!
# A216768: Primes p such that x^46 = -2 has no solution mod p.

The programs for A216768, there is no canonical definition to state claims against.
-/

/-! ## A216768.P2830930969912636733

`∪[A003628(n+1), A040984(n+1)]`
-/

namespace A216768.P2830930969912636733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216768.P2830930969912636733

/-! ## A216768.P12301689040037942589

`or(A194673(A061338(n)), A216748(n+1))`
-/

namespace A216768.P12301689040037942589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A194673 (A061338 n).toNat) (A216748 (n + 1))

end

end A216768.P12301689040037942589

/-! ## A216768.P15239898394777745001

`or(A102681(A195364(n+1)), A216748(n+1))`
-/

namespace A216768.P15239898394777745001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102681 (A195364 (n + 1)).toNat) (A216748 (n + 1))

end

end A216768.P15239898394777745001

/-! ## A216768.P8984216568337776385

`or(A082858(A006093(n+1)), A216748(n+1))`
-/

namespace A216768.P8984216568337776385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A082858 (A006093 (n + 1)).toNat) (A216748 (n + 1))

end

end A216768.P8984216568337776385

/-! ## A216768.P8665984326405687294

`p?[A047590(n+1)-A306671(A275543(n))]`
-/

namespace A216768.P8665984326405687294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047590 (n + 1) - A306671 (A275543 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216768.P8665984326405687294

/-!
# A216769: Primes p such that x^48 = -2 has no solution mod p.

The programs for A216769, there is no canonical definition to state claims against.
-/

/-! ## A216769.P16574755999730936967

`∪[A040034(n+1), A216739(n+1)]`
-/

namespace A216769.P16574755999730936967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216769.P16574755999730936967

/-! ## A216769.P8771220404901048563

`∪[A216734(n+1), A216739(n+1)]`
-/

namespace A216769.P8771220404901048563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216769.P8771220404901048563

/-! ## A216769.P1842100828375829088

`∪[A216737(n+1), A216739(n+1)]`
-/

namespace A216769.P1842100828375829088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216769.P1842100828375829088

/-! ## A216769.P9773705235287503544

`∪[A216739(n+1), A216743(n+1)]`
-/

namespace A216769.P9773705235287503544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216769.P9773705235287503544

/-!
# A216770: Primes p such that x^50 = -2 has no solution mod p.

The programs for A216770, there is no canonical definition to state claims against.
-/

/-! ## A216770.P10301785590984611429

`∪[A003628(n+1), A059313(n+1)]`
-/

namespace A216770.P10301785590984611429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216770.P10301785590984611429

/-! ## A216770.P13338155600046409219

`∪[A059313(n+1), A216736(n+1)]`
-/

namespace A216770.P13338155600046409219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216770.P13338155600046409219

/-!
# A216771: Primes p such that x^52 = -2 has no solution mod p.

The programs for A216771, there is no canonical definition to state claims against.
-/

/-! ## A216771.P17545404493975899562

`∪[A059245(n+1), A216690(n+1)]`
-/

namespace A216771.P17545404493975899562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216771.P17545404493975899562

/-! ## A216771.P10466130905418459877

`∪[A070179(n+1), A216744(n+1)]`
-/

namespace A216771.P10466130905418459877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216771.P10466130905418459877

/-! ## A216771.P9614669998353725967

`∪[A216690(n+1), A216744(n+1)]`
-/

namespace A216771.P9614669998353725967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216771.P9614669998353725967

/-! ## A216771.P3451641933016510245

`∪[A100558(2*n+5), A216690(n+1)]%A100571(n+1)`
-/

namespace A216771.P3451641933016510245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100558 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216690 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A100571 (n + 1))

end

end A216771.P3451641933016510245

/-! ## A216771.P5670243785750806130

`record[A216741(n+1)%A002808(A000043(n+1))]`
-/

namespace A216771.P5670243785750806130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216741 (n + 1)) (A002808 (A000043 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216771.P5670243785750806130

/-!
# A216773: Primes p such that x^56 = -2 has no solution mod p.

The programs for A216773, there is no canonical definition to state claims against.
-/

/-! ## A216773.P18215735747305459765

`∪[A042967(n+1), A216735(n+1)]`
-/

namespace A216773.P18215735747305459765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216773.P18215735747305459765

/-! ## A216773.P15288473104633313377

`∪[A216735(n+1), A216738(n+1)]`
-/

namespace A216773.P15288473104633313377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216773.P15288473104633313377

/-! ## A216773.P8558557780373455729

`∪[A216735(n+1), A216745(n+1)]`
-/

namespace A216773.P8558557780373455729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216773.P8558557780373455729

/-! ## A216773.P7248758802447657859

`p?[A005408(A008620(A103543(n+1)))]`
-/

namespace A216773.P7248758802447657859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A008620 (A103543 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216773.P7248758802447657859

/-! ## A216773.P3266721825204170345

`p?[∪[A216845(2*(n+1)), A216735(n+1)]]`
-/

namespace A216773.P3266721825204170345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216845 (2 * (n + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216735 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A216773.P3266721825204170345

/-!
# A216774: Primes p such that x^58 = -2 has no solution mod p.

The programs for A216774, there is no canonical definition to state claims against.
-/

/-! ## A216774.P1909853153537951237

`∪[A003628(n+1), A059256(n+1)]`
-/

namespace A216774.P1909853153537951237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216774.P1909853153537951237

/-! ## A216774.P17716189683697830192

`p?[A304118(n+10)+A004523(4*n)+4]`
-/

namespace A216774.P17716189683697830192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304118 (n + 10) + (A004523 (4 * n) + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216774.P17716189683697830192

/-! ## A216774.P5650806646822014037

`eq[A068346(n), A080964(A034856(n+1))]`
-/

namespace A216774.P5650806646822014037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080964 (A034856 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216774.P5650806646822014037

/-! ## A216774.P2874699855659633448

`eq[A080964(A034856(n+1)), A082023(n)]`
-/

namespace A216774.P2874699855659633448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080964 (A034856 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216774.P2874699855659633448

/-! ## A216774.P3850800605744812810

`p?[record[A103530(2*(n+1))]%A359567(n+1)]`
-/

namespace A216774.P3850800605744812810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103530 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) (A359567 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216774.P3850800605744812810

/-!
# A216775: Primes p such that x^60 = -2 has no solution mod p.

The programs for A216775, there is no canonical definition to state claims against.
-/

/-! ## A216775.P14862926861309368909

`∪[A040034(n+1), A216741(n+1)]`
-/

namespace A216775.P14862926861309368909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216775.P14862926861309368909

/-! ## A216775.P2395100467165172335

`∪[A040160(n+1), A216737(n+1)]`
-/

namespace A216775.P2395100467165172335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216775.P2395100467165172335

/-! ## A216775.P5207130816599105676

`∪[A059308(n+1), A216690(n+1)]`
-/

namespace A216775.P5207130816599105676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216775.P5207130816599105676

/-! ## A216775.P1249703442075715698

`∪[A059308(n+1), A216737(n+1)]`
-/

namespace A216775.P1249703442075715698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216775.P1249703442075715698

/-! ## A216775.P13082739010440174522

`∪[A059308(n+1), A216741(n+1)]`
-/

namespace A216775.P13082739010440174522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216775.P13082739010440174522

/-! ## A216775.P18415800548026129632

`∪[A070179(n+1), A216746(n+1)]`
-/

namespace A216775.P18415800548026129632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216775.P18415800548026129632

/-! ## A216775.P17144376847331209279

`∪[A216736(n+1), A216737(n+1)]`
-/

namespace A216775.P17144376847331209279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216775.P17144376847331209279

/-! ## A216775.P17526045151191346803

`∪[A216734(n+1), A216741(n+1)]`
-/

namespace A216775.P17526045151191346803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216775.P17526045151191346803

/-! ## A216775.P1848851546434851456

`∪[A216737(n+1), A216741(n+1)]`
-/

namespace A216775.P1848851546434851456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216775.P1848851546434851456

/-! ## A216775.P17960371818199228135

`∪[A216737(n+1), A216746(n+1)]`
-/

namespace A216775.P17960371818199228135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216775.P17960371818199228135

/-! ## A216775.P14462179709739852007

`∪[A216741(n+1), A216746(n+1)]`
-/

namespace A216775.P14462179709739852007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216775.P14462179709739852007

/-!
# A216778: Number of derangements on n elements with an even number of cycles.

The programs for A216778, the canonical program `A216778.P6950801143201304978` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216778 has offset 0).

The definition of A216778 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216778.P6950801143201304978

`(A000166(n)-n+1)/2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A216778

/-- `(A000166(n)-n+1)/2` -/
def P6950801143201304978.Spec : Prop :=
  ∀ n, P6950801143201304978.a n = (A216778 n : ℚ)

end A216778

/-! ## A216778.P1220564790601428785

`n*a(n-1)+∑[xor(1, n)]-2*n` with `a(0)=1`
-/

namespace A216778.P1220564790601428785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * n : ℤ))

end

end A216778.P1220564790601428785

namespace A216778

/-- `n*a(n-1)+∑[xor(1, n)]-2*n` -/
def P1220564790601428785.Spec : Prop :=
  ∀ n, P1220564790601428785.a n = A216778 n

end A216778

/-! ## A216778.P5673075223832752110

`n*a(n-1)-(2*n-∑[xor(1, n)])` with `a(0)=1`
-/

namespace A216778.P5673075223832752110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) - ((2 * n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A216778.P5673075223832752110

namespace A216778

/-- `n*a(n-1)-(2*n-∑[xor(1, n)])` -/
def P5673075223832752110.Spec : Prop :=
  ∀ n, P5673075223832752110.a n = A216778 n

end A216778

/-! ## A216778.P16304955701096343746

`(a(n-1)+a(n-2)+n-3)*(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A216778.P16304955701096343746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (a (n - 1) + (a (n - 2) + ((n : ℤ) - 3))) * ((n : ℤ) - 1)

end

end A216778.P16304955701096343746

namespace A216778

/-- `(a(n-1)+a(n-2)+n-3)*(n-1)` -/
def P16304955701096343746.Spec : Prop :=
  ∀ n, P16304955701096343746.a n = A216778 n

end A216778

/-! ## A216778.P13232265967398707216

`A373417(∑[n]+n)`
-/

namespace A216778.P13232265967398707216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373417 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A216778.P13232265967398707216

namespace A216778

/-- `A373417(∑[n]+n)` -/
def P13232265967398707216.Spec : Prop :=
  ∀ n, P13232265967398707216.a n = A216778 n

end A216778

/-! ## A216778.P753406801267609262

`A216779(n)+1-n`
-/

namespace A216778.P753406801267609262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216779 n + (1 - (n : ℤ))

end

end A216778.P753406801267609262

namespace A216778

/-- `A216779(n)+1-n` -/
def P753406801267609262.Spec : Prop :=
  ∀ n, P753406801267609262.a n = A216778 n

end A216778

/-! ## A216778.P2861211179980304178

`ceil((A000166(n)-n)/2)`
-/

namespace A216778.P2861211179980304178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000166 n - (n : ℤ) : ℚ) / 2⌉

end

end A216778.P2861211179980304178

namespace A216778

/-- `ceil((A000166(n)-n)/2)` -/
def P2861211179980304178.Spec : Prop :=
  ∀ n, P2861211179980304178.a n = A216778 n

end A216778

/-! ## A216778.P8277569462249593415

`(A008290(∑[n])-(n-1))/2`
-/

namespace A216778.P8277569462249593415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008290 (∑ j ∈ Finset.range (n + 1), f1 j) - ((n : ℤ) - 1) : ℚ) / 2

end

end A216778.P8277569462249593415

namespace A216778

/-- `(A008290(∑[n])-(n-1))/2` -/
def P8277569462249593415.Spec : Prop :=
  ∀ n, P8277569462249593415.a n = (A216778 n : ℚ)

end A216778

/-! ## A216778.P9559571268859320585

`A000166(n)-A216779(n)`
-/

namespace A216778.P9559571268859320585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n - A216779 n

end

end A216778.P9559571268859320585

namespace A216778

/-- `A000166(n)-A216779(n)` -/
def P9559571268859320585.Spec : Prop :=
  ∀ n, P9559571268859320585.a n = A216778 n

end A216778

/-! ## A216778.P9997207504198005049

`A008290(∑[n])-A216779(n)`
-/

namespace A216778.P9997207504198005049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (∑ j ∈ Finset.range (n + 1), f1 j) - A216779 n

end

end A216778.P9997207504198005049

namespace A216778

/-- `A008290(∑[n])-A216779(n)` -/
def P9997207504198005049.Spec : Prop :=
  ∀ n, P9997207504198005049.a n = A216778 n

end A216778

/-!
# A216779: Number of derangements on n elements with an odd number of cycles.

The programs for A216779, the canonical program `A216779.P5065919718748664670` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216779 has offset 0).

The definition of A216779 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216779.P5065919718748664670

`(A000166(n)+n-1)/2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A216779

/-- `(A000166(n)+n-1)/2` -/
def P5065919718748664670.Spec : Prop :=
  ∀ n, P5065919718748664670.a n = (A216779 n : ℚ)

end A216779

/-! ## A216779.P4425591380130961412

`(n-1)*(a(n-1)+a(n-2)-(n-3))` with `a(0)=0, a(1)=0`
-/

namespace A216779.P4425591380130961412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ((n : ℤ) - 1) * (a (n - 1) + a (n - 2) - ((n : ℤ) - 3))

end

end A216779.P4425591380130961412

namespace A216779

/-- `(n-1)*(a(n-1)+a(n-2)-(n-3))` -/
def P4425591380130961412.Spec : Prop :=
  ∀ n, P4425591380130961412.a n = A216779 n

end A216779

/-! ## A216779.P16286067824372451442

`(n-1)*(a(n-1)-(n-3-a(n-2)))` with `a(0)=0, a(1)=0`
-/

namespace A216779.P16286067824372451442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ((n : ℤ) - 1) * (a (n - 1) - ((n : ℤ) - 3 - a (n - 2)))

end

end A216779.P16286067824372451442

namespace A216779

/-- `(n-1)*(a(n-1)-(n-3-a(n-2)))` -/
def P16286067824372451442.Spec : Prop :=
  ∀ n, P16286067824372451442.a n = A216779 n

end A216779

/-! ## A216779.P3158122910443190361

`A216778(n)-1+n`
-/

namespace A216779.P3158122910443190361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216778 n - 1 + (n : ℤ)

end

end A216779.P3158122910443190361

namespace A216779

/-- `A216778(n)-1+n` -/
def P3158122910443190361.Spec : Prop :=
  ∀ n, P3158122910443190361.a n = A216779 n

end A216779

/-! ## A216779.P18398856700334566461

`floor((n+A000166(n))/2)`
-/

namespace A216779.P18398856700334566461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) + A000166 n : ℚ) / 2⌋

end

end A216779.P18398856700334566461

namespace A216779

/-- `floor((n+A000166(n))/2)` -/
def P18398856700334566461.Spec : Prop :=
  ∀ n, P18398856700334566461.a n = A216779 n

end A216779

/-! ## A216779.P7517969492395715362

`floor((A008290(∑[n])+n)/2)`
-/

namespace A216779.P7517969492395715362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008290 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) : ℚ) / 2⌋

end

end A216779.P7517969492395715362

namespace A216779

/-- `floor((A008290(∑[n])+n)/2)` -/
def P7517969492395715362.Spec : Prop :=
  ∀ n, P7517969492395715362.a n = A216779 n

end A216779

/-! ## A216779.P2372058384465635468

`A000166(n)-A216778(n)`
-/

namespace A216779.P2372058384465635468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n - A216778 n

end

end A216779.P2372058384465635468

namespace A216779

/-- `A000166(n)-A216778(n)` -/
def P2372058384465635468.Spec : Prop :=
  ∀ n, P2372058384465635468.a n = A216779 n

end A216779

/-! ## A216779.P7144383905603871443

`A008290(∑[n])-A216778(n)`
-/

namespace A216779.P7144383905603871443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (∑ j ∈ Finset.range (n + 1), f1 j) - A216778 n

end

end A216779.P7144383905603871443

namespace A216779

/-- `A008290(∑[n])-A216778(n)` -/
def P7144383905603871443.Spec : Prop :=
  ∀ n, P7144383905603871443.a n = A216779 n

end A216779

/-! ## A216779.P13404860919594323932

`A068106(∑[n])-A216778(n)`
-/

namespace A216779.P13404860919594323932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (∑ j ∈ Finset.range (n + 1), f1 j) - A216778 n

end

end A216779.P13404860919594323932

namespace A216779

/-- `A068106(∑[n])-A216778(n)` -/
def P13404860919594323932.Spec : Prop :=
  ∀ n, P13404860919594323932.a n = A216779 n

end A216779

/-! ## A216779.P7205391980079714173

`(A023443(n)+A000166(n))/2`
-/

namespace A216779.P7205391980079714173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023443 n + A000166 n : ℚ) / 2

end

end A216779.P7205391980079714173

namespace A216779

/-- `(A023443(n)+A000166(n))/2` -/
def P7205391980079714173.Spec : Prop :=
  ∀ n, P7205391980079714173.a n = (A216779 n : ℚ)

end A216779

/-!
# A216780: Numbers n such that numerator(sigma(n)/n) and denominator(sigma(n)/n) are both odd.

The programs for A216780, the canonical program `A216780.P3237457974216524300` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216780 has offset 1).

The definition of A216780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3944 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216780.P3602569810794337582

`filter[A305979(n+1), A361024(#)]`
-/

namespace A216780.P3602569810794337582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361024 (f1 j).toNat = 1) n)

end

end A216780.P3602569810794337582

namespace A216780

/-- `filter[A305979(n+1), A361024(#)]` -/
def P3602569810794337582.Spec : Prop :=
  ∀ n, P3602569810794337582.a n = A216780 (n + 1)

end A216780

/-! ## A216780.P12758931989460779294

`filter[A305976(n+1), A361024(#)]`
-/

namespace A216780.P12758931989460779294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361024 (f1 j).toNat = 1) n)

end

end A216780.P12758931989460779294

namespace A216780

/-- `filter[A305976(n+1), A361024(#)]` -/
def P12758931989460779294.Spec : Prop :=
  ∀ n, P12758931989460779294.a n = A216780 (n + 1)

end A216780

/-! ## A216780.P10088702828629366189

`filter[A305901(n+1), A361024(#)]`
-/

namespace A216780.P10088702828629366189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361024 (f1 j).toNat = 1) n)

end

end A216780.P10088702828629366189

namespace A216780

/-- `filter[A305901(n+1), A361024(#)]` -/
def P10088702828629366189.Spec : Prop :=
  ∀ n, P10088702828629366189.a n = A216780 (n + 1)

end A216780

/-! ## A216780.P17814501087581157058

`filter[A318500(n+1), A361024(#)]`
-/

namespace A216780.P17814501087581157058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361024 (f1 j).toNat = 1) n)

end

end A216780.P17814501087581157058

namespace A216780

/-- `filter[A318500(n+1), A361024(#)]` -/
def P17814501087581157058.Spec : Prop :=
  ∀ n, P17814501087581157058.a n = A216780 (n + 1)

end A216780

/-! ## A216780.P14111975417929045778

`filter[A305902(n+1), A361024(#)]`
-/

namespace A216780.P14111975417929045778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361024 (f1 j).toNat = 1) n)

end

end A216780.P14111975417929045778

namespace A216780

/-- `filter[A305902(n+1), A361024(#)]` -/
def P14111975417929045778.Spec : Prop :=
  ∀ n, P14111975417929045778.a n = A216780 (n + 1)

end A216780

/-! ## A216780.P3237457974216524300

`eq[1, A361024(n+1)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A216780

/-- `eq[1, A361024(n+1)]+1` -/
def P3237457974216524300.Spec : Prop :=
  ∀ n, (P3237457974216524300.a n : ℤ) = A216780 (n + 1)

theorem P3237457974216524300.correct : P3237457974216524300.Spec := by
  intro n
  simp only [A216780, Nat.add_sub_cancel]

end A216780

/-! ## A216780.P5323267319148392545

`filter[A319701(n+1), A361024(#)]`
-/

namespace A216780.P5323267319148392545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361024 (f1 j).toNat = 1) n)

end

end A216780.P5323267319148392545

namespace A216780

/-- `filter[A319701(n+1), A361024(#)]` -/
def P5323267319148392545.Spec : Prop :=
  ∀ n, P5323267319148392545.a n = A216780 (n + 1)

end A216780

/-! ## A216780.P399769623053305517

`filter[A319702(n+1), A361024(#)]`
-/

namespace A216780.P399769623053305517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361024 (f1 j).toNat = 1) n)

end

end A216780.P399769623053305517

namespace A216780

/-- `filter[A319702(n+1), A361024(#)]` -/
def P399769623053305517.Spec : Prop :=
  ∀ n, P399769623053305517.a n = A216780 (n + 1)

end A216780

/-! ## A216780.P1811882072057830784

`filter[A326203(n+1), A361024(#)]`
-/

namespace A216780.P1811882072057830784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361024 (f1 j).toNat = 1) n)

end

end A216780.P1811882072057830784

namespace A216780

/-- `filter[A326203(n+1), A361024(#)]` -/
def P1811882072057830784.Spec : Prop :=
  ∀ n, P1811882072057830784.a n = A216780 (n + 1)

end A216780

/-! ## A216780.P11767575101560672658

`filter[A346488(n+1), A361024(#)]`
-/

namespace A216780.P11767575101560672658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361024 (f1 j).toNat = 1) n)

end

end A216780.P11767575101560672658

namespace A216780

/-- `filter[A346488(n+1), A361024(#)]` -/
def P11767575101560672658.Spec : Prop :=
  ∀ n, P11767575101560672658.a n = A216780 (n + 1)

end A216780

/-! ## A216780.P2714177607050232927

`filter[A326202(n+1), A361024(#)]`
-/

namespace A216780.P2714177607050232927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361024 (f1 j).toNat = 1) n)

end

end A216780.P2714177607050232927

namespace A216780

/-- `filter[A326202(n+1), A361024(#)]` -/
def P2714177607050232927.Spec : Prop :=
  ∀ n, P2714177607050232927.a n = A216780 (n + 1)

end A216780

/-! ## A216780.P12107414523175253777

`filter[A305980(n+1), A361024(#)]`
-/

namespace A216780.P12107414523175253777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361024 (f1 j).toNat = 1) n)

end

end A216780.P12107414523175253777

namespace A216780

/-- `filter[A305980(n+1), A361024(#)]` -/
def P12107414523175253777.Spec : Prop :=
  ∀ n, P12107414523175253777.a n = A216780 (n + 1)

end A216780

/-! ## A216780.P7122805726744695928

`filter[A322810(n+1), A361024(#)]`
-/

namespace A216780.P7122805726744695928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361024 (f1 j).toNat = 1) n)

end

end A216780.P7122805726744695928

namespace A216780

/-- `filter[A322810(n+1), A361024(#)]` -/
def P7122805726744695928.Spec : Prop :=
  ∀ n, P7122805726744695928.a n = A216780 (n + 1)

end A216780

/-! ## A216780.P2996553806201411963

`filter[A326201(n+1), A361024(#)]`
-/

namespace A216780.P2996553806201411963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361024 (f1 j).toNat = 1) n)

end

end A216780.P2996553806201411963

namespace A216780

/-- `filter[A326201(n+1), A361024(#)]` -/
def P2996553806201411963.Spec : Prop :=
  ∀ n, P2996553806201411963.a n = A216780 (n + 1)

end A216780

/-! ## A216780.P2659198480589614918

`filter[A053869(n+1), A361024(#)]`
-/

namespace A216780.P2659198480589614918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361024 (f1 j).toNat = 1) n)

end

end A216780.P2659198480589614918

namespace A216780

/-- `filter[A053869(n+1), A361024(#)]` -/
def P2659198480589614918.Spec : Prop :=
  ∀ n, P2659198480589614918.a n = A216780 (n + 1)

end A216780

/-! ## A216780.P3033882754395225937

`filter[A003485(n), A361024(#)]`
-/

namespace A216780.P3033882754395225937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361024 (f1 j).toNat = 1) n)

end

end A216780.P3033882754395225937

namespace A216780

/-- `filter[A003485(n), A361024(#)]` -/
def P3033882754395225937.Spec : Prop :=
  ∀ n, P3033882754395225937.a n = A216780 (n + 1)

end A216780

/-! ## A216780.P6312311761011728091

`filter[A018252(n+1), A361024(#)]`
-/

namespace A216780.P6312311761011728091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361024 (f1 j).toNat = 1) n)

end

end A216780.P6312311761011728091

namespace A216780

/-- `filter[A018252(n+1), A361024(#)]` -/
def P6312311761011728091.Spec : Prop :=
  ∀ n, P6312311761011728091.a n = A216780 (n + 1)

end A216780

/-! ## A216780.P15758962506895685355

`filter[A047466(n+2), A361024(#)]`
-/

namespace A216780.P15758962506895685355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361024 (f1 j).toNat = 1) n)

end

end A216780.P15758962506895685355

namespace A216780

/-- `filter[A047466(n+2), A361024(#)]` -/
def P15758962506895685355.Spec : Prop :=
  ∀ n, P15758962506895685355.a n = A216780 (n + 1)

end A216780

/-! ## A216780.P6196471797262908283

`filter[A176693(n+2), A361024(#)]`
-/

namespace A216780.P6196471797262908283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176693 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361024 (f1 j).toNat = 1) n)

end

end A216780.P6196471797262908283

namespace A216780

/-- `filter[A176693(n+2), A361024(#)]` -/
def P6196471797262908283.Spec : Prop :=
  ∀ n, P6196471797262908283.a n = A216780 (n + 1)

end A216780

/-! ## A216780.P10712306226741636366

`filter[A372771(n+1), A361024(#)]`
-/

namespace A216780.P10712306226741636366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361024 (f1 j).toNat = 1) n)

end

end A216780.P10712306226741636366

namespace A216780

/-- `filter[A372771(n+1), A361024(#)]` -/
def P10712306226741636366.Spec : Prop :=
  ∀ n, P10712306226741636366.a n = A216780 (n + 1)

end A216780

/-!
# A216781: Numbers such that numerator(sigma(n)/n) is odd and denominator(sigma(n)/n) is even.

The programs for A216781, the canonical program `A216781.P17850051630873400409` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216781 has offset 1).

The definition of A216781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1937 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216781.P17850051630873400409

`record[A005843(n+1)/gcd(2, A017665(n+1))]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A216781

/-- `record[A005843(n+1)/gcd(2, A017665(n+1))]` -/
def P17850051630873400409.Spec : Prop :=
  ∀ n, P17850051630873400409.a n = (A216781 (n + 1) : ℚ)

end A216781

/-! ## A216781.P11442046447465090210

`eq[2, A020639(A017666(n+1))]+1`
-/

namespace A216781.P11442046447465090210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017666 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A216781.P11442046447465090210

namespace A216781

/-- `eq[2, A020639(A017666(n+1))]+1` -/
def P11442046447465090210.Spec : Prop :=
  ∀ n, (P11442046447465090210.a n : ℤ) = A216781 (n + 1)

end A216781

/-! ## A216781.P7402148108580595438

`lt[A286357(n+1), A001511(n+1)]+1`
-/

namespace A216781.P7402148108580595438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A216781.P7402148108580595438

namespace A216781

/-- `lt[A286357(n+1), A001511(n+1)]+1` -/
def P7402148108580595438.Spec : Prop :=
  ∀ n, (P7402148108580595438.a n : ℤ) = A216781 (n + 1)

end A216781

/-! ## A216781.P455442000454010709

`lt[A336937(n+1), A007814(n+1)]+1`
-/

namespace A216781.P455442000454010709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A216781.P455442000454010709

namespace A216781

/-- `lt[A336937(n+1), A007814(n+1)]+1` -/
def P455442000454010709.Spec : Prop :=
  ∀ n, (P455442000454010709.a n : ℤ) = A216781 (n + 1)

end A216781

/-! ## A216781.P18301745048170126364

`A014681(eq[2, A020639(A017666(n+1))])`
-/

namespace A216781.P18301745048170126364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017666 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216781.P18301745048170126364

namespace A216781

/-- `A014681(eq[2, A020639(A017666(n+1))])` -/
def P18301745048170126364.Spec : Prop :=
  ∀ n, P18301745048170126364.a n = A216781 (n + 1)

end A216781

/-! ## A216781.P17385713111786272852

`eq[1, A135517(A017666(n+1)+2)]+1`
-/

namespace A216781.P17385713111786272852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135517 (A017666 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A216781.P17385713111786272852

namespace A216781

/-- `eq[1, A135517(A017666(n+1)+2)]+1` -/
def P17385713111786272852.Spec : Prop :=
  ∀ n, (P17385713111786272852.a n : ℤ) = A216781 (n + 1)

end A216781

/-! ## A216781.P1459961928155298751

`record[A088705(A017665(n+1))*A317440(n+1)]`
-/

namespace A216781.P1459961928155298751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A017665 (n + 1)).toNat * A317440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216781.P1459961928155298751

namespace A216781

/-- `record[A088705(A017665(n+1))*A317440(n+1)]` -/
def P1459961928155298751.Spec : Prop :=
  ∀ n, P1459961928155298751.a n = A216781 (n + 1)

end A216781

/-! ## A216781.P2757032356739385860

`lt[A006519(A000593(n+1)), A006519(n+1)]+1`
-/

namespace A216781.P2757032356739385860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A000593 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A216781.P2757032356739385860

namespace A216781

/-- `lt[A006519(A000593(n+1)), A006519(n+1)]+1` -/
def P2757032356739385860.Spec : Prop :=
  ∀ n, (P2757032356739385860.a n : ℤ) = A216781 (n + 1)

end A216781

/-! ## A216781.P10631693210289012335

`lt[A007814(A000593(n+1)), A007814(n+1)]+1`
-/

namespace A216781.P10631693210289012335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000593 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A216781.P10631693210289012335

namespace A216781

/-- `lt[A007814(A000593(n+1)), A007814(n+1)]+1` -/
def P10631693210289012335.Spec : Prop :=
  ∀ n, (P10631693210289012335.a n : ℤ) = A216781 (n + 1)

end A216781

/-! ## A216781.P15311544120641160033

`lt[A007814(A000203(n+1)), A007814(n+1)]+1`
-/

namespace A216781.P15311544120641160033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A216781.P15311544120641160033

namespace A216781

/-- `lt[A007814(A000203(n+1)), A007814(n+1)]+1` -/
def P15311544120641160033.Spec : Prop :=
  ∀ n, (P15311544120641160033.a n : ℤ) = A216781 (n + 1)

end A216781

/-!
# A216782: Numbers such that numerator(sigma(n)/n) is even and denominator(sigma(n)/n) is odd.

The programs for A216782, the canonical program `A216782.P2156386028592827543` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216782 has offset 1).

The definition of A216782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216782.P15984698486528936783

`lt[0, A324903(n+1)]+1`
-/

namespace A216782.P15984698486528936783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A216782.P15984698486528936783

namespace A216782

/-- `lt[0, A324903(n+1)]+1` -/
def P15984698486528936783.Spec : Prop :=
  ∀ n, (P15984698486528936783.a n : ℤ) = A216782 (n + 1)

end A216782

/-! ## A216782.P16603714370414305653

`eq[2, gcd(2, A098987(n+1))]+1`
-/

namespace A216782.P16603714370414305653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A098987 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A216782.P16603714370414305653

namespace A216782

/-- `eq[2, gcd(2, A098987(n+1))]+1` -/
def P16603714370414305653.Spec : Prop :=
  ∀ n, (P16603714370414305653.a n : ℤ) = A216782 (n + 1)

end A216782

/-! ## A216782.P2917098371594486247

`lt[and(1, A017665(1+n)), 1]+1`
-/

namespace A216782.P2917098371594486247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A017665 (1 + n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A216782.P2917098371594486247

namespace A216782

/-- `lt[and(1, A017665(1+n)), 1]+1` -/
def P2917098371594486247.Spec : Prop :=
  ∀ n, (P2917098371594486247.a n : ℤ) = A216782 (n + 1)

end A216782

/-! ## A216782.P15966061779169124958

`eq[1, A324903(A028310(n))]`
-/

namespace A216782.P15966061779169124958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324903 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216782.P15966061779169124958

namespace A216782

/-- `eq[1, A324903(A028310(n))]` -/
def P15966061779169124958.Spec : Prop :=
  ∀ n, (P15966061779169124958.a n : ℤ) = A216782 (n + 1)

end A216782

/-! ## A216782.P3048111319610287990

`filter[A344180(n), A324903(#)]`
-/

namespace A216782.P3048111319610287990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A216782.P3048111319610287990

namespace A216782

/-- `filter[A344180(n), A324903(#)]` -/
def P3048111319610287990.Spec : Prop :=
  ∀ n, P3048111319610287990.a n = A216782 (n + 1)

end A216782

/-! ## A216782.P16345622027667204159

`filter[A000037(n+1), A324903(#)]`
-/

namespace A216782.P16345622027667204159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A216782.P16345622027667204159

namespace A216782

/-- `filter[A000037(n+1), A324903(#)]` -/
def P16345622027667204159.Spec : Prop :=
  ∀ n, P16345622027667204159.a n = A216782 (n + 1)

end A216782

/-! ## A216782.P3198572587362487029

`filter[A028983(n+1), A324903(#)]`
-/

namespace A216782.P3198572587362487029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A216782.P3198572587362487029

namespace A216782

/-- `filter[A028983(n+1), A324903(#)]` -/
def P3198572587362487029.Spec : Prop :=
  ∀ n, P3198572587362487029.a n = A216782 (n + 1)

end A216782

/-! ## A216782.P9086122940662553131

`filter[A057716(n+1), A324903(#)]`
-/

namespace A216782.P9086122940662553131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A216782.P9086122940662553131

namespace A216782

/-- `filter[A057716(n+1), A324903(#)]` -/
def P9086122940662553131.Spec : Prop :=
  ∀ n, P9086122940662553131.a n = A216782 (n + 1)

end A216782

/-! ## A216782.P15288589115949893021

`eq[2, A020639(A017665(n+1))]+1`
-/

namespace A216782.P15288589115949893021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017665 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A216782.P15288589115949893021

namespace A216782

/-- `eq[2, A020639(A017665(n+1))]+1` -/
def P15288589115949893021.Spec : Prop :=
  ∀ n, (P15288589115949893021.a n : ℤ) = A216782 (n + 1)

end A216782

/-! ## A216782.P5224342992318439119

`eq[A001511(n+1), A324904(n+1)]+1`
-/

namespace A216782.P5224342992318439119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A216782.P5224342992318439119

namespace A216782

/-- `eq[A001511(n+1), A324904(n+1)]+1` -/
def P5224342992318439119.Spec : Prop :=
  ∀ n, (P5224342992318439119.a n : ℤ) = A216782 (n + 1)

end A216782

/-! ## A216782.P2156386028592827543

`lt[A001511(n+1), A286357(n+1)]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A216782

/-- `lt[A001511(n+1), A286357(n+1)]+1` -/
def P2156386028592827543.Spec : Prop :=
  ∀ n, (P2156386028592827543.a n : ℤ) = A216782 (n + 1)

theorem P2156386028592827543.correct : P2156386028592827543.Spec := by
  intro n
  simp only [A216782, Nat.add_sub_cancel]

end A216782

/-! ## A216782.P4658939192299956373

`lt[A007814(n+1), A336937(n+1)]+1`
-/

namespace A216782.P4658939192299956373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336937 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A216782.P4658939192299956373

namespace A216782

/-- `lt[A007814(n+1), A336937(n+1)]+1` -/
def P4658939192299956373.Spec : Prop :=
  ∀ n, (P4658939192299956373.a n : ℤ) = A216782 (n + 1)

end A216782

/-! ## A216782.P10649188337494206341

`filter[A078881(n+1), A324903(#)]`
-/

namespace A216782.P10649188337494206341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A216782.P10649188337494206341

namespace A216782

/-- `filter[A078881(n+1), A324903(#)]` -/
def P10649188337494206341.Spec : Prop :=
  ∀ n, P10649188337494206341.a n = A216782 (n + 1)

end A216782

/-! ## A216782.P7434271976686461879

`lt[A098987(2*n), A098987(n)]`
-/

namespace A216782.P7434271976686461879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098987 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098987 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A216782.P7434271976686461879

namespace A216782

/-- `lt[A098987(2*n), A098987(n)]` -/
def P7434271976686461879.Spec : Prop :=
  ∀ n, (P7434271976686461879.a n : ℤ) = A216782 (n + 1)

end A216782

/-! ## A216782.P3770787018224391336

`filter[A092942(n+1), A324903(#)]`
-/

namespace A216782.P3770787018224391336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A216782.P3770787018224391336

namespace A216782

/-- `filter[A092942(n+1), A324903(#)]` -/
def P3770787018224391336.Spec : Prop :=
  ∀ n, P3770787018224391336.a n = A216782 (n + 1)

end A216782

/-! ## A216782.P1413752665211192985

`filter[A006165(n+1), A324903(#)]`
-/

namespace A216782.P1413752665211192985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A216782.P1413752665211192985

namespace A216782

/-- `filter[A006165(n+1), A324903(#)]` -/
def P1413752665211192985.Spec : Prop :=
  ∀ n, P1413752665211192985.a n = A216782 (n + 1)

end A216782

/-! ## A216782.P8933275266145061168

`lt[1, A002129(A098987(n)+1)]`
-/

namespace A216782.P8933275266145061168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (A098987 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A216782.P8933275266145061168

namespace A216782

/-- `lt[1, A002129(A098987(n)+1)]` -/
def P8933275266145061168.Spec : Prop :=
  ∀ n, (P8933275266145061168.a n : ℤ) = A216782 (n + 1)

end A216782

/-! ## A216782.P7390769791334677024

`lt[A006519(n+1), A006519(A000593(n+1))]+1`
-/

namespace A216782.P7390769791334677024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A000593 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A216782.P7390769791334677024

namespace A216782

/-- `lt[A006519(n+1), A006519(A000593(n+1))]+1` -/
def P7390769791334677024.Spec : Prop :=
  ∀ n, (P7390769791334677024.a n : ℤ) = A216782 (n + 1)

end A216782

/-! ## A216782.P14893914901921082295

`lt[A007814(n+1), A007814(A000593(n+1))]+1`
-/

namespace A216782.P14893914901921082295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000593 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A216782.P14893914901921082295

namespace A216782

/-- `lt[A007814(n+1), A007814(A000593(n+1))]+1` -/
def P14893914901921082295.Spec : Prop :=
  ∀ n, (P14893914901921082295.a n : ℤ) = A216782 (n + 1)

end A216782

/-! ## A216782.P7029339380175051798

`filter[A152271(n), A324903(#)]`
-/

namespace A216782.P7029339380175051798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A216782.P7029339380175051798

namespace A216782

/-- `filter[A152271(n), A324903(#)]` -/
def P7029339380175051798.Spec : Prop :=
  ∀ n, P7029339380175051798.a n = A216782 (n + 1)

end A216782

/-!
# A216783: Number of maximal triangle-free graphs with n vertices.

The programs for A216783, there is no canonical definition to state claims against.
-/

/-! ## A216783.P1629004372611908565

`A085736(A004526(n)+A000676(n))`
-/

namespace A216783.P1629004372611908565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A004526 n + A000676 n).toNat

end

end A216783.P1629004372611908565

/-! ## A216783.P7218959024103198925

`A325620(A039900(A028310(n))+n)`
-/

namespace A216783.P7218959024103198925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325620 (A039900 (A028310 n).toNat + (n : ℤ)).toNat

end

end A216783.P7218959024103198925

/-! ## A216783.P4678761403986808709

`A000194(A032218(n+1)+∏[A008620(n)])`
-/

namespace A216783.P4678761403986808709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A032218 (n + 1) + ∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A216783.P4678761403986808709

/-! ## A216783.P13263836407878670015

`A112232(A364595(n))`
-/

namespace A216783.P13263836407878670015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112232 (A364595 n).toNat

end

end A216783.P13263836407878670015

/-! ## A216783.P1941790003701042194

`A131138(A113405(n)+1)`
-/

namespace A216783.P1941790003701042194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131138 (A113405 n + 1).toNat

end

end A216783.P1941790003701042194

/-!
# A216784: a(n) is the number of distinct prime divisors of n^2 + 1 of the form m^2 + 1.

The programs for A216784, the canonical program `A216784.P9078993099628633723` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216784 has offset 1).

The definition of A216784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216784.P9078993099628633723

`∑{p}[(n+1)²+1, A266974(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A216784

/-- `∑{p}[(n+1)²+1, A266974(#)]` -/
def P9078993099628633723.Spec : Prop :=
  ∀ n, P9078993099628633723.a n = A216784 (n + 1)

theorem P9078993099628633723.correct : P9078993099628633723.Spec := by
  intro n
  simp only [A216784, Nat.add_sub_cancel]

end A216784

/-! ## A216784.P157194671657682376

`∑{p}[(n+1)²+1, A267050(#-2)]`
-/

namespace A216784.P157194671657682376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A267050 (p - 2)

end

end A216784.P157194671657682376

namespace A216784

/-- `∑{p}[(n+1)²+1, A267050(#-2)]` -/
def P157194671657682376.Spec : Prop :=
  ∀ n, P157194671657682376.a n = A216784 (n + 1)

end A216784

/-! ## A216784.P2698616312228108911

`∑{p}[A002522(1+n), A266298(#)]`
-/

namespace A216784.P2698616312228108911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A266298 p

end

end A216784.P2698616312228108911

namespace A216784

/-- `∑{p}[A002522(1+n), A266298(#)]` -/
def P2698616312228108911.Spec : Prop :=
  ∀ n, P2698616312228108911.a n = A216784 (n + 1)

end A216784

/-! ## A216784.P5409852039131106268

`∑{p}[(n+1)²+1, A010052(A000010(#))]`
-/

namespace A216784.P5409852039131106268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A010052 (A000010 p).toNat

end

end A216784.P5409852039131106268

namespace A216784

/-- `∑{p}[(n+1)²+1, A010052(A000010(#))]` -/
def P5409852039131106268.Spec : Prop :=
  ∀ n, P5409852039131106268.a n = A216784 (n + 1)

end A216784

/-! ## A216784.P725334452040250566

`∑{p}[A002522(n+1), A010052(A008836(#)+#)]`
-/

namespace A216784.P725334452040250566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A010052 (A008836 p + (p : ℤ)).toNat

end

end A216784.P725334452040250566

namespace A216784

/-- `∑{p}[A002522(n+1), A010052(A008836(#)+#)]` -/
def P725334452040250566.Spec : Prop :=
  ∀ n, P725334452040250566.a n = A216784 (n + 1)

end A216784

/-!
# A216785: Number of unlabeled graphs on n nodes that have exactly two non-isomorphic components.

The programs for A216785, there is no canonical definition to state claims against.
-/

/-! ## A216785.P15477982009423599802

`A275166(n+1)-A001349(n+1)`
-/

namespace A216785.P15477982009423599802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275166 (n + 1) - A001349 (n + 1)

end

end A216785.P15477982009423599802

/-! ## A216785.P2265952858939590390

`A028310(A000088(n))-A036589(n)`
-/

namespace A216785.P2265952858939590390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A000088 n).toNat - A036589 n

end

end A216785.P2265952858939590390

/-! ## A216785.P3128540779019750873

`A000088(n)-A112971(A011782(n))`
-/

namespace A216785.P3128540779019750873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n - A112971 (A011782 n).toNat

end

end A216785.P3128540779019750873

/-! ## A216785.P1398404615487081131

`A000088(n)-A112971(A131577(n))`
-/

namespace A216785.P1398404615487081131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n - A112971 (A131577 n).toNat

end

end A216785.P1398404615487081131

/-!
# A216789: Table read by antidiagonals: T(n,k) is the digital sum of k in base n displayed in decimal.

The programs for A216789, there is no canonical definition to state claims against.
-/

/-! ## A216789.P1538023753321760016

`∑{e}[A325784(A203647(n+1)), #]`
-/

namespace A216789.P1538023753321760016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325784 (A203647 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A216789.P1538023753321760016

/-! ## A216789.P4851437506900352348

`A001222(A325784(A203647(n+1)))`
-/

namespace A216789.P4851437506900352348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A325784 (A203647 (n + 1)).toNat).toNat

end

end A216789.P4851437506900352348

/-! ## A216789.P16269828327130744322

`∑{e}[A352873(A309010(n)), #]`
-/

namespace A216789.P16269828327130744322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352873 (A309010 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A216789.P16269828327130744322

/-! ## A216789.P13791333603823597200

`A069010(A253059(n+1)%A210196(n+1))`
-/

namespace A216789.P13791333603823597200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (Int.tmod (A253059 (n + 1)) (A210196 (n + 1))).toNat

end

end A216789.P13791333603823597200

/-! ## A216789.P16827340411109674793

`A182907(A209766(n+1))`
-/

namespace A216789.P16827340411109674793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182907 (A209766 (n + 1)).toNat

end

end A216789.P16827340411109674793

/-!
# A216790: Number of 4-colorings of a side-n hexagonal array with colors introduced in row major order.

The programs for A216790, there is no canonical definition to state claims against.
-/

/-! ## A216790.P6737519433871840457

`A216792(∑[n+3]+1)`
-/

namespace A216790.P6737519433871840457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216792 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A216790.P6737519433871840457

/-!
# A216792: T(n,k)=Number of (k+1) colorings of a side-n hexagonal array with colors introduced in row major order.

The programs for A216792, there is no canonical definition to state claims against.
-/

/-! ## A216792.P12140057568947274075

`A244041(A210391(n)^8)`
-/

namespace A216792.P12140057568947274075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244041 (A210391 n ^ 8).toNat

end

end A216792.P12140057568947274075

/-! ## A216792.P11002817557917539665

`A244041(A292804(n)^8)`
-/

namespace A216792.P11002817557917539665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244041 (A292804 n ^ 8).toNat

end

end A216792.P11002817557917539665

/-! ## A216792.P1940074338395531604

`A244041(A320080(n)^8)`
-/

namespace A216792.P1940074338395531604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244041 (A320080 n ^ 8).toNat

end

end A216792.P1940074338395531604

/-! ## A216792.P14644267807176826110

`A244041(A331436(n)^8)`
-/

namespace A216792.P14644267807176826110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244041 (A331436 n ^ 8).toNat

end

end A216792.P14644267807176826110

/-! ## A216792.P14235803241185187861

`A236531(11^A210391(n))`
-/

namespace A216792.P14235803241185187861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236531 (SequenceMachineLib.roundAway ((11 : ℚ) ^ (A210391 n : ℤ))).toNat

end

end A216792.P14235803241185187861

/-!
# A216793: Numbers n such that gcd(sigma(n), n) > gcd(sigma(m), m) for all m < n.

The programs for A216793, there is no canonical definition to state claims against.
-/

/-! ## A216793.P1366730243153445450

`filter[A246454(n+1), A005171(#)]`
-/

namespace A216793.P1366730243153445450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A216793.P1366730243153445450

/-! ## A216793.P16369012955125694040

`filter[A246454(n+1), A283265(#)]`
-/

namespace A216793.P16369012955125694040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A216793.P16369012955125694040

/-! ## A216793.P16444619004658447698

`filter[A246454(n+1), A354097(#)]`
-/

namespace A216793.P16444619004658447698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354097 (f1 j).toNat = 1) n)

end

end A216793.P16444619004658447698

/-! ## A216793.P14438718364560615386

`filter[A246454(n+1), A374197(#)]`
-/

namespace A216793.P14438718364560615386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374197 (f1 j).toNat = 1) n)

end

end A216793.P14438718364560615386

/-! ## A216793.P15594224409446429762

`∩[A246454(n+1), A354098(n+1)]`
-/

namespace A216793.P15594224409446429762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216793.P15594224409446429762

/-!
# A216794: Number of set partitions of {1,2,...,n} with labeled blocks and a (possibly empty) subset of designated elements in each block.

The programs for A216794, the canonical program `A216794.P14031949362196795274` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216794 has offset 0).

The definition of A216794 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216794.P14031949362196795274

`2^n*A000670(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A216794

/-- `2^n*A000670(n)` -/
def P14031949362196795274.Spec : Prop :=
  ∀ n, P14031949362196795274.a n = A216794 n

theorem P14031949362196795274.correct : P14031949362196795274.Spec := by
  intro n
  simp only [A216794]

end A216794

/-! ## A216794.P9324553306328052158

`ceil(A162314(n)/2)`
-/

namespace A216794.P9324553306328052158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A162314 n : ℚ) / 2⌉

end

end A216794.P9324553306328052158

namespace A216794

/-- `ceil(A162314(n)/2)` -/
def P9324553306328052158.Spec : Prop :=
  ∀ n, P9324553306328052158.a n = A216794 n

end A216794

/-! ## A216794.P2244434213991317433

`lcm(2^n, A000629(n))`
-/

namespace A216794.P2244434213991317433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (A000629 n)

end

end A216794.P2244434213991317433

namespace A216794

/-- `lcm(2^n, A000629(n))` -/
def P2244434213991317433.Spec : Prop :=
  ∀ n, (P2244434213991317433.a n : ℤ) = A216794 n

end A216794

/-! ## A216794.P6709278798974362000

`2^n*A122101(∑[n])`
-/

namespace A216794.P6709278798974362000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A122101 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A216794.P6709278798974362000

namespace A216794

/-- `2^n*A122101(∑[n])` -/
def P6709278798974362000.Spec : Prop :=
  ∀ n, P6709278798974362000.a n = A216794 n

end A216794

/-! ## A216794.P18395755267442052128

`(A052875(n)+1)*2^n`
-/

namespace A216794.P18395755267442052128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052875 n + 1) * (2 ^ n : ℤ)

end

end A216794.P18395755267442052128

namespace A216794

/-- `(A052875(n)+1)*2^n` -/
def P18395755267442052128.Spec : Prop :=
  ∀ n, P18395755267442052128.a n = A216794 n

theorem P18395755267442052128.correct : P18395755267442052128.Spec := by
  intro n
  simp only [A216794, Nat.add_sub_cancel, A216794.P18395755267442052128.a, A216794.P14031949362196795274.a, A000670, A000670.P17492951284329218794.f1, A000670.P17492951284329218794.a, A052875, A052875.P13790807169799948261.a, A131689, A131689.P17350910327035141777.a, A000142, A000142.P3272619076580183195.a, A048993, A048993.P5967751111624356245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A216794

/-! ## A216794.P8460598693143472371

`2^(n-1)*A076726(n)`
-/

namespace A216794.P8460598693143472371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A076726 n : ℚ)

end

end A216794.P8460598693143472371

namespace A216794

/-- `2^(n-1)*A076726(n)` -/
def P8460598693143472371.Spec : Prop :=
  ∀ n, P8460598693143472371.a n = (A216794 n : ℚ)

end A216794

/-! ## A216794.P5280991204152033665

`2^n*∑{d}[n+1, A006936(#)]`
-/

namespace A216794.P5280991204152033665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A006936 d)

end

end A216794.P5280991204152033665

namespace A216794

/-- `2^n*∑{d}[n+1, A006936(#)]` -/
def P5280991204152033665.Spec : Prop :=
  ∀ n, P5280991204152033665.a n = A216794 n

end A216794

/-! ## A216794.P7188116353267017184

`2^n*ceil(∑[A162509(n)/2])`
-/

namespace A216794.P7188116353267017184
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162509 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A216794.P7188116353267017184

namespace A216794

/-- `2^n*ceil(∑[A162509(n)/2])` -/
def P7188116353267017184.Spec : Prop :=
  ∀ n, P7188116353267017184.a n = A216794 n

end A216794

/-! ## A216794.P8368955732750547702

`(A002050(n)+1)*ceil(2^(n-1))`
-/

namespace A216794.P8368955732750547702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002050 n + 1) * ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A216794.P8368955732750547702

namespace A216794

/-- `(A002050(n)+1)*ceil(2^(n-1))` -/
def P8368955732750547702.Spec : Prop :=
  ∀ n, P8368955732750547702.a n = A216794 n

end A216794

/-! ## A216794.P5169888893852721302

`∑[ceil(2^(n-1))]*A154921(∑[n])`
-/

namespace A216794.P5169888893852721302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A154921 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A216794.P5169888893852721302

namespace A216794

/-- `∑[ceil(2^(n-1))]*A154921(∑[n])` -/
def P5169888893852721302.Spec : Prop :=
  ∀ n, P5169888893852721302.a n = A216794 n

end A216794

/-!
# A216795: a(n) = sum_{k=0..n} binomial(n,k)^4 * 3^k.

The programs for A216795, the canonical program `A216795.P7780764076903636607` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216795 has offset 0).

The definition of A216795 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)^4*3^#]` (program `A216795.P7780764076903636607`, by `A216795.P7780764076903636607.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A216795.P7780764076903636607

`∑{#}[n, C(n, #)^4*3^#]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A216795

/-- `∑{#}[n, C(n, #)^4*3^#]` -/
def P7780764076903636607.Spec : Prop :=
  ∀ n, (P7780764076903636607.a n : ℤ) = A216795 n

theorem P7780764076903636607.correct : P7780764076903636607.Spec := by
  intro n
  simp only [A216795]

end A216795

/-!
# A216796: Number of permutations of an n X 4 array with each element moving exactly one horizontally or vertically and without 2-loops.

The programs for A216796, the canonical program `A216796.P2781793376824710242` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216796 has offset 1).

The definition of A216796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216796.P2781793376824710242

`ogf((6x-16x^2-4x^3+28x^4-8x^5)/(1-4x-10x^2+28x^3+7x^4-30x^5+8x^6))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A216796

/-- `ogf((6x-16x^2-4x^3+28x^4-8x^5)/(1-4x-10x^2+28x^3+7x^4-30x^5+8x^6))` -/
def P2781793376824710242.Spec : Prop :=
  ∀ n, P2781793376824710242.a n = A216796 (n + 1)

theorem P2781793376824710242.correct : P2781793376824710242.Spec := by
  intro n
  simp only [A216796, Nat.add_sub_cancel]

end A216796

/-! ## A216796.P12646508660942125132

`A216800(A374004(n+1))`
-/

namespace A216796.P12646508660942125132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216800 (A374004 (n + 1)).toNat

end

end A216796.P12646508660942125132

namespace A216796

/-- `A216800(A374004(n+1))` -/
def P12646508660942125132.Spec : Prop :=
  ∀ n, P12646508660942125132.a n = A216796 (n + 1)

end A216796

/-! ## A216796.P6861009509676587587

`A216800(A141214(n)+7)`
-/

namespace A216796.P6861009509676587587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216800 (A141214 n + 7).toNat

end

end A216796.P6861009509676587587

namespace A216796

/-- `A216800(A141214(n)+7)` -/
def P6861009509676587587.Spec : Prop :=
  ∀ n, P6861009509676587587.a n = A216796 (n + 1)

end A216796

/-! ## A216796.P1324291288968533235

`A216800(A052905(n)+9)`
-/

namespace A216796.P1324291288968533235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216800 (A052905 n + 9).toNat

end

end A216796.P1324291288968533235

namespace A216796

/-- `A216800(A052905(n)+9)` -/
def P1324291288968533235.Spec : Prop :=
  ∀ n, P1324291288968533235.a n = A216796 (n + 1)

end A216796

/-! ## A216796.P15490407298090960589

`A216800(A055999(n)+10)`
-/

namespace A216796.P15490407298090960589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216800 (A055999 n + 10).toNat

end

end A216796.P15490407298090960589

namespace A216796

/-- `A216800(A055999(n)+10)` -/
def P15490407298090960589.Spec : Prop :=
  ∀ n, P15490407298090960589.a n = A216796 (n + 1)

end A216796

/-!
# A216797: Number of permutations of an n X 5 array with each element moving exactly one horizontally or vertically and without 2-loops.

The programs for A216797, there is no canonical definition to state claims against.
-/

/-! ## A216797.P2390561004995682898

`A216800(A374005(n+1))`
-/

namespace A216797.P2390561004995682898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216800 (A374005 (n + 1)).toNat

end

end A216797.P2390561004995682898

/-! ## A216797.P625353859588154425

`A216800(A167499(n+3))`
-/

namespace A216797.P625353859588154425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216800 (A167499 (n + 3)).toNat

end

end A216797.P625353859588154425

/-! ## A216797.P11254617468597922975

`A216800(A155212(n)+13)`
-/

namespace A216797.P11254617468597922975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216800 (A155212 n + 13).toNat

end

end A216797.P11254617468597922975

/-! ## A216797.P12795693769803253819

`A216800(A374004(n+2)-1)`
-/

namespace A216797.P12795693769803253819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216800 (A374004 (n + 2) - 1).toNat

end

end A216797.P12795693769803253819

/-! ## A216797.P13413972461980266739

`A216800(A055998(n+2)+8)`
-/

namespace A216797.P13413972461980266739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216800 (A055998 (n + 2) + 8).toNat

end

end A216797.P13413972461980266739

/-!
# A216798: Number of permutations of an n X 6 array with each element moving exactly one horizontally or vertically and without 2-loops.

The programs for A216798, there is no canonical definition to state claims against.
-/

/-! ## A216798.P6107400166601552470

`A216800(A374007(n+1))`
-/

namespace A216798.P6107400166601552470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216800 (A374007 (n + 1)).toNat

end

end A216798.P6107400166601552470

/-! ## A216798.P18230585134922365370

`A216800(A166136(n+4))`
-/

namespace A216798.P18230585134922365370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216800 (A166136 (n + 4)).toNat

end

end A216798.P18230585134922365370

/-! ## A216798.P8570692236160904722

`A216800(A000096(n+4)+7)`
-/

namespace A216798.P8570692236160904722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216800 (A000096 (n + 4) + 7).toNat

end

end A216798.P8570692236160904722

/-! ## A216798.P6692381498167330791

`A216800(A052905(n+3))`
-/

namespace A216798.P6692381498167330791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216800 (A052905 (n + 3)).toNat

end

end A216798.P6692381498167330791

/-! ## A216798.P8025736535142195859

`A216800(eq[3, A219347(n)])`
-/

namespace A216798.P8025736535142195859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216798.P8025736535142195859

/-!
# A216799: Number of permutations of an n X 7 array with each element moving exactly one horizontally or vertically and without 2-loops.

The programs for A216799, there is no canonical definition to state claims against.
-/

/-! ## A216799.P534621081239139937

`A216800(A374008(n+1))`
-/

namespace A216799.P534621081239139937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216800 (A374008 (n + 1)).toNat

end

end A216799.P534621081239139937

/-! ## A216799.P9796044383044660465

`A216800(A056119(n)+28)`
-/

namespace A216799.P9796044383044660465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216800 (A056119 n + 28).toNat

end

end A216799.P9796044383044660465

/-! ## A216799.P4352417749686702487

`A216800(eq[11, A066657(n)])`
-/

namespace A216799.P4352417749686702487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216799.P4352417749686702487

/-! ## A216799.P6507783993625179564

`A216800(A374007(n+2)-1)`
-/

namespace A216799.P6507783993625179564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216800 (A374007 (n + 2) - 1).toNat

end

end A216799.P6507783993625179564

/-! ## A216799.P5151858008788116156

`A216800(eq[8, A131818(n+1)])`
-/

namespace A216799.P5151858008788116156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216799.P5151858008788116156

