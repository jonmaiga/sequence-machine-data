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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
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
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A362103: a(n) = K(4,n), where K(M,n) = 2*(2*M+3)!*(4*n+2*M+1)!/((M+2)!*M!*n!*(3*n+2*M+3)!).

The programs for A362103, there is no canonical definition to state claims against.
-/

/-! ## A362103.P16525756478435120351

`A146305(eq[4, A002262(n)])`
-/

namespace A362103.P16525756478435120351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146305 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A362103.P16525756478435120351

/-! ## A362103.P13363002903199702886

`A146305(A340266(n+3)+2)`
-/

namespace A362103.P13363002903199702886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146305 (A340266 (n + 3) + 2).toNat

end

end A362103.P13363002903199702886

/-! ## A362103.P16397711026309815614

`A146305(A000217(n+4)+4)`
-/

namespace A362103.P16397711026309815614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146305 (A000217 (n + 4) + 4).toNat

end

end A362103.P16397711026309815614

/-! ## A362103.P9645075642913058120

`A146305(A052905(n+1)+9)`
-/

namespace A362103.P9645075642913058120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146305 (A052905 (n + 1) + 9).toNat

end

end A362103.P9645075642913058120

/-! ## A362103.P2153095237715712944

`A146305(eq[5, A002260(n+1)])`
-/

namespace A362103.P2153095237715712944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146305 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A362103.P2153095237715712944

/-!
# A362104: a(n) = K(5,n), where K(M,n) = 2*(2*M+3)!*(4*n+2*M+1)!/((M+2)!*M!*n!*(3*n+2*M+3)!).

The programs for A362104, there is no canonical definition to state claims against.
-/

/-! ## A362104.P12902017688521566327

`A146305(A167499(n+4))`
-/

namespace A362104.P12902017688521566327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146305 (A167499 (n + 4)).toNat

end

end A362104.P12902017688521566327

/-! ## A362104.P183608037849023408

`A146305(eq[5, A002262(n)])`
-/

namespace A362104.P183608037849023408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146305 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A362104.P183608037849023408

/-! ## A362104.P11364164597272411668

`A146305(A000217(n+5)+5)`
-/

namespace A362104.P11364164597272411668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146305 (A000217 (n + 5) + 5).toNat

end

end A362104.P11364164597272411668

/-! ## A362104.P3642947421490485462

`A146305(A052905(n+2)+10)`
-/

namespace A362104.P3642947421490485462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146305 (A052905 (n + 2) + 10).toNat

end

end A362104.P3642947421490485462

/-! ## A362104.P12545390858413056519

`A146305(eq[6, A002260(n+1)])`
-/

namespace A362104.P12545390858413056519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146305 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A362104.P12545390858413056519

/-!
# A362106: Index where A362105(n) first appears in the Sisyphus sequence A350877.

The programs for A362106, there is no canonical definition to state claims against.
-/

/-! ## A362106.P8535083251311567709

`record[A350620(n+1)]`
-/

namespace A362106.P8535083251311567709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362106.P8535083251311567709

/-! ## A362106.P6220627720637884952

`A350620(A362105(n+1))`
-/

namespace A362106.P6220627720637884952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350620 (A362105 (n + 1)).toNat

end

end A362106.P6220627720637884952

/-!
# A362108: Index of 2^k in A350877, where k = A362107(n).

The programs for A362108, there is no canonical definition to state claims against.
-/

/-! ## A362108.P1884823527350162591

`A350615(n+1)-A362107(n+1)`
-/

namespace A362108.P1884823527350162591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350615 (n + 1) - A362107 (n + 1)

end

end A362108.P1884823527350162591

/-!
# A362109: Arises from the enumeration of cycle-alternating permutations.

The programs for A362109, there is no canonical definition to state claims against.
-/

/-! ## A362109.P10280746185045235045

`A248610(A020091(n)+n)`
-/

namespace A362109.P10280746185045235045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248610 (A020091 n + (n : ℤ)).toNat

end

end A362109.P10280746185045235045

/-! ## A362109.P5223638169985518095

`A261221(A000254(n)+ceil(2^(n-1)))`
-/

namespace A362109.P5223638169985518095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261221 (A000254 n + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat

end

end A362109.P5223638169985518095

/-! ## A362109.P7560088331961839694

`A071068(A173322(n)+A159287(n))`
-/

namespace A362109.P7560088331961839694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071068 (A173322 n + A159287 n).toNat

end

end A362109.P7560088331961839694

/-!
# A362111: Related to shifted Genocchi medians.

The programs for A362111, there is no canonical definition to state claims against.
-/

/-! ## A362111.P11473876037841723339

`A010051(n+2)+A000720(A305970(n))`
-/

namespace A362111.P11473876037841723339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2) + A000720 (A305970 n).toNat

end

end A362111.P11473876037841723339

/-! ## A362111.P15284028359856067384

`A288864(3*n+2)+A000720(A305970(n))`
-/

namespace A362111.P15284028359856067384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288864 (3 * n + 2) + A000720 (A305970 n).toNat

end

end A362111.P15284028359856067384

/-!
# A362112: a(0)=1; thereafter a(n) = 2*A110501(n+1) - A005439(n).

The programs for A362112, there is no canonical definition to state claims against.
-/

/-! ## A362112.P2624387136190216684

`2*A110501(n+1)-A005439(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A362112.P2624387136190216684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110501 (n + 1) - A005439 n

end

end A362112.P2624387136190216684

/-! ## A362112.P16781566069146286397

`A007916(A302703(n))-A036722(n)`
-/

namespace A362112.P16781566069146286397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (A302703 n).toNat - A036722 n

end

end A362112.P16781566069146286397

/-!
# A362114: Truncate Stirling's asymptotic series for 2! after n terms and round to the nearest integer.

The programs for A362114, there is no canonical definition to state claims against.
-/

/-! ## A362114.P9285244684293719980

`A240450(A000041(A114701(A000041(A026803(n+1)))))`
-/

namespace A362114.P9285244684293719980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240450 (A000041 (A114701 (A000041 (A026803 (n + 1)).toNat).toNat).toNat).toNat

end

end A362114.P9285244684293719980

/-! ## A362114.P3037185115192860899

`gcd(6, A024814(p?[2*n+5]))`
-/

namespace A362114.P3037185115192860899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A024814 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A362114.P3037185115192860899

/-! ## A362114.P10043356991752513643

`A177717(A034501(n+2))`
-/

namespace A362114.P10043356991752513643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177717 (A034501 (n + 2)).toNat

end

end A362114.P10043356991752513643

/-! ## A362114.P4437994837006433639

`gcd(6, A024814(A000040(n+3)))`
-/

namespace A362114.P4437994837006433639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A024814 (A000040 (n + 3)).toNat)

end

end A362114.P4437994837006433639

/-! ## A362114.P9630981858282740659

`A007920(C(A345913(n+3), 45))`
-/

namespace A362114.P9630981858282740659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (Nat.choose (A345913 (n + 3)).toNat 45)

end

end A362114.P9630981858282740659

/-!
# A362115: Truncate Stirling's asymptotic series for 3! after n terms and round to the nearest integer.

The programs for A362115, there is no canonical definition to state claims against.
-/

/-! ## A362115.P13229250192760934397

`A000096(floor(root(A335436(n), 4)/18)+1)+4`
-/

namespace A362115.P13229250192760934397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (⌊(A335436 n : ℝ) ^ (1 / (4 : ℝ)) / 18⌋ + 1).toNat + 4

end

end A362115.P13229250192760934397

/-! ## A362115.P5506900746140636533

`A318300(32*C(n, 53))`
-/

namespace A362115.P5506900746140636533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318300 (32 * Nat.choose n 53)

end

end A362115.P5506900746140636533

/-! ## A362115.P9111657338931103172

`A001748(A083102(C(n, 53)))`
-/

namespace A362115.P9111657338931103172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (A083102 (Nat.choose n 53)).toNat

end

end A362115.P9111657338931103172

/-! ## A362115.P5549460911027302208

`A104523(A297630(C(n, 53)))`
-/

namespace A362115.P5549460911027302208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104523 (A297630 (Nat.choose n 53)).toNat

end

end A362115.P5549460911027302208

/-! ## A362115.P7195817792871750388

`3*A262438(A349057(n+1))`
-/

namespace A362115.P7195817792871750388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A262438 (A349057 (n + 1)).toNat

end

end A362115.P7195817792871750388

/-! ## A362115.P4973900113451692814

`3*A036452(A239215(n+3))`
-/

namespace A362115.P4973900113451692814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A036452 (A239215 (n + 3)).toNat

end

end A362115.P4973900113451692814

/-! ## A362115.P2561798630895419483

`A000408(A083102(C(n, 53))+1)`
-/

namespace A362115.P2561798630895419483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000408 (A083102 (Nat.choose n 53) + 1).toNat

end

end A362115.P2561798630895419483

/-! ## A362115.P1746074035718785329

`A276086(A000032(C(n+3, 56)+2))`
-/

namespace A362115.P1746074035718785329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A000032 (Nat.choose (n + 3) 56 + 2)).toNat

end

end A362115.P1746074035718785329

/-! ## A362115.P4323797329973848421

`A276086(A002110(C(n+3, 56))+2)`
-/

namespace A362115.P4323797329973848421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A002110 (Nat.choose (n + 3) 56) + 2).toNat

end

end A362115.P4323797329973848421

/-! ## A362115.P6264522311388396868

`A167046(A276087(C(n+3, 56)))+2`
-/

namespace A362115.P6264522311388396868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167046 (A276087 (Nat.choose (n + 3) 56)).toNat + 2

end

end A362115.P6264522311388396868

/-!
# A362116: Truncate Stirling's asymptotic series for 4! after n terms and round to the nearest integer.

The programs for A362116, there is no canonical definition to state claims against.
-/

/-! ## A362116.P14460478053972546646

`24-A178798(A092921(n))`
-/

namespace A362116.P14460478053972546646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 - A178798 (A092921 n).toNat

end

end A362116.P14460478053972546646

/-!
# A362117: Concatenation of first n numbers in base 5.

The programs for A362117, there is no canonical definition to state claims against.
-/

/-! ## A362117.P3822011696827506494

`A007091(A048437(n+1))`
-/

namespace A362117.P3822011696827506494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A048437 (n + 1)).toNat

end

end A362117.P3822011696827506494

/-!
# A362118: a(n) = (10^(n*(n+1)/2)-1)/9.

The programs for A362118, the canonical program `A362118.P9891367083686615533` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362118 has offset 1).

The definition of A362118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362118.P9891367083686615533

`(10^((n+1)*(n+2)/2)-1)/9`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A362118

/-- `(10^((n+1)*(n+2)/2)-1)/9` -/
def P9891367083686615533.Spec : Prop :=
  ∀ n, P9891367083686615533.a n = (A362118 (n + 1) : ℝ)

end A362118

/-! ## A362118.P6377527517330279966

`record[A283590(∑[n])]`
-/

namespace A362118.P6377527517330279966
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283590 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362118.P6377527517330279966

namespace A362118

/-- `record[A283590(∑[n])]` -/
def P6377527517330279966.Spec : Prop :=
  ∀ n, P6377527517330279966.a n = A362118 (n + 1)

end A362118

/-! ## A362118.P7145265839858184846

`A000042(∑[n+1])`
-/

namespace A362118.P7145265839858184846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362118.P7145265839858184846

namespace A362118

/-- `A000042(∑[n+1])` -/
def P7145265839858184846.Spec : Prop :=
  ∀ n, P7145265839858184846.a n = A362118 (n + 1)

end A362118

/-! ## A362118.P16354491529494808067

`A002275(∑[n+1])`
-/

namespace A362118.P16354491529494808067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362118.P16354491529494808067

namespace A362118

/-- `A002275(∑[n+1])` -/
def P16354491529494808067.Spec : Prop :=
  ∀ n, P16354491529494808067.a n = A362118 (n + 1)

end A362118

/-! ## A362118.P6698008879188702102

`A287468(n*(n+3))`
-/

namespace A362118.P6698008879188702102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 (n * (n + 3))

end

end A362118.P6698008879188702102

namespace A362118

/-- `A287468(n*(n+3))` -/
def P6698008879188702102.Spec : Prop :=
  ∀ n, P6698008879188702102.a n = A362118 (n + 1)

end A362118

/-!
# A362126: Expansion of 1/(1 - x*(1+x)^2)^2.

The programs for A362126, the canonical program `A362126.P4932443040153652589` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362126 has offset 0).

The definition of A362126 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-3x^2+2x^3+6x^4+4x^5+x^6))` (program `A362126.P4932443040153652589`, by `A362126.P4932443040153652589.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A362126.P4932443040153652589

`ogf(1/(1-2x-3x^2+2x^3+6x^4+4x^5+x^6))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A362126

/-- `ogf(1/(1-2x-3x^2+2x^3+6x^4+4x^5+x^6))` -/
def P4932443040153652589.Spec : Prop :=
  ∀ n, P4932443040153652589.a n = A362126 n

theorem P4932443040153652589.correct : P4932443040153652589.Spec := by
  intro n
  simp only [A362126]

end A362126

/-! ## A362126.P2437035838107585667

`A291740(A004273(n))`
-/

namespace A362126.P2437035838107585667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291740 (A004273 n).toNat

end

end A362126.P2437035838107585667

namespace A362126

/-- `A291740(A004273(n))` -/
def P2437035838107585667.Spec : Prop :=
  ∀ n, P2437035838107585667.a n = A362126 n

end A362126

/-! ## A362126.P4727148861951920855

`A291740(lt[A141459(n), 2])`
-/

namespace A362126.P4727148861951920855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291740 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A362126.P4727148861951920855

namespace A362126

/-- `A291740(lt[A141459(n), 2])` -/
def P4727148861951920855.Spec : Prop :=
  ∀ n, P4727148861951920855.a n = A362126 n

end A362126

/-! ## A362126.P10020045358194787518

`A291740(lt[n, A026741(n)+1])`
-/

namespace A362126.P10020045358194787518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A362126.P10020045358194787518

namespace A362126

/-- `A291740(lt[n, A026741(n)+1])` -/
def P10020045358194787518.Spec : Prop :=
  ∀ n, P10020045358194787518.a n = A362126 n

end A362126

/-! ## A362126.P6095670561820830511

`A291740(lt[n-1, A026741(n)])`
-/

namespace A362126.P6095670561820830511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291740 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A362126.P6095670561820830511

namespace A362126

/-- `A291740(lt[n-1, A026741(n)])` -/
def P6095670561820830511.Spec : Prop :=
  ∀ n, P6095670561820830511.a n = A362126 n

end A362126

/-! ## A362126.P18331680695415567983

`A276057(2*(n+2))/2`
-/

namespace A362126.P18331680695415567983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276057 (2 * (n + 2)) : ℚ) / 2

