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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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
# A104500: Number of different groupings among the hierarchical orderings of n unlabeled elements.

The programs for A104500, there is no canonical definition to state claims against.
-/

/-! ## A104500.P1929857314074648643

`A127684(A000079(n))+3*n*2^(n-1)+1-n`
-/

namespace A104500.P1929857314074648643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127684 (A000079 n).toNat : ℚ) + (3 * ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) + 1 - (n : ℚ))

end

end A104500.P1929857314074648643

/-! ## A104500.P12293348211257189500

`A073188(A049684(n))+A006483(n)`
-/

namespace A104500.P12293348211257189500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A049684 n).toNat + A006483 n

end

end A104500.P12293348211257189500

/-!
# A104501: Coefficients of the A-Dyson Mod 27 identity.

The programs for A104501, there is no canonical definition to state claims against.
-/

/-! ## A104501.P15599473674562982165

`A325856(n)+A302110(A008862(n))`
-/

namespace A104501.P15599473674562982165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325856 n + A302110 (A008862 n).toNat

end

end A104501.P15599473674562982165

/-! ## A104501.P11218600154029225259

`A325856(n)+A290825(A184955(n))`
-/

namespace A104501.P11218600154029225259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325856 n + A290825 (A184955 n).toNat

end

end A104501.P11218600154029225259

/-! ## A104501.P13045461641413494779

`A325856(n)+A323510(A257621(n))`
-/

namespace A104501.P13045461641413494779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325856 n + A323510 (A257621 n).toNat

end

end A104501.P13045461641413494779

/-! ## A104501.P17347770845306938443

`A328546(n)-A103675(A001629(n))`
-/

namespace A104501.P17347770845306938443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328546 n - A103675 (A001629 n).toNat

end

end A104501.P17347770845306938443

/-! ## A104501.P15135997319205794198

`A325856(n)+A055668(A229155(n+1))`
-/

namespace A104501.P15135997319205794198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325856 n + A055668 (A229155 (n + 1)).toNat

end

end A104501.P15135997319205794198

/-!
# A104502: Number of partitions where no part is a multiple of 9.

The programs for A104502, there is no canonical definition to state claims against.
-/

/-! ## A104502.P2543014538556107211

`A286653(A000217(n+9)-9)`
-/

namespace A104502.P2543014538556107211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A000217 (n + 9) - 9).toNat

end

end A104502.P2543014538556107211

/-! ## A104502.P6953772573856416758

`A286653(A000096(n+7)+n+1)`
-/

namespace A104502.P6953772573856416758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A104502.P6953772573856416758

/-! ## A104502.P2421054473803106320

`A286653(A000124(n+8)+n-1)`
-/

namespace A104502.P2421054473803106320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A000124 (n + 8) + ((n : ℤ) - 1)).toNat

end

end A104502.P2421054473803106320

/-! ## A104502.P16429994820855827445

`A286653(A167487(n+6)+A005408(n))`
-/

namespace A104502.P16429994820855827445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A167487 (n + 6) + A005408 n).toNat

end

end A104502.P16429994820855827445

/-!
# A104503: Coefficients of the C-Dyson Mod 27 identity.

The programs for A104503, there is no canonical definition to state claims against.
-/

/-! ## A104503.P8078798852517251888

`A027340(n)-A025465(A018143(n))`
-/

namespace A104503.P8078798852517251888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027340 n - A025465 (A018143 n).toNat

end

end A104503.P8078798852517251888

/-! ## A104503.P12534348068585809344

`A027340(n)-A184944(A058343(n))`
-/

namespace A104503.P12534348068585809344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027340 n - A184944 (A058343 n).toNat

end

end A104503.P12534348068585809344

/-! ## A104503.P8929551063367707938

`A027340(n)-A333382(A185044(n))`
-/

namespace A104503.P8929551063367707938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027340 n - A333382 (A185044 n).toNat

end

end A104503.P8929551063367707938

/-! ## A104503.P10076917812450150095

`A027340(n)-A288707(A188947(n+1))`
-/

namespace A104503.P10076917812450150095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027340 n - A288707 (A188947 (n + 1)).toNat

end

end A104503.P10076917812450150095

/-! ## A104503.P5139167161702257609

`A027340(n)-A324731(A275504(n+1))`
-/

namespace A104503.P5139167161702257609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027340 n - A324731 (A275504 (n + 1)).toNat

end

end A104503.P5139167161702257609

/-!
# A104504: Coefficients of the D-Dyson mod 27 identity.

The programs for A104504, there is no canonical definition to state claims against.
-/

/-! ## A104504.P1105489455790108274

`A104501(n+2)-A104503(n+1)`
-/

namespace A104504.P1105489455790108274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104501 (n + 2) - A104503 (n + 1)

end

end A104504.P1105489455790108274

/-! ## A104504.P5795750807799477537

`A027337(n)-A090477(A059197(n+1))`
-/

namespace A104504.P5795750807799477537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 n - A090477 (A059197 (n + 1)).toNat

end

end A104504.P5795750807799477537

/-! ## A104504.P12453147618065058121

`A027337(n)-A185284(A060394(n+1))`
-/

namespace A104504.P12453147618065058121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 n - A185284 (A060394 (n + 1)).toNat

end

end A104504.P12453147618065058121

/-! ## A104504.P10943051677998257888

`A027337(n)+A010815(A016838(n))`
-/

namespace A104504.P10943051677998257888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 n + A010815 (A016838 n).toNat

end

end A104504.P10943051677998257888

/-! ## A104504.P16342045176339110532

`A027337(n)-A185203(A207194(n))`
-/

namespace A104504.P16342045176339110532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 n - A185203 (A207194 n).toNat

end

end A104504.P16342045176339110532

/-!
# A104505: Triangle, read by rows, equal to the right-hand side of the triangle A084610, with row n listing the coefficients of (1+x-x^2)^n: T(n,k) = [x^(n+k)] (1+x-x^2)^n, for n>=k>=0.

The programs for A104505, there is no canonical definition to state claims against.
-/

/-! ## A104505.P1635649643498973106

`A084610(lt[(ceil(sqrt(n))²-n)², n]-1)`
-/

namespace A104505.P1635649643498973106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084610 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n - 1)

end

end A104505.P1635649643498973106

/-! ## A104505.P18306489317051955034

`A084610(A061885(n))`
-/

namespace A104505.P18306489317051955034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084610 (A061885 n).toNat

end

end A104505.P18306489317051955034

/-! ## A104505.P14154853436328247409

`A084610(eq[1, A118175(n)])`
-/

namespace A104505.P14154853436328247409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104505.P14154853436328247409

/-! ## A104505.P7296582244009877013

`A084610(A057944(n)+n)`
-/

namespace A104505.P7296582244009877013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084610 (A057944 n + (n : ℤ)).toNat

end

end A104505.P7296582244009877013

/-! ## A104505.P7013881693944233558

`A084610(record[A037213(n)+n])`
-/

namespace A104505.P7013881693944233558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084610 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104505.P7013881693944233558

/-! ## A104505.P5142166763418506084

`A084610(A004201(n+1)-1)`
-/

namespace A104505.P5142166763418506084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084610 (A004201 (n + 1) - 1).toNat

end

end A104505.P5142166763418506084

/-! ## A104505.P1389386479464068736

`A084610(2*n-A002262(n))`
-/

namespace A104505.P1389386479464068736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084610 ((2 * n : ℤ) - A002262 n).toNat

end

end A104505.P1389386479464068736

/-! ## A104505.P11246480370912670103

`A084610(n-A002262(n)+n)`
-/

namespace A104505.P11246480370912670103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084610 ((n : ℤ) - A002262 n + (n : ℤ)).toNat

end

end A104505.P11246480370912670103

/-! ## A104505.P4928845536210084029

`A084610(n-(A002262(n)-n))`
-/

namespace A104505.P4928845536210084029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084610 ((n : ℤ) - (A002262 n - (n : ℤ))).toNat

end

end A104505.P4928845536210084029

/-!
# A104506: Column 1 of triangle A104505, which is equal to the right-hand side of the triangle A084610 of coefficients in (1 + x - x^2)^n.

The programs for A104506, the canonical program `A104506.P2148906376944204592` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104506 has offset 0).

The definition of A104506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 291 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104506.P2148906376944204592

`-n*A100223(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A104506

/-- `-n*A100223(n+1)` -/
def P2148906376944204592.Spec : Prop :=
  ∀ n, P2148906376944204592.a n = A104506 n

theorem P2148906376944204592.correct : P2148906376944204592.Spec := by
  intro n
  simp only [A104506]

end A104506

/-! ## A104506.P1879822371650744455

`n*Δ[A108623(A028310(n))]`
-/

namespace A104506.P1879822371650744455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108623 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A104506.P1879822371650744455

namespace A104506

/-- `n*Δ[A108623(A028310(n))]` -/
def P1879822371650744455.Spec : Prop :=
  ∀ n, P1879822371650744455.a n = A104506 n

end A104506

/-! ## A104506.P15859529877844513767

`A001489(n)*A100223(n+1)`
-/

namespace A104506.P15859529877844513767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n * A100223 (n + 1)

end

end A104506.P15859529877844513767

namespace A104506

/-- `A001489(n)*A100223(n+1)` -/
def P15859529877844513767.Spec : Prop :=
  ∀ n, P15859529877844513767.a n = A104506 n

end A104506

/-! ## A104506.P512901086823403869

`(A063524(n+1)-n)*A100223(n+1)`
-/

namespace A104506.P512901086823403869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063524 (n + 1) - (n : ℤ)) * A100223 (n + 1)

end

end A104506.P512901086823403869

namespace A104506

/-- `(A063524(n+1)-n)*A100223(n+1)` -/
def P512901086823403869.Spec : Prop :=
  ∀ n, P512901086823403869.a n = A104506 n

end A104506

/-! ## A104506.P4400965065689799211

`(A159075(n+1)-n)*A100223(n+1)`
-/

namespace A104506.P4400965065689799211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A159075 (n + 1) - (n : ℤ)) * A100223 (n + 1)

end

end A104506.P4400965065689799211

namespace A104506

/-- `(A159075(n+1)-n)*A100223(n+1)` -/
def P4400965065689799211.Spec : Prop :=
  ∀ n, P4400965065689799211.a n = A104506 n

end A104506

/-! ## A104506.P3748586454127100446

`n*A280193(2*n+1)*A100223(n+1)`
-/

namespace A104506.P3748586454127100446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A280193 (2 * n + 1) * A100223 (n + 1)

end

end A104506.P3748586454127100446

namespace A104506

/-- `n*A280193(2*n+1)*A100223(n+1)` -/
def P3748586454127100446.Spec : Prop :=
  ∀ n, P3748586454127100446.a n = A104506 n

end A104506

/-! ## A104506.P5373148707686634275

`n*(A108623(n+1)-A108623(A028310(n)))`
-/

namespace A104506.P5373148707686634275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A108623 (n + 1) - A108623 (A028310 n).toNat)

end

end A104506.P5373148707686634275

namespace A104506

/-- `n*(A108623(n+1)-A108623(A028310(n)))` -/
def P5373148707686634275.Spec : Prop :=
  ∀ n, P5373148707686634275.a n = A104506 n

end A104506

/-! ## A104506.P9849382100068356638

`A098331(n)+Δ[A104507(n)]`
-/

namespace A104506.P9849382100068356638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098331 n + (f1 (n + 1) - f1 n)

end

end A104506.P9849382100068356638

namespace A104506

/-- `A098331(n)+Δ[A104507(n)]` -/
def P9849382100068356638.Spec : Prop :=
  ∀ n, P9849382100068356638.a n = A104506 n

end A104506

/-! ## A104506.P2171703319065077592

`A104507(n+1)+A098331(n)-A104507(n)`
-/

namespace A104506.P2171703319065077592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104507 (n + 1) + (A098331 n - A104507 n)

end

end A104506.P2171703319065077592

namespace A104506

/-- `A104507(n+1)+A098331(n)-A104507(n)` -/
def P2171703319065077592.Spec : Prop :=
  ∀ n, P2171703319065077592.a n = A104506 n

end A104506

/-! ## A104506.P2070943163799063839

`Δ[A098331(n)/2]`
-/

namespace A104506.P2070943163799063839
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098331 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104506.P2070943163799063839

namespace A104506

/-- `Δ[A098331(n)/2]` -/
def P2070943163799063839.Spec : Prop :=
  ∀ n, P2070943163799063839.a n = (A104506 n : ℚ)

end A104506

/-!
# A104508: Absolute row sums of triangle A104505, which is equal to the right-hand side of the triangle A084610 of coefficients in (1+x-x^2)^n.

The programs for A104508, there is no canonical definition to state claims against.
-/

/-! ## A104508.P17064022307060599157

`A367685(2^n)`
-/

namespace A104508.P17064022307060599157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367685 (2 ^ n)

end

end A104508.P17064022307060599157

/-! ## A104508.P17796980704015880019

`∑[A318560((1-n)²+n)]`
-/

namespace A104508.P17796980704015880019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318560 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104508.P17796980704015880019

/-! ## A104508.P7219880015089215175

`A107686(A098588(n))`
-/

namespace A104508.P7219880015089215175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107686 (A098588 n).toNat

end

end A104508.P7219880015089215175

/-!
# A104511: Last 3 digits of the n-th even perfect number.

The programs for A104511, there is no canonical definition to state claims against.
-/

/-! ## A104511.P7391651455544361078

`A138877(n+1)%(5*A138876(n+1))`
-/

namespace A104511.P7391651455544361078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138877 (n + 1)) (5 * A138876 (n + 1))

end

end A104511.P7391651455544361078

/-! ## A104511.P11370886821055464794

`A138877(n+1)%A008587(A138876(n+1))`
-/

namespace A104511.P11370886821055464794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138877 (n + 1)) (A008587 (A138876 (n + 1)).toNat)

end

end A104511.P11370886821055464794

/-! ## A104511.P7828563665223817241

`A000396(n+1)%A102377(A005029(n))`
-/

namespace A104511.P7828563665223817241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000396 (n + 1)) (A102377 (A005029 n).toNat)

end

end A104511.P7828563665223817241

/-! ## A104511.P10508033415228038044

`A185351(2^n+1)%A102377(A005029(n))`
-/

namespace A104511.P10508033415228038044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185351 (2 ^ n + 1)) (A102377 (A005029 n).toNat)

end

end A104511.P10508033415228038044

/-! ## A104511.P14998946656361795733

`(A135606(A005408(n))+1)%A102377(A005029(n))`
-/

namespace A104511.P14998946656361795733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135606 (A005408 n).toNat + 1) (A102377 (A005029 n).toNat)

end

end A104511.P14998946656361795733

/-!
# A104512: a(n) is the minimum number that is the first of k > 1 consecutive integers whose sum equals n, or 0 if impossible.

The programs for A104512, there is no canonical definition to state claims against.
-/

/-! ## A104512.P1359106156461480186

`A118235(n+1)%(n+1)`
-/

namespace A104512.P1359106156461480186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118235 (n + 1)) (n + 1 : ℤ)

end

end A104512.P1359106156461480186

/-! ## A104512.P212429284281155456

`A118235(n+1)-A099894(n)`
-/

namespace A104512.P212429284281155456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118235 (n + 1) - A099894 n

end

end A104512.P212429284281155456

/-! ## A104512.P5429436154157456002

`A043545(n)*A118235(n+1)`
-/

namespace A104512.P5429436154157456002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n * A118235 (n + 1)

end

end A104512.P5429436154157456002

/-! ## A104512.P8899335721956544452

`and(A003817(n), A118235(n+1))`
-/

namespace A104512.P8899335721956544452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A118235 (n + 1))

end

end A104512.P8899335721956544452

/-! ## A104512.P5243962127293098764

`A118235(n+1)-A048298(n+1)`
-/

namespace A104512.P5243962127293098764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118235 (n + 1) - A048298 (n + 1)

end

end A104512.P5243962127293098764

/-! ## A104512.P8945348260024966862

`and(A092323(n+1), A118235(n+1))`
-/

namespace A104512.P8945348260024966862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092323 (n + 1)) (A118235 (n + 1))

end

end A104512.P8945348260024966862

/-! ## A104512.P12737879224899893227

`A118235(n+1)*A202238(2*(n+1))`
-/

namespace A104512.P12737879224899893227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118235 (n + 1) * A202238 (2 * (n + 1))

end

end A104512.P12737879224899893227

/-! ## A104512.P1186534786817299958

`and(A000225(A007456(n+1)), A118235(n+1))`
-/

namespace A104512.P1186534786817299958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (A007456 (n + 1)).toNat) (A118235 (n + 1))

end

end A104512.P1186534786817299958

/-! ## A104512.P7648602652122731267

`and(A118235(n+1), A153893(A000523(n+1)))`
-/

namespace A104512.P7648602652122731267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118235 (n + 1)) (A153893 (A000523 (n + 1)).toNat)

end

end A104512.P7648602652122731267

/-! ## A104512.P14143715353699014250

`A099894(2*A099894(n))*A118235(n+1)`
-/

namespace A104512.P14143715353699014250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 (2 * A099894 n).toNat * A118235 (n + 1)

end

end A104512.P14143715353699014250

/-! ## A104512.P17592185343212673696

`and(A070198(n), A118235(n+1))`
-/

namespace A104512.P17592185343212673696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A070198 n) (A118235 (n + 1))

end

end A104512.P17592185343212673696

/-! ## A104512.P16547791444642853060

`and(A079782(n+1), A118235(n+1))`
-/

namespace A104512.P16547791444642853060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A079782 (n + 1)) (A118235 (n + 1))

end

end A104512.P16547791444642853060

/-!
# A104513: The number of consecutive integers > 1 beginning with A104512(n), the sum of which equals n, or 0 if impossible.

The programs for A104513, there is no canonical definition to state claims against.
-/

/-! ## A104513.P11729398009016465416

`A109814(n+1)-char[and(n, -(n+2))]`
-/

namespace A104513.P11729398009016465416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n + 2 : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109814 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A104513.P11729398009016465416

/-! ## A104513.P10613317723460376603

`A163300(A109814(n+1))/2`
-/

namespace A104513.P10613317723460376603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163300 (A109814 (n + 1)).toNat : ℚ) / 2

end

end A104513.P10613317723460376603

/-! ## A104513.P846990120182447183

`A109814(n+1)-A036987(n)`
-/

namespace A104513.P846990120182447183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109814 (n + 1) - A036987 n

end

end A104513.P846990120182447183

/-! ## A104513.P10874578132158809771

`A043545(n)*A109814(n+1)`
-/

namespace A104513.P10874578132158809771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n * A109814 (n + 1)

end

end A104513.P10874578132158809771

/-! ## A104513.P10486651313117044403

`A109814(n+1)%A035109(n)`
-/

namespace A104513.P10486651313117044403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109814 (n + 1)) (A035109 n)

end

end A104513.P10486651313117044403

/-! ## A104513.P9172918624496160880

`A109814(n+1)-A209229(n+1)`
-/

namespace A104513.P9172918624496160880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109814 (n + 1) - A209229 (n + 1)

end

end A104513.P9172918624496160880

/-! ## A104513.P507969885260426615

`A109814(n+1)*A202238(2*(n+1))`
-/

namespace A104513.P507969885260426615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109814 (n + 1) * A202238 (2 * (n + 1))

end

end A104513.P507969885260426615

/-! ## A104513.P14592926438500175724

`A109814(n+1)-A019590(A000265(n+1))`
-/

namespace A104513.P14592926438500175724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109814 (n + 1) - A019590 (A000265 (n + 1)).toNat

end

end A104513.P14592926438500175724

/-! ## A104513.P4136210597800993095

`A109814(n+1)-A000035(A336158(n+1))`
-/

namespace A104513.P4136210597800993095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109814 (n + 1) - A000035 (A336158 (n + 1)).toNat

end

end A104513.P4136210597800993095

/-! ## A104513.P2874011224709686572

`A001221(A068068(n+1))*A109814(n+1)`
-/

namespace A104513.P2874011224709686572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A068068 (n + 1)).toNat * A109814 (n + 1)

end

end A104513.P2874011224709686572

/-! ## A104513.P17247508127592492078

`A109814(n+1)-A019590(A064989(n+1)+1)`
-/

namespace A104513.P17247508127592492078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109814 (n + 1) - A019590 (A064989 (n + 1) + 1).toNat

end

end A104513.P17247508127592492078

/-! ## A104513.P13838541033383638842

`A109814(n+1)-A019590(A109814(n+1)+1)`
-/

namespace A104513.P13838541033383638842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109814 (n + 1) - A019590 (A109814 (n + 1) + 1).toNat

end

end A104513.P13838541033383638842

/-! ## A104513.P9496359471775067673

`A000035(A336158(n+1)+1)*A109814(n+1)`
-/

namespace A104513.P9496359471775067673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A336158 (n + 1) + 1).toNat * A109814 (n + 1)

end

end A104513.P9496359471775067673

/-! ## A104513.P4308854732165916007

`A001221(∏{p}[n+1, A109814(#)])*A109814(n+1)`
-/

namespace A104513.P4308854732165916007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f1 n), A109814 p).toNat * A109814 (n + 1)

end

end A104513.P4308854732165916007

/-! ## A104513.P1768344154829348228

`A109814(n+1)*A336040(C(2, A109814(n+1))+1)`
-/

namespace A104513.P1768344154829348228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109814 (n + 1) * A336040 (Nat.choose 2 (A109814 (n + 1)).toNat + 1)

end

end A104513.P1768344154829348228

/-! ## A104513.P13746407182329960016

`A104512(n+1)*A109814(n+1)/A118235(n+1)`
-/

namespace A104513.P13746407182329960016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104512 (n + 1) * A109814 (n + 1) : ℚ) / (A118235 (n + 1) : ℚ)

end

end A104513.P13746407182329960016

/-! ## A104513.P6876461494299186089

`A154515(n+1)%A109814(n+1)*A109814(n+1)`
-/

namespace A104513.P6876461494299186089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154515 (n + 1)) (A109814 (n + 1)) * A109814 (n + 1)

end

end A104513.P6876461494299186089

/-! ## A104513.P631766416345976139

`A109814(n+1)-A019590(A109814(n+1)²)`
-/

namespace A104513.P631766416345976139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109814 (n + 1) - A019590 (A109814 (n + 1) ^ 2).toNat

end

end A104513.P631766416345976139

/-! ## A104513.P10046180116581556652

`and(A109814(n+1), A187767(n+1))`
-/

namespace A104513.P10046180116581556652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A109814 (n + 1)) (A187767 (n + 1))

end

end A104513.P10046180116581556652

/-!
# A104514: a(n) = least number k > 1 of consecutive integers which sum to 2*n; or a(n) = 0 if n is a power of 2.

The programs for A104514, there is no canonical definition to state claims against.
-/

/-! ## A104514.P18034115976543103270

`A163169(2*(n+1))`
-/

namespace A104514.P18034115976543103270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163169 (2 * (n + 1))

end

end A104514.P18034115976543103270

/-! ## A104514.P1819125623116392630

`filter[A163169(n+1), A105234(#)]`
-/

namespace A104514.P1819125623116392630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A104514.P1819125623116392630

/-! ## A104514.P1776163433853802748

`filter[A163169(n+1), A152822(#)]`
-/

namespace A104514.P1776163433853802748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A104514.P1776163433853802748

/-! ## A104514.P6202734458971024184

`filter[A163169(n+1), A267810(#)]`
-/

namespace A104514.P6202734458971024184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267810 (f1 j).toNat = 1) n)

end

end A104514.P6202734458971024184

/-! ## A104514.P10439498400845525619

`filter[A163169(n+1), A267813(#)]`
-/

namespace A104514.P10439498400845525619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267813 (f1 j).toNat = 1) n)

end

end A104514.P10439498400845525619

/-! ## A104514.P5392644587409081695

`A163169(n+2+n)%A000040(n+1)`
-/

namespace A104514.P5392644587409081695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163169 (n + 2 + n)) (A000040 (n + 1))

end

end A104514.P5392644587409081695

/-! ## A104514.P4535160036250359176

`A054977(n)*A163169(Δ[A027689(n)])`
-/

namespace A104514.P4535160036250359176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A163169 (f1 (n + 1) - f1 n).toNat

end

end A104514.P4535160036250359176

/-! ## A104514.P2916874868454541689

`A259111(2*(n+1))%(2*(n+1))`
-/

namespace A104514.P2916874868454541689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259111 (2 * (n + 1))) (2 * (n + 1) : ℤ)

end

end A104514.P2916874868454541689

/-! ## A104514.P17632757307789084566

`A202238(2*(n+1))*A259111(2*(n+1))`
-/

namespace A104514.P17632757307789084566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202238 (2 * (n + 1)) * A259111 (2 * (n + 1))

end

end A104514.P17632757307789084566

/-! ## A104514.P7598286985842487357

`A118759(A163169(n+2+n))`
-/

namespace A104514.P7598286985842487357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A163169 (n + 2 + n)).toNat

end

end A104514.P7598286985842487357

/-!
# A104515: Difference between the maximum number of consecutive integers and the least number >1 of consecutive integers, the sum of which equals 2n.

The programs for A104515, there is no canonical definition to state claims against.
-/

/-! ## A104515.P15439872546117726764

`(A109814(n+1)-A259111(n+1))%(2*n+1)`
-/

namespace A104515.P15439872546117726764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109814 (n + 1) - A259111 (n + 1)) (2 * n + 1 : ℤ)

end

end A104515.P15439872546117726764

/-! ## A104515.P17630022540257488814

`A104513(n+1)-A163169(A014681(n))`
-/

namespace A104515.P17630022540257488814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104513 (n + 1) - A163169 (A014681 n).toNat

end

end A104515.P17630022540257488814

/-! ## A104515.P16199156125978889507

`A104513(n+1)-A259111(n+1)%A035109(n)`
-/

namespace A104515.P16199156125978889507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104513 (n + 1) - Int.tmod (A259111 (n + 1)) (A035109 n)

end

end A104515.P16199156125978889507

/-! ## A104515.P1147872330501610567

`(A104513(n+1)-A259111(n+1))*A202238(n+1)`
-/

namespace A104515.P1147872330501610567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A104513 (n + 1) - A259111 (n + 1)) * A202238 (n + 1)

end

end A104515.P1147872330501610567

/-! ## A104515.P10577177803468004820

`(A163300(n+1)-A259111(n+1))%A109814(n+1)`
-/

namespace A104515.P10577177803468004820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163300 (n + 1) - A259111 (n + 1)) (A109814 (n + 1))

end

end A104515.P10577177803468004820

/-!
# A104518: Number of distinct prime divisors of 55...3 (with n 5s).

The programs for A104518, there is no canonical definition to state claims against.
-/

/-! ## A104518.P13720806995779703741

`A086435(or(A215525(2*(n+2)), A268825(2*(n+1))))`
-/

namespace A104518.P13720806995779703741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086435 (Int.lor (A215525 (2 * (n + 2))) (A268825 (2 * (n + 1)))).toNat

end

end A104518.P13720806995779703741

/-!
# A104519: Sufficient number of monominoes to exclude X-pentominoes from an n X n board.

The programs for A104519, there is no canonical definition to state claims against.
-/

/-! ## A104519.P11281865726859627811

`A321684(n+1)-A321692(A321724(3*n+2))`
-/

namespace A104519.P11281865726859627811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321684 (n + 1) - A321692 (A321724 (3 * n + 2)).toNat

end

end A104519.P11281865726859627811

/-! ## A104519.P14800784251865834358

`∑[A061775(A127296(n))]`
-/

namespace A104519.P14800784251865834358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A127296 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104519.P14800784251865834358

/-! ## A104519.P14532996254455368035

`A350823(∑[4*n]+1)`
-/

namespace A104519.P14532996254455368035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350823 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A104519.P14532996254455368035

/-! ## A104519.P16598825958881991143

`record[gcd(A114327(n), A350823(n+1))]`
-/

namespace A104519.P16598825958881991143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A350823 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104519.P16598825958881991143

/-! ## A104519.P2467653509026709585

`A158791(n+1)+A072649(A006720(n))`
-/

namespace A104519.P2467653509026709585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158791 (n + 1) + A072649 (A006720 n).toNat

end

end A104519.P2467653509026709585

/-!
# A104521: Fixed point of the morphism 0->{1}, 1->{1,0,1}.

The programs for A104521, the canonical program `A104521.P18434025692984733780` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104521 has offset 0).

The definition of A104521 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104521.P18434025692984733780

`round((n+1)/sqrt(2))-round(n/sqrt(2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A104521

/-- `round((n+1)/sqrt(2))-round(n/sqrt(2))` -/
def P18434025692984733780.Spec : Prop :=
  ∀ n, P18434025692984733780.a n = A104521 n

theorem P18434025692984733780.correct : P18434025692984733780.Spec := by
  intro n
  simp only [A104521]

end A104521

/-! ## A104521.P9174798644439261902

`Δ[A049473(n)]`
-/

namespace A104521.P9174798644439261902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104521.P9174798644439261902

namespace A104521

/-- `Δ[A049473(n)]` -/
def P9174798644439261902.Spec : Prop :=
  ∀ n, P9174798644439261902.a n = A104521 n

end A104521

/-! ## A104521.P13915940374859057892

`char[A001953(n)]`
-/

namespace A104521.P13915940374859057892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A104521.P13915940374859057892

namespace A104521

/-- `char[A001953(n)]` -/
def P13915940374859057892.Spec : Prop :=
  ∀ n, (P13915940374859057892.a n : ℤ) = A104521 n

end A104521

/-! ## A104521.P4686994962508133769

`A101438(n+1)%2`
-/

namespace A104521.P4686994962508133769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101438 (n + 1)) 2

end

end A104521.P4686994962508133769

namespace A104521

/-- `A101438(n+1)%2` -/
def P4686994962508133769.Spec : Prop :=
  ∀ n, P4686994962508133769.a n = A104521 n

end A104521

/-! ## A104521.P15387902922691817425

`(2-Δ[A091087(n)])²`
-/

namespace A104521.P15387902922691817425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (f1 (n + 1) - f1 n)) ^ 2

end

end A104521.P15387902922691817425

namespace A104521

/-- `(2-Δ[A091087(n)])²` -/
def P15387902922691817425.Spec : Prop :=
  ∀ n, P15387902922691817425.a n = A104521 n

end A104521

/-! ## A104521.P8529911998250186081

`char[A136119(n+1)-1]`
-/

namespace A104521.P8529911998250186081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136119 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A104521.P8529911998250186081

namespace A104521

/-- `char[A136119(n+1)-1]` -/
def P8529911998250186081.Spec : Prop :=
  ∀ n, (P8529911998250186081.a n : ℤ) = A104521 n

end A104521

/-! ## A104521.P1339497623073645710

`char[A189574(n+1)+n]`
-/

namespace A104521.P1339497623073645710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189574 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A104521.P1339497623073645710

namespace A104521

/-- `char[A189574(n+1)+n]` -/
def P1339497623073645710.Spec : Prop :=
  ∀ n, (P1339497623073645710.a n : ℤ) = A104521 n

end A104521

/-! ## A104521.P2195890284358789030

`char[comp[A003152(2*n+1)]]`
-/

namespace A104521.P2195890284358789030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A104521.P2195890284358789030

namespace A104521

/-- `char[comp[A003152(2*n+1)]]` -/
def P2195890284358789030.Spec : Prop :=
  ∀ n, (P2195890284358789030.a n : ℤ) = A104521 n

end A104521

/-! ## A104521.P4307452996250001783

`char[char[A184117(n+1)]+n]`
-/

namespace A104521.P4307452996250001783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184117 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A104521.P4307452996250001783

namespace A104521

/-- `char[char[A184117(n+1)]+n]` -/
def P4307452996250001783.Spec : Prop :=
  ∀ n, (P4307452996250001783.a n : ℤ) = A104521 n

end A104521

/-! ## A104521.P7810599217345537290

`A083035((n+1)^a(n-1))` with `a(0)=1`
-/

namespace A104521.P7810599217345537290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A083035 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (a (n - 1) : ℤ))).toNat

end

end A104521.P7810599217345537290

namespace A104521

/-- `A083035((n+1)^a(n-1))` -/
def P7810599217345537290.Spec : Prop :=
  ∀ n, P7810599217345537290.a n = A104521 n

end A104521

/-! ## A104521.P5080442628087410633

`A106035(n)%A097509(n)`
-/

namespace A104521.P5080442628087410633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106035 n) (A097509 n)

end

end A104521.P5080442628087410633

namespace A104521

/-- `A106035(n)%A097509(n)` -/
def P5080442628087410633.Spec : Prop :=
  ∀ n, P5080442628087410633.a n = A104521 n

end A104521

/-! ## A104521.P7486907602536458909

`and(A000328(n), A106035(n))`
-/

namespace A104521.P7486907602536458909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000328 n) (A106035 n)

end

end A104521.P7486907602536458909

namespace A104521

/-- `and(A000328(n), A106035(n))` -/
def P7486907602536458909.Spec : Prop :=
  ∀ n, P7486907602536458909.a n = A104521 n

end A104521

/-! ## A104521.P11730167670991972047

`and(A001513(n), A106035(n))`
-/

namespace A104521.P11730167670991972047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001513 n) (A106035 n)

end

end A104521.P11730167670991972047

namespace A104521

/-- `and(A001513(n), A106035(n))` -/
def P11730167670991972047.Spec : Prop :=
  ∀ n, P11730167670991972047.a n = A104521 n

end A104521

/-! ## A104521.P10824944906126650486

`and(A001535(n), A106035(n))`
-/

namespace A104521.P10824944906126650486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001535 n) (A106035 n)

end

end A104521.P10824944906126650486

namespace A104521

/-- `and(A001535(n), A106035(n))` -/
def P10824944906126650486.Spec : Prop :=
  ∀ n, P10824944906126650486.a n = A104521 n

end A104521

/-! ## A104521.P6198045533468415287

`and(A001546(n), A106035(n))`
-/

namespace A104521.P6198045533468415287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001546 n) (A106035 n)

end

end A104521.P6198045533468415287

namespace A104521

/-- `and(A001546(n), A106035(n))` -/
def P6198045533468415287.Spec : Prop :=
  ∀ n, P6198045533468415287.a n = A104521 n

end A104521

/-! ## A104521.P5445068178264770285

`and(A001844(n), A106035(n))`
-/

namespace A104521.P5445068178264770285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001844 n) (A106035 n)

end

end A104521.P5445068178264770285

namespace A104521

/-- `and(A001844(n), A106035(n))` -/
def P5445068178264770285.Spec : Prop :=
  ∀ n, P5445068178264770285.a n = A104521 n

end A104521

/-! ## A104521.P15792234095470893983

`and(A001846(n), A106035(n))`
-/

namespace A104521.P15792234095470893983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001846 n) (A106035 n)

end

end A104521.P15792234095470893983

namespace A104521

/-- `and(A001846(n), A106035(n))` -/
def P15792234095470893983.Spec : Prop :=
  ∀ n, P15792234095470893983.a n = A104521 n

end A104521

/-! ## A104521.P14181820361787592801

`and(A001848(n), A106035(n))`
-/

namespace A104521.P14181820361787592801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001848 n) (A106035 n)

end

end A104521.P14181820361787592801

namespace A104521

/-- `and(A001848(n), A106035(n))` -/
def P14181820361787592801.Spec : Prop :=
  ∀ n, P14181820361787592801.a n = A104521 n

end A104521

/-! ## A104521.P952345200534781044

`and(A003185(n), A106035(n))`
-/

namespace A104521.P952345200534781044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003185 n) (A106035 n)

end

end A104521.P952345200534781044

namespace A104521

/-- `and(A003185(n), A106035(n))` -/
def P952345200534781044.Spec : Prop :=
  ∀ n, P952345200534781044.a n = A104521 n

end A104521

/-!
# A104522: Expansion of (-1+x+3*x^2-x^3)/((x+1)(3*x-1)(x-1)^2).

The programs for A104522, the canonical program `A104522.P15795213936629642006` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104522 has offset 0).

The definition of A104522 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-3x^2+x^3)/(1-4x+2x^2+4x^3-3x^4))` (program `A104522.P15795213936629642006`, by `A104522.P15795213936629642006.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104522.P15795213936629642006

`ogf((1-x-3x^2+x^3)/(1-4x+2x^2+4x^3-3x^4))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A104522

/-- `ogf((1-x-3x^2+x^3)/(1-4x+2x^2+4x^3-3x^4))` -/
def P15795213936629642006.Spec : Prop :=
  ∀ n, P15795213936629642006.a n = A104522 n

theorem P15795213936629642006.correct : P15795213936629642006.Spec := by
  intro n
  simp only [A104522]

end A104522

/-! ## A104522.P16778800462343115505

`4*a(n-1)-2*a(n-2)-4*a(n-3)+3*a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=19`
-/

namespace A104522.P16778800462343115505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7, 19] fun n a =>
  4 * a (n - 1) - 2 * a (n - 2) - 4 * a (n - 3) + 3 * a (n - 4)

end

end A104522.P16778800462343115505

namespace A104522

/-- `4*a(n-1)-2*a(n-2)-4*a(n-3)+3*a(n-4)` -/
def P16778800462343115505.Spec : Prop :=
  ∀ n, P16778800462343115505.a n = A104522 n

end A104522

/-! ## A104522.P8057033337647857826

`(5*3^n+4*(n+1)-(-1)^n)/8`
-/

namespace A104522.P8057033337647857826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 3 ^ n + 4 * (n + 1) : ℤ) - (-1) ^ n : ℚ) / 8

end

end A104522.P8057033337647857826

namespace A104522

/-- `(5*3^n+4*(n+1)-(-1)^n)/8` -/
def P8057033337647857826.Spec : Prop :=
  ∀ n, P8057033337647857826.a n = (A104522 n : ℚ)

end A104522

/-! ## A104522.P11613265706371366132

`or(1, 3*a(n-1)-n)` with `a(0)=1`
-/

namespace A104522.P11613265706371366132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (3 * a (n - 1) - (n : ℤ))

end

end A104522.P11613265706371366132

namespace A104522

/-- `or(1, 3*a(n-1)-n)` -/
def P11613265706371366132.Spec : Prop :=
  ∀ n, P11613265706371366132.a n = A104522 n

end A104522

/-! ## A104522.P1558343412847079237

`record[n-3*a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A104522.P1558343412847079237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (n : ℤ) - 3 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104522.P1558343412847079237

namespace A104522

/-- `record[n-3*a(n-2)]` -/
def P1558343412847079237.Spec : Prop :=
  ∀ n, P1558343412847079237.a n = A104522 n

end A104522

/-! ## A104522.P5942542268791190733

`3*a(n-1)+n%2-n` with `a(0)=1`
-/

namespace A104522.P5942542268791190733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + (((n % 2 : ℕ) : ℤ) - (n : ℤ))

end

end A104522.P5942542268791190733

namespace A104522

/-- `3*a(n-1)+n%2-n` -/
def P5942542268791190733.Spec : Prop :=
  ∀ n, P5942542268791190733.a n = A104522 n

end A104522

/-! ## A104522.P8279934498852052516

`3*a(n-1)-2*floor(n/2)` with `a(0)=1`
-/

namespace A104522.P8279934498852052516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - 2 * ⌊(n : ℚ) / 2⌋

end

end A104522.P8279934498852052516

namespace A104522

/-- `3*a(n-1)-2*floor(n/2)` -/
def P8279934498852052516.Spec : Prop :=
  ∀ n, P8279934498852052516.a n = A104522 n

end A104522

/-! ## A104522.P17196171002264033853

`xor(3*a(n-1), ∑[-a(n-1)])-(n-1)` with `a(0)=1`
-/

namespace A104522.P17196171002264033853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (3 * a (n - 1)) (∑ j ∈ Finset.range (n + 1), f1 j) - ((n : ℤ) - 1)

end

end A104522.P17196171002264033853

namespace A104522

/-- `xor(3*a(n-1), ∑[-a(n-1)])-(n-1)` -/
def P17196171002264033853.Spec : Prop :=
  ∀ n, P17196171002264033853.a n = A104522 n

end A104522

/-! ## A104522.P15005855137131478062

`a(n-1)+2*A153773(n)` with `a(0)=1`
-/

namespace A104522.P15005855137131478062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A153773 n

end

end A104522.P15005855137131478062

namespace A104522

/-- `a(n-1)+2*A153773(n)` -/
def P15005855137131478062.Spec : Prop :=
  ∀ n, P15005855137131478062.a n = A104522 n

end A104522

/-! ## A104522.P11750669392360202366

`3*a(n-1)+1-A109613(n)` with `a(0)=1`
-/

namespace A104522.P11750669392360202366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + 1 - A109613 n

end

end A104522.P11750669392360202366

namespace A104522

/-- `3*a(n-1)+1-A109613(n)` -/
def P11750669392360202366.Spec : Prop :=
  ∀ n, P11750669392360202366.a n = A104522 n

end A104522

/-! ## A104522.P9744965158910894336

`A015518(n)+∑[A122983(n)]`
-/

namespace A104522.P9744965158910894336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104522.P9744965158910894336

namespace A104522

/-- `A015518(n)+∑[A122983(n)]` -/
def P9744965158910894336.Spec : Prop :=
  ∀ n, P9744965158910894336.a n = A104522 n

end A104522

/-! ## A104522.P12069211994181965564

`A153773(n+1)+A110654(n)`
-/

namespace A104522.P12069211994181965564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153773 (n + 1) + A110654 n

end

end A104522.P12069211994181965564

namespace A104522

/-- `A153773(n+1)+A110654(n)` -/
def P12069211994181965564.Spec : Prop :=
  ∀ n, P12069211994181965564.a n = A104522 n

end A104522

/-! ## A104522.P18060315614184012023

`A104743(n)-A183119(n)`
-/

namespace A104522.P18060315614184012023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104743 n - A183119 n

end

end A104522.P18060315614184012023

namespace A104522

/-- `A104743(n)-A183119(n)` -/
def P18060315614184012023.Spec : Prop :=
  ∀ n, P18060315614184012023.a n = A104522 n

end A104522

/-! ## A104522.P13529960646395333338

`A183119(n+1)-A003462(n)`
-/

namespace A104522.P13529960646395333338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183119 (n + 1) - A003462 n

end

end A104522.P13529960646395333338

namespace A104522

/-- `A183119(n+1)-A003462(n)` -/
def P13529960646395333338.Spec : Prop :=
  ∀ n, P13529960646395333338.a n = A104522 n

end A104522

/-! ## A104522.P12630215409168782972

`∑[A081250(n)+1]-A081250(n)`
-/

namespace A104522.P12630215409168782972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081250 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A081250 n

end

end A104522.P12630215409168782972

namespace A104522

/-- `∑[A081250(n)+1]-A081250(n)` -/
def P12630215409168782972.Spec : Prop :=
  ∀ n, P12630215409168782972.a n = A104522 n

end A104522

/-! ## A104522.P12743656094099948944

`∑[A122983(n+1)]-A232801(2*n)`
-/

namespace A104522.P12743656094099948944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A232801 (2 * n)

end

end A104522.P12743656094099948944

namespace A104522

/-- `∑[A122983(n+1)]-A232801(2*n)` -/
def P12743656094099948944.Spec : Prop :=
  ∀ n, P12743656094099948944.a n = A104522 n

end A104522

/-!
# A104523: Numbers that are neither Fibonacci nor Lucas numbers.

The programs for A104523, the canonical program `A104523.P6149555644268847556` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104523 has offset 1).

The definition of A104523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104523.P3676697869697714654

`comp[a(n-2)+a(n-4)]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=1`
-/

namespace A104523.P3676697869697714654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 1] fun n f1 =>
  f1 (n - 2) + f1 (n - 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A104523.P3676697869697714654

namespace A104523

/-- `comp[a(n-2)+a(n-4)]` -/
def P3676697869697714654.Spec : Prop :=
  ∀ n, (P3676697869697714654.a n : ℤ) = A104523 (n + 1)

end A104523

/-! ## A104523.P6460467699623860165

`comp[A075148(n)]`
-/

namespace A104523.P6460467699623860165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075148 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A104523.P6460467699623860165

namespace A104523

/-- `comp[A075148(n)]` -/
def P6460467699623860165.Spec : Prop :=
  ∀ n, (P6460467699623860165.a n : ℤ) = A104523 (n + 1)

end A104523

/-! ## A104523.P6560943692334722038

`comp[A116470(n)]`
-/

namespace A104523.P6560943692334722038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116470 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A104523.P6560943692334722038

namespace A104523

/-- `comp[A116470(n)]` -/
def P6560943692334722038.Spec : Prop :=
  ∀ n, (P6560943692334722038.a n : ℤ) = A104523 (n + 1)

end A104523

/-! ## A104523.P6354295006330906349

`comp[A302126(n)]`
-/

namespace A104523.P6354295006330906349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A104523.P6354295006330906349

namespace A104523

/-- `comp[A302126(n)]` -/
def P6354295006330906349.Spec : Prop :=
  ∀ n, (P6354295006330906349.a n : ℤ) = A104523 (n + 1)

end A104523

/-! ## A104523.P1963166881500922311

`comp[A303427(n)]`
-/

namespace A104523.P1963166881500922311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A104523.P1963166881500922311

namespace A104523

/-- `comp[A303427(n)]` -/
def P1963166881500922311.Spec : Prop :=
  ∀ n, (P1963166881500922311.a n : ℤ) = A104523 (n + 1)

end A104523

/-! ## A104523.P13299373819731454144

`lt[3, A304101(n)]`
-/

namespace A104523.P13299373819731454144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304101 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A104523.P13299373819731454144

namespace A104523

/-- `lt[3, A304101(n)]` -/
def P13299373819731454144.Spec : Prop :=
  ∀ n, (P13299373819731454144.a n : ℤ) = A104523 (n + 1)

end A104523

/-! ## A104523.P2598729340166211892

`comp[A339572(n)]+1`
-/

namespace A104523.P2598729340166211892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339572 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A104523.P2598729340166211892

namespace A104523

/-- `comp[A339572(n)]+1` -/
def P2598729340166211892.Spec : Prop :=
  ∀ n, (P2598729340166211892.a n : ℤ) = A104523 (n + 1)

end A104523

/-! ## A104523.P15757796480394714795

`lt[1, A257962(n)]+2`
-/

namespace A104523.P15757796480394714795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257962 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A104523.P15757796480394714795

namespace A104523

/-- `lt[1, A257962(n)]+2` -/
def P15757796480394714795.Spec : Prop :=
  ∀ n, (P15757796480394714795.a n : ℤ) = A104523 (n + 1)

end A104523

/-! ## A104523.P18406916569422417540

`lt[2, A003603(n+1)]+1`
-/

namespace A104523.P18406916569422417540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A104523.P18406916569422417540

namespace A104523

/-- `lt[2, A003603(n+1)]+1` -/
def P18406916569422417540.Spec : Prop :=
  ∀ n, (P18406916569422417540.a n : ℤ) = A104523 (n + 1)

end A104523

/-! ## A104523.P6825788886138256474

`∪[A050939(n+1), A333357(n+1)]`
-/

namespace A104523.P6825788886138256474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A104523.P6825788886138256474

namespace A104523

/-- `∪[A050939(n+1), A333357(n+1)]` -/
def P6825788886138256474.Spec : Prop :=
  ∀ n, (P6825788886138256474.a n : ℤ) = A104523 (n + 1)

end A104523

/-! ## A104523.P13322370889535543520

`∪[A272635(n+1), A333357(n+1)]`
-/

namespace A104523.P13322370889535543520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A104523.P13322370889535543520

namespace A104523

/-- `∪[A272635(n+1), A333357(n+1)]` -/
def P13322370889535543520.Spec : Prop :=
  ∀ n, (P13322370889535543520.a n : ℤ) = A104523 (n + 1)

end A104523

/-! ## A104523.P7001309240964135536

`comp[2*A104762(n+1)-A108037(n)]`
-/

namespace A104523.P7001309240964135536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104762 (n + 1) - A108037 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A104523.P7001309240964135536

namespace A104523

/-- `comp[2*A104762(n+1)-A108037(n)]` -/
def P7001309240964135536.Spec : Prop :=
  ∀ n, (P7001309240964135536.a n : ℤ) = A104523 (n + 1)

end A104523

/-! ## A104523.P15144736077532809783

`comp[2*A104763(n+1)-A108037(n)]`
-/

namespace A104523.P15144736077532809783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104763 (n + 1) - A108037 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A104523.P15144736077532809783

namespace A104523

/-- `comp[2*A104763(n+1)-A108037(n)]` -/
def P15144736077532809783.Spec : Prop :=
  ∀ n, (P15144736077532809783.a n : ℤ) = A104523 (n + 1)

end A104523

/-! ## A104523.P6149555644268847556

`eq[2*A010056(n), A010056(A343647(n))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A104523

/-- `eq[2*A010056(n), A010056(A343647(n))]` -/
def P6149555644268847556.Spec : Prop :=
  ∀ n, (P6149555644268847556.a n : ℤ) = A104523 (n + 1)

theorem P6149555644268847556.correct : P6149555644268847556.Spec := by
  intro n
  simp only [A104523, Nat.add_sub_cancel]

end A104523

/-! ## A104523.P5417003034175195270

`∩[A001690(n+1), A057854(n+1)]`
-/

namespace A104523.P5417003034175195270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104523.P5417003034175195270

namespace A104523

/-- `∩[A001690(n+1), A057854(n+1)]` -/
def P5417003034175195270.Spec : Prop :=
  ∀ n, (P5417003034175195270.a n : ℤ) = A104523 (n + 1)

end A104523

/-! ## A104523.P2478554493543504909

`∩[A001690(n+1), A090946(n+1)]`
-/

namespace A104523.P2478554493543504909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104523.P2478554493543504909

namespace A104523

/-- `∩[A001690(n+1), A090946(n+1)]` -/
def P2478554493543504909.Spec : Prop :=
  ∀ n, (P2478554493543504909.a n : ℤ) = A104523 (n + 1)

end A104523

/-! ## A104523.P13147723690504085893

`lt[3, A292031(n)]`
-/

namespace A104523.P13147723690504085893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292031 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A104523.P13147723690504085893

namespace A104523

/-- `lt[3, A292031(n)]` -/
def P13147723690504085893.Spec : Prop :=
  ∀ n, (P13147723690504085893.a n : ℤ) = A104523 (n + 1)

end A104523

/-! ## A104523.P16786286771653175887

`lt[1, A019586(n+1)]+1`
-/

namespace A104523.P16786286771653175887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A104523.P16786286771653175887

namespace A104523

/-- `lt[1, A019586(n+1)]+1` -/
def P16786286771653175887.Spec : Prop :=
  ∀ n, (P16786286771653175887.a n : ℤ) = A104523 (n + 1)

end A104523

/-! ## A104523.P9439229458551928628

`lt[2, A286321(n+1)]+1`
-/

namespace A104523.P9439229458551928628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286321 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A104523.P9439229458551928628

namespace A104523

/-- `lt[2, A286321(n+1)]+1` -/
def P9439229458551928628.Spec : Prop :=
  ∀ n, (P9439229458551928628.a n : ℤ) = A104523 (n + 1)

end A104523

/-! ## A104523.P5635543215181176211

`lt[2, A003603(A028310(n))]`
-/

namespace A104523.P5635543215181176211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A104523.P5635543215181176211

namespace A104523

/-- `lt[2, A003603(A028310(n))]` -/
def P5635543215181176211.Spec : Prop :=
  ∀ n, (P5635543215181176211.a n : ℤ) = A104523 (n + 1)

end A104523

/-!
# A104524: Number of distinct prime divisors of 55...557 (with n 5s).

The programs for A104524, there is no canonical definition to state claims against.
-/

/-! ## A104524.P10151173822829178448

`gcd(A060866(A095121(n)), A124770(n))`
-/

namespace A104524.P10151173822829178448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060866 (A095121 n).toNat) (A124770 n)

end

end A104524.P10151173822829178448

/-! ## A104524.P12918832698171842940

`A124770(gcd(n, A358539(2*(n+2))))`
-/

namespace A104524.P12918832698171842940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124770 (Int.gcd (n : ℤ) (A358539 (2 * (n + 2))))

end

end A104524.P12918832698171842940

/-! ## A104524.P6412848252360427653

`A124770(C(5, A360029(3*n+2))+n)`
-/

namespace A104524.P6412848252360427653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124770 (Nat.choose 5 (A360029 (3 * n + 2)).toNat + n)

end

end A104524.P6412848252360427653

/-! ## A104524.P1455560908659426606

`A124771(n)+A033999(floor((2^n-1)*5/3))`
-/

namespace A104524.P1455560908659426606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124771 n + A033999 ⌊((2 ^ n : ℤ) - 1 : ℚ) * ((5 : ℚ) / 3)⌋.toNat

end

end A104524.P1455560908659426606

/-! ## A104524.P12936318348696681194

`A124770(n)+A000122(A003945(n))`
-/

namespace A104524.P12936318348696681194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124770 n + A000122 (A003945 n).toNat

end

end A104524.P12936318348696681194

/-!
# A104525: The number of hierarchical orderings among the parts of the integer partitions of the integer n.

The programs for A104525, there is no canonical definition to state claims against.
-/

/-! ## A104525.P8831571723113506639

`A062108(A179597(n)+n)`
-/

namespace A104525.P8831571723113506639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A179597 n + (n : ℤ)).toNat

end

end A104525.P8831571723113506639

/-! ## A104525.P6321781848722338273

`A277192(A294504(n))+n`
-/

namespace A104525.P6321781848722338273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277192 (A294504 n).toNat + (n : ℤ)

end

end A104525.P6321781848722338273

/-!
# A104530: Expansion of (1+sqrt(1-4x))/(4sqrt(1-4x)-2).

The programs for A104530, the canonical program `A104530.P10775864358818668256` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104530 has offset 0).

The definition of A104530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104530.P3380658773037970927

`A076025(n)*A122553(n)`
-/

namespace A104530.P3380658773037970927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076025 n * A122553 n

end

end A104530.P3380658773037970927

namespace A104530

/-- `A076025(n)*A122553(n)` -/
def P3380658773037970927.Spec : Prop :=
  ∀ n, P3380658773037970927.a n = A104530 n

end A104530

/-! ## A104530.P10775864358818668256

`lcm(2, A076035(n))-A076025(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A104530

/-- `lcm(2, A076035(n))-A076025(n)` -/
def P10775864358818668256.Spec : Prop :=
  ∀ n, P10775864358818668256.a n = A104530 n

theorem P10775864358818668256.correct : P10775864358818668256.Spec := by
  intro n
  simp only [A104530]

end A104530

/-! ## A104530.P14200043417509386729

`or(1, A036453(n+1))*A076025(n)`
-/

namespace A104530.P14200043417509386729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A036453 (n + 1)) * A076025 n

end

end A104530.P14200043417509386729

namespace A104530

/-- `or(1, A036453(n+1))*A076025(n)` -/
def P14200043417509386729.Spec : Prop :=
  ∀ n, P14200043417509386729.a n = A104530 n

end A104530

/-! ## A104530.P15553119421412643152

`A014963(A048883(n))*A076025(n)`
-/

namespace A104530.P15553119421412643152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A048883 n).toNat * A076025 n

end

end A104530.P15553119421412643152

namespace A104530

/-- `A014963(A048883(n))*A076025(n)` -/
def P15553119421412643152.Spec : Prop :=
  ∀ n, P15553119421412643152.a n = A104530 n

end A104530

/-! ## A104530.P8015711867579552939

`A007854(n)/A049027(n)*A076025(n)`
-/

namespace A104530.P8015711867579552939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007854 n : ℚ) / (A049027 n : ℚ) * (A076025 n : ℚ)

end

end A104530.P8015711867579552939

namespace A104530

/-- `A007854(n)/A049027(n)*A076025(n)` -/
def P8015711867579552939.Spec : Prop :=
  ∀ n, P8015711867579552939.a n = (A104530 n : ℚ)

end A104530

/-!
# A104531: Expansion of (1+sqrt(1-4*x))/(5*sqrt(1-4*x)-3).

The programs for A104531, there is no canonical definition to state claims against.
-/

/-! ## A104531.P9981510547626428378

`A100087(2*n)`
-/

namespace A104531.P9981510547626428378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100087 (2 * n)

end

end A104531.P9981510547626428378

/-! ## A104531.P16225872359769177884

`record[gcd(A100087(n), A105523(n))]`
-/

namespace A104531.P16225872359769177884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A100087 n) (A105523 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104531.P16225872359769177884

/-! ## A104531.P18062112439126043630

`record[A100087(lcm(n, A176742(n)))]`
-/

namespace A104531.P18062112439126043630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100087 (Int.lcm (n : ℤ) (A176742 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104531.P18062112439126043630

/-! ## A104531.P5182023843247981528

`record[A100087(A052928(A028242(n)))]`
-/

namespace A104531.P5182023843247981528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100087 (A052928 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104531.P5182023843247981528

/-! ## A104531.P10648148958798998395

`record[A100087(A052928(A077462(n)))]`
-/

namespace A104531.P10648148958798998395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100087 (A052928 (A077462 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104531.P10648148958798998395

/-! ## A104531.P3507028162810333267

`A036453(n+1)*A126075(A161680(2*n))`
-/

namespace A104531.P3507028162810333267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A126075 (A161680 (2 * n)).toNat

end

end A104531.P3507028162810333267

/-! ## A104531.P17057200320512866824

`A020639(A062570(2*n+1))*A126075(A161680(2*n))`
-/

namespace A104531.P17057200320512866824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A062570 (2 * n + 1)).toNat * A126075 (A161680 (2 * n)).toNat

end

end A104531.P17057200320512866824

/-!
# A104532: Expansion of (1+sqrt(1-4*x))/(6*sqrt(1-4*x)-4).

The programs for A104532, there is no canonical definition to state claims against.
-/

/-! ## A104532.P14572189019615474030

`A191558(A026940(n+1))-∑[n]`
-/

namespace A104532.P14572189019615474030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A026940 (n + 1)).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A104532.P14572189019615474030

/-!
# A104533: E.g.f.: exp(2x/(1-2x)).

The programs for A104533, the canonical program `A104533.P6201253944801465502` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104533 has offset 0).

The definition of A104533 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104533.P6201253944801465502

`2^n*A000262(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A104533

/-- `2^n*A000262(n)` -/
def P6201253944801465502.Spec : Prop :=
  ∀ n, P6201253944801465502.a n = A104533 n

theorem P6201253944801465502.correct : P6201253944801465502.Spec := by
  intro n
  simp only [A104533]

end A104533

/-! ## A104533.P447425895915150384

`abs(A293125(n))*2^n`
-/

namespace A104533.P447425895915150384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A293125 n| * (2 ^ n : ℤ)

end

end A104533.P447425895915150384

namespace A104533

/-- `abs(A293125(n))*2^n` -/
def P447425895915150384.Spec : Prop :=
  ∀ n, P447425895915150384.a n = A104533 n

end A104533

/-! ## A104533.P7052421649662582269

`2*2^(n-1)*A059114(∑[n])`
-/

namespace A104533.P7052421649662582269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A059114 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A104533.P7052421649662582269

namespace A104533

/-- `2*2^(n-1)*A059114(∑[n])` -/
def P7052421649662582269.Spec : Prop :=
  ∀ n, P7052421649662582269.a n = (A104533 n : ℚ)

end A104533

/-! ## A104533.P12398859724254684603

`A122803(n)*A293125(n)`
-/

namespace A104533.P12398859724254684603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n * A293125 n

end

end A104533.P12398859724254684603

namespace A104533

/-- `A122803(n)*A293125(n)` -/
def P12398859724254684603.Spec : Prop :=
  ∀ n, P12398859724254684603.a n = A104533 n

end A104533

/-! ## A104533.P8155112710087838286

`lcm(A000079(n), A000262(n))`
-/

namespace A104533.P8155112710087838286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A000262 n)

end

end A104533.P8155112710087838286

namespace A104533

/-- `lcm(A000079(n), A000262(n))` -/
def P8155112710087838286.Spec : Prop :=
  ∀ n, (P8155112710087838286.a n : ℤ) = A104533 n

end A104533

/-! ## A104533.P2578580791483377406

`A000079(n)*A129652(∑[n])`
-/

namespace A104533.P2578580791483377406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A129652 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104533.P2578580791483377406

namespace A104533

/-- `A000079(n)*A129652(∑[n])` -/
def P2578580791483377406.Spec : Prop :=
  ∀ n, P2578580791483377406.a n = A104533 n

end A104533

/-! ## A104533.P18033374136475104565

`A000079(n)*A206703(∑[n])`
-/

namespace A104533.P18033374136475104565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A206703 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104533.P18033374136475104565

namespace A104533

/-- `A000079(n)*A206703(∑[n])` -/
def P18033374136475104565.Spec : Prop :=
  ∀ n, P18033374136475104565.a n = A104533 n

end A104533

/-! ## A104533.P7289605219754955484

`A000262(n)*A011782(n+1)`
-/

namespace A104533.P7289605219754955484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n * A011782 (n + 1)

end

end A104533.P7289605219754955484

namespace A104533

/-- `A000262(n)*A011782(n+1)` -/
def P7289605219754955484.Spec : Prop :=
  ∀ n, P7289605219754955484.a n = A104533 n

end A104533

/-! ## A104533.P8568676871189043610

`A000262(n)*A016116(2*n)`
-/

namespace A104533.P8568676871189043610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n * A016116 (2 * n)

end

end A104533.P8568676871189043610

namespace A104533

/-- `A000262(n)*A016116(2*n)` -/
def P8568676871189043610.Spec : Prop :=
  ∀ n, P8568676871189043610.a n = A104533 n

end A104533

/-! ## A104533.P8048788447614390296

`2^n*A056953(A004273(n))`
-/

namespace A104533.P8048788447614390296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A056953 (A004273 n).toNat

end

end A104533.P8048788447614390296

namespace A104533

/-- `2^n*A056953(A004273(n))` -/
def P8048788447614390296.Spec : Prop :=
  ∀ n, P8048788447614390296.a n = A104533 n

end A104533

/-!
# A104534: Indices of prime tetranacci numbers.

The programs for A104534, there is no canonical definition to state claims against.
-/

/-! ## A104534.P11132763791224921351

`A303264(n+1)-2`
-/

namespace A104534.P11132763791224921351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303264 (n + 1) - 2

end

end A104534.P11132763791224921351

/-! ## A104534.P10943453965067408181

`record[A303264(A324347(n))-2]`
-/

namespace A104534.P10943453965067408181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303264 (A324347 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104534.P10943453965067408181

/-! ## A104534.P14202939992456793350

`record[A303264(A328399(n))-2]`
-/

namespace A104534.P14202939992456793350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303264 (A328399 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104534.P14202939992456793350

/-! ## A104534.P11873181021479516351

`A303306(A224697(n))+A303264(n+1)`
-/

namespace A104534.P11873181021479516351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303306 (A224697 n).toNat + A303264 (n + 1)

end

end A104534.P11873181021479516351

/-! ## A104534.P3379951672397623940

`A303306(A008284(n+1))+A303264(n+1)`
-/

namespace A104534.P3379951672397623940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303306 (A008284 (n + 1)).toNat + A303264 (n + 1)

end

end A104534.P3379951672397623940

/-!
# A104535: Prime tetranacci numbers.

The programs for A104535, there is no canonical definition to state claims against.
-/

/-! ## A104535.P6676746878290750564

`A000078(A303264(n+1))`
-/

namespace A104535.P6676746878290750564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (A303264 (n + 1)).toNat

end

end A104535.P6676746878290750564

/-!
# A104537: Expansion of g.f. (1+x)/(1+2*x+4*x^2).

The programs for A104537, the canonical program `A104537.P394431703533758114` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104537 has offset 0).

The definition of A104537 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1+2x+4x^2))` (program `A104537.P394431703533758114`, by `A104537.P394431703533758114.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104537.P394431703533758114