end

end A362126.P18331680695415567983

namespace A362126

/-- `A276057(2*(n+2))/2` -/
def P18331680695415567983.Spec : Prop :=
  ∀ n, P18331680695415567983.a n = (A362126 n : ℚ)

end A362126

/-! ## A362126.P13317806218138323454

`A291740(lt[A215919(n), 1])`
-/

namespace A362126.P13317806218138323454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215919 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291740 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A362126.P13317806218138323454

namespace A362126

/-- `A291740(lt[A215919(n), 1])` -/
def P13317806218138323454.Spec : Prop :=
  ∀ n, P13317806218138323454.a n = A362126 n

end A362126

/-! ## A362126.P16666833709514374698

`A362125(∑[n+3])`
-/

namespace A362126.P16666833709514374698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362125 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362126.P16666833709514374698

namespace A362126

/-- `A362125(∑[n+3])` -/
def P16666833709514374698.Spec : Prop :=
  ∀ n, P16666833709514374698.a n = A362126 n

end A362126

/-!
# A362127: Records in A360179.

The programs for A362127, there is no canonical definition to state claims against.
-/

/-! ## A362127.P2530969912149255232

`record[A362134(n+1)]`
-/

namespace A362127.P2530969912149255232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362127.P2530969912149255232

/-! ## A362127.P15011239626815906231

`record[A360179(n+1)]`
-/

namespace A362127.P15011239626815906231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362127.P15011239626815906231

/-! ## A362127.P18168079023981431683

`A360179(A362128(n+1))`
-/

namespace A362127.P18168079023981431683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360179 (A362128 (n + 1)).toNat

end

end A362127.P18168079023981431683

/-!
# A362129: a(n) = A360179(n) mod 2.

The programs for A362129, there is no canonical definition to state claims against.
-/

/-! ## A362129.P7046387949218501236

`A360179(n+1)%2`
-/

namespace A362129.P7046387949218501236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360179 (n + 1)) 2

end

end A362129.P7046387949218501236

/-! ## A362129.P16362303452029004781

`A000035(A360179(n+1))`
-/

namespace A362129.P16362303452029004781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A360179 (n + 1)).toNat

end

end A362129.P16362303452029004781

/-! ## A362129.P4719908364109145547

`A102210(2*A360179(n+1))`
-/

namespace A362129.P4719908364109145547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102210 (2 * A360179 (n + 1)).toNat

end

end A362129.P4719908364109145547

/-! ## A362129.P12897820989954302183

`and(1, A017082(n)*A360179(n+1))`
-/

namespace A362129.P12897820989954302183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A017082 n * A360179 (n + 1))

end

end A362129.P12897820989954302183

/-! ## A362129.P5111566869596647130

`and(A010121(2*n+3), A360179(n+1))`
-/

namespace A362129.P5111566869596647130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010121 (2 * n + 3)) (A360179 (n + 1))

end

end A362129.P5111566869596647130

/-! ## A362129.P17599054528950338869

`and(A048578(n), A360179(n+1))`
-/

namespace A362129.P17599054528950338869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A360179 (n + 1))

end

end A362129.P17599054528950338869

/-! ## A362129.P14860836783915429144

`and(A020737(n), A360179(n+1))`
-/

namespace A362129.P14860836783915429144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A360179 (n + 1))

end

end A362129.P14860836783915429144

/-! ## A362129.P8972163867653312263

`and(A195744(n), A360179(n+1))`
-/

namespace A362129.P8972163867653312263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 n) (A360179 (n + 1))

end

end A362129.P8972163867653312263

/-! ## A362129.P11050543811196404140

`and(A122041(n+1), A360179(n+1))`
-/

namespace A362129.P11050543811196404140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122041 (n + 1)) (A360179 (n + 1))

end

end A362129.P11050543811196404140

/-! ## A362129.P13865674801216459857

`and(A196657(n), A360179(n+1))`
-/

namespace A362129.P13865674801216459857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196657 n) (A360179 (n + 1))

end

end A362129.P13865674801216459857

/-! ## A362129.P2143559112141664233

`and(A305262(n), A360179(n+1))`
-/

namespace A362129.P2143559112141664233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A305262 n) (A360179 (n + 1))

end

end A362129.P2143559112141664233

/-! ## A362129.P2346003240556563805

`and(A345109(n+1), A360179(n+1))`
-/

namespace A362129.P2346003240556563805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A345109 (n + 1)) (A360179 (n + 1))

end

end A362129.P2346003240556563805

/-! ## A362129.P8158895144847686731

`and(A345108(n+1), A360179(n+1))`
-/

namespace A362129.P8158895144847686731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A345108 (n + 1)) (A360179 (n + 1))

end

end A362129.P8158895144847686731

/-! ## A362129.P10035556267881002928

`and(A002064(n), A360179(n+1))`
-/

namespace A362129.P10035556267881002928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002064 n) (A360179 (n + 1))

end

end A362129.P10035556267881002928

/-! ## A362129.P6987186226406900034

`and(A080267(n+1), A360179(n+1))`
-/

namespace A362129.P6987186226406900034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080267 (n + 1)) (A360179 (n + 1))

end

end A362129.P6987186226406900034

/-! ## A362129.P80982598156673889

`and(A048477(n), A360179(n+1))`
-/

namespace A362129.P80982598156673889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048477 n) (A360179 (n + 1))

end

end A362129.P80982598156673889

/-! ## A362129.P8074746260666211977

`and(A051900(n), A360179(n+1))`
-/

namespace A362129.P8074746260666211977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051900 n) (A360179 (n + 1))

end

end A362129.P8074746260666211977

/-! ## A362129.P5305349875174401596

`and(A135471(n+1), A360179(n+1))`
-/

namespace A362129.P5305349875174401596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135471 (n + 1)) (A360179 (n + 1))

end

end A362129.P5305349875174401596

/-! ## A362129.P9754103367639303334

`and(A288038(n+1), A360179(n+1))`
-/

namespace A362129.P9754103367639303334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A288038 (n + 1)) (A360179 (n + 1))

end

end A362129.P9754103367639303334

/-! ## A362129.P9707414212371774311

`and(A048479(n), A360179(n+1))`
-/

namespace A362129.P9707414212371774311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048479 n) (A360179 (n + 1))

end

end A362129.P9707414212371774311

/-!
# A362130: a(n) = A000005(A360179(n)) mod 2.

The programs for A362130, there is no canonical definition to state claims against.
-/

/-! ## A362130.P6139849237438470583

`A010052(A360179(n+1))`
-/

namespace A362130.P6139849237438470583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A360179 (n + 1)).toNat

end

end A362130.P6139849237438470583

/-! ## A362130.P16037366481062646401

`∑{d}[A360179(n+1), A008836(#)]`
-/

namespace A362130.P16037366481062646401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008836 d

end

end A362130.P16037366481062646401

/-! ## A362130.P11489672896280455494

`A305102(A360179(n+1))%A084642(2*n+3)`
-/

namespace A362130.P11489672896280455494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305102 (A360179 (n + 1)).toNat) (A084642 (2 * n + 3))

end

end A362130.P11489672896280455494

/-! ## A362130.P15704771505529589959

`A000005(A360179(n+1))%A000005(A038881(n+1))`
-/

namespace A362130.P15704771505529589959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A360179 (n + 1)).toNat) (A000005 (A038881 (n + 1)).toNat)

end

end A362130.P15704771505529589959

/-! ## A362130.P15062618052374726935

`A219009(A360179(n+1)²)`
-/

namespace A362130.P15062618052374726935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219009 (A360179 (n + 1) ^ 2).toNat

end

end A362130.P15062618052374726935

/-! ## A362130.P6155913180815464594

`A219009(A360179(n+1)*A360179(n+1))`
-/

namespace A362130.P6155913180815464594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219009 (A360179 (n + 1) * A360179 (n + 1)).toNat

end

end A362130.P6155913180815464594

/-!
# A362132: Records in A362131.

The programs for A362132, there is no canonical definition to state claims against.
-/

/-! ## A362132.P3055368695397072103

`A362131(A362133(n+1))`
-/

namespace A362132.P3055368695397072103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362131 (A362133 (n + 1)).toNat

end

end A362132.P3055368695397072103

/-! ## A362132.P10485521482348241940

`record[A362131(A006530(n+1))]`
-/

namespace A362132.P10485521482348241940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362131 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362132.P10485521482348241940

/-! ## A362132.P2270735861476494867

`record[A362131(A020639(n+1))]`
-/

namespace A362132.P2270735861476494867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362131 (A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362132.P2270735861476494867

/-! ## A362132.P12775301054043031732

`record[A362131(2*n+1)-A322437(2*n+5)]`
-/

namespace A362132.P12775301054043031732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362131 (2 * n + 1) - A322437 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362132.P12775301054043031732

/-! ## A362132.P12459239072543837265

`A360179(A362133(n+2))`
-/

namespace A362132.P12459239072543837265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360179 (A362133 (n + 2)).toNat

end

end A362132.P12459239072543837265

/-!
# A362133: Smallest indices k where A362131(k) = A362132(n).

The programs for A362133, there is no canonical definition to state claims against.
-/

/-! ## A362133.P12839797931437224158

`A181821(n+1)+A013596(A000984(n))`
-/

namespace A362133.P12839797931437224158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1) + A013596 (A000984 n).toNat

end