`ogf((1+x)/(1+2x+4x^2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A104537

/-- `ogf((1+x)/(1+2x+4x^2))` -/
def P394431703533758114.Spec : Prop :=
  ∀ n, P394431703533758114.a n = A104537 n

theorem P394431703533758114.correct : P394431703533758114.Spec := by
  intro n
  simp only [A104537]

end A104537

/-! ## A104537.P5771236303323650031

`8*a(n-3)` with `a(0)=1, a(1)=-1, a(2)=-2`
-/

namespace A104537.P5771236303323650031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -2] fun n a =>
  8 * a (n - 3)

end

end A104537.P5771236303323650031

namespace A104537

/-- `8*a(n-3)` -/
def P5771236303323650031.Spec : Prop :=
  ∀ n, P5771236303323650031.a n = A104537 n

end A104537

/-! ## A104537.P12147351840842799021

`2^n/(-2)^(n²%3)`
-/

namespace A104537.P12147351840842799021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / ((-2) ^ (n ^ 2 % 3) : ℚ)

end

end A104537.P12147351840842799021

namespace A104537

/-- `2^n/(-2)^(n²%3)` -/
def P12147351840842799021.Spec : Prop :=
  ∀ n, P12147351840842799021.a n = (A104537 n : ℚ)

end A104537

/-! ## A104537.P2864228430693077841

`2^n*(-2)^(-n²%3)`
-/

namespace A104537.P2864228430693077841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) * (-2 : ℚ) ^ (Int.tmod (-(n ^ 2 : ℤ)) 3 : ℤ)

end

end A104537.P2864228430693077841

namespace A104537

/-- `2^n*(-2)^(-n²%3)` -/
def P2864228430693077841.Spec : Prop :=
  ∀ n, P2864228430693077841.a n = (A104537 n : ℚ)

end A104537

/-! ## A104537.P17944383950326295420

`2^n/Δ[(2*n)%3-n]`
-/

namespace A104537.P17944383950326295420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n % 3 : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A104537.P17944383950326295420

namespace A104537

/-- `2^n/Δ[(2*n)%3-n]` -/
def P17944383950326295420.Spec : Prop :=
  ∀ n, P17944383950326295420.a n = (A104537 n : ℚ)

end A104537

/-! ## A104537.P11380760476984351152

`(C(gcd(3, n), 2)-1)*2^(n-1)`
-/

namespace A104537.P11380760476984351152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (Nat.gcd 3 n) 2 : ℤ) - 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A104537.P11380760476984351152

namespace A104537

/-- `(C(gcd(3, n), 2)-1)*2^(n-1)` -/
def P11380760476984351152.Spec : Prop :=
  ∀ n, P11380760476984351152.a n = (A104537 n : ℚ)

end A104537

/-! ## A104537.P6992215280910163298

`a(n-3)/(1/2)^3` with `a(0)=1, a(1)=-1, a(2)=-2`
-/

namespace A104537.P6992215280910163298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, -1, -2] fun n a =>
  a (n - 3) / ((1 : ℚ) / 2) ^ 3

end

end A104537.P6992215280910163298

namespace A104537

/-- `a(n-3)/(1/2)^3` -/
def P6992215280910163298.Spec : Prop :=
  ∀ n, P6992215280910163298.a n = (A104537 n : ℚ)

end A104537

/-! ## A104537.P17352988669058193562

`2^(n-1)*A099837(n+3)`
-/

namespace A104537.P17352988669058193562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A099837 (n + 3) : ℚ)

end

end A104537.P17352988669058193562

namespace A104537

/-- `2^(n-1)*A099837(n+3)` -/
def P17352988669058193562.Spec : Prop :=
  ∀ n, P17352988669058193562.a n = (A104537 n : ℚ)

end A104537

/-! ## A104537.P17239824652408634720

`A033999(n)*A138230(n)`
-/

namespace A104537.P17239824652408634720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A138230 n

end

end A104537.P17239824652408634720

namespace A104537

/-- `A033999(n)*A138230(n)` -/
def P17239824652408634720.Spec : Prop :=
  ∀ n, P17239824652408634720.a n = A104537 n

end A104537

/-! ## A104537.P3637611305510899675

`A128018(n)/A132954(n)`
-/

namespace A104537.P3637611305510899675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128018 n : ℚ) / (A132954 n : ℚ)

end

end A104537.P3637611305510899675

namespace A104537

/-- `A128018(n)/A132954(n)` -/
def P3637611305510899675.Spec : Prop :=
  ∀ n, P3637611305510899675.a n = (A104537 n : ℚ)

end A104537

/-! ## A104537.P12905628480605223608

`A011782(n)*A100051(2*n)`
-/

namespace A104537.P12905628480605223608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A100051 (2 * n)

end

end A104537.P12905628480605223608

namespace A104537

/-- `A011782(n)*A100051(2*n)` -/
def P12905628480605223608.Spec : Prop :=
  ∀ n, P12905628480605223608.a n = A104537 n

end A104537

/-! ## A104537.P10733643937841883533

`A057077(2*n)*A138230(n)`
-/

namespace A104537.P10733643937841883533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A138230 n

end

end A104537.P10733643937841883533

namespace A104537

/-- `A057077(2*n)*A138230(n)` -/
def P10733643937841883533.Spec : Prop :=
  ∀ n, P10733643937841883533.a n = A104537 n

end A104537

/-! ## A104537.P8431612203459378572

`A000079(n)/(2-A131714(n)²)`
-/

namespace A104537.P8431612203459378572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (2 - A131714 n ^ 2 : ℚ)

end

end A104537.P8431612203459378572

namespace A104537

/-- `A000079(n)/(2-A131714(n)²)` -/
def P8431612203459378572.Spec : Prop :=
  ∀ n, P8431612203459378572.a n = (A104537 n : ℚ)

end A104537

/-! ## A104537.P13982864620692801648

`Δ[A000225(n)]/A100219(2*n)`
-/

namespace A104537.P13982864620692801648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A100219 (2 * n) : ℚ)

end

end A104537.P13982864620692801648

namespace A104537

/-- `Δ[A000225(n)]/A100219(2*n)` -/
def P13982864620692801648.Spec : Prop :=
  ∀ n, P13982864620692801648.a n = (A104537 n : ℚ)

end A104537

/-! ## A104537.P15274381245885780813

`A099837(n)*A158780(2*n+1)`
-/

namespace A104537.P15274381245885780813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 n * A158780 (2 * n + 1)

end

end A104537.P15274381245885780813

namespace A104537

/-- `A099837(n)*A158780(2*n+1)` -/
def P15274381245885780813.Spec : Prop :=
  ∀ n, P15274381245885780813.a n = A104537 n

end A104537

/-! ## A104537.P9554541367849362615

`A011782(n+1)/(A057079(2*n+1)-1)`
-/

namespace A104537.P9554541367849362615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) : ℚ) / (A057079 (2 * n + 1) - 1 : ℚ)

end

end A104537.P9554541367849362615

namespace A104537

/-- `A011782(n+1)/(A057079(2*n+1)-1)` -/
def P9554541367849362615.Spec : Prop :=
  ∀ n, P9554541367849362615.a n = (A104537 n : ℚ)

end A104537

/-! ## A104537.P2142754936052902075

`A000079(n)/(A057078(n)-A080425(n))`
-/

namespace A104537.P2142754936052902075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (A057078 n - A080425 n : ℚ)

end

end A104537.P2142754936052902075

namespace A104537

/-- `A000079(n)/(A057078(n)-A080425(n))` -/
def P2142754936052902075.Spec : Prop :=
  ∀ n, P2142754936052902075.a n = (A104537 n : ℚ)

end A104537

/-! ## A104537.P10872760379884066722

`A000079(n)/(A061347(n+1)*A061347(n+2))`
-/

namespace A104537.P10872760379884066722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (A061347 (n + 1) * A061347 (n + 2) : ℚ)

end

end A104537.P10872760379884066722

namespace A104537

/-- `A000079(n)/(A061347(n+1)*A061347(n+2))` -/
def P10872760379884066722.Spec : Prop :=
  ∀ n, P10872760379884066722.a n = (A104537 n : ℚ)

end A104537

/-! ## A104537.P14457416536369018103

`A131577(n+1)/(A061347(n+1)*A061347(n+2))`
-/

namespace A104537.P14457416536369018103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131577 (n + 1) : ℚ) / (A061347 (n + 1) * A061347 (n + 2) : ℚ)

end

end A104537.P14457416536369018103

namespace A104537

/-- `A131577(n+1)/(A061347(n+1)*A061347(n+2))` -/
def P14457416536369018103.Spec : Prop :=
  ∀ n, P14457416536369018103.a n = (A104537 n : ℚ)

end A104537

/-! ## A104537.P15763460994229317362

`A123344(n+1)/(A100051(2*n+1)*A100051(n+1))`
-/

namespace A104537.P15763460994229317362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123344 (n + 1) : ℚ) / (A100051 (2 * n + 1) * A100051 (n + 1) : ℚ)

end

end A104537.P15763460994229317362

namespace A104537

/-- `A123344(n+1)/(A100051(2*n+1)*A100051(n+1))` -/
def P15763460994229317362.Spec : Prop :=
  ∀ n, P15763460994229317362.a n = (A104537 n : ℚ)

end A104537

/-!
# A104538: Expansion of g.f. (1 + 2*x) / (1 + 2*x + 4*x^2).

The programs for A104538, the canonical program `A104538.P7089050279814631289` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104538 has offset 0).

The definition of A104538 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x)/(1+2x+4x^2))` (program `A104538.P7089050279814631289`, by `A104538.P7089050279814631289.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104538.P7089050279814631289

`ogf((1+2x)/(1+2x+4x^2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A104538

/-- `ogf((1+2x)/(1+2x+4x^2))` -/
def P7089050279814631289.Spec : Prop :=
  ∀ n, P7089050279814631289.a n = A104538 n

theorem P7089050279814631289.correct : P7089050279814631289.Spec := by
  intro n
  simp only [A104538]

end A104538

/-! ## A104538.P7245622453804026081

`2^n*A057078(n)`
-/

namespace A104538.P7245622453804026081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A057078 n

end

end A104538.P7245622453804026081

namespace A104538

/-- `2^n*A057078(n)` -/
def P7245622453804026081.Spec : Prop :=
  ∀ n, P7245622453804026081.a n = A104538 n

end A104538

/-! ## A104538.P11795909724423894556

`(1-n%3)*2^n`
-/

namespace A104538.P11795909724423894556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((n % 3 : ℕ) : ℤ)) * (2 ^ n : ℤ)

end

end A104538.P11795909724423894556

namespace A104538

/-- `(1-n%3)*2^n` -/
def P11795909724423894556.Spec : Prop :=
  ∀ n, P11795909724423894556.a n = A104538 n

end A104538

/-! ## A104538.P214777706294519807

`8*a(n-3)` with `a(0)=1, a(1)=0, a(2)=-4`
-/

namespace A104538.P214777706294519807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -4] fun n a =>
  8 * a (n - 3)

end

end A104538.P214777706294519807

namespace A104538

/-- `8*a(n-3)` -/
def P214777706294519807.Spec : Prop :=
  ∀ n, P214777706294519807.a n = A104538 n

end A104538

/-! ## A104538.P5349690184809081241

`2^n*A163804(n+2)`
-/

namespace A104538.P5349690184809081241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A163804 (n + 2)

end

end A104538.P5349690184809081241

namespace A104538

/-- `2^n*A163804(n+2)` -/
def P5349690184809081241.Spec : Prop :=
  ∀ n, P5349690184809081241.a n = A104538 n

end A104538

/-! ## A104538.P12334918410198529584

`A078029(A350666(n))`
-/

namespace A104538.P12334918410198529584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078029 (A350666 n).toNat

end

end A104538.P12334918410198529584

namespace A104538

/-- `A078029(A350666(n))` -/
def P12334918410198529584.Spec : Prop :=
  ∀ n, P12334918410198529584.a n = A104538 n

end A104538

/-! ## A104538.P18302563834390344895

`A033999(n)*A120580(n)`
-/

namespace A104538.P18302563834390344895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A120580 n

end

end A104538.P18302563834390344895

namespace A104538

/-- `A033999(n)*A120580(n)` -/
def P18302563834390344895.Spec : Prop :=
  ∀ n, P18302563834390344895.a n = A104538 n

end A104538

/-! ## A104538.P3875472505529190176

`A057079(n)*A120580(n)`
-/

namespace A104538.P3875472505529190176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A120580 n

end

end A104538.P3875472505529190176

namespace A104538

/-- `A057079(n)*A120580(n)` -/
def P3875472505529190176.Spec : Prop :=
  ∀ n, P3875472505529190176.a n = A104538 n

end A104538

/-! ## A104538.P4213800490636210058

`A084633(n)*A109265(n)`
-/

namespace A104538.P4213800490636210058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084633 n * A109265 n

end

end A104538.P4213800490636210058

namespace A104538

/-- `A084633(n)*A109265(n)` -/
def P4213800490636210058.Spec : Prop :=
  ∀ n, P4213800490636210058.a n = A104538 n

end A104538

/-! ## A104538.P11451615872690922285

`A057078(n)*A186949(n)`
-/

namespace A104538.P11451615872690922285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n * A186949 n

end

end A104538.P11451615872690922285

namespace A104538

/-- `A057078(n)*A186949(n)` -/
def P11451615872690922285.Spec : Prop :=
  ∀ n, P11451615872690922285.a n = A104538 n

end A104538

/-! ## A104538.P16501201214366652017

`A120580(n)*A130151(n)`
-/

namespace A104538.P16501201214366652017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120580 n * A130151 n

end

end A104538.P16501201214366652017

namespace A104538

/-- `A120580(n)*A130151(n)` -/
def P16501201214366652017.Spec : Prop :=
  ∀ n, P16501201214366652017.a n = A104538 n

end A104538

/-! ## A104538.P655365785275456749

`A120580(n)*A131556(n)`
-/

namespace A104538.P655365785275456749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120580 n * A131556 n

end

end A104538.P655365785275456749

namespace A104538

/-- `A120580(n)*A131556(n)` -/
def P655365785275456749.Spec : Prop :=
  ∀ n, P655365785275456749.a n = A104538 n

end A104538

/-! ## A104538.P17107050234537258344

`A120580(n)*A132951(n)`
-/

namespace A104538.P17107050234537258344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120580 n * A132951 n

end

end A104538.P17107050234537258344

namespace A104538

/-- `A120580(n)*A132951(n)` -/
def P17107050234537258344.Spec : Prop :=
  ∀ n, P17107050234537258344.a n = A104538 n

end A104538

/-! ## A104538.P16435508787179035935

`A057078(n)*A274817(n)`
-/

namespace A104538.P16435508787179035935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n * A274817 n

end

end A104538.P16435508787179035935

namespace A104538

/-- `A057078(n)*A274817(n)` -/
def P16435508787179035935.Spec : Prop :=
  ∀ n, P16435508787179035935.a n = A104538 n

end A104538

/-! ## A104538.P14783912484660842721

`A010892(n+1)*A122803(n)`
-/

namespace A104538.P14783912484660842721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 1) * A122803 n

end

end A104538.P14783912484660842721

namespace A104538

/-- `A010892(n+1)*A122803(n)` -/
def P14783912484660842721.Spec : Prop :=
  ∀ n, P14783912484660842721.a n = A104538 n

end A104538

/-! ## A104538.P5739437237783310580

`A057078(n)*A131577(n+1)`
-/

namespace A104538.P5739437237783310580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n * A131577 (n + 1)

end

end A104538.P5739437237783310580

namespace A104538

/-- `A057078(n)*A131577(n+1)` -/
def P5739437237783310580.Spec : Prop :=
  ∀ n, P5739437237783310580.a n = A104538 n

end A104538

/-! ## A104538.P8985315890780018504

`A057078(n)*A183494(n+1)`
-/

namespace A104538.P8985315890780018504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n * A183494 (n + 1)

end

end A104538.P8985315890780018504

namespace A104538

/-- `A057078(n)*A183494(n+1)` -/
def P8985315890780018504.Spec : Prop :=
  ∀ n, P8985315890780018504.a n = A104538 n

end A104538

/-! ## A104538.P17540435007372368939

`(1-A010872(n))*A000079(n)`
-/

namespace A104538.P17540435007372368939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010872 n) * A000079 n

end

end A104538.P17540435007372368939

namespace A104538

/-- `(1-A010872(n))*A000079(n)` -/
def P17540435007372368939.Spec : Prop :=
  ∀ n, P17540435007372368939.a n = A104538 n

end A104538

/-! ## A104538.P82052814914999307

`A000079(n)*A010892(2*n)`
-/

namespace A104538.P82052814914999307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A010892 (2 * n)

end

end A104538.P82052814914999307

namespace A104538

/-- `A000079(n)*A010892(2*n)` -/
def P82052814914999307.Spec : Prop :=
  ∀ n, P82052814914999307.a n = A104538 n

end A104538

/-! ## A104538.P5407288615089260022

`A000079(n)*A049347(2*n)`
-/

namespace A104538.P5407288615089260022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A049347 (2 * n)

end

end A104538.P5407288615089260022

namespace A104538

/-- `A000079(n)*A049347(2*n)` -/
def P5407288615089260022.Spec : Prop :=
  ∀ n, P5407288615089260022.a n = A104538 n

end A104538

/-!
# A104543: Number of distinct prime divisors of 55...559 (with n 5s).

The programs for A104543, there is no canonical definition to state claims against.
-/

/-! ## A104543.P4845098022517009522

`A102677(A333282(n+1))+val(n+1, 3)+1`
-/

namespace A104543.P4845098022517009522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (A333282 (n + 1)).toNat + (SequenceMachineLib.valuation (n + 1) 3 + 1 : ℤ)

end

end A104543.P4845098022517009522

/-! ## A104543.P3333440690377079229

`A230415(A227240(n+1)*A250120(n))`
-/

namespace A104543.P3333440690377079229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230415 (A227240 (n + 1) * A250120 n).toNat

end

end A104543.P3333440690377079229

/-! ## A104543.P14569818134782665242

`A005086(A091846(n+1)+6)`
-/

namespace A104543.P14569818134782665242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005086 (A091846 (n + 1) + 6).toNat

end

end A104543.P14569818134782665242

/-! ## A104543.P4455248987029478172

`A005086(∑[A375133(3*n+2)])`
-/

namespace A104543.P4455248987029478172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375133 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005086 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A104543.P4455248987029478172

/-! ## A104543.P17299977966124270833

`A072410((n+1)*A053745(n+1))`
-/

namespace A104543.P17299977966124270833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072410 ((n + 1 : ℤ) * A053745 (n + 1)).toNat

end

end A104543.P17299977966124270833

/-!
# A104544: Triangle read by rows: T(n,k) is the number of Motzkin paths of length n having k HH's, where H = (1,0).

The programs for A104544, there is no canonical definition to state claims against.
-/

/-! ## A104544.P12231916473029471901

`A329273(A234013(n+1))`
-/

namespace A104544.P12231916473029471901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329273 (A234013 (n + 1)).toNat

end

end A104544.P12231916473029471901

/-!
# A104545: Number of Motzkin paths of length n having no consecutive (1,0) steps.

The programs for A104545, there is no canonical definition to state claims against.
-/

/-! ## A104545.P6408240323550115272

`A256169(abs(1-n))+A256169(n)`
-/

namespace A104545.P6408240323550115272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256169 |1 - (n : ℤ)|.toNat + A256169 n

end

end A104545.P6408240323550115272

/-! ## A104545.P844694147934551899

`A104544(∑[n])`
-/

namespace A104545.P844694147934551899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104544 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104545.P844694147934551899

/-! ## A104545.P1743774839513426567

`or(1, A243284(A036766(n)))`
-/

namespace A104545.P1743774839513426567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A243284 (A036766 n).toNat)

end

end A104545.P1743774839513426567

/-! ## A104545.P2716490414867208250

`A157271(A052806(n)+∑[A255517(2*n+1)])`
-/

namespace A104545.P2716490414867208250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A052806 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A104545.P2716490414867208250

/-! ## A104545.P7747216541175515843

`A368729(A192805(n))`
-/

namespace A104545.P7747216541175515843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368729 (A192805 n).toNat

end

end A104545.P7747216541175515843

/-!
# A104547: Number of Schroeder paths of length 2n having no UHD, UHHD, UHHHD, ..., where U=(1,1), D=(1,-1), H=(2,0).

The programs for A104547, there is no canonical definition to state claims against.
-/

/-! ## A104547.P5707575176776779790

`A104546(A002620(n+1))`
-/

namespace A104547.P5707575176776779790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104546 (A002620 (n + 1)).toNat

end

end A104547.P5707575176776779790

/-! ## A104547.P7055592279678888364

`A104546(∑[abs(A001057(n))])`
-/

namespace A104547.P7055592279678888364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104546 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A104547.P7055592279678888364

/-! ## A104547.P1909877190459617790

`A104546(∑[∑[A000035(n)]])`
-/

namespace A104547.P1909877190459617790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104546 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A104547.P1909877190459617790

/-! ## A104547.P18281745954645835738

`A104546(∑[A004526(n+1)])`
-/

namespace A104547.P18281745954645835738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104546 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A104547.P18281745954645835738

/-! ## A104547.P7813550199161262709

`A104546(∑[n-A004526(n)])`
-/

namespace A104547.P7813550199161262709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104546 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A104547.P7813550199161262709

/-! ## A104547.P10974701028241206980

`A104546(∑[A008619(n+1)-1])`
-/

namespace A104547.P10974701028241206980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104546 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A104547.P10974701028241206980

/-! ## A104547.P18421540209572157000

`A104546(∑[A008619(n)]-A008619(n))`
-/

namespace A104547.P18421540209572157000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104546 (∑ j ∈ Finset.range (n + 1), f1 j - A008619 n).toNat

end

end A104547.P18421540209572157000

/-!
# A104548: Triangle read by rows giving coefficients of Bessel polynomial p_n(x).

The programs for A104548, the canonical program `A104548.P5049053651902084609` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104548 has offset 0).

The definition of A104548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104548.P5049053651902084609

`A132062(A038722(n+2))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A104548

/-- `A132062(A038722(n+2))` -/
def P5049053651902084609.Spec : Prop :=
  ∀ n, P5049053651902084609.a n = A104548 n

theorem P5049053651902084609.correct : P5049053651902084609.Spec := by
  intro n
  simp only [A104548]

end A104548

/-! ## A104548.P10746516822072036611

`A132062(A061579(n+1)+1)`
-/

namespace A104548.P10746516822072036611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132062 (A061579 (n + 1) + 1).toNat

end

end A104548.P10746516822072036611

namespace A104548

/-- `A132062(A061579(n+1)+1)` -/
def P10746516822072036611.Spec : Prop :=
  ∀ n, P10746516822072036611.a n = A104548 n

end A104548

/-! ## A104548.P6017183943114482096

`A132062(A061579(n))-A000007(n)`
-/

namespace A104548.P6017183943114482096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132062 (A061579 n).toNat - A000007 n

end

end A104548.P6017183943114482096

namespace A104548

/-- `A132062(A061579(n))-A000007(n)` -/
def P6017183943114482096.Spec : Prop :=
  ∀ n, P6017183943114482096.a n = A104548 n

end A104548

/-! ## A104548.P9067167958197761672

`A057427(n)*A132062(A061579(n))`
-/

namespace A104548.P9067167958197761672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A132062 (A061579 n).toNat

end

end A104548.P9067167958197761672

namespace A104548

/-- `A057427(n)*A132062(A061579(n))` -/
def P9067167958197761672.Spec : Prop :=
  ∀ n, P9067167958197761672.a n = A104548 n

end A104548

/-! ## A104548.P5500782684885828946

`A001498(A083920(n))-∑[A103452(n)]`
-/

namespace A104548.P5500782684885828946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001498 (A083920 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104548.P5500782684885828946

namespace A104548

/-- `A001498(A083920(n))-∑[A103452(n)]` -/
def P5500782684885828946.Spec : Prop :=
  ∀ n, P5500782684885828946.a n = A104548 n

end A104548

/-! ## A104548.P662544619968552626

`A001498(A083920(n))%((A327086(n+1)+A327083(n+1))/2)`
-/

namespace A104548.P662544619968552626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001498 (A083920 n).toNat) (SequenceMachineLib.roundAway ((A327086 (n + 1) + A327083 (n + 1) : ℚ) / 2))

end

end A104548.P662544619968552626

namespace A104548

/-- `A001498(A083920(n))%((A327086(n+1)+A327083(n+1))/2)` -/
def P662544619968552626.Spec : Prop :=
  ∀ n, P662544619968552626.a n = A104548 n

end A104548

/-! ## A104548.P14287494324794421785

`A132062(A061579(n)^A178489(n))`
-/

namespace A104548.P14287494324794421785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132062 (SequenceMachineLib.roundAway ((A061579 n : ℚ) ^ (A178489 n : ℤ))).toNat

end

end A104548.P14287494324794421785

namespace A104548

/-- `A132062(A061579(n)^A178489(n))` -/
def P14287494324794421785.Spec : Prop :=
  ∀ n, P14287494324794421785.a n = A104548 n

end A104548

/-!
# A104550: Number of horizontal segments in all Schroeder paths of length 2n (a horizontal segment is a maximal string of horizontal steps).

The programs for A104550, the canonical program `A104550.P11450034910284479824` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104550 has offset 1).

The definition of A104550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104550.P11450034910284479824

`Δ[A002002(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A104550

/-- `Δ[A002002(n)]` -/
def P11450034910284479824.Spec : Prop :=
  ∀ n, P11450034910284479824.a n = A104550 (n + 1)

theorem P11450034910284479824.correct : P11450034910284479824.Spec := by
  intro n
  simp only [A104550, Nat.add_sub_cancel]

end A104550

/-! ## A104550.P14506830754144183449

`A247630(Δ[n²])`
-/

namespace A104550.P14506830754144183449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247630 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A104550.P14506830754144183449

namespace A104550

/-- `A247630(Δ[n²])` -/
def P14506830754144183449.Spec : Prop :=
  ∀ n, P14506830754144183449.a n = A104550 (n + 1)

end A104550

/-! ## A104550.P13229739712101425636

`Δ[floor(A247630(2*n)/2)]`
-/

namespace A104550.P13229739712101425636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A247630 (2 * n) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104550.P13229739712101425636

namespace A104550

/-- `Δ[floor(A247630(2*n)/2)]` -/
def P13229739712101425636.Spec : Prop :=
  ∀ n, P13229739712101425636.a n = A104550 (n + 1)

end A104550

/-! ## A104550.P9715851613144449839

`xor(2, A247630(2*n+1)+2)`
-/

namespace A104550.P9715851613144449839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A247630 (2 * n + 1) + 2)

end

end A104550.P9715851613144449839

namespace A104550

/-- `xor(2, A247630(2*n+1)+2)` -/
def P9715851613144449839.Spec : Prop :=
  ∀ n, P9715851613144449839.a n = A104550 (n + 1)

end A104550

/-! ## A104550.P12584523324044362451

`record[A247630(A026741(n))]`
-/

namespace A104550.P12584523324044362451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247630 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104550.P12584523324044362451

namespace A104550

/-- `record[A247630(A026741(n))]` -/
def P12584523324044362451.Spec : Prop :=
  ∀ n, P12584523324044362451.a n = A104550 (n + 1)

end A104550

/-! ## A104550.P6775616122493151752

`record[A247630(A014681(n)+1)]`
-/

namespace A104550.P6775616122493151752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247630 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104550.P6775616122493151752

namespace A104550

/-- `record[A247630(A014681(n)+1)]` -/
def P6775616122493151752.Spec : Prop :=
  ∀ n, P6775616122493151752.a n = A104550 (n + 1)

end A104550

/-! ## A104550.P4025581084736655232

`record[A247630(A083220(n)+1)]`
-/

namespace A104550.P4025581084736655232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247630 (A083220 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104550.P4025581084736655232

namespace A104550

/-- `record[A247630(A083220(n)+1)]` -/
def P4025581084736655232.Spec : Prop :=
  ∀ n, P4025581084736655232.a n = A104550 (n + 1)

end A104550

/-! ## A104550.P10504161582556823378

`Δ[A262607(n)-A006318(n)]`
-/

namespace A104550.P10504161582556823378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262607 n - A006318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104550.P10504161582556823378

namespace A104550

/-- `Δ[A262607(n)-A006318(n)]` -/
def P10504161582556823378.Spec : Prop :=
  ∀ n, P10504161582556823378.a n = A104550 (n + 1)

end A104550

/-! ## A104550.P5689414290937496953

`A002002(n+1)-A002002(n)`
-/

namespace A104550.P5689414290937496953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 (n + 1) - A002002 n

end

end A104550.P5689414290937496953

namespace A104550

/-- `A002002(n+1)-A002002(n)` -/
def P5689414290937496953.Spec : Prop :=
  ∀ n, P5689414290937496953.a n = A104550 (n + 1)

theorem P5689414290937496953.correct : P5689414290937496953.Spec := by
  intro n
  simp only [A104550, Nat.add_sub_cancel, A104550.P5689414290937496953.a, A104550.P11450034910284479824.f1, A104550.P11450034910284479824.a, SequenceMachineLib.memo_apply]

end A104550

/-! ## A104550.P17332807159140038889

`2*A001850(n)-A006318(n)`
-/

namespace A104550.P17332807159140038889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001850 n - A006318 n

end

end A104550.P17332807159140038889

namespace A104550

/-- `2*A001850(n)-A006318(n)` -/
def P17332807159140038889.Spec : Prop :=
  ∀ n, P17332807159140038889.a n = A104550 (n + 1)

end A104550

/-! ## A104550.P16879034137093751531

`A123164(n)+n*A006318(n)`
-/

namespace A104550.P16879034137093751531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123164 n + (n : ℤ) * A006318 n

end

end A104550.P16879034137093751531

namespace A104550

/-- `A123164(n)+n*A006318(n)` -/
def P16879034137093751531.Spec : Prop :=
  ∀ n, P16879034137093751531.a n = A104550 (n + 1)

end A104550

/-! ## A104550.P14850560718197068002

`Δ[Δ[A047665(A004273(n)-n)]]`
-/

namespace A104550.P14850560718197068002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047665 (A004273 n - (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104550.P14850560718197068002

namespace A104550

/-- `Δ[Δ[A047665(A004273(n)-n)]]` -/
def P14850560718197068002.Spec : Prop :=
  ∀ n, P14850560718197068002.a n = A104550 (n + 1)

end A104550

/-! ## A104550.P10807196105960693770

`A002003(n+1)-A050146(n+1)`
-/

namespace A104550.P10807196105960693770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002003 (n + 1) - A050146 (n + 1)

end

end A104550.P10807196105960693770

namespace A104550

/-- `A002003(n+1)-A050146(n+1)` -/
def P10807196105960693770.Spec : Prop :=
  ∀ n, P10807196105960693770.a n = A104550 (n + 1)

end A104550

/-! ## A104550.P3848791436262808455

`A123164(n+1)-A050146(n+1)`
-/

namespace A104550.P3848791436262808455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123164 (n + 1) - A050146 (n + 1)

end

end A104550.P3848791436262808455

namespace A104550

/-- `A123164(n+1)-A050146(n+1)` -/
def P3848791436262808455.Spec : Prop :=
  ∀ n, P3848791436262808455.a n = A104550 (n + 1)

end A104550

/-! ## A104550.P18122210931954190096

`A002003(n+1)-A110110(2*n)`
-/

namespace A104550.P18122210931954190096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002003 (n + 1) - A110110 (2 * n)

end

end A104550.P18122210931954190096

namespace A104550

/-- `A002003(n+1)-A110110(2*n)` -/
def P18122210931954190096.Spec : Prop :=
  ∀ n, P18122210931954190096.a n = A104550 (n + 1)

end A104550

/-! ## A104550.P9191326114773301568

`2*A026003(2*n)-A006318(n)`
-/

namespace A104550.P9191326114773301568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026003 (2 * n) - A006318 n

end

end A104550.P9191326114773301568

namespace A104550

/-- `2*A026003(2*n)-A006318(n)` -/
def P9191326114773301568.Spec : Prop :=
  ∀ n, P9191326114773301568.a n = A104550 (n + 1)

end A104550

/-! ## A104550.P17811476933063526899

`A110110(2*n+1)-A050146(n+1)`
-/

namespace A104550.P17811476933063526899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110110 (2 * n + 1) - A050146 (n + 1)

end

end A104550.P17811476933063526899

namespace A104550

/-- `A110110(2*n+1)-A050146(n+1)` -/
def P17811476933063526899.Spec : Prop :=
  ∀ n, P17811476933063526899.a n = A104550 (n + 1)

end A104550

/-! ## A104550.P2784553988980870643

`A050147(n+2)-2*A050146(n+1)`
-/

namespace A104550.P2784553988980870643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050147 (n + 2) - 2 * A050146 (n + 1)

end

end A104550.P2784553988980870643

namespace A104550

/-- `A050147(n+2)-2*A050146(n+1)` -/
def P2784553988980870643.Spec : Prop :=
  ∀ n, P2784553988980870643.a n = A104550 (n + 1)

end A104550

/-! ## A104550.P1054438488130781136

`A110110(2*n+1)-A110110(2*n)`
-/

namespace A104550.P1054438488130781136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110110 (2 * n + 1) - A110110 (2 * n)

end

end A104550.P1054438488130781136

namespace A104550

/-- `A110110(2*n+1)-A110110(2*n)` -/
def P1054438488130781136.Spec : Prop :=
  ∀ n, P1054438488130781136.a n = A104550 (n + 1)

end A104550

/-!
# A104551: Expansion of x/((1-x)*sqrt(1+4*x^2)).

The programs for A104551, the canonical program `A104551.P2747052499327181203` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104551 has offset 0).

The definition of A104551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104551.P2747052499327181203

`∑[ceil(n/2)*A090192(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A104551

/-- `∑[ceil(n/2)*A090192(n)]` -/
def P2747052499327181203.Spec : Prop :=
  ∀ n, P2747052499327181203.a n = A104551 n

theorem P2747052499327181203.correct : P2747052499327181203.Spec := by
  intro n
  simp only [A104551]

end A104551

/-! ## A104551.P17032919720892218028

`∑[A090192(n)*A110654(n)]`
-/

namespace A104551.P17032919720892218028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 n * A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104551.P17032919720892218028

namespace A104551

/-- `∑[A090192(n)*A110654(n)]` -/
def P17032919720892218028.Spec : Prop :=
  ∀ n, P17032919720892218028.a n = A104551 n

end A104551

/-! ## A104551.P8696603536162455325

`∑[A090192(n)*A115384(n)]`
-/

namespace A104551.P8696603536162455325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 n * A115384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104551.P8696603536162455325

namespace A104551

/-- `∑[A090192(n)*A115384(n)]` -/
def P8696603536162455325.Spec : Prop :=
  ∀ n, P8696603536162455325.a n = A104551 n

end A104551

/-! ## A104551.P14612692950435130021

`∑[A090192(n)*A110655(2*n)]`
-/

namespace A104551.P14612692950435130021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 n * A110655 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104551.P14612692950435130021

namespace A104551

/-- `∑[A090192(n)*A110655(2*n)]` -/
def P14612692950435130021.Spec : Prop :=
  ∀ n, P14612692950435130021.a n = A104551 n

end A104551

/-! ## A104551.P18027423695049560183

`∑[A000035(n)*A128057(n)]`
-/

namespace A104551.P18027423695049560183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A128057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104551.P18027423695049560183

namespace A104551

/-- `∑[A000035(n)*A128057(n)]` -/
def P18027423695049560183.Spec : Prop :=
  ∀ n, P18027423695049560183.a n = A104551 n

end A104551

/-! ## A104551.P16006157922405871382

`∑[A128057(n)%A063886(n)]`
-/

namespace A104551.P16006157922405871382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128057 n) (A063886 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104551.P16006157922405871382

namespace A104551

/-- `∑[A128057(n)%A063886(n)]` -/
def P16006157922405871382.Spec : Prop :=
  ∀ n, P16006157922405871382.a n = A104551 n

end A104551

/-!
# A104553: Sum of trapezoid weights of all Schroeder paths of length 2n.

The programs for A104553, the canonical program `A104553.P8611672560579935796` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104553 has offset 1).

The definition of A104553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104553.P8611672560579935796

`∑[A047665(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A104553

/-- `∑[A047665(n+1)]` -/
def P8611672560579935796.Spec : Prop :=
  ∀ n, P8611672560579935796.a n = A104553 (n + 1)

theorem P8611672560579935796.correct : P8611672560579935796.Spec := by
  intro n
  simp only [A104553, Nat.add_sub_cancel]

end A104553

/-! ## A104553.P12652840786882457256

`∑[∑[A002002(n+1)]]`
-/

namespace A104553.P12652840786882457256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104553.P12652840786882457256

namespace A104553

/-- `∑[∑[A002002(n+1)]]` -/
def P12652840786882457256.Spec : Prop :=
  ∀ n, P12652840786882457256.a n = A104553 (n + 1)

end A104553

/-! ## A104553.P18192449331252267764

`∑[A226994(n+1)-1]`
-/

namespace A104553.P18192449331252267764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226994 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104553.P18192449331252267764

namespace A104553

/-- `∑[A226994(n+1)-1]` -/
def P18192449331252267764.Spec : Prop :=
  ∀ n, P18192449331252267764.a n = A104553 (n + 1)

end A104553

/-! ## A104553.P16547691568130073790

`∑[∑[abs(A182626(n+1))]]`
-/

namespace A104553.P16547691568130073790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182626 (n + 1)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104553.P16547691568130073790

namespace A104553

/-- `∑[∑[abs(A182626(n+1))]]` -/
def P16547691568130073790.Spec : Prop :=
  ∀ n, P16547691568130073790.a n = A104553 (n + 1)

end A104553

/-! ## A104553.P14467210639960686248

`∑[∑[∑[A104550(n+1)]]]`
-/

namespace A104553.P14467210639960686248
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104553.P14467210639960686248

namespace A104553

/-- `∑[∑[∑[A104550(n+1)]]]` -/
def P14467210639960686248.Spec : Prop :=
  ∀ n, P14467210639960686248.a n = A104553 (n + 1)

end A104553

/-! ## A104553.P9982821404099357277

`∑[∑[A026003(2*n+1)]]`
-/

namespace A104553.P9982821404099357277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026003 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104553.P9982821404099357277

namespace A104553

/-- `∑[∑[A026003(2*n+1)]]` -/
def P9982821404099357277.Spec : Prop :=
  ∀ n, P9982821404099357277.a n = A104553 (n + 1)

end A104553

/-! ## A104553.P10794188954192142360

`∑[∑[A110170(n+1)/2]]`
-/

namespace A104553.P10794188954192142360
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110170 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104553.P10794188954192142360

namespace A104553

/-- `∑[∑[A110170(n+1)/2]]` -/
def P10794188954192142360.Spec : Prop :=
  ∀ n, P10794188954192142360.a n = (A104553 (n + 1) : ℚ)

end A104553

/-! ## A104553.P2416525329064419289

`∑[∑[∑[A247630(2*n+1)]]]`
-/

namespace A104553.P2416525329064419289
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247630 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104553.P2416525329064419289

namespace A104553

/-- `∑[∑[∑[A247630(2*n+1)]]]` -/
def P2416525329064419289.Spec : Prop :=
  ∀ n, P2416525329064419289.a n = A104553 (n + 1)

end A104553

/-! ## A104553.P7480434775977605609

`(∑[A001850(n+1)]-(n+1))/2`
-/

namespace A104553.P7480434775977605609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ) : ℤ) : ℚ) / 2

end

end A104553.P7480434775977605609

namespace A104553

/-- `(∑[A001850(n+1)]-(n+1))/2` -/
def P7480434775977605609.Spec : Prop :=
  ∀ n, P7480434775977605609.a n = (A104553 (n + 1) : ℚ)

end A104553

/-! ## A104553.P11871006753010064403

`∑[∑[A001850(n+1)-A002003(n+1)]]`
-/

namespace A104553.P11871006753010064403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 (n + 1) - A002003 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104553.P11871006753010064403

namespace A104553

/-- `∑[∑[A001850(n+1)-A002003(n+1)]]` -/
def P11871006753010064403.Spec : Prop :=
  ∀ n, P11871006753010064403.a n = A104553 (n + 1)

end A104553

/-! ## A104553.P10762322334494207923

`∑[∑[A001109(n+1)-A110127(n+1)]]`
-/

namespace A104553.P10762322334494207923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (n + 1) - A110127 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104553.P10762322334494207923

namespace A104553

/-- `∑[∑[A001109(n+1)-A110127(n+1)]]` -/
def P10762322334494207923.Spec : Prop :=
  ∀ n, P10762322334494207923.a n = A104553 (n + 1)

end A104553

/-! ## A104553.P4264774898516983234

`∑[A053142(n+1)-∑[A110127(n+1)]]`
-/

namespace A104553.P4264774898516983234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110127 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053142 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104553.P4264774898516983234

namespace A104553

/-- `∑[A053142(n+1)-∑[A110127(n+1)]]` -/
def P4264774898516983234.Spec : Prop :=
  ∀ n, P4264774898516983234.a n = A104553 (n + 1)

end A104553

/-!
# A104554: Expansion of x*(1-x)/(1-x+2*x^3-x^4).

The programs for A104554, the canonical program `A104554.P14503613384150827670` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104554 has offset 0).

The definition of A104554 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-x^2)/(1-x+2x^3-x^4))` (program `A104554.P14503613384150827670`, by `A104554.P14503613384150827670.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104554.P14503613384150827670

`ogf((x-x^2)/(1-x+2x^3-x^4))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A104554

/-- `ogf((x-x^2)/(1-x+2x^3-x^4))` -/
def P14503613384150827670.Spec : Prop :=
  ∀ n, P14503613384150827670.a n = A104554 n

theorem P14503613384150827670.correct : P14503613384150827670.Spec := by
  intro n
  simp only [A104554]

end A104554

/-! ## A104554.P8673028009507390357

`a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=0`
-/

namespace A104554.P8673028009507390357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 0] fun n a =>
  a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A104554.P8673028009507390357

namespace A104554

/-- `a(n-1)-2*a(n-3)+a(n-4)` -/
def P8673028009507390357.Spec : Prop :=
  ∀ n, P8673028009507390357.a n = A104554 n

end A104554

/-! ## A104554.P1013962975032454303

`a(n-1)-(2*a(n-3)-a(n-4))` with `a(0)=0, a(1)=1, a(2)=0, a(3)=0`
-/

namespace A104554.P1013962975032454303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 0] fun n a =>
  a (n - 1) - (2 * a (n - 3) - a (n - 4))

end

end A104554.P1013962975032454303

namespace A104554

/-- `a(n-1)-(2*a(n-3)-a(n-4))` -/
def P1013962975032454303.Spec : Prop :=
  ∀ n, P1013962975032454303.a n = A104554 n

end A104554

/-! ## A104554.P11645730188323747398

`a(n-1)+a(n-4)-(a(n-3)+a(n-3))` with `a(0)=0, a(1)=1, a(2)=0, a(3)=0`
-/

namespace A104554.P11645730188323747398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 0] fun n a =>
  a (n - 1) + (a (n - 4) - (a (n - 3) + a (n - 3)))

end

end A104554.P11645730188323747398

namespace A104554

/-- `a(n-1)+a(n-4)-(a(n-3)+a(n-3))` -/
def P11645730188323747398.Spec : Prop :=
  ∀ n, P11645730188323747398.a n = A104554 n

end A104554

/-! ## A104554.P17277883101343875428

`A185964(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A104554.P17277883101343875428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A185964 (n - 1) + a (n - 1)

end

end A104554.P17277883101343875428

namespace A104554

/-- `A185964(n-1)+a(n-1)` -/
def P17277883101343875428.Spec : Prop :=
  ∀ n, P17277883101343875428.a n = A104554 n

end A104554

/-! ## A104554.P12473907006477472169

`∑[A185964(n)]-A185964(n)`
-/

namespace A104554.P12473907006477472169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A185964 n

end

end A104554.P12473907006477472169

namespace A104554

/-- `∑[A185964(n)]-A185964(n)` -/
def P12473907006477472169.Spec : Prop :=
  ∀ n, P12473907006477472169.a n = A104554 n

end A104554

/-!
# A104555: Expansion of x*(1 - x)/(1 - x + x^2)^3.

The programs for A104555, the canonical program `A104555.P15597786659795290983` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104555 has offset 0).

The definition of A104555 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-x^2)/(1-3x+6x^2-7x^3+6x^4-3x^5+x^6))` (program `A104555.P15597786659795290983`, by `A104555.P15597786659795290983.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104555.P15597786659795290983

`ogf((x-x^2)/(1-3x+6x^2-7x^3+6x^4-3x^5+x^6))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A104555

/-- `ogf((x-x^2)/(1-3x+6x^2-7x^3+6x^4-3x^5+x^6))` -/
def P15597786659795290983.Spec : Prop :=
  ∀ n, P15597786659795290983.a n = A104555 n

theorem P15597786659795290983.correct : P15597786659795290983.Spec := by
  intro n
  simp only [A104555]

end A104555

/-! ## A104555.P5752961705743609917

`∑[ceil(n/3)]*A128834(n)`
-/

namespace A104555.P5752961705743609917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A128834 n

end

end A104555.P5752961705743609917

namespace A104555

/-- `∑[ceil(n/3)]*A128834(n)` -/
def P5752961705743609917.Spec : Prop :=
  ∀ n, P5752961705743609917.a n = A104555 n

end A104555

/-! ## A104555.P7352648337433616727

`round(sin(n%6))*∑[A008611(n)]`
-/

namespace A104555.P7352648337433616727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin ((n % 6 : ℕ) : ℝ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104555.P7352648337433616727

namespace A104555

/-- `round(sin(n%6))*∑[A008611(n)]` -/
def P7352648337433616727.Spec : Prop :=
  ∀ n, P7352648337433616727.a n = A104555 n

end A104555

/-! ## A104555.P9684500053764644828

`A100050(n)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A104555.P9684500053764644828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A100050 n - a (n - 3)

end

end A104555.P9684500053764644828

namespace A104555

/-- `A100050(n)-a(n-3)` -/
def P9684500053764644828.Spec : Prop :=
  ∀ n, P9684500053764644828.a n = A104555 n

end A104555

/-! ## A104555.P5346792198852384494

`A128504(n)-A099254(n)`
-/

namespace A104555.P5346792198852384494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128504 n - A099254 n

end

end A104555.P5346792198852384494

namespace A104555

/-- `A128504(n)-A099254(n)` -/
def P5346792198852384494.Spec : Prop :=
  ∀ n, P5346792198852384494.a n = A104555 n

end A104555

/-! ## A104555.P12266379460620282224

`A001840(n)*A163806(n)`
-/

namespace A104555.P12266379460620282224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n * A163806 n

end

end A104555.P12266379460620282224

namespace A104555

/-- `A001840(n)*A163806(n)` -/
def P12266379460620282224.Spec : Prop :=
  ∀ n, P12266379460620282224.a n = A104555 n

end A104555

/-! ## A104555.P13880728436341124563

`A128834(n)*A234041(n)`
-/

namespace A104555.P13880728436341124563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n * A234041 n

end

end A104555.P13880728436341124563

namespace A104555

/-- `A128834(n)*A234041(n)` -/
def P13880728436341124563.Spec : Prop :=
  ∀ n, P13880728436341124563.a n = A104555 n

end A104555

/-! ## A104555.P8981991924798403580

`A128504(n)+A099470(n+1)`
-/

namespace A104555.P8981991924798403580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128504 n + A099470 (n + 1)

end

end A104555.P8981991924798403580

namespace A104555

/-- `A128504(n)+A099470(n+1)` -/
def P8981991924798403580.Spec : Prop :=
  ∀ n, P8981991924798403580.a n = A104555 n

end A104555

/-! ## A104555.P18285651287132460895

`round(sin(A010875(n)))*A001840(n)`
-/

namespace A104555.P18285651287132460895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (A010875 n : ℝ)) * A001840 n

end

end A104555.P18285651287132460895

namespace A104555

/-- `round(sin(A010875(n)))*A001840(n)` -/
def P18285651287132460895.Spec : Prop :=
  ∀ n, P18285651287132460895.a n = A104555 n

end A104555

/-! ## A104555.P16962613766673286495

`A128834(n)/3*A000217(n+1)`
-/

namespace A104555.P16962613766673286495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128834 n : ℚ) / 3 * (A000217 (n + 1) : ℚ)

end

end A104555.P16962613766673286495

namespace A104555

/-- `A128834(n)/3*A000217(n+1)` -/
def P16962613766673286495.Spec : Prop :=
  ∀ n, P16962613766673286495.a n = (A104555 n : ℚ)

end A104555

/-! ## A104555.P15114210073986543286

`(1-A030118(n)+n)*∑[A008611(n)]`
-/

namespace A104555.P15114210073986543286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A030118 n + (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104555.P15114210073986543286

namespace A104555

/-- `(1-A030118(n)+n)*∑[A008611(n)]` -/
def P15114210073986543286.Spec : Prop :=
  ∀ n, P15114210073986543286.a n = A104555 n

end A104555

/-! ## A104555.P17072288140192989993

`A001840(n)*A128834(n)*A128834(n)²`
-/

namespace A104555.P17072288140192989993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n * A128834 n * A128834 n ^ 2

end

end A104555.P17072288140192989993

namespace A104555

/-- `A001840(n)*A128834(n)*A128834(n)²` -/
def P17072288140192989993.Spec : Prop :=
  ∀ n, P17072288140192989993.a n = A104555 n

end A104555

/-! ## A104555.P10227240460644288101

`(A010892(n)-A010892(n+1))*A001840(n)`
-/

namespace A104555.P10227240460644288101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010892 n - A010892 (n + 1)) * A001840 n

end

end A104555.P10227240460644288101

namespace A104555

/-- `(A010892(n)-A010892(n+1))*A001840(n)` -/
def P10227240460644288101.Spec : Prop :=
  ∀ n, P10227240460644288101.a n = A104555 n

end A104555

/-! ## A104555.P12589597822627170726

`A001840(n)*A010892(n+5)`
-/

namespace A104555.P12589597822627170726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n * A010892 (n + 5)

end

end A104555.P12589597822627170726

namespace A104555

/-- `A001840(n)*A010892(n+5)` -/
def P12589597822627170726.Spec : Prop :=
  ∀ n, P12589597822627170726.a n = A104555 n

end A104555

/-! ## A104555.P375363882391603507

`A147843(A001840(n))`
-/

namespace A104555.P375363882391603507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147843 (A001840 n).toNat

end

end A104555.P375363882391603507

namespace A104555

/-- `A147843(A001840(n))` -/
def P375363882391603507.Spec : Prop :=
  ∀ n, P375363882391603507.a n = A104555 n

end A104555

/-! ## A104555.P5598346799342178826

`A147843(A087539(n+2))`
-/

namespace A104555.P5598346799342178826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147843 (A087539 (n + 2)).toNat

end

end A104555.P5598346799342178826

namespace A104555

/-- `A147843(A087539(n+2))` -/
def P5598346799342178826.Spec : Prop :=
  ∀ n, P5598346799342178826.a n = A104555 n

end A104555

/-! ## A104555.P2909136635476016035

`A147843(eq[0, A073189(n)])`
-/

namespace A104555.P2909136635476016035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104555.P2909136635476016035

namespace A104555

/-- `A147843(eq[0, A073189(n)])` -/
def P2909136635476016035.Spec : Prop :=
  ∀ n, P2909136635476016035.a n = A104555 n

end A104555

/-! ## A104555.P15319308738740883913

`A147843(A008731(Δ[n²]))`
-/

namespace A104555.P15319308738740883913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147843 (A008731 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A104555.P15319308738740883913

namespace A104555

/-- `A147843(A008731(Δ[n²]))` -/
def P15319308738740883913.Spec : Prop :=
  ∀ n, P15319308738740883913.a n = A104555 n

end A104555

/-! ## A104555.P6719853117942344261

`A147843(∑[A008620(n)]-A008620(n))`
-/

namespace A104555.P6719853117942344261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147843 (∑ j ∈ Finset.range (n + 1), f1 j - A008620 n).toNat

end

end A104555.P6719853117942344261

namespace A104555

/-- `A147843(∑[A008620(n)]-A008620(n))` -/
def P6719853117942344261.Spec : Prop :=
  ∀ n, P6719853117942344261.a n = A104555 n

end A104555

/-! ## A104555.P11929030149488947288

`∑[n+1]/3*A010815(A001840(n+3))`
-/

namespace A104555.P11929030149488947288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3 * (A010815 (A001840 (n + 3)).toNat : ℚ)

end

end A104555.P11929030149488947288

namespace A104555

/-- `∑[n+1]/3*A010815(A001840(n+3))` -/
def P11929030149488947288.Spec : Prop :=
  ∀ n, P11929030149488947288.a n = (A104555 n : ℚ)

end A104555

/-!
# A104556: Matrix inverse of triangle A001497 of Bessel polynomials, read by rows; essentially the same as triangle A096713 of modified Hermite polynomials.

The programs for A104556, there is no canonical definition to state claims against.
-/

/-! ## A104556.P8586930506310449218

`A066325(A065562(n+1)+1)`
-/

namespace A104556.P8586930506310449218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 (A065562 (n + 1) + 1).toNat

end

end A104556.P8586930506310449218

/-! ## A104556.P6796621206097482971

`A049403(n+1)*A097807(n)`
-/

namespace A104556.P6796621206097482971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049403 (n + 1) * A097807 n

end

end A104556.P6796621206097482971

/-! ## A104556.P11906572433810984514

`A033999(A025581(n))*A049403(n+1)`
-/

namespace A104556.P11906572433810984514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A049403 (n + 1)

end

end A104556.P11906572433810984514

/-! ## A104556.P5085543535256061610

`A049403(n+1)*A062157(A004736(n+1))`
-/

namespace A104556.P5085543535256061610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049403 (n + 1) * A062157 (A004736 (n + 1)).toNat

end

end A104556.P5085543535256061610

/-! ## A104556.P9819795227126278760

`A033999(A108872(n+1))*A049403(n+1)`
-/

namespace A104556.P9819795227126278760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A108872 (n + 1)).toNat * A049403 (n + 1)

end

end A104556.P9819795227126278760

/-! ## A104556.P385880773200414711

`A049403(n+1)*A062157(A094727(n+1))`
-/

namespace A104556.P385880773200414711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049403 (n + 1) * A062157 (A094727 (n + 1)).toNat

end

end A104556.P385880773200414711

/-! ## A104556.P166441923688902444

`A009531(A114112(A134234(n+1)))*A049403(n+1)`
-/

namespace A104556.P166441923688902444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A114112 (A134234 (n + 1)).toNat).toNat * A049403 (n + 1)

end

end A104556.P166441923688902444

/-! ## A104556.P16385030085056288290

`A119275(n)/A130321(n)`
-/

namespace A104556.P16385030085056288290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119275 n : ℚ) / (A130321 n : ℚ)

end

end A104556.P16385030085056288290

/-! ## A104556.P8798836106237647703

`A119275(n)/A062001(n+1)`
-/

namespace A104556.P8798836106237647703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119275 n : ℚ) / (A062001 (n + 1) : ℚ)

end

end A104556.P8798836106237647703

/-! ## A104556.P5964921272318296985

`A119275(n)/A152072(n+1)`
-/

namespace A104556.P5964921272318296985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119275 n : ℚ) / (A152072 (n + 1) : ℚ)

end

end A104556.P5964921272318296985

/-! ## A104556.P6085531159657118516

`A119275(n)/A209434(n)`
-/

namespace A104556.P6085531159657118516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119275 n : ℚ) / (A209434 n : ℚ)

end

end A104556.P6085531159657118516

/-! ## A104556.P6222942416623244390

`A008275(n+1)/A130534(n)*A049403(n+1)`
-/

namespace A104556.P6222942416623244390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008275 (n + 1) : ℚ) / (A130534 n : ℚ) * (A049403 (n + 1) : ℚ)

end

end A104556.P6222942416623244390

/-! ## A104556.P10324362646193672369

`A049403(n+1)/A176230(n)*A176231(n)`
-/

namespace A104556.P10324362646193672369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049403 (n + 1) : ℚ) / (A176230 n : ℚ) * (A176231 n : ℚ)

end

end A104556.P10324362646193672369

/-! ## A104556.P16254266063860304059

`A119275(n)/A209439(n)`
-/

namespace A104556.P16254266063860304059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119275 n : ℚ) / (A209439 n : ℚ)

end

end A104556.P16254266063860304059

/-!
# A104557: Triangle T, read by rows, such that the unsigned columns of the matrix inverse when read downwards equals the rows of T read backwards, with T(n,n)=1 and T(n,n-1) = floor((n+1)/2)*floor((n+2)/2).

The programs for A104557, there is no canonical definition to state claims against.
-/

/-! ## A104557.P13406548065167382260

`(C(comp[∑[n]]-n, 2)-(n+1))!*A104559(n)`
-/

namespace A104557.P13406548065167382260
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℤ) * A104559 n

end

end A104557.P13406548065167382260

/-! ## A104557.P2935689707285125477

`abs(A053495(A061579(n)))`
-/

namespace A104557.P2935689707285125477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053495 (A061579 n).toNat|

end

end A104557.P2935689707285125477

/-! ## A104557.P10711840692352580760

`A104559(n)*A119502(n)`
-/

namespace A104557.P10711840692352580760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104559 n * A119502 n

end

end A104557.P10711840692352580760

/-! ## A104557.P1620580488383984902

`abs(A053495(A038722(n+2)))`
-/

namespace A104557.P1620580488383984902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053495 (A038722 (n + 2)).toNat|

end

end A104557.P1620580488383984902

/-! ## A104557.P7335634720355901199

`A025581(n)!*A104559(n)`
-/

namespace A104557.P7335634720355901199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 n).toNat : ℤ) * A104559 n

end

end A104557.P7335634720355901199

/-! ## A104557.P12166500774019367069

`A025660(n+1)!*A104559(n)`
-/

namespace A104557.P12166500774019367069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025660 (n + 1)).toNat : ℤ) * A104559 n

end

end A104557.P12166500774019367069

/-! ## A104557.P11832681753472112759

`A081123(A099375(n))*A104559(n)`
-/

namespace A104557.P11832681753472112759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (A099375 n).toNat * A104559 n

end

end A104557.P11832681753472112759

/-! ## A104557.P1968110506120860498

`A104559(n)*A130675(A130321(n))`
-/

namespace A104557.P1968110506120860498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104559 n * A130675 (A130321 n).toNat

end

end A104557.P1968110506120860498

/-! ## A104557.P13384857993950677039

`A104559(n)*A233543(A061579(n))`
-/

namespace A104557.P13384857993950677039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104559 n * A233543 (A061579 n).toNat

end

end A104557.P13384857993950677039

/-! ## A104557.P15488856156646100379

`gcd(A000038(n), A053495(A061579(n)))`
-/

namespace A104557.P15488856156646100379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A053495 (A061579 n).toNat)

end

end A104557.P15488856156646100379

/-!
# A104558: Triangle, read by rows, equal to the matrix inverse of A104557 and related to Laguerre polynomials.

The programs for A104558, there is no canonical definition to state claims against.
-/

/-! ## A104558.P11612562088260474579

`A104041(n)-A025469(A052912(n))`
-/

namespace A104558.P11612562088260474579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104041 n - A025469 (A052912 n).toNat

end

end A104558.P11612562088260474579

/-! ## A104558.P8983961539984724825

`A206022(n)-A010051(A303307(n))`
-/

namespace A104558.P8983961539984724825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206022 n - A010051 (A303307 n).toNat

end

end A104558.P8983961539984724825

/-! ## A104558.P3936119594127887847

`A104041(n)-A025469(A003040(n+1))`
-/

namespace A104558.P3936119594127887847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104041 n - A025469 (A003040 (n + 1)).toNat

end

end A104558.P3936119594127887847

/-! ## A104558.P13636328382977293735

`A209863(A271703(n))-A271466(n+2)`
-/

namespace A104558.P13636328382977293735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209863 (A271703 n).toNat - A271466 (n + 2)

end

end A104558.P13636328382977293735

/-! ## A104558.P6851060197963132337

`A337383(A004119(n+4))+A117362(n)`
-/

namespace A104558.P6851060197963132337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337383 (A004119 (n + 4)).toNat + A117362 n

end

end A104558.P6851060197963132337

/-!
# A104559: Triangle, read by rows, of the number of left factors of peakless Motzkin paths of length n having k number of U's and D's (i.e., number of paths from (0,0) to the line x=n, consisting of steps U=(1,1), H=(1,0), D=(1,1), that never go below the x-axis and a U step is never followed by a D step).

The programs for A104559, there is no canonical definition to state claims against.
-/

/-! ## A104559.P11970149089166031962

`A065941(n)*A194005(n)`
-/

namespace A104559.P11970149089166031962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 n * A194005 n

end

end A104559.P11970149089166031962

/-! ## A104559.P4779509149065035761

`abs(A108299(n)*A194005(n))`
-/

namespace A104559.P4779509149065035761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108299 n * A194005 n|

end

end A104559.P4779509149065035761

/-! ## A104559.P17679780523727848545

`A065941(comp[∑[n]])*A065941(n)`
-/

namespace A104559.P17679780523727848545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A065941 n

end

end A104559.P17679780523727848545

/-! ## A104559.P11325754557162625595

`A103631(comp[∑[n]])*A194005(n)`
-/

namespace A104559.P11325754557162625595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A194005 n

end

end A104559.P11325754557162625595

/-! ## A104559.P179543502283815082

`abs(A039961(n+2)*A194005(n))`
-/

namespace A104559.P179543502283815082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A039961 (n + 2) * A194005 n|

end

end A104559.P179543502283815082

/-! ## A104559.P17182185401874767406

`ceil(A131268(n)/2)*A194005(n)`
-/

namespace A104559.P17182185401874767406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131268 n : ℚ) / 2⌉ * A194005 n

end

end A104559.P17182185401874767406

/-! ## A104559.P3979079973579041382

`A046854(A061579(n))*A194005(n)`
-/

namespace A104559.P3979079973579041382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 (A061579 n).toNat * A194005 n

end

end A104559.P3979079973579041382

/-! ## A104559.P12683342070986752422

`A000463(A131268(n))*A194005(n)`
-/

namespace A104559.P12683342070986752422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A131268 n).toNat * A194005 n

end

end A104559.P12683342070986752422

/-! ## A104559.P3715588675951805668

`(A374441(n)+A065941(n))*A065941(n)`
-/

namespace A104559.P3715588675951805668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A374441 n + A065941 n) * A065941 n

end

end A104559.P3715588675951805668

/-! ## A104559.P7014613433712636542

`(A194005(n)-A374441(n))*A194005(n)`
-/

namespace A104559.P7014613433712636542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A194005 n - A374441 n) * A194005 n

end

end A104559.P7014613433712636542

/-!
# A104560: Matrix inverse of triangle A104559, read by rows.

The programs for A104560, there is no canonical definition to state claims against.
-/

/-! ## A104560.P13963582243037296694

`A136457(n+1)/A097847(A146700(n+1))`
-/

namespace A104560.P13963582243037296694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136457 (n + 1) : ℚ) / (A097847 (A146700 (n + 1)).toNat : ℚ)

end

end A104560.P13963582243037296694

/-!
# A104561: Column 0 of triangle A104560.

The programs for A104561, there is no canonical definition to state claims against.
-/

/-! ## A104561.P14026025609446699885

`A104560(∑[n])`
-/

namespace A104561.P14026025609446699885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104560 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104561.P14026025609446699885

/-! ## A104561.P14643469095316658721

`and(-1, A104560(A000217(n)))`
-/

namespace A104561.P14643469095316658721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A104560 (A000217 n).toNat)

end

end A104561.P14643469095316658721

/-! ## A104561.P5294605498023766429

`A057427(n+1)*A104560(C(n+1, 2))`
-/

namespace A104561.P5294605498023766429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A104560 (Nat.choose (n + 1) 2)

end

end A104561.P5294605498023766429

/-! ## A104561.P2755524477998235683

`A337605(n)+A104560(A000217(n))`
-/

namespace A104561.P2755524477998235683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337605 n + A104560 (A000217 n).toNat

end

end A104561.P2755524477998235683

/-! ## A104561.P4188795381586489683

`A104560(A000217(n))%A034513(n)`
-/

namespace A104561.P4188795381586489683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104560 (A000217 n).toNat) (A034513 n)

end

end A104561.P4188795381586489683

/-!
# A104562: Inverse of the Motzkin triangle A064189.

The programs for A104562, there is no canonical definition to state claims against.
-/

/-! ## A104562.P14774128825675630122

`A097807(n)*A101950(n)`
-/

namespace A104562.P14774128825675630122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A101950 n

end

end A104562.P14774128825675630122

/-! ## A104562.P2858859797884756837

`A009531(A099375(n))*A101950(n)`
-/

namespace A104562.P2858859797884756837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A101950 n

end

end A104562.P2858859797884756837