end A362133.P12839797931437224158

/-! ## A362133.P9187651906680384632

`A284848(A000244(n))+A181821(n+1)`
-/

namespace A362133.P9187651906680384632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284848 (A000244 n).toNat + A181821 (n + 1)

end

end A362133.P9187651906680384632

/-! ## A362133.P17510188329684088550

`A285274(A005425(n))+A181821(n+1)`
-/

namespace A362133.P17510188329684088550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285274 (A005425 n).toNat + A181821 (n + 1)

end

end A362133.P17510188329684088550

/-! ## A362133.P12071220456994056927

`A338757(A003215(n))+A181821(n+1)`
-/

namespace A362133.P12071220456994056927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338757 (A003215 n).toNat + A181821 (n + 1)

end

end A362133.P12071220456994056927

/-! ## A362133.P10765026513938539694

`A368915(A035344(n))+A181821(n+1)`
-/

namespace A362133.P10765026513938539694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368915 (A035344 n).toNat + A181821 (n + 1)

end

end A362133.P10765026513938539694

/-!
# A362134: Novel terms in A360179, in order of appearance.

The programs for A362134, there is no canonical definition to state claims against.
-/

/-! ## A362134.P16816074099658448655

`A360179(A362135(n+1))`
-/

namespace A362134.P16816074099658448655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360179 (A362135 (n + 1)).toNat

end

end A362134.P16816074099658448655

/-! ## A362134.P17895643751043022558

`A360179(∑[A362136(n+1)])`
-/

namespace A362134.P17895643751043022558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360179 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A362134.P17895643751043022558

/-!
# A362135: Indices of novel terms in A360179.

The programs for A362135, there is no canonical definition to state claims against.
-/

/-! ## A362135.P9216711991735466366

`∑[A362136(n+1)]`
-/

namespace A362135.P9216711991735466366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362135.P9216711991735466366

/-! ## A362135.P2672253194180345075

`lt[Δ[A360179(n+1)²], 1]+1`
-/

namespace A362135.P2672253194180345075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360179 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A362135.P2672253194180345075

/-! ## A362135.P6170950313259455372

`A136754(A000292(3*n))+A006218(n)`
-/

namespace A362135.P6170950313259455372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136754 (A000292 (3 * n)).toNat + A006218 n

end

end A362135.P6170950313259455372

/-! ## A362135.P12650881384806942286

`A006218(n)+A000002(A183562(3*n+7))`
-/

namespace A362135.P12650881384806942286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n + A000002 (A183562 (3 * n + 7)).toNat

end

end A362135.P12650881384806942286

/-! ## A362135.P12025837902788464787

`∑[A354578(∏[A074293(n)])]`
-/

namespace A362135.P12025837902788464787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074293 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354578 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362135.P12025837902788464787

/-!
# A362137: Smallest size of an n-paradoxical tournament built as a directed Paley graph.

The programs for A362137, there is no canonical definition to state claims against.
-/

/-! ## A362137.P14531240263999396708

`A139421(n!*∑[1/n!]+n)`
-/

namespace A362137.P14531240263999396708
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139421 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℚ))).toNat

end

end A362137.P14531240263999396708

/-! ## A362137.P491684371297003207

`A302601(A081124(n))`
-/

namespace A362137.P491684371297003207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302601 (A081124 n).toNat

end

end A362137.P491684371297003207

/-!
# A362138: a(n) = gpf(a(n-1) + prime(n)) where gpf is the greatest prime factor and a(1)=2.

The programs for A362138, the canonical program `A362138.P16632515993235248830` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362138 has offset 1).

The definition of A362138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6038 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362138.P16632515993235248830

`A006530(A000040(n+1)+a(n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A362138

/-- `A006530(A000040(n+1)+a(n-1))` -/
def P16632515993235248830.Spec : Prop :=
  ∀ n, P16632515993235248830.a n = A362138 (n + 1)

theorem P16632515993235248830.correct : P16632515993235248830.Spec := by
  intro n
  simp only [A362138, Nat.add_sub_cancel]

end A362138

/-! ## A362138.P523735191536558585

`A006530(A006005(n+1)+a(n-1))` with `a(0)=2`
-/

namespace A362138.P523735191536558585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006530 (A006005 (n + 1) + a (n - 1)).toNat

end

end A362138.P523735191536558585

namespace A362138

/-- `A006530(A006005(n+1)+a(n-1))` -/
def P523735191536558585.Spec : Prop :=
  ∀ n, P523735191536558585.a n = A362138 (n + 1)

end A362138

/-! ## A362138.P9667556762850867503

`A006530(A008578(n+2)+a(n-1))` with `a(0)=2`
-/

namespace A362138.P9667556762850867503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006530 (A008578 (n + 2) + a (n - 1)).toNat

end

end A362138.P9667556762850867503

namespace A362138

/-- `A006530(A008578(n+2)+a(n-1))` -/
def P9667556762850867503.Spec : Prop :=
  ∀ n, P9667556762850867503.a n = A362138 (n + 1)

end A362138

/-!
# A362139: a(n) is the smallest number k with exactly n of its divisors in A037197.

The programs for A362139, there is no canonical definition to state claims against.
-/

/-! ## A362139.P14329232589454250254

`A318186(A359068(n+2))`
-/

namespace A362139.P14329232589454250254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318186 (A359068 (n + 2)).toNat

end

end A362139.P14329232589454250254

/-! ## A362139.P1504822865849504222

`A008590(A346126(a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A362139.P1504822865849504222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A008590 (A346126 (a (n - 2)).toNat).toNat

end

end A362139.P1504822865849504222

/-!
# A362140: Numbers k in A224486 for which the arithmetic derivative k' (A003415) is also in A224486.

The programs for A362140, there is no canonical definition to state claims against.
-/

/-! ## A362140.P1677355001062954263

`∩[A123093(n+1), A163782(n+1)]`
-/

namespace A362140.P1677355001062954263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362140.P1677355001062954263

/-!
# A362141: Nonprime numbers k whose arithmetic derivative k' (A003415) is a Fibonacci number (A000045).

The programs for A362141, there is no canonical definition to state claims against.
-/

/-! ## A362141.P17432186059566741287

`filter[A363462(n+1), A005171(#)]`
-/

namespace A362141.P17432186059566741287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A362141.P17432186059566741287

/-! ## A362141.P8255122363792392909

`filter[A363462(n+1), A359464(#)]`
-/

namespace A362141.P8255122363792392909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A362141.P8255122363792392909

/-! ## A362141.P2297221201081965808

`filter[A363462(n+1), A385055(#)]`
-/

namespace A362141.P2297221201081965808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A385055 (f1 j).toNat = 1) n)

end

end A362141.P2297221201081965808

/-! ## A362141.P6259591031453469714

`∩[A000379(n+1), A363462(n+1)]`
-/

namespace A362141.P6259591031453469714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362141.P6259591031453469714

/-! ## A362141.P13780895970845601513

`∩[A018252(n+1), A363462(n+1)]`
-/

namespace A362141.P13780895970845601513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362141.P13780895970845601513

/-!
# A362143: Maximum number of ways in which a set of integer-sided squares can tile an n X n square.

The programs for A362143, there is no canonical definition to state claims against.
-/

/-! ## A362143.P380004388994027377

`A362142(∑[n]+n)`
-/

namespace A362143.P380004388994027377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362142 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A362143.P380004388994027377

/-! ## A362143.P12723803569372933289

`A362142(A000096(n))+A185255(n)`
-/

namespace A362143.P12723803569372933289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362142 (A000096 n).toNat + A185255 n

end

end A362143.P12723803569372933289

/-! ## A362143.P7781778567556304671

`A362142(A000096(n))%A358886(n+2)`
-/

namespace A362143.P7781778567556304671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362142 (A000096 n).toNat) (A358886 (n + 2))

end

end A362143.P7781778567556304671

/-!
# A362144: Maximum number of ways in which a set of integer-sided squares can tile an n X 3 rectangle.

The programs for A362144, there is no canonical definition to state claims against.
-/

/-! ## A362144.P9620195803177970575

`A131883(A261051(n))`
-/

namespace A362144.P9620195803177970575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131883 (A261051 n).toNat

end

end A362144.P9620195803177970575

/-! ## A362144.P547147826470978835

`A390306(A132212(n))`
-/

namespace A362144.P547147826470978835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390306 (A132212 n).toNat

end

end A362144.P547147826470978835

/-! ## A362144.P12954803874114699743

`A065362(∏[A152983(n)])`
-/

namespace A362144.P12954803874114699743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065362 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A362144.P12954803874114699743

/-! ## A362144.P3133103733901151516

`A131883(A024950(n+1))`
-/

namespace A362144.P3133103733901151516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131883 (A024950 (n + 1)).toNat

end

end A362144.P3133103733901151516

/-! ## A362144.P11480063621258043852

`A131883(A139333(n+1))`
-/

namespace A362144.P11480063621258043852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131883 (A139333 (n + 1)).toNat

end

end A362144.P11480063621258043852

/-!
# A362145: Maximum number of ways in which a set of integer-sided squares can tile an n X 4 rectangle.

The programs for A362145, there is no canonical definition to state claims against.
-/

/-! ## A362145.P14041302171951437855

`A128101(∑[A333221(n+1)])`
-/

namespace A362145.P14041302171951437855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128101 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A362145.P14041302171951437855

/-! ## A362145.P16051767089076170117

`A245473(A149545(n))`
-/

namespace A362145.P16051767089076170117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245473 (A149545 n).toNat

end

end A362145.P16051767089076170117

/-! ## A362145.P11908338897520605365

`A245473(A149546(n))`
-/

namespace A362145.P11908338897520605365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245473 (A149546 n).toNat

end

end A362145.P11908338897520605365

/-! ## A362145.P1009849587862702832

`A245473(A149547(n))`
-/

namespace A362145.P1009849587862702832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245473 (A149547 n).toNat

end

end A362145.P1009849587862702832

/-!
# A362146: Maximum number of ways in which a set of integer-sided squares can tile an n X 5 rectangle.

The programs for A362146, there is no canonical definition to state claims against.
-/

/-! ## A362146.P15952490889700637917

`A175612(a(n-1))-2` with `a(0)=1, a(1)=1`
-/

namespace A362146.P15952490889700637917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A175612 (a (n - 1)).toNat - 2

end

end A362146.P15952490889700637917

/-! ## A362146.P8809317211733095134

`3*A213509(a(n-1))+n` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A362146.P8809317211733095134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  3 * A213509 (a (n - 1)).toNat + (n : ℤ)

end

end A362146.P8809317211733095134

/-!
# A362147: Numbers that are not cubefull.

The programs for A362147, the canonical program `A362147.P1528632840401178214` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362147 has offset 1).

The definition of A362147 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362147.P1528632840401178214