/-! ## A104562.P6277962575172435125

`A062157(A082233(n))*A101950(n)`
-/

namespace A104562.P6277962575172435125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A082233 n).toNat * A101950 n

end

end A104562.P6277962575172435125

/-! ## A104562.P6472800230734985683

`A053122(n)/A078812(n)*A101950(n)`
-/

namespace A104562.P6472800230734985683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053122 n : ℚ) / (A078812 n : ℚ) * (A101950 n : ℚ)

end

end A104562.P6472800230734985683

/-! ## A104562.P13868647877322028760

`A101950(n)/A125662(n)*A207815(n)`
-/

namespace A104562.P13868647877322028760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101950 n : ℚ) / (A125662 n : ℚ) * (A207815 n : ℚ)

end

end A104562.P13868647877322028760

/-! ## A104562.P1599703978721294384

`A101950(n)/A159764(n)*A207823(n)`
-/

namespace A104562.P1599703978721294384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101950 n : ℚ) / (A159764 n : ℚ) * (A207823 n : ℚ)

end

end A104562.P1599703978721294384

/-! ## A104562.P10029120434807888313

`A344566(A014132(n+1))`
-/

namespace A104562.P10029120434807888313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344566 (A014132 (n + 1)).toNat

end

end A104562.P10029120434807888313

/-! ## A104562.P5279417975893093956

`A101950(n)/A123967(n)*A207824(n)`
-/

namespace A104562.P5279417975893093956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101950 n : ℚ) / (A123967 n : ℚ) * (A207824 n : ℚ)

end

end A104562.P5279417975893093956

/-! ## A104562.P7449868332203368702

`A101950(n)*A158388(A178112(n))`
-/

namespace A104562.P7449868332203368702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101950 n * A158388 (A178112 n).toNat

end

end A104562.P7449868332203368702

/-! ## A104562.P2190273327732808158

`A101950(n)*A209615(A130321(n))`
-/

namespace A104562.P2190273327732808158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101950 n * A209615 (A130321 n).toNat

end

end A104562.P2190273327732808158

/-!
# A104563: A floretion-generated sequence relating to centered square numbers.

The programs for A104563, the canonical program `A104563.P2588928169929013683` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104563 has offset 0).

The definition of A104563 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104563.P5154083763664307071

`1/2*(n²+1-cos(n*π/2))`
-/

namespace A104563.P5154083763664307071
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 2 : ℝ) * ((n ^ 2 : ℝ) + (1 - Real.cos ((n : ℝ) * (Real.pi / 2))))

end

end A104563.P5154083763664307071

namespace A104563

/-- `1/2*(n²+1-cos(n*π/2))` -/
def P5154083763664307071.Spec : Prop :=
  ∀ n, P5154083763664307071.a n = (A104563 n : ℝ)

end A104563

/-! ## A104563.P2588928169929013683

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5, a(4)=8`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A104563

/-- `3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P2588928169929013683.Spec : Prop :=
  ∀ n, P2588928169929013683.a n = A104563 n

theorem P2588928169929013683.correct : P2588928169929013683.Spec := by
  intro n
  simp only [A104563]

end A104563

/-! ## A104563.P12144866332082649251

`∑[∑[n]%2+n]-n`
-/

namespace A104563.P12144866332082649251
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A104563.P12144866332082649251

namespace A104563

/-- `∑[∑[n]%2+n]-n` -/
def P12144866332082649251.Spec : Prop :=
  ∀ n, P12144866332082649251.a n = A104563 n

end A104563

/-! ## A104563.P10748537152201550964

`∑[and(1, ∑[n])+n]-n`
-/

namespace A104563.P10748537152201550964
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A104563.P10748537152201550964

namespace A104563

/-- `∑[and(1, ∑[n])+n]-n` -/
def P10748537152201550964.Spec : Prop :=
  ∀ n, P10748537152201550964.a n = A104563 n

end A104563

/-! ## A104563.P5798865409510917066

`(gcd(4, n)%4+n²)/2`
-/

namespace A104563.P5798865409510917066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 4 n % 4 + n ^ 2 : ℕ) : ℚ) / 2

end

end A104563.P5798865409510917066

namespace A104563

/-- `(gcd(4, n)%4+n²)/2` -/
def P5798865409510917066.Spec : Prop :=
  ∀ n, P5798865409510917066.a n = (A104563 n : ℚ)

end A104563

/-! ## A104563.P6667580844916200615

`∑[n]-∑[char[or(2, n)+1]]`
-/

namespace A104563.P6667580844916200615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A104563.P6667580844916200615

namespace A104563

/-- `∑[n]-∑[char[or(2, n)+1]]` -/
def P6667580844916200615.Spec : Prop :=
  ∀ n, P6667580844916200615.a n = A104563 n

end A104563

/-! ## A104563.P14363351472379235048

`∑[n-val(a(n-1), 2)]` with `a(0)=0, a(1)=1`
-/

namespace A104563.P14363351472379235048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (n : ℤ) - (SequenceMachineLib.valuation (f1 (n - 1)).toNat 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104563.P14363351472379235048

namespace A104563

/-- `∑[n-val(a(n-1), 2)]` -/
def P14363351472379235048.Spec : Prop :=
  ∀ n, P14363351472379235048.a n = A104563 n

end A104563

/-! ## A104563.P15361048007070971001

`∑[n+1-gcd(2, ∑[n])]+1`
-/

namespace A104563.P15361048007070971001
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A104563.P15361048007070971001

namespace A104563

/-- `∑[n+1-gcd(2, ∑[n])]+1` -/
def P15361048007070971001.Spec : Prop :=
  ∀ n, P15361048007070971001.a n = A104563 n

end A104563

/-! ## A104563.P541294985839592024

`∑[a(n-4)+4]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2, a(4)=3`
-/

namespace A104563.P541294985839592024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 2, 3] fun n f1 =>
  f1 (n - 4) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104563.P541294985839592024

namespace A104563

/-- `∑[a(n-4)+4]` -/
def P541294985839592024.Spec : Prop :=
  ∀ n, (P541294985839592024.a n : ℤ) = A104563 n

end A104563

/-! ## A104563.P7380748743253362935

`∑[∑[2-a(n-2)]]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A104563.P7380748743253362935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 0] fun n f2 =>
  2 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104563.P7380748743253362935

namespace A104563

/-- `∑[∑[2-a(n-2)]]` -/
def P7380748743253362935.Spec : Prop :=
  ∀ n, P7380748743253362935.a n = A104563 n

end A104563

/-! ## A104563.P5032961957758517117

`(1-n)²+2-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A104563.P5032961957758517117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (1 - (n : ℤ)) ^ 2 + (2 - a (n - 2))

end

end A104563.P5032961957758517117

namespace A104563

/-- `(1-n)²+2-a(n-2)` -/
def P5032961957758517117.Spec : Prop :=
  ∀ n, P5032961957758517117.a n = A104563 n

end A104563

/-! ## A104563.P831912799048692882

`(1-n)²-(a(n-2)-2)` with `a(0)=0, a(1)=1`
-/

namespace A104563.P831912799048692882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (1 - (n : ℤ)) ^ 2 - (a (n - 2) - 2)

end

end A104563.P831912799048692882

namespace A104563

/-- `(1-n)²-(a(n-2)-2)` -/
def P831912799048692882.Spec : Prop :=
  ∀ n, P831912799048692882.a n = A104563 n

end A104563

/-! ## A104563.P4085872189805351259

`1-∑[∑[∑[(-1)^∑[n+1]]]+2]`
-/

namespace A104563.P4085872189805351259
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f4 j)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104563.P4085872189805351259

namespace A104563

/-- `1-∑[∑[∑[(-1)^∑[n+1]]]+2]` -/
def P4085872189805351259.Spec : Prop :=
  ∀ n, P4085872189805351259.a n = A104563 n

end A104563

/-! ## A104563.P17446950250108730913

`(A007877(n)+n²)/2`
-/

namespace A104563.P17446950250108730913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007877 n + (n ^ 2 : ℤ) : ℚ) / 2

end

end A104563.P17446950250108730913

namespace A104563

/-- `(A007877(n)+n²)/2` -/
def P17446950250108730913.Spec : Prop :=
  ∀ n, P17446950250108730913.a n = (A104563 n : ℚ)

end A104563

/-! ## A104563.P1218891541608820947

`or(char[or(2, n)], A000982(n))`
-/

namespace A104563.P1218891541608820947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A000982 n)

end

end A104563.P1218891541608820947

namespace A104563

/-- `or(char[or(2, n)], A000982(n))` -/
def P1218891541608820947.Spec : Prop :=
  ∀ n, P1218891541608820947.a n = A104563 n

end A104563

/-! ## A104563.P9890083925478642176

`∑[comp[A047401(n+2)]-n]`
-/

namespace A104563.P9890083925478642176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047401 (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104563.P9890083925478642176

namespace A104563

/-- `∑[comp[A047401(n+2)]-n]` -/
def P9890083925478642176.Spec : Prop :=
  ∀ n, P9890083925478642176.a n = A104563 n

end A104563

/-! ## A104563.P5415063655148502985

`xor(A007590(n), A166486(n))`
-/

namespace A104563.P5415063655148502985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007590 n) (A166486 n)

end

end A104563.P5415063655148502985

namespace A104563

/-- `xor(A007590(n), A166486(n))` -/
def P5415063655148502985.Spec : Prop :=
  ∀ n, P5415063655148502985.a n = A104563 n

end A104563

/-! ## A104563.P7768881663549273966

`xor(A097063(n), A152822(n))`
-/

namespace A104563.P7768881663549273966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A097063 n) (A152822 n)

end

end A104563.P7768881663549273966

namespace A104563

/-- `xor(A097063(n), A152822(n))` -/
def P7768881663549273966.Spec : Prop :=
  ∀ n, P7768881663549273966.a n = A104563 n

end A104563

/-! ## A104563.P2701675876242588477

`∑[n-A059841(A065033(n))]`
-/

namespace A104563.P2701675876242588477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A059841 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104563.P2701675876242588477

namespace A104563

/-- `∑[n-A059841(A065033(n))]` -/
def P2701675876242588477.Spec : Prop :=
  ∀ n, P2701675876242588477.a n = A104563 n

end A104563

/-! ## A104563.P14554248395867218711

`xor(A099392(n+1), A121262(n))`
-/

namespace A104563.P14554248395867218711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A099392 (n + 1)) (A121262 n)

end

end A104563.P14554248395867218711

namespace A104563

/-- `xor(A099392(n+1), A121262(n))` -/
def P14554248395867218711.Spec : Prop :=
  ∀ n, P14554248395867218711.a n = A104563 n

end A104563

/-!
# A104564: Number of distinct prime divisors of 77...771 (with n 7's).

The programs for A104564, there is no canonical definition to state claims against.
-/

/-! ## A104564.P16769344177654896877

`A001221(A271665(n+1)*A283740(3*(n+1)))`
-/

namespace A104564.P16769344177654896877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A271665 (n + 1) * A283740 (3 * (n + 1))).toNat

end

end A104564.P16769344177654896877

/-! ## A104564.P7672156078771061976

`A001221(A346619(n)+A295951(n+3))`
-/

namespace A104564.P7672156078771061976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A346619 n + A295951 (n + 3)).toNat

end

end A104564.P7672156078771061976

/-!
# A104565: Reversion of Pell numbers A000129(n+1).

The programs for A104565, the canonical program `A104565.P857509059757385936` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104565 has offset 0).

The definition of A104565 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104565.P857509059757385936

`((8-8*n)*a(n-2)-(4*n+2)*a(n-1))/(n+2)` with `a(0)=1, a(1)=-2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A104565

/-- `((8-8*n)*a(n-2)-(4*n+2)*a(n-1))/(n+2)` -/
def P857509059757385936.Spec : Prop :=
  ∀ n, P857509059757385936.a n = (A104565 n : ℚ)

end A104565

/-!
# A104566: Triangle read by rows: T(i,j) is the (i,j)-entry (1 <= j <= i) of the product H*R of the infinite lower triangular matrices H = [1; 1,2; 1,2,1; 1 2,1,2; ...] and R = [1; 1,1; 1,1,1; 1,1,1,1; ...].

The programs for A104566, there is no canonical definition to state claims against.
-/

/-! ## A104566.P5376510557190966192

`A053737(∏[char[∑[n]]+1]-2^(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A104566.P5376510557190966192
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) : ℤ))).toNat

end

end A104566.P5376510557190966192

/-! ## A104566.P13885823637768147335

`A053737(A130328(n))`
-/

namespace A104566.P13885823637768147335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A130328 n).toNat

end

end A104566.P13885823637768147335

/-! ## A104566.P17948102660197749486

`A053756(A104569(n+1))`
-/

namespace A104566.P17948102660197749486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053756 (A104569 (n + 1)).toNat

end

end A104566.P17948102660197749486

/-! ## A104566.P6013956131283795097

`A053737(A204985(n+1)/2)`
-/

namespace A104566.P6013956131283795097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (SequenceMachineLib.roundAway ((A204985 (n + 1) : ℚ) / 2)).toNat

end

end A104566.P6013956131283795097

/-! ## A104566.P1817779403052122540

`A104568(n)+char[A185869(n+1)]`
-/

namespace A104566.P1817779403052122540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185869 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104568 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A104566.P1817779403052122540

/-! ## A104566.P16406450514165354038

`A104568(n)+A000035(A080099(n))`
-/

namespace A104566.P16406450514165354038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104568 n + A000035 (A080099 n).toNat

end

end A104566.P16406450514165354038

/-! ## A104566.P14142406941335376927

`A104568(n)+A021913(A069011(n))`
-/

namespace A104566.P14142406941335376927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104568 n + A021913 (A069011 n).toNat

end

end A104566.P14142406941335376927

/-! ## A104566.P8702808084913780985

`A053737(A059268(n)*A130330(n))`
-/

namespace A104566.P8702808084913780985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A059268 n * A130330 n).toNat

end

end A104566.P8702808084913780985

/-! ## A104566.P440819958489145196

`A053737(lcm(A059268(n), A130330(n)))`
-/

namespace A104566.P440819958489145196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (Int.lcm (A059268 n) (A130330 n))

end

end A104566.P440819958489145196

/-! ## A104566.P13791561257770943192

`A004736(n+1)+A000360(A099627(n))`
-/

namespace A104566.P13791561257770943192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + A000360 (A099627 n).toNat

end

end A104566.P13791561257770943192

/-!
# A104567: Triangle read by rows: T(i,j) = i-j+1 if j is odd; T(i,j) = 2(i-j+1) if j is even (1 <= j <= i).

The programs for A104567, the canonical program `A104567.P6724238172448212378` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104567 has offset 1).

The definition of A104567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104567.P14419305445671629751

`(A060510(n)+1)*(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A104567.P14419305445671629751
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060510 n + 1) * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A104567.P14419305445671629751

namespace A104567

/-- `(A060510(n)+1)*(C(comp[∑[n]]-n, 2)-n)` -/
def P14419305445671629751.Spec : Prop :=
  ∀ n, P14419305445671629751.a n = A104567 (n + 1)

end A104567

/-! ## A104567.P14617023623841270518

`gcd(A101468(n), A276158(n))`
-/

namespace A104567.P14617023623841270518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101468 n) (A276158 n)

end

end A104567.P14617023623841270518

namespace A104567

/-- `gcd(A101468(n), A276158(n))` -/
def P14617023623841270518.Spec : Prop :=
  ∀ n, (P14617023623841270518.a n : ℤ) = A104567 (n + 1)

end A104567

/-! ## A104567.P13709152889923635602

`A141611(n)/A139633(n+1)`
-/

namespace A104567.P13709152889923635602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141611 n : ℚ) / (A139633 (n + 1) : ℚ)

end

end A104567.P13709152889923635602

namespace A104567

/-- `A141611(n)/A139633(n+1)` -/
def P13709152889923635602.Spec : Prop :=
  ∀ n, P13709152889923635602.a n = (A104567 (n + 1) : ℚ)

end A104567

/-! ## A104567.P13294412708320820730

`gcd(A003991(n+1), A143595(n+1))`
-/

namespace A104567.P13294412708320820730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003991 (n + 1)) (A143595 (n + 1))

end

end A104567.P13294412708320820730

namespace A104567

/-- `gcd(A003991(n+1), A143595(n+1))` -/
def P13294412708320820730.Spec : Prop :=
  ∀ n, (P13294412708320820730.a n : ℤ) = A104567 (n + 1)

end A104567

/-! ## A104567.P9430205935739149025

`gcd(A065157(n+1), A212012(n+1))`
-/

namespace A104567.P9430205935739149025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065157 (n + 1)) (A212012 (n + 1))

end

end A104567.P9430205935739149025

namespace A104567

/-- `gcd(A065157(n+1), A212012(n+1))` -/
def P9430205935739149025.Spec : Prop :=
  ∀ n, (P9430205935739149025.a n : ℤ) = A104567 (n + 1)

end A104567

/-! ## A104567.P6724238172448212378

`gcd(2, A002260(n+1))*A004736(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A104567

/-- `gcd(2, A002260(n+1))*A004736(n+1)` -/
def P6724238172448212378.Spec : Prop :=
  ∀ n, P6724238172448212378.a n = A104567 (n + 1)

theorem P6724238172448212378.correct : P6724238172448212378.Spec := by
  intro n
  simp only [A104567, Nat.add_sub_cancel]

end A104567

/-! ## A104567.P5496262840515919392

`(2-(A002262(n)+1)%2)*A004736(n+1)`
-/

namespace A104567.P5496262840515919392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - Int.tmod (A002262 n + 1) 2) * A004736 (n + 1)

end

end A104567.P5496262840515919392

namespace A104567

/-- `(2-(A002262(n)+1)%2)*A004736(n+1)` -/
def P5496262840515919392.Spec : Prop :=
  ∀ n, P5496262840515919392.a n = A104567 (n + 1)

end A104567

/-! ## A104567.P1238609587194470440

`A000034(A002262(n))*A004736(n+1)`
-/

namespace A104567.P1238609587194470440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A002262 n).toNat * A004736 (n + 1)

end

end A104567.P1238609587194470440

namespace A104567

/-- `A000034(A002262(n))*A004736(n+1)` -/
def P1238609587194470440.Spec : Prop :=
  ∀ n, P1238609587194470440.a n = A104567 (n + 1)

end A104567

/-! ## A104567.P16340828962141353551

`(A025581(n)+1)*A000034(A002262(n))`
-/

namespace A104567.P16340828962141353551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A000034 (A002262 n).toNat

end

end A104567.P16340828962141353551

namespace A104567

/-- `(A025581(n)+1)*A000034(A002262(n))` -/
def P16340828962141353551.Spec : Prop :=
  ∀ n, P16340828962141353551.a n = A104567 (n + 1)

end A104567

/-! ## A104567.P15116385518186083845

`(log2(A130321(n))+1)*A000034(A002262(n))`
-/

namespace A104567.P15116385518186083845
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (A130321 n : ℝ) + 1) * (A000034 (A002262 n).toNat : ℝ)

end

end A104567.P15116385518186083845

namespace A104567

/-- `(log2(A130321(n))+1)*A000034(A002262(n))` -/
def P15116385518186083845.Spec : Prop :=
  ∀ n, P15116385518186083845.a n = (A104567 (n + 1) : ℝ)

end A104567

/-! ## A104567.P197006837954645552

`A004736(n+1)*A040001(A002260(n+1))`
-/

namespace A104567.P197006837954645552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A040001 (A002260 (n + 1)).toNat

end

end A104567.P197006837954645552

namespace A104567

/-- `A004736(n+1)*A040001(A002260(n+1))` -/
def P197006837954645552.Spec : Prop :=
  ∀ n, P197006837954645552.a n = A104567 (n + 1)

end A104567

/-! ## A104567.P14006334773724070421

`(A025581(n)+1)*A040001(A002260(n+1))`
-/

namespace A104567.P14006334773724070421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A040001 (A002260 (n + 1)).toNat

end

end A104567.P14006334773724070421

namespace A104567

/-- `(A025581(n)+1)*A040001(A002260(n+1))` -/
def P14006334773724070421.Spec : Prop :=
  ∀ n, P14006334773724070421.a n = A104567 (n + 1)

end A104567

/-! ## A104567.P5358114408154864301

`gcd(2, A002260(n+1))*A002260(A278818(n))`
-/

namespace A104567.P5358114408154864301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A002260 (n + 1)) : ℤ) * A002260 (A278818 n).toNat

end

end A104567.P5358114408154864301

namespace A104567

/-- `gcd(2, A002260(n+1))*A002260(A278818(n))` -/
def P5358114408154864301.Spec : Prop :=
  ∀ n, P5358114408154864301.a n = A104567 (n + 1)

end A104567

/-! ## A104567.P3577611389861172307

`A000034(A002260(n+1)+1)*A004736(n+1)`
-/

namespace A104567.P3577611389861172307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A002260 (n + 1) + 1).toNat * A004736 (n + 1)

end

end A104567.P3577611389861172307

namespace A104567

/-- `A000034(A002260(n+1)+1)*A004736(n+1)` -/
def P3577611389861172307.Spec : Prop :=
  ∀ n, P3577611389861172307.a n = A104567 (n + 1)

end A104567

/-! ## A104567.P2218464395837023414

`A000034(A057554(2*n+1))*A004736(n+1)`
-/

namespace A104567.P2218464395837023414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A057554 (2 * n + 1)).toNat * A004736 (n + 1)

end

end A104567.P2218464395837023414

namespace A104567

/-- `A000034(A057554(2*n+1))*A004736(n+1)` -/
def P2218464395837023414.Spec : Prop :=
  ∀ n, P2218464395837023414.a n = A104567 (n + 1)

end A104567

/-! ## A104567.P11506605057467057936

`(A025581(n)+1)*A000034(A057554(2*n+1))`
-/

namespace A104567.P11506605057467057936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A000034 (A057554 (2 * n + 1)).toNat

end

end A104567.P11506605057467057936

namespace A104567

/-- `(A025581(n)+1)*A000034(A057554(2*n+1))` -/
def P11506605057467057936.Spec : Prop :=
  ∀ n, P11506605057467057936.a n = A104567 (n + 1)

end A104567

/-! ## A104567.P16958390622885587655

`A001511(or(2, A002260(n+1)))*A004736(n+1)`
-/

namespace A104567.P16958390622885587655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.lor 2 (A002260 (n + 1))).toNat * A004736 (n + 1)

end

end A104567.P16958390622885587655

namespace A104567

/-- `A001511(or(2, A002260(n+1)))*A004736(n+1)` -/
def P16958390622885587655.Spec : Prop :=
  ∀ n, P16958390622885587655.a n = A104567 (n + 1)

end A104567

/-! ## A104567.P15822201912321300234

`A004736(n+1)*A040001(A004736(A038722(n+1)))`
-/

namespace A104567.P15822201912321300234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A040001 (A004736 (A038722 (n + 1)).toNat).toNat

end

end A104567.P15822201912321300234

namespace A104567

/-- `A004736(n+1)*A040001(A004736(A038722(n+1)))` -/
def P15822201912321300234.Spec : Prop :=
  ∀ n, P15822201912321300234.a n = A104567 (n + 1)

end A104567

/-! ## A104567.P12042739177080509114

`A001511(A002262(n)²+1)*A004736(n+1)`
-/

namespace A104567.P12042739177080509114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A002262 n ^ 2 + 1).toNat * A004736 (n + 1)

end

end A104567.P12042739177080509114

namespace A104567

/-- `A001511(A002262(n)²+1)*A004736(n+1)` -/
def P12042739177080509114.Spec : Prop :=
  ∀ n, P12042739177080509114.a n = A104567 (n + 1)

end A104567

/-! ## A104567.P15852754299023780046

`A173261(n+2)+A025581(n)`
-/

namespace A104567.P15852754299023780046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173261 (n + 2) + A025581 n

end

end A104567.P15852754299023780046

namespace A104567

/-- `A173261(n+2)+A025581(n)` -/
def P15852754299023780046.Spec : Prop :=
  ∀ n, P15852754299023780046.a n = A104567 (n + 1)

end A104567

/-!
# A104568: Triangle of numbers that are 0 or 1 mod 3.

The programs for A104568, the canonical program `A104568.P1447854330914790321` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104568 has offset 0).

The definition of A104568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104568.P15451976753364978049

`floor(3*(C(comp[∑[n]]-n, 2)-n)/2)`
-/

namespace A104568.P15451976753364978049
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) / 2)⌋

end

end A104568.P15451976753364978049

namespace A104568

/-- `floor(3*(C(comp[∑[n]]-n, 2)-n)/2)` -/
def P15451976753364978049.Spec : Prop :=
  ∀ n, P15451976753364978049.a n = A104568 n

end A104568

/-! ## A104568.P11944239355196182896

`ceil((3*(C(comp[∑[n]]-n, 2)-n)-1)/2)`
-/

namespace A104568.P11944239355196182896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 1 : ℚ) / 2⌉

end

end A104568.P11944239355196182896

namespace A104568

/-- `ceil((3*(C(comp[∑[n]]-n, 2)-n)-1)/2)` -/
def P11944239355196182896.Spec : Prop :=
  ∀ n, P11944239355196182896.a n = A104568 n

end A104568

/-! ## A104568.P10359968658812851977

`and(3*(C(comp[∑[n]]-n, 2)-n), -2)/2`
-/

namespace A104568.P10359968658812851977
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (3 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))) (-2) : ℚ) / 2

end

end A104568.P10359968658812851977

namespace A104568

/-- `and(3*(C(comp[∑[n]]-n, 2)-n), -2)/2` -/
def P10359968658812851977.Spec : Prop :=
  ∀ n, P10359968658812851977.a n = (A104568 n : ℚ)

end A104568

/-! ## A104568.P965928873374960833

`round((3*(C(comp[∑[n]]-n, 2)-n)-1)/2)`
-/

namespace A104568.P965928873374960833
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 1 : ℚ) / 2)

end

end A104568.P965928873374960833

namespace A104568

/-- `round((3*(C(comp[∑[n]]-n, 2)-n)-1)/2)` -/
def P965928873374960833.Spec : Prop :=
  ∀ n, P965928873374960833.a n = A104568 n

end A104568

/-! ## A104568.P1447854330914790321

`A037915(A099375(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A104568

/-- `A037915(A099375(n))` -/
def P1447854330914790321.Spec : Prop :=
  ∀ n, P1447854330914790321.a n = A104568 n

theorem P1447854330914790321.correct : P1447854330914790321.Spec := by
  intro n
  simp only [A104568]

end A104568

/-! ## A104568.P12023864857242845903

`A032766(A004736(n+1))`
-/

namespace A104568.P12023864857242845903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A004736 (n + 1)).toNat

end

end A104568.P12023864857242845903

namespace A104568

/-- `A032766(A004736(n+1))` -/
def P12023864857242845903.Spec : Prop :=
  ∀ n, P12023864857242845903.a n = A104568 n

end A104568

/-! ## A104568.P14735968544382426624

`A008619(A143971(n+1))`
-/

namespace A104568.P14735968544382426624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A143971 (n + 1)).toNat

end

end A104568.P14735968544382426624

namespace A104568

/-- `A008619(A143971(n+1))` -/
def P14735968544382426624.Spec : Prop :=
  ∀ n, P14735968544382426624.a n = A104568 n

end A104568

/-! ## A104568.P2737595699881738815

`A057353(A212012(n+1))`
-/

namespace A104568.P2737595699881738815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A212012 (n + 1)).toNat

end

end A104568.P2737595699881738815

namespace A104568

/-- `A057353(A212012(n+1))` -/
def P2737595699881738815.Spec : Prop :=
  ∀ n, P2737595699881738815.a n = A104568 n

end A104568

/-! ## A104568.P2466287194941762116

`A212012(n+1)-A115514(n+1)`
-/

namespace A104568.P2466287194941762116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212012 (n + 1) - A115514 (n + 1)

end

end A104568.P2466287194941762116

namespace A104568

/-- `A212012(n+1)-A115514(n+1)` -/
def P2466287194941762116.Spec : Prop :=
  ∀ n, P2466287194941762116.a n = A104568 n

end A104568

/-! ## A104568.P1399841479791292722

`A057554(A004736(n+1)²)+A004736(n+1)`
-/

namespace A104568.P1399841479791292722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (A004736 (n + 1) ^ 2).toNat + A004736 (n + 1)

end

end A104568.P1399841479791292722

namespace A104568

/-- `A057554(A004736(n+1)²)+A004736(n+1)` -/
def P1399841479791292722.Spec : Prop :=
  ∀ n, P1399841479791292722.a n = A104568 n

end A104568

/-! ## A104568.P4564768442425842944

`val(8^(C(comp[∑[n]]-n, 2)-n), 4)`
-/

namespace A104568.P4564768442425842944
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((8 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ))).toNat 4

end

end A104568.P4564768442425842944

namespace A104568

/-- `val(8^(C(comp[∑[n]]-n, 2)-n), 4)` -/
def P4564768442425842944.Spec : Prop :=
  ∀ n, (P4564768442425842944.a n : ℤ) = A104568 n

end A104568

/-! ## A104568.P9665721601370152893

`A035936(A055461(n+1))`
-/

namespace A104568.P9665721601370152893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 (A055461 (n + 1)).toNat

end

end A104568.P9665721601370152893

namespace A104568

/-- `A035936(A055461(n+1))` -/
def P9665721601370152893.Spec : Prop :=
  ∀ n, P9665721601370152893.a n = A104568 n

end A104568

/-! ## A104568.P6023054844240427090

`A057555(2*(n+1))+A004526(A057555(2*(n+1)))`
-/

namespace A104568.P6023054844240427090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * (n + 1)) + A004526 (A057555 (2 * (n + 1))).toNat

end

end A104568.P6023054844240427090

namespace A104568

/-- `A057555(2*(n+1))+A004526(A057555(2*(n+1)))` -/
def P6023054844240427090.Spec : Prop :=
  ∀ n, P6023054844240427090.a n = A104568 n

end A104568

/-! ## A104568.P804078498577296740

`A032766(A097285(2*(n+1))-A097285(2*n+1))`
-/

namespace A104568.P804078498577296740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A097285 (2 * (n + 1)) - A097285 (2 * n + 1)).toNat

end

end A104568.P804078498577296740

namespace A104568

/-- `A032766(A097285(2*(n+1))-A097285(2*n+1))` -/
def P804078498577296740.Spec : Prop :=
  ∀ n, P804078498577296740.a n = A104568 n

end A104568

/-! ## A104568.P467072479992313845

`A143997(A103217(n))`
-/

namespace A104568.P467072479992313845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143997 (A103217 n).toNat

end

end A104568.P467072479992313845

namespace A104568

/-- `A143997(A103217(n))` -/
def P467072479992313845.Spec : Prop :=
  ∀ n, P467072479992313845.a n = A104568 n

end A104568

/-! ## A104568.P2856812120967782439

`∑{d}[2^(C(comp[∑[n]]-n, 2)-(n+1)), #%3]`
-/

namespace A104568.P2856812120967782439
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d % 3

end

end A104568.P2856812120967782439

namespace A104568

/-- `∑{d}[2^(C(comp[∑[n]]-n, 2)-(n+1)), #%3]` -/
def P2856812120967782439.Spec : Prop :=
  ∀ n, (P2856812120967782439.a n : ℤ) = A104568 n

end A104568

/-! ## A104568.P3700108452327279100

`A069088(A130321(n))`
-/

namespace A104568.P3700108452327279100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069088 (A130321 n).toNat

end

end A104568.P3700108452327279100

namespace A104568

/-- `A069088(A130321(n))` -/
def P3700108452327279100.Spec : Prop :=
  ∀ n, P3700108452327279100.a n = A104568 n

end A104568

/-! ## A104568.P5131956185719879427

`∑{d}[A036561(n), #%3]`
-/

namespace A104568.P5131956185719879427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d % 3

end

end A104568.P5131956185719879427

namespace A104568

/-- `∑{d}[A036561(n), #%3]` -/
def P5131956185719879427.Spec : Prop :=
  ∀ n, (P5131956185719879427.a n : ℤ) = A104568 n

end A104568

/-! ## A104568.P11851425315422450079

`A254049(A048673(A064989(A254053(n+1))))`
-/

namespace A104568.P11851425315422450079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254049 (A048673 (A064989 (A254053 (n + 1)).toNat).toNat).toNat

end

end A104568.P11851425315422450079

namespace A104568

/-- `A254049(A048673(A064989(A254053(n+1))))` -/
def P11851425315422450079.Spec : Prop :=
  ∀ n, P11851425315422450079.a n = A104568 n

end A104568

/-!
# A104569: Triangle read by rows: T(i,j) is the (i,j)-entry (1 <= j <= i) of the product Q*R of the infinite lower triangular matrices Q = [1; 1,3; 1,3,1; 1 3,1,3; ...] and R = [1; 1,1; 1,1,1; 1,1,1,1; ...].

The programs for A104569, there is no canonical definition to state claims against.
-/

/-! ## A104569.P8267377110820367230

`round(atan(4)*A104566(n+1))`
-/

namespace A104569.P8267377110820367230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (4 : ℝ) * (A104566 (n + 1) : ℝ))

end

end A104569.P8267377110820367230

/-! ## A104569.P6018088232457308960

`A122906(A104566(n+1))`
-/

namespace A104569.P6018088232457308960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122906 (A104566 (n + 1)).toNat

end

end A104569.P6018088232457308960

/-! ## A104569.P17687547421029794

`A042965(A104566(n+1)+1)`
-/

namespace A104569.P17687547421029794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A104566 (n + 1) + 1).toNat

end

end A104569.P17687547421029794

/-! ## A104569.P18311594216408614210

`A004396(2*A104566(n+1))`
-/

namespace A104569.P18311594216408614210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A104566 (n + 1)).toNat

end

end A104569.P18311594216408614210

/-! ## A104569.P864885925024594129

`A099375(n)+A069011(n)%4`
-/

namespace A104569.P864885925024594129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n + Int.tmod (A069011 n) 4

end

end A104569.P864885925024594129

/-! ## A104569.P4709198075860049240

`2*A104566(n+1)-A004736(n+1)`
-/

namespace A104569.P4709198075860049240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104566 (n + 1) - A004736 (n + 1)

end

end A104569.P4709198075860049240

/-! ## A104569.P2189587632732302208

`A099375(n)+A010873(A069011(n))`
-/

namespace A104569.P2189587632732302208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n + A010873 (A069011 n).toNat

end

end A104569.P2189587632732302208

/-! ## A104569.P3973462239062321334

`A080883(eq[A021913(n), A071028(n)])`
-/

namespace A104569.P3973462239062321334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A104569.P3973462239062321334

/-! ## A104569.P3428269000166361904

`A002264(A008574(A104566(n+1))+1)`
-/

namespace A104569.P3428269000166361904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A008574 (A104566 (n + 1)).toNat + 1).toNat

end

end A104569.P3428269000166361904

/-! ## A104569.P8461671574546438531

`A004396(A104566(n+1)+A104566(n+1))`
-/

namespace A104569.P8461671574546438531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A104566 (n + 1) + A104566 (n + 1)).toNat

end

end A104569.P8461671574546438531

/-!
# A104570: Triangle read by rows: T(i,j) is the (i,j)-entry (1 <= j <= i) of the product R*Q of the infinite lower triangular matrices R = [1; 1,1; 1,1,1; 1,1,1,1; ...] and Q = [1; 1,3; 1,3,1; 1,3,1,3; ...].

The programs for A104570, there is no canonical definition to state claims against.
-/

/-! ## A104570.P17224563478329639676

`(C(comp[∑[n]]-n, 2)-n)*A158405(n+1)%4`
-/

namespace A104570.P17224563478329639676
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * Int.tmod (A158405 (n + 1)) 4

end

end A104570.P17224563478329639676

/-! ## A104570.P4137650741269966803

`(C(comp[∑[n]]-n, 2)-n)*A010684(n-C(∑[char[∑[n]]], 2))`
-/

namespace A104570.P4137650741269966803
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A010684 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2)

end

end A104570.P4137650741269966803

/-! ## A104570.P2283700396328260714

`(C(comp[∑[n]]-n, 2)-n)*A040798(2^(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A104570.P2283700396328260714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A040798 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) : ℤ))).toNat

end

end A104570.P2283700396328260714

/-! ## A104570.P13972709291235480382

`∑{d}[A099884(n), A035210(#)]`
-/

namespace A104570.P13972709291235480382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A035210 d

end

end A104570.P13972709291235480382

/-! ## A104570.P4339970265916994577

`A101447(n)%(4*A004736(n+1))`
-/

namespace A104570.P4339970265916994577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101447 n) (4 * A004736 (n + 1))

end

end A104570.P4339970265916994577

/-! ## A104570.P1560895054561584418

`A143453(n)%4*A004736(n+1)`
-/

namespace A104570.P1560895054561584418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143453 n) 4 * A004736 (n + 1)

end

end A104570.P1560895054561584418

/-! ## A104570.P282585594970354602

`A104567(n+1)+A173261(n+2)-1`
-/

namespace A104570.P282585594970354602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104567 (n + 1) + (A173261 (n + 2) - 1)

end

end A104570.P282585594970354602

/-! ## A104570.P709741176438738615

`2*A104567(n+1)-A004736(n+1)`
-/

namespace A104570.P709741176438738615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104567 (n + 1) - A004736 (n + 1)

end

end A104570.P709741176438738615

/-! ## A104570.P10755390154038477273

`A158405(n+1)%4*A004736(n+1)`
-/

namespace A104570.P10755390154038477273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158405 (n + 1)) 4 * A004736 (n + 1)

end

end A104570.P10755390154038477273

/-! ## A104570.P7943027904926892867

`gcd(3, A099884(n))*A000005(A130321(n))`
-/

namespace A104570.P7943027904926892867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A099884 n) : ℤ) * A000005 (A130321 n).toNat

end

end A104570.P7943027904926892867

/-!
# A104571: Triangle T(n,k) = A042948(n-k+1) read by rows, 0<=k<=n.

The programs for A104571, the canonical program `A104571.P7156192359906544948` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104571 has offset 0).

The definition of A104571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104571.P9252828292638410357

`A042948(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A104571.P9252828292638410357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A104571.P9252828292638410357

namespace A104571

/-- `A042948(C(comp[∑[n]]-n, 2)-n)` -/
def P9252828292638410357.Spec : Prop :=
  ∀ n, P9252828292638410357.a n = A104571 n

end A104571

/-! ## A104571.P7156192359906544948

`A003816(A099375(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A104571

/-- `A003816(A099375(n))` -/
def P7156192359906544948.Spec : Prop :=
  ∀ n, P7156192359906544948.a n = A104571 n

theorem P7156192359906544948.correct : P7156192359906544948.Spec := by
  intro n
  simp only [A104571]

end A104571

/-! ## A104571.P8826207828430934880

`A014601(A025581(n))+1`
-/

namespace A104571.P8826207828430934880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (A025581 n).toNat + 1

end

end A104571.P8826207828430934880

namespace A104571

/-- `A014601(A025581(n))+1` -/
def P8826207828430934880.Spec : Prop :=
  ∀ n, P8826207828430934880.a n = A104571 n

end A104571

/-! ## A104571.P7389002667850548901

`A042948(A004736(n+1))`
-/

namespace A104571.P7389002667850548901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A004736 (n + 1)).toNat

end

end A104571.P7389002667850548901

namespace A104571

/-- `A042948(A004736(n+1))` -/
def P7389002667850548901.Spec : Prop :=
  ∀ n, P7389002667850548901.a n = A104571 n

end A104571

/-! ## A104571.P4116550575697199790

`A099479(A143971(n+1))`
-/

namespace A104571.P4116550575697199790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099479 (A143971 (n + 1)).toNat

end

end A104571.P4116550575697199790

namespace A104571

/-- `A099479(A143971(n+1))` -/
def P4116550575697199790.Spec : Prop :=
  ∀ n, P4116550575697199790.a n = A104571 n

end A104571

/-! ## A104571.P5078004619712456537

`A080412(A212012(n+1))`
-/

namespace A104571.P5078004619712456537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 (A212012 (n + 1)).toNat

end

end A104571.P5078004619712456537

namespace A104571

/-- `A080412(A212012(n+1))` -/
def P5078004619712456537.Spec : Prop :=
  ∀ n, P5078004619712456537.a n = A104571 n

end A104571

/-! ## A104571.P1055167019367546933

`A098181(A099375(n)-1)`
-/

namespace A104571.P1055167019367546933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 (A099375 n - 1).toNat

end

end A104571.P1055167019367546933

namespace A104571

/-- `A098181(A099375(n)-1)` -/
def P1055167019367546933.Spec : Prop :=
  ∀ n, P1055167019367546933.a n = A104571 n

end A104571

/-! ## A104571.P3387440375768718179

`A004396(2*A104568(n))`
-/

namespace A104571.P3387440375768718179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A104568 n).toNat

end

end A104571.P3387440375768718179

namespace A104571

/-- `A004396(2*A104568(n))` -/
def P3387440375768718179.Spec : Prop :=
  ∀ n, P3387440375768718179.a n = A104571 n

end A104571

/-! ## A104571.P15109143366643496705

`A212012(n+1)-A128174(n+1)`
-/

namespace A104571.P15109143366643496705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212012 (n + 1) - A128174 (n + 1)

end

end A104571.P15109143366643496705

namespace A104571

/-- `A212012(n+1)-A128174(n+1)` -/
def P15109143366643496705.Spec : Prop :=
  ∀ n, P15109143366643496705.a n = A104571 n

end A104571

/-! ## A104571.P14997249636094957423

`A025581(n)+or(1, A004736(n+1))`
-/

namespace A104571.P14997249636094957423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + Int.lor 1 (A004736 (n + 1))

end

end A104571.P14997249636094957423

namespace A104571

/-- `A025581(n)+or(1, A004736(n+1))` -/
def P14997249636094957423.Spec : Prop :=
  ∀ n, P14997249636094957423.a n = A104571 n

end A104571

/-! ## A104571.P15958257392618523332

`2*A004736(n+1)-A128174(n+1)`
-/

namespace A104571.P15958257392618523332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004736 (n + 1) - A128174 (n + 1)

end

end A104571.P15958257392618523332

namespace A104571

/-- `2*A004736(n+1)-A128174(n+1)` -/
def P15958257392618523332.Spec : Prop :=
  ∀ n, P15958257392618523332.a n = A104571 n

end A104571

/-! ## A104571.P13484034481403920312

`A004396(A104568(n)+A104568(n))`
-/

namespace A104571.P13484034481403920312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A104568 n + A104568 n).toNat

end

end A104571.P13484034481403920312

namespace A104571

/-- `A004396(A104568(n)+A104568(n))` -/
def P13484034481403920312.Spec : Prop :=
  ∀ n, P13484034481403920312.a n = A104571 n

end A104571

/-! ## A104571.P17289471224619170462

`A307531(A055461(n+1))`
-/

namespace A104571.P17289471224619170462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307531 (A055461 (n + 1)).toNat

end

end A104571.P17289471224619170462

namespace A104571

/-- `A307531(A055461(n+1))` -/
def P17289471224619170462.Spec : Prop :=
  ∀ n, P17289471224619170462.a n = A104571 n

end A104571

/-! ## A104571.P10510073064350290200

`filter[A253515(n+1), A133872(#)]`
-/

namespace A104571.P10510073064350290200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A104571.P10510073064350290200

namespace A104571

/-- `filter[A253515(n+1), A133872(#)]` -/
def P10510073064350290200.Spec : Prop :=
  ∀ n, P10510073064350290200.a n = A104571 n

end A104571

/-! ## A104571.P2253327741684375146

`A100795(A103217(n))`
-/

namespace A104571.P2253327741684375146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (A103217 n).toNat

end

end A104571.P2253327741684375146

namespace A104571

/-- `A100795(A103217(n))` -/
def P2253327741684375146.Spec : Prop :=
  ∀ n, P2253327741684375146.a n = A104571 n

end A104571

/-!
# A104572: Triangle read by rows: T(i,j) is the (i,j)-entry (1 <= j <= i) of the product A*B of the infinite lower triangular matrices A = [1; 3, 1; 5, 3, 1; 7, 5, 3, 1; ...] and B=[1; 2,1; 1,2,1; 2,1,2,1; ...].

The programs for A104572, the canonical program `A104572.P17190232593110181506` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104572 has offset 1).

The definition of A104572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104572.P3371277753279127959

`A000326(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A104572.P3371277753279127959
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A104572.P3371277753279127959

namespace A104572

/-- `A000326(C(comp[∑[n]]-n, 2)-n)` -/
def P3371277753279127959.Spec : Prop :=
  ∀ n, P3371277753279127959.a n = A104572 (n + 1)

end A104572

/-! ## A104572.P18217930557616159308

`A115067(C(comp[∑[n]]-n, 2)-n)+1`
-/

namespace A104572.P18217930557616159308
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115067 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) + 1

end

end A104572.P18217930557616159308

namespace A104572

/-- `A115067(C(comp[∑[n]]-n, 2)-n)+1` -/
def P18217930557616159308.Spec : Prop :=
  ∀ n, P18217930557616159308.a n = A104572 (n + 1)

end A104572

/-! ## A104572.P8514763446538746734

`A062741(C(comp[∑[n]]-n, 2)-n)/3`
-/

namespace A104572.P8514763446538746734
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062741 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) : ℚ) / 3

end

end A104572.P8514763446538746734

namespace A104572

/-- `A062741(C(comp[∑[n]]-n, 2)-n)/3` -/
def P8514763446538746734.Spec : Prop :=
  ∀ n, P8514763446538746734.a n = (A104572 (n + 1) : ℚ)

end A104572

/-! ## A104572.P1830969932335112647

`A001318(2*(C(comp[∑[n]]-n, 2)-n)-1)`
-/

namespace A104572.P1830969932335112647
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 1).toNat

end

end A104572.P1830969932335112647

namespace A104572

/-- `A001318(2*(C(comp[∑[n]]-n, 2)-n)-1)` -/
def P1830969932335112647.Spec : Prop :=
  ∀ n, P1830969932335112647.a n = A104572 (n + 1)

end A104572

/-! ## A104572.P4804927318340047905

`A236343(3*(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A104572.P4804927318340047905
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236343 (3 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))).toNat

end

end A104572.P4804927318340047905

namespace A104572

/-- `A236343(3*(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P4804927318340047905.Spec : Prop :=
  ∀ n, P4804927318340047905.a n = A104572 (n + 1)

end A104572

/-! ## A104572.P17190232593110181506

`A001318(A099375(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A104572

/-- `A001318(A099375(n))` -/
def P17190232593110181506.Spec : Prop :=
  ∀ n, P17190232593110181506.a n = A104572 (n + 1)

theorem P17190232593110181506.correct : P17190232593110181506.Spec := by
  intro n
  simp only [A104572, Nat.add_sub_cancel]

end A104572

/-! ## A104572.P221911865821839504

`A000326(A004736(n+1))`
-/

namespace A104572.P221911865821839504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A004736 (n + 1)).toNat

end

end A104572.P221911865821839504

namespace A104572

/-- `A000326(A004736(n+1))` -/
def P221911865821839504.Spec : Prop :=
  ∀ n, P221911865821839504.a n = A104572 (n + 1)

end A104572

/-! ## A104572.P7362792611538814348

`A000326(A025581(n)+1)`
-/

namespace A104572.P7362792611538814348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A025581 n + 1).toNat

end

end A104572.P7362792611538814348

namespace A104572

/-- `A000326(A025581(n)+1)` -/
def P7362792611538814348.Spec : Prop :=
  ∀ n, P7362792611538814348.a n = A104572 (n + 1)

end A104572

/-! ## A104572.P14501899329788931880

`A001840(A143971(n+1))`
-/

namespace A104572.P14501899329788931880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (A143971 (n + 1)).toNat

end

end A104572.P14501899329788931880

namespace A104572

/-- `A001840(A143971(n+1))` -/
def P14501899329788931880.Spec : Prop :=
  ∀ n, P14501899329788931880.a n = A104572 (n + 1)

end A104572

/-! ## A104572.P14020563238288348043

`A245288(A212012(n+1))`
-/

namespace A104572.P14020563238288348043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245288 (A212012 (n + 1)).toNat

end

end A104572.P14020563238288348043

namespace A104572

/-- `A245288(A212012(n+1))` -/
def P14020563238288348043.Spec : Prop :=
  ∀ n, P14020563238288348043.a n = A104572 (n + 1)

end A104572

/-! ## A104572.P14262015260656217546

`A001318(A212012(n+1)-1)`
-/

namespace A104572.P14262015260656217546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (A212012 (n + 1) - 1).toNat

end

end A104572.P14262015260656217546

namespace A104572

/-- `A001318(A212012(n+1)-1)` -/
def P14262015260656217546.Spec : Prop :=
  ∀ n, P14262015260656217546.a n = A104572 (n + 1)

end A104572

/-! ## A104572.P13201056943737214809

`A000326(A127739(n+1)-n)`
-/

namespace A104572.P13201056943737214809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A127739 (n + 1) - (n : ℤ)).toNat

end

end A104572.P13201056943737214809

namespace A104572

/-- `A000326(A127739(n+1)-n)` -/
def P13201056943737214809.Spec : Prop :=
  ∀ n, P13201056943737214809.a n = A104572 (n + 1)

end A104572

/-! ## A104572.P15657804132213301555

`A096037(n+1)-A101468(n)`
-/

namespace A104572.P15657804132213301555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096037 (n + 1) - A101468 n

end

end A104572.P15657804132213301555

namespace A104572

/-- `A096037(n+1)-A101468(n)` -/
def P15657804132213301555.Spec : Prop :=
  ∀ n, P15657804132213301555.a n = A104572 (n + 1)

end A104572

/-! ## A104572.P7009179547977398864

`A128116(A095832(n+1)/2+1)`
-/

namespace A104572.P7009179547977398864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128116 (SequenceMachineLib.roundAway ((A095832 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A104572.P7009179547977398864

namespace A104572

/-- `A128116(A095832(n+1)/2+1)` -/
def P7009179547977398864.Spec : Prop :=
  ∀ n, P7009179547977398864.a n = A104572 (n + 1)

end A104572

/-! ## A104572.P15626347893372184365

`A213828(n+1)-A213773(n+1)`
-/

namespace A104572.P15626347893372184365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213828 (n + 1) - A213773 (n + 1)

end

end A104572.P15626347893372184365

namespace A104572

/-- `A213828(n+1)-A213773(n+1)` -/
def P15626347893372184365.Spec : Prop :=
  ∀ n, P15626347893372184365.a n = A104572 (n + 1)

end A104572

/-! ## A104572.P16285137228892968823

`(A103217(n)+A055461(n+1))/2`
-/

namespace A104572.P16285137228892968823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103217 n + A055461 (n + 1) : ℚ) / 2

end

end A104572.P16285137228892968823

namespace A104572

/-- `(A103217(n)+A055461(n+1))/2` -/
def P16285137228892968823.Spec : Prop :=
  ∀ n, P16285137228892968823.a n = (A104572 (n + 1) : ℚ)

end A104572

/-! ## A104572.P14720621854141257680

`(A103217(n)+A004736(n+1)²)/2`
-/

namespace A104572.P14720621854141257680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103217 n + A004736 (n + 1) ^ 2 : ℚ) / 2

end

end A104572.P14720621854141257680

namespace A104572

/-- `(A103217(n)+A004736(n+1)²)/2` -/
def P14720621854141257680.Spec : Prop :=
  ∀ n, P14720621854141257680.a n = (A104572 (n + 1) : ℚ)

end A104572

/-! ## A104572.P12568151494769722096

`A000326(A004202(n+1)-(2*n+1))`
-/

namespace A104572.P12568151494769722096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A004202 (n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A104572.P12568151494769722096

namespace A104572

/-- `A000326(A004202(n+1)-(2*n+1))` -/
def P12568151494769722096.Spec : Prop :=
  ∀ n, P12568151494769722096.a n = A104572 (n + 1)

end A104572

/-! ## A104572.P7460800831295620617

`A055461(n+1)+A095832(n+1)/2`
-/

namespace A104572.P7460800831295620617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055461 (n + 1) : ℚ) + (A095832 (n + 1) : ℚ) / 2

end

end A104572.P7460800831295620617

namespace A104572

/-- `A055461(n+1)+A095832(n+1)/2` -/
def P7460800831295620617.Spec : Prop :=
  ∀ n, P7460800831295620617.a n = (A104572 (n + 1) : ℚ)

end A104572

/-!
# A104574: Sum of trapezoid weights of all Motzkin paths of length n.

The programs for A104574, the canonical program `A104574.P11918091381051242592` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104574 has offset 1).

The definition of A104574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104574.P1790707753068467764

`∑[∑[A194589(n+1)]]`
-/

namespace A104574.P1790707753068467764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194589 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104574.P1790707753068467764

namespace A104574

/-- `∑[∑[A194589(n+1)]]` -/
def P1790707753068467764.Spec : Prop :=
  ∀ n, P1790707753068467764.a n = A104574 (n + 1)

end A104574

/-! ## A104574.P8174862941093176976

`∑[a(n-2)+n*A168049(n+1)]` with `a(0)=0, a(1)=1`
-/

namespace A104574.P8174862941093176976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + (n : ℤ) * A168049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104574.P8174862941093176976

namespace A104574

/-- `∑[a(n-2)+n*A168049(n+1)]` -/
def P8174862941093176976.Spec : Prop :=
  ∀ n, P8174862941093176976.a n = A104574 (n + 1)

end A104574

/-! ## A104574.P11775661802799094105

`A097861(n+1)+a(A289207(n))` with `a(0)=0`
-/

namespace A104574.P11775661802799094105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A097861 (n + 1) + a (A289207 n).toNat

end

end A104574.P11775661802799094105

namespace A104574

/-- `A097861(n+1)+a(A289207(n))` -/
def P11775661802799094105.Spec : Prop :=
  ∀ n, P11775661802799094105.a n = A104574 (n + 1)

end A104574

/-! ## A104574.P17974116480427476130

`∑[a(n-2)+A189912(n)-A001006(n)]` with `a(0)=0, a(1)=1`
-/

namespace A104574.P17974116480427476130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + (A189912 n - A001006 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104574.P17974116480427476130

namespace A104574

/-- `∑[a(n-2)+A189912(n)-A001006(n)]` -/
def P17974116480427476130.Spec : Prop :=
  ∀ n, P17974116480427476130.a n = A104574 (n + 1)

end A104574

/-! ## A104574.P11918091381051242592

`∑[a(n-2)+A002426(n)-A005043(n)]` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A104574

/-- `∑[a(n-2)+A002426(n)-A005043(n)]` -/
def P11918091381051242592.Spec : Prop :=
  ∀ n, P11918091381051242592.a n = A104574 (n + 1)

theorem P11918091381051242592.correct : P11918091381051242592.Spec := by
  intro n
  simp only [A104574, Nat.add_sub_cancel]

end A104574

/-! ## A104574.P18049217170733921764

`A247287(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A104574.P18049217170733921764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A247287 (n + 1) - a (n - 1)

end

end A104574.P18049217170733921764

namespace A104574

/-- `A247287(n+1)-a(n-1)` -/
def P18049217170733921764.Spec : Prop :=
  ∀ n, P18049217170733921764.a n = A104574 (n + 1)

end A104574

/-!
# A104575: Alternating sum of diagonals in A060177.

The programs for A104575, there is no canonical definition to state claims against.
-/

/-! ## A104575.P8220571912072860228

`2*A092306(n)-A000041(n)`
-/

namespace A104575.P8220571912072860228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092306 n - A000041 n

end

end A104575.P8220571912072860228

/-! ## A104575.P10873246042302923845

`2*A092306(n)-(A000065(n)+1)`
-/

namespace A104575.P10873246042302923845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092306 n - (A000065 n + 1)

end

end A104575.P10873246042302923845

/-! ## A104575.P6024757514995360447

`2*A092306(n)-sqrt(A001255(n))`
-/

namespace A104575.P6024757514995360447
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A092306 n : ℝ) - Real.sqrt (A001255 n : ℝ)

end

end A104575.P6024757514995360447

/-! ## A104575.P15273761728651464797

`A005843(A092306(n))-A000041(n)`
-/

namespace A104575.P15273761728651464797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A092306 n).toNat - A000041 n

end

end A104575.P15273761728651464797

/-! ## A104575.P4643301670947946228

`A005843(A092306(n))-A213598(n)`
-/

namespace A104575.P4643301670947946228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A092306 n).toNat - A213598 n

end

end A104575.P4643301670947946228

/-!
# A104577: Indices of prime generalized tetranacci numbers, A073817.

The programs for A104577, there is no canonical definition to state claims against.
-/

/-! ## A104577.P6191226703200902735

`A289426(A122135(n))+A199502(n+2)`
-/

namespace A104577.P6191226703200902735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289426 (A122135 n).toNat + A199502 (n + 2)

end

end A104577.P6191226703200902735

/-!
# A104578: A Padovan convolution triangle.

The programs for A104578, there is no canonical definition to state claims against.
-/

/-! ## A104578.P13967890804508635302

`gcd(A010673(A275352(n+1)), A321196(n))`
-/

namespace A104578.P13967890804508635302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010673 (A275352 (n + 1)).toNat) (A321196 n)

end

end A104578.P13967890804508635302

/-! ## A104578.P8152955740763966818

`lcm(A137278(n²), A321196(n))`
-/

namespace A104578.P8152955740763966818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A137278 (n ^ 2)) (A321196 n)

end

end A104578.P8152955740763966818

/-! ## A104578.P15673636822118792189

`abs(A321196(n)%A193105(n+1))`
-/

namespace A104578.P15673636822118792189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A321196 n) (A193105 (n + 1))|

end

end A104578.P15673636822118792189

/-! ## A104578.P10037045336644273787

`abs(A321196(n))%A370811(3*n+1)`
-/

namespace A104578.P10037045336644273787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A321196 n| (A370811 (3 * n + 1))

end

end A104578.P10037045336644273787

/-! ## A104578.P1213960233645282613

`gcd(A193095(A000045(n)), A321196(n))`
-/

namespace A104578.P1213960233645282613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A193095 (A000045 n).toNat) (A321196 n)

end

end A104578.P1213960233645282613

/-!
# A104579: A Padovan-Jacobsthal convolution triangle.

The programs for A104579, there is no canonical definition to state claims against.
-/

/-! ## A104579.P4208549514600520431

`A257564(5*A182882(n))`
-/

namespace A104579.P4208549514600520431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (5 * A182882 n).toNat

end

end A104579.P4208549514600520431

/-! ## A104579.P190169061141374889

`A005811(A266725(A182882(n))²)`
-/

namespace A104579.P190169061141374889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A266725 (A182882 n).toNat ^ 2).toNat

end

end A104579.P190169061141374889

/-! ## A104579.P10190432036184738544

`and(A002145(A065557(n+1)), A188285(n))`
-/

namespace A104579.P10190432036184738544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002145 (A065557 (n + 1)).toNat) (A188285 n)

end

end A104579.P10190432036184738544

/-! ## A104579.P14394785175053948276

`A104578(n)*A275806(A119502(n)²)`
-/

namespace A104579.P14394785175053948276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104578 n * A275806 (A119502 n ^ 2).toNat

end

end A104579.P14394785175053948276

/-! ## A104579.P12134395669126292677

`A065600(n)%A122165(A114556(n+1))`
-/

namespace A104579.P12134395669126292677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065600 n) (A122165 (A114556 (n + 1)).toNat)

end

end A104579.P12134395669126292677

/-!
# A104580: Tribonacci convolution triangle.

The programs for A104580, there is no canonical definition to state claims against.
-/

/-! ## A104580.P6071993407875630867

`A383477(A061579(n))`
-/

namespace A104580.P6071993407875630867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383477 (A061579 n).toNat

end

end A104580.P6071993407875630867

/-! ## A104580.P814556625957277949

`A383477(A114327(n)+n)`
-/

namespace A104580.P814556625957277949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383477 (A114327 n + (n : ℤ)).toNat

end

end A104580.P814556625957277949

/-! ## A104580.P6261515732562820455

`A383477(A038722(n+1)-1)`
-/

namespace A104580.P6261515732562820455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383477 (A038722 (n + 1) - 1).toNat

end

end A104580.P6261515732562820455

/-! ## A104580.P16806366978076403237

`A383477(A093995(n+1)-(n+1))`
-/

namespace A104580.P16806366978076403237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383477 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A104580.P16806366978076403237

/-! ## A104580.P15026835061024545337

`A383477(A057428(n)+A038722(n+1))`
-/

namespace A104580.P15026835061024545337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383477 (A057428 n + A038722 (n + 1)).toNat

end

end A104580.P15026835061024545337

/-! ## A104580.P2649338712249249367

`A383477(A038722(n+2))`
-/

namespace A104580.P2649338712249249367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383477 (A038722 (n + 2)).toNat

end

end A104580.P2649338712249249367

/-!
# A104581: Expansion of g.f. 1/(1 + x + x^3 + x^4).

The programs for A104581, the canonical program `A104581.P15497962334637400790` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104581 has offset 0).

The definition of A104581 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x+x^3+x^4))` (program `A104581.P15497962334637400790`, by `A104581.P15497962334637400790.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104581.P15497962334637400790

`ogf(1/(1+x+x^3+x^4))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A104581

/-- `ogf(1/(1+x+x^3+x^4))` -/
def P15497962334637400790.Spec : Prop :=
  ∀ n, P15497962334637400790.a n = A104581 n

theorem P15497962334637400790.correct : P15497962334637400790.Spec := by
  intro n
  simp only [A104581]

end A104581

/-! ## A104581.P5162330031510104678

`floor((n+3)/3)*(-1)^n`
-/

namespace A104581.P5162330031510104678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) / 3⌋ * (-1) ^ n

end

end A104581.P5162330031510104678

namespace A104581

/-- `floor((n+3)/3)*(-1)^n` -/
def P5162330031510104678.Spec : Prop :=
  ∀ n, P5162330031510104678.a n = A104581 n

end A104581

/-! ## A104581.P14602254491930849031

`∑[4%gcd(3, n)]/(-1)^n`
-/

namespace A104581.P14602254491930849031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 % Nat.gcd 3 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((-1) ^ n : ℚ)

end

end A104581.P14602254491930849031

namespace A104581

/-- `∑[4%gcd(3, n)]/(-1)^n` -/
def P14602254491930849031.Spec : Prop :=
  ∀ n, P14602254491930849031.a n = (A104581 n : ℚ)

end A104581

/-! ## A104581.P13668535707226382316

`xor(-a(n-1), char[3*n])` with `a(0)=1`
-/

namespace A104581.P13668535707226382316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (-a (n - 1)) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A104581.P13668535707226382316

namespace A104581

/-- `xor(-a(n-1), char[3*n])` -/
def P13668535707226382316.Spec : Prop :=
  ∀ n, P13668535707226382316.a n = A104581 n

end A104581

/-! ## A104581.P1644868245765273386

`(-1)^n-a(n-3)` with `a(0)=1, a(1)=-1, a(2)=1`
-/

namespace A104581.P1644868245765273386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n a =>
  (-1) ^ n - a (n - 3)

end

end A104581.P1644868245765273386

namespace A104581

/-- `(-1)^n-a(n-3)` -/
def P1644868245765273386.Spec : Prop :=
  ∀ n, P1644868245765273386.a n = A104581 n

end A104581

/-! ## A104581.P6837471390869407554

`Δ[and(1, n)-a(n-3)]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A104581.P6837471390869407554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  (Nat.land 1 n : ℤ) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104581.P6837471390869407554

namespace A104581

/-- `Δ[and(1, n)-a(n-3)]` -/
def P6837471390869407554.Spec : Prop :=
  ∀ n, P6837471390869407554.a n = A104581 n

end A104581

/-! ## A104581.P10027928959752547423

`a(n-2)+a(n-5)-a(n-3)` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=-2, a(4)=2`
-/

namespace A104581.P10027928959752547423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1, -2, 2] fun n a =>
  a (n - 2) + (a (n - 5) - a (n - 3))

end

end A104581.P10027928959752547423

namespace A104581

/-- `a(n-2)+a(n-5)-a(n-3)` -/
def P10027928959752547423.Spec : Prop :=
  ∀ n, P10027928959752547423.a n = A104581 n

end A104581

/-! ## A104581.P14285347443785639380

`Δ[A187035(abs(1-n))]`
-/

namespace A104581.P14285347443785639380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187035 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104581.P14285347443785639380

namespace A104581