`comp[n*∏{p}[n, #²]]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A362147

/-- `comp[n*∏{p}[n, #²]]` -/
def P1528632840401178214.Spec : Prop :=
  ∀ n, (P1528632840401178214.a n : ℤ) = A362147 (n + 1)

theorem P1528632840401178214.correct : P1528632840401178214.Spec := by
  intro n
  simp only [A362147, Nat.add_sub_cancel]

end A362147

/-! ## A362147.P15025766673818662916

`eq[0, ∏{e}[n, #-#!]]`
-/

namespace A362147.P15025766673818662916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), ((Nat.factorization (f3 n) p : ℤ) - (Nat.factorial (Nat.factorization (f3 n) p) : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A362147.P15025766673818662916

namespace A362147

/-- `eq[0, ∏{e}[n, #-#!]]` -/
def P15025766673818662916.Spec : Prop :=
  ∀ n, (P15025766673818662916.a n : ℤ) = A362147 (n + 1)

end A362147

/-! ## A362147.P477103115105466863

`record[A304495((n+2)²)]`
-/

namespace A362147.P477103115105466863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304495 ((n + 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362147.P477103115105466863

namespace A362147

/-- `record[A304495((n+2)²)]` -/
def P477103115105466863.Spec : Prop :=
  ∀ n, P477103115105466863.a n = A362147 (n + 1)

end A362147

/-!
# A362148: Numbers that are neither cubefree nor cubefull.

The programs for A362148, the canonical program `A362148.P4847235968772766025` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362148 has offset 1).

The definition of A362148 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1639 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362148.P4847235968772766025

`∩[A046099(n+1), A362147(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A362148

/-- `∩[A046099(n+1), A362147(n+1)]` -/
def P4847235968772766025.Spec : Prop :=
  ∀ n, (P4847235968772766025.a n : ℤ) = A362148 (n + 1)

theorem P4847235968772766025.correct : P4847235968772766025.Spec := by
  intro n
  simp only [A362148, Nat.add_sub_cancel]

end A362148

/-! ## A362148.P3394119243074823509

`∩[A074451(n+1), A362147(n+1)]`
-/

namespace A362148.P3394119243074823509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362148.P3394119243074823509

namespace A362148

/-- `∩[A074451(n+1), A362147(n+1)]` -/
def P3394119243074823509.Spec : Prop :=
  ∀ n, (P3394119243074823509.a n : ℤ) = A362148 (n + 1)

end A362148

/-! ## A362148.P2125299704843835873

`∩[A362147(n+1), A378767(n+1)]`
-/

namespace A362148.P2125299704843835873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362148.P2125299704843835873

namespace A362148

/-- `∩[A362147(n+1), A378767(n+1)]` -/
def P2125299704843835873.Spec : Prop :=
  ∀ n, (P2125299704843835873.a n : ℤ) = A362148 (n + 1)

end A362148

/-! ## A362148.P562246343600084177

`∩[A324455(n+1), A375145(n+1)]`
-/

namespace A362148.P562246343600084177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362148.P562246343600084177

namespace A362148

/-- `∩[A324455(n+1), A375145(n+1)]` -/
def P562246343600084177.Spec : Prop :=
  ∀ n, (P562246343600084177.a n : ℤ) = A362148 (n + 1)

end A362148

/-! ## A362148.P1127600393290847487

`∩[A059404(n+1), A317493(n+1)]`
-/

namespace A362148.P1127600393290847487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362148.P1127600393290847487

namespace A362148

/-- `∩[A059404(n+1), A317493(n+1)]` -/
def P1127600393290847487.Spec : Prop :=
  ∀ n, (P1127600393290847487.a n : ℤ) = A362148 (n + 1)

end A362148

/-!
# A362153: Number of skew shapes in a 3 X n rectangle with no empty rows or columns.

The programs for A362153, the canonical program `A362153.P17756087658822904137` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362153 has offset 1).

The definition of A362153 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362153.P17756087658822904137

`n*(n+1)*(n+5)*(n+6)/12+1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A362153

/-- `n*(n+1)*(n+5)*(n+6)/12+1` -/
def P17756087658822904137.Spec : Prop :=
  ∀ n, P17756087658822904137.a n = (A362153 (n + 1) : ℚ)

end A362153

/-! ## A362153.P14671320421863338739

`abs(∑[n+2]-3-A052472(n+3))`
-/

namespace A362153.P14671320421863338739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3 - A052472 (n + 3)|

end

end A362153.P14671320421863338739

namespace A362153

/-- `abs(∑[n+2]-3-A052472(n+3))` -/
def P14671320421863338739.Spec : Prop :=
  ∀ n, P14671320421863338739.a n = A362153 (n + 1)

end A362153

/-! ## A362153.P3940673858101354608

`∑[A180118(n)+A179865(n+1)]`
-/

namespace A362153.P3940673858101354608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180118 n + A179865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362153.P3940673858101354608

namespace A362153

/-- `∑[A180118(n)+A179865(n+1)]` -/
def P3940673858101354608.Spec : Prop :=
  ∀ n, P3940673858101354608.a n = A362153 (n + 1)

end A362153

/-! ## A362153.P13267205973006822138

`∑[∑[A130130(n)+A028347(n+2)]+1]`
-/

namespace A362153.P13267205973006822138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n + A028347 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362153.P13267205973006822138

namespace A362153

/-- `∑[∑[A130130(n)+A028347(n+2)]+1]` -/
def P13267205973006822138.Spec : Prop :=
  ∀ n, P13267205973006822138.a n = A362153 (n + 1)

end A362153

/-! ## A362153.P11287617007551990167

`abs(∑[A145067(n+3)]-n)`
-/

namespace A362153.P11287617007551990167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145067 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A362153.P11287617007551990167

namespace A362153

/-- `abs(∑[A145067(n+3)]-n)` -/
def P11287617007551990167.Spec : Prop :=
  ∀ n, P11287617007551990167.a n = A362153 (n + 1)

end A362153

/-! ## A362153.P13996407861393665981

`A100754(A052905(n)+4)`
-/

namespace A362153.P13996407861393665981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100754 (A052905 n + 4).toNat

end

end A362153.P13996407861393665981

namespace A362153

/-- `A100754(A052905(n)+4)` -/
def P13996407861393665981.Spec : Prop :=
  ∀ n, P13996407861393665981.a n = A362153 (n + 1)

end A362153

/-! ## A362153.P1336561520812230310

`A100754(A055998(n+1)+2)`
-/

namespace A362153.P1336561520812230310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100754 (A055998 (n + 1) + 2).toNat

end

end A362153.P1336561520812230310

namespace A362153

/-- `A100754(A055998(n+1)+2)` -/
def P1336561520812230310.Spec : Prop :=
  ∀ n, P1336561520812230310.a n = A362153 (n + 1)

end A362153

/-! ## A362153.P17932748073798793084

`A253012(A028884(n))`
-/

namespace A362153.P17932748073798793084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253012 (A028884 n).toNat

end

end A362153.P17932748073798793084

namespace A362153

/-- `A253012(A028884(n))` -/
def P17932748073798793084.Spec : Prop :=
  ∀ n, P17932748073798793084.a n = A362153 (n + 1)

end A362153

/-! ## A362153.P5947525055537478981

`A000933(A028872(n+3))`
-/

namespace A362153.P5947525055537478981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000933 (A028872 (n + 3)).toNat

end

end A362153.P5947525055537478981

namespace A362153

/-- `A000933(A028872(n+3))` -/
def P5947525055537478981.Spec : Prop :=
  ∀ n, P5947525055537478981.a n = A362153 (n + 1)

end A362153

/-!
# A362157: Expansion of -1/(1 - x * (1-9*x)^(1/3)).

The programs for A362157, there is no canonical definition to state claims against.
-/

/-! ## A362157.P2100164111510019695

`∑[A071073(A135337(n))]-1`
-/

namespace A362157.P2100164111510019695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071073 (A135337 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A362157.P2100164111510019695

/-! ## A362157.P9165012827581954125

`A326910(A001006(n+1))-A000005(n+1)`
-/

namespace A362157.P9165012827581954125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326910 (A001006 (n + 1)).toNat - A000005 (n + 1)

end

end A362157.P9165012827581954125

/-!
# A362158: Expansion of e.g.f. -exp(x * sqrt(1-4*x)).

The programs for A362158, there is no canonical definition to state claims against.
-/

/-! ## A362158.P16447132114467573956

`A216689(n)-A175101(A005494(n))`
-/

namespace A362158.P16447132114467573956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216689 n - A175101 (A005494 n).toNat

end

end A362158.P16447132114467573956

/-!
# A362159: Expansion of e.g.f. -exp(x * (1-9*x)^(1/3)).

The programs for A362159, there is no canonical definition to state claims against.
-/

/-! ## A362159.P3422610767821178654

`A057357(A047055(n))-1`
-/

namespace A362159.P3422610767821178654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 (A047055 n).toNat - 1

end

end A362159.P3422610767821178654

/-!
# A362160: Irregular triangle read by rows: The n-th row contains 2^n integers corresponding to the words of the n-bit Gray code with the most significant bits changing fastest.

The programs for A362160, the canonical program `A362160.P8719433231678747217` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362160 has offset 0).

The definition of A362160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362160.P8719433231678747217

`A003188(A281589(n+1)-1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A362160

/-- `A003188(A281589(n+1)-1)` -/
def P8719433231678747217.Spec : Prop :=
  ∀ n, P8719433231678747217.a n = A362160 n

theorem P8719433231678747217.correct : P8719433231678747217.Spec := by
  intro n
  simp only [A362160]

end A362160

/-! ## A362160.P3021935847282890087

`A030109(A233280(n+1))`
-/

namespace A362160.P3021935847282890087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A233280 (n + 1)).toNat

end

end A362160.P3021935847282890087

namespace A362160

/-- `A030109(A233280(n+1))` -/
def P3021935847282890087.Spec : Prop :=
  ∀ n, P3021935847282890087.a n = A362160 n

end A362160

/-! ## A362160.P13460953018576950252

`A088208(n)-1`
-/

namespace A362160.P13460953018576950252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088208 n - 1

end

end A362160.P13460953018576950252

namespace A362160

/-- `A088208(n)-1` -/
def P13460953018576950252.Spec : Prop :=
  ∀ n, P13460953018576950252.a n = A362160 n

end A362160

/-! ## A362160.P475779416876159814

`A053645(A059894(A154436(n+1)))`
-/

namespace A362160.P475779416876159814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A059894 (A154436 (n + 1)).toNat).toNat

end

end A362160.P475779416876159814

namespace A362160

/-- `A053645(A059894(A154436(n+1)))` -/
def P475779416876159814.Spec : Prop :=
  ∀ n, P475779416876159814.a n = A362160 n

end A362160

/-! ## A362160.P12336893780046158969

`A099837(A007528(n+1))+A088208(n)`
-/

namespace A362160.P12336893780046158969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (A007528 (n + 1)).toNat + A088208 n

end

end A362160.P12336893780046158969

namespace A362160

/-- `A099837(A007528(n+1))+A088208(n)` -/
def P12336893780046158969.Spec : Prop :=
  ∀ n, P12336893780046158969.a n = A362160 n

end A362160

/-! ## A362160.P15186029359308616322

`A099837(A069090(n+3))+A088208(n)`
-/

namespace A362160.P15186029359308616322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (A069090 (n + 3)).toNat + A088208 n

end

end A362160.P15186029359308616322

namespace A362160

/-- `A099837(A069090(n+3))+A088208(n)` -/
def P15186029359308616322.Spec : Prop :=
  ∀ n, P15186029359308616322.a n = A362160 n

end A362160

/-! ## A362160.P10367053297062301800

`A003986(C(A088208(n), 2))`
-/

namespace A362160.P10367053297062301800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (Nat.choose (A088208 n).toNat 2)

end

end A362160.P10367053297062301800

namespace A362160

/-- `A003986(C(A088208(n), 2))` -/
def P10367053297062301800.Spec : Prop :=
  ∀ n, P10367053297062301800.a n = A362160 n

end A362160

/-! ## A362160.P11542031972722590873

`A083800(n+1)%A088208(n)`
-/

namespace A362160.P11542031972722590873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A088208 n)

end

end A362160.P11542031972722590873

namespace A362160

/-- `A083800(n+1)%A088208(n)` -/
def P11542031972722590873.Spec : Prop :=
  ∀ n, P11542031972722590873.a n = A362160 n

end A362160

/-! ## A362160.P8784807380623665817

`A070198(n)%A088208(n)`
-/

namespace A362160.P8784807380623665817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A088208 n)

end

end A362160.P8784807380623665817

namespace A362160

/-- `A070198(n)%A088208(n)` -/
def P8784807380623665817.Spec : Prop :=
  ∀ n, P8784807380623665817.a n = A362160 n

end A362160

/-! ## A362160.P7385728016602765706

`A079782(n+1)%A088208(n)`
-/

namespace A362160.P7385728016602765706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A088208 n)

end

end A362160.P7385728016602765706

namespace A362160

/-- `A079782(n+1)%A088208(n)` -/
def P7385728016602765706.Spec : Prop :=
  ∀ n, P7385728016602765706.a n = A362160 n

end A362160

/-! ## A362160.P12585278186272643832

`A083685(n+1)%A088208(n)`
-/

namespace A362160.P12585278186272643832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A088208 n)

end

end A362160.P12585278186272643832

namespace A362160

/-- `A083685(n+1)%A088208(n)` -/
def P12585278186272643832.Spec : Prop :=
  ∀ n, P12585278186272643832.a n = A362160 n

end A362160

/-! ## A362160.P4402537768989178057

`A121934(n+1)%A088208(n)`
-/

namespace A362160.P4402537768989178057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A088208 n)

end

end A362160.P4402537768989178057

namespace A362160

/-- `A121934(n+1)%A088208(n)` -/
def P4402537768989178057.Spec : Prop :=
  ∀ n, P4402537768989178057.a n = A362160 n

end A362160

/-!
# A362161: Expansion of e.g.f. exp(-x * sqrt(1-4*x)).

The programs for A362161, there is no canonical definition to state claims against.
-/

/-! ## A362161.P17401532878192456182

`or((-1)^n, A018293(2^n))`
-/

namespace A362161.P17401532878192456182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((-1) ^ n) (A018293 (2 ^ n))

end

end A362161.P17401532878192456182

/-!
# A362162: Expansion of e.g.f. exp(-x * (1-9*x)^(1/3)).

The programs for A362162, there is no canonical definition to state claims against.
-/

/-! ## A362162.P3270514591027580195

`A244392(A271426(n+1))-A018261(2*n+1)`
-/

namespace A362162.P3270514591027580195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244392 (A271426 (n + 1)).toNat - A018261 (2 * n + 1)

end

end A362162.P3270514591027580195

/-!
# A362164: Expansion of e.g.f. -exp(x * (1-3*x)^(1/3)).

The programs for A362164, there is no canonical definition to state claims against.
-/

/-! ## A362164.P1336653903604211898

`A103530(A000262(n)+3)-2`
-/

namespace A362164.P1336653903604211898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103530 (A000262 n + 3).toNat - 2

end

end A362164.P1336653903604211898

/-! ## A362164.P14083487780021819155

`A367749(n)+A105619(A105626(n))`
-/

namespace A362164.P14083487780021819155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367749 n + A105619 (A105626 n).toNat

end

end A362164.P14083487780021819155

/-!
# A362167: a(n) = the hypergraph Catalan number C_2(n).

The programs for A362167, there is no canonical definition to state claims against.
-/

/-! ## A362167.P15193110761092651440

`A369288(∑[n+1]+n)`
-/

namespace A362167.P15193110761092651440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369288 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A362167.P15193110761092651440

/-!
# A362168: a(n) = the hypergraph Catalan number C_3(n).

The programs for A362168, there is no canonical definition to state claims against.
-/

/-! ## A362168.P17255904634233854005

`A369288(∑[n+3])`
-/

namespace A362168.P17255904634233854005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369288 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362168.P17255904634233854005

/-!
# A362169: a(n) = the hypergraph Catalan number C_4(n).

The programs for A362169, there is no canonical definition to state claims against.
-/

/-! ## A362169.P1642958430602036742

`A369288(eq[3, A025581(n)])`
-/

namespace A362169.P1642958430602036742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369288 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A362169.P1642958430602036742

/-! ## A362169.P12320847622744963606

`A369288(eq[7, A099375(n)])`
-/

namespace A362169.P12320847622744963606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369288 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A362169.P12320847622744963606

/-! ## A362169.P3409775797609604183

`A369288(lt[A027538(n+4), A001156(n)])`
-/

namespace A362169.P3409775797609604183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027538 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369288 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A362169.P3409775797609604183

/-! ## A362169.P1823886340823196264

`A369288(lt[A027538(n+4), A110654(n)])`
-/

namespace A362169.P1823886340823196264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027538 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369288 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A362169.P1823886340823196264

/-! ## A362169.P1414622805923647010

`A369288(A133090(2*n+3)+A000124(n))`
-/

namespace A362169.P1414622805923647010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369288 (A133090 (2 * n + 3) + A000124 n).toNat

end

end A362169.P1414622805923647010

/-!
# A362170: a(n) = the hypergraph Catalan number C_5(n).

The programs for A362170, there is no canonical definition to state claims against.
-/

/-! ## A362170.P14327576088437313287

`A369288(∑[n+5]+5)`
-/

namespace A362170.P14327576088437313287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369288 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A362170.P14327576088437313287

/-!
# A362171: a(n) = the hypergraph Catalan number C_6(n).

The programs for A362171, there is no canonical definition to state claims against.
-/

/-! ## A362171.P574020305509412516

`A369288(eq[5, A025581(n)])`
-/

namespace A362171.P574020305509412516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369288 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A362171.P574020305509412516

/-! ## A362171.P11653300486788685738

`A369288(Δ[A023551(n+1)])`
-/

namespace A362171.P11653300486788685738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369288 (f1 (n + 1) - f1 n).toNat

end

end A362171.P11653300486788685738

/-!
# A362173: a(n) = n! * Sum_{k=0..floor(n/3)} (n/6)^k * binomial(n-2*k,k)/(n-2*k)!.

The programs for A362173, there is no canonical definition to state claims against.
-/

/-! ## A362173.P8709568081662701957

`A362043(∑[4*n])`
-/

namespace A362173.P8709568081662701957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362043 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362173.P8709568081662701957

/-! ## A362173.P6161888189525743548

`A362043(A046092(n))+A023531(3*n+4)`
-/

namespace A362173.P6161888189525743548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362043 (A046092 n).toNat + A023531 (3 * n + 4)

end

end A362173.P6161888189525743548

/-! ## A362173.P12278464428782995175

`A008619(n*A292889(n)/3)`
-/

namespace A362173.P12278464428782995175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((n : ℚ) * ((A292889 n : ℚ) / 3))).toNat

end

end A362173.P12278464428782995175

/-!
# A362174: Number of n X n matrices with nonnegative integer entries such that the sum of the elements of each row is equal to the index of that row.

The programs for A362174, there is no canonical definition to state claims against.
-/

/-! ## A362174.P12578505854959584298

`A055786(n)*A351714(A127110(n))`
-/

namespace A362174.P12578505854959584298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055786 n * A351714 (A127110 n).toNat

end

end A362174.P12578505854959584298

/-!
# A362176: Expansion of e.g.f. exp(x * (1-2*x)).

The programs for A362176, the canonical program `A362176.P11118166541437305895` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362176 has offset 0).

The definition of A362176 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362176.P11118166541437305895

`a(n-1)-4*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A362176

/-- `a(n-1)-4*(n-1)*a(n-2)` -/
def P11118166541437305895.Spec : Prop :=
  ∀ n, P11118166541437305895.a n = A362176 n

theorem P11118166541437305895.correct : P11118166541437305895.Spec := by
  intro n
  simp only [A362176]

end A362176

/-! ## A362176.P7158903393155253620

`A362277(∑[n+5]+5)`
-/

namespace A362176.P7158903393155253620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362277 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A362176.P7158903393155253620

namespace A362176

/-- `A362277(∑[n+5]+5)` -/
def P7158903393155253620.Spec : Prop :=
  ∀ n, P7158903393155253620.a n = A362176 n

end A362176

/-!
# A362177: Expansion of e.g.f. exp(x * (1-3*x)).

The programs for A362177, the canonical program `A362177.P17781341459619132593` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362177 has offset 0).

The definition of A362177 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362177.P17781341459619132593

`a(n-1)-6*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A362177

/-- `a(n-1)-6*(n-1)*a(n-2)` -/
def P17781341459619132593.Spec : Prop :=
  ∀ n, P17781341459619132593.a n = A362177 n

theorem P17781341459619132593.correct : P17781341459619132593.Spec := by
  intro n
  simp only [A362177]

end A362177

/-! ## A362177.P15592700118772251966

`A362277(eq[6, A025581(n)])`
-/

namespace A362177.P15592700118772251966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A362177.P15592700118772251966

namespace A362177

/-- `A362277(eq[6, A025581(n)])` -/
def P15592700118772251966.Spec : Prop :=
  ∀ n, P15592700118772251966.a n = A362177 n

end A362177

/-! ## A362177.P11140293878522661013

`A362277(A055999(n+4)-1)`
-/

namespace A362177.P11140293878522661013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362277 (A055999 (n + 4) - 1).toNat

end

end A362177.P11140293878522661013

namespace A362177

/-- `A362277(A055999(n+4)-1)` -/
def P11140293878522661013.Spec : Prop :=
  ∀ n, P11140293878522661013.a n = A362177 n

end A362177

/-! ## A362177.P15252748077568666906

`A362277(A000217(n+7)-7)`
-/

namespace A362177.P15252748077568666906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362277 (A000217 (n + 7) - 7).toNat

end

end A362177.P15252748077568666906

namespace A362177

/-- `A362277(A000217(n+7)-7)` -/
def P15252748077568666906.Spec : Prop :=
  ∀ n, P15252748077568666906.a n = A362177 n

end A362177

/-! ## A362177.P11099817022386138310

`A362277(A052905(n+4)-1-A007318(∑[n]))`
-/

namespace A362177.P11099817022386138310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362277 (A052905 (n + 4) - 1 - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A362177.P11099817022386138310

namespace A362177

/-- `A362277(A052905(n+4)-1-A007318(∑[n]))` -/
def P11099817022386138310.Spec : Prop :=
  ∀ n, P11099817022386138310.a n = A362177 n

end A362177

/-!
# A362179: Main diagonal of the square array A058395.

The programs for A362179, the canonical program `A362179.P9628306660228558681` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362179 has offset 0).

The definition of A362179 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362179.P9628306660228558681

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=10, a(4)=25, a(5)=61`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A362179

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P9628306660228558681.Spec : Prop :=
  ∀ n, P9628306660228558681.a n = A362179 n

theorem P9628306660228558681.correct : P9628306660228558681.Spec := by
  intro n
  simp only [A362179]

end A362179

/-! ## A362179.P7255462555409773278

`A291013(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A362179.P7255462555409773278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A291013 (n - 1) + a (n - 1)

end

end A362179.P7255462555409773278

namespace A362179

/-- `A291013(n-1)+a(n-1)` -/
def P7255462555409773278.Spec : Prop :=
  ∀ n, P7255462555409773278.a n = A362179 n

end A362179

/-! ## A362179.P33052673201104768

`A158920(n+2)-(A291013(n)+A158920(n+1))`
-/

namespace A362179.P33052673201104768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158920 (n + 2) - (A291013 n + A158920 (n + 1))

end

end A362179.P33052673201104768

namespace A362179

/-- `A158920(n+2)-(A291013(n)+A158920(n+1))` -/
def P33052673201104768.Spec : Prop :=
  ∀ n, P33052673201104768.a n = A362179 n

end A362179

/-! ## A362179.P12534962192785227873

`A058395(∑[4*n])`
-/

namespace A362179.P12534962192785227873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058395 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362179.P12534962192785227873

namespace A362179

/-- `A058395(∑[4*n])` -/
def P12534962192785227873.Spec : Prop :=
  ∀ n, P12534962192785227873.a n = A362179 n

end A362179

/-! ## A362179.P1808665811229013493

`A058395(A046092(n))^A178334(n)`
-/

namespace A362179.P1808665811229013493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058395 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A362179.P1808665811229013493

namespace A362179

/-- `A058395(A046092(n))^A178334(n)` -/
def P1808665811229013493.Spec : Prop :=
  ∀ n, P1808665811229013493.a n = (A362179 n : ℚ)

end A362179

/-! ## A362179.P10510582688722136903

`A156659(2*n)+A058395(A046092(n))`
-/

namespace A362179.P10510582688722136903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156659 (2 * n) + A058395 (A046092 n).toNat

end

end A362179.P10510582688722136903

namespace A362179

/-- `A156659(2*n)+A058395(A046092(n))` -/
def P10510582688722136903.Spec : Prop :=
  ∀ n, P10510582688722136903.a n = A362179 n

end A362179

/-! ## A362179.P1840897802066445262

`A058395(A046092(n))%A073357(n+4)`
-/

namespace A362179.P1840897802066445262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058395 (A046092 n).toNat) (A073357 (n + 4))

end

end A362179.P1840897802066445262

namespace A362179

/-- `A058395(A046092(n))%A073357(n+4)` -/
def P1840897802066445262.Spec : Prop :=
  ∀ n, P1840897802066445262.a n = A362179 n

end A362179

/-!
# A362181: Number of numbers k such that A323410(k) = n.

The programs for A362181, there is no canonical definition to state claims against.
-/

/-! ## A362181.P11456335851888545780

`A324938(n+4)^A303753(A050291(n))`
-/

namespace A362181.P11456335851888545780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324938 (n + 4) : ℚ) ^ (A303753 (A050291 n).toNat : ℤ)

end

end A362181.P11456335851888545780

/-! ## A362181.P1061229233553359814

`A324938(n+4)+A000122(A002385(n+1))`
-/

namespace A362181.P1061229233553359814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324938 (n + 4) + A000122 (A002385 (n + 1)).toNat

end

end A362181.P1061229233553359814

/-! ## A362181.P10974098571637478860

`A324938(n+4)+A167004(A230779(n+1))`
-/

namespace A362181.P10974098571637478860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324938 (n + 4) + A167004 (A230779 (n + 1)).toNat

end

end A362181.P10974098571637478860

/-! ## A362181.P295025706087650641

`A324938(n+4)+A167004(A004772(3*n+2))`
-/

namespace A362181.P295025706087650641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324938 (n + 4) + A167004 (A004772 (3 * n + 2)).toNat

end

end A362181.P295025706087650641

/-! ## A362181.P17855417126519247756

`A054977(A325244(2*n+1))*A324938(n+4)`
-/

namespace A362181.P17855417126519247756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A325244 (2 * n + 1)).toNat * A324938 (n + 4)

end

end A362181.P17855417126519247756

/-!
# A362183: Unitary highly cototient numbers: numbers k that have more solutions x to the equation A323410(x) = k than any smaller k.

The programs for A362183, there is no canonical definition to state claims against.
-/

/-! ## A362183.P11568756568229540710

`A362186(A362184(n+1))`
-/

namespace A362183.P11568756568229540710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362186 (A362184 (n + 1)).toNat

end

end A362183.P11568756568229540710

/-! ## A362183.P17098461598016528379

`A362186(A101373(n+1))+A000007(A006130(n))`
-/

namespace A362183.P17098461598016528379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362186 (A101373 (n + 1)).toNat + A000007 (A006130 n).toNat

end

end A362183.P17098461598016528379

/-! ## A362183.P819427099704385575

`A362186(A101373(n+1))+A000007(A061672(n+1))`
-/

namespace A362183.P819427099704385575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362186 (A101373 (n + 1)).toNat + A000007 (A061672 (n + 1)).toNat

end

end A362183.P819427099704385575

/-! ## A362183.P5375740828902237797

`A362186(A101373(n+1))+A000007(A011782(n+3))`
-/

namespace A362183.P5375740828902237797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362186 (A101373 (n + 1)).toNat + A000007 (A011782 (n + 3)).toNat

end

end A362183.P5375740828902237797

/-! ## A362183.P10560287720619121877

`A362186(∑[A053501(n)])`
-/

namespace A362183.P10560287720619121877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362186 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A362183.P10560287720619121877

/-!
# A362184: Record values in A362183.

The programs for A362184, there is no canonical definition to state claims against.
-/

/-! ## A362184.P11763628364650986201

`record[A362181(n+4)]`
-/

namespace A362184.P11763628364650986201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362181 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362184.P11763628364650986201

/-!
# A362185: Numbers k with a single solution x to the equation A323410(x) = k.

The programs for A362185, there is no canonical definition to state claims against.
-/

/-! ## A362185.P2330156749455329480

`A323410(A362211(n+1))`
-/

namespace A362185.P2330156749455329480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323410 (A362211 (n + 1)).toNat

end

end A362185.P2330156749455329480

/-!
# A362187: a(n) = (n^2 - n)!.

The programs for A362187, the canonical program `A362187.P12731406921776595933` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362187 has offset 0).

The definition of A362187 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n²-n)!` (program `A362187.P12731406921776595933`, by `A362187.P12731406921776595933.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A362187.P12731406921776595933

`(n²-n)!`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A362187

/-- `(n²-n)!` -/
def P12731406921776595933.Spec : Prop :=
  ∀ n, (P12731406921776595933.a n : ℤ) = A362187 n

theorem P12731406921776595933.correct : P12731406921776595933.Spec := by
  intro n
  simp only [A362187]

end A362187

/-! ## A362187.P15244780669088611308

`A010050(C(n, 2))`
-/

namespace A362187.P15244780669088611308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010050 (Nat.choose n 2)

end

end A362187.P15244780669088611308

namespace A362187

/-- `A010050(C(n, 2))` -/
def P15244780669088611308.Spec : Prop :=
  ∀ n, P15244780669088611308.a n = A362187 n

end A362187

/-! ## A362187.P1693283282177610840

`A000142(n²-n)`
-/

namespace A362187.P1693283282177610840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n ^ 2 - n)

end

end A362187.P1693283282177610840

namespace A362187

/-- `A000142(n²-n)` -/
def P1693283282177610840.Spec : Prop :=
  ∀ n, P1693283282177610840.a n = A362187 n

end A362187

/-! ## A362187.P12361478051963607742

`A133942(n²-n)`
-/

namespace A362187.P12361478051963607742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133942 (n ^ 2 - n)

end

end A362187.P12361478051963607742

namespace A362187

/-- `A133942(n²-n)` -/
def P12361478051963607742.Spec : Prop :=
  ∀ n, P12361478051963607742.a n = A362187 n

end A362187

/-! ## A362187.P1354745537664483557

`A010050(abs(∑[n]-n))`
-/

namespace A362187.P1354745537664483557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010050 |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)|.toNat

end

end A362187.P1354745537664483557

namespace A362187

/-- `A010050(abs(∑[n]-n))` -/
def P1354745537664483557.Spec : Prop :=
  ∀ n, P1354745537664483557.a n = A362187 n

end A362187

/-!
# A362188: Expansion of e.g.f. exp(x/(1-3*x)^(2/3)).

The programs for A362188, there is no canonical definition to state claims against.
-/

/-! ## A362188.P18051342369095337358

`A338329(n^(n+1))`
-/

namespace A362188.P18051342369095337358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338329 (n ^ (n + 1))

end

end A362188.P18051342369095337358

/-!
# A362191: Lexicographically earliest sequence of distinct nonnegative integers having the same concatenation of digits as the sequence 2^a(n).

The programs for A362191, there is no canonical definition to state claims against.
-/

/-! ## A362191.P3454201205597937853

`A362202(A043318(n+1))`
-/

namespace A362191.P3454201205597937853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362202 (A043318 (n + 1)).toNat

end

end A362191.P3454201205597937853

/-! ## A362191.P4145246857583485799

`A362202(A044915(n+1))`
-/

namespace A362191.P4145246857583485799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362202 (A044915 (n + 1)).toNat

end

end A362191.P4145246857583485799

/-! ## A362191.P3785013402325160514

`A362202(A055647(n+1))`
-/

namespace A362191.P3785013402325160514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362202 (A055647 (n + 1)).toNat

end

end A362191.P3785013402325160514

/-! ## A362191.P18008889029790823158

`A362202(A055648(n)+1)`
-/

namespace A362191.P18008889029790823158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362202 (A055648 n + 1).toNat

end

end A362191.P18008889029790823158

/-! ## A362191.P7961486977909057407

`A090107(A362202(n+1))`
-/

namespace A362191.P7961486977909057407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090107 (A362202 (n + 1)).toNat

end

end A362191.P7961486977909057407

/-!
# A362192: A variant of payphone permutations: given a circular booth with n payphones, one of which is already occupied, a(n) is the number ways for n-1 people to choose the payphones in order, where each person chooses an unoccupied payphone such that the closest occupied payphone is as distant as possible.

The programs for A362192, there is no canonical definition to state claims against.
-/

/-! ## A362192.P1410987746112277023

`A361296(n+1)/(n+1)`
-/

namespace A362192.P1410987746112277023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361296 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A362192.P1410987746112277023

/-!
# A362193: Number of Grassmannian permutations of size n that avoid a pattern, sigma, where sigma is a pattern of size 6 with exactly one descent.

The programs for A362193, the canonical program `A362193.P579781044568296317` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362193 has offset 0).

The definition of A362193 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362193.P579781044568296317

`1+(n-1)*n*(n+1)*(n*(n-5)+26)/120`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A362193

/-- `1+(n-1)*n*(n+1)*(n*(n-5)+26)/120` -/
def P579781044568296317.Spec : Prop :=
  ∀ n, P579781044568296317.a n = (A362193 n : ℚ)

end A362193

/-! ## A362193.P9309261328168465275

`abs(n-A006261(n))`
-/

namespace A362193.P9309261328168465275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A006261 n|

end

end A362193.P9309261328168465275

namespace A362193

/-- `abs(n-A006261(n))` -/
def P9309261328168465275.Spec : Prop :=
  ∀ n, P9309261328168465275.a n = A362193 n

end A362193

/-! ## A362193.P13830662405132048538

`abs(Δ[A008859(n)]-n)`
-/

namespace A362193.P13830662405132048538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - (n : ℤ)|

end

end A362193.P13830662405132048538

namespace A362193

/-- `abs(Δ[A008859(n)]-n)` -/
def P13830662405132048538.Spec : Prop :=
  ∀ n, P13830662405132048538.a n = A362193 n

end A362193

/-! ## A362193.P7228459406315878507

`round(A362194(n)-n*(n-1)*(n-2)*(n-3)*(n-4)*(n-5)/720)`
-/

namespace A362193.P7228459406315878507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A362194 n : ℚ) - (n : ℚ) * (((n : ℤ) - 1 : ℚ) * (((n : ℤ) - 2 : ℚ) * (((n : ℤ) - 3 : ℚ) * (((n : ℤ) - 4 : ℚ) * (((n : ℤ) - 5 : ℚ) / 720))))))

end

end A362193.P7228459406315878507

namespace A362193

/-- `round(A362194(n)-n*(n-1)*(n-2)*(n-3)*(n-4)*(n-5)/720)` -/
def P7228459406315878507.Spec : Prop :=
  ∀ n, P7228459406315878507.a n = A362193 n

end A362193

/-! ## A362193.P3875823729028762713

`abs(A000332(n)-A179257(n))`
-/

namespace A362193.P3875823729028762713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000332 n - A179257 n|

end

end A362193.P3875823729028762713

namespace A362193

/-- `abs(A000332(n)-A179257(n))` -/
def P3875823729028762713.Spec : Prop :=
  ∀ n, P3875823729028762713.a n = A362193 n

end A362193

/-! ## A362193.P11819243899335249969

`(A006261(n)-n)*A001065(A065720(n+1))`
-/

namespace A362193.P11819243899335249969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006261 n - (n : ℤ)) * A001065 (A065720 (n + 1)).toNat

end

end A362193.P11819243899335249969

namespace A362193

/-- `(A006261(n)-n)*A001065(A065720(n+1))` -/
def P11819243899335249969.Spec : Prop :=
  ∀ n, P11819243899335249969.a n = A362193 n

end A362193

/-!
# A362194: Number of Grassmannian permutations of size n that avoid a pattern, sigma, where sigma is a pattern of size 7 with exactly one descent.

The programs for A362194, the canonical program `A362194.P824322354515658544` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362194 has offset 0).

The definition of A362194 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362194.P824322354515658544

`A008859(n)-n`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A362194

/-- `A008859(n)-n` -/
def P824322354515658544.Spec : Prop :=
  ∀ n, P824322354515658544.a n = A362194 n

theorem P824322354515658544.correct : P824322354515658544.Spec := by
  intro n
  simp only [A362194]

end A362194

/-! ## A362194.P10807854100136455500

`Δ[A008860(n)]-n`
-/

namespace A362194.P10807854100136455500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A362194.P10807854100136455500

namespace A362194

/-- `Δ[A008860(n)]-n` -/
def P10807854100136455500.Spec : Prop :=
  ∀ n, P10807854100136455500.a n = A362194 n

end A362194

/-! ## A362194.P13938801295317504234

`A115567(n)+1-n`
-/

namespace A362194.P13938801295317504234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115567 n + (1 - (n : ℤ))

end

end A362194.P13938801295317504234

namespace A362194

/-- `A115567(n)+1-n` -/
def P13938801295317504234.Spec : Prop :=
  ∀ n, P13938801295317504234.a n = A362194 n

end A362194

/-! ## A362194.P8059069283314821477

`∑[A057703(abs(1-n))]`
-/

namespace A362194.P8059069283314821477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057703 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362194.P8059069283314821477

namespace A362194

/-- `∑[A057703(abs(1-n))]` -/
def P8059069283314821477.Spec : Prop :=
  ∀ n, P8059069283314821477.a n = A362194 n

end A362194

/-! ## A362194.P1552084586809530607

`A006261(n)+C(n, 6)-n`
-/

namespace A362194.P1552084586809530607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006261 n + (Nat.choose n 6 : ℤ) - (n : ℤ)

end

end A362194.P1552084586809530607

namespace A362194

/-- `A006261(n)+C(n, 6)-n` -/
def P1552084586809530607.Spec : Prop :=
  ∀ n, P1552084586809530607.a n = A362194 n

end A362194

/-! ## A362194.P18344713348363134081

`A362193(n)+A000579(n)`
-/

namespace A362194.P18344713348363134081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362193 n + A000579 n

end

end A362194.P18344713348363134081

namespace A362194

/-- `A362193(n)+A000579(n)` -/
def P18344713348363134081.Spec : Prop :=
  ∀ n, P18344713348363134081.a n = A362194 n

end A362194

/-! ## A362194.P4139087992696938736

`A000579(n)+A006261(n)-n`
-/

namespace A362194.P4139087992696938736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 n + (A006261 n - (n : ℤ))

end

end A362194.P4139087992696938736

namespace A362194

/-- `A000579(n)+A006261(n)-n` -/
def P4139087992696938736.Spec : Prop :=
  ∀ n, P4139087992696938736.a n = A362194 n

end A362194

/-! ## A362194.P16581565268704340897

`A188557(n+1)-(A188556(n+1)+n)`
-/

namespace A362194.P16581565268704340897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188557 (n + 1) - (A188556 (n + 1) + (n : ℤ))

end

end A362194.P16581565268704340897

namespace A362194

/-- `A188557(n+1)-(A188556(n+1)+n)` -/
def P16581565268704340897.Spec : Prop :=
  ∀ n, P16581565268704340897.a n = A362194 n

theorem P16581565268704340897.correct : P16581565268704340897.Spec := by
  intro n
  simp only [A362194, Nat.add_sub_cancel, A362194.P16581565268704340897.a, A362194.P824322354515658544.a, A008859, A008859.P14957720110934266118.a, A188556, A188556.P2471542906957635104.f1, A188556.P2471542906957635104.a, A188557, A188557.P4941890526069849708.a, A006261, A006261.P4266430943369696028.a, A188555, A188555.P17677957703824641780.a, A000127, A000127.P3574234740416859874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A362194

/-! ## A362194.P746637735219143350

`Δ[A116082(n)]-n`
-/

namespace A362194.P746637735219143350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116082 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A362194.P746637735219143350

namespace A362194

/-- `Δ[A116082(n)]-n` -/
def P746637735219143350.Spec : Prop :=
  ∀ n, P746637735219143350.a n = A362194 n

end A362194

/-! ## A362194.P18127659140705550525

`Δ[Δ[A008861(n)]]-n`
-/

namespace A362194.P18127659140705550525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008861 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A362194.P18127659140705550525

namespace A362194

/-- `Δ[Δ[A008861(n)]]-n` -/
def P18127659140705550525.Spec : Prop :=
  ∀ n, P18127659140705550525.a n = A362194 n

end A362194

/-! ## A362194.P5901880585009077645

`A116082(n+1)-(A116082(n)+n)`
-/

namespace A362194.P5901880585009077645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116082 (n + 1) - (A116082 n + (n : ℤ))

end

end A362194.P5901880585009077645

namespace A362194

/-- `A116082(n+1)-(A116082(n)+n)` -/
def P5901880585009077645.Spec : Prop :=
  ∀ n, P5901880585009077645.a n = A362194 n

end A362194

/-! ## A362194.P1600623523265005767

`A362195(n+1)+A362196(n)-A362196(n+1)`
-/

namespace A362194.P1600623523265005767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362195 (n + 1) + (A362196 n - A362196 (n + 1))

end

end A362194.P1600623523265005767

namespace A362194

/-- `A362195(n+1)+A362196(n)-A362196(n+1)` -/
def P1600623523265005767.Spec : Prop :=
  ∀ n, P1600623523265005767.a n = A362194 n

end A362194

/-! ## A362194.P15896698641081055151

`Δ[Δ[A116690(n)]]-n`
-/

namespace A362194.P15896698641081055151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116690 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A362194.P15896698641081055151

namespace A362194

/-- `Δ[Δ[A116690(n)]]-n` -/
def P15896698641081055151.Spec : Prop :=
  ∀ n, P15896698641081055151.a n = A362194 n

end A362194

/-! ## A362194.P16615754830899737631

`Δ[Δ[A362196(n)]]-n`
-/

namespace A362194.P16615754830899737631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A362194.P16615754830899737631

namespace A362194

/-- `Δ[Δ[A362196(n)]]-n` -/
def P16615754830899737631.Spec : Prop :=
  ∀ n, P16615754830899737631.a n = A362194 n

end A362194

/-! ## A362194.P12354115452887555573

`A000325(n)-A035039(n)`
-/

namespace A362194.P12354115452887555573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n - A035039 n

end

end A362194.P12354115452887555573

namespace A362194

/-- `A000325(n)-A035039(n)` -/
def P12354115452887555573.Spec : Prop :=
  ∀ n, P12354115452887555573.a n = A362194 n

theorem P12354115452887555573.correct : P12354115452887555573.Spec := by
  intro n
  simp only [A362194, Nat.add_sub_cancel, A362194.P12354115452887555573.a, A362194.P824322354515658544.a, A000325, A000325.P17729744711211405807.a, A008859, A008859.P14957720110934266118.a, A035039, A035039.P702556951674997886.a, A000079, A000079.P10855139691139572931.a, A006261, A006261.P4266430943369696028.a, A000127, A000127.P3574234740416859874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A362194

/-! ## A362194.P11499187924874884261

`A000295(n)+1-A035039(n)`
-/

namespace A362194.P11499187924874884261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n + (1 - A035039 n)

end

end A362194.P11499187924874884261

namespace A362194

/-- `A000295(n)+1-A035039(n)` -/
def P11499187924874884261.Spec : Prop :=
  ∀ n, P11499187924874884261.a n = A362194 n

theorem P11499187924874884261.correct : P11499187924874884261.Spec := by
  intro n
  simp only [A362194, Nat.add_sub_cancel, A362194.P11499187924874884261.a, A362194.P824322354515658544.a, A000295, A000295.P9955939544913215267.a, A008859, A008859.P14957720110934266118.a, A035039, A035039.P702556951674997886.a, A000079, A000079.P10855139691139572931.a, A006261, A006261.P4266430943369696028.a, A000127, A000127.P3574234740416859874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A362194

/-!
# A362195: Number of Grassmannian permutations of size n that avoid a pattern, sigma, where sigma is a pattern of size 8 with exactly one descent.

The programs for A362195, the canonical program `A362195.P3919212362460993078` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362195 has offset 0).

The definition of A362195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362195.P3919212362460993078

`A008860(n)-n`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A362195

/-- `A008860(n)-n` -/
def P3919212362460993078.Spec : Prop :=
  ∀ n, P3919212362460993078.a n = A362195 n

theorem P3919212362460993078.correct : P3919212362460993078.Spec := by
  intro n
  simp only [A362195]

end A362195

/-! ## A362195.P18427431656721777869

`Δ[A008861(n)]-n`
-/

namespace A362195.P18427431656721777869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A362195.P18427431656721777869

namespace A362195

/-- `Δ[A008861(n)]-n` -/
def P18427431656721777869.Spec : Prop :=
  ∀ n, P18427431656721777869.a n = A362195 n

end A362195

/-! ## A362195.P15751119497208735218

`A116082(n)+1-n`
-/

namespace A362195.P15751119497208735218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116082 n + (1 - (n : ℤ))

end

end A362195.P15751119497208735218

namespace A362195

/-- `A116082(n)+1-n` -/
def P15751119497208735218.Spec : Prop :=
  ∀ n, P15751119497208735218.a n = A362195 n

end A362195

/-! ## A362195.P661207397578313227

`∑[A115567(abs(1-n))]`
-/

namespace A362195.P661207397578313227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115567 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362195.P661207397578313227

namespace A362195

/-- `∑[A115567(abs(1-n))]` -/
def P661207397578313227.Spec : Prop :=
  ∀ n, P661207397578313227.a n = A362195 n

end A362195

/-! ## A362195.P142928453686830521

`∑[A008859(comp[2*(n+1)]-n)]-n`
-/

namespace A362195.P142928453686830521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A362195.P142928453686830521

namespace A362195

/-- `∑[A008859(comp[2*(n+1)]-n)]-n` -/
def P142928453686830521.Spec : Prop :=
  ∀ n, P142928453686830521.a n = A362195 n

end A362195

/-! ## A362195.P6075887071439127002

`A008861(n+1)-(A008861(n)+n)`
-/

namespace A362195.P6075887071439127002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008861 (n + 1) - (A008861 n + (n : ℤ))

end

end A362195.P6075887071439127002

namespace A362195

/-- `A008861(n+1)-(A008861(n)+n)` -/
def P6075887071439127002.Spec : Prop :=
  ∀ n, P6075887071439127002.a n = A362195 n

end A362195

/-! ## A362195.P2391113360783501517

`A188558(n+1)-(A188557(n+1)+n)`
-/

namespace A362195.P2391113360783501517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188558 (n + 1) - (A188557 (n + 1) + (n : ℤ))

end

end A362195.P2391113360783501517

namespace A362195

/-- `A188558(n+1)-(A188557(n+1)+n)` -/
def P2391113360783501517.Spec : Prop :=
  ∀ n, P2391113360783501517.a n = A362195 n

end A362195

/-! ## A362195.P5708625724588326595

`Δ[A116690(n)]-n`
-/

namespace A362195.P5708625724588326595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A362195.P5708625724588326595

namespace A362195

/-- `Δ[A116690(n)]-n` -/
def P5708625724588326595.Spec : Prop :=
  ∀ n, P5708625724588326595.a n = A362195 n

end A362195

/-! ## A362195.P18263767385400289567

`Δ[Δ[A008862(n)]]-n`
-/

namespace A362195.P18263767385400289567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A362195.P18263767385400289567

namespace A362195

/-- `Δ[Δ[A008862(n)]]-n` -/
def P18263767385400289567.Spec : Prop :=
  ∀ n, P18263767385400289567.a n = A362195 n

end A362195

/-! ## A362195.P1769682962981131236

`Δ[Δ[A362197(n)]]-n`
-/

namespace A362195.P1769682962981131236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362197 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A362195.P1769682962981131236

namespace A362195

/-- `Δ[Δ[A362197(n)]]-n` -/
def P1769682962981131236.Spec : Prop :=
  ∀ n, P1769682962981131236.a n = A362195 n

end A362195

/-! ## A362195.P8942397853544362891

`A362196(n+1)+A362197(n)-A362197(n+1)`
-/

namespace A362195.P8942397853544362891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362196 (n + 1) + (A362197 n - A362197 (n + 1))

end

end A362195.P8942397853544362891

namespace A362195

/-- `A362196(n+1)+A362197(n)-A362197(n+1)` -/
def P8942397853544362891.Spec : Prop :=
  ∀ n, P8942397853544362891.a n = A362195 n

end A362195

/-! ## A362195.P8996881819013894852

`A000325(n)-A035040(n)`
-/

namespace A362195.P8996881819013894852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n - A035040 n

end

end A362195.P8996881819013894852

namespace A362195

/-- `A000325(n)-A035040(n)` -/
def P8996881819013894852.Spec : Prop :=
  ∀ n, P8996881819013894852.a n = A362195 n

end A362195

/-! ## A362195.P13748700488057220891

`A000295(n)+1-A035040(n)`
-/

namespace A362195.P13748700488057220891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n + (1 - A035040 n)

end

end A362195.P13748700488057220891

namespace A362195

/-- `A000295(n)+1-A035040(n)` -/
def P13748700488057220891.Spec : Prop :=
  ∀ n, P13748700488057220891.a n = A362195 n

end A362195

/-! ## A362195.P11110624763854538799

`A000079(n)-(A035040(n)+n)`
-/

namespace A362195.P11110624763854538799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A035040 n + (n : ℤ))

end

end A362195.P11110624763854538799

namespace A362195

/-- `A000079(n)-(A035040(n)+n)` -/
def P11110624763854538799.Spec : Prop :=
  ∀ n, P11110624763854538799.a n = A362195 n

end A362195

/-!
# A362196: Number of Grassmannian permutations of size n that avoid a pattern, sigma, where sigma is a pattern of size 9 with exactly one descent.

The programs for A362196, the canonical program `A362196.P10325085165088880186` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362196 has offset 0).

The definition of A362196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362196.P10325085165088880186

`A008861(n)-n`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A362196

/-- `A008861(n)-n` -/
def P10325085165088880186.Spec : Prop :=
  ∀ n, P10325085165088880186.a n = A362196 n

theorem P10325085165088880186.correct : P10325085165088880186.Spec := by
  intro n
  simp only [A362196]

end A362196

/-! ## A362196.P1876632275731696704

`Δ[A008862(n)]-n`
-/

namespace A362196.P1876632275731696704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A362196.P1876632275731696704

namespace A362196

/-- `Δ[A008862(n)]-n` -/
def P1876632275731696704.Spec : Prop :=
  ∀ n, P1876632275731696704.a n = A362196 n

end A362196

/-! ## A362196.P13326965359679716420

`A116690(n)+1-n`
-/

namespace A362196.P13326965359679716420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116690 n + (1 - (n : ℤ))

end

end A362196.P13326965359679716420

namespace A362196

/-- `A116690(n)+1-n` -/
def P13326965359679716420.Spec : Prop :=
  ∀ n, P13326965359679716420.a n = A362196 n

end A362196

/-! ## A362196.P11979854115478038168

`∑[A116082(abs(1-n))]`
-/

namespace A362196.P11979854115478038168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116082 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362196.P11979854115478038168

namespace A362196

/-- `∑[A116082(abs(1-n))]` -/
def P11979854115478038168.Spec : Prop :=
  ∀ n, P11979854115478038168.a n = A362196 n

end A362196

/-! ## A362196.P6700946072406730556

`∑[A008860(abs(1-n))]-1-n`
-/

namespace A362196.P6700946072406730556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008860 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 - (n : ℤ)

end

end A362196.P6700946072406730556

namespace A362196

/-- `∑[A008860(abs(1-n))]-1-n` -/
def P6700946072406730556.Spec : Prop :=
  ∀ n, P6700946072406730556.a n = A362196 n

end A362196

/-! ## A362196.P4927873746234257913

`A188559(n+1)-(A188558(n+1)+n)`
-/

namespace A362196.P4927873746234257913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188559 (n + 1) - (A188558 (n + 1) + (n : ℤ))

end

end A362196.P4927873746234257913

namespace A362196

/-- `A188559(n+1)-(A188558(n+1)+n)` -/
def P4927873746234257913.Spec : Prop :=
  ∀ n, P4927873746234257913.a n = A362196 n

theorem P4927873746234257913.correct : P4927873746234257913.Spec := by
  intro n
  simp only [A362196, Nat.add_sub_cancel, A362196.P4927873746234257913.a, A362196.P10325085165088880186.a, A008861, A008861.P14057265660229562183.f1, A008861.P14057265660229562183.a, A188558, A188558.P17038073912110487584.a, A188559, A188559.P6003239586972994998.a, A008860, A008860.P18332775515594479900.a, A188557, A188557.P4941890526069849708.a, A008859, A008859.P14957720110934266118.a, A188556, A188556.P2471542906957635104.f1, A188556.P2471542906957635104.a, A006261, A006261.P4266430943369696028.a, A188555, A188555.P17677957703824641780.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A362196

/-! ## A362196.P6076626463781704531

`Δ[Δ[A008863(n)]]-n`
-/

namespace A362196.P6076626463781704531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008863 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A362196.P6076626463781704531

namespace A362196

/-- `Δ[Δ[A008863(n)]]-n` -/
def P6076626463781704531.Spec : Prop :=
  ∀ n, P6076626463781704531.a n = A362196 n

end A362196

/-! ## A362196.P3198358255572640252

`A000325(n)-A035041(n)`
-/

namespace A362196.P3198358255572640252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n - A035041 n

end

end A362196.P3198358255572640252

namespace A362196

/-- `A000325(n)-A035041(n)` -/
def P3198358255572640252.Spec : Prop :=
  ∀ n, P3198358255572640252.a n = A362196 n

theorem P3198358255572640252.correct : P3198358255572640252.Spec := by
  intro n
  simp only [A362196, Nat.add_sub_cancel, A362196.P3198358255572640252.a, A362196.P10325085165088880186.a, A000325, A000325.P17729744711211405807.a, A008861, A008861.P14057265660229562183.f1, A008861.P14057265660229562183.a, A035041, A035041.P5013102862860512790.a, A000079, A000079.P10855139691139572931.a, A008860, A008860.P18332775515594479900.a, A008859, A008859.P14957720110934266118.a, A006261, A006261.P4266430943369696028.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A362196

/-! ## A362196.P14157233294305481228

`A000295(n)+1-A035041(n)`
-/

namespace A362196.P14157233294305481228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n + (1 - A035041 n)

end

end A362196.P14157233294305481228

namespace A362196

/-- `A000295(n)+1-A035041(n)` -/
def P14157233294305481228.Spec : Prop :=
  ∀ n, P14157233294305481228.a n = A362196 n

theorem P14157233294305481228.correct : P14157233294305481228.Spec := by
  intro n
  simp only [A362196, Nat.add_sub_cancel, A362196.P14157233294305481228.a, A362196.P10325085165088880186.a, A000295, A000295.P9955939544913215267.a, A008861, A008861.P14057265660229562183.f1, A008861.P14057265660229562183.a, A035041, A035041.P5013102862860512790.a, A000079, A000079.P10855139691139572931.a, A008860, A008860.P18332775515594479900.a, A008859, A008859.P14957720110934266118.a, A006261, A006261.P4266430943369696028.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A362196

/-! ## A362196.P5051208828943267872

`A000079(n)-(A035041(n)+n)`
-/

namespace A362196.P5051208828943267872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A035041 n + (n : ℤ))

end

end A362196.P5051208828943267872

namespace A362196

/-- `A000079(n)-(A035041(n)+n)` -/
def P5051208828943267872.Spec : Prop :=
  ∀ n, P5051208828943267872.a n = A362196 n

theorem P5051208828943267872.correct : P5051208828943267872.Spec := by
  intro n
  simp only [A362196, Nat.add_sub_cancel, A362196.P5051208828943267872.a, A362196.P10325085165088880186.a, A000079, A000079.P10855139691139572931.a, A008861, A008861.P14057265660229562183.f1, A008861.P14057265660229562183.a, A035041, A035041.P5013102862860512790.a, A008860, A008860.P18332775515594479900.a, A008859, A008859.P14957720110934266118.a, A006261, A006261.P4266430943369696028.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A362196

/-!
# A362197: Number of Grassmannian permutations of size n that avoid a pattern, sigma, where sigma is a pattern of size 10 with exactly one descent.

The programs for A362197, the canonical program `A362197.P8596603980637624740` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362197 has offset 0).

The definition of A362197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362197.P8596603980637624740

`A008862(n)-n`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A362197

/-- `A008862(n)-n` -/
def P8596603980637624740.Spec : Prop :=
  ∀ n, P8596603980637624740.a n = A362197 n

theorem P8596603980637624740.correct : P8596603980637624740.Spec := by
  intro n
  simp only [A362197]

end A362197

/-! ## A362197.P840576525956210328

`∑[A116690(abs(1-n))]`
-/

namespace A362197.P840576525956210328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116690 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362197.P840576525956210328

namespace A362197

/-- `∑[A116690(abs(1-n))]` -/
def P840576525956210328.Spec : Prop :=
  ∀ n, P840576525956210328.a n = A362197 n

end A362197

/-! ## A362197.P12518465994416965579

`A008861(n-1)+a(n-1)-1` with `a(0)=1`
-/

namespace A362197.P12518465994416965579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008861 (n - 1) + a (n - 1) - 1

end

end A362197.P12518465994416965579

namespace A362197

/-- `A008861(n-1)+a(n-1)-1` -/
def P12518465994416965579.Spec : Prop :=
  ∀ n, P12518465994416965579.a n = A362197 n

end A362197

/-! ## A362197.P4280928323883216841

`A115205(n)+A116690(n)-n`
-/

namespace A362197.P4280928323883216841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115205 n + (A116690 n - (n : ℤ))

end

end A362197.P4280928323883216841

namespace A362197

/-- `A115205(n)+A116690(n)-n` -/
def P4280928323883216841.Spec : Prop :=
  ∀ n, P4280928323883216841.a n = A362197 n

end A362197

/-! ## A362197.P2343138064192429292

`Δ[A008863(n)]-n`
-/

namespace A362197.P2343138064192429292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A362197.P2343138064192429292

namespace A362197

/-- `Δ[A008863(n)]-n` -/
def P2343138064192429292.Spec : Prop :=
  ∀ n, P2343138064192429292.a n = A362197 n

end A362197

/-! ## A362197.P4797776401517892321

`Δ[Δ[A219531(n)]]-n`
-/

namespace A362197.P4797776401517892321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219531 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A362197.P4797776401517892321

namespace A362197

/-- `Δ[Δ[A219531(n)]]-n` -/
def P4797776401517892321.Spec : Prop :=
  ∀ n, P4797776401517892321.a n = A362197 n

end A362197

/-! ## A362197.P15700924322574270715

`A000325(n)-A035042(n)`
-/

namespace A362197.P15700924322574270715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n - A035042 n

end

end A362197.P15700924322574270715

namespace A362197

/-- `A000325(n)-A035042(n)` -/
def P15700924322574270715.Spec : Prop :=
  ∀ n, P15700924322574270715.a n = A362197 n

theorem P15700924322574270715.correct : P15700924322574270715.Spec := by
  intro n
  simp only [A362197, Nat.add_sub_cancel, A362197.P15700924322574270715.a, A362197.P8596603980637624740.a, A000325, A000325.P17729744711211405807.a, A008862, A008862.P15109180093103356418.a, A035042, A035042.P1670210666577549716.a, A008861, A008861.P14057265660229562183.f1, A008861.P14057265660229562183.a, A008860, A008860.P18332775515594479900.a, A008859, A008859.P14957720110934266118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A362197

/-! ## A362197.P3311125739077448470

`A000079(n)-(A035042(n)+n)`
-/

namespace A362197.P3311125739077448470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A035042 n + (n : ℤ))

end

end A362197.P3311125739077448470

namespace A362197

/-- `A000079(n)-(A035042(n)+n)` -/
def P3311125739077448470.Spec : Prop :=
  ∀ n, P3311125739077448470.a n = A362197 n

theorem P3311125739077448470.correct : P3311125739077448470.Spec := by
  intro n
  simp only [A362197, Nat.add_sub_cancel, A362197.P3311125739077448470.a, A362197.P8596603980637624740.a, A000079, A000079.P10855139691139572931.a, A008862, A008862.P15109180093103356418.a, A035042, A035042.P1670210666577549716.a, A008861, A008861.P14057265660229562183.f1, A008861.P14057265660229562183.a, A008860, A008860.P18332775515594479900.a, A008859, A008859.P14957720110934266118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A362197