/-- `Δ[A187035(abs(1-n))]` -/
def P14285347443785639380.Spec : Prop :=
  ∀ n, P14285347443785639380.a n = A104581 n

end A104581

/-! ## A104581.P15577538791779006397

`1-(A173432(n)+a(n-1))` with `a(0)=1`
-/

namespace A104581.P15577538791779006397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (A173432 n + a (n - 1))

end

end A104581.P15577538791779006397

namespace A104581

/-- `1-(A173432(n)+a(n-1))` -/
def P15577538791779006397.Spec : Prop :=
  ∀ n, P15577538791779006397.a n = A104581 n

end A104581

/-! ## A104581.P6025449975245260351

`A008620(n)/A033999(n)`
-/

namespace A104581.P6025449975245260351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008620 n : ℚ) / (A033999 n : ℚ)

end

end A104581.P6025449975245260351

namespace A104581

/-- `A008620(n)/A033999(n)` -/
def P6025449975245260351.Spec : Prop :=
  ∀ n, P6025449975245260351.a n = (A104581 n : ℚ)

end A104581

/-! ## A104581.P26685923884483065

`A087627(n)/A131714(n)`
-/

namespace A104581.P26685923884483065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087627 n : ℚ) / (A131714 n : ℚ)

end

end A104581.P26685923884483065

namespace A104581

/-- `A087627(n)/A131714(n)` -/
def P26685923884483065.Spec : Prop :=
  ∀ n, P26685923884483065.a n = (A104581 n : ℚ)

end A104581

/-! ## A104581.P2074146694335639120

`A099254(n)/A131713(n)`
-/

namespace A104581.P2074146694335639120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099254 n : ℚ) / (A131713 n : ℚ)

end

end A104581.P2074146694335639120

namespace A104581

/-- `A099254(n)/A131713(n)` -/
def P2074146694335639120.Spec : Prop :=
  ∀ n, P2074146694335639120.a n = (A104581 n : ℚ)

end A104581

/-! ## A104581.P4016184853643064090

`(A002264(n)+1)/A033999(n)`
-/

namespace A104581.P4016184853643064090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002264 n + 1 : ℚ) / (A033999 n : ℚ)

end

end A104581.P4016184853643064090

namespace A104581

/-- `(A002264(n)+1)/A033999(n)` -/
def P4016184853643064090.Spec : Prop :=
  ∀ n, P4016184853643064090.a n = (A104581 n : ℚ)

end A104581

/-! ## A104581.P18227385664661158906

`A099254(n)/(2-A057079(n)²)`
-/

namespace A104581.P18227385664661158906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099254 n : ℚ) / (2 - A057079 n ^ 2 : ℚ)

end

end A104581.P18227385664661158906

namespace A104581

/-- `A099254(n)/(2-A057079(n)²)` -/
def P18227385664661158906.Spec : Prop :=
  ∀ n, P18227385664661158906.a n = (A104581 n : ℚ)

end A104581

/-! ## A104581.P15574959235755983070

`∑[∑[A010892(n)²]*A033999(n)]`
-/

namespace A104581.P15574959235755983070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104581.P15574959235755983070

namespace A104581

/-- `∑[∑[A010892(n)²]*A033999(n)]` -/
def P15574959235755983070.Spec : Prop :=
  ∀ n, P15574959235755983070.a n = A104581 n

end A104581

/-! ## A104581.P16968444533296935302

`A099254(n)/(A057078(n+1)+A049347(n))`
-/

namespace A104581.P16968444533296935302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099254 n : ℚ) / (A057078 (n + 1) + A049347 n : ℚ)

end

end A104581.P16968444533296935302

namespace A104581

/-- `A099254(n)/(A057078(n+1)+A049347(n))` -/
def P16968444533296935302.Spec : Prop :=
  ∀ n, P16968444533296935302.a n = (A104581 n : ℚ)

end A104581

/-! ## A104581.P12802763109199636134

`A099254(n)/A061347(n+2)`
-/

namespace A104581.P12802763109199636134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099254 n : ℚ) / (A061347 (n + 2) : ℚ)

end

end A104581.P12802763109199636134

namespace A104581

/-- `A099254(n)/A061347(n+2)` -/
def P12802763109199636134.Spec : Prop :=
  ∀ n, P12802763109199636134.a n = (A104581 n : ℚ)

end A104581

/-! ## A104581.P4972752332321209722

`(A010892(n+1)-A168052(n+1))/2`
-/

namespace A104581.P4972752332321209722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010892 (n + 1) - A168052 (n + 1) : ℚ) / 2

end

end A104581.P4972752332321209722

namespace A104581

/-- `(A010892(n+1)-A168052(n+1))/2` -/
def P4972752332321209722.Spec : Prop :=
  ∀ n, P4972752332321209722.a n = (A104581 n : ℚ)

end A104581

/-! ## A104581.P10307044432223615442

`A291984(A047393(n+1))`
-/

namespace A104581.P10307044432223615442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291984 (A047393 (n + 1)).toNat

end

end A104581.P10307044432223615442

namespace A104581

/-- `A291984(A047393(n+1))` -/
def P10307044432223615442.Spec : Prop :=
  ∀ n, P10307044432223615442.a n = A104581 n

end A104581

/-! ## A104581.P9926537094513954845

`A291984(A047521(n+1))`
-/

namespace A104581.P9926537094513954845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291984 (A047521 (n + 1)).toNat

end

end A104581.P9926537094513954845

namespace A104581

/-- `A291984(A047521(n+1))` -/
def P9926537094513954845.Spec : Prop :=
  ∀ n, P9926537094513954845.a n = A104581 n

end A104581

/-!
# A104582: Triangle read by rows: T(i,j) is the (i,j)-entry (1 <= j <= i) of the product of the lower triangular matrix (Fibonacci(i-j+1)) and of the lower triangular matrix all of whose entries are equal to 1 (for j <= i).

The programs for A104582, the canonical program `A104582.P4159753034675005451` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104582 has offset 1).

The definition of A104582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104582.P17579937121858197645

`A000071(C(comp[∑[n]]-n, 2)-n+2)`
-/

namespace A104582.P17579937121858197645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) + 2).toNat

end

end A104582.P17579937121858197645

namespace A104582

/-- `A000071(C(comp[∑[n]]-n, 2)-n+2)` -/
def P17579937121858197645.Spec : Prop :=
  ∀ n, P17579937121858197645.a n = A104582 (n + 1)

end A104582

/-! ## A104582.P6641100300201959525

`A001911(C(comp[∑[n]]-n, 2)-(n+1))+1`
-/

namespace A104582.P6641100300201959525
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) + 1

end

end A104582.P6641100300201959525

namespace A104582

/-- `A001911(C(comp[∑[n]]-n, 2)-(n+1))+1` -/
def P6641100300201959525.Spec : Prop :=
  ∀ n, P6641100300201959525.a n = A104582 (n + 1)

end A104582

/-! ## A104582.P5113872101085422228

`A020695(C(comp[∑[n]]-n, 2)-(n+1))-1`
-/

namespace A104582.P5113872101085422228
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) - 1

end

end A104582.P5113872101085422228

namespace A104582

/-- `A020695(C(comp[∑[n]]-n, 2)-(n+1))-1` -/
def P5113872101085422228.Spec : Prop :=
  ∀ n, P5113872101085422228.a n = A104582 (n + 1)

end A104582

/-! ## A104582.P15272327965889950323

`A000045(C(comp[∑[n]]-n, 2)-n+2)-1`
-/

namespace A104582.P15272327965889950323
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) + 2).toNat - 1

end

end A104582.P15272327965889950323

namespace A104582

/-- `A000045(C(comp[∑[n]]-n, 2)-n+2)-1` -/
def P15272327965889950323.Spec : Prop :=
  ∀ n, P15272327965889950323.a n = A104582 (n + 1)

end A104582

/-! ## A104582.P17160975467919558387

`A048577(C(comp[∑[n]]-n, 2)-(n+1))-2`
-/

namespace A104582.P17160975467919558387
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) - 2

end

end A104582.P17160975467919558387

namespace A104582

/-- `A048577(C(comp[∑[n]]-n, 2)-(n+1))-2` -/
def P17160975467919558387.Spec : Prop :=
  ∀ n, P17160975467919558387.a n = A104582 (n + 1)

end A104582

/-! ## A104582.P5305905931533032240

`A157726(C(comp[∑[n]]-n, 2)-n+2)-4`
-/

namespace A104582.P5305905931533032240
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) + 2).toNat - 4

end

end A104582.P5305905931533032240

namespace A104582

/-- `A157726(C(comp[∑[n]]-n, 2)-n+2)-4` -/
def P5305905931533032240.Spec : Prop :=
  ∀ n, P5305905931533032240.a n = A104582 (n + 1)

end A104582

/-! ## A104582.P4159753034675005451

`A001911(A025581(n))+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A104582

/-- `A001911(A025581(n))+1` -/
def P4159753034675005451.Spec : Prop :=
  ∀ n, P4159753034675005451.a n = A104582 (n + 1)

theorem P4159753034675005451.correct : P4159753034675005451.Spec := by
  intro n
  simp only [A104582, Nat.add_sub_cancel]

end A104582

/-! ## A104582.P2792473251044052951

`A003980(A104887(n+1))`
-/

namespace A104582.P2792473251044052951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003980 (A104887 (n + 1)).toNat

end

end A104582.P2792473251044052951

namespace A104582

/-- `A003980(A104887(n+1))` -/
def P2792473251044052951.Spec : Prop :=
  ∀ n, P2792473251044052951.a n = A104582 (n + 1)

end A104582

/-! ## A104582.P13914448419737575027

`A104733(n)/A104763(n+1)`
-/

namespace A104582.P13914448419737575027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104733 n : ℚ) / (A104763 (n + 1) : ℚ)

end

end A104582.P13914448419737575027

namespace A104582

/-- `A104733(n)/A104763(n+1)` -/
def P13914448419737575027.Spec : Prop :=
  ∀ n, P13914448419737575027.a n = (A104582 (n + 1) : ℚ)

end A104582

/-! ## A104582.P15545500545396879350

`A104798(n+2)/A002260(n+1)`
-/

namespace A104582.P15545500545396879350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104798 (n + 2) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A104582.P15545500545396879350

namespace A104582

/-- `A104798(n+2)/A002260(n+1)` -/
def P15545500545396879350.Spec : Prop :=
  ∀ n, P15545500545396879350.a n = (A104582 (n + 1) : ℚ)

end A104582

/-! ## A104582.P17849362449395708585

`A160795(2*(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A104582.P17849362449395708585
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160795 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))).toNat

end

end A104582.P17849362449395708585

namespace A104582

/-- `A160795(2*(C(comp[∑[n]]-n, 2)-n))` -/
def P17849362449395708585.Spec : Prop :=
  ∀ n, P17849362449395708585.a n = A104582 (n + 1)

end A104582

/-! ## A104582.P16412220852871005940

`A160795(A212012(n+1))`
-/

namespace A104582.P16412220852871005940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160795 (A212012 (n + 1)).toNat

end

end A104582.P16412220852871005940

namespace A104582

/-- `A160795(A212012(n+1))` -/
def P16412220852871005940.Spec : Prop :=
  ∀ n, P16412220852871005940.a n = A104582 (n + 1)

end A104582

/-! ## A104582.P4499023698368693332

`A316628(A104797(n+1))`
-/

namespace A104582.P4499023698368693332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316628 (A104797 (n + 1)).toNat

end

end A104582.P4499023698368693332

namespace A104582

/-- `A316628(A104797(n+1))` -/
def P4499023698368693332.Spec : Prop :=
  ∀ n, P4499023698368693332.a n = A104582 (n + 1)

end A104582

/-! ## A104582.P15831225789375718887

`A232560(A130321(n))`
-/

namespace A104582.P15831225789375718887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232560 (A130321 n).toNat

end

end A104582.P15831225789375718887

namespace A104582

/-- `A232560(A130321(n))` -/
def P15831225789375718887.Spec : Prop :=
  ∀ n, P15831225789375718887.a n = A104582 (n + 1)

end A104582

/-! ## A104582.P2017741189083827633

`A169693(A128177(n+1))`
-/

namespace A104582.P2017741189083827633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169693 (A128177 (n + 1)).toNat

end

end A104582.P2017741189083827633

namespace A104582

/-- `A169693(A128177(n+1))` -/
def P2017741189083827633.Spec : Prop :=
  ∀ n, P2017741189083827633.a n = A104582 (n + 1)

end A104582

/-! ## A104582.P11025316607580130993

`A309019(A173786(n))`
-/

namespace A104582.P11025316607580130993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309019 (A173786 n).toNat

end

end A104582.P11025316607580130993

namespace A104582

/-- `A309019(A173786(n))` -/
def P11025316607580130993.Spec : Prop :=
  ∀ n, P11025316607580130993.a n = A104582 (n + 1)

end A104582

/-! ## A104582.P16240792126076313970

`A309019(A048645(n+2))`
-/

namespace A104582.P16240792126076313970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309019 (A048645 (n + 2)).toNat

end

end A104582.P16240792126076313970

namespace A104582

/-- `A309019(A048645(n+2))` -/
def P16240792126076313970.Spec : Prop :=
  ∀ n, P16240792126076313970.a n = A104582 (n + 1)

end A104582

/-!
# A104583: Triangle read by rows: T(i,j) is the (i,j)-entry (1 <= j <= i) of the product A*B of the matrices A = [1; 3,1; 5,3,1; 7,5,3,1; ...]; B = [1; 1,2; 1,2,1; 1,2,1,2; ...] (both infinite lower triangular matrices).

The programs for A104583, there is no canonical definition to state claims against.
-/

/-! ## A104583.P6844744746343233128

`A004736(n+1)²*gcd(2, comp[2*n²])`
-/

namespace A104583.P6844744746343233128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) ^ 2 * (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ)

end

end A104583.P6844744746343233128

/-! ## A104583.P4317171945922626063

`(C(comp[∑[n]]-n, 2)-n)*A104567(n+1)`
-/

namespace A104583.P4317171945922626063
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A104567 (n + 1)

end

end A104583.P4317171945922626063

/-! ## A104583.P9363394885188957974

`A004736(n+1)*A104567(n+1)`
-/

namespace A104583.P9363394885188957974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A104567 (n + 1)

end

end A104583.P9363394885188957974

/-! ## A104583.P3502273505287087725

`(A060510(n)+1)*A055461(n+1)`
-/

namespace A104583.P3502273505287087725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060510 n + 1) * A055461 (n + 1)

end

end A104583.P3502273505287087725

/-! ## A104583.P11744479632799058522

`(A025581(n)+1)*A104567(n+1)`
-/

namespace A104583.P11744479632799058522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A104567 (n + 1)

end

end A104583.P11744479632799058522

/-! ## A104583.P11150578367306422202

`A104567(n+1)*A373214(n+1)`
-/

namespace A104583.P11150578367306422202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104567 (n + 1) * A373214 (n + 1)

end

end A104583.P11150578367306422202

/-! ## A104583.P11411105115057272837

`A059268(n)%3*A055461(n+1)`
-/

namespace A104583.P11411105115057272837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059268 n) 3 * A055461 (n + 1)

end

end A104583.P11411105115057272837

/-! ## A104583.P6592060167215640479

`(A025660(n+1)+1)*A104567(n+1)`
-/

namespace A104583.P6592060167215640479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025660 (n + 1) + 1) * A104567 (n + 1)

end

end A104583.P6592060167215640479

/-! ## A104583.P3412875962745883625

`(A025669(n+1)+1)*A104567(n+1)`
-/

namespace A104583.P3412875962745883625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025669 (n + 1) + 1) * A104567 (n + 1)

end

end A104583.P3412875962745883625

/-! ## A104583.P13822972935503885075

`A004396(A104568(n))*A104567(n+1)`
-/

namespace A104583.P13822972935503885075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A104568 n).toNat * A104567 (n + 1)

end

end A104583.P13822972935503885075

/-!
# A104584: a(n) = (1/2) * ( 3*n^2 + n*(-1)^n ).

The programs for A104584, the canonical program `A104584.P4461511141600760897` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104584 has offset 0).

The definition of A104584 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1/2*(3*n²+n*(-1)^n)` (program `A104584.P379738379391160218`, by `A104584.P379738379391160218.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104584.P379738379391160218

`1/2*(3*n²+n*(-1)^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A104584.P379738379391160218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((3 * n ^ 2 : ℤ) + (n : ℤ) * (-1) ^ n : ℚ)

end

end A104584.P379738379391160218

namespace A104584

/-- `1/2*(3*n²+n*(-1)^n)` -/
def P379738379391160218.Spec : Prop :=
  ∀ n, P379738379391160218.a n = (A104584 n : ℚ)

theorem P379738379391160218.correct : P379738379391160218.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A104584, Nat.add_sub_cancel, A104584.P379738379391160218.a, A104584.P4461511141600760897.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A104584, Nat.add_sub_cancel, A104584.P379738379391160218.a, A104584.P4461511141600760897.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A104584

/-! ## A104584.P4461511141600760897

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=7, a(3)=12, a(4)=26`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A104584

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P4461511141600760897.Spec : Prop :=
  ∀ n, P4461511141600760897.a n = A104584 n

theorem P4461511141600760897.correct : P4461511141600760897.Spec := by
  intro n
  simp only [A104584]

end A104584

/-! ## A104584.P17311985656421996720

`C(or(1, n), 2)+n²`
-/

namespace A104584.P17311985656421996720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n) 2 + n ^ 2

end

end A104584.P17311985656421996720

namespace A104584

/-- `C(or(1, n), 2)+n²` -/
def P17311985656421996720.Spec : Prop :=
  ∀ n, (P17311985656421996720.a n : ℤ) = A104584 n

end A104584

/-! ## A104584.P3245316188782154753

`∑[3*n]-lcm(2, n)`
-/

namespace A104584.P3245316188782154753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.lcm 2 n : ℤ)

end

end A104584.P3245316188782154753

namespace A104584

/-- `∑[3*n]-lcm(2, n)` -/
def P3245316188782154753.Spec : Prop :=
  ∀ n, P3245316188782154753.a n = A104584 n

end A104584

/-! ## A104584.P8491598584730883971

`∑[n]+n*(n-n%2)`
-/

namespace A104584.P8491598584730883971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ) * ((n : ℤ) - ((n % 2 : ℕ) : ℤ))

end

end A104584.P8491598584730883971

namespace A104584

/-- `∑[n]+n*(n-n%2)` -/
def P8491598584730883971.Spec : Prop :=
  ∀ n, P8491598584730883971.a n = A104584 n

end A104584

/-! ## A104584.P14717660171211547705

`∑[gcd(2, n)*comp[2*(n+1)]]`
-/

namespace A104584.P14717660171211547705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104584.P14717660171211547705

namespace A104584

/-- `∑[gcd(2, n)*comp[2*(n+1)]]` -/
def P14717660171211547705.Spec : Prop :=
  ∀ n, (P14717660171211547705.a n : ℤ) = A104584 n

end A104584

/-! ## A104584.P3112953879108890211

`∑[(2*n-1)*gcd(4, a(n-2))]` with `a(0)=0, a(1)=1, a(2)=6`
-/

namespace A104584.P3112953879108890211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6] fun n f1 =>
  ((2 * n : ℤ) - 1) * (Int.gcd 4 (f1 (n - 2)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104584.P3112953879108890211

namespace A104584

/-- `∑[(2*n-1)*gcd(4, a(n-2))]` -/
def P3112953879108890211.Spec : Prop :=
  ∀ n, P3112953879108890211.a n = A104584 n

end A104584

/-! ## A104584.P3133154774429770049

`∑[A123168(n+1)]`
-/

namespace A104584.P3133154774429770049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104584.P3133154774429770049

namespace A104584

/-- `∑[A123168(n+1)]` -/
def P3133154774429770049.Spec : Prop :=
  ∀ n, P3133154774429770049.a n = A104584 n

end A104584

/-! ## A104584.P16941870079298767161

`(A276914(n)+n²)/2`
-/

namespace A104584.P16941870079298767161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276914 n + (n ^ 2 : ℤ) : ℚ) / 2

end

end A104584.P16941870079298767161

namespace A104584

/-- `(A276914(n)+n²)/2` -/
def P16941870079298767161.Spec : Prop :=
  ∀ n, P16941870079298767161.a n = (A104584 n : ℚ)

end A104584

/-! ## A104584.P15866374803863149734

`A104585(n)+A038608(n)`
-/

namespace A104584.P15866374803863149734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104585 n + A038608 n

end

end A104584.P15866374803863149734

namespace A104584

/-- `A104585(n)+A038608(n)` -/
def P15866374803863149734.Spec : Prop :=
  ∀ n, P15866374803863149734.a n = A104584 n

end A104584

/-! ## A104584.P16890247278595099297

`A237420(n)+A000326(n)`
-/

namespace A104584.P16890247278595099297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n + A000326 n

end

end A104584.P16890247278595099297

namespace A104584

/-- `A237420(n)+A000326(n)` -/
def P16890247278595099297.Spec : Prop :=
  ∀ n, P16890247278595099297.a n = A104584 n

end A104584

/-! ## A104584.P16869219122369195946

`A239767(n)+A008794(n)`
-/

namespace A104584.P16869219122369195946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239767 n + A008794 n

end

end A104584.P16869219122369195946

namespace A104584

/-- `A239767(n)+A008794(n)` -/
def P16869219122369195946.Spec : Prop :=
  ∀ n, P16869219122369195946.a n = A104584 n

end A104584

/-! ## A104584.P10900276468377751302

`A354594(n)+A004526(n)`
-/

namespace A104584.P10900276468377751302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354594 n + A004526 n

end

end A104584.P10900276468377751302

namespace A104584

/-- `A354594(n)+A004526(n)` -/
def P10900276468377751302.Spec : Prop :=
  ∀ n, P10900276468377751302.a n = A104584 n

end A104584

/-! ## A104584.P15401084671945793430

`A289296(n)+A084263(n)`
-/

namespace A104584.P15401084671945793430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289296 n + A084263 n

end

end A104584.P15401084671945793430

namespace A104584

/-- `A289296(n)+A084263(n)` -/
def P15401084671945793430.Spec : Prop :=
  ∀ n, P15401084671945793430.a n = A104584 n

end A104584

/-! ## A104584.P13462930095806494375

`A249127(n)+A142150(n)`
-/

namespace A104584.P13462930095806494375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249127 n + A142150 n

end

end A104584.P13462930095806494375

namespace A104584

/-- `A249127(n)+A142150(n)` -/
def P13462930095806494375.Spec : Prop :=
  ∀ n, P13462930095806494375.a n = A104584 n

end A104584

/-! ## A104584.P8836814674734815733

`A033428(n)-A104585(n)`
-/

namespace A104584.P8836814674734815733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n - A104585 n

end

end A104584.P8836814674734815733

namespace A104584

/-- `A033428(n)-A104585(n)` -/
def P8836814674734815733.Spec : Prop :=
  ∀ n, P8836814674734815733.a n = A104584 n

end A104584

/-! ## A104584.P16428487045260845699

`A045943(n)-A109043(n)`
-/

namespace A104584.P16428487045260845699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n - A109043 n

end

end A104584.P16428487045260845699

namespace A104584

/-- `A045943(n)-A109043(n)` -/
def P16428487045260845699.Spec : Prop :=
  ∀ n, P16428487045260845699.a n = A104584 n

end A104584

/-! ## A104584.P6534707531391513390

`A104585(n)-A181983(n)`
-/

namespace A104584.P6534707531391513390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104585 n - A181983 n

end

end A104584.P6534707531391513390

namespace A104584

/-- `A104585(n)-A181983(n)` -/
def P6534707531391513390.Spec : Prop :=
  ∀ n, P6534707531391513390.a n = A104584 n

end A104584

/-! ## A104584.P5254697832730852582

`A317298(n)-A266257(n)`
-/

namespace A104584.P5254697832730852582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317298 n - A266257 n

end

end A104584.P5254697832730852582

namespace A104584

/-- `A317298(n)-A266257(n)` -/
def P5254697832730852582.Spec : Prop :=
  ∀ n, P5254697832730852582.a n = A104584 n

end A104584

/-! ## A104584.P7094182674427224979

`A397976(n)-A213037(n)`
-/

namespace A104584.P7094182674427224979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397976 n - A213037 n

end

end A104584.P7094182674427224979

namespace A104584

/-- `A397976(n)-A213037(n)` -/
def P7094182674427224979.Spec : Prop :=
  ∀ n, P7094182674427224979.a n = A104584 n

end A104584

/-!
# A104585: a(n) = (1/2) * ( 3*n^2 - n*(-1)^n ).

The programs for A104585, the canonical program `A104585.P3768154405850027659` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104585 has offset 0).

The definition of A104585 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1/2*(3*n²-n*(-1)^n)` (program `A104585.P12803269109390889232`, by `A104585.P12803269109390889232.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104585.P15090068879483378908

`(3*n²-n*(-1)^n)/2`
-/

namespace A104585.P15090068879483378908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n ^ 2 : ℤ) - (n : ℤ) * (-1) ^ n : ℚ) / 2

end

end A104585.P15090068879483378908

namespace A104585

/-- `(3*n²-n*(-1)^n)/2` -/
def P15090068879483378908.Spec : Prop :=
  ∀ n, P15090068879483378908.a n = (A104585 n : ℚ)

theorem P15090068879483378908.correct : P15090068879483378908.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A104585, Nat.add_sub_cancel, A104585.P15090068879483378908.a, A104585.P3768154405850027659.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A104585, Nat.add_sub_cancel, A104585.P15090068879483378908.a, A104585.P3768154405850027659.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A104585

/-! ## A104585.P12803269109390889232

`1/2*(3*n²-n*(-1)^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A104585.P12803269109390889232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((3 * n ^ 2 : ℤ) - (n : ℤ) * (-1) ^ n : ℚ)

end

end A104585.P12803269109390889232

namespace A104585

/-- `1/2*(3*n²-n*(-1)^n)` -/
def P12803269109390889232.Spec : Prop :=
  ∀ n, P12803269109390889232.a n = (A104585 n : ℚ)

theorem P12803269109390889232.correct : P12803269109390889232.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A104585, Nat.add_sub_cancel, A104585.P12803269109390889232.a, A104585.P3768154405850027659.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A104585, Nat.add_sub_cancel, A104585.P12803269109390889232.a, A104585.P3768154405850027659.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A104585

/-! ## A104585.P3768154405850027659

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=15, a(4)=22`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A104585

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P3768154405850027659.Spec : Prop :=
  ∀ n, P3768154405850027659.a n = A104585 n

theorem P3768154405850027659.correct : P3768154405850027659.Spec := by
  intro n
  simp only [A104585]

end A104585

/-! ## A104585.P1406672290304998999

`2*n²-C(or(1, n), 2)`
-/

namespace A104585.P1406672290304998999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - (Nat.choose (Nat.lor 1 n) 2 : ℤ)

end

end A104585.P1406672290304998999

namespace A104585

/-- `2*n²-C(or(1, n), 2)` -/
def P1406672290304998999.Spec : Prop :=
  ∀ n, P1406672290304998999.a n = A104585 n

end A104585

/-! ## A104585.P7621449496439484379

`C(and(1, n)+n, 2)+n²`
-/

namespace A104585.P7621449496439484379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land 1 n + n) 2 + n ^ 2

end

end A104585.P7621449496439484379

namespace A104585

/-- `C(and(1, n)+n, 2)+n²` -/
def P7621449496439484379.Spec : Prop :=
  ∀ n, (P7621449496439484379.a n : ℤ) = A104585 n

end A104585

/-! ## A104585.P13931105475819385621

`∑[3*n]-n*gcd(2, n)`
-/

namespace A104585.P13931105475819385621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n * Nat.gcd 2 n : ℤ)

end

end A104585.P13931105475819385621

namespace A104585

/-- `∑[3*n]-n*gcd(2, n)` -/
def P13931105475819385621.Spec : Prop :=
  ∀ n, P13931105475819385621.a n = A104585 n

end A104585

/-! ## A104585.P3983518545001319581

`∑[n]+n*or(1, n-1)`
-/

namespace A104585.P3983518545001319581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ) * Int.lor 1 ((n : ℤ) - 1)

end

end A104585.P3983518545001319581

namespace A104585

/-- `∑[n]+n*or(1, n-1)` -/
def P3983518545001319581.Spec : Prop :=
  ∀ n, P3983518545001319581.a n = A104585 n

end A104585

/-! ## A104585.P12798172187742713605

`C(2*round(n/2), 2)+n²`
-/

namespace A104585.P12798172187742713605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat 2 + n ^ 2

end

end A104585.P12798172187742713605

namespace A104585

/-- `C(2*round(n/2), 2)+n²` -/
def P12798172187742713605.Spec : Prop :=
  ∀ n, (P12798172187742713605.a n : ℤ) = A104585 n

end A104585

/-! ## A104585.P13162387212115753684

`or(1, 3*n)*∑[and(1, n)]-n`
-/

namespace A104585.P13162387212115753684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (3 * n) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (n : ℤ)

end

end A104585.P13162387212115753684

namespace A104585

/-- `or(1, 3*n)*∑[and(1, n)]-n` -/
def P13162387212115753684.Spec : Prop :=
  ∀ n, P13162387212115753684.a n = A104585 n

end A104585

/-! ## A104585.P13695898400116886654

`∑[n]+n*(n-(n+1)%2)`
-/

namespace A104585.P13695898400116886654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ) * ((n : ℤ) - (((n + 1) % 2 : ℕ) : ℤ))

end

end A104585.P13695898400116886654

namespace A104585

/-- `∑[n]+n*(n-(n+1)%2)` -/
def P13695898400116886654.Spec : Prop :=
  ∀ n, P13695898400116886654.a n = A104585 n

end A104585

/-! ## A104585.P3498200752090788676

`floor(2*n*∑[lcm(2, n)]/(n+1))`
-/

namespace A104585.P3498200752090788676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ))⌋

end

end A104585.P3498200752090788676

namespace A104585

/-- `floor(2*n*∑[lcm(2, n)]/(n+1))` -/
def P3498200752090788676.Spec : Prop :=
  ∀ n, P3498200752090788676.a n = A104585 n

end A104585

/-! ## A104585.P13121286614186512069

`∑[A123169(n+1)/2]`
-/

namespace A104585.P13121286614186512069
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123169 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104585.P13121286614186512069

namespace A104585

/-- `∑[A123169(n+1)/2]` -/
def P13121286614186512069.Spec : Prop :=
  ∀ n, P13121286614186512069.a n = (A104585 n : ℚ)

end A104585

/-! ## A104585.P1052299003577885282

`n*A014601(n)-∑[n]`
-/

namespace A104585.P1052299003577885282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014601 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A104585.P1052299003577885282

namespace A104585

/-- `n*A014601(n)-∑[n]` -/
def P1052299003577885282.Spec : Prop :=
  ∀ n, P1052299003577885282.a n = A104585 n

end A104585

/-! ## A104585.P3067863801746267264

`A000326(n)+n*n%2`
-/

namespace A104585.P3067863801746267264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n + ((n * (n % 2) : ℕ) : ℤ)

end

end A104585.P3067863801746267264

namespace A104585

/-- `A000326(n)+n*n%2` -/
def P3067863801746267264.Spec : Prop :=
  ∀ n, P3067863801746267264.a n = A104585 n

end A104585

/-! ## A104585.P10833916303141446534

`n²+C(Δ[A099392(n+1)], 2)`
-/

namespace A104585.P10833916303141446534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A104585.P10833916303141446534

namespace A104585

/-- `n²+C(Δ[A099392(n+1)], 2)` -/
def P10833916303141446534.Spec : Prop :=
  ∀ n, (P10833916303141446534.a n : ℤ) = A104585 n

end A104585

/-! ## A104585.P9249726156635232092

`A032528(n)+A001057(n)`
-/

namespace A104585.P9249726156635232092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 n + A001057 n

end

end A104585.P9249726156635232092

namespace A104585

/-- `A032528(n)+A001057(n)` -/
def P9249726156635232092.Spec : Prop :=
  ∀ n, P9249726156635232092.a n = A104585 n

end A104585

/-! ## A104585.P12612135185089962862

`A191967(n)+A026741(n)`
-/

namespace A104585.P12612135185089962862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191967 n + A026741 n

end

end A104585.P12612135185089962862

namespace A104585

/-- `A191967(n)+A026741(n)` -/
def P12612135185089962862.Spec : Prop :=
  ∀ n, P12612135185089962862.a n = A104585 n

end A104585

/-! ## A104585.P12970330822121668340

`A213037(n)+A014848(n)`
-/

namespace A104585.P12970330822121668340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213037 n + A014848 n

end

end A104585.P12970330822121668340

namespace A104585

/-- `A213037(n)+A014848(n)` -/
def P12970330822121668340.Spec : Prop :=
  ∀ n, P12970330822121668340.a n = A104585 n

end A104585

/-! ## A104585.P13459502474827430646

`A181995(n)+A092530(n)`
-/

namespace A104585.P13459502474827430646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181995 n + A092530 n

end

end A104585.P13459502474827430646

namespace A104585

/-- `A181995(n)+A092530(n)` -/
def P13459502474827430646.Spec : Prop :=
  ∀ n, P13459502474827430646.a n = A104585 n

end A104585

/-! ## A104585.P2209486230325776721

`A181983(n)+A104584(n)`
-/

namespace A104585.P2209486230325776721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 n + A104584 n

end

end A104585.P2209486230325776721

namespace A104585

/-- `A181983(n)+A104584(n)` -/
def P2209486230325776721.Spec : Prop :=
  ∀ n, P2209486230325776721.a n = A104585 n

end A104585

/-!
# A104586: Pentagonal wave sequence triangle.

The programs for A104586, there is no canonical definition to state claims against.
-/

/-! ## A104586.P13637418722769043538

`A001318(A099375(n)+A000035(A049581(n)))`
-/

namespace A104586.P13637418722769043538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (A099375 n + A000035 (A049581 n).toNat).toNat

end

end A104586.P13637418722769043538

/-!
# A104587: Triangle read by rows, given by the matrix product A * B where A (A094727) = [1; 2, 3; 3, 4, 5; 4, 5, 6, 7; ...] and B = [1; 1, 1; 1, 1, 1; ...] (both are infinite lower triangular matrices with the other terms zero).

The programs for A104587, the canonical program `A104587.P8087848092054787042` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104587 has offset 0).

The definition of A104587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104587.P14680129966241256985

`A134480(n)+A004736(n+1)`
-/

namespace A104587.P14680129966241256985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134480 n + A004736 (n + 1)

end

end A104587.P14680129966241256985

namespace A104587

/-- `A134480(n)+A004736(n+1)` -/
def P14680129966241256985.Spec : Prop :=
  ∀ n, P14680129966241256985.a n = A104587 n

end A104587

/-! ## A104587.P6017111820886538057

`A271668(n)+A095834(n+1)`
-/

namespace A104587.P6017111820886538057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271668 n + A095834 (n + 1)

end

end A104587.P6017111820886538057

namespace A104587

/-- `A271668(n)+A095834(n+1)` -/
def P6017111820886538057.Spec : Prop :=
  ∀ n, P6017111820886538057.a n = A104587 n

end A104587

/-! ## A104587.P8087848092054787042

`A096038(n+1)-A059036(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A104587

/-- `A096038(n+1)-A059036(n)` -/
def P8087848092054787042.Spec : Prop :=
  ∀ n, P8087848092054787042.a n = A104587 n

theorem P8087848092054787042.correct : P8087848092054787042.Spec := by
  intro n
  simp only [A104587]

end A104587

/-! ## A104587.P10250129012759550991

`A131416(n+1)+A095831(n+1)`
-/

namespace A104587.P10250129012759550991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131416 (n + 1) + A095831 (n + 1)

end

end A104587.P10250129012759550991

namespace A104587

/-- `A131416(n+1)+A095831(n+1)` -/
def P10250129012759550991.Spec : Prop :=
  ∀ n, P10250129012759550991.a n = A104587 n

end A104587

/-! ## A104587.P5800981725215311360

`A096037(n+1)-A003991(n+1)`
-/

namespace A104587.P5800981725215311360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096037 (n + 1) - A003991 (n + 1)

end

end A104587.P5800981725215311360

namespace A104587

/-- `A096037(n+1)-A003991(n+1)` -/
def P5800981725215311360.Spec : Prop :=
  ∀ n, P5800981725215311360.a n = A104587 n

end A104587

/-! ## A104587.P8158242759392461207

`(A101493(n)+A004736(n+1)²)/2`
-/

namespace A104587.P8158242759392461207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101493 n + A004736 (n + 1) ^ 2 : ℚ) / 2

end

end A104587.P8158242759392461207

namespace A104587

/-- `(A101493(n)+A004736(n+1)²)/2` -/
def P8158242759392461207.Spec : Prop :=
  ∀ n, P8158242759392461207.a n = (A104587 n : ℚ)

end A104587

/-! ## A104587.P4917587387472083120

`A096038(n+1)+1-A003991(n+1)`
-/

namespace A104587.P4917587387472083120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096038 (n + 1) + (1 - A003991 (n + 1))

end

end A104587.P4917587387472083120

namespace A104587

/-- `A096038(n+1)+1-A003991(n+1)` -/
def P4917587387472083120.Spec : Prop :=
  ∀ n, P4917587387472083120.a n = A104587 n

end A104587

/-! ## A104587.P11447735941669814378

`A094728(n+1)+A095832(n+1)/2`
-/

namespace A104587.P11447735941669814378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094728 (n + 1) : ℚ) + (A095832 (n + 1) : ℚ) / 2

end

end A104587.P11447735941669814378

namespace A104587

/-- `A094728(n+1)+A095832(n+1)/2` -/
def P11447735941669814378.Spec : Prop :=
  ∀ n, P11447735941669814378.a n = (A104587 n : ℚ)

end A104587

/-! ## A104587.P8020747604822206580

`A096037(n+1)-A000005(A036561(n))`
-/

namespace A104587.P8020747604822206580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096037 (n + 1) - A000005 (A036561 n).toNat

end

end A104587.P8020747604822206580

namespace A104587

/-- `A096037(n+1)-A000005(A036561(n))` -/
def P8020747604822206580.Spec : Prop :=
  ∀ n, P8020747604822206580.a n = A104587 n

end A104587

/-! ## A104587.P635399448104236230

`A096038(n+1)+1-A000005(A036561(n))`
-/

namespace A104587.P635399448104236230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096038 (n + 1) + (1 - A000005 (A036561 n).toNat)

end

end A104587.P635399448104236230

namespace A104587

/-- `A096038(n+1)+1-A000005(A036561(n))` -/
def P635399448104236230.Spec : Prop :=
  ∀ n, P635399448104236230.a n = A104587 n

end A104587

/-!
# A104588: Product of primes less than or equal to sqrt(n).

The programs for A104588, the canonical program `A104588.P1591008191025370823` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104588 has offset 1).

The definition of A104588 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034386, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104588.P1591008191025370823

`A034386(A000196(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A104588

/-- `A034386(A000196(n+1))` -/
def P1591008191025370823.Spec : Prop :=
  ∀ n, P1591008191025370823.a n = A104588 (n + 1)

theorem P1591008191025370823.correct : P1591008191025370823.Spec := by
  intro n
  simp only [A104588, Nat.add_sub_cancel]

end A104588

/-! ## A104588.P8812737510513043883

`A034386(floor(sqrt(n+1)))`
-/

namespace A104588.P8812737510513043883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (Nat.sqrt (n + 1))

end

end A104588.P8812737510513043883

namespace A104588

/-- `A034386(floor(sqrt(n+1)))` -/
def P8812737510513043883.Spec : Prop :=
  ∀ n, P8812737510513043883.a n = A104588 (n + 1)

end A104588

/-! ## A104588.P11853704702602930051

`lcm(a(n-1), A107286(n+1))` with `a(0)=1`
-/

namespace A104588.P11853704702602930051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A107286 (n + 1))

end

end A104588.P11853704702602930051

namespace A104588

/-- `lcm(a(n-1), A107286(n+1))` -/
def P11853704702602930051.Spec : Prop :=
  ∀ n, (P11853704702602930051.a n : ℤ) = A104588 (n + 1)

end A104588

/-! ## A104588.P5446588551437563770

`∏[((n+1)/∏{p}[n+1, #])^A303337(n+1)]`
-/

namespace A104588.P5446588551437563770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)) ^ (A303337 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A104588.P5446588551437563770

namespace A104588

/-- `∏[((n+1)/∏{p}[n+1, #])^A303337(n+1)]` -/
def P5446588551437563770.Spec : Prop :=
  ∀ n, P5446588551437563770.a n = (A104588 (n + 1) : ℚ)

end A104588

/-! ## A104588.P8490636582356166062

`A002110(A056811(n+1))`
-/

namespace A104588.P8490636582356166062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A056811 (n + 1)).toNat

end

end A104588.P8490636582356166062

namespace A104588

/-- `A002110(A056811(n+1))` -/
def P8490636582356166062.Spec : Prop :=
  ∀ n, P8490636582356166062.a n = A104588 (n + 1)

end A104588

/-! ## A104588.P3418871000516145998

`A300951(A000267(n+1))`
-/

namespace A104588.P3418871000516145998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 (A000267 (n + 1)).toNat

end

end A104588.P3418871000516145998

namespace A104588

/-- `A300951(A000267(n+1))` -/
def P3418871000516145998.Spec : Prop :=
  ∀ n, P3418871000516145998.a n = A104588 (n + 1)

end A104588

/-! ## A104588.P9643994012178145828

`A300951(A161205(n+1)+1)`
-/

namespace A104588.P9643994012178145828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 (A161205 (n + 1) + 1).toNat

end

end A104588.P9643994012178145828

namespace A104588

/-- `A300951(A161205(n+1)+1)` -/
def P9643994012178145828.Spec : Prop :=
  ∀ n, P9643994012178145828.a n = A104588 (n + 1)

end A104588

/-! ## A104588.P5394922668086601510

`A066838(A230775(n+2))`
-/

namespace A104588.P5394922668086601510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066838 (A230775 (n + 2)).toNat

end

end A104588.P5394922668086601510

namespace A104588

/-- `A066838(A230775(n+2))` -/
def P5394922668086601510.Spec : Prop :=
  ∀ n, P5394922668086601510.a n = A104588 (n + 1)

end A104588

/-! ## A104588.P5110798540616591008

`A300951(A001650(n+2))`
-/

namespace A104588.P5110798540616591008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 (A001650 (n + 2)).toNat

end

end A104588.P5110798540616591008

namespace A104588

/-- `A300951(A001650(n+2))` -/
def P5110798540616591008.Spec : Prop :=
  ∀ n, P5110798540616591008.a n = A104588 (n + 1)

end A104588

/-! ## A104588.P277028817413491831

`A300951(A161205(n+2))`
-/

namespace A104588.P277028817413491831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 (A161205 (n + 2)).toNat

end

end A104588.P277028817413491831

namespace A104588

/-- `A300951(A161205(n+2))` -/
def P277028817413491831.Spec : Prop :=
  ∀ n, P277028817413491831.a n = A104588 (n + 1)

end A104588

/-! ## A104588.P9791896696242099743

`A300951(A060018(n+3))`
-/

namespace A104588.P9791896696242099743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 (A060018 (n + 3)).toNat

end

end A104588.P9791896696242099743

namespace A104588

/-- `A300951(A060018(n+3))` -/
def P9791896696242099743.Spec : Prop :=
  ∀ n, P9791896696242099743.a n = A104588 (n + 1)

end A104588

/-! ## A104588.P13133070477002973434

`A083907(floor(sqrt(n+1)))`
-/

namespace A104588.P13133070477002973434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083907 (Nat.sqrt (n + 1))

end

end A104588.P13133070477002973434

namespace A104588

/-- `A083907(floor(sqrt(n+1)))` -/
def P13133070477002973434.Spec : Prop :=
  ∀ n, P13133070477002973434.a n = A104588 (n + 1)

end A104588

/-! ## A104588.P5314274762388440388

`gcd(∏[(n+1)/∏{p}[n+1, #]], A300951(n+2))`
-/

namespace A104588.P5314274762388440388
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)) (A300951 (n + 2))

end

end A104588.P5314274762388440388

namespace A104588

/-- `gcd(∏[(n+1)/∏{p}[n+1, #]], A300951(n+2))` -/
def P5314274762388440388.Spec : Prop :=
  ∀ n, (P5314274762388440388.a n : ℤ) = A104588 (n + 1)

end A104588

/-! ## A104588.P14456567731029815222

`gcd(∏[(n+1)/∏{p}[n+1, #]], A034386(n))`
-/

namespace A104588.P14456567731029815222
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)) (A034386 n)

end

end A104588.P14456567731029815222

namespace A104588

/-- `gcd(∏[(n+1)/∏{p}[n+1, #]], A034386(n))` -/
def P14456567731029815222.Spec : Prop :=
  ∀ n, (P14456567731029815222.a n : ℤ) = A104588 (n + 1)

end A104588

/-! ## A104588.P3402281374520117422

`gcd(A034386(n), A045948(n+1))`
-/

namespace A104588.P3402281374520117422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034386 n) (A045948 (n + 1))

end

end A104588.P3402281374520117422

namespace A104588

/-- `gcd(A034386(n), A045948(n+1))` -/
def P3402281374520117422.Spec : Prop :=
  ∀ n, (P3402281374520117422.a n : ℤ) = A104588 (n + 1)

end A104588

/-! ## A104588.P9945801999579795686

`gcd(A100777(n+1), A186944(n+1))`
-/

namespace A104588.P9945801999579795686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A100777 (n + 1)) (A186944 (n + 1))

end

end A104588.P9945801999579795686

namespace A104588

/-- `gcd(A100777(n+1), A186944(n+1))` -/
def P9945801999579795686.Spec : Prop :=
  ∀ n, (P9945801999579795686.a n : ℤ) = A104588 (n + 1)

end A104588

/-! ## A104588.P9977026736673350138

`gcd(A068510(n+1), A085056(n+1))`
-/

namespace A104588.P9977026736673350138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068510 (n + 1)) (A085056 (n + 1))

end

end A104588.P9977026736673350138

namespace A104588

/-- `gcd(A068510(n+1), A085056(n+1))` -/
def P9977026736673350138.Spec : Prop :=
  ∀ n, (P9977026736673350138.a n : ℤ) = A104588 (n + 1)

end A104588

/-! ## A104588.P14156744045285652782

`gcd(A003418(n+1)/A034386(n+1), A034386(n+1))`
-/

namespace A104588.P14156744045285652782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A003418 (n + 1) : ℚ) / (A034386 (n + 1) : ℚ))) (A034386 (n + 1))

end

end A104588.P14156744045285652782

namespace A104588

/-- `gcd(A003418(n+1)/A034386(n+1), A034386(n+1))` -/
def P14156744045285652782.Spec : Prop :=
  ∀ n, (P14156744045285652782.a n : ℤ) = A104588 (n + 1)

end A104588

/-! ## A104588.P10147676420372826643

`∏{p}[A045948(n+1), #]`
-/

namespace A104588.P10147676420372826643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045948 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A104588.P10147676420372826643

namespace A104588

/-- `∏{p}[A045948(n+1), #]` -/
def P10147676420372826643.Spec : Prop :=
  ∀ n, (P10147676420372826643.a n : ℤ) = A104588 (n + 1)

end A104588

/-! ## A104588.P11814001799403255152

`gcd(A058250(n), A195458(n+1))`
-/

namespace A104588.P11814001799403255152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058250 n) (A195458 (n + 1))

end

end A104588.P11814001799403255152

namespace A104588

/-- `gcd(A058250(n), A195458(n+1))` -/
def P11814001799403255152.Spec : Prop :=
  ∀ n, (P11814001799403255152.a n : ℤ) = A104588 (n + 1)

end A104588

/-!
# A104594: A129760/2.

The programs for A104594, the canonical program `A104594.P7620489653142025482` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104594 has offset 1).

The definition of A104594 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104594.P7620489653142025482

`and(n+1, n)/2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A104594

/-- `and(n+1, n)/2` -/
def P7620489653142025482.Spec : Prop :=
  ∀ n, P7620489653142025482.a n = (A104594 (n + 1) : ℚ)

end A104594

/-! ## A104594.P9932876038066274685

`log2(sqrt(2))*and(n, n+1)`
-/

namespace A104594.P9932876038066274685
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Real.sqrt (2 : ℝ)) * (Nat.land n (n + 1) : ℝ)

end

end A104594.P9932876038066274685

namespace A104594

/-- `log2(sqrt(2))*and(n, n+1)` -/
def P9932876038066274685.Spec : Prop :=
  ∀ n, P9932876038066274685.a n = (A104594 (n + 1) : ℝ)

end A104594

/-! ## A104594.P15382807563276230842

`and(floor(n/2), ceil(n/2))`
-/

namespace A104594.P15382807563276230842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊(n : ℚ) / 2⌋ ⌈(n : ℚ) / 2⌉

end

end A104594.P15382807563276230842

namespace A104594

/-- `and(floor(n/2), ceil(n/2))` -/
def P15382807563276230842.Spec : Prop :=
  ∀ n, P15382807563276230842.a n = A104594 (n + 1)

end A104594

/-! ## A104594.P10012591230625879444

`∑[Δ[and(n, n-1)]/2]`
-/

namespace A104594.P10012591230625879444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104594.P10012591230625879444

namespace A104594

/-- `∑[Δ[and(n, n-1)]/2]` -/
def P10012591230625879444.Spec : Prop :=
  ∀ n, P10012591230625879444.a n = (A104594 (n + 1) : ℚ)

end A104594

/-! ## A104594.P7497778707119577969

`n-floor(or(n, n+1)/2)`
-/

namespace A104594.P7497778707119577969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(Nat.lor n (n + 1) : ℚ) / 2⌋

end

end A104594.P7497778707119577969

namespace A104594

/-- `n-floor(or(n, n+1)/2)` -/
def P7497778707119577969.Spec : Prop :=
  ∀ n, P7497778707119577969.a n = A104594 (n + 1)

end A104594

/-! ## A104594.P3192678306919727108

`ceil(n-or(n, n+1)/2)`
-/

namespace A104594.P3192678306919727108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) - (Nat.lor n (n + 1) : ℚ) / 2⌉

end

end A104594.P3192678306919727108

namespace A104594

/-- `ceil(n-or(n, n+1)/2)` -/
def P3192678306919727108.Spec : Prop :=
  ∀ n, P3192678306919727108.a n = A104594 (n + 1)

end A104594

/-! ## A104594.P11720558832188439353

`(or(n, -(n+2))+n+2)/2`
-/

namespace A104594.P11720558832188439353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor (n : ℤ) (-(n + 2 : ℤ)) + (n + 2 : ℤ) : ℚ) / 2

end

end A104594.P11720558832188439353

namespace A104594

/-- `(or(n, -(n+2))+n+2)/2` -/
def P11720558832188439353.Spec : Prop :=
  ∀ n, P11720558832188439353.a n = (A104594 (n + 1) : ℚ)

end A104594

/-! ## A104594.P16680798470090450013

`n+1-round(or(n, n+1)/2)`
-/

namespace A104594.P16680798470090450013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - SequenceMachineLib.roundAway ((Nat.lor n (n + 1) : ℚ) / 2)

end

end A104594.P16680798470090450013

namespace A104594

/-- `n+1-round(or(n, n+1)/2)` -/
def P16680798470090450013.Spec : Prop :=
  ∀ n, P16680798470090450013.a n = A104594 (n + 1)

end A104594

/-! ## A104594.P1086868996790171935

`floor(and(n, 2*n-(n-1))/2)`
-/

namespace A104594.P1086868996790171935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.land (n : ℤ) ((2 * n : ℤ) - ((n : ℤ) - 1)) : ℚ) / 2⌋

end

end A104594.P1086868996790171935

namespace A104594

/-- `floor(and(n, 2*n-(n-1))/2)` -/
def P1086868996790171935.Spec : Prop :=
  ∀ n, P1086868996790171935.a n = A104594 (n + 1)

end A104594

/-! ## A104594.P542879088352199359

`ceil(and(n, 2*n-(n-1))/2)`
-/

namespace A104594.P542879088352199359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.land (n : ℤ) ((2 * n : ℤ) - ((n : ℤ) - 1)) : ℚ) / 2⌉

end

end A104594.P542879088352199359

namespace A104594

/-- `ceil(and(n, 2*n-(n-1))/2)` -/
def P542879088352199359.Spec : Prop :=
  ∀ n, P542879088352199359.a n = A104594 (n + 1)

end A104594

/-! ## A104594.P9451486509585760330

`round(and(n, 2*n-(n-1))/2)`
-/

namespace A104594.P9451486509585760330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.land (n : ℤ) ((2 * n : ℤ) - ((n : ℤ) - 1)) : ℚ) / 2)

end

end A104594.P9451486509585760330

namespace A104594

/-- `round(and(n, 2*n-(n-1))/2)` -/
def P9451486509585760330.Spec : Prop :=
  ∀ n, P9451486509585760330.a n = A104594 (n + 1)

end A104594

/-! ## A104594.P16362764744996828943

`ceil((2*n-xor(n, n+1))/4)`
-/

namespace A104594.P16362764744996828943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℤ) - (Nat.xor n (n + 1) : ℤ) : ℚ) / 4⌉

end

end A104594.P16362764744996828943

namespace A104594

/-- `ceil((2*n-xor(n, n+1))/4)` -/
def P16362764744996828943.Spec : Prop :=
  ∀ n, P16362764744996828943.a n = A104594 (n + 1)

end A104594

/-! ## A104594.P12319039820270777676

`round((2*n-xor(n, n+1))/4)`
-/

namespace A104594.P12319039820270777676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℤ) - (Nat.xor n (n + 1) : ℤ) : ℚ) / 4)

end

end A104594.P12319039820270777676

namespace A104594

/-- `round((2*n-xor(n, n+1))/4)` -/
def P12319039820270777676.Spec : Prop :=
  ∀ n, P12319039820270777676.a n = A104594 (n + 1)

end A104594

/-! ## A104594.P11400133155151244665

`(2*n+1-or(n, n+1))/2`
-/

namespace A104594.P11400133155151244665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) - (Nat.lor n (n + 1) : ℤ) : ℚ) / 2

end

end A104594.P11400133155151244665

namespace A104594

/-- `(2*n+1-or(n, n+1))/2` -/
def P11400133155151244665.Spec : Prop :=
  ∀ n, P11400133155151244665.a n = (A104594 (n + 1) : ℚ)

end A104594

/-! ## A104594.P16310659932922553324

`(2*n+1-xor(n, n+1))/4`
-/

namespace A104594.P16310659932922553324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) - (Nat.xor n (n + 1) : ℤ) : ℚ) / 4

end

end A104594.P16310659932922553324

namespace A104594

/-- `(2*n+1-xor(n, n+1))/4` -/
def P16310659932922553324.Spec : Prop :=
  ∀ n, P16310659932922553324.a n = (A104594 (n + 1) : ℚ)

end A104594

/-! ## A104594.P5015663607960190926

`(2*n+1)%or(n, n+1)/2`
-/

namespace A104594.P5015663607960190926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) % Nat.lor n (n + 1) : ℕ) : ℚ) / 2

end

end A104594.P5015663607960190926

namespace A104594

/-- `(2*n+1)%or(n, n+1)/2` -/
def P5015663607960190926.Spec : Prop :=
  ∀ n, P5015663607960190926.a n = (A104594 (n + 1) : ℚ)

end A104594

/-! ## A104594.P2088932640374145839

`xor(2*n+1, xor(n, n+1))/4`
-/

namespace A104594.P2088932640374145839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor (2 * n + 1) (Nat.xor n (n + 1)) : ℚ) / 4

end

end A104594.P2088932640374145839

namespace A104594

/-- `xor(2*n+1, xor(n, n+1))/4` -/
def P2088932640374145839.Spec : Prop :=
  ∀ n, P2088932640374145839.a n = (A104594 (n + 1) : ℚ)

end A104594

/-! ## A104594.P18023367925748860691

`(n*or(n, n+1))%(2*n+1)`
-/

namespace A104594.P18023367925748860691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor n (n + 1) % (2 * n + 1)

end

end A104594.P18023367925748860691

namespace A104594

/-- `(n*or(n, n+1))%(2*n+1)` -/
def P18023367925748860691.Spec : Prop :=
  ∀ n, (P18023367925748860691.a n : ℤ) = A104594 (n + 1)

end A104594

/-! ## A104594.P11624034844003232282

`((n+1)*and(n, n+1))%(2*n+1)`
-/

namespace A104594.P11624034844003232282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.land n (n + 1) % (2 * n + 1)

end

end A104594.P11624034844003232282

namespace A104594

/-- `((n+1)*and(n, n+1))%(2*n+1)` -/
def P11624034844003232282.Spec : Prop :=
  ∀ n, (P11624034844003232282.a n : ℤ) = A104594 (n + 1)

end A104594

/-! ## A104594.P9823095640969790447

`floor(2*a(a(n-1))+n/2-a(n-1))` with `a(0)=0`
-/

namespace A104594.P9823095640969790447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(2 * a (a (n - 1)).toNat : ℚ) + ((n : ℚ) / 2 - (a (n - 1) : ℚ))⌋

end

end A104594.P9823095640969790447

namespace A104594

/-- `floor(2*a(a(n-1))+n/2-a(n-1))` -/
def P9823095640969790447.Spec : Prop :=
  ∀ n, P9823095640969790447.a n = A104594 (n + 1)

end A104594

/-!
# A104595: Number of unrooted maps with n edges of (orientable) genus 2.

The programs for A104595, there is no canonical definition to state claims against.
-/

/-! ## A104595.P1437482575682763259

`A379438(eq[2, A055087(n)])`
-/

namespace A104595.P1437482575682763259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379438 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104595.P1437482575682763259

/-! ## A104595.P13914171867577124445

`A379438(eq[3, A122197(n+1)])`
-/

namespace A104595.P13914171867577124445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379438 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104595.P13914171867577124445

/-!
# A104596: Number of unrooted maps with n edges of (orientable) genus 3.

The programs for A104596, there is no canonical definition to state claims against.
-/

/-! ## A104596.P915117538173924475

`A379438(eq[3, A055087(n)])`
-/

namespace A104596.P915117538173924475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379438 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104596.P915117538173924475

/-! ## A104596.P1506336399499303234

`A379438(eq[4, A122197(n+1)])`
-/

namespace A104596.P1506336399499303234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379438 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104596.P1506336399499303234

/-!
# A104597: Triangle T read by rows: inverse of Motzkin triangle A097609.

The programs for A104597, there is no canonical definition to state claims against.
-/

/-! ## A104597.P13514133007990163822

`A319203(n)%A020639(A133263(A119502(n)))`
-/

namespace A104597.P13514133007990163822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319203 n) (A020639 (A133263 (A119502 n).toNat).toNat)

end

end A104597.P13514133007990163822

/-! ## A104597.P7583429248035280390

`A319203(n)%A206916(A136462(n))`
-/

namespace A104597.P7583429248035280390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319203 n) (A206916 (A136462 n).toNat)

end

end A104597.P7583429248035280390

/-! ## A104597.P2948477667193899634

`and(A267482(n), A319203(A055645(n)))`
-/

namespace A104597.P2948477667193899634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267482 n) (A319203 (A055645 n).toNat)

end

end A104597.P2948477667193899634

/-! ## A104597.P16737193493107743735

`A175595(A130321(n))-A116433(A055645(n))`
-/

namespace A104597.P16737193493107743735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A130321 n).toNat - A116433 (A055645 n).toNat

end

end A104597.P16737193493107743735

/-! ## A104597.P12411732856213006507

`A319203(A055645(n))%A000040(A063007(n))`
-/

namespace A104597.P12411732856213006507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319203 (A055645 n).toNat) (A000040 (A063007 n).toNat)

end

end A104597.P12411732856213006507

/-!
# A104598: Expansion of (1-z-sqrt(1-4z))/(1-4z)^2.

The programs for A104598, the canonical program `A104598.P13205477168444068827` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104598 has offset 1).

The definition of A104598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104598.P13205477168444068827

`A038806(n)+A018218(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A104598

/-- `A038806(n)+A018218(n+1)` -/
def P13205477168444068827.Spec : Prop :=
  ∀ n, P13205477168444068827.a n = A104598 (n + 1)

theorem P13205477168444068827.correct : P13205477168444068827.Spec := by
  intro n
  simp only [A104598, Nat.add_sub_cancel]

end A104598

/-! ## A104598.P1585802829118545419

`A153338(n+2)-∑[A081039(n)]`
-/

namespace A104598.P1585802829118545419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153338 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104598.P1585802829118545419

namespace A104598

/-- `A153338(n+2)-∑[A081039(n)]` -/
def P1585802829118545419.Spec : Prop :=
  ∀ n, P1585802829118545419.a n = A104598 (n + 1)

end A104598

/-! ## A104598.P15623892374704976861

`A002697(n+2)-A241524(n+1)`
-/

namespace A104598.P15623892374704976861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 (n + 2) - A241524 (n + 1)

end

end A104598.P15623892374704976861

namespace A104598

/-- `A002697(n+2)-A241524(n+1)` -/
def P15623892374704976861.Spec : Prop :=
  ∀ n, P15623892374704976861.a n = A104598 (n + 1)

end A104598

/-! ## A104598.P11594813490887600526

`A002697(n+1)+2*A038806(n)`
-/

namespace A104598.P11594813490887600526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 (n + 1) + 2 * A038806 n

end

end A104598.P11594813490887600526

namespace A104598

/-- `A002697(n+1)+2*A038806(n)` -/
def P11594813490887600526.Spec : Prop :=
  ∀ n, P11594813490887600526.a n = A104598 (n + 1)

end A104598

/-! ## A104598.P1872636442998801652

`Δ[A002697(n+1)]-A002457(n+1)`
-/

namespace A104598.P1872636442998801652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002457 (n + 1)

end

end A104598.P1872636442998801652

namespace A104598

/-- `Δ[A002697(n+1)]-A002457(n+1)` -/
def P1872636442998801652.Spec : Prop :=
  ∀ n, P1872636442998801652.a n = A104598 (n + 1)

end A104598

/-! ## A104598.P10268600402370037326

`Δ[A001792(2*n)]-A002457(n+1)`
-/

namespace A104598.P10268600402370037326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002457 (n + 1)

end

end A104598.P10268600402370037326

namespace A104598

/-- `Δ[A001792(2*n)]-A002457(n+1)` -/
def P10268600402370037326.Spec : Prop :=
  ∀ n, P10268600402370037326.a n = A104598 (n + 1)

end A104598

/-! ## A104598.P18208871811065542664

`2*A018218(n+1)-A002697(n+1)`
-/

namespace A104598.P18208871811065542664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018218 (n + 1) - A002697 (n + 1)

end

end A104598.P18208871811065542664

namespace A104598

/-- `2*A018218(n+1)-A002697(n+1)` -/
def P18208871811065542664.Spec : Prop :=
  ∀ n, P18208871811065542664.a n = A104598 (n + 1)

end A104598

/-! ## A104598.P6673829688439853851

`A049610(A005843(n+2))-A241524(n+1)`
-/

namespace A104598.P6673829688439853851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (A005843 (n + 2)).toNat - A241524 (n + 1)

end

end A104598.P6673829688439853851

namespace A104598

/-- `A049610(A005843(n+2))-A241524(n+1)` -/
def P6673829688439853851.Spec : Prop :=
  ∀ n, P6673829688439853851.a n = A104598 (n + 1)

end A104598

/-! ## A104598.P17827050835397567719

`A049610(A004275(n+3))-A241524(n+1)`
-/

namespace A104598.P17827050835397567719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (A004275 (n + 3)).toNat - A241524 (n + 1)

end

end A104598.P17827050835397567719

namespace A104598

/-- `A049610(A004275(n+3))-A241524(n+1)` -/
def P17827050835397567719.Spec : Prop :=
  ∀ n, P17827050835397567719.a n = A104598 (n + 1)

end A104598

/-! ## A104598.P3378617473389828155

`A002697(n+2)-(A002697(n+1)+A002457(n+1))`
-/

namespace A104598.P3378617473389828155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 (n + 2) - (A002697 (n + 1) + A002457 (n + 1))

end

end A104598.P3378617473389828155

namespace A104598

/-- `A002697(n+2)-(A002697(n+1)+A002457(n+1))` -/
def P3378617473389828155.Spec : Prop :=
  ∀ n, P3378617473389828155.a n = A104598 (n + 1)

end A104598

