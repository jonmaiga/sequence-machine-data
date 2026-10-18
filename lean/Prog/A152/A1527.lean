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
import Seq.B000.C020
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A152700: Number of permutations of floor(i*7/2), i=0..n-1, with all sums of 8 adjacent terms unique.

The programs for A152700, there is no canonical definition to state claims against.
-/

/-! ## A152700.P2992424843938419974

`A152708(A077168(n))`
-/

namespace A152700.P2992424843938419974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152708 (A077168 n).toNat

end

end A152700.P2992424843938419974

/-! ## A152700.P14413247345062270502

`A152708(A043319(n+1))`
-/

namespace A152700.P14413247345062270502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152708 (A043319 (n + 1)).toNat

end

end A152700.P14413247345062270502

/-! ## A152700.P2193953670955770935

`A152708(∑[A340366(n+1)])`
-/

namespace A152700.P2193953670955770935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152708 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152700.P2193953670955770935

/-! ## A152700.P17255251875070976066

`record[A152708(A097283(n+1))]`
-/

namespace A152700.P17255251875070976066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152708 (A097283 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152700.P17255251875070976066

/-! ## A152700.P6396342135999891751

`A152708(A323288(n+1)/2)`
-/

namespace A152700.P6396342135999891751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152708 (SequenceMachineLib.roundAway ((A323288 (n + 1) : ℚ) / 2)).toNat

end

end A152700.P6396342135999891751

/-!
# A152706: Number of permutations of floor(i*8/5), i=0..n-1, with all sums of 8 adjacent terms unique.

The programs for A152706, there is no canonical definition to state claims against.
-/

/-! ## A152706.P17876503070192949686

`A152709(A002998(n)+1)`
-/

namespace A152706.P17876503070192949686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152709 (A002998 n + 1).toNat

end

end A152706.P17876503070192949686

/-! ## A152706.P16940882870642315929

`A152709(A046469(n)+1)`
-/

namespace A152706.P16940882870642315929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152709 (A046469 n + 1).toNat

end

end A152706.P16940882870642315929

/-! ## A152706.P12125322193211086551

`A152709(A051022(n)+1)`
-/

namespace A152706.P12125322193211086551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152709 (A051022 n + 1).toNat

end

end A152706.P12125322193211086551

/-! ## A152706.P2313158082719046638

`A152709(A051596(n+1))`
-/

namespace A152706.P2313158082719046638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152709 (A051596 (n + 1)).toNat

end

end A152706.P2313158082719046638

/-! ## A152706.P11390537893054422897

`A152709(A087051(n)+1)`
-/

namespace A152706.P11390537893054422897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152709 (A087051 n + 1).toNat

end

end A152706.P11390537893054422897

/-!
# A152713: Decimal expansion of log_7(2).

The programs for A152713, there is no canonical definition to state claims against.
-/

/-! ## A152713.P17794563327166825104

`A154467(n+1)`
-/

namespace A152713.P17794563327166825104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154467 (n + 1 + 1)

end

end A152713.P17794563327166825104

/-! ## A152713.P7005182279738980557

`A154467(n)-Δ[-A154467(n)]`
-/

namespace A152713.P7005182279738980557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A154467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154467 (n + 1) - (f1 (n + 1) - f1 n)

end

end A152713.P7005182279738980557

/-! ## A152713.P16902479834174126752

`or(A000007(n), A154467(Δ[n²]-n))`
-/

namespace A152713.P16902479834174126752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A154467 (((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + 1))

end

end A152713.P16902479834174126752

/-! ## A152713.P4173831275611878567

`dr(A154467(A008619(A005843(n))))`
-/

namespace A152713.P4173831275611878567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A154467 ((A008619 (A005843 n).toNat).toNat + 1))

end

end A152713.P4173831275611878567

/-!
# A152714: Triangle read by rows: T(n,k) = 3^min(k, n-k).

The programs for A152714, the canonical program `A152714.P9266182527036570793` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152714 has offset 0).

The definition of A152714 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004197, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152714.P9266182527036570793

`3^A004197(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A152714

/-- `3^A004197(n)` -/
def P9266182527036570793.Spec : Prop :=
  ∀ n, P9266182527036570793.a n = (A152714 n : ℚ)

end A152714

/-! ## A152714.P306249221949620564

`3^(A003983(n+1)-1)`
-/

namespace A152714.P306249221949620564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A003983 (n + 1) - 1 : ℤ)

end

end A152714.P306249221949620564

namespace A152714

/-- `3^(A003983(n+1)-1)` -/
def P306249221949620564.Spec : Prop :=
  ∀ n, P306249221949620564.a n = (A152714 n : ℚ)

end A152714

/-! ## A152714.P17184373732560600526

`A000244(A004197(n))`
-/

namespace A152714.P17184373732560600526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A004197 n).toNat

end

end A152714.P17184373732560600526

namespace A152714

/-- `A000244(A004197(n))` -/
def P17184373732560600526.Spec : Prop :=
  ∀ n, P17184373732560600526.a n = A152714 n

end A152714

/-! ## A152714.P2740673205176745872

`A111575(A115281(n))`
-/

namespace A152714.P2740673205176745872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111575 (A115281 n).toNat

end

end A152714.P2740673205176745872

namespace A152714

/-- `A111575(A115281(n))` -/
def P2740673205176745872.Spec : Prop :=
  ∀ n, P2740673205176745872.a n = A152714 n

end A152714

/-! ## A152714.P11086959885604231543

`A108411(A157458(n))`
-/

namespace A152714.P11086959885604231543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (A157458 n).toNat

end

end A152714.P11086959885604231543

namespace A152714

/-- `A108411(A157458(n))` -/
def P11086959885604231543.Spec : Prop :=
  ∀ n, P11086959885604231543.a n = A152714 n

end A152714

/-! ## A152714.P17926871907448724650

`A055373(A106255(n+1))`
-/

namespace A152714.P17926871907448724650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055373 (A106255 (n + 1)).toNat

end

end A152714.P17926871907448724650

namespace A152714

/-- `A055373(A106255(n+1))` -/
def P17926871907448724650.Spec : Prop :=
  ∀ n, P17926871907448724650.a n = A152714 n

end A152714

/-! ## A152714.P1287002062762475755

`A030439(A157454(n+1))`
-/

namespace A152714.P1287002062762475755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030439 (A157454 (n + 1)).toNat

end

end A152714.P1287002062762475755

namespace A152714

/-- `A030439(A157454(n+1))` -/
def P1287002062762475755.Spec : Prop :=
  ∀ n, P1287002062762475755.a n = A152714 n

end A152714

/-! ## A152714.P15633165058008378043

`A090880(A138139(n+1))`
-/

namespace A152714.P15633165058008378043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090880 (A138139 (n + 1)).toNat

end

end A152714.P15633165058008378043

namespace A152714

/-- `A090880(A138139(n+1))` -/
def P15633165058008378043.Spec : Prop :=
  ∀ n, P15633165058008378043.a n = A152714 n

end A152714

/-! ## A152714.P8798451929121199216

`A091916(A204028(n+1))`
-/

namespace A152714.P8798451929121199216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091916 (A204028 (n + 1)).toNat

end

end A152714.P8798451929121199216

namespace A152714

/-- `A091916(A204028(n+1))` -/
def P8798451929121199216.Spec : Prop :=
  ∀ n, P8798451929121199216.a n = A152714 n

end A152714

/-! ## A152714.P12231238033002525363

`A000244(val(A036561(n), 6))`
-/

namespace A152714.P12231238033002525363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (SequenceMachineLib.valuation (A036561 n).toNat 6)

end

end A152714.P12231238033002525363

namespace A152714

/-- `A000244(val(A036561(n), 6))` -/
def P12231238033002525363.Spec : Prop :=
  ∀ n, P12231238033002525363.a n = A152714 n

end A152714

/-! ## A152714.P2262499079698378218

`A000244(val(A175840(n), 6))`
-/

namespace A152714.P2262499079698378218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (SequenceMachineLib.valuation (A175840 n).toNat 6)

end

end A152714.P2262499079698378218

namespace A152714

/-- `A000244(val(A175840(n), 6))` -/
def P2262499079698378218.Spec : Prop :=
  ∀ n, P2262499079698378218.a n = A152714 n

end A152714

/-! ## A152714.P7220490039535742124

`gcd(A036561(n), A120027(n))`
-/

namespace A152714.P7220490039535742124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036561 n) (A120027 n)

end

end A152714.P7220490039535742124

namespace A152714

/-- `gcd(A036561(n), A120027(n))` -/
def P7220490039535742124.Spec : Prop :=
  ∀ n, (P7220490039535742124.a n : ℤ) = A152714 n

end A152714

/-! ## A152714.P18260279734301624359

`gcd(A055235(n), A140303(n))`
-/

namespace A152714.P18260279734301624359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055235 n) (A140303 n)

end

end A152714.P18260279734301624359

namespace A152714

/-- `gcd(A055235(n), A140303(n))` -/
def P18260279734301624359.Spec : Prop :=
  ∀ n, (P18260279734301624359.a n : ℤ) = A152714 n

end A152714

/-! ## A152714.P10131784917062877048

`A000244(A003983(n+1)-1)`
-/

namespace A152714.P10131784917062877048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A003983 (n + 1) - 1).toNat

end

end A152714.P10131784917062877048

namespace A152714

/-- `A000244(A003983(n+1)-1)` -/
def P10131784917062877048.Spec : Prop :=
  ∀ n, P10131784917062877048.a n = A152714 n

end A152714

/-! ## A152714.P3610960954007174304

`gcd(A025614(n+1), A176225(n))`
-/

namespace A152714.P3610960954007174304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025614 (n + 1)) (A176225 n)

end

end A152714.P3610960954007174304

namespace A152714

/-- `gcd(A025614(n+1), A176225(n))` -/
def P3610960954007174304.Spec : Prop :=
  ∀ n, (P3610960954007174304.a n : ℤ) = A152714 n

end A152714

/-! ## A152714.P11789141491011388221

`gcd(A135765(n+1), A175840(n))`
-/

namespace A152714.P11789141491011388221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A135765 (n + 1)) (A175840 n)

end

end A152714.P11789141491011388221

namespace A152714

/-- `gcd(A135765(n+1), A175840(n))` -/
def P11789141491011388221.Spec : Prop :=
  ∀ n, (P11789141491011388221.a n : ℤ) = A152714 n

end A152714

/-! ## A152714.P7056237097383515558

`A024023(A003983(n+1)-1)+1`
-/

namespace A152714.P7056237097383515558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 (A003983 (n + 1) - 1).toNat + 1

end

end A152714.P7056237097383515558

namespace A152714

/-- `A024023(A003983(n+1)-1)+1` -/
def P7056237097383515558.Spec : Prop :=
  ∀ n, P7056237097383515558.a n = A152714 n

end A152714

/-! ## A152714.P10651323098649470235

`A000792(A004197(n)+2*A004197(n))`
-/

namespace A152714.P10651323098649470235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (A004197 n + 2 * A004197 n).toNat

end

end A152714.P10651323098649470235

namespace A152714

/-- `A000792(A004197(n)+2*A004197(n))` -/
def P10651323098649470235.Spec : Prop :=
  ∀ n, P10651323098649470235.a n = A152714 n

end A152714

/-! ## A152714.P12535026546974655080

`gcd(A013620(n), A027465(n))/A007318(n)`
-/

namespace A152714.P12535026546974655080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A013620 n) (A027465 n) : ℚ) / (A007318 n : ℚ)

end

end A152714.P12535026546974655080

namespace A152714

/-- `gcd(A013620(n), A027465(n))/A007318(n)` -/
def P12535026546974655080.Spec : Prop :=
  ∀ n, P12535026546974655080.a n = (A152714 n : ℚ)

end A152714

/-! ## A152714.P8720189821969279613

`A140303(A168281(n+1))`
-/

namespace A152714.P8720189821969279613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 (A168281 (n + 1)).toNat

end

end A152714.P8720189821969279613

namespace A152714

/-- `A140303(A168281(n+1))` -/
def P8720189821969279613.Spec : Prop :=
  ∀ n, P8720189821969279613.a n = A152714 n

end A152714

/-!
# A152715: Primes in A065049 which are not in A139370.

The programs for A152715, there is no canonical definition to state claims against.
-/

/-! ## A152715.P9158862791166013013

`A065091(lt[2, A065081(n+1)])`
-/

namespace A152715.P9158862791166013013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A152715.P9158862791166013013

/-! ## A152715.P1307605825786582054

`p?[A034856(A284933(n+1))%A171947(n+1)]`
-/

namespace A152715.P1307605825786582054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034856 (A284933 (n + 1)).toNat) (A171947 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152715.P1307605825786582054

/-! ## A152715.P8304618053394542783

`p?[A102683(A000079(n))+A045105(n+1)]`
-/

namespace A152715.P8304618053394542783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A000079 n).toNat + A045105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152715.P8304618053394542783

/-!
# A152716: Triangle T(n,k) read by rows: T(n,k) = 4^min(k, n-k) = 4^A004197(n,k).

The programs for A152716, the canonical program `A152716.P634610165933584230` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152716 has offset 0).

The definition of A152716 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004197, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152716.P634610165933584230

`4^A004197(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A152716

/-- `4^A004197(n)` -/
def P634610165933584230.Spec : Prop :=
  ∀ n, P634610165933584230.a n = (A152716 n : ℚ)

end A152716

/-! ## A152716.P9204154831338412901

`gcd((4*(n-C(∑[char[∑[n]]], 2))+2)*2^(C(comp[∑[n]]-n, 2)-n)/4, 2^(n-C(∑[char[∑[n]]], 2)))²`
-/

namespace A152716.P9204154831338412901
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

open Classical in
def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f7 j = n then 1 else 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((4 * ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) + 2 : ℚ) * (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ) / 4)) (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f6 j) 2 : ℤ) : ℤ))) ^ 2

end

end A152716.P9204154831338412901

namespace A152716

/-- `gcd((4*(n-C(∑[char[∑[n]]], 2))+2)*2^(C(comp[∑[n]]-n, 2)-n)/4, 2^(n-C(∑[char[∑[n]]], 2)))²` -/
def P9204154831338412901.Spec : Prop :=
  ∀ n, (P9204154831338412901.a n : ℤ) = A152716 n

end A152716

/-! ## A152716.P16178513435145278712

`A144464(n)²`
-/

namespace A152716.P16178513435145278712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144464 n ^ 2

end

end A152716.P16178513435145278712

namespace A152716

/-- `A144464(n)²` -/
def P16178513435145278712.Spec : Prop :=
  ∀ n, P16178513435145278712.a n = A152716 n

end A152716

/-! ## A152716.P14939000756993736686

`4^val(A036561(n), 6)`
-/

namespace A152716.P14939000756993736686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ SequenceMachineLib.valuation (A036561 n).toNat 6

end

end A152716.P14939000756993736686

namespace A152716

/-- `4^val(A036561(n), 6)` -/
def P14939000756993736686.Spec : Prop :=
  ∀ n, (P14939000756993736686.a n : ℤ) = A152716 n

end A152716

/-! ## A152716.P3472393605604449838

`round(A143086(n)/2)²`
-/

namespace A152716.P3472393605604449838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A143086 n : ℚ) / 2) ^ 2

end

end A152716.P3472393605604449838

namespace A152716

/-- `round(A143086(n)/2)²` -/
def P3472393605604449838.Spec : Prop :=
  ∀ n, P3472393605604449838.a n = A152716 n

end A152716

/-! ## A152716.P7835706734894502687

`A082693(Δ[n²])/2`
-/

namespace A152716.P7835706734894502687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082693 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A152716.P7835706734894502687

namespace A152716

/-- `A082693(Δ[n²])/2` -/
def P7835706734894502687.Spec : Prop :=
  ∀ n, P7835706734894502687.a n = (A152716 n : ℚ)

end A152716

/-! ## A152716.P11332837152415351034

`2^(A157454(n+1)-1)`
-/

namespace A152716.P11332837152415351034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A157454 (n + 1) - 1 : ℤ)

end

end A152716.P11332837152415351034

namespace A152716

/-- `2^(A157454(n+1)-1)` -/
def P11332837152415351034.Spec : Prop :=
  ∀ n, P11332837152415351034.a n = (A152716 n : ℚ)

end A152716

/-! ## A152716.P13458967043456732763

`A000302(A004197(n))`
-/

namespace A152716.P13458967043456732763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A004197 n).toNat

end

end A152716.P13458967043456732763

namespace A152716

/-- `A000302(A004197(n))` -/
def P13458967043456732763.Spec : Prop :=
  ∀ n, P13458967043456732763.a n = A152716 n

end A152716

/-! ## A152716.P8391598424883827244

`A060723(A115281(n))`
-/

namespace A152716.P8391598424883827244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060723 (A115281 n).toNat

end

end A152716.P8391598424883827244

namespace A152716

/-- `A060723(A115281(n))` -/
def P8391598424883827244.Spec : Prop :=
  ∀ n, P8391598424883827244.a n = A152716 n

end A152716

/-! ## A152716.P4134762662039092287

`A213173(A157458(n))`
-/

namespace A152716.P4134762662039092287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213173 (A157458 n).toNat

end

end A152716.P4134762662039092287

namespace A152716

/-- `A213173(A157458(n))` -/
def P4134762662039092287.Spec : Prop :=
  ∀ n, P4134762662039092287.a n = A152716 n

end A152716

/-! ## A152716.P6129247591727196685

`A028297(A106314(n+1))`
-/

namespace A152716.P6129247591727196685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028297 (A106314 (n + 1)).toNat

end

end A152716.P6129247591727196685

namespace A152716

/-- `A028297(A106314(n+1))` -/
def P6129247591727196685.Spec : Prop :=
  ∀ n, P6129247591727196685.a n = A152716 n

end A152716

/-! ## A152716.P12097437230232365823

`A007179(A157454(n+1))`
-/

namespace A152716.P12097437230232365823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 (A157454 (n + 1)).toNat

end

end A152716.P12097437230232365823

namespace A152716

/-- `A007179(A157454(n+1))` -/
def P12097437230232365823.Spec : Prop :=
  ∀ n, P12097437230232365823.a n = A152716 n

end A152716

/-! ## A152716.P3815274217176689479

`A000079(2*A004197(n))`
-/

namespace A152716.P3815274217176689479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * A004197 n).toNat

end

end A152716.P3815274217176689479

namespace A152716

/-- `A000079(2*A004197(n))` -/
def P3815274217176689479.Spec : Prop :=
  ∀ n, P3815274217176689479.a n = A152716 n

end A152716

/-! ## A152716.P6771569908915080012

`A122803(2*A004197(n))`
-/

namespace A152716.P6771569908915080012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 (2 * A004197 n).toNat

end

end A152716.P6771569908915080012

namespace A152716

/-- `A122803(2*A004197(n))` -/
def P6771569908915080012.Spec : Prop :=
  ∀ n, P6771569908915080012.a n = A152716 n

end A152716

/-! ## A152716.P7402839241786052333

`A137688(n)/A116588(n)`
-/

namespace A152716.P7402839241786052333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137688 n : ℚ) / (A116588 n : ℚ)

end

end A152716.P7402839241786052333

namespace A152716

/-- `A137688(n)/A116588(n)` -/
def P7402839241786052333.Spec : Prop :=
  ∀ n, P7402839241786052333.a n = (A152716 n : ℚ)

end A152716

/-! ## A152716.P16518629391534963782

`gcd(A130324(n), A262616(n))`
-/

namespace A152716.P16518629391534963782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130324 n) (A262616 n)

end

end A152716.P16518629391534963782

namespace A152716

/-- `gcd(A130324(n), A262616(n))` -/
def P16518629391534963782.Spec : Prop :=
  ∀ n, (P16518629391534963782.a n : ℤ) = A152716 n

end A152716

/-! ## A152716.P5328269765808201751

`A011782(A003983(n+1))²`
-/

namespace A152716.P5328269765808201751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A003983 (n + 1)).toNat ^ 2

end

end A152716.P5328269765808201751

namespace A152716

/-- `A011782(A003983(n+1))²` -/
def P5328269765808201751.Spec : Prop :=
  ∀ n, P5328269765808201751.a n = A152716 n

end A152716

/-! ## A152716.P11520771375550313126

`A130321(A168281(n+1))²`
-/

namespace A152716.P11520771375550313126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (A168281 (n + 1)).toNat ^ 2

end

end A152716.P11520771375550313126

namespace A152716

/-- `A130321(A168281(n+1))²` -/
def P11520771375550313126.Spec : Prop :=
  ∀ n, P11520771375550313126.a n = A152716 n

end A152716

/-! ## A152716.P7881904546856730179

`gcd(A100851(n), A176227(n))`
-/

namespace A152716.P7881904546856730179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A100851 n) (A176227 n)

end

end A152716.P7881904546856730179

namespace A152716

/-- `gcd(A100851(n), A176227(n))` -/
def P7881904546856730179.Spec : Prop :=
  ∀ n, (P7881904546856730179.a n : ℤ) = A152716 n

end A152716

/-! ## A152716.P4863689555088346529

`A262616(A286150(n))`
-/

namespace A152716.P4863689555088346529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262616 (A286150 n).toNat

end

end A152716.P4863689555088346529

namespace A152716

/-- `A262616(A286150(n))` -/
def P4863689555088346529.Spec : Prop :=
  ∀ n, P4863689555088346529.a n = A152716 n

end A152716

/-!
# A152717: Triangle T(n,k) read by rows: T(n,k) = 5^min(k, n-k) = 5^A004197(n,k).

The programs for A152717, the canonical program `A152717.P11772506304295409247` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152717 has offset 0).

The definition of A152717 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004197, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152717.P11772506304295409247

`5^A004197(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A152717

/-- `5^A004197(n)` -/
def P11772506304295409247.Spec : Prop :=
  ∀ n, P11772506304295409247.a n = (A152717 n : ℚ)

end A152717

/-! ## A152717.P16969438673451445476

`5^log2(A144464(n))`
-/

namespace A152717.P16969438673451445476
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 : ℝ) ^ (Real.logb 2 (A144464 n : ℝ))

end

end A152717.P16969438673451445476

namespace A152717

/-- `5^log2(A144464(n))` -/
def P16969438673451445476.Spec : Prop :=
  ∀ n, P16969438673451445476.a n = (A152717 n : ℝ)

end A152717

/-! ## A152717.P1657777283224462077

`5^val(A036561(n), 6)`
-/

namespace A152717.P1657777283224462077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ SequenceMachineLib.valuation (A036561 n).toNat 6

end

end A152717.P1657777283224462077

namespace A152717

/-- `5^val(A036561(n), 6)` -/
def P1657777283224462077.Spec : Prop :=
  ∀ n, (P1657777283224462077.a n : ℤ) = A152717 n

end A152717

/-! ## A152717.P7744095548801743438

`5^(A003983(n+1)-1)`
-/

namespace A152717.P7744095548801743438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A003983 (n + 1) - 1 : ℤ)

end

end A152717.P7744095548801743438

namespace A152717

/-- `5^(A003983(n+1)-1)` -/
def P7744095548801743438.Spec : Prop :=
  ∀ n, P7744095548801743438.a n = (A152717 n : ℚ)

end A152717

/-! ## A152717.P949446097748745541

`5^A053616(∑[1-char[∑[n]]])`
-/

namespace A152717.P949446097748745541
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A053616 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℤ)

end

end A152717.P949446097748745541

namespace A152717

/-- `5^A053616(∑[1-char[∑[n]]])` -/
def P949446097748745541.Spec : Prop :=
  ∀ n, P949446097748745541.a n = (A152717 n : ℚ)

end A152717

/-! ## A152717.P6305277583011236487

`A005517(A204028(n+1))`
-/

namespace A152717.P6305277583011236487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005517 (A204028 (n + 1)).toNat

end

end A152717.P6305277583011236487

namespace A152717

/-- `A005517(A204028(n+1))` -/
def P6305277583011236487.Spec : Prop :=
  ∀ n, P6305277583011236487.a n = A152717 n

end A152717

/-! ## A152717.P3172536941014640383

`A074872(A157454(n+1))`
-/

namespace A152717.P3172536941014640383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074872 (A157454 (n + 1)).toNat

end

end A152717.P3172536941014640383

namespace A152717

/-- `A074872(A157454(n+1))` -/
def P3172536941014640383.Spec : Prop :=
  ∀ n, P3172536941014640383.a n = A152717 n

end A152717

/-! ## A152717.P5898367147148583027

`A074872(A194959(n+1))`
-/

namespace A152717.P5898367147148583027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074872 (A194959 (n + 1)).toNat

end

end A152717.P5898367147148583027

namespace A152717

/-- `A074872(A194959(n+1))` -/
def P5898367147148583027.Spec : Prop :=
  ∀ n, P5898367147148583027.a n = A152717 n

end A152717

/-! ## A152717.P15899639427526585832

`A074872(A210535(n+1))`
-/

namespace A152717.P15899639427526585832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074872 (A210535 (n + 1)).toNat

end

end A152717.P15899639427526585832

namespace A152717

/-- `A074872(A210535(n+1))` -/
def P15899639427526585832.Spec : Prop :=
  ∀ n, P15899639427526585832.a n = A152717 n

end A152717

/-! ## A152717.P4028621106084958728

`A032532(A144464(n))`
-/

namespace A152717.P4028621106084958728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032532 (A144464 n).toNat

end

end A152717.P4028621106084958728

namespace A152717

/-- `A032532(A144464(n))` -/
def P4028621106084958728.Spec : Prop :=
  ∀ n, P4028621106084958728.a n = A152717 n

end A152717

/-! ## A152717.P18160561654286352275

`gcd(A004655(n), A176226(n))`
-/

namespace A152717.P18160561654286352275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004655 n) (A176226 n)

end

end A152717.P18160561654286352275

namespace A152717

/-- `gcd(A004655(n), A176226(n))` -/
def P18160561654286352275.Spec : Prop :=
  ∀ n, (P18160561654286352275.a n : ℤ) = A152717 n

end A152717

/-! ## A152717.P11693045665407352548

`A151780(A143086(n))`
-/

namespace A152717.P11693045665407352548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151780 (A143086 n).toNat

end

end A152717.P11693045665407352548

namespace A152717

/-- `A151780(A143086(n))` -/
def P11693045665407352548.Spec : Prop :=
  ∀ n, P11693045665407352548.a n = A152717 n

end A152717

/-! ## A152717.P12878059494300025094

`A003961(A152714(n))`
-/

namespace A152717.P12878059494300025094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A152714 n).toNat

end

end A152717.P12878059494300025094

namespace A152717

/-- `A003961(A152714(n))` -/
def P12878059494300025094.Spec : Prop :=
  ∀ n, P12878059494300025094.a n = A152717 n

end A152717

/-! ## A152717.P13576500361794635575

`A037459(A152716(n))`
-/

namespace A152717.P13576500361794635575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (A152716 n).toNat

end

end A152717.P13576500361794635575

namespace A152717

/-- `A037459(A152716(n))` -/
def P13576500361794635575.Spec : Prop :=
  ∀ n, P13576500361794635575.a n = A152717 n

end A152717

/-! ## A152717.P4901040460960382613

`A151780(A131816(n))`
-/

namespace A152717.P4901040460960382613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151780 (A131816 n).toNat

end

end A152717.P4901040460960382613

namespace A152717

/-- `A151780(A131816(n))` -/
def P4901040460960382613.Spec : Prop :=
  ∀ n, P4901040460960382613.a n = A152717 n

end A152717

/-!
# A152718: a(n) = 2*a(n-1) - a(n-2) + 2*a(n-3) - a(n-4) + a(n-5), n > 5.

The programs for A152718, the canonical program `A152718.P13199365145364549734` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152718 has offset 0).

The definition of A152718 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-a(n-2)+2*a(n-3)-a(n-4)+a(n-5)` (program `A152718.P13199365145364549734`, by `A152718.P13199365145364549734.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152718.P13199365145364549734

`2*a(n-1)-a(n-2)+2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=4`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152718

/-- `2*a(n-1)-a(n-2)+2*a(n-3)-a(n-4)+a(n-5)` -/
def P13199365145364549734.Spec : Prop :=
  ∀ n, P13199365145364549734.a n = A152718 n

theorem P13199365145364549734.correct : P13199365145364549734.Spec := by
  intro n
  simp only [A152718]

end A152718

/-! ## A152718.P11164900456660309118

`ceil(A056783(2*(n+1))/A145549(2*(n+2)))`
-/

namespace A152718.P11164900456660309118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A056783 (2 * (n + 1)) : ℚ) / (A145549 (2 * (n + 2)) : ℚ)⌉

end

end A152718.P11164900456660309118

namespace A152718

/-- `ceil(A056783(2*(n+1))/A145549(2*(n+2)))` -/
def P11164900456660309118.Spec : Prop :=
  ∀ n, P11164900456660309118.a n = A152718 n

end A152718

/-! ## A152718.P4331052762599083016

`A239556(A004895(n+1)-A178334(n))`
-/

namespace A152718.P4331052762599083016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239556 (A004895 (n + 1) - A178334 n).toNat

end

end A152718.P4331052762599083016

namespace A152718

/-- `A239556(A004895(n+1)-A178334(n))` -/
def P4331052762599083016.Spec : Prop :=
  ∀ n, P4331052762599083016.a n = A152718 n

end A152718

/-! ## A152718.P5399187979500008136

`A239556(gcd(n!, ∏{digits}[1-n, #]))`
-/

namespace A152718.P5399187979500008136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239556 (Nat.gcd (Nat.factorial n) ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod)

end

end A152718.P5399187979500008136

namespace A152718

/-- `A239556(gcd(n!, ∏{digits}[1-n, #]))` -/
def P5399187979500008136.Spec : Prop :=
  ∀ n, P5399187979500008136.a n = A152718 n

end A152718

/-! ## A152718.P13223722221305807578

`A111654(A000085(n))`
-/

namespace A152718.P13223722221305807578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A000085 n).toNat

end

end A152718.P13223722221305807578

namespace A152718

/-- `A111654(A000085(n))` -/
def P13223722221305807578.Spec : Prop :=
  ∀ n, P13223722221305807578.a n = A152718 n

end A152718

/-!
# A152719: Triangle read by rows: T(n,k) = A000129( 1 + min(k,n-k) ), n>=0, 0<=k<=n.

The programs for A152719, the canonical program `A152719.P13057198307662737590` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152719 has offset 0).

The definition of A152719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152719.P13057198307662737590

`A000129(A003983(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A152719

/-- `A000129(A003983(n+1))` -/
def P13057198307662737590.Spec : Prop :=
  ∀ n, P13057198307662737590.a n = A152719 n

theorem P13057198307662737590.correct : P13057198307662737590.Spec := by
  intro n
  simp only [A152719]

end A152719

/-! ## A152719.P8840401330216642208

`A000129(A004197(n)+1)`
-/

namespace A152719.P8840401330216642208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (A004197 n + 1).toNat

end

end A152719.P8840401330216642208

namespace A152719

/-- `A000129(A004197(n)+1)` -/
def P8840401330216642208.Spec : Prop :=
  ∀ n, P8840401330216642208.a n = A152719 n

end A152719

/-! ## A152719.P18025383287526291633

`A215928(A004197(n)+1)`
-/

namespace A152719.P18025383287526291633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (A004197 n + 1).toNat

end

end A152719.P18025383287526291633

namespace A152719

/-- `A215928(A004197(n)+1)` -/
def P18025383287526291633.Spec : Prop :=
  ∀ n, P18025383287526291633.a n = A152719 n

end A152719

/-! ## A152719.P15691087618888879948

`A092550(A204028(n+1))`
-/

namespace A152719.P15691087618888879948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092550 (A204028 (n + 1)).toNat

end

end A152719.P15691087618888879948

namespace A152719

/-- `A092550(A204028(n+1))` -/
def P15691087618888879948.Spec : Prop :=
  ∀ n, P15691087618888879948.a n = A152719 n

end A152719

/-! ## A152719.P4312829142053577692

`A135153(2*A003983(n+1))`
-/

namespace A152719.P4312829142053577692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (2 * A003983 (n + 1)).toNat

end

end A152719.P4312829142053577692

namespace A152719

/-- `A135153(2*A003983(n+1))` -/
def P4312829142053577692.Spec : Prop :=
  ∀ n, P4312829142053577692.a n = A152719 n

end A152719

/-! ## A152719.P96978600609693889

`A000129(ceil(A157454(n+1)/2))`
-/

namespace A152719.P96978600609693889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 ⌈(A157454 (n + 1) : ℚ) / 2⌉.toNat

end

end A152719.P96978600609693889

namespace A152719

/-- `A000129(ceil(A157454(n+1)/2))` -/
def P96978600609693889.Spec : Prop :=
  ∀ n, P96978600609693889.a n = A152719 n

end A152719

/-! ## A152719.P8862525446212566921

`A000129((A157454(n+1)+1)/2)`
-/

namespace A152719.P8862525446212566921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (SequenceMachineLib.roundAway ((A157454 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A152719.P8862525446212566921

namespace A152719

/-- `A000129((A157454(n+1)+1)/2)` -/
def P8862525446212566921.Spec : Prop :=
  ∀ n, P8862525446212566921.a n = A152719 n

end A152719

/-! ## A152719.P7493627295948903806

`A135153(A003983(n+1)+A003983(n+1)+1)`
-/

namespace A152719.P7493627295948903806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (A003983 (n + 1) + (A003983 (n + 1) + 1)).toNat

end

end A152719.P7493627295948903806

namespace A152719

/-- `A135153(A003983(n+1)+A003983(n+1)+1)` -/
def P7493627295948903806.Spec : Prop :=
  ∀ n, P7493627295948903806.a n = A152719 n

end A152719

/-! ## A152719.P12942332261338512483

`A072727(A143086(n))`
-/

namespace A152719.P12942332261338512483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072727 (A143086 n).toNat

end

end A152719.P12942332261338512483

namespace A152719

/-- `A072727(A143086(n))` -/
def P12942332261338512483.Spec : Prop :=
  ∀ n, P12942332261338512483.a n = A152719 n

end A152719

/-! ## A152719.P13432875446615356616

`A321783(A152714(n))`
-/

namespace A152719.P13432875446615356616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321783 (A152714 n).toNat

end

end A152719.P13432875446615356616

namespace A152719

/-- `A321783(A152714(n))` -/
def P13432875446615356616.Spec : Prop :=
  ∀ n, P13432875446615356616.a n = A152719 n

end A152719

/-! ## A152719.P9874946605499210749

`A072727(A131816(n))`
-/

namespace A152719.P9874946605499210749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072727 (A131816 n).toNat

end

end A152719.P9874946605499210749

namespace A152719

/-- `A072727(A131816(n))` -/
def P9874946605499210749.Spec : Prop :=
  ∀ n, P9874946605499210749.a n = A152719 n

end A152719

/-!
# A152723: In binary, count of least frequent bit of n.

The programs for A152723, the canonical program `A152723.P1073179501699945785` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152723 has offset 1).

The definition of A152723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152723.P13586728415219697986

`A113473(n+1)-A152724(n+1)`
-/

namespace A152723.P13586728415219697986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (n + 1) - A152724 (n + 1)

end

end A152723.P13586728415219697986

namespace A152723

/-- `A113473(n+1)-A152724(n+1)` -/
def P13586728415219697986.Spec : Prop :=
  ∀ n, P13586728415219697986.a n = A152723 (n + 1)

end A152723

/-! ## A152723.P1073179501699945785

`A023416(gcd(2^A023416(n+1), A001316(n+1)))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A152723

/-- `A023416(gcd(2^A023416(n+1), A001316(n+1)))` -/
def P1073179501699945785.Spec : Prop :=
  ∀ n, P1073179501699945785.a n = A152723 (n + 1)

theorem P1073179501699945785.correct : P1073179501699945785.Spec := by
  intro n
  simp only [A152723, Nat.add_sub_cancel]

end A152723

/-! ## A152723.P18171247315058137217

`A000120(n+1)+A023416(n+1)-A152724(n+1)`
-/

namespace A152723.P18171247315058137217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) + (A023416 (n + 1) - A152724 (n + 1))

end

end A152723.P18171247315058137217

namespace A152723

/-- `A000120(n+1)+A023416(n+1)-A152724(n+1)` -/
def P18171247315058137217.Spec : Prop :=
  ∀ n, P18171247315058137217.a n = A152723 (n + 1)

end A152723

/-! ## A152723.P3251335701087153823

`val(A176893(n+1), 6)`
-/

namespace A152723.P3251335701087153823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A176893 (n + 1)).toNat 6

end

end A152723.P3251335701087153823

namespace A152723

/-- `val(A176893(n+1), 6)` -/
def P3251335701087153823.Spec : Prop :=
  ∀ n, (P3251335701087153823.a n : ℤ) = A152723 (n + 1)

end A152723

/-! ## A152723.P10187940518107060757

`A070939(n+1)-A152724(n+1)`
-/

namespace A152723.P10187940518107060757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - A152724 (n + 1)

end

end A152723.P10187940518107060757

namespace A152723

/-- `A070939(n+1)-A152724(n+1)` -/
def P10187940518107060757.Spec : Prop :=
  ∀ n, P10187940518107060757.a n = A152723 (n + 1)

end A152723

/-! ## A152723.P9720607059180141350

`A029837(n+2)-A152724(n+1)`
-/

namespace A152723.P9720607059180141350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 2) - A152724 (n + 1)

end

end A152723.P9720607059180141350

namespace A152723

/-- `A029837(n+2)-A152724(n+1)` -/
def P9720607059180141350.Spec : Prop :=
  ∀ n, P9720607059180141350.a n = A152723 (n + 1)

end A152723

/-! ## A152723.P2527106197548773994

`A048881(A115378(n+1)+A038573(n+1))`
-/

namespace A152723.P2527106197548773994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A115378 (n + 1) + A038573 (n + 1)).toNat

end

end A152723.P2527106197548773994

namespace A152723

/-- `A048881(A115378(n+1)+A038573(n+1))` -/
def P2527106197548773994.Spec : Prop :=
  ∀ n, P2527106197548773994.a n = A152723 (n + 1)

end A152723

/-! ## A152723.P11620345802184129250

`A000120(A080100(n+1)+A038573(n+1))-1`
-/

namespace A152723.P11620345802184129250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A080100 (n + 1) + A038573 (n + 1)).toNat - 1

end

end A152723.P11620345802184129250

namespace A152723

/-- `A000120(A080100(n+1)+A038573(n+1))-1` -/
def P11620345802184129250.Spec : Prop :=
  ∀ n, P11620345802184129250.a n = A152723 (n + 1)

end A152723

/-! ## A152723.P16889292579615508136

`A037870(A073138(n+1))`
-/

namespace A152723.P16889292579615508136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037870 (A073138 (n + 1)).toNat

end

end A152723.P16889292579615508136

namespace A152723

/-- `A037870(A073138(n+1))` -/
def P16889292579615508136.Spec : Prop :=
  ∀ n, P16889292579615508136.a n = A152723 (n + 1)

end A152723

/-! ## A152723.P14393086031233923049

`A122841(A176893(n+1))`
-/

namespace A152723.P14393086031233923049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (A176893 (n + 1)).toNat

end

end A152723.P14393086031233923049

namespace A152723

/-- `A122841(A176893(n+1))` -/
def P14393086031233923049.Spec : Prop :=
  ∀ n, P14393086031233923049.a n = A152723 (n + 1)

end A152723

/-! ## A152723.P3060512115310407052

`A139354(A147992(n+1))`
-/

namespace A152723.P3060512115310407052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139354 (A147992 (n + 1)).toNat

end

end A152723.P3060512115310407052

namespace A152723

/-- `A139354(A147992(n+1))` -/
def P3060512115310407052.Spec : Prop :=
  ∀ n, P3060512115310407052.a n = A152723 (n + 1)

end A152723

/-! ## A152723.P1680242692147691386

`A139354(A374625(n+1))`
-/

namespace A152723.P1680242692147691386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139354 (A374625 (n + 1)).toNat

end

end A152723.P1680242692147691386

namespace A152723

/-- `A139354(A374625(n+1))` -/
def P1680242692147691386.Spec : Prop :=
  ∀ n, P1680242692147691386.a n = A152723 (n + 1)

end A152723

/-! ## A152723.P8553770934362756404

`A007814(or(A176893(n+1), A246037(n+1)))`
-/

namespace A152723.P8553770934362756404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.lor (A176893 (n + 1)) (A246037 (n + 1))).toNat

end

end A152723.P8553770934362756404

namespace A152723

/-- `A007814(or(A176893(n+1), A246037(n+1)))` -/
def P8553770934362756404.Spec : Prop :=
  ∀ n, P8553770934362756404.a n = A152723 (n + 1)

end A152723

/-! ## A152723.P16323804179821957848

`A023416((n+1)*A001316(n+1))-A152724(n+1)`
-/

namespace A152723.P16323804179821957848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 ((n + 1 : ℤ) * A001316 (n + 1)).toNat - A152724 (n + 1)

end

end A152723.P16323804179821957848

namespace A152723

/-- `A023416((n+1)*A001316(n+1))-A152724(n+1)` -/
def P16323804179821957848.Spec : Prop :=
  ∀ n, P16323804179821957848.a n = A152723 (n + 1)

end A152723

/-!
# A152724: In binary, count of most frequent bit of n.

The programs for A152724, the canonical program `A152724.P5282381026792283561` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152724 has offset 1).

The definition of A152724 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152723, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152724.P5282381026792283561

`A070939(n+1)-A152723(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A152724

/-- `A070939(n+1)-A152723(n+1)` -/
def P5282381026792283561.Spec : Prop :=
  ∀ n, P5282381026792283561.a n = A152724 (n + 1)

theorem P5282381026792283561.correct : P5282381026792283561.Spec := by
  intro n
  simp only [A152724, Nat.add_sub_cancel]

end A152724

/-! ## A152724.P3154263588821775783

`A000120(n+1)+A023416(n+1)-A152723(n+1)`
-/

namespace A152724.P3154263588821775783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) + (A023416 (n + 1) - A152723 (n + 1))

end

end A152724.P3154263588821775783

namespace A152724

/-- `A000120(n+1)+A023416(n+1)-A152723(n+1)` -/
def P3154263588821775783.Spec : Prop :=
  ∀ n, P3154263588821775783.a n = A152724 (n + 1)

end A152724

/-! ## A152724.P3786306404034918066

`A000120(n+1)+A080791(n+1)-A152723(n+1)`
-/

namespace A152724.P3786306404034918066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) + (A080791 (n + 1) - A152723 (n + 1))

end

end A152724.P3786306404034918066

namespace A152724

/-- `A000120(n+1)+A080791(n+1)-A152723(n+1)` -/
def P3786306404034918066.Spec : Prop :=
  ∀ n, P3786306404034918066.a n = A152724 (n + 1)

end A152724

/-! ## A152724.P14010764496819439488

`A000523(A073137(n+1)-A073139(n+1)+1)`
-/

namespace A152724.P14010764496819439488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A073137 (n + 1) - A073139 (n + 1) + 1).toNat

end

end A152724.P14010764496819439488

namespace A152724

/-- `A000523(A073137(n+1)-A073139(n+1)+1)` -/
def P14010764496819439488.Spec : Prop :=
  ∀ n, P14010764496819439488.a n = A152724 (n + 1)

end A152724

/-! ## A152724.P14461030531261917510

`A043276(A073138(n+1))`
-/

namespace A152724.P14461030531261917510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A073138 (n + 1)).toNat

end

end A152724.P14461030531261917510

namespace A152724

/-- `A043276(A073138(n+1))` -/
def P14461030531261917510.Spec : Prop :=
  ∀ n, P14461030531261917510.a n = A152724 (n + 1)

end A152724

/-! ## A152724.P7225577746925071886

`A000120(A073138(n+1)-A038573(n+1)%(n+1))`
-/

namespace A152724.P7225577746925071886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A073138 (n + 1) - Int.tmod (A038573 (n + 1)) (n + 1 : ℤ)).toNat

end

end A152724.P7225577746925071886

namespace A152724

/-- `A000120(A073138(n+1)-A038573(n+1)%(n+1))` -/
def P7225577746925071886.Spec : Prop :=
  ∀ n, P7225577746925071886.a n = A152724 (n + 1)

end A152724

/-! ## A152724.P5275722641082785662

`A051903(A176893(n+1))`
-/

namespace A152724.P5275722641082785662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A176893 (n + 1)).toNat

end

end A152724.P5275722641082785662

namespace A152724

/-- `A051903(A176893(n+1))` -/
def P5275722641082785662.Spec : Prop :=
  ∀ n, P5275722641082785662.a n = A152724 (n + 1)

end A152724

/-! ## A152724.P2145219580237091888

`A139355(A147992(n+1))`
-/

namespace A152724.P2145219580237091888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139355 (A147992 (n + 1)).toNat

end

end A152724.P2145219580237091888

namespace A152724

/-- `A139355(A147992(n+1))` -/
def P2145219580237091888.Spec : Prop :=
  ∀ n, P2145219580237091888.a n = A152724 (n + 1)

end A152724

/-! ## A152724.P12778006562221231549

`A139355(A374625(n+1))`
-/

namespace A152724.P12778006562221231549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139355 (A374625 (n + 1)).toNat

end

end A152724.P12778006562221231549

namespace A152724

/-- `A139355(A374625(n+1))` -/
def P12778006562221231549.Spec : Prop :=
  ∀ n, P12778006562221231549.a n = A152724 (n + 1)

end A152724

/-! ## A152724.P7671132047126346985

`A023416(A179857(n+1)+n+2)`
-/

namespace A152724.P7671132047126346985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A179857 (n + 1) + (n + 2 : ℤ)).toNat

end

end A152724.P7671132047126346985

namespace A152724

/-- `A023416(A179857(n+1)+n+2)` -/
def P7671132047126346985.Spec : Prop :=
  ∀ n, P7671132047126346985.a n = A152724 (n + 1)

end A152724

/-!
# A152725: a(n) = n*(n+1)*(n^4 + 2*n^3 - 2*n^2 - 3*n + 3)/2.

The programs for A152725, the canonical program `A152725.P16975564637981443221` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152725 has offset 0).

The definition of A152725 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152725.P16975564637981443221

`n*(n+1)*(n^4+2*n^3-2*n²-3*n+3)/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152725

/-- `n*(n+1)*(n^4+2*n^3-2*n²-3*n+3)/2` -/
def P16975564637981443221.Spec : Prop :=
  ∀ n, P16975564637981443221.a n = (A152725 n : ℚ)

end A152725

/-! ## A152725.P8617067637644275645

`n^6-a(n-1)` with `a(0)=0`
-/

namespace A152725.P8617067637644275645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n ^ 6 : ℤ) - a (n - 1)

end

end A152725.P8617067637644275645

namespace A152725

/-- `n^6-a(n-1)` -/
def P8617067637644275645.Spec : Prop :=
  ∀ n, P8617067637644275645.a n = A152725 n

end A152725

/-! ## A152725.P16812593897766495294

`abs(a(n-1)-(n*n²)²)` with `a(0)=0`
-/

namespace A152725.P16812593897766495294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |a (n - 1) - ((n * n ^ 2) ^ 2 : ℤ)|

end

end A152725.P16812593897766495294

namespace A152725

/-- `abs(a(n-1)-(n*n²)²)` -/
def P16812593897766495294.Spec : Prop :=
  ∀ n, P16812593897766495294.a n = A152725 n

end A152725

/-! ## A152725.P14482562118725474485

`floor((n*n²)²-a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A152725.P14482562118725474485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n * n ^ 2) ^ 2 : ℤ) - a (n - 1)

end

end A152725.P14482562118725474485

namespace A152725

/-- `floor((n*n²)²-a(n-1))` -/
def P14482562118725474485.Spec : Prop :=
  ∀ n, P14482562118725474485.a n = A152725 n

end A152725

/-! ## A152725.P1047811262258955705

`1-(A024004(n)+a(n-1))` with `a(0)=0`
-/

namespace A152725.P1047811262258955705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (A024004 n + a (n - 1))

end

end A152725.P1047811262258955705

namespace A152725

/-- `1-(A024004(n)+a(n-1))` -/
def P1047811262258955705.Spec : Prop :=
  ∀ n, P1047811262258955705.a n = A152725 n

end A152725

/-! ## A152725.P9031001450261516900

`A131472(n)-(a(n-1)+n)` with `a(0)=0`
-/

namespace A152725.P9031001450261516900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A131472 n - (a (n - 1) + (n : ℤ))

end

end A152725.P9031001450261516900

namespace A152725

/-- `A131472(n)-(a(n-1)+n)` -/
def P9031001450261516900.Spec : Prop :=
  ∀ n, P9031001450261516900.a n = A152725 n

end A152725

/-! ## A152725.P10852121385766822290

`A131473(n)-a(n-1)+n` with `a(0)=0`
-/

namespace A152725.P10852121385766822290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A131473 n - a (n - 1) + (n : ℤ)

end

end A152725.P10852121385766822290

namespace A152725

/-- `A131473(n)-a(n-1)+n` -/
def P10852121385766822290.Spec : Prop :=
  ∀ n, P10852121385766822290.a n = A152725 n

end A152725

/-! ## A152725.P7937624186442329423

`abs(A000578(n)²-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A152725.P7937624186442329423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  |A000578 n ^ 2 - a (n - 1)|

end

end A152725.P7937624186442329423

namespace A152725

/-- `abs(A000578(n)²-a(n-1))` -/
def P7937624186442329423.Spec : Prop :=
  ∀ n, P7937624186442329423.a n = A152725 n

end A152725

/-! ## A152725.P5988209979993140108

`A187620(n)-A033999(n)`
-/

namespace A152725.P5988209979993140108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187620 n - A033999 n

end

end A152725.P5988209979993140108

namespace A152725

/-- `A187620(n)-A033999(n)` -/
def P5988209979993140108.Spec : Prop :=
  ∀ n, P5988209979993140108.a n = A152725 n

end A152725

/-! ## A152725.P18304421630893880936

`A231305(n)-A231305(A004273(n)-n)`
-/

namespace A152725.P18304421630893880936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231305 n - A231305 (A004273 n - (n : ℤ)).toNat

end

end A152725.P18304421630893880936

namespace A152725

/-- `A231305(n)-A231305(A004273(n)-n)` -/
def P18304421630893880936.Spec : Prop :=
  ∀ n, P18304421630893880936.a n = A152725 n

end A152725

/-! ## A152725.P15937787020329992614

`A187620(n)+A049347(A004793(n+1))`
-/

namespace A152725.P15937787020329992614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187620 n + A049347 (A004793 (n + 1)).toNat

end

end A152725.P15937787020329992614

namespace A152725

/-- `A187620(n)+A049347(A004793(n+1))` -/
def P15937787020329992614.Spec : Prop :=
  ∀ n, P15937787020329992614.a n = A152725 n

end A152725

/-! ## A152725.P3026580632718335849

`2*A212133(A000217(n))-A000217(n)`
-/

namespace A152725.P3026580632718335849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212133 (A000217 n).toNat - A000217 n

end

end A152725.P3026580632718335849

namespace A152725

/-- `2*A212133(A000217(n))-A000217(n)` -/
def P3026580632718335849.Spec : Prop :=
  ∀ n, P3026580632718335849.a n = A152725 n

end A152725

/-! ## A152725.P10184344382105906079

`A036486(A004273(∑[n]))`
-/

namespace A152725.P10184344382105906079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036486 (A004273 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A152725.P10184344382105906079

namespace A152725

/-- `A036486(A004273(∑[n]))` -/
def P10184344382105906079.Spec : Prop :=
  ∀ n, P10184344382105906079.a n = A152725 n

end A152725

/-! ## A152725.P13515838895724078894

`A000217(n)+A007531(A002378(n))/2`
-/

namespace A152725.P13515838895724078894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 n : ℚ) + (A007531 (A002378 n).toNat : ℚ) / 2

end

end A152725.P13515838895724078894

namespace A152725

/-- `A000217(n)+A007531(A002378(n))/2` -/
def P13515838895724078894.Spec : Prop :=
  ∀ n, P13515838895724078894.a n = (A152725 n : ℚ)

end A152725

/-!
# A152726: a(n) = n^7 - (n-1)^7 + (n-2)^7 - ... + ((-1)^n)*0^7.

The programs for A152726, the canonical program `A152726.P8949207397735379088` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152726 has offset 0).

The definition of A152726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152726.P8949207397735379088

`n^7-a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152726

/-- `n^7-a(n-1)` -/
def P8949207397735379088.Spec : Prop :=
  ∀ n, P8949207397735379088.a n = A152726 n

theorem P8949207397735379088.correct : P8949207397735379088.Spec := by
  intro n
  simp only [A152726]

end A152726

/-! ## A152726.P10551360902765460266

`abs(∑[A038608(n)^7])`
-/

namespace A152726.P10551360902765460266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A152726.P10551360902765460266

namespace A152726

/-- `abs(∑[A038608(n)^7])` -/
def P10551360902765460266.Spec : Prop :=
  ∀ n, P10551360902765460266.a n = A152726 n

end A152726

/-! ## A152726.P14358285963469558150

`abs(∑[A181983(n)^7])`
-/

namespace A152726.P14358285963469558150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 n ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A152726.P14358285963469558150

namespace A152726

/-- `abs(∑[A181983(n)^7])` -/
def P14358285963469558150.Spec : Prop :=
  ∀ n, P14358285963469558150.a n = A152726 n

end A152726

/-! ## A152726.P8110771062795395673

`1-(A024005(n)+a(n-1))` with `a(0)=0`
-/

namespace A152726.P8110771062795395673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (A024005 n + a (n - 1))

end

end A152726.P8110771062795395673

namespace A152726

/-- `1-(A024005(n)+a(n-1))` -/
def P8110771062795395673.Spec : Prop :=
  ∀ n, P8110771062795395673.a n = A152726 n

end A152726

/-! ## A152726.P12561793795827468338

`A133499(n)-a(n-1)+n` with `a(0)=0`
-/

namespace A152726.P12561793795827468338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A133499 n - a (n - 1) + (n : ℤ)

end

end A152726.P12561793795827468338

namespace A152726

/-- `A133499(n)-a(n-1)+n` -/
def P12561793795827468338.Spec : Prop :=
  ∀ n, P12561793795827468338.a n = A152726 n

end A152726

/-! ## A152726.P16824679038651564333

`A190578(n)-(a(n-1)+n)` with `a(0)=0`
-/

namespace A152726.P16824679038651564333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A190578 n - (a (n - 1) + (n : ℤ))

end

end A152726.P16824679038651564333

namespace A152726

/-- `A190578(n)-(a(n-1)+n)` -/
def P16824679038651564333.Spec : Prop :=
  ∀ n, P16824679038651564333.a n = A152726 n

end A152726

/-! ## A152726.P13788807513690303593

`Δ[A231306(A004273(n)-n)]`
-/

namespace A152726.P13788807513690303593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231306 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152726.P13788807513690303593

namespace A152726

/-- `Δ[A231306(A004273(n)-n)]` -/
def P13788807513690303593.Spec : Prop :=
  ∀ n, P13788807513690303593.a n = A152726 n

end A152726

/-! ## A152726.P4450660622186253603

`A231306(n)-A231306(A004273(n)-n)`
-/

namespace A152726.P4450660622186253603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231306 n - A231306 (A004273 n - (n : ℤ)).toNat

end

end A152726.P4450660622186253603

namespace A152726

/-- `A231306(n)-A231306(A004273(n)-n)` -/
def P4450660622186253603.Spec : Prop :=
  ∀ n, P4450660622186253603.a n = A152726 n

end A152726

/-!
# A152727: Smallest positive non-divisor of the n-th Fibonacci number (A000045).

The programs for A152727, there is no canonical definition to state claims against.
-/

/-! ## A152727.P14226873610281359114

`A233284(n+1)+1`
-/

namespace A152727.P14226873610281359114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233284 (n + 1) + 1

end

end A152727.P14226873610281359114

/-! ## A152727.P14366161775908040355

`A000010(A129322(∑[n]+2))+1`
-/

namespace A152727.P14366161775908040355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A129322 (∑ j ∈ Finset.range (n + 1), f1 j + 2)).toNat + 1

end

end A152727.P14366161775908040355

/-! ## A152727.P7896438934098682006

`A233285(n+1)+A057427(A063375(n+1))`
-/

namespace A152727.P7896438934098682006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233285 (n + 1) + A057427 (A063375 (n + 1)).toNat

end

end A152727.P7896438934098682006

/-! ## A152727.P7935442259875142436

`A285574(A073575(n+1))+A233285(n+1)`
-/

namespace A152727.P7935442259875142436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285574 (A073575 (n + 1)).toNat + A233285 (n + 1)

end

end A152727.P7935442259875142436

/-! ## A152727.P9917769881870236925

`A353627(A114717(n+1))+A233285(n+1)`
-/

namespace A152727.P9917769881870236925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353627 (A114717 (n + 1)).toNat + A233285 (n + 1)

end

end A152727.P9917769881870236925

/-! ## A152727.P402276633477657674

`A233285(n+1)+A000190(A046732(n+1))`
-/

namespace A152727.P402276633477657674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233285 (n + 1) + A000190 (A046732 (n + 1)).toNat

end

end A152727.P402276633477657674

/-! ## A152727.P59578910173345292

`A233285(A094104(n+1))+A233285(n+1)`
-/

namespace A152727.P59578910173345292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233285 (A094104 (n + 1)).toNat + A233285 (n + 1)

end

end A152727.P59578910173345292

/-! ## A152727.P13440333264207097138

`A233285(n+1)+A233285(A342253(n+1))`
-/

namespace A152727.P13440333264207097138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233285 (n + 1) + A233285 (A342253 (n + 1)).toNat

end

end A152727.P13440333264207097138

/-! ## A152727.P17579544440140569885

`A233285(n+1)+A233285(n²+1)`
-/

namespace A152727.P17579544440140569885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233285 (n + 1) + A233285 (n ^ 2 + 1)

end

end A152727.P17579544440140569885

/-! ## A152727.P14146598949251746674

`A233285(n+1)+A071625(A156979(2*(n+2)))`
-/

namespace A152727.P14146598949251746674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233285 (n + 1) + A071625 (A156979 (2 * (n + 2))).toNat

end

end A152727.P14146598949251746674

/-! ## A152727.P10270474060383517894

`A233285(n+1)+A001221(A233282(3*n+5))`
-/

namespace A152727.P10270474060383517894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233285 (n + 1) + A001221 (A233282 (3 * n + 5)).toNat

end

end A152727.P10270474060383517894

/-! ## A152727.P5545899250357956

`A053669(gcd(A000045(n+1), A004009(n)))`
-/

namespace A152727.P5545899250357956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (Int.gcd (A000045 (n + 1)) (A004009 n))

end

end A152727.P5545899250357956

/-! ## A152727.P14794216589263065261

`A233285(n+1)+A057427(A014574(2*n+1))`
-/

namespace A152727.P14794216589263065261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233285 (n + 1) + A057427 (A014574 (2 * n + 1)).toNat

end

end A152727.P14794216589263065261

/-! ## A152727.P6001289081946046853

`A347395(A014752(3*n+1))+A233285(n+1)`
-/

namespace A152727.P6001289081946046853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347395 (A014752 (3 * n + 1)).toNat + A233285 (n + 1)

end

end A152727.P6001289081946046853

/-! ## A152727.P843858075655759538

`A233285(n+1)+and(1, A151142(n))`
-/

namespace A152727.P843858075655759538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233285 (n + 1) + Int.land 1 (A151142 n)

end

end A152727.P843858075655759538

/-!
# A152728: a(n) + a(n+1) + a(n+2) = n^3.

The programs for A152728, the canonical program `A152728.P11436726953637060967` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152728 has offset 0).

The definition of A152728 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152728.P11436726953637060967

`ceil((n^3-3*n²+n)/3)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152728

/-- `ceil((n^3-3*n²+n)/3)` -/
def P11436726953637060967.Spec : Prop :=
  ∀ n, P11436726953637060967.a n = A152728 n

theorem P11436726953637060967.correct : P11436726953637060967.Spec := by
  intro n
  simp only [A152728]

end A152728

/-! ## A152728.P4440235102625396238

`((n-1)*(n²-2*n-1)-A057078(n))/3`
-/

namespace A152728.P4440235102625396238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) * ((n ^ 2 : ℤ) - (2 * n : ℤ) - 1) - A057078 n : ℚ) / 3

end

end A152728.P4440235102625396238

namespace A152728

/-- `((n-1)*(n²-2*n-1)-A057078(n))/3` -/
def P4440235102625396238.Spec : Prop :=
  ∀ n, P4440235102625396238.a n = (A152728 n : ℚ)

end A152728

/-! ## A152728.P12331888358694059633

`round(Δ[(C(n, 2)-n)²]/3)`
-/

namespace A152728.P12331888358694059633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose n 2 : ℤ) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / 3)

end

end A152728.P12331888358694059633

namespace A152728

/-- `round(Δ[(C(n, 2)-n)²]/3)` -/
def P12331888358694059633.Spec : Prop :=
  ∀ n, P12331888358694059633.a n = A152728 n

end A152728

/-! ## A152728.P14077179673625710056

`A007290(n)-floor(n/3)`
-/

namespace A152728.P14077179673625710056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 n - ⌊(n : ℚ) / 3⌋

end

end A152728.P14077179673625710056

namespace A152728

/-- `A007290(n)-floor(n/3)` -/
def P14077179673625710056.Spec : Prop :=
  ∀ n, P14077179673625710056.a n = A152728 n

end A152728

/-! ## A152728.P18046346656632711014

`∑[A109340(n)-n]+n`
-/

namespace A152728.P18046346656632711014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109340 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A152728.P18046346656632711014

namespace A152728

/-- `∑[A109340(n)-n]+n` -/
def P18046346656632711014.Spec : Prop :=
  ∀ n, P18046346656632711014.a n = A152728 n

end A152728

/-! ## A152728.P593806504556941199

`round(Δ[(n-A161680(n))²]/3)`
-/

namespace A152728.P593806504556941199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A161680 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / 3)

end

end A152728.P593806504556941199

namespace A152728

/-- `round(Δ[(n-A161680(n))²]/3)` -/
def P593806504556941199.Spec : Prop :=
  ∀ n, P593806504556941199.a n = A152728 n

end A152728

/-! ## A152728.P8367911751617437508

`A349975(n)+A212254(n)`
-/

namespace A152728.P8367911751617437508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349975 n + A212254 n

end

end A152728.P8367911751617437508

namespace A152728

/-- `A349975(n)+A212254(n)` -/
def P8367911751617437508.Spec : Prop :=
  ∀ n, P8367911751617437508.a n = A152728 n

end A152728

/-! ## A152728.P17403236832373906228

`A084990(n)-A264938(n)`
-/

namespace A152728.P17403236832373906228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084990 n - A264938 n

end

end A152728.P17403236832373906228

namespace A152728

/-- `A084990(n)-A264938(n)` -/
def P17403236832373906228.Spec : Prop :=
  ∀ n, P17403236832373906228.a n = A152728 n

end A152728

/-! ## A152728.P11514109826478486064

`A006527(n)-A389316(n)`
-/

namespace A152728.P11514109826478486064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 n - A389316 n

end

end A152728.P11514109826478486064

namespace A152728

/-- `A006527(n)-A389316(n)` -/
def P11514109826478486064.Spec : Prop :=
  ∀ n, P11514109826478486064.a n = A152728 n

end A152728

/-! ## A152728.P18246109895165518451

`A005900(n)-A393346(n)`
-/

namespace A152728.P18246109895165518451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n - A393346 n

end

end A152728.P18246109895165518451

namespace A152728

/-- `A005900(n)-A393346(n)` -/
def P18246109895165518451.Spec : Prop :=
  ∀ n, P18246109895165518451.a n = A152728 n

end A152728

/-! ## A152728.P11379819167129720781

`A046127(n)-A047349(n+1)`
-/

namespace A152728.P11379819167129720781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046127 n - A047349 (n + 1)

end

end A152728.P11379819167129720781

namespace A152728

/-- `A046127(n)-A047349(n+1)` -/
def P11379819167129720781.Spec : Prop :=
  ∀ n, P11379819167129720781.a n = A152728 n

end A152728

/-! ## A152728.P4956535648509583188

`A006527(n)-(A002264(n)+n²)`
-/

namespace A152728.P4956535648509583188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 n - (A002264 n + (n ^ 2 : ℤ))

end

end A152728.P4956535648509583188

namespace A152728

/-- `A006527(n)-(A002264(n)+n²)` -/
def P4956535648509583188.Spec : Prop :=
  ∀ n, P4956535648509583188.a n = A152728 n

end A152728

/-! ## A152728.P14148513036619054591

`A086514(n+1)-A042968(n+1)`
-/

namespace A152728.P14148513036619054591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086514 (n + 1) - A042968 (n + 1)

end

end A152728.P14148513036619054591

namespace A152728

/-- `A086514(n+1)-A042968(n+1)` -/
def P14148513036619054591.Spec : Prop :=
  ∀ n, P14148513036619054591.a n = A152728 n

end A152728

/-! ## A152728.P16824237370705178500

`Δ[2*A000332(n)]-A002264(n)`
-/

namespace A152728.P16824237370705178500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002264 n

end

end A152728.P16824237370705178500

namespace A152728

/-- `Δ[2*A000332(n)]-A002264(n)` -/
def P16824237370705178500.Spec : Prop :=
  ∀ n, P16824237370705178500.a n = A152728 n

end A152728

/-! ## A152728.P4241336018162416027

`A000212(n+1)+A007290(n+1)-A000212(2*n)`
-/

namespace A152728.P4241336018162416027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (n + 1) + (A007290 (n + 1) - A000212 (2 * n))

end

end A152728.P4241336018162416027

namespace A152728

/-- `A000212(n+1)+A007290(n+1)-A000212(2*n)` -/
def P4241336018162416027.Spec : Prop :=
  ∀ n, P4241336018162416027.a n = A152728 n

end A152728

/-! ## A152728.P7517160487918233117

`Δ[A174709((n-1)*(n-2))]`
-/

namespace A152728.P7517160487918233117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174709 (((n : ℤ) - 1) * ((n : ℤ) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152728.P7517160487918233117

namespace A152728

/-- `Δ[A174709((n-1)*(n-2))]` -/
def P7517160487918233117.Spec : Prop :=
  ∀ n, P7517160487918233117.a n = A152728 n

end A152728

/-! ## A152728.P2565126965186505825

`Δ[A211540((n-1)*(n-2))]`
-/

namespace A152728.P2565126965186505825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (((n : ℤ) - 1) * ((n : ℤ) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152728.P2565126965186505825

namespace A152728

/-- `Δ[A211540((n-1)*(n-2))]` -/
def P2565126965186505825.Spec : Prop :=
  ∀ n, P2565126965186505825.a n = A152728 n

end A152728

/-! ## A152728.P15024907668891837757

`Δ[A325695((2-n)²+n-1)]`
-/

namespace A152728.P15024907668891837757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325695 ((2 - (n : ℤ)) ^ 2 + ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152728.P15024907668891837757

namespace A152728

/-- `Δ[A325695((2-n)²+n-1)]` -/
def P15024907668891837757.Spec : Prop :=
  ∀ n, P15024907668891837757.a n = A152728 n

end A152728

/-!
# A152729: a(n) = (n-2)^4 - a(n-1) - a(n-2), with a(1) = a(2) = 0.

The programs for A152729, the canonical program `A152729.P10060424198029034144` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152729 has offset 1).

The definition of A152729 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)^4-a(n-1)-a(n-2)` (program `A152729.P10060424198029034144`, by `A152729.P10060424198029034144.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152729.P10060424198029034144

`(n-1)^4-a(n-1)-a(n-2)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152729

/-- `(n-1)^4-a(n-1)-a(n-2)` -/
def P10060424198029034144.Spec : Prop :=
  ∀ n, P10060424198029034144.a n = A152729 (n + 1)

theorem P10060424198029034144.correct : P10060424198029034144.Spec := by
  intro n
  simp only [A152729, Nat.add_sub_cancel]

end A152729

/-! ## A152729.P429769844390748278

`Δ[a(n-3)+(2-n)²²]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A152729.P429769844390748278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  f1 (n - 3) + ((2 - (n : ℤ)) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152729.P429769844390748278

namespace A152729

/-- `Δ[a(n-3)+(2-n)²²]` -/
def P429769844390748278.Spec : Prop :=
  ∀ n, P429769844390748278.a n = A152729 (n + 1)

end A152729

/-! ## A152729.P16679496751171871803

`(1-n)²²-(a(n-1)+a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A152729.P16679496751171871803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ((1 - (n : ℤ)) ^ 2) ^ 2 - (a (n - 1) + a (n - 2))

end

end A152729.P16679496751171871803

namespace A152729

/-- `(1-n)²²-(a(n-1)+a(n-2))` -/
def P16679496751171871803.Spec : Prop :=
  ∀ n, P16679496751171871803.a n = A152729 (n + 1)

theorem P16679496751171871803.correct : P16679496751171871803.Spec := by
  intro n
  simp only [A152729, Nat.add_sub_cancel, A152729.P16679496751171871803.a, A152729.P10060424198029034144.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A152729

/-! ## A152729.P11082585215800747887

`A033596(n)/3-A079978(n)`
-/

namespace A152729.P11082585215800747887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033596 n : ℚ) / 3 - (A079978 n : ℚ)

end

end A152729.P11082585215800747887

namespace A152729

/-- `A033596(n)/3-A079978(n)` -/
def P11082585215800747887.Spec : Prop :=
  ∀ n, P11082585215800747887.a n = (A152729 (n + 1) : ℚ)

end A152729

/-! ## A152729.P16600717300464231037

`2*A008911(n)-3*A000212(n)`
-/

namespace A152729.P16600717300464231037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008911 n - 3 * A000212 n

end

end A152729.P16600717300464231037

namespace A152729

/-- `2*A008911(n)-3*A000212(n)` -/
def P16600717300464231037.Spec : Prop :=
  ∀ n, P16600717300464231037.a n = A152729 (n + 1)

end A152729

/-! ## A152729.P14570021644449284789

`A010001(n)%A115285(n)*A000212(n)`
-/

namespace A152729.P14570021644449284789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010001 n) (A115285 n) * A000212 n

end

end A152729.P14570021644449284789

namespace A152729

/-- `A010001(n)%A115285(n)*A000212(n)` -/
def P14570021644449284789.Spec : Prop :=
  ∀ n, P14570021644449284789.a n = A152729 (n + 1)

end A152729

/-! ## A152729.P9964028691677104447

`A008810(n²)-A256320(n)`
-/

namespace A152729.P9964028691677104447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 (n ^ 2) - A256320 n

end

end A152729.P9964028691677104447

namespace A152729

/-- `A008810(n²)-A256320(n)` -/
def P9964028691677104447.Spec : Prop :=
  ∀ n, P9964028691677104447.a n = A152729 (n + 1)

end A152729

/-! ## A152729.P13120242162318879431

`A008810(n²)-A000212(2*n)`
-/

namespace A152729.P13120242162318879431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 (n ^ 2) - A000212 (2 * n)

end

end A152729.P13120242162318879431

namespace A152729

/-- `A008810(n²)-A000212(2*n)` -/
def P13120242162318879431.Spec : Prop :=
  ∀ n, P13120242162318879431.a n = A152729 (n + 1)

end A152729

/-! ## A152729.P15145714423813333025

`A008810(n²)-A042965(n²+1)`
-/

namespace A152729.P15145714423813333025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 (n ^ 2) - A042965 (n ^ 2 + 1)

end

end A152729.P15145714423813333025

namespace A152729

/-- `A008810(n²)-A042965(n²+1)` -/
def P15145714423813333025.Spec : Prop :=
  ∀ n, P15145714423813333025.a n = A152729 (n + 1)

end A152729

/-! ## A152729.P3466738464316901365

`A000212(n²)-A008586(A000212(n))`
-/

namespace A152729.P3466738464316901365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (n ^ 2) - A008586 (A000212 n).toNat

end

end A152729.P3466738464316901365

namespace A152729

/-- `A000212(n²)-A008586(A000212(n))` -/
def P3466738464316901365.Spec : Prop :=
  ∀ n, P3466738464316901365.a n = A152729 (n + 1)

end A152729

/-!
# A152730: a(n) + a(n+1) + a(n+2) = n^5, with a(1) = a(2) = 0.

The programs for A152730, there is no canonical definition to state claims against.
-/

/-! ## A152730.P12230036697954061520

`A176744(C(comp[2*(n+1)], 3))`
-/

namespace A152730.P12230036697954061520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176744 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 3)

end

end A152730.P12230036697954061520

/-!
# A152731: a(n) + a(n+1) + a(n+2) = n^6, a(1)=a(2)=0.

The programs for A152731, the canonical program `A152731.P4275279475618582327` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152731 has offset 1).

The definition of A152731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152731.P4275279475618582327

`(1-n)^6-(a(n-1)+a(n-2))` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152731

/-- `(1-n)^6-(a(n-1)+a(n-2))` -/
def P4275279475618582327.Spec : Prop :=
  ∀ n, P4275279475618582327.a n = A152731 (n + 1)

theorem P4275279475618582327.correct : P4275279475618582327.Spec := by
  intro n
  simp only [A152731, Nat.add_sub_cancel]

end A152731

/-! ## A152731.P5387749707275262805

`(1-n)^6-a(n-1)-a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A152731.P5387749707275262805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (1 - (n : ℤ)) ^ 6 - a (n - 1) - a (n - 2)

end

end A152731.P5387749707275262805

namespace A152731

/-- `(1-n)^6-a(n-1)-a(n-2)` -/
def P5387749707275262805.Spec : Prop :=
  ∀ n, P5387749707275262805.a n = A152731 (n + 1)

theorem P5387749707275262805.correct : P5387749707275262805.Spec := by
  intro n
  simp only [A152731, Nat.add_sub_cancel, A152731.P5387749707275262805.a, A152731.P4275279475618582327.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A152731

/-!
# A152732: a(n) + a(n+1) + a(n+2) = 2^n.

The programs for A152732, the canonical program `A152732.P9395646007789855510` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152732 has offset 1).

The definition of A152732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152732.P6919100140611945261

`ogf(-2x^2/(-1+x+x^2+2x^3))`
-/

namespace A152732.P6919100140611945261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2] [1, -1, -1, -2] n

end

end A152732.P6919100140611945261

namespace A152732

/-- `ogf(-2x^2/(-1+x+x^2+2x^3))` -/
def P6919100140611945261.Spec : Prop :=
  ∀ n, P6919100140611945261.a n = A152732 (n + 1)

end A152732

/-! ## A152732.P11957822632479722885

`a(n-3)+2^(n-2)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A152732.P11957822632479722885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  a (n - 3) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A152732.P11957822632479722885

namespace A152732

/-- `a(n-3)+2^(n-2)` -/
def P11957822632479722885.Spec : Prop :=
  ∀ n, P11957822632479722885.a n = (A152732 (n + 1) : ℚ)

end A152732

/-! ## A152732.P9395646007789855510

`or(2^(n-2), a(n-3))` with `a(0)=0, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152732

/-- `or(2^(n-2), a(n-3))` -/
def P9395646007789855510.Spec : Prop :=
  ∀ n, P9395646007789855510.a n = A152732 (n + 1)

theorem P9395646007789855510.correct : P9395646007789855510.Spec := by
  intro n
  simp only [A152732, Nat.add_sub_cancel]

end A152732

/-! ## A152732.P16144011526110623007

`xor(2^(n-2), a(n-3))` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A152732.P16144011526110623007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))) (a (n - 3))

end

end A152732.P16144011526110623007

namespace A152732

/-- `xor(2^(n-2), a(n-3))` -/
def P16144011526110623007.Spec : Prop :=
  ∀ n, P16144011526110623007.a n = A152732 (n + 1)

end A152732

/-! ## A152732.P1678021506898828069

`2*(a(n-1)+n%3-1)` with `a(0)=0`
-/

namespace A152732.P1678021506898828069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * (a (n - 1) + (((n % 3 : ℕ) : ℤ) - 1))

end

end A152732.P1678021506898828069

namespace A152732

/-- `2*(a(n-1)+n%3-1)` -/
def P1678021506898828069.Spec : Prop :=
  ∀ n, P1678021506898828069.a n = A152732 (n + 1)

end A152732

/-! ## A152732.P9408913563998807782

`2*a(n-3)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A152732.P9408913563998807782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  2 * a (n - 3) + (a (n - 1) + a (n - 2))

end

end A152732.P9408913563998807782

namespace A152732

/-- `2*a(n-3)+a(n-1)+a(n-2)` -/
def P9408913563998807782.Spec : Prop :=
  ∀ n, (P9408913563998807782.a n : ℤ) = A152732 (n + 1)

end A152732

/-! ## A152732.P8677639517786066704

`a(n-3)+a(n-1)+a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A152732.P8677639517786066704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  a (n - 3) + a (n - 1) + (a (n - 2) + a (n - 3))

end

end A152732.P8677639517786066704

namespace A152732

/-- `a(n-3)+a(n-1)+a(n-2)+a(n-3)` -/
def P8677639517786066704.Spec : Prop :=
  ∀ n, (P8677639517786066704.a n : ℤ) = A152732 (n + 1)

end A152732

/-! ## A152732.P11433537802670819015

`2*Δ[A155803(n)]`
-/

namespace A152732.P11433537802670819015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A152732.P11433537802670819015

namespace A152732

/-- `2*Δ[A155803(n)]` -/
def P11433537802670819015.Spec : Prop :=
  ∀ n, P11433537802670819015.a n = A152732 (n + 1)

end A152732

/-! ## A152732.P6927184132406585916

`A034008(n)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A152732.P6927184132406585916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  A034008 n + a (n - 3)

end

end A152732.P6927184132406585916

namespace A152732

/-- `A034008(n)+a(n-3)` -/
def P6927184132406585916.Spec : Prop :=
  ∀ n, P6927184132406585916.a n = A152732 (n + 1)

end A152732

/-! ## A152732.P14766971656537853333

`A166444(n)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A152732.P14766971656537853333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  A166444 n + a (n - 3)

end

end A152732.P14766971656537853333

namespace A152732

/-- `A166444(n)+a(n-3)` -/
def P14766971656537853333.Spec : Prop :=
  ∀ n, P14766971656537853333.a n = A152732 (n + 1)

end A152732

/-! ## A152732.P15041709576846891308

`A078010(n)-A057078(n)`
-/

namespace A152732.P15041709576846891308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078010 n - A057078 n

end

end A152732.P15041709576846891308

namespace A152732

/-- `A078010(n)-A057078(n)` -/
def P15041709576846891308.Spec : Prop :=
  ∀ n, P15041709576846891308.a n = A152732 (n + 1)

end A152732

/-! ## A152732.P18376534464641235364

`A078010(n)+A049347(n+1)`
-/

namespace A152732.P18376534464641235364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078010 n + A049347 (n + 1)

end

end A152732.P18376534464641235364

namespace A152732

/-- `A078010(n)+A049347(n+1)` -/
def P18376534464641235364.Spec : Prop :=
  ∀ n, P18376534464641235364.a n = A152732 (n + 1)

end A152732

/-! ## A152732.P10102765281817537773

`A078010(n)-A010892(2*n)`
-/

namespace A152732.P10102765281817537773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078010 n - A010892 (2 * n)

end

end A152732.P10102765281817537773

namespace A152732

/-- `A078010(n)-A010892(2*n)` -/
def P10102765281817537773.Spec : Prop :=
  ∀ n, P10102765281817537773.a n = A152732 (n + 1)

end A152732

/-! ## A152732.P8110828851819796174

`2*(A155803(n+1)-A155803(n))`
-/

namespace A152732.P8110828851819796174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A155803 (n + 1) - A155803 n)

end

end A152732.P8110828851819796174

namespace A152732

/-- `2*(A155803(n+1)-A155803(n))` -/
def P8110828851819796174.Spec : Prop :=
  ∀ n, P8110828851819796174.a n = A152732 (n + 1)

end A152732

/-! ## A152732.P15569417293486973928

`A155803(n+1)+2-A130196(n+1)`
-/

namespace A152732.P15569417293486973928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155803 (n + 1) + (2 - A130196 (n + 1))

end

end A152732.P15569417293486973928

namespace A152732

/-- `A155803(n+1)+2-A130196(n+1)` -/
def P15569417293486973928.Spec : Prop :=
  ∀ n, P15569417293486973928.a n = A152732 (n + 1)

end A152732

/-! ## A152732.P16630059770195054325

`A131534(n+2)+A155803(n+1)-1`
-/

namespace A152732.P16630059770195054325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131534 (n + 2) + (A155803 (n + 1) - 1)

end

end A152732.P16630059770195054325

namespace A152732

/-- `A131534(n+2)+A155803(n+1)-1` -/
def P16630059770195054325.Spec : Prop :=
  ∀ n, P16630059770195054325.a n = A152732 (n + 1)

end A152732

/-! ## A152732.P6546193033197248188

`Δ[A063823(n+1)]`
-/

namespace A152732.P6546193033197248188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152732.P6546193033197248188

namespace A152732

/-- `Δ[A063823(n+1)]` -/
def P6546193033197248188.Spec : Prop :=
  ∀ n, P6546193033197248188.a n = A152732 (n + 1)

end A152732

/-! ## A152732.P7917831388037271158

`2*(A077947(n)-A122552(n))`
-/

namespace A152732.P7917831388037271158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A077947 n - A122552 n)

end

end A152732.P7917831388037271158

namespace A152732

/-- `2*(A077947(n)-A122552(n))` -/
def P7917831388037271158.Spec : Prop :=
  ∀ n, P7917831388037271158.a n = A152732 (n + 1)

end A152732

/-! ## A152732.P7351376462414747506

`A063823(n+2)-A063823(n+1)`
-/

namespace A152732.P7351376462414747506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063823 (n + 2) - A063823 (n + 1)

end

end A152732.P7351376462414747506

namespace A152732

/-- `A063823(n+2)-A063823(n+1)` -/
def P7351376462414747506.Spec : Prop :=
  ∀ n, P7351376462414747506.a n = A152732 (n + 1)

end A152732

/-! ## A152732.P12616505858362454609

`A078010(n)+A294627(n)-A122552(n)`
-/

namespace A152732.P12616505858362454609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078010 n + (A294627 n - A122552 n)

end

end A152732.P12616505858362454609

namespace A152732

/-- `A078010(n)+A294627(n)-A122552(n)` -/
def P12616505858362454609.Spec : Prop :=
  ∀ n, P12616505858362454609.a n = A152732 (n + 1)

end A152732

/-!
# A152733: a(n) + a(n+1) + a(n+2) = 3^n.

The programs for A152733, the canonical program `A152733.P1069801609514860748` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152733 has offset 1).

The definition of A152733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152733.P6784406688662260717

`ogf(-3x^2/(-1+2x+2x^2+3x^3))`
-/

namespace A152733.P6784406688662260717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 3] [1, -2, -2, -3] n

end

end A152733.P6784406688662260717

namespace A152733

/-- `ogf(-3x^2/(-1+2x+2x^2+3x^3))` -/
def P6784406688662260717.Spec : Prop :=
  ∀ n, P6784406688662260717.a n = A152733 (n + 1)

end A152733

/-! ## A152733.P1069801609514860748

`3*(a(n-1)+n%3-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152733

/-- `3*(a(n-1)+n%3-1)` -/
def P1069801609514860748.Spec : Prop :=
  ∀ n, P1069801609514860748.a n = A152733 (n + 1)

theorem P1069801609514860748.correct : P1069801609514860748.Spec := by
  intro n
  simp only [A152733, Nat.add_sub_cancel]

end A152733

/-! ## A152733.P5231328701049261965

`3*(a(n-1)--n%3)-3` with `a(0)=0`
-/

namespace A152733.P5231328701049261965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * (a (n - 1) - Int.tmod (-(n : ℤ)) 3) - 3

end

end A152733.P5231328701049261965

namespace A152733

/-- `3*(a(n-1)--n%3)-3` -/
def P5231328701049261965.Spec : Prop :=
  ∀ n, P5231328701049261965.a n = A152733 (n + 1)

end A152733

/-! ## A152733.P15227183940742901386

`3^(n-1)-(a(n-1)+a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A152733.P15227183940742901386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (a (n - 1) + a (n - 2))

end

end A152733.P15227183940742901386

namespace A152733

/-- `3^(n-1)-(a(n-1)+a(n-2))` -/
def P15227183940742901386.Spec : Prop :=
  ∀ n, P15227183940742901386.a n = (A152733 (n + 1) : ℚ)

end A152733

/-! ## A152733.P13145786168354442835

`3^(n-1)-a(n-1)-a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A152733.P13145786168354442835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1) - a (n - 2)

end

end A152733.P13145786168354442835

namespace A152733

/-- `3^(n-1)-a(n-1)-a(n-2)` -/
def P13145786168354442835.Spec : Prop :=
  ∀ n, P13145786168354442835.a n = (A152733 (n + 1) : ℚ)

end A152733

/-! ## A152733.P11943494904996408094

`3*(A049347(n+1)+a(n-1))` with `a(0)=0`
-/

namespace A152733.P11943494904996408094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * (A049347 (n + 1) + a (n - 1))

end

end A152733.P11943494904996408094

namespace A152733

/-- `3*(A049347(n+1)+a(n-1))` -/
def P11943494904996408094.Spec : Prop :=
  ∀ n, P11943494904996408094.a n = A152733 (n + 1)

end A152733

/-! ## A152733.P2067795307621078199

`3*round(3^n/13)`
-/

namespace A152733.P2067795307621078199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway ((3 ^ n : ℚ) / 13)

end

end A152733.P2067795307621078199

namespace A152733

/-- `3*round(3^n/13)` -/
def P2067795307621078199.Spec : Prop :=
  ∀ n, P2067795307621078199.a n = A152733 (n + 1)

end A152733

/-!
# A152734: 5 times pentagonal numbers: 5*n*(3*n-1)/2.

The programs for A152734, the canonical program `A152734.P5361139759362888017` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152734 has offset 0).

The definition of A152734 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n*(3*n-1)/2` (program `A152734.P8231068588435122862`, by `A152734.P8231068588435122862.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152734.P8231068588435122862

`5*n*(3*n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152734.P8231068588435122862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((n : ℚ) * (((3 * n : ℤ) - 1 : ℚ) / 2))

end

end A152734.P8231068588435122862

namespace A152734

/-- `5*n*(3*n-1)/2` -/
def P8231068588435122862.Spec : Prop :=
  ∀ n, P8231068588435122862.a n = (A152734 n : ℚ)

theorem P8231068588435122862.correct : P8231068588435122862.Spec := by
  intro n
  induction n with
  | zero => simp [A152734, A152734.P8231068588435122862.a, A152734.P5361139759362888017.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A152734, Nat.add_sub_cancel, A152734.P8231068588435122862.a, A152734.P5361139759362888017.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A152734

/-! ## A152734.P5361139759362888017

`a(n-1)+15*n-10` with `a(0)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152734

/-- `a(n-1)+15*n-10` -/
def P5361139759362888017.Spec : Prop :=
  ∀ n, P5361139759362888017.a n = A152734 n

theorem P5361139759362888017.correct : P5361139759362888017.Spec := by
  intro n
  simp only [A152734]

end A152734

/-! ## A152734.P8487621862129361528

`4*A000217(n)+A051865(n)`
-/

namespace A152734.P8487621862129361528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000217 n + A051865 n

end

end A152734.P8487621862129361528

namespace A152734

/-- `4*A000217(n)+A051865(n)` -/
def P8487621862129361528.Spec : Prop :=
  ∀ n, P8487621862129361528.a n = A152734 n

end A152734

/-! ## A152734.P10758975444498440708

`C(4*n, 2)-∑[n]`
-/

namespace A152734.P10758975444498440708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n) 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A152734.P10758975444498440708

namespace A152734

/-- `C(4*n, 2)-∑[n]` -/
def P10758975444498440708.Spec : Prop :=
  ∀ n, P10758975444498440708.a n = A152734 n

end A152734

/-! ## A152734.P18315162589275633966

`∑[a(n-1)+15]` with `a(0)=0, a(1)=5`
-/

namespace A152734.P18315162589275633966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  f1 (n - 1) + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152734.P18315162589275633966

namespace A152734

/-- `∑[a(n-1)+15]` -/
def P18315162589275633966.Spec : Prop :=
  ∀ n, (P18315162589275633966.a n : ℤ) = A152734 n

end A152734

/-! ## A152734.P13301624410457043470

`∑[ogf((5x+10x^2)/(1-2x+x^2))]`
-/

namespace A152734.P13301624410457043470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 10] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152734.P13301624410457043470

namespace A152734

/-- `∑[ogf((5x+10x^2)/(1-2x+x^2))]` -/
def P13301624410457043470.Spec : Prop :=
  ∀ n, P13301624410457043470.a n = A152734 n

end A152734

/-! ## A152734.P2105683529283110176

`ogf((5x+10x^2)/(1-3x+3x^2-x^3))`
-/

namespace A152734.P2105683529283110176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 10] [1, -3, 3, -1] n

end

end A152734.P2105683529283110176

namespace A152734

/-- `ogf((5x+10x^2)/(1-3x+3x^2-x^3))` -/
def P2105683529283110176.Spec : Prop :=
  ∀ n, P2105683529283110176.a n = A152734 n

end A152734

/-! ## A152734.P15176900697894287963

`10-∑[a(n-1)-15]` with `a(0)=10`
-/

namespace A152734.P15176900697894287963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f1 =>
  f1 (n - 1) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152734.P15176900697894287963

namespace A152734

/-- `10-∑[a(n-1)-15]` -/
def P15176900697894287963.Spec : Prop :=
  ∀ n, P15176900697894287963.a n = A152734 n

end A152734

/-! ## A152734.P5259826856284116609

`Δ[5*(n-1)*C(n, 2)]`
-/

namespace A152734.P5259826856284116609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (((n : ℤ) - 1) * (Nat.choose n 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152734.P5259826856284116609

namespace A152734

/-- `Δ[5*(n-1)*C(n, 2)]` -/
def P5259826856284116609.Spec : Prop :=
  ∀ n, P5259826856284116609.a n = A152734 n

end A152734

/-! ## A152734.P3051187818645524646

`A153780(n)/2`
-/

namespace A152734.P3051187818645524646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153780 n : ℚ) / 2

end

end A152734.P3051187818645524646

namespace A152734

/-- `A153780(n)/2` -/
def P3051187818645524646.Spec : Prop :=
  ∀ n, P3051187818645524646.a n = (A152734 n : ℚ)

end A152734

/-! ## A152734.P911982312114864940

`A014635(n)-∑[n]`
-/

namespace A152734.P911982312114864940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014635 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A152734.P911982312114864940

namespace A152734

/-- `A014635(n)-∑[n]` -/
def P911982312114864940.Spec : Prop :=
  ∀ n, P911982312114864940.a n = A152734 n

end A152734

/-! ## A152734.P18015232452226831522

`A152773(n)+2*n`
-/

namespace A152734.P18015232452226831522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152773 n + (2 * n : ℤ)

end

end A152734.P18015232452226831522

namespace A152734

/-- `A152773(n)+2*n` -/
def P18015232452226831522.Spec : Prop :=
  ∀ n, P18015232452226831522.a n = A152734 n

end A152734

/-! ## A152734.P16274435013521855617

`A022272(n)-2*n`
-/

namespace A152734.P16274435013521855617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022272 n - (2 * n : ℤ)

end

end A152734.P16274435013521855617

namespace A152734

/-- `A022272(n)-2*n` -/
def P16274435013521855617.Spec : Prop :=
  ∀ n, P16274435013521855617.a n = A152734 n

end A152734

/-! ## A152734.P11676776724383305141

`A226489(n)+3*n`
-/

namespace A152734.P11676776724383305141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226489 n + (3 * n : ℤ)

end

end A152734.P11676776724383305141

namespace A152734

/-- `A226489(n)+3*n` -/
def P11676776724383305141.Spec : Prop :=
  ∀ n, P11676776724383305141.a n = A152734 n

end A152734

/-! ## A152734.P16489768012125043389

`3*A005476(n)-n`
-/

namespace A152734.P16489768012125043389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005476 n - (n : ℤ)

end

end A152734.P16489768012125043389

namespace A152734

/-- `3*A005476(n)-n` -/
def P16489768012125043389.Spec : Prop :=
  ∀ n, P16489768012125043389.a n = A152734 n

end A152734

/-! ## A152734.P592966482787632879

`A022273(n)-3*n`
-/

namespace A152734.P592966482787632879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022273 n - (3 * n : ℤ)

end

end A152734.P592966482787632879

namespace A152734

/-- `A022273(n)-3*n` -/
def P592966482787632879.Spec : Prop :=
  ∀ n, P592966482787632879.a n = A152734 n

end A152734

/-! ## A152734.P18201233170835523233

`A051869(n)+4*n`
-/

namespace A152734.P18201233170835523233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051869 n + (4 * n : ℤ)

end

end A152734.P18201233170835523233

namespace A152734

/-- `A051869(n)+4*n` -/
def P18201233170835523233.Spec : Prop :=
  ∀ n, P18201233170835523233.a n = A152734 n

end A152734

/-! ## A152734.P399130137870849359

`A060785(n+2)/2-n`
-/

namespace A152734.P399130137870849359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060785 (n + 2) : ℚ) / 2 - (n : ℚ)

end

end A152734.P399130137870849359

namespace A152734

/-- `A060785(n+2)/2-n` -/
def P399130137870849359.Spec : Prop :=
  ∀ n, P399130137870849359.a n = (A152734 n : ℚ)

end A152734

/-! ## A152734.P1026353167358076958

`A016742(n)+A001106(n)`
-/

namespace A152734.P1026353167358076958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n + A001106 n

end

end A152734.P1026353167358076958

namespace A152734

/-- `A016742(n)+A001106(n)` -/
def P1026353167358076958.Spec : Prop :=
  ∀ n, P1026353167358076958.a n = A152734 n

end A152734

/-! ## A152734.P12911448357597164937

`A022266(n)+A000567(n)`
-/

namespace A152734.P12911448357597164937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022266 n + A000567 n

end

end A152734.P12911448357597164937

namespace A152734

/-- `A022266(n)+A000567(n)` -/
def P12911448357597164937.Spec : Prop :=
  ∀ n, P12911448357597164937.a n = A152734 n

end A152734

/-!
# A152735: Count of links in n-th maximal chain of primes.

The programs for A152735, there is no canonical definition to state claims against.
-/

/-! ## A152735.P17052168445472359311

`A051135(A022112(n)-A322026(n+1))`
-/

namespace A152735.P17052168445472359311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051135 (A022112 n - A322026 (n + 1)).toNat

end

end A152735.P17052168445472359311

/-! ## A152735.P1666690674373411180

`gcd(A273948(2*(n+1))+A254938(2*n+1), A113590(n+1))`
-/

namespace A152735.P1666690674373411180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A273948 (2 * (n + 1)) + A254938 (2 * n + 1)) (A113590 (n + 1))

end

end A152735.P1666690674373411180

/-! ## A152735.P16683530689786302840

`A328570(A003658(record[A266637(n+1)]))`
-/

namespace A152735.P16683530689786302840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328570 (A003658 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A152735.P16683530689786302840

/-! ## A152735.P895128083477950930

`gcd(A000005(A126957(n+1)+1), A338736(n+1))`
-/

namespace A152735.P895128083477950930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A126957 (n + 1) + 1).toNat) (A338736 (n + 1))

end

end A152735.P895128083477950930

/-!
# A152736: Triangle read by rows: M*Q, where M = an infinite lower triangular matrix with A140456 in every column: (1, 1, 1, 3, 7, 23, 71, ...) and Q = a matrix with A000085 as the main diagonal the rest zeros.

The programs for A152736, there is no canonical definition to state claims against.
-/

/-! ## A152736.P327960181661302356

`A250002(A047920(n))+A144962(n+1)`
-/

namespace A152736.P327960181661302356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250002 (A047920 n).toNat + A144962 (n + 1)

end

end A152736.P327960181661302356

/-! ## A152736.P7054940334728987784

`or(A107846(A176088(n)), A144962(n+1))`
-/

namespace A152736.P7054940334728987784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107846 (A176088 n).toNat) (A144962 (n + 1))

end

end A152736.P7054940334728987784

/-! ## A152736.P14928686674362161814

`or(A144962(n+1), A345935(A042375(n)))`
-/

namespace A152736.P14928686674362161814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A144962 (n + 1)) (A345935 (A042375 n).toNat)

end

end A152736.P14928686674362161814

/-! ## A152736.P8341068642157972115

`A144962(n+1)+A007030(A106240(n+1))`
-/

namespace A152736.P8341068642157972115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144962 (n + 1) + A007030 (A106240 (n + 1)).toNat

end

end A152736.P8341068642157972115

/-!
# A152737: a(n) = floor(n^phi) where phi is the golden ratio.

The programs for A152737, the canonical program `A152737.P16963801655095574873` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152737 has offset 0).

The definition of A152737 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^ϕ)` (program `A152737.P16963801655095574873`, by `A152737.P16963801655095574873.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152737.P16963801655095574873

`floor(n^ϕ)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152737

/-- `floor(n^ϕ)` -/
def P16963801655095574873.Spec : Prop :=
  ∀ n, P16963801655095574873.a n = A152737 n

theorem P16963801655095574873.correct : P16963801655095574873.Spec := by
  intro n
  simp only [A152737]

end A152737

/-! ## A152737.P17390916963538533600

`∑[A152850(n)]-A152850(n)`
-/

namespace A152737.P17390916963538533600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152850 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A152850 n

end

end A152737.P17390916963538533600

namespace A152737

/-- `∑[A152850(n)]-A152850(n)` -/
def P17390916963538533600.Spec : Prop :=
  ∀ n, P17390916963538533600.a n = A152737 n

end A152737

/-! ## A152737.P6424707800978714860

`ceil(-n^ϕ)*A321804(C(A078898(n), n))`
-/

namespace A152737.P6424707800978714860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈-((n : ℝ) ^ Real.goldenRatio)⌉ * A321804 (Nat.choose (A078898 n).toNat n)

end

end A152737.P6424707800978714860

namespace A152737

/-- `ceil(-n^ϕ)*A321804(C(A078898(n), n))` -/
def P6424707800978714860.Spec : Prop :=
  ∀ n, P6424707800978714860.a n = A152737 n

end A152737

/-! ## A152737.P14570007094592219576

`ceil(-n^ϕ)*A321804(C(A103221(n), n))`
-/

namespace A152737.P14570007094592219576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈-((n : ℝ) ^ Real.goldenRatio)⌉ * A321804 (Nat.choose (A103221 n).toNat n)

end

end A152737.P14570007094592219576

namespace A152737

/-- `ceil(-n^ϕ)*A321804(C(A103221(n), n))` -/
def P14570007094592219576.Spec : Prop :=
  ∀ n, P14570007094592219576.a n = A152737 n

end A152737

/-! ## A152737.P1921118686924225302

`ceil(-n^ϕ)*A321804(C(A001223(n+1), n))`
-/

namespace A152737.P1921118686924225302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈-((n : ℝ) ^ Real.goldenRatio)⌉ * A321804 (Nat.choose (A001223 (n + 1)).toNat n)

end

end A152737.P1921118686924225302

namespace A152737

/-- `ceil(-n^ϕ)*A321804(C(A001223(n+1), n))` -/
def P1921118686924225302.Spec : Prop :=
  ∀ n, P1921118686924225302.a n = A152737 n

end A152737

/-! ## A152737.P9257645278332305969

`ceil(-n^ϕ)*A321804(C(A001462(n+1), n))`
-/

namespace A152737.P9257645278332305969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈-((n : ℝ) ^ Real.goldenRatio)⌉ * A321804 (Nat.choose (A001462 (n + 1)).toNat n)

end

end A152737.P9257645278332305969

namespace A152737

/-- `ceil(-n^ϕ)*A321804(C(A001462(n+1), n))` -/
def P9257645278332305969.Spec : Prop :=
  ∀ n, P9257645278332305969.a n = A152737 n

end A152737

/-! ## A152737.P10314546576997628586

`ceil(-n^ϕ)*A321804(C(A110969(n+1), n))`
-/

namespace A152737.P10314546576997628586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈-((n : ℝ) ^ Real.goldenRatio)⌉ * A321804 (Nat.choose (A110969 (n + 1)).toNat n)

end

end A152737.P10314546576997628586

namespace A152737

/-- `ceil(-n^ϕ)*A321804(C(A110969(n+1), n))` -/
def P10314546576997628586.Spec : Prop :=
  ∀ n, P10314546576997628586.a n = A152737 n

end A152737

/-! ## A152737.P3629617208861182512

`ceil(-n^ϕ)*A321804(C(A293482(n+1), n))`
-/

namespace A152737.P3629617208861182512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈-((n : ℝ) ^ Real.goldenRatio)⌉ * A321804 (Nat.choose (A293482 (n + 1)).toNat n)

end

end A152737.P3629617208861182512

namespace A152737

/-- `ceil(-n^ϕ)*A321804(C(A293482(n+1), n))` -/
def P3629617208861182512.Spec : Prop :=
  ∀ n, P3629617208861182512.a n = A152737 n

end A152737

/-! ## A152737.P1859042842176455361

`ceil(-n^ϕ)/A008683(A102540(n+1))`
-/

namespace A152737.P1859042842176455361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈-((n : ℝ) ^ Real.goldenRatio)⌉ : ℚ) / (A008683 (A102540 (n + 1)).toNat : ℚ)

end

end A152737.P1859042842176455361

namespace A152737

/-- `ceil(-n^ϕ)/A008683(A102540(n+1))` -/
def P1859042842176455361.Spec : Prop :=
  ∀ n, P1859042842176455361.a n = (A152737 n : ℚ)

end A152737

/-! ## A152737.P15780465801443337440

`(A003056(A161680(n))-n)*ceil(-n^ϕ)`
-/

namespace A152737.P15780465801443337440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 (A161680 n).toNat - (n : ℤ)) * ⌈-((n : ℝ) ^ Real.goldenRatio)⌉

end

end A152737.P15780465801443337440

namespace A152737

/-- `(A003056(A161680(n))-n)*ceil(-n^ϕ)` -/
def P15780465801443337440.Spec : Prop :=
  ∀ n, P15780465801443337440.a n = A152737 n

end A152737

/-! ## A152737.P6018267455293363205

`ceil(n^ϕ-tanh(n))`
-/

namespace A152737.P6018267455293363205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) ^ Real.goldenRatio - Real.tanh (n : ℝ)⌉

end

end A152737.P6018267455293363205

namespace A152737

/-- `ceil(n^ϕ-tanh(n))` -/
def P6018267455293363205.Spec : Prop :=
  ∀ n, P6018267455293363205.a n = A152737 n

end A152737

/-!
# A152738: a(n) = floor((n^2)/phi).

The programs for A152738, the canonical program `A152738.P2806997800087676748` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152738 has offset 0).

The definition of A152738 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n²/ϕ)` (program `A152738.P2806997800087676748`, by `A152738.P2806997800087676748.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152738.P2806997800087676748

`floor(n²/ϕ)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152738

/-- `floor(n²/ϕ)` -/
def P2806997800087676748.Spec : Prop :=
  ∀ n, P2806997800087676748.a n = A152738 n

theorem P2806997800087676748.correct : P2806997800087676748.Spec := by
  intro n
  simp only [A152738]

end A152738

/-! ## A152738.P13888348070291822870

`A293400(n)-n²`
-/

namespace A152738.P13888348070291822870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293400 n - (n ^ 2 : ℤ)

end

end A152738.P13888348070291822870

namespace A152738

/-- `A293400(n)-n²` -/
def P13888348070291822870.Spec : Prop :=
  ∀ n, P13888348070291822870.a n = A152738 n

end A152738

/-! ## A152738.P7739601940403038846

`A293403(n)-2*n²`
-/

namespace A152738.P7739601940403038846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293403 n - (2 * n ^ 2 : ℤ)

end

end A152738.P7739601940403038846

namespace A152738

/-- `A293403(n)-2*n²` -/
def P7739601940403038846.Spec : Prop :=
  ∀ n, P7739601940403038846.a n = A152738 n

end A152738

/-! ## A152738.P6698048921894489783

`ceil(n²/ϕ)-A057427(n)`
-/

namespace A152738.P6698048921894489783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℝ) / Real.goldenRatio⌉ - A057427 n

end

end A152738.P6698048921894489783

namespace A152738

/-- `ceil(n²/ϕ)-A057427(n)` -/
def P6698048921894489783.Spec : Prop :=
  ∀ n, P6698048921894489783.a n = A152738 n

end A152738

/-! ## A152738.P13163371500715399775

`A293401(n)-ceil(abs(sin(n)))-n²`
-/

namespace A152738.P13163371500715399775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293401 n - ⌈|Real.sin (n : ℝ)|⌉ - (n ^ 2 : ℤ)

end

end A152738.P13163371500715399775

namespace A152738

/-- `A293401(n)-ceil(abs(sin(n)))-n²` -/
def P13163371500715399775.Spec : Prop :=
  ∀ n, P13163371500715399775.a n = A152738 n

end A152738

/-! ## A152738.P1028842296200193976

`A293407(n)+A057428(n)`
-/

namespace A152738.P1028842296200193976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293407 n + A057428 n

end

end A152738.P1028842296200193976

namespace A152738

/-- `A293407(n)+A057428(n)` -/
def P1028842296200193976.Spec : Prop :=
  ∀ n, P1028842296200193976.a n = A152738 n

end A152738

/-! ## A152738.P13558310482176298627

`A293401(n)%A002522(n)`
-/

namespace A152738.P13558310482176298627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293401 n) (A002522 n)

end

end A152738.P13558310482176298627

namespace A152738

/-- `A293401(n)%A002522(n)` -/
def P13558310482176298627.Spec : Prop :=
  ∀ n, P13558310482176298627.a n = A152738 n

end A152738

/-! ## A152738.P12234498934048809913

`A293404(n)%A058331(n)`
-/

namespace A152738.P12234498934048809913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293404 n) (A058331 n)

end

end A152738.P12234498934048809913

namespace A152738

/-- `A293404(n)%A058331(n)` -/
def P12234498934048809913.Spec : Prop :=
  ∀ n, P12234498934048809913.a n = A152738 n

end A152738

/-! ## A152738.P8222648290416639063

`A293400(n)%A253909(n)`
-/

namespace A152738.P8222648290416639063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293400 n) (A253909 n)

end

end A152738.P8222648290416639063

namespace A152738

/-- `A293400(n)%A253909(n)` -/
def P8222648290416639063.Spec : Prop :=
  ∀ n, P8222648290416639063.a n = A152738 n

end A152738

/-! ## A152738.P10692611287808219490

`A293403(n)%A253909(n)`
-/

namespace A152738.P10692611287808219490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293403 n) (A253909 n)

end

end A152738.P10692611287808219490

namespace A152738

/-- `A293403(n)%A253909(n)` -/
def P10692611287808219490.Spec : Prop :=
  ∀ n, P10692611287808219490.a n = A152738 n

end A152738

/-! ## A152738.P13444851356888122120

`∑[A153287(n)]-A153287(n)`
-/

namespace A152738.P13444851356888122120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A153287 n

end

end A152738.P13444851356888122120

namespace A152738

/-- `∑[A153287(n)]-A153287(n)` -/
def P13444851356888122120.Spec : Prop :=
  ∀ n, P13444851356888122120.a n = A152738 n

end A152738

/-! ## A152738.P13651446990303204617

`A000007(n)+A293407(n)-1`
-/

namespace A152738.P13651446990303204617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A293407 n - 1)

end

end A152738.P13651446990303204617

namespace A152738

/-- `A000007(n)+A293407(n)-1` -/
def P13651446990303204617.Spec : Prop :=
  ∀ n, P13651446990303204617.a n = A152738 n

end A152738

/-! ## A152738.P17307252230005944744

`2*A293400(n)-A293403(n)`
-/

namespace A152738.P17307252230005944744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293400 n - A293403 n

end

end A152738.P17307252230005944744

namespace A152738

/-- `2*A293400(n)-A293403(n)` -/
def P17307252230005944744.Spec : Prop :=
  ∀ n, P17307252230005944744.a n = A152738 n

end A152738

/-! ## A152738.P2147129726781114324

`A057428(n)+A293401(n)-n²`
-/

namespace A152738.P2147129726781114324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (A293401 n - (n ^ 2 : ℤ))

end

end A152738.P2147129726781114324

namespace A152738

/-- `A057428(n)+A293401(n)-n²` -/
def P2147129726781114324.Spec : Prop :=
  ∀ n, P2147129726781114324.a n = A152738 n

end A152738

/-! ## A152738.P13606680610566071205

`A293401(n)-(A057427(n)+n²)`
-/

namespace A152738.P13606680610566071205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293401 n - (A057427 n + (n ^ 2 : ℤ))

end

end A152738.P13606680610566071205

namespace A152738

/-- `A293401(n)-(A057427(n)+n²)` -/
def P13606680610566071205.Spec : Prop :=
  ∀ n, P13606680610566071205.a n = A152738 n

end A152738

/-! ## A152738.P13138022441259967103

`ceil(n²/ϕ)-A057945(A057944(n))`
-/

namespace A152738.P13138022441259967103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℝ) / Real.goldenRatio⌉ - A057945 (A057944 n).toNat

end

end A152738.P13138022441259967103

namespace A152738

/-- `ceil(n²/ϕ)-A057945(A057944(n))` -/
def P13138022441259967103.Spec : Prop :=
  ∀ n, P13138022441259967103.a n = A152738 n

end A152738

/-! ## A152738.P8686248995734799584

`ceil((floor(A004277(n)*A028310(n)/ϕ)-1)/2)`
-/

namespace A152738.P8686248995734799584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊(A004277 n * A028310 n : ℝ) / Real.goldenRatio⌋ - 1 : ℚ) / 2⌉

end

end A152738.P8686248995734799584

namespace A152738

/-- `ceil((floor(A004277(n)*A028310(n)/ϕ)-1)/2)` -/
def P8686248995734799584.Spec : Prop :=
  ∀ n, P8686248995734799584.a n = A152738 n

end A152738

/-! ## A152738.P10739074495907668058

`A293407(n)-A001222(A027746(n+1))`
-/

namespace A152738.P10739074495907668058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293407 n - A001222 (A027746 (n + 1)).toNat

end

end A152738.P10739074495907668058

namespace A152738

/-- `A293407(n)-A001222(A027746(n+1))` -/
def P10739074495907668058.Spec : Prop :=
  ∀ n, P10739074495907668058.a n = A152738 n

end A152738

/-! ## A152738.P7157899111379769227

`A293407(n+1)-(A153287(n)+1)`
-/

namespace A152738.P7157899111379769227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293407 (n + 1) - (A153287 n + 1)

end

end A152738.P7157899111379769227

namespace A152738

/-- `A293407(n+1)-(A153287(n)+1)` -/
def P7157899111379769227.Spec : Prop :=
  ∀ n, P7157899111379769227.a n = A152738 n

end A152738

/-! ## A152738.P17803156400494114491

`A005206(A028310(n)²-1)`
-/

namespace A152738.P17803156400494114491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A028310 n ^ 2 - 1).toNat

end

end A152738.P17803156400494114491

namespace A152738

/-- `A005206(A028310(n)²-1)` -/
def P17803156400494114491.Spec : Prop :=
  ∀ n, P17803156400494114491.a n = A152738 n

end A152738

/-!
# A152740: 11 times triangular numbers.

The programs for A152740, the canonical program `A152740.P17073623935816506137` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152740 has offset 0).

The definition of A152740 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152740.P2471517510853330142

`11*n*(n+1)/2`
-/

namespace A152740.P2471517510853330142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  11 * ((n : ℚ) * ((n + 1 : ℚ) / 2))

end

end A152740.P2471517510853330142

namespace A152740

/-- `11*n*(n+1)/2` -/
def P2471517510853330142.Spec : Prop :=
  ∀ n, P2471517510853330142.a n = (A152740 n : ℚ)

theorem P2471517510853330142.correct : P2471517510853330142.Spec := by
  intro n
  induction n with
  | zero => simp [A152740, A152740.P2471517510853330142.a, A152740.P17073623935816506137.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A152740, Nat.add_sub_cancel, A152740.P2471517510853330142.a, A152740.P17073623935816506137.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A152740

/-! ## A152740.P17073623935816506137

`a(n-1)+11*n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152740

/-- `a(n-1)+11*n` -/
def P17073623935816506137.Spec : Prop :=
  ∀ n, (P17073623935816506137.a n : ℤ) = A152740 n

theorem P17073623935816506137.correct : P17073623935816506137.Spec := by
  intro n
  simp only [A152740]

end A152740

/-! ## A152740.P12659933577689833967

`A211013(n)+n`
-/

namespace A152740.P12659933577689833967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211013 n + (n : ℤ)

end

end A152740.P12659933577689833967

namespace A152740

/-- `A211013(n)+n` -/
def P12659933577689833967.Spec : Prop :=
  ∀ n, P12659933577689833967.a n = A152740 n

end A152740

/-! ## A152740.P4429666155896996646

`A069125(n+1)-1`
-/

namespace A152740.P4429666155896996646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069125 (n + 1) - 1

end

end A152740.P4429666155896996646

namespace A152740

/-- `A069125(n+1)-1` -/
def P4429666155896996646.Spec : Prop :=
  ∀ n, P4429666155896996646.a n = A152740 n

end A152740

/-! ## A152740.P17011549980291659535

`A022269(n)+5*n`
-/

namespace A152740.P17011549980291659535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022269 n + (5 * n : ℤ)

end

end A152740.P17011549980291659535

namespace A152740

/-- `A022269(n)+5*n` -/
def P17011549980291659535.Spec : Prop :=
  ∀ n, P17011549980291659535.a n = A152740 n

end A152740

/-! ## A152740.P16788818147139045761

`A022268(n)+6*n`
-/

namespace A152740.P16788818147139045761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022268 n + (6 * n : ℤ)

end

end A152740.P16788818147139045761

namespace A152740

/-- `A022268(n)+6*n` -/
def P16788818147139045761.Spec : Prop :=
  ∀ n, P16788818147139045761.a n = A152740 n

end A152740

/-! ## A152740.P13463163308975284566

`A180223(n)+9*n`
-/

namespace A152740.P13463163308975284566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180223 n + (9 * n : ℤ)

end

end A152740.P13463163308975284566

namespace A152740

/-- `A180223(n)+9*n` -/
def P13463163308975284566.Spec : Prop :=
  ∀ n, P13463163308975284566.a n = A152740 n

end A152740

/-! ## A152740.P18354704588714840484

`A051865(n)+10*n`
-/

namespace A152740.P18354704588714840484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051865 n + (10 * n : ℤ)

end

end A152740.P18354704588714840484

namespace A152740

/-- `A051865(n)+10*n` -/
def P18354704588714840484.Spec : Prop :=
  ∀ n, P18354704588714840484.a n = A152740 n

end A152740

/-! ## A152740.P8369476465029515963

`A218530(11*n+10)`
-/

namespace A152740.P8369476465029515963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218530 (11 * n + 10)

end

end A152740.P8369476465029515963

namespace A152740

/-- `A218530(11*n+10)` -/
def P8369476465029515963.Spec : Prop :=
  ∀ n, P8369476465029515963.a n = A152740 n

end A152740

/-! ## A152740.P15923717411781803213

`∑[a(n-1)+11]` with `a(0)=0`
-/

namespace A152740.P15923717411781803213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152740.P15923717411781803213

namespace A152740

/-- `∑[a(n-1)+11]` -/
def P15923717411781803213.Spec : Prop :=
  ∀ n, (P15923717411781803213.a n : ℤ) = A152740 n

end A152740

/-! ## A152740.P6570801983269374976

`∑[ogf(11x/(1-2x+x^2))]`
-/

namespace A152740.P6570801983269374976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 11] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152740.P6570801983269374976

namespace A152740

/-- `∑[ogf(11x/(1-2x+x^2))]` -/
def P6570801983269374976.Spec : Prop :=
  ∀ n, P6570801983269374976.a n = A152740 n

end A152740

/-! ## A152740.P14458002150725746570

`ogf(11x/(1-3x+3x^2-x^3))`
-/

namespace A152740.P14458002150725746570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 11] [1, -3, 3, -1] n

end

end A152740.P14458002150725746570

namespace A152740

/-- `ogf(11x/(1-3x+3x^2-x^3))` -/
def P14458002150725746570.Spec : Prop :=
  ∀ n, P14458002150725746570.a n = A152740 n

end A152740

/-! ## A152740.P16103459755318266679

`11*n²-a(n-1)` with `a(0)=0`
-/

namespace A152740.P16103459755318266679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (11 * n ^ 2 : ℤ) - a (n - 1)

end

end A152740.P16103459755318266679

namespace A152740

/-- `11*n²-a(n-1)` -/
def P16103459755318266679.Spec : Prop :=
  ∀ n, P16103459755318266679.a n = A152740 n

end A152740

/-! ## A152740.P7646922434333946932

`12*n-(n-a(n-1))` with `a(0)=0`
-/

namespace A152740.P7646922434333946932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (12 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A152740.P7646922434333946932

namespace A152740

/-- `12*n-(n-a(n-1))` -/
def P7646922434333946932.Spec : Prop :=
  ∀ n, P7646922434333946932.a n = A152740 n

end A152740

/-! ## A152740.P14807654125988304305

`∑[n]-∑[a(n-1)-10]` with `a(0)=0`
-/

namespace A152740.P14807654125988304305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A152740.P14807654125988304305

namespace A152740

/-- `∑[n]-∑[a(n-1)-10]` -/
def P14807654125988304305.Spec : Prop :=
  ∀ n, P14807654125988304305.a n = A152740 n

end A152740

/-! ## A152740.P13521033838021113136

`A164136(n)/2`
-/

namespace A152740.P13521033838021113136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164136 n : ℚ) / 2

end

end A152740.P13521033838021113136

namespace A152740

/-- `A164136(n)/2` -/
def P13521033838021113136.Spec : Prop :=
  ∀ n, P13521033838021113136.a n = (A152740 n : ℚ)

end A152740

/-! ## A152740.P7930573512378804226

`A124080(n)+∑[n]`
-/

namespace A152740.P7930573512378804226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124080 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A152740.P7930573512378804226

namespace A152740

/-- `A124080(n)+∑[n]` -/
def P7930573512378804226.Spec : Prop :=
  ∀ n, P7930573512378804226.a n = A152740 n

end A152740

/-! ## A152740.P5044536343905374094

`A049598(n)-∑[n]`
-/

namespace A152740.P5044536343905374094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049598 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A152740.P5044536343905374094

namespace A152740

/-- `A049598(n)-∑[n]` -/
def P5044536343905374094.Spec : Prop :=
  ∀ n, P5044536343905374094.a n = A152740 n

end A152740

/-! ## A152740.P17804781055017574086

`(A006222(n)-3)/2`
-/

namespace A152740.P17804781055017574086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006222 n - 3 : ℚ) / 2

end

end A152740.P17804781055017574086

namespace A152740

/-- `(A006222(n)-3)/2` -/
def P17804781055017574086.Spec : Prop :=
  ∀ n, P17804781055017574086.a n = (A152740 n : ℚ)

end A152740

/-! ## A152740.P11343303210148127313

`A254963(n)+4*n`
-/

namespace A152740.P11343303210148127313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254963 n + (4 * n : ℤ)

end

end A152740.P11343303210148127313

namespace A152740

/-- `A254963(n)+4*n` -/
def P11343303210148127313.Spec : Prop :=
  ∀ n, P11343303210148127313.a n = A152740 n

end A152740

/-!
# A152741: 13 times triangular numbers.

The programs for A152741, the canonical program `A152741.P7980858268798399893` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152741 has offset 0).

The definition of A152741 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152741.P18075963729041929431

`13*n*(n+1)/2`
-/

namespace A152741.P18075963729041929431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  13 * ((n : ℚ) * ((n + 1 : ℚ) / 2))

end

end A152741.P18075963729041929431

namespace A152741

/-- `13*n*(n+1)/2` -/
def P18075963729041929431.Spec : Prop :=
  ∀ n, P18075963729041929431.a n = (A152741 n : ℚ)

theorem P18075963729041929431.correct : P18075963729041929431.Spec := by
  intro n
  induction n with
  | zero => simp [A152741, A152741.P18075963729041929431.a, A152741.P7980858268798399893.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A152741, Nat.add_sub_cancel, A152741.P18075963729041929431.a, A152741.P7980858268798399893.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A152741

/-! ## A152741.P7980858268798399893

`a(n-1)+13*n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152741

/-- `a(n-1)+13*n` -/
def P7980858268798399893.Spec : Prop :=
  ∀ n, (P7980858268798399893.a n : ℤ) = A152741 n

theorem P7980858268798399893.correct : P7980858268798399893.Spec := by
  intro n
  simp only [A152741]

end A152741

/-! ## A152741.P15717293287284642589

`A069126(n+1)-1`
-/

namespace A152741.P15717293287284642589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069126 (n + 1) - 1

end

end A152741.P15717293287284642589

namespace A152741

/-- `A069126(n+1)-1` -/
def P15717293287284642589.Spec : Prop :=
  ∀ n, P15717293287284642589.a n = A152741 n

end A152741

/-! ## A152741.P11709614728463337181

`∑[a(n-1)+13]` with `a(0)=0`
-/

namespace A152741.P11709614728463337181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152741.P11709614728463337181

namespace A152741

/-- `∑[a(n-1)+13]` -/
def P11709614728463337181.Spec : Prop :=
  ∀ n, (P11709614728463337181.a n : ℤ) = A152741 n

end A152741

/-! ## A152741.P10875017012848520830

`∑[ogf(13x/(1-2x+x^2))]`
-/

namespace A152741.P10875017012848520830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 13] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152741.P10875017012848520830

namespace A152741

/-- `∑[ogf(13x/(1-2x+x^2))]` -/
def P10875017012848520830.Spec : Prop :=
  ∀ n, P10875017012848520830.a n = A152741 n

end A152741

/-! ## A152741.P2627000367141358643

`ogf(13x/(1-3x+3x^2-x^3))`
-/

namespace A152741.P2627000367141358643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 13] [1, -3, 3, -1] n

end

end A152741.P2627000367141358643

namespace A152741

/-- `ogf(13x/(1-3x+3x^2-x^3))` -/
def P2627000367141358643.Spec : Prop :=
  ∀ n, P2627000367141358643.a n = A152741 n

end A152741

/-! ## A152741.P4312598862641441682

`13*n²-a(n-1)` with `a(0)=0`
-/

namespace A152741.P4312598862641441682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (13 * n ^ 2 : ℤ) - a (n - 1)

end

end A152741.P4312598862641441682

namespace A152741

/-- `13*n²-a(n-1)` -/
def P4312598862641441682.Spec : Prop :=
  ∀ n, P4312598862641441682.a n = A152741 n

end A152741

/-! ## A152741.P942254114613898875

`14*n-(n-a(n-1))` with `a(0)=0`
-/

namespace A152741.P942254114613898875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (14 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A152741.P942254114613898875

namespace A152741

/-- `14*n-(n-a(n-1))` -/
def P942254114613898875.Spec : Prop :=
  ∀ n, P942254114613898875.a n = A152741 n

end A152741

/-! ## A152741.P15594767711440559015

`A173307(n)/2`
-/

namespace A152741.P15594767711440559015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173307 n : ℚ) / 2

end

end A152741.P15594767711440559015

namespace A152741

/-- `A173307(n)/2` -/
def P15594767711440559015.Spec : Prop :=
  ∀ n, P15594767711440559015.a n = (A152741 n : ℚ)

end A152741

/-! ## A152741.P3568694374767668781

`A049598(n)+∑[n]`
-/

namespace A152741.P3568694374767668781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049598 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A152741.P3568694374767668781

namespace A152741

/-- `A049598(n)+∑[n]` -/
def P3568694374767668781.Spec : Prop :=
  ∀ n, P3568694374767668781.a n = A152741 n

end A152741

/-! ## A152741.P14607820353840327811

`A163756(n)-∑[n]`
-/

namespace A152741.P14607820353840327811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163756 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A152741.P14607820353840327811

namespace A152741

/-- `A163756(n)-∑[n]` -/
def P14607820353840327811.Spec : Prop :=
  ∀ n, P14607820353840327811.a n = A152741 n

end A152741

/-! ## A152741.P1774102485569155077

`A220083(n)-(1-n)²`
-/

namespace A152741.P1774102485569155077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220083 n - (1 - (n : ℤ)) ^ 2

end

end A152741.P1774102485569155077

namespace A152741

/-- `A220083(n)-(1-n)²` -/
def P1774102485569155077.Spec : Prop :=
  ∀ n, P1774102485569155077.a n = A152741 n

end A152741

/-! ## A152741.P8574718465266124469

`A302906(n)+(2*n)²`
-/

namespace A152741.P8574718465266124469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302906 n + ((2 * n) ^ 2 : ℤ)

end

end A152741.P8574718465266124469

namespace A152741

/-- `A302906(n)+(2*n)²` -/
def P8574718465266124469.Spec : Prop :=
  ∀ n, P8574718465266124469.a n = A152741 n

end A152741

/-! ## A152741.P2190190650714629131

`(A195028(n)-n²)/2`
-/

namespace A152741.P2190190650714629131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195028 n - (n ^ 2 : ℤ) : ℚ) / 2

end

end A152741.P2190190650714629131

namespace A152741

/-- `(A195028(n)-n²)/2` -/
def P2190190650714629131.Spec : Prop :=
  ∀ n, P2190190650714629131.a n = (A152741 n : ℚ)

end A152741

/-! ## A152741.P14148758956958765615

`7*(n²+n)-A000217(n)`
-/

namespace A152741.P14148758956958765615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * (n ^ 2 + n) : ℤ) - A000217 n

end

end A152741.P14148758956958765615

namespace A152741

/-- `7*(n²+n)-A000217(n)` -/
def P14148758956958765615.Spec : Prop :=
  ∀ n, P14148758956958765615.a n = A152741 n

end A152741

/-! ## A152741.P12997395849327071848

`A022270(n)+A008589(n)`
-/

namespace A152741.P12997395849327071848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022270 n + A008589 n

end

end A152741.P12997395849327071848

namespace A152741

/-- `A022270(n)+A008589(n)` -/
def P12997395849327071848.Spec : Prop :=
  ∀ n, P12997395849327071848.a n = A152741 n

end A152741

/-! ## A152741.P16141369810480362529

`A022271(n)+A008588(n)`
-/

namespace A152741.P16141369810480362529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022271 n + A008588 n

end

end A152741.P16141369810480362529

namespace A152741

/-- `A022271(n)+A008588(n)` -/
def P16141369810480362529.Spec : Prop :=
  ∀ n, P16141369810480362529.a n = A152741 n

end A152741

/-! ## A152741.P12219468014855985626

`A028560(n)+A022269(n)`
-/

namespace A152741.P12219468014855985626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028560 n + A022269 n

end

end A152741.P12219468014855985626

namespace A152741

/-- `A028560(n)+A022269(n)` -/
def P12219468014855985626.Spec : Prop :=
  ∀ n, P12219468014855985626.a n = A152741 n

end A152741

/-! ## A152741.P15498018996583201369

`A028563(n)+A022268(n)`
-/

namespace A152741.P15498018996583201369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028563 n + A022268 n

end

end A152741.P15498018996583201369

namespace A152741

/-- `A028563(n)+A022268(n)` -/
def P15498018996583201369.Spec : Prop :=
  ∀ n, P15498018996583201369.a n = A152741 n

end A152741

/-! ## A152741.P16596408470391798605

`A028896(n)+A024966(n)`
-/

namespace A152741.P16596408470391798605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 n + A024966 n

end

end A152741.P16596408470391798605

namespace A152741

/-- `A028896(n)+A024966(n)` -/
def P16596408470391798605.Spec : Prop :=
  ∀ n, P16596408470391798605.a n = A152741 n

end A152741

/-!
# A152742: 13 times the squares: a(n) = 13*n^2.

The programs for A152742, the canonical program `A152742.P4687310680346739208` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152742 has offset 0).

The definition of A152742 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13*n²` (program `A152742.P4687310680346739208`, by `A152742.P4687310680346739208.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152742.P4687310680346739208

`13*n²`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152742

/-- `13*n²` -/
def P4687310680346739208.Spec : Prop :=
  ∀ n, (P4687310680346739208.a n : ℤ) = A152742 n

theorem P4687310680346739208.correct : P4687310680346739208.Spec := by
  intro n
  simp only [A152742]

end A152742

/-!
# A152743: 6 times pentagonal numbers: a(n) = 3*n*(3*n-1).

The programs for A152743, the canonical program `A152743.P7601734963186893208` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152743 has offset 0).

The definition of A152743 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(3*n-1)` (program `A152743.P7601734963186893208`, by `A152743.P7601734963186893208.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152743.P2528364559890654794

`9*n²-3*n`
-/

namespace A152743.P2528364559890654794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n ^ 2 : ℤ) - (3 * n : ℤ)

end

end A152743.P2528364559890654794

namespace A152743

/-- `9*n²-3*n` -/
def P2528364559890654794.Spec : Prop :=
  ∀ n, P2528364559890654794.a n = A152743 n

theorem P2528364559890654794.correct : P2528364559890654794.Spec := by
  intro n
  simp only [A152743, Nat.add_sub_cancel, A152743.P2528364559890654794.a, A152743.P7601734963186893208.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A152743

/-! ## A152743.P7601734963186893208

`3*n*(3*n-1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152743

/-- `3*n*(3*n-1)` -/
def P7601734963186893208.Spec : Prop :=
  ∀ n, P7601734963186893208.a n = A152743 n

theorem P7601734963186893208.correct : P7601734963186893208.Spec := by
  intro n
  simp only [A152743]

end A152743

/-! ## A152743.P2838166955549985635

`∑[a(n-1)+18]` with `a(0)=0, a(1)=6`
-/

namespace A152743.P2838166955549985635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152743.P2838166955549985635

namespace A152743

/-- `∑[a(n-1)+18]` -/
def P2838166955549985635.Spec : Prop :=
  ∀ n, (P2838166955549985635.a n : ℤ) = A152743 n

end A152743

/-! ## A152743.P11983199727892118223

`record[(n+1)^(n%3)-(n+1)]`
-/

namespace A152743.P11983199727892118223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n % 3) : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152743.P11983199727892118223

namespace A152743

/-- `record[(n+1)^(n%3)-(n+1)]` -/
def P11983199727892118223.Spec : Prop :=
  ∀ n, P11983199727892118223.a n = A152743 n

end A152743

/-! ## A152743.P8192912985229831453

`A153792(n)/2`
-/

namespace A152743.P8192912985229831453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153792 n : ℚ) / 2

end

end A152743.P8192912985229831453

namespace A152743

/-- `A153792(n)/2` -/
def P8192912985229831453.Spec : Prop :=
  ∀ n, P8192912985229831453.a n = (A152743 n : ℚ)

end A152743

/-! ## A152743.P14478474448240189517

`floor(A081589(n)/2)`
-/

namespace A152743.P14478474448240189517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081589 n : ℚ) / 2⌋

end

end A152743.P14478474448240189517

namespace A152743

/-- `floor(A081589(n)/2)` -/
def P14478474448240189517.Spec : Prop :=
  ∀ n, P14478474448240189517.a n = A152743 n

end A152743

/-! ## A152743.P4786116688430186451

`(A174371(n)-1)/4`
-/

namespace A152743.P4786116688430186451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174371 n - 1 : ℚ) / 4

end

end A152743.P4786116688430186451

namespace A152743

/-- `(A174371(n)-1)/4` -/
def P4786116688430186451.Spec : Prop :=
  ∀ n, P4786116688430186451.a n = (A152743 n : ℚ)

end A152743

/-!
# A152744: 7 times pentagonal numbers: a(n) = 7*n*(3*n-1)/2.

The programs for A152744, the canonical program `A152744.P4318296641254821672` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152744 has offset 0).

The definition of A152744 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*n*(3*n-1)/2` (program `A152744.P7250283224818081689`, by `A152744.P7250283224818081689.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152744.P3467818886510213949

`(21*n²-7*n)/2`
-/

namespace A152744.P3467818886510213949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((21 * n ^ 2 : ℤ) - (7 * n : ℤ) : ℚ) / 2

end

end A152744.P3467818886510213949

namespace A152744

/-- `(21*n²-7*n)/2` -/
def P3467818886510213949.Spec : Prop :=
  ∀ n, P3467818886510213949.a n = (A152744 n : ℚ)

theorem P3467818886510213949.correct : P3467818886510213949.Spec := by
  intro n
  induction n with
  | zero => simp [A152744, A152744.P3467818886510213949.a, A152744.P4318296641254821672.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A152744, Nat.add_sub_cancel, A152744.P3467818886510213949.a, A152744.P4318296641254821672.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A152744

/-! ## A152744.P7250283224818081689

`7*n*(3*n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152744.P7250283224818081689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * ((n : ℚ) * (((3 * n : ℤ) - 1 : ℚ) / 2))

end

end A152744.P7250283224818081689

namespace A152744

/-- `7*n*(3*n-1)/2` -/
def P7250283224818081689.Spec : Prop :=
  ∀ n, P7250283224818081689.a n = (A152744 n : ℚ)

theorem P7250283224818081689.correct : P7250283224818081689.Spec := by
  intro n
  induction n with
  | zero => simp [A152744, A152744.P7250283224818081689.a, A152744.P4318296641254821672.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A152744, Nat.add_sub_cancel, A152744.P7250283224818081689.a, A152744.P4318296641254821672.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A152744

/-! ## A152744.P4318296641254821672

`a(n-1)+21*n-14` with `a(0)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152744

/-- `a(n-1)+21*n-14` -/
def P4318296641254821672.Spec : Prop :=
  ∀ n, P4318296641254821672.a n = A152744 n

theorem P4318296641254821672.correct : P4318296641254821672.Spec := by
  intro n
  simp only [A152744]

end A152744

/-! ## A152744.P17934570255185080770

`∑[a(n-1)+21]` with `a(0)=0, a(1)=7`
-/

namespace A152744.P17934570255185080770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  f1 (n - 1) + 21

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152744.P17934570255185080770

namespace A152744

/-- `∑[a(n-1)+21]` -/
def P17934570255185080770.Spec : Prop :=
  ∀ n, (P17934570255185080770.a n : ℤ) = A152744 n

end A152744

/-! ## A152744.P15369992882507171717

`∑[6*n]+15*C(n, 2)+n`
-/

namespace A152744.P15369992882507171717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (15 * Nat.choose n 2 + n)

end

end A152744.P15369992882507171717

namespace A152744

/-- `∑[6*n]+15*C(n, 2)+n` -/
def P15369992882507171717.Spec : Prop :=
  ∀ n, (P15369992882507171717.a n : ℤ) = A152744 n

end A152744

/-! ## A152744.P6512211381763929241

`3*A218471(n)+n`
-/

namespace A152744.P6512211381763929241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A218471 n + (n : ℤ)

end

end A152744.P6512211381763929241

namespace A152744

/-- `3*A218471(n)+n` -/
def P6512211381763929241.Spec : Prop :=
  ∀ n, P6512211381763929241.a n = A152744 n

end A152744

/-! ## A152744.P13388065160861034402

`A022278(n)-3*n`
-/

namespace A152744.P13388065160861034402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022278 n - (3 * n : ℤ)

end

end A152744.P13388065160861034402

namespace A152744

/-- `A022278(n)-3*n` -/
def P13388065160861034402.Spec : Prop :=
  ∀ n, P13388065160861034402.a n = A152744 n

end A152744

/-! ## A152744.P12577118373472313963

`A152759(n)+4*n`
-/

namespace A152744.P12577118373472313963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152759 n + (4 * n : ℤ)

end

end A152744.P12577118373472313963

namespace A152744

/-- `A152759(n)+4*n` -/
def P12577118373472313963.Spec : Prop :=
  ∀ n, P12577118373472313963.a n = A152744 n

end A152744

/-! ## A152744.P8773432429101482090

`A022279(n)-4*n`
-/

namespace A152744.P8773432429101482090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022279 n - (4 * n : ℤ)

end

end A152744.P8773432429101482090

namespace A152744

/-- `A022279(n)-4*n` -/
def P8773432429101482090.Spec : Prop :=
  ∀ n, P8773432429101482090.a n = A152744 n

end A152744

/-! ## A152744.P18005289898269108314

`A226491(n)+5*n`
-/

namespace A152744.P18005289898269108314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226491 n + (5 * n : ℤ)

end

end A152744.P18005289898269108314

namespace A152744

/-- `A226491(n)+5*n` -/
def P18005289898269108314.Spec : Prop :=
  ∀ n, P18005289898269108314.a n = A152744 n

end A152744

/-! ## A152744.P10674618983644299488

`∑[n]+A195018(n)-n`
-/

namespace A152744.P10674618983644299488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A195018 n - (n : ℤ))

end

end A152744.P10674618983644299488

namespace A152744

/-- `∑[n]+A195018(n)-n` -/
def P10674618983644299488.Spec : Prop :=
  ∀ n, P10674618983644299488.a n = A152744 n

end A152744

/-! ## A152744.P5942235976289239615

`A022280(n)-n*(n+3)`
-/

namespace A152744.P5942235976289239615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022280 n - (n * (n + 3) : ℤ)

end

end A152744.P5942235976289239615

namespace A152744

/-- `A022280(n)-n*(n+3)` -/
def P5942235976289239615.Spec : Prop :=
  ∀ n, P5942235976289239615.a n = A152744 n

end A152744

/-! ## A152744.P15373099052382683919

`∑[n]+2*A147874(n+1)`
-/

namespace A152744.P15373099052382683919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * A147874 (n + 1)

end

end A152744.P15373099052382683919

namespace A152744

/-- `∑[n]+2*A147874(n+1)` -/
def P15373099052382683919.Spec : Prop :=
  ∀ n, P15373099052382683919.a n = A152744 n

end A152744

/-! ## A152744.P12311285827133324189

`A185918(n)-(∑[3*n]-1)`
-/

namespace A152744.P12311285827133324189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185918 n - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A152744.P12311285827133324189

namespace A152744

/-- `A185918(n)-(∑[3*n]-1)` -/
def P12311285827133324189.Spec : Prop :=
  ∀ n, P12311285827133324189.a n = A152744 n

end A152744

/-! ## A152744.P3094452560217493555

`3*(A000567(n)+∑[n])+n`
-/

namespace A152744.P3094452560217493555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A000567 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) + (n : ℤ)

end

end A152744.P3094452560217493555

namespace A152744

/-- `3*(A000567(n)+∑[n])+n` -/
def P3094452560217493555.Spec : Prop :=
  ∀ n, P3094452560217493555.a n = A152744 n

end A152744

/-! ## A152744.P3745694250766116752

`A051869(n)+6*C(n+1, 2)`
-/

namespace A152744.P3745694250766116752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051869 n + (6 * Nat.choose (n + 1) 2 : ℤ)

end

end A152744.P3745694250766116752

namespace A152744

/-- `A051869(n)+6*C(n+1, 2)` -/
def P3745694250766116752.Spec : Prop :=
  ∀ n, P3745694250766116752.a n = A152744 n

end A152744

/-! ## A152744.P13079083581865898286

`12*n²+1-A095794(n+1)`
-/

namespace A152744.P13079083581865898286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n ^ 2 + 1 : ℤ) - A095794 (n + 1)

end

end A152744.P13079083581865898286

namespace A152744

/-- `12*n²+1-A095794(n+1)` -/
def P13079083581865898286.Spec : Prop :=
  ∀ n, P13079083581865898286.a n = A152744 n

end A152744

/-! ## A152744.P4888009124339567377

`A244803(n+1)-∑[3*n+1]`
-/

namespace A152744.P4888009124339567377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244803 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A152744.P4888009124339567377

namespace A152744

/-- `A244803(n+1)-∑[3*n+1]` -/
def P4888009124339567377.Spec : Prop :=
  ∀ n, P4888009124339567377.a n = A152744 n

end A152744

/-!
# A152745: 5 times hexagonal numbers: 5*n*(2*n-1).

The programs for A152745, the canonical program `A152745.P15952758789125082039` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152745 has offset 0).

The definition of A152745 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n*(2*n-1)` (program `A152745.P15952758789125082039`, by `A152745.P15952758789125082039.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152745.P8787785283800052802

`10*n²-5*n`
-/

namespace A152745.P8787785283800052802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n ^ 2 : ℤ) - (5 * n : ℤ)

end

end A152745.P8787785283800052802

namespace A152745

/-- `10*n²-5*n` -/
def P8787785283800052802.Spec : Prop :=
  ∀ n, P8787785283800052802.a n = A152745 n

theorem P8787785283800052802.correct : P8787785283800052802.Spec := by
  intro n
  simp only [A152745, Nat.add_sub_cancel, A152745.P8787785283800052802.a, A152745.P15952758789125082039.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A152745

/-! ## A152745.P15952758789125082039

`5*n*(2*n-1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152745

/-- `5*n*(2*n-1)` -/
def P15952758789125082039.Spec : Prop :=
  ∀ n, P15952758789125082039.a n = A152745 n

theorem P15952758789125082039.correct : P15952758789125082039.Spec := by
  intro n
  simp only [A152745]

end A152745

/-! ## A152745.P12665628728753023784

`∑[a(n-1)+20]` with `a(0)=0, a(1)=5`
-/

namespace A152745.P12665628728753023784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  f1 (n - 1) + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152745.P12665628728753023784

namespace A152745

/-- `∑[a(n-1)+20]` -/
def P12665628728753023784.Spec : Prop :=
  ∀ n, (P12665628728753023784.a n : ℤ) = A152745 n

end A152745

/-! ## A152745.P4321342679162114325

`5*n*record[lcm(2, n)]/2`
-/

namespace A152745.P4321342679162114325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * (n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ) / 2

end

end A152745.P4321342679162114325

namespace A152745

/-- `5*n*record[lcm(2, n)]/2` -/
def P4321342679162114325.Spec : Prop :=
  ∀ n, P4321342679162114325.a n = (A152745 n : ℚ)

end A152745

/-! ## A152745.P7133578215033699550

`A144560(n)/2`
-/

namespace A152745.P7133578215033699550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144560 n : ℚ) / 2

end

end A152745.P7133578215033699550

namespace A152745

/-- `A144560(n)/2` -/
def P7133578215033699550.Spec : Prop :=
  ∀ n, P7133578215033699550.a n = (A152745 n : ℚ)

end A152745

/-! ## A152745.P15537953599963805216

`∑[10*A000567(n)]/(n+1)`
-/

namespace A152745.P15537953599963805216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000567 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A152745.P15537953599963805216

namespace A152745

/-- `∑[10*A000567(n)]/(n+1)` -/
def P15537953599963805216.Spec : Prop :=
  ∀ n, P15537953599963805216.a n = (A152745 n : ℚ)

end A152745

/-!
# A152746: Six times hexagonal numbers: 6*n*(2*n-1).

The programs for A152746, the canonical program `A152746.P7278957183660633397` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152746 has offset 0).

The definition of A152746 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n*(2*n-1)` (program `A152746.P7278957183660633397`, by `A152746.P7278957183660633397.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152746.P9507554799562380855

`12*n²-6*n`
-/

namespace A152746.P9507554799562380855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n ^ 2 : ℤ) - (6 * n : ℤ)

end

end A152746.P9507554799562380855

namespace A152746

/-- `12*n²-6*n` -/
def P9507554799562380855.Spec : Prop :=
  ∀ n, P9507554799562380855.a n = A152746 n

theorem P9507554799562380855.correct : P9507554799562380855.Spec := by
  intro n
  simp only [A152746, Nat.add_sub_cancel, A152746.P9507554799562380855.a, A152746.P7278957183660633397.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A152746

/-! ## A152746.P7278957183660633397

`6*n*(2*n-1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152746

/-- `6*n*(2*n-1)` -/
def P7278957183660633397.Spec : Prop :=
  ∀ n, P7278957183660633397.a n = A152746 n

theorem P7278957183660633397.correct : P7278957183660633397.Spec := by
  intro n
  simp only [A152746]

end A152746

/-! ## A152746.P11489841769842293095

`∑[a(n-1)+24]` with `a(0)=0, a(1)=6`
-/

namespace A152746.P11489841769842293095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152746.P11489841769842293095

namespace A152746

/-- `∑[a(n-1)+24]` -/
def P11489841769842293095.Spec : Prop :=
  ∀ n, (P11489841769842293095.a n : ℤ) = A152746 n

end A152746

/-! ## A152746.P10816319364907907550

`3*n*record[lcm(4, n)]/2`
-/

namespace A152746.P10816319364907907550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * (n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ) / 2

end

end A152746.P10816319364907907550

namespace A152746

/-- `3*n*record[lcm(4, n)]/2` -/
def P10816319364907907550.Spec : Prop :=
  ∀ n, P10816319364907907550.a n = (A152746 n : ℚ)

end A152746

/-! ## A152746.P10313100625973946975

`record[n*(n+1)*3^(n%2)]`
-/

namespace A152746.P10313100625973946975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((n + 1) * 3 ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152746.P10313100625973946975

namespace A152746

/-- `record[n*(n+1)*3^(n%2)]` -/
def P10313100625973946975.Spec : Prop :=
  ∀ n, (P10313100625973946975.a n : ℤ) = A152746 n

end A152746

/-! ## A152746.P4921004572724011981

`record[(n+1)*n*(2*and(1, n)+1)]`
-/

namespace A152746.P4921004572724011981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n * (2 * Nat.land 1 n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152746.P4921004572724011981

namespace A152746

/-- `record[(n+1)*n*(2*and(1, n)+1)]` -/
def P4921004572724011981.Spec : Prop :=
  ∀ n, (P4921004572724011981.a n : ℤ) = A152746 n

end A152746

/-! ## A152746.P10983982520127550332

`Δ[lcm(n+1-(n-1+n)², n-1)]`
-/

namespace A152746.P10983982520127550332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1 : ℤ) - ((n : ℤ) - 1 + (n : ℤ)) ^ 2) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A152746.P10983982520127550332

namespace A152746

/-- `Δ[lcm(n+1-(n-1+n)², n-1)]` -/
def P10983982520127550332.Spec : Prop :=
  ∀ n, P10983982520127550332.a n = A152746 n

end A152746

/-! ## A152746.P13168368415567023850

`A143698(n)/2`
-/

namespace A152746.P13168368415567023850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143698 n : ℚ) / 2

end

end A152746.P13168368415567023850

namespace A152746

/-- `A143698(n)/2` -/
def P13168368415567023850.Spec : Prop :=
  ∀ n, P13168368415567023850.a n = (A152746 n : ℚ)

end A152746

/-! ## A152746.P2104804335996076360

`A060787(n+2)/3`
-/

namespace A152746.P2104804335996076360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060787 (n + 2) : ℚ) / 3

end

end A152746.P2104804335996076360

namespace A152746

/-- `A060787(n+2)/3` -/
def P2104804335996076360.Spec : Prop :=
  ∀ n, P2104804335996076360.a n = (A152746 n : ℚ)

end A152746

/-!
# A152747: Decimal expansion of log_9 (2).

The programs for A152747, there is no canonical definition to state claims against.
-/

/-! ## A152747.P14169283606972149248

`A154947(n+1)`
-/

namespace A152747.P14169283606972149248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154947 (n + 1 + 1)

end

end A152747.P14169283606972149248

/-!
# A152748: Decimal expansion of log_11 (2).

The programs for A152748, there is no canonical definition to state claims against.
-/

/-! ## A152748.P1276840628088418990

`A155748(n+1)`
-/

namespace A152748.P1276840628088418990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155748 (n + 1 + 1)

end

end A152748.P1276840628088418990

/-!
# A152749: a(n) = (n+1)*(3*n+1)/4 for n odd, a(n) = n*(3*n+2)/4 for n even.

The programs for A152749, the canonical program `A152749.P4696317421695613639` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152749 has offset 0).

The definition of A152749 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152749.P10620078498980463256

`(6*n²+6*n+1-(2*n+1)*(-1)^n)/8`
-/

namespace A152749.P10620078498980463256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * n ^ 2 + 6 * n + 1 : ℤ) - (2 * n + 1 : ℤ) * (-1) ^ n : ℚ) / 8

end

end A152749.P10620078498980463256

namespace A152749

/-- `(6*n²+6*n+1-(2*n+1)*(-1)^n)/8` -/
def P10620078498980463256.Spec : Prop :=
  ∀ n, P10620078498980463256.a n = (A152749 n : ℚ)

theorem P10620078498980463256.correct : P10620078498980463256.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A152749, Nat.add_sub_cancel, A152749.P10620078498980463256.a, A152749.P4696317421695613639.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A152749, Nat.add_sub_cancel, A152749.P10620078498980463256.a, A152749.P4696317421695613639.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A152749

/-! ## A152749.P4696317421695613639

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=10, a(4)=14`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152749

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P4696317421695613639.Spec : Prop :=
  ∀ n, P4696317421695613639.a n = A152749 n

theorem P4696317421695613639.correct : P4696317421695613639.Spec := by
  intro n
  simp only [A152749]

end A152749

/-! ## A152749.P17657644457986438226

`2*A001318(n)`
-/

namespace A152749.P17657644457986438226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001318 n

end

end A152749.P17657644457986438226

namespace A152749

/-- `2*A001318(n)` -/
def P17657644457986438226.Spec : Prop :=
  ∀ n, P17657644457986438226.a n = A152749 n

end A152749

/-! ## A152749.P5823653232475558998

`∑[lcm(2, n)]`
-/

namespace A152749.P5823653232475558998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152749.P5823653232475558998

namespace A152749

/-- `∑[lcm(2, n)]` -/
def P5823653232475558998.Spec : Prop :=
  ∀ n, (P5823653232475558998.a n : ℤ) = A152749 n

end A152749

/-! ## A152749.P11272288736570639797

`∑[2*gcd(n, ∑[n])]`
-/

namespace A152749.P11272288736570639797
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152749.P11272288736570639797

namespace A152749

/-- `∑[2*gcd(n, ∑[n])]` -/
def P11272288736570639797.Spec : Prop :=
  ∀ n, (P11272288736570639797.a n : ℤ) = A152749 n

end A152749

/-! ## A152749.P14022096059515479209

`∑[n*(n%2+1)]`
-/

namespace A152749.P14022096059515479209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152749.P14022096059515479209

namespace A152749

/-- `∑[n*(n%2+1)]` -/
def P14022096059515479209.Spec : Prop :=
  ∀ n, (P14022096059515479209.a n : ℤ) = A152749 n

end A152749

/-! ## A152749.P2121841538620280604

`∑[n*(and(1, n)+1)]`
-/

namespace A152749.P2121841538620280604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.land 1 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152749.P2121841538620280604

namespace A152749

/-- `∑[n*(and(1, n)+1)]` -/
def P2121841538620280604.Spec : Prop :=
  ∀ n, (P2121841538620280604.a n : ℤ) = A152749 n

end A152749

/-! ## A152749.P3683605220991274022

`∑[n*2^and(1, n)]`
-/

namespace A152749.P3683605220991274022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 2 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152749.P3683605220991274022

namespace A152749

/-- `∑[n*2^and(1, n)]` -/
def P3683605220991274022.Spec : Prop :=
  ∀ n, (P3683605220991274022.a n : ℤ) = A152749 n

end A152749

/-! ## A152749.P8800171358846001112

`∑[n*C(2, and(1, n))]`
-/

namespace A152749.P8800171358846001112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose 2 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152749.P8800171358846001112

namespace A152749

/-- `∑[n*C(2, and(1, n))]` -/
def P8800171358846001112.Spec : Prop :=
  ∀ n, (P8800171358846001112.a n : ℤ) = A152749 n

end A152749

/-! ## A152749.P8482362921030668967

`∑[C(n, xor(1, n))+n]`
-/

namespace A152749.P8482362921030668967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.xor 1 n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152749.P8482362921030668967

namespace A152749

/-- `∑[C(n, xor(1, n))+n]` -/
def P8482362921030668967.Spec : Prop :=
  ∀ n, (P8482362921030668967.a n : ℤ) = A152749 n

end A152749

/-! ## A152749.P4971679942026375205

`∑[n*((2*n)%4)!]`
-/

namespace A152749.P4971679942026375205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial (2 * n % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152749.P4971679942026375205

namespace A152749

/-- `∑[n*((2*n)%4)!]` -/
def P4971679942026375205.Spec : Prop :=
  ∀ n, (P4971679942026375205.a n : ℤ) = A152749 n

end A152749

/-! ## A152749.P5314435493046329755

`∑[n*(2*and(1, n))!]`
-/

namespace A152749.P5314435493046329755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial (2 * Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152749.P5314435493046329755

namespace A152749

/-- `∑[n*(2*and(1, n))!]` -/
def P5314435493046329755.Spec : Prop :=
  ∀ n, (P5314435493046329755.a n : ℤ) = A152749 n

end A152749

/-! ## A152749.P5168681187552424010

`∑[n*(2-(n-1)%2)]`
-/

namespace A152749.P5168681187552424010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - Int.tmod ((n : ℤ) - 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152749.P5168681187552424010

namespace A152749

/-- `∑[n*(2-(n-1)%2)]` -/
def P5168681187552424010.Spec : Prop :=
  ∀ n, P5168681187552424010.a n = A152749 n

end A152749

/-! ## A152749.P3814150745251856828

`∑[n*(2-and(1, n-1))]`
-/

namespace A152749.P3814150745251856828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - Int.land 1 ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152749.P3814150745251856828

namespace A152749

/-- `∑[n*(2-and(1, n-1))]` -/
def P3814150745251856828.Spec : Prop :=
  ∀ n, P3814150745251856828.a n = A152749 n

end A152749

/-! ## A152749.P4233869691923293085

`∑[n*(or(1, 1-n)+n)]`
-/

namespace A152749.P4233869691923293085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (Int.lor 1 (1 - (n : ℤ)) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152749.P4233869691923293085

namespace A152749

/-- `∑[n*(or(1, 1-n)+n)]` -/
def P4233869691923293085.Spec : Prop :=
  ∀ n, P4233869691923293085.a n = A152749 n

end A152749

/-! ## A152749.P12984048077795291223

`∑[n*(n-or(1, n-2))]`
-/

namespace A152749.P12984048077795291223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - Int.lor 1 ((n : ℤ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152749.P12984048077795291223

namespace A152749

/-- `∑[n*(n-or(1, n-2))]` -/
def P12984048077795291223.Spec : Prop :=
  ∀ n, P12984048077795291223.a n = A152749 n

end A152749

/-! ## A152749.P617950249175793508

`∑[or(1, n)%(n+1)+n]`
-/

namespace A152749.P617950249175793508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n % (n + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152749.P617950249175793508

namespace A152749

/-- `∑[or(1, n)%(n+1)+n]` -/
def P617950249175793508.Spec : Prop :=
  ∀ n, (P617950249175793508.a n : ℤ) = A152749 n

end A152749

/-! ## A152749.P10589661330836378790

`∑[-n*or(n+1, -2)]`
-/

namespace A152749.P10589661330836378790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * Int.lor (n + 1 : ℤ) (-2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152749.P10589661330836378790

namespace A152749

/-- `∑[-n*or(n+1, -2)]` -/
def P10589661330836378790.Spec : Prop :=
  ∀ n, P10589661330836378790.a n = A152749 n

end A152749

/-! ## A152749.P13307214427513258321

`∑[-2*n/or(n, -2)]`
-/

namespace A152749.P13307214427513258321
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((2 * n : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152749.P13307214427513258321

namespace A152749

/-- `∑[-2*n/or(n, -2)]` -/
def P13307214427513258321.Spec : Prop :=
  ∀ n, P13307214427513258321.a n = (A152749 n : ℚ)

end A152749

/-! ## A152749.P4728390649314332086

`∑[n*∑[-a(n-1)]]` with `a(0)=1, a(1)=1`
-/

namespace A152749.P4728390649314332086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  -f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152749.P4728390649314332086

namespace A152749

/-- `∑[n*∑[-a(n-1)]]` -/
def P4728390649314332086.Spec : Prop :=
  ∀ n, P4728390649314332086.a n = A152749 n

end A152749

/-!
# A152750: Eight times hexagonal numbers: a(n) = 8*n*(2*n-1).

The programs for A152750, the canonical program `A152750.P10918020328823162673` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152750 has offset 0).

The definition of A152750 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n*(2*n-1)` (program `A152750.P10918020328823162673`, by `A152750.P10918020328823162673.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152750.P33524219749388428

`16*n²-8*n`
-/

namespace A152750.P33524219749388428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (16 * n ^ 2 : ℤ) - (8 * n : ℤ)

end

end A152750.P33524219749388428

namespace A152750

/-- `16*n²-8*n` -/
def P33524219749388428.Spec : Prop :=
  ∀ n, P33524219749388428.a n = A152750 n

theorem P33524219749388428.correct : P33524219749388428.Spec := by
  intro n
  simp only [A152750, Nat.add_sub_cancel, A152750.P33524219749388428.a, A152750.P10918020328823162673.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A152750

/-! ## A152750.P10918020328823162673

`8*n*(2*n-1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152750

/-- `8*n*(2*n-1)` -/
def P10918020328823162673.Spec : Prop :=
  ∀ n, P10918020328823162673.a n = A152750 n

theorem P10918020328823162673.correct : P10918020328823162673.Spec := by
  intro n
  simp only [A152750]

end A152750

/-! ## A152750.P3153247820362372891

`∑[a(n-1)+32]` with `a(0)=0, a(1)=8`
-/

namespace A152750.P3153247820362372891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 8] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152750.P3153247820362372891

namespace A152750

/-- `∑[a(n-1)+32]` -/
def P3153247820362372891.Spec : Prop :=
  ∀ n, (P3153247820362372891.a n : ℤ) = A152750 n

end A152750

/-! ## A152750.P12723469831673358548

`record[2*n*(n+1)*2*and(1, n)]`
-/

namespace A152750.P12723469831673358548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * ((n + 1) * (2 * Nat.land 1 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152750.P12723469831673358548

namespace A152750

/-- `record[2*n*(n+1)*2*and(1, n)]` -/
def P12723469831673358548.Spec : Prop :=
  ∀ n, (P12723469831673358548.a n : ℤ) = A152750 n

end A152750

/-! ## A152750.P16394013325994637607

`lcm(n, A067239(n))`
-/

namespace A152750.P16394013325994637607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A067239 n)

end

end A152750.P16394013325994637607

namespace A152750

/-- `lcm(n, A067239(n))` -/
def P16394013325994637607.Spec : Prop :=
  ∀ n, (P16394013325994637607.a n : ℤ) = A152750 n

end A152750

/-! ## A152750.P7310995085799870643

`(A081593(n)-1)/2`
-/

namespace A152750.P7310995085799870643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081593 n - 1 : ℚ) / 2

end

end A152750.P7310995085799870643

namespace A152750

/-- `(A081593(n)-1)/2` -/
def P7310995085799870643.Spec : Prop :=
  ∀ n, P7310995085799870643.a n = (A152750 n : ℚ)

end A152750

/-!
# A152751: 3 times octagonal numbers: a(n) = 3*n*(3*n-2).

The programs for A152751, the canonical program `A152751.P7963829939156331589` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152751 has offset 0).

The definition of A152751 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(3*n-2)` (program `A152751.P7963829939156331589`, by `A152751.P7963829939156331589.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152751.P8581439308832197273

`9*n²-6*n`
-/

namespace A152751.P8581439308832197273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n ^ 2 : ℤ) - (6 * n : ℤ)

end

end A152751.P8581439308832197273

namespace A152751

/-- `9*n²-6*n` -/
def P8581439308832197273.Spec : Prop :=
  ∀ n, P8581439308832197273.a n = A152751 n

theorem P8581439308832197273.correct : P8581439308832197273.Spec := by
  intro n
  simp only [A152751, Nat.add_sub_cancel, A152751.P8581439308832197273.a, A152751.P7963829939156331589.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A152751

/-! ## A152751.P7963829939156331589

`3*n*(3*n-2)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152751

/-- `3*n*(3*n-2)` -/
def P7963829939156331589.Spec : Prop :=
  ∀ n, P7963829939156331589.a n = A152751 n

theorem P7963829939156331589.correct : P7963829939156331589.Spec := by
  intro n
  simp only [A152751]

end A152751

/-! ## A152751.P13839890005314797399

`A064201(n)/3`
-/

namespace A152751.P13839890005314797399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064201 n : ℚ) / 3

end

end A152751.P13839890005314797399

namespace A152751

/-- `A064201(n)/3` -/
def P13839890005314797399.Spec : Prop :=
  ∀ n, P13839890005314797399.a n = (A152751 n : ℚ)

end A152751

/-! ## A152751.P15274537307722741202

`record[n^(n%3)-1]`
-/

namespace A152751.P15274537307722741202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ (n % 3) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152751.P15274537307722741202

namespace A152751

/-- `record[n^(n%3)-1]` -/
def P15274537307722741202.Spec : Prop :=
  ∀ n, P15274537307722741202.a n = A152751 n

end A152751

/-! ## A152751.P11388862220052907020

`∑[a(n-1)+18]` with `a(0)=0, a(1)=3`
-/

namespace A152751.P11388862220052907020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152751.P11388862220052907020

namespace A152751

/-- `∑[a(n-1)+18]` -/
def P11388862220052907020.Spec : Prop :=
  ∀ n, (P11388862220052907020.a n : ℤ) = A152751 n

end A152751

/-! ## A152751.P15748334907515060999

`A153796(n)/2`
-/

namespace A152751.P15748334907515060999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153796 n : ℚ) / 2

end

end A152751.P15748334907515060999

namespace A152751

/-- `A153796(n)/2` -/
def P15748334907515060999.Spec : Prop :=
  ∀ n, P15748334907515060999.a n = (A152751 n : ℚ)

end A152751

/-!
# A152752: Terms of A118962 that are == 9 (mod 10), in the order of appearance.

The programs for A152752, there is no canonical definition to state claims against.
-/

/-! ## A152752.P17559157540986165834

`filter[A118962(n+1), A144597(#)]`
-/

namespace A152752.P17559157540986165834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144597 (f1 j).toNat = 1) n)

end

end A152752.P17559157540986165834

/-! ## A152752.P4840036995153858789

`(∑[A058241(2*n+5)]+2)²`
-/

namespace A152752.P4840036995153858789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058241 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 2) ^ 2

end

end A152752.P4840036995153858789

/-! ## A152752.P12768605580000839284

`p?[A105560(A300951(n)²)]²`
-/

namespace A152752.P12768605580000839284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (A300951 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A152752.P12768605580000839284

/-! ## A152752.P11415873876894193747

`A181796(A166100(n+2)²)²`
-/

namespace A152752.P11415873876894193747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181796 (A166100 (n + 2) ^ 2).toNat ^ 2

end

end A152752.P11415873876894193747

/-!
# A152753: Last digit of even Catalan number A152670(n).

The programs for A152753, there is no canonical definition to state claims against.
-/

/-! ## A152753.P6777918272634776740

`A152669(comp[2^n-1])`
-/

namespace A152753.P6777918272634776740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152669 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A152753.P6777918272634776740

/-! ## A152753.P13521144537100370814

`lcm(2, A152669(A062289(n+1)))`
-/

namespace A152753.P13521144537100370814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A152669 (A062289 (n + 1)).toNat)

end

end A152753.P13521144537100370814

/-! ## A152753.P2460989540726980418

`A152669(A062289(n+1))+and(n, A000122(n))`
-/

namespace A152753.P2460989540726980418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152669 (A062289 (n + 1)).toNat + Int.land (n : ℤ) (A000122 n)

end

end A152753.P2460989540726980418

/-! ## A152753.P2767066992134603254

`A152669(A062289(n+1))+A026800(a(n-1))` with `a(0)=2`
-/

namespace A152753.P2767066992134603254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A152669 (A062289 (n + 1)).toNat + A026800 (a (n - 1)).toNat

end

end A152753.P2767066992134603254

/-! ## A152753.P17738143780758590318

`A152669(A062289(n+1))+n*A000122(3*n+2)`
-/

namespace A152753.P17738143780758590318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152669 (A062289 (n + 1)).toNat + (n : ℤ) * A000122 (3 * n + 2)

end

end A152753.P17738143780758590318

/-! ## A152753.P15102751801423143800

`A152670(n+1)%10`
-/

namespace A152753.P15102751801423143800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152670 (n + 1)) 10

end

end A152753.P15102751801423143800

/-! ## A152753.P11279729409608070717

`A000108(comp[2^n-1])%10`
-/

namespace A152753.P11279729409608070717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) 10

end

end A152753.P11279729409608070717

/-! ## A152753.P5805752890326275767

`A120588(A057716(n+1))%10`
-/

namespace A152753.P5805752890326275767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120588 (A057716 (n + 1)).toNat) 10

end

end A152753.P5805752890326275767

/-! ## A152753.P1821570429941125087

`A120588(lt[1, A000120(n)])%10`
-/

namespace A152753.P1821570429941125087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120588 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)) 10

end

end A152753.P1821570429941125087

/-!
# A152754: "Upper positive integers": n is in the sequence iff in the representation n=A000695(k)+2*A000695(l) satisfies inequality A000695(k) < A000695(l).

The programs for A152754, the canonical program `A152754.P7914848743335689726` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152754 has offset 1).

The definition of A152754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152754.P7914848743335689726

`lt[floor(n/2)+2*(n-a(floor(n/2))), n]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152754

/-- `lt[floor(n/2)+2*(n-a(floor(n/2))), n]` -/
def P7914848743335689726.Spec : Prop :=
  ∀ n, (P7914848743335689726.a n : ℤ) = A152754 (n + 1)

theorem P7914848743335689726.correct : P7914848743335689726.Spec := by
  intro n
  simp only [A152754, Nat.add_sub_cancel]

end A152754

/-! ## A152754.P12217042757298817270

`lt[A057300(n), n]`
-/

namespace A152754.P12217042757298817270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A152754.P12217042757298817270

namespace A152754

/-- `lt[A057300(n), n]` -/
def P12217042757298817270.Spec : Prop :=
  ∀ n, (P12217042757298817270.a n : ℤ) = A152754 (n + 1)

end A152754

/-! ## A152754.P8976251892647885037

`lt[A048647(A006015(n)), n]`
-/

namespace A152754.P8976251892647885037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048647 (A006015 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A152754.P8976251892647885037

namespace A152754

/-- `lt[A048647(A006015(n)), n]` -/
def P8976251892647885037.Spec : Prop :=
  ∀ n, (P8976251892647885037.a n : ℤ) = A152754 (n + 1)

end A152754

/-! ## A152754.P2544247579034254472

`lt[A003188(A300839(n)), n]`
-/

namespace A152754.P2544247579034254472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A300839 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A152754.P2544247579034254472

namespace A152754

/-- `lt[A003188(A300839(n)), n]` -/
def P2544247579034254472.Spec : Prop :=
  ∀ n, (P2544247579034254472.a n : ℤ) = A152754 (n + 1)

end A152754

/-! ## A152754.P13814475620448597873

`lt[A292371(n), A292372(n)]`
-/

namespace A152754.P13814475620448597873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A152754.P13814475620448597873

namespace A152754

/-- `lt[A292371(n), A292372(n)]` -/
def P13814475620448597873.Spec : Prop :=
  ∀ n, (P13814475620448597873.a n : ℤ) = A152754 (n + 1)

end A152754

/-! ## A152754.P16970670325530847644

`lt[A292372(A006015(n)), A292372(n)]`
-/

namespace A152754.P16970670325530847644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A006015 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A152754.P16970670325530847644

namespace A152754

/-- `lt[A292372(A006015(n)), A292372(n)]` -/
def P16970670325530847644.Spec : Prop :=
  ∀ n, (P16970670325530847644.a n : ℤ) = A152754 (n + 1)

end A152754

/-! ## A152754.P10433867185766826617

`lt[A004514(n), A004514(A004525(n))]`
-/

namespace A152754.P10433867185766826617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004514 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004514 (A004525 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A152754.P10433867185766826617

namespace A152754

/-- `lt[A004514(n), A004514(A004525(n))]` -/
def P10433867185766826617.Spec : Prop :=
  ∀ n, (P10433867185766826617.a n : ℤ) = A152754 (n + 1)

end A152754

/-! ## A152754.P18196598605799670605

`lt[A088442(n), A088442(A004525(n))]`
-/

namespace A152754.P18196598605799670605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088442 (A004525 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A152754.P18196598605799670605

namespace A152754

/-- `lt[A088442(n), A088442(A004525(n))]` -/
def P18196598605799670605.Spec : Prop :=
  ∀ n, (P18196598605799670605.a n : ℤ) = A152754 (n + 1)

end A152754

/-! ## A152754.P3290812872323105304

`lt[A059905(n), A059906(n)]`
-/

namespace A152754.P3290812872323105304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A152754.P3290812872323105304

namespace A152754

/-- `lt[A059905(n), A059906(n)]` -/
def P3290812872323105304.Spec : Prop :=
  ∀ n, (P3290812872323105304.a n : ℤ) = A152754 (n + 1)

end A152754

/-! ## A152754.P13637681537967440985

`lt[A300838(A006068(n)), n]`
-/

namespace A152754.P13637681537967440985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300838 (A006068 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A152754.P13637681537967440985

namespace A152754

/-- `lt[A300838(A006068(n)), n]` -/
def P13637681537967440985.Spec : Prop :=
  ∀ n, (P13637681537967440985.a n : ℤ) = A152754 (n + 1)

end A152754

/-! ## A152754.P16562973905877058359

`lt[A300839(n), A006068(n)]`
-/

namespace A152754.P16562973905877058359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300839 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A152754.P16562973905877058359

namespace A152754

/-- `lt[A300839(n), A006068(n)]` -/
def P16562973905877058359.Spec : Prop :=
  ∀ n, (P16562973905877058359.a n : ℤ) = A152754 (n + 1)

end A152754

/-! ## A152754.P14073301321925214596

`lt[A300839(n), A265263(n)]`
-/

namespace A152754.P14073301321925214596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300839 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265263 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A152754.P14073301321925214596

namespace A152754

/-- `lt[A300839(n), A265263(n)]` -/
def P14073301321925214596.Spec : Prop :=
  ∀ n, (P14073301321925214596.a n : ℤ) = A152754 (n + 1)

end A152754

/-! ## A152754.P9967837842855111768

`lt[A004514(n), A053985(2*n)]`
-/

namespace A152754.P9967837842855111768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004514 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A152754.P9967837842855111768

namespace A152754

/-- `lt[A004514(n), A053985(2*n)]` -/
def P9967837842855111768.Spec : Prop :=
  ∀ n, (P9967837842855111768.a n : ℤ) = A152754 (n + 1)

end A152754

/-! ## A152754.P970782351440254441

`lt[A059906(2*n), A059906(n)]`
-/

namespace A152754.P970782351440254441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A152754.P970782351440254441

namespace A152754

/-- `lt[A059906(2*n), A059906(n)]` -/
def P970782351440254441.Spec : Prop :=
  ∀ n, (P970782351440254441.a n : ℤ) = A152754 (n + 1)

end A152754

/-! ## A152754.P1845891696242732411

`lt[A063695(2*n), A063695(n)]`
-/

namespace A152754.P1845891696242732411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063695 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063695 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A152754.P1845891696242732411

namespace A152754

/-- `lt[A063695(2*n), A063695(n)]` -/
def P1845891696242732411.Spec : Prop :=
  ∀ n, (P1845891696242732411.a n : ℤ) = A152754 (n + 1)

end A152754

/-! ## A152754.P1420365038696672128

`lt[A088442(n), A053985(2*n)]`
-/

namespace A152754.P1420365038696672128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A152754.P1420365038696672128

namespace A152754

/-- `lt[A088442(n), A053985(2*n)]` -/
def P1420365038696672128.Spec : Prop :=
  ∀ n, (P1420365038696672128.a n : ℤ) = A152754 (n + 1)

end A152754

/-! ## A152754.P125314198937303343

`lt[A090569(2*(n+1)), A090569(n+2)]`
-/

namespace A152754.P125314198937303343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090569 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090569 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A152754.P125314198937303343

namespace A152754

/-- `lt[A090569(2*(n+1)), A090569(n+2)]` -/
def P125314198937303343.Spec : Prop :=
  ∀ n, (P125314198937303343.a n : ℤ) = A152754 (n + 1)

end A152754

/-! ## A152754.P11643940172789490313

`lt[A053985(n+1)+n, A053985(2*n)]`
-/

namespace A152754.P11643940172789490313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A152754.P11643940172789490313

namespace A152754

/-- `lt[A053985(n+1)+n, A053985(2*n)]` -/
def P11643940172789490313.Spec : Prop :=
  ∀ n, (P11643940172789490313.a n : ℤ) = A152754 (n + 1)

end A152754

/-! ## A152754.P1493886199195906014

`lt[A063694(n+1)+n, A063694(2*n)]`
-/

namespace A152754.P1493886199195906014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063694 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063694 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A152754.P1493886199195906014

namespace A152754

/-- `lt[A063694(n+1)+n, A063694(2*n)]` -/
def P1493886199195906014.Spec : Prop :=
  ∀ n, (P1493886199195906014.a n : ℤ) = A152754 (n + 1)

end A152754

/-! ## A152754.P12819012344996166069

`lt[A088442(n), A088442(A002265(2*n))]`
-/

namespace A152754.P12819012344996166069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088442 (A002265 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A152754.P12819012344996166069

namespace A152754

/-- `lt[A088442(n), A088442(A002265(2*n))]` -/
def P12819012344996166069.Spec : Prop :=
  ∀ n, (P12819012344996166069.a n : ℤ) = A152754 (n + 1)

end A152754

/-!
# A152756: Bisection of A000533.

The programs for A152756, there is no canonical definition to state claims against.
-/

/-! ## A152756.P14943609180409444649

`or(1, (10^n)²)`
-/

namespace A152756.P14943609180409444649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((10 ^ n) ^ 2)

end

end A152756.P14943609180409444649

/-! ## A152756.P2747060942002281872

`record[or(1, (-10)^n)]`
-/

namespace A152756.P2747060942002281872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((-10) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152756.P2747060942002281872

/-! ## A152756.P1908793637516886133

`ceil(tanh(n)+(10^n)²)`
-/

namespace A152756.P1908793637516886133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh (n : ℝ) + ((10 ^ n) ^ 2 : ℝ)⌉

end

end A152756.P1908793637516886133

/-! ## A152756.P9665241922316244617

`round(tanh(n)+(10^n)²)`
-/

namespace A152756.P9665241922316244617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (n : ℝ) + ((10 ^ n) ^ 2 : ℝ))

end

end A152756.P9665241922316244617

/-! ## A152756.P12105073007196833097

`and((10^n)², -2)+1`
-/

namespace A152756.P12105073007196833097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((10 ^ n) ^ 2 : ℤ) (-2) + 1

end

end A152756.P12105073007196833097

/-! ## A152756.P1790557422491300853

`or(3, 10^(2*n))-2`
-/

namespace A152756.P1790557422491300853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (10 ^ (2 * n)) : ℤ) - 2

end

end A152756.P1790557422491300853

/-! ## A152756.P18359421618393327209

`xor(2, or(3, 10^(2*n)))`
-/

namespace A152756.P18359421618393327209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.lor 3 (10 ^ (2 * n)))

end

end A152756.P18359421618393327209

/-! ## A152756.P14823535930361430378

`abs(or(1, (-10)^(2*n)))`
-/

namespace A152756.P14823535930361430378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 ((-10) ^ (2 * n))|

end

end A152756.P14823535930361430378

/-! ## A152756.P16979857298200761809

`ceil(tanh(n))+10^(2*n)`
-/

namespace A152756.P16979857298200761809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh (n : ℝ)⌉ + (10 ^ (2 * n) : ℤ)

end

end A152756.P16979857298200761809

/-! ## A152756.P3496926940574752034

`ceil(abs(sin(n)))+(10^n)²`
-/

namespace A152756.P3496926940574752034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.sin (n : ℝ)|⌉ + ((10 ^ n) ^ 2 : ℤ)

end

end A152756.P3496926940574752034

/-!
# A152757: Numbers k such that the deficiency of k plus the number of proper divisors of k is a prime number (see A152864).

The programs for A152757, there is no canonical definition to state claims against.
-/

/-! ## A152757.P17136314655099972278

`lt[A181187(A249611(2*n+1)), A132140(n+1)]`
-/

namespace A152757.P17136314655099972278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181187 (A249611 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132140 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A152757.P17136314655099972278

/-!
# A152758: Numbers k such that the deficiency of k plus the number of proper divisors of k is not a prime number (see A152864).

The programs for A152758, there is no canonical definition to state claims against.
-/

/-! ## A152758.P6003170525009780522

`comp[A152757(n+1)-1]+1`
-/

namespace A152758.P6003170525009780522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152757 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A152758.P6003170525009780522

/-! ## A152758.P13803369250718046697

`eq[char[A152757(n+1)], A000007(n)]`
-/

namespace A152758.P13803369250718046697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152757 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A152758.P13803369250718046697

/-! ## A152758.P6809575566594301892

`eq[char[A152757(n+1)], A000038(n)]`
-/

namespace A152758.P6809575566594301892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152757 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A152758.P6809575566594301892

/-! ## A152758.P12753503521892176985

`eq[A057428(n)+1, char[A152757(n+1)]]`
-/

namespace A152758.P12753503521892176985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152757 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A152758.P12753503521892176985

/-! ## A152758.P4178878396810594064

`comp[∪[A152726(2*n), A152757(n+1)]]`
-/

namespace A152758.P4178878396810594064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152726 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152757 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A152758.P4178878396810594064

/-! ## A152758.P17740542035834295325

`comp[∪[A152730(2*(n+1)), A152757(n+1)]]`
-/

namespace A152758.P17740542035834295325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152730 (2 * (n + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152757 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A152758.P17740542035834295325

/-!
# A152759: 3 times 9-gonal (or nonagonal) numbers: a(n) = 3*n*(7*n-5)/2.

The programs for A152759, the canonical program `A152759.P155447730508891097` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152759 has offset 0).

The definition of A152759 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(7*n-5)/2` (program `A152759.P6827670018310886077`, by `A152759.P6827670018310886077.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152759.P16016012760386515449

`(21*n²-15*n)/2`
-/

namespace A152759.P16016012760386515449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((21 * n ^ 2 : ℤ) - (15 * n : ℤ) : ℚ) / 2

end

end A152759.P16016012760386515449

namespace A152759

/-- `(21*n²-15*n)/2` -/
def P16016012760386515449.Spec : Prop :=
  ∀ n, P16016012760386515449.a n = (A152759 n : ℚ)

theorem P16016012760386515449.correct : P16016012760386515449.Spec := by
  intro n
  induction n with
  | zero => simp [A152759, A152759.P16016012760386515449.a, A152759.P155447730508891097.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A152759, Nat.add_sub_cancel, A152759.P16016012760386515449.a, A152759.P155447730508891097.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A152759

/-! ## A152759.P6827670018310886077

`3*n*(7*n-5)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152759.P6827670018310886077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℚ) * (((7 * n : ℤ) - 5 : ℚ) / 2))

end

end A152759.P6827670018310886077

namespace A152759

/-- `3*n*(7*n-5)/2` -/
def P6827670018310886077.Spec : Prop :=
  ∀ n, P6827670018310886077.a n = (A152759 n : ℚ)

theorem P6827670018310886077.correct : P6827670018310886077.Spec := by
  intro n
  induction n with
  | zero => simp [A152759, A152759.P6827670018310886077.a, A152759.P155447730508891097.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A152759, Nat.add_sub_cancel, A152759.P6827670018310886077.a, A152759.P155447730508891097.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A152759

/-! ## A152759.P155447730508891097

`a(n-1)+21*n-18` with `a(0)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152759

/-- `a(n-1)+21*n-18` -/
def P155447730508891097.Spec : Prop :=
  ∀ n, P155447730508891097.a n = A152759 n

theorem P155447730508891097.correct : P155447730508891097.Spec := by
  intro n
  simp only [A152759]

end A152759

/-! ## A152759.P11419096070720399084

`n+A226491(n)`
-/

namespace A152759.P11419096070720399084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A226491 n

end

end A152759.P11419096070720399084

namespace A152759

/-- `n+A226491(n)` -/
def P11419096070720399084.Spec : Prop :=
  ∀ n, P11419096070720399084.a n = A152759 n

end A152759

/-! ## A152759.P13567140281608000258

`∑[a(n-1)+21]` with `a(0)=0, a(1)=3`
-/

namespace A152759.P13567140281608000258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + 21

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152759.P13567140281608000258

namespace A152759

/-- `∑[a(n-1)+21]` -/
def P13567140281608000258.Spec : Prop :=
  ∀ n, (P13567140281608000258.a n : ℤ) = A152759 n

end A152759

/-! ## A152759.P11059722643597649920

`A226490(n)+n²`
-/

namespace A152759.P11059722643597649920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226490 n + (n ^ 2 : ℤ)

end

end A152759.P11059722643597649920

namespace A152759

/-- `A226490(n)+n²` -/
def P11059722643597649920.Spec : Prop :=
  ∀ n, P11059722643597649920.a n = A152759 n

end A152759

/-! ## A152759.P13249063927867201331

`A152965(n)+∑[n]`
-/

namespace A152759.P13249063927867201331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152965 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A152759.P13249063927867201331

namespace A152759

/-- `A152965(n)+∑[n]` -/
def P13249063927867201331.Spec : Prop :=
  ∀ n, P13249063927867201331.a n = A152759 n

end A152759

/-! ## A152759.P3589052321629648929

`A051875(n)+2*n`
-/

namespace A152759.P3589052321629648929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051875 n + (2 * n : ℤ)

end

end A152759.P3589052321629648929

namespace A152759

/-- `A051875(n)+2*n` -/
def P3589052321629648929.Spec : Prop :=
  ∀ n, P3589052321629648929.a n = A152759 n

end A152759

/-! ## A152759.P6928695988433126156

`A152744(n)-4*n`
-/

namespace A152759.P6928695988433126156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152744 n - (4 * n : ℤ)

end

end A152759.P6928695988433126156

namespace A152759

/-- `A152744(n)-4*n` -/
def P6928695988433126156.Spec : Prop :=
  ∀ n, P6928695988433126156.a n = A152759 n

end A152759

/-! ## A152759.P16869305970804775400

`A051871(n)+2*n²`
-/

namespace A152759.P16869305970804775400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051871 n + (2 * n ^ 2 : ℤ)

end

end A152759.P16869305970804775400

namespace A152759

/-- `A051871(n)+2*n²` -/
def P16869305970804775400.Spec : Prop :=
  ∀ n, P16869305970804775400.a n = A152759 n

end A152759

/-! ## A152759.P3154550541754929061

`A153785(n)-2*n²`
-/

namespace A152759.P3154550541754929061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153785 n - (2 * n ^ 2 : ℤ)

end

end A152759.P3154550541754929061

namespace A152759

/-- `A153785(n)-2*n²` -/
def P3154550541754929061.Spec : Prop :=
  ∀ n, P3154550541754929061.a n = A152759 n

end A152759

/-! ## A152759.P2369602533570009199

`A158186(n)+∑[n-1]`
-/

namespace A152759.P2369602533570009199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158186 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152759.P2369602533570009199

namespace A152759

/-- `A158186(n)+∑[n-1]` -/
def P2369602533570009199.Spec : Prop :=
  ∀ n, P2369602533570009199.a n = A152759 n

end A152759

/-! ## A152759.P7754108305986763022

`∑[n]+2*A051624(n)`
-/

namespace A152759.P7754108305986763022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * A051624 n

end

end A152759.P7754108305986763022

namespace A152759

/-- `∑[n]+2*A051624(n)` -/
def P7754108305986763022.Spec : Prop :=
  ∀ n, P7754108305986763022.a n = A152759 n

end A152759

/-! ## A152759.P8334037523142389145

`A051873(n)+∑[2*n]`
-/

namespace A152759.P8334037523142389145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051873 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A152759.P8334037523142389145

namespace A152759

/-- `A051873(n)+∑[2*n]` -/
def P8334037523142389145.Spec : Prop :=
  ∀ n, P8334037523142389145.a n = A152759 n

end A152759

/-!
# A152760: 4 times 9-gonal numbers: a(n) = 2*n*(7*n-5).

The programs for A152760, the canonical program `A152760.P12676086426862317203` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152760 has offset 0).

The definition of A152760 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(7*n-5)` (program `A152760.P12676086426862317203`, by `A152760.P12676086426862317203.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152760.P8931594617597078009

`14*n²-10*n`
-/

namespace A152760.P8931594617597078009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (14 * n ^ 2 : ℤ) - (10 * n : ℤ)

end

end A152760.P8931594617597078009

namespace A152760

/-- `14*n²-10*n` -/
def P8931594617597078009.Spec : Prop :=
  ∀ n, P8931594617597078009.a n = A152760 n

theorem P8931594617597078009.correct : P8931594617597078009.Spec := by
  intro n
  simp only [A152760, Nat.add_sub_cancel, A152760.P8931594617597078009.a, A152760.P12676086426862317203.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A152760

/-! ## A152760.P12676086426862317203

`2*n*(7*n-5)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152760

/-- `2*n*(7*n-5)` -/
def P12676086426862317203.Spec : Prop :=
  ∀ n, P12676086426862317203.a n = A152760 n

theorem P12676086426862317203.correct : P12676086426862317203.Spec := by
  intro n
  simp only [A152760]

end A152760

/-! ## A152760.P16357668772154003526

`∑[a(n-1)+28]` with `a(0)=0, a(1)=4`
-/

namespace A152760.P16357668772154003526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  f1 (n - 1) + 28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152760.P16357668772154003526

namespace A152760

/-- `∑[a(n-1)+28]` -/
def P16357668772154003526.Spec : Prop :=
  ∀ n, (P16357668772154003526.a n : ℤ) = A152760 n

end A152760

/-! ## A152760.P14487803861442637039

`∑[4*comp[gcd(7, n)+n]]`
-/

namespace A152760.P14487803861442637039
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 7 n + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152760.P14487803861442637039

namespace A152760

/-- `∑[4*comp[gcd(7, n)+n]]` -/
def P14487803861442637039.Spec : Prop :=
  ∀ n, (P14487803861442637039.a n : ℤ) = A152760 n

end A152760

/-! ## A152760.P17853543586001758210

`A081593(n)%A081589(n)`
-/

namespace A152760.P17853543586001758210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081593 n) (A081589 n)

end

end A152760.P17853543586001758210

namespace A152760

/-- `A081593(n)%A081589(n)` -/
def P17853543586001758210.Spec : Prop :=
  ∀ n, P17853543586001758210.a n = A152760 n

end A152760

/-! ## A152760.P5096598165098205032

`A158558(n)%A028993(n)`
-/

namespace A152760.P5096598165098205032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158558 n) (A028993 n)

end

end A152760.P5096598165098205032

namespace A152760

/-- `A158558(n)%A028993(n)` -/
def P5096598165098205032.Spec : Prop :=
  ∀ n, P5096598165098205032.a n = A152760 n

end A152760

/-! ## A152760.P12788388314019149980

`A005911(n)%A143838(n+1)`
-/

namespace A152760.P12788388314019149980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005911 n) (A143838 (n + 1))

end

end A152760.P12788388314019149980

namespace A152760

/-- `A005911(n)%A143838(n+1)` -/
def P12788388314019149980.Spec : Prop :=
  ∀ n, P12788388314019149980.a n = A152760 n

end A152760

/-! ## A152760.P2745295585467510657

`A016922(n)%A195318(n+1)`
-/

namespace A152760.P2745295585467510657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016922 n) (A195318 (n + 1))

end

end A152760.P2745295585467510657

namespace A152760

/-- `A016922(n)%A195318(n+1)` -/
def P2745295585467510657.Spec : Prop :=
  ∀ n, P2745295585467510657.a n = A152760 n

end A152760

/-!
# A152761: Sum of divisors of Catalan number A000108(n).

The programs for A152761, the canonical program `A152761.P10007199758081199607` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152761 has offset 0).

The definition of A152761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152761.P10007199758081199607

`A152762(n)+A000108(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A152761

/-- `A152762(n)+A000108(n)` -/
def P10007199758081199607.Spec : Prop :=
  ∀ n, P10007199758081199607.a n = A152761 n

theorem P10007199758081199607.correct : P10007199758081199607.Spec := by
  intro n
  simp only [A152761]

end A152761

/-! ## A152761.P14105729006358315562

`A000203(A000108(n))`
-/

namespace A152761.P14105729006358315562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000108 n).toNat

end

end A152761.P14105729006358315562

namespace A152761

/-- `A000203(A000108(n))` -/
def P14105729006358315562.Spec : Prop :=
  ∀ n, P14105729006358315562.a n = A152761 n

end A152761

/-! ## A152761.P8281482736021976043

`A152762(n)+abs(A168491(n))`
-/

namespace A152761.P8281482736021976043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152762 n + |A168491 n|

end

end A152761.P8281482736021976043

namespace A152761

/-- `A152762(n)+abs(A168491(n))` -/
def P8281482736021976043.Spec : Prop :=
  ∀ n, P8281482736021976043.a n = A152761 n

end A152761

/-! ## A152761.P6485851126784556763

`A152762(n)+Δ[A155587(n)]`
-/

namespace A152761.P6485851126784556763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152762 n + (f1 (n + 1) - f1 n)

end

end A152761.P6485851126784556763

namespace A152761

/-- `A152762(n)+Δ[A155587(n)]` -/
def P6485851126784556763.Spec : Prop :=
  ∀ n, P6485851126784556763.a n = A152761 n

end A152761

/-! ## A152761.P10810368503558313362

`A152762(n)+A120588(n+1)`
-/

namespace A152761.P10810368503558313362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152762 n + A120588 (n + 1)

end

end A152761.P10810368503558313362

namespace A152761

/-- `A152762(n)+A120588(n+1)` -/
def P10810368503558313362.Spec : Prop :=
  ∀ n, P10810368503558313362.a n = A152761 n

end A152761

/-! ## A152761.P1347966019720445254

`A120304(n)+A152762(n)+2`
-/

namespace A152761.P1347966019720445254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n + (A152762 n + 2)

end

end A152761.P1347966019720445254

namespace A152761

/-- `A120304(n)+A152762(n)+2` -/
def P1347966019720445254.Spec : Prop :=
  ∀ n, P1347966019720445254.a n = A152761 n

end A152761

/-! ## A152761.P5549693880734189392

`A152762(n)+A028303(2*n)`
-/

namespace A152761.P5549693880734189392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152762 n + A028303 (2 * n)

end

end A152761.P5549693880734189392

namespace A152761

/-- `A152762(n)+A028303(2*n)` -/
def P5549693880734189392.Spec : Prop :=
  ∀ n, P5549693880734189392.a n = A152761 n

end A152761

/-! ## A152761.P248327682204693574

`A152762(n)+A028304(2*n)`
-/

namespace A152761.P248327682204693574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152762 n + A028304 (2 * n)

end

end A152761.P248327682204693574

namespace A152761

/-- `A152762(n)+A028304(2*n)` -/
def P248327682204693574.Spec : Prop :=
  ∀ n, P248327682204693574.a n = A152761 n

end A152761

/-! ## A152761.P8050643303141539683

`A152762(n)+A126120(2*n)`
-/

namespace A152761.P8050643303141539683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152762 n + A126120 (2 * n)

end

end A152761.P8050643303141539683

namespace A152761

/-- `A152762(n)+A126120(2*n)` -/
def P8050643303141539683.Spec : Prop :=
  ∀ n, P8050643303141539683.a n = A152761 n

end A152761

/-! ## A152761.P15749497209667382587

`A152762(n)+A089408(2*n+1)`
-/

namespace A152761.P15749497209667382587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152762 n + A089408 (2 * n + 1)

end

end A152761.P15749497209667382587

namespace A152761

/-- `A152762(n)+A089408(2*n+1)` -/
def P15749497209667382587.Spec : Prop :=
  ∀ n, P15749497209667382587.a n = A152761 n

end A152761

/-! ## A152761.P18297443513360158523

`A152762(n)+abs(A090192(2*n+1))`
-/

namespace A152761.P18297443513360158523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152762 n + |A090192 (2 * n + 1)|

end

end A152761.P18297443513360158523

namespace A152761

/-- `A152762(n)+abs(A090192(2*n+1))` -/
def P18297443513360158523.Spec : Prop :=
  ∀ n, P18297443513360158523.a n = A152761 n

end A152761

/-! ## A152761.P14252062969851313245

`A000108(n)+A153788(n)+A152988(n)`
-/

namespace A152761.P14252062969851313245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A153788 n + A152988 n)

end

end A152761.P14252062969851313245

namespace A152761

/-- `A000108(n)+A153788(n)+A152988(n)` -/
def P14252062969851313245.Spec : Prop :=
  ∀ n, P14252062969851313245.a n = A152761 n

end A152761

/-! ## A152761.P2364886989228027625

`A000045(n)+A263986(n)+A152762(n)`
-/

namespace A152761.P2364886989228027625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A263986 n + A152762 n)

end

end A152761.P2364886989228027625

namespace A152761

/-- `A000045(n)+A263986(n)+A152762(n)` -/
def P2364886989228027625.Spec : Prop :=
  ∀ n, P2364886989228027625.a n = A152761 n

end A152761

/-! ## A152761.P7805917698680543348

`A152762(n)+A158499(n)-Δ[A158499(n)]`
-/

namespace A152761.P7805917698680543348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152762 n + (A158499 n - (f1 (n + 1) - f1 n))

end

end A152761.P7805917698680543348

namespace A152761

/-- `A152762(n)+A158499(n)-Δ[A158499(n)]` -/
def P7805917698680543348.Spec : Prop :=
  ∀ n, P7805917698680543348.a n = A152761 n

end A152761

/-! ## A152761.P2793946992944462762

`A152762(n)+A263986(n)+A212804(n+1)`
-/

namespace A152761.P2793946992944462762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152762 n + (A263986 n + A212804 (n + 1))

end

end A152761.P2793946992944462762

namespace A152761

/-- `A152762(n)+A263986(n)+A212804(n+1)` -/
def P2793946992944462762.Spec : Prop :=
  ∀ n, P2793946992944462762.a n = A152761 n

end A152761

/-! ## A152761.P337183438464631256

`A152762(n)+A263986(n)+A001611(n)-1`
-/

namespace A152761.P337183438464631256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152762 n + (A263986 n + (A001611 n - 1))

end

end A152761.P337183438464631256

namespace A152761

/-- `A152762(n)+A263986(n)+A001611(n)-1` -/
def P337183438464631256.Spec : Prop :=
  ∀ n, P337183438464631256.a n = A152761 n

end A152761

/-! ## A152761.P4655645189955679607

`A152762(n)+A263986(n)+A103609(2*n)`
-/

namespace A152761.P4655645189955679607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152762 n + (A263986 n + A103609 (2 * n))

end

end A152761.P4655645189955679607

namespace A152761

/-- `A152762(n)+A263986(n)+A103609(2*n)` -/
def P4655645189955679607.Spec : Prop :=
  ∀ n, P4655645189955679607.a n = A152761 n

end A152761

/-! ## A152761.P3139257707001627660

`A152762(n)+A068875(n)/A280193(A005843(n))`
-/

namespace A152761.P3139257707001627660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152762 n : ℚ) + (A068875 n : ℚ) / (A280193 (A005843 n).toNat : ℚ)

end

end A152761.P3139257707001627660

namespace A152761

/-- `A152762(n)+A068875(n)/A280193(A005843(n))` -/
def P3139257707001627660.Spec : Prop :=
  ∀ n, P3139257707001627660.a n = (A152761 n : ℚ)

end A152761

/-! ## A152761.P15011214384397841365

`A152762(n)+A263986(n)+A192956(n)-A192958(n)`
-/

namespace A152761.P15011214384397841365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152762 n + (A263986 n + (A192956 n - A192958 n))

end

end A152761.P15011214384397841365

namespace A152761

/-- `A152762(n)+A263986(n)+A192956(n)-A192958(n)` -/
def P15011214384397841365.Spec : Prop :=
  ∀ n, P15011214384397841365.a n = A152761 n

end A152761

/-! ## A152761.P12414615814082884477

`A152762(n)+A263986(n)+A192979(n)-A192964(n)`
-/

namespace A152761.P12414615814082884477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152762 n + (A263986 n + (A192979 n - A192964 n))

end

end A152761.P12414615814082884477

namespace A152761

/-- `A152762(n)+A263986(n)+A192979(n)-A192964(n)` -/
def P12414615814082884477.Spec : Prop :=
  ∀ n, P12414615814082884477.a n = A152761 n

end A152761

/-!
# A152762: Sum of proper divisors of Catalan number A000108(n).

The programs for A152762, the canonical program `A152762.P705449962660149675` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152762 has offset 0).

The definition of A152762 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152762.P705449962660149675

`A001065(A000108(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A152762

/-- `A001065(A000108(n))` -/
def P705449962660149675.Spec : Prop :=
  ∀ n, P705449962660149675.a n = A152762 n

theorem P705449962660149675.correct : P705449962660149675.Spec := by
  intro n
  simp only [A152762]

end A152762

/-! ## A152762.P10790048993854281837

`A153788(n)+A152988(n)`
-/

namespace A152762.P10790048993854281837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153788 n + A152988 n

end

end A152762.P10790048993854281837

namespace A152762

/-- `A153788(n)+A152988(n)` -/
def P10790048993854281837.Spec : Prop :=
  ∀ n, P10790048993854281837.a n = A152762 n

end A152762

/-! ## A152762.P11424675738340953573

`A152763(n)+A152988(n)-1`
-/

namespace A152762.P11424675738340953573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152763 n + (A152988 n - 1)

end

end A152762.P11424675738340953573

namespace A152762

/-- `A152763(n)+A152988(n)-1` -/
def P11424675738340953573.Spec : Prop :=
  ∀ n, P11424675738340953573.a n = A152762 n

end A152762

/-! ## A152762.P3971452288641434334

`A152761(n)-A000108(n)`
-/

namespace A152762.P3971452288641434334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152761 n - A000108 n

end

end A152762.P3971452288641434334

namespace A152762

/-- `A152761(n)-A000108(n)` -/
def P3971452288641434334.Spec : Prop :=
  ∀ n, P3971452288641434334.a n = A152762 n

end A152762

/-! ## A152762.P13867879602313346630

`A152761(n)-abs(A168491(n))`
-/

namespace A152762.P13867879602313346630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152761 n - |A168491 n|

end

end A152762.P13867879602313346630

namespace A152762

/-- `A152761(n)-abs(A168491(n))` -/
def P13867879602313346630.Spec : Prop :=
  ∀ n, P13867879602313346630.a n = A152762 n

end A152762

/-! ## A152762.P11799096232216164757

`A152761(n)-Δ[A155587(n)]`
-/

namespace A152762.P11799096232216164757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152761 n - (f1 (n + 1) - f1 n)

end

end A152762.P11799096232216164757

namespace A152762

/-- `A152761(n)-Δ[A155587(n)]` -/
def P11799096232216164757.Spec : Prop :=
  ∀ n, P11799096232216164757.a n = A152762 n

end A152762

/-! ## A152762.P12800969783400649367

`A152761(n)-A126120(2*n)`
-/

namespace A152762.P12800969783400649367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152761 n - A126120 (2 * n)

end

end A152762.P12800969783400649367

namespace A152762

/-- `A152761(n)-A126120(2*n)` -/
def P12800969783400649367.Spec : Prop :=
  ∀ n, P12800969783400649367.a n = A152762 n

end A152762

/-! ## A152762.P15154769543431240623

`A152761(n)-A208355(2*n)`
-/

namespace A152762.P15154769543431240623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152761 n - A208355 (2 * n)

end

end A152762.P15154769543431240623

namespace A152762

/-- `A152761(n)-A208355(2*n)` -/
def P15154769543431240623.Spec : Prop :=
  ∀ n, P15154769543431240623.a n = A152762 n

end A152762

/-! ## A152762.P14434269772963575968

`A152761(n)-A089408(2*n+1)`
-/

namespace A152762.P14434269772963575968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152761 n - A089408 (2 * n + 1)

end

end A152762.P14434269772963575968

namespace A152762

/-- `A152761(n)-A089408(2*n+1)` -/
def P14434269772963575968.Spec : Prop :=
  ∀ n, P14434269772963575968.a n = A152762 n

end A152762

/-! ## A152762.P4260769509644688926

`A152761(n)-(A263986(n)+A000045(n))`
-/

namespace A152762.P4260769509644688926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152761 n - (A263986 n + A000045 n)

end

end A152762.P4260769509644688926

namespace A152762

/-- `A152761(n)-(A263986(n)+A000045(n))` -/
def P4260769509644688926.Spec : Prop :=
  ∀ n, P4260769509644688926.a n = A152762 n

end A152762

/-! ## A152762.P8925981018621524053

`A152761(n)+Δ[A158499(n)]-A158499(n)`
-/

namespace A152762.P8925981018621524053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152761 n + (f1 (n + 1) - f1 n - A158499 n)

end

end A152762.P8925981018621524053

namespace A152762

/-- `A152761(n)+Δ[A158499(n)]-A158499(n)` -/
def P8925981018621524053.Spec : Prop :=
  ∀ n, P8925981018621524053.a n = A152762 n

end A152762

/-! ## A152762.P3544334287981488580

`A152761(n)-(A263986(n)+A212804(n+1))`
-/

namespace A152762.P3544334287981488580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152761 n - (A263986 n + A212804 (n + 1))

end

end A152762.P3544334287981488580

namespace A152762

/-- `A152761(n)-(A263986(n)+A212804(n+1))` -/
def P3544334287981488580.Spec : Prop :=
  ∀ n, P3544334287981488580.a n = A152762 n

end A152762

/-! ## A152762.P14655501741057389383

`A152761(n)-(A263986(n)+A001611(n)-1)`
-/

namespace A152762.P14655501741057389383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152761 n - (A263986 n + (A001611 n - 1))

end

end A152762.P14655501741057389383

namespace A152762

/-- `A152761(n)-(A263986(n)+A001611(n)-1)` -/
def P14655501741057389383.Spec : Prop :=
  ∀ n, P14655501741057389383.a n = A152762 n

end A152762

/-! ## A152762.P17785675000547686414

`A152761(n)-(A263986(n)+A103609(2*n))`
-/

namespace A152762.P17785675000547686414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152761 n - (A263986 n + A103609 (2 * n))

end

end A152762.P17785675000547686414

namespace A152762

/-- `A152761(n)-(A263986(n)+A103609(2*n))` -/
def P17785675000547686414.Spec : Prop :=
  ∀ n, P17785675000547686414.a n = A152762 n

end A152762

/-! ## A152762.P3034563082128582763

`A152761(n)-(A263986(n)+A192979(n)-A192964(n))`
-/

namespace A152762.P3034563082128582763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152761 n - (A263986 n + (A192979 n - A192964 n))

end

end A152762.P3034563082128582763

namespace A152762

/-- `A152761(n)-(A263986(n)+A192979(n)-A192964(n))` -/
def P3034563082128582763.Spec : Prop :=
  ∀ n, P3034563082128582763.a n = A152762 n

end A152762

/-! ## A152762.P15341596453172810031

`A152761(n)-A057977(2*n)`
-/

namespace A152762.P15341596453172810031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152761 n - A057977 (2 * n)

end

end A152762.P15341596453172810031

namespace A152762

/-- `A152761(n)-A057977(2*n)` -/
def P15341596453172810031.Spec : Prop :=
  ∀ n, P15341596453172810031.a n = A152762 n

end A152762

/-! ## A152762.P18126380338711000629

`A152761(n)-A000984(n)/(n+1)`
-/

namespace A152762.P18126380338711000629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152761 n : ℚ) - (A000984 n : ℚ) / (n + 1 : ℚ)

end

end A152762.P18126380338711000629

namespace A152762

/-- `A152761(n)-A000984(n)/(n+1)` -/
def P18126380338711000629.Spec : Prop :=
  ∀ n, P18126380338711000629.a n = (A152762 n : ℚ)

end A152762

/-! ## A152762.P8707685027279794294

`A152761(n)-A028329(n)/(2*(n+1))`
-/

namespace A152762.P8707685027279794294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152761 n : ℚ) - (A028329 n : ℚ) / (2 * (n + 1) : ℚ)

end

end A152762.P8707685027279794294

namespace A152762

/-- `A152761(n)-A028329(n)/(2*(n+1))` -/
def P8707685027279794294.Spec : Prop :=
  ∀ n, P8707685027279794294.a n = (A152762 n : ℚ)

end A152762

/-!
# A152763: Number of divisors of Catalan number A000108(n).

The programs for A152763, the canonical program `A152763.P4357628965309988966` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152763 has offset 0).

The definition of A152763 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152763.P4357628965309988966

`A000005(A000108(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A152763

/-- `A000005(A000108(n))` -/
def P4357628965309988966.Spec : Prop :=
  ∀ n, P4357628965309988966.a n = A152763 n

theorem P4357628965309988966.correct : P4357628965309988966.Spec := by
  intro n
  simp only [A152763]

end A152763

/-! ## A152763.P16143363969674632587

`A153788(n)+1`
-/

namespace A152763.P16143363969674632587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153788 n + 1

end

end A152763.P16143363969674632587

namespace A152763

/-- `A153788(n)+1` -/
def P16143363969674632587.Spec : Prop :=
  ∀ n, P16143363969674632587.a n = A152763 n

end A152763

/-! ## A152763.P561684786108342147

`2-(char[A140263(n)]-A153788(n))`
-/

namespace A152763.P561684786108342147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140263 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A153788 n)

end

end A152763.P561684786108342147

namespace A152763

/-- `2-(char[A140263(n)]-A153788(n))` -/
def P561684786108342147.Spec : Prop :=
  ∀ n, P561684786108342147.a n = A152763 n

end A152763

/-! ## A152763.P12503387571654777832

`A001316(A001316(n))-(1-A153788(n))`
-/

namespace A152763.P12503387571654777832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A001316 n).toNat - (1 - A153788 n)

end

end A152763.P12503387571654777832

namespace A152763

/-- `A001316(A001316(n))-(1-A153788(n))` -/
def P12503387571654777832.Spec : Prop :=
  ∀ n, P12503387571654777832.a n = A152763 n

end A152763

/-! ## A152763.P13444877924955073370

`2-(A000120(Δ[A187328(n)])-A153788(n))`
-/

namespace A152763.P13444877924955073370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A000120 (f1 (n + 1) - f1 n).toNat - A153788 n)

end

end A152763.P13444877924955073370

namespace A152763

/-- `2-(A000120(Δ[A187328(n)])-A153788(n))` -/
def P13444877924955073370.Spec : Prop :=
  ∀ n, P13444877924955073370.a n = A152763 n

end A152763

/-! ## A152763.P486818284603117417

`A152762(n)+1-A152988(n)`
-/

namespace A152763.P486818284603117417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152762 n + (1 - A152988 n)

end

end A152763.P486818284603117417

namespace A152763

/-- `A152762(n)+1-A152988(n)` -/
def P486818284603117417.Spec : Prop :=
  ∀ n, P486818284603117417.a n = A152763 n

end A152763

/-!
# A152764: Bisection of A138144.

The programs for A152764, there is no canonical definition to state claims against.
-/

/-! ## A152764.P8111870999599962099

`A138144(Δ[n²])`
-/

namespace A152764.P8111870999599962099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138144 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A152764.P8111870999599962099

/-! ## A152764.P16928596937981205755

`or(1, A138144(A005408(n)))`
-/

namespace A152764.P16928596937981205755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A138144 (A005408 n).toNat)

end

end A152764.P16928596937981205755

/-! ## A152764.P1577737014795604325

`record[A138144(A000265(n+1))]`
-/

namespace A152764.P1577737014795604325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138144 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152764.P1577737014795604325

/-! ## A152764.P7422517041699264362

`or(1, A138144(A138187(3*n)))`
-/

namespace A152764.P7422517041699264362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A138144 (A138187 (3 * n)).toNat)

end

end A152764.P7422517041699264362

/-! ## A152764.P5447796042623562840

`record[A033999(n)*A138144(n+1)]`
-/

namespace A152764.P5447796042623562840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A138144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152764.P5447796042623562840

/-! ## A152764.P6074040643544075519

`record[lcm(A056594(n), A138144(n+1))]`
-/

namespace A152764.P6074040643544075519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A138144 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152764.P6074040643544075519

/-! ## A152764.P17660446095849215400

`A033999(n)²*A138144(2*n+1)`
-/

namespace A152764.P17660446095849215400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A138144 (2 * n + 1)

end

end A152764.P17660446095849215400

/-! ## A152764.P8640029996285296397

`A138144(A138187(3*n))%A138147(n+1)`
-/

namespace A152764.P8640029996285296397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138144 (A138187 (3 * n)).toNat) (A138147 (n + 1))

end

end A152764.P8640029996285296397

/-! ## A152764.P7995475431614490626

`A000042(2*n+1)+A000533(2*n)-A147757(2*n+1)`
-/

namespace A152764.P7995475431614490626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (2 * n + 1) + (A000533 (2 * n) - A147757 (2 * n + 1))

end

end A152764.P7995475431614490626

/-! ## A152764.P10429614076467267695

`A002275(2*n+1)+A000533(2*n)-A147757(2*n+1)`
-/

namespace A152764.P10429614076467267695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (2 * n + 1) + (A000533 (2 * n) - A147757 (2 * n + 1))

end

end A152764.P10429614076467267695

/-!
# A152765: Smallest prime divisor of Catalan number A000108(n), with a(0) = a(1) = 1.

The programs for A152765, there is no canonical definition to state claims against.
-/

/-! ## A152765.P15824586284702034211

`A000108(n)/A152766(A233583(n+1))`
-/

namespace A152765.P15824586284702034211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) / (A152766 (A233583 (n + 1)).toNat : ℚ)

end

end A152765.P15824586284702034211

/-! ## A152765.P11662658453018987614

`A020639(A000108(n)%A137491(n+1))`
-/

namespace A152765.P11662658453018987614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A000108 n) (A137491 (n + 1))).toNat

end

end A152765.P11662658453018987614

/-! ## A152765.P6928884016588212335

`A020639(gcd(A000108(n), A147571(n+1)))`
-/

namespace A152765.P6928884016588212335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A000108 n) (A147571 (n + 1)))

end

end A152765.P6928884016588212335

/-! ## A152765.P10263362626485332533

`abs(A168491(n)/A152766(A233583(n+1)))`
-/

namespace A152765.P10263362626485332533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A168491 n : ℚ) / (A152766 (A233583 (n + 1)).toNat : ℚ)|

end

end A152765.P10263362626485332533

/-! ## A152765.P10267057765834280621

`A120588(n+1)/A152766(A233583(n+1))`
-/

namespace A152765.P10267057765834280621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120588 (n + 1) : ℚ) / (A152766 (A233583 (n + 1)).toNat : ℚ)

end

end A152765.P10267057765834280621

/-! ## A152765.P14577968865237691498

`A028303(2*n)/A152766(A233583(n+1))`
-/

namespace A152765.P14577968865237691498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028303 (2 * n) : ℚ) / (A152766 (A233583 (n + 1)).toNat : ℚ)

end

end A152765.P14577968865237691498

/-! ## A152765.P835116442106857664

`A126120(2*n)/A152766(A233583(n+1))`
-/

namespace A152765.P835116442106857664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126120 (2 * n) : ℚ) / (A152766 (A233583 (n + 1)).toNat : ℚ)

end

end A152765.P835116442106857664

/-! ## A152765.P4045526607920745865

`A208355(2*n)/A152766(A233583(n+1))`
-/

namespace A152765.P4045526607920745865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208355 (2 * n) : ℚ) / (A152766 (A233583 (n + 1)).toNat : ℚ)

end

end A152765.P4045526607920745865

/-! ## A152765.P10153049231854243755

`A089408(Δ[n²])/A152766(A233583(n+1))`
-/

namespace A152765.P10153049231854243755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089408 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A152766 (A233583 (n + 1)).toNat : ℚ)

end

end A152765.P10153049231854243755

/-! ## A152765.P13744604131513730068

`A097331(Δ[n²])/A152766(A233583(n+1))`
-/

namespace A152765.P13744604131513730068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097331 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A152766 (A233583 (n + 1)).toNat : ℚ)

end

end A152765.P13744604131513730068

/-! ## A152765.P10991002443578776323

`∑{d}[n+1, A034742(#)]/A152766(A233583(n+1))`
-/

namespace A152765.P10991002443578776323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A034742 d : ℤ) : ℚ) / (A152766 (A233583 (n + 1)).toNat : ℚ)

end

end A152765.P10991002443578776323

/-! ## A152765.P7286536980848773374

`(A263986(n)+A000045(n))/A152766(A233583(n+1))`
-/

namespace A152765.P7286536980848773374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263986 n + A000045 n : ℚ) / (A152766 (A233583 (n + 1)).toNat : ℚ)

end

end A152765.P7286536980848773374

/-!
# A152766: Largest proper divisor of the Catalan number A000108(n).

The programs for A152766, there is no canonical definition to state claims against.
-/

/-! ## A152766.P9021132872003266971

`A032742(A000108(n+2))`
-/

namespace A152766.P9021132872003266971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A000108 (n + 2)).toNat

end

end A152766.P9021132872003266971

/-! ## A152766.P9196040676943977099

`A000108(n+2)/A152765(n+2)`
-/

namespace A152766.P9196040676943977099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 2) : ℚ) / (A152765 (n + 2) : ℚ)

end

end A152766.P9196040676943977099

/-! ## A152766.P13891755609020537222

`A208355(2*(n+2))/p?[A152765(n)]`
-/

namespace A152766.P13891755609020537222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152765 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208355 (2 * (n + 2)) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A152766.P13891755609020537222

/-! ## A152766.P5514159624160335858

`A208355(2*(n+2))/A152765(n+2)`
-/

namespace A152766.P5514159624160335858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208355 (2 * (n + 2)) : ℚ) / (A152765 (n + 2) : ℚ)

end

end A152766.P5514159624160335858

/-! ## A152766.P9314922444590212226

`A000108(n+2)/A020639(A007272(n))`
-/

namespace A152766.P9314922444590212226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 2) : ℚ) / (A020639 (A007272 n).toNat : ℚ)

end

end A152766.P9314922444590212226

/-!
# A152767: 3 times 10-gonal (or decagonal) numbers: a(n) = 3*n*(4*n-3).

The programs for A152767, the canonical program `A152767.P12260318570377827451` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152767 has offset 0).

The definition of A152767 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(4*n-3)` (program `A152767.P12260318570377827451`, by `A152767.P12260318570377827451.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152767.P6551906532781794982

`12*n²-9*n`
-/

namespace A152767.P6551906532781794982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n ^ 2 : ℤ) - (9 * n : ℤ)

end

end A152767.P6551906532781794982

namespace A152767

/-- `12*n²-9*n` -/
def P6551906532781794982.Spec : Prop :=
  ∀ n, P6551906532781794982.a n = A152767 n

theorem P6551906532781794982.correct : P6551906532781794982.Spec := by
  intro n
  simp only [A152767, Nat.add_sub_cancel, A152767.P6551906532781794982.a, A152767.P12260318570377827451.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A152767

/-! ## A152767.P12260318570377827451

`3*n*(4*n-3)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152767

/-- `3*n*(4*n-3)` -/
def P12260318570377827451.Spec : Prop :=
  ∀ n, P12260318570377827451.a n = A152767 n

theorem P12260318570377827451.correct : P12260318570377827451.Spec := by
  intro n
  simp only [A152767]

end A152767

/-! ## A152767.P17909747521445903224

`∑[a(n-1)+24]` with `a(0)=0, a(1)=3`
-/

namespace A152767.P17909747521445903224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152767.P17909747521445903224

namespace A152767

/-- `∑[a(n-1)+24]` -/
def P17909747521445903224.Spec : Prop :=
  ∀ n, (P17909747521445903224.a n : ℤ) = A152767 n

end A152767

/-! ## A152767.P13715620063012055944

`A158549(n)%A033572(n)`
-/

namespace A152767.P13715620063012055944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158549 n) (A033572 n)

end

end A152767.P13715620063012055944

namespace A152767

/-- `A158549(n)%A033572(n)` -/
def P13715620063012055944.Spec : Prop :=
  ∀ n, P13715620063012055944.a n = A152767 n

end A152767

/-! ## A152767.P12856550395407005008

`A158558(n)%A272399(n+1)`
-/

namespace A152767.P12856550395407005008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158558 n) (A272399 (n + 1))

end

end A152767.P12856550395407005008

namespace A152767

/-- `A158558(n)%A272399(n+1)` -/
def P12856550395407005008.Spec : Prop :=
  ∀ n, P12856550395407005008.a n = A152767 n

end A152767

/-!
# A152768: Records in A139251.

The programs for A152768, there is no canonical definition to state claims against.
-/

/-! ## A152768.P12562309750698335304

`record[Δ[A139250(n)]]`
-/

namespace A152768.P12562309750698335304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152768.P12562309750698335304

/-! ## A152768.P17165569994037050994

`record[A139251(n+1)]`
-/

namespace A152768.P17165569994037050994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152768.P17165569994037050994

/-! ## A152768.P4021653407907728819

`record[Δ[A266530(2*n+1)]]`
-/

namespace A152768.P4021653407907728819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152768.P4021653407907728819

/-! ## A152768.P13351568337019784761

`record[Δ[A187220(n+1)/2]]`
-/

namespace A152768.P13351568337019784761
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187220 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152768.P13351568337019784761

/-! ## A152768.P17568705580871929937

`record[or(A000007(n), A139251(n))]`
-/

namespace A152768.P17568705580871929937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A139251 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152768.P17568705580871929937

/-! ## A152768.P10101716960556148179

`record[xor(A089807(n), A139251(n))]`
-/

namespace A152768.P10101716960556148179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A089807 n) (A139251 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152768.P10101716960556148179

/-! ## A152768.P14428908687017787163

`record[A160552(n+1)+A160552(n)]`
-/

namespace A152768.P14428908687017787163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (n + 1) + A160552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152768.P14428908687017787163

/-! ## A152768.P14024115216876515089

`record[A139250(n+1)-A139250(n)]`
-/

namespace A152768.P14024115216876515089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (n + 1) - A139250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152768.P14024115216876515089

/-!
# A152769: Numbers n such that pi(n) is nonprime.

The programs for A152769, the canonical program `A152769.P11940454190034013172` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152769 has offset 1).

The definition of A152769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8286 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152769.P10547414840761274688

`record[n+1-A055671(A000720(n+1))]`
-/

namespace A152769.P10547414840761274688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A055671 (A000720 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152769.P10547414840761274688

namespace A152769

/-- `record[n+1-A055671(A000720(n+1))]` -/
def P10547414840761274688.Spec : Prop :=
  ∀ n, P10547414840761274688.a n = A152769 (n + 1)

end A152769

/-! ## A152769.P11940454190034013172

`eq[A000007(n), A055671(A230980(n))]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A152769

/-- `eq[A000007(n), A055671(A230980(n))]` -/
def P11940454190034013172.Spec : Prop :=
  ∀ n, (P11940454190034013172.a n : ℤ) = A152769 (n + 1)

theorem P11940454190034013172.correct : P11940454190034013172.Spec := by
  intro n
  simp only [A152769, Nat.add_sub_cancel]

end A152769

/-! ## A152769.P12226104592663065829

`eq[A000038(n), A055671(A230980(n))]`
-/

namespace A152769.P12226104592663065829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A230980 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152769.P12226104592663065829

namespace A152769

/-- `eq[A000038(n), A055671(A230980(n))]` -/
def P12226104592663065829.Spec : Prop :=
  ∀ n, (P12226104592663065829.a n : ℤ) = A152769 (n + 1)

end A152769

/-! ## A152769.P11158144399153672013

`eq[A000007(n), A257994(A136548(n+1))]`
-/

namespace A152769.P11158144399153672013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A136548 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152769.P11158144399153672013

namespace A152769

/-- `eq[A000007(n), A257994(A136548(n+1))]` -/
def P11158144399153672013.Spec : Prop :=
  ∀ n, (P11158144399153672013.a n : ℤ) = A152769 (n + 1)

end A152769

/-! ## A152769.P7087314032854802696

`eq[A057427(n), A295665(A136548(n+1))]`
-/

namespace A152769.P7087314032854802696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295665 (A136548 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152769.P7087314032854802696

namespace A152769

/-- `eq[A057427(n), A295665(A136548(n+1))]` -/
def P7087314032854802696.Spec : Prop :=
  ∀ n, (P7087314032854802696.a n : ℤ) = A152769 (n + 1)

end A152769

/-! ## A152769.P5012300139264373300

`eq[A055671(A230980(n)), A266437(2*n)]`
-/

namespace A152769.P5012300139264373300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A230980 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266437 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152769.P5012300139264373300

namespace A152769

/-- `eq[A055671(A230980(n)), A266437(2*n)]` -/
def P5012300139264373300.Spec : Prop :=
  ∀ n, (P5012300139264373300.a n : ℤ) = A152769 (n + 1)

end A152769

/-! ## A152769.P6295176907526805573

`eq[A055672(A230980(n)), A134746(2*n)]`
-/

namespace A152769.P6295176907526805573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A230980 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134746 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152769.P6295176907526805573

namespace A152769

/-- `eq[A055672(A230980(n)), A134746(2*n)]` -/
def P6295176907526805573.Spec : Prop :=
  ∀ n, (P6295176907526805573.a n : ℤ) = A152769 (n + 1)

end A152769

/-! ## A152769.P1316037348804756487

`lt[A055671(A055679(2*n+1)), n]`
-/

namespace A152769.P1316037348804756487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A055679 (2 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A152769.P1316037348804756487

namespace A152769

/-- `lt[A055671(A055679(2*n+1)), n]` -/
def P1316037348804756487.Spec : Prop :=
  ∀ n, (P1316037348804756487.a n : ℤ) = A152769 (n + 1)

end A152769

/-! ## A152769.P1140773392204667605

`eq[A000038(n), A105700(A230980(n)²)]`
-/

namespace A152769.P1140773392204667605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A230980 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152769.P1140773392204667605

namespace A152769

/-- `eq[A000038(n), A105700(A230980(n)²)]` -/
def P1140773392204667605.Spec : Prop :=
  ∀ n, (P1140773392204667605.a n : ℤ) = A152769 (n + 1)

end A152769

/-!
# A152770: Sum of proper divisors minus the number of proper divisors of n: a(n) = sigma(n) - n - d(n) + 1.

The programs for A152770, the canonical program `A152770.P4996422170920482869` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152770 has offset 1).

The definition of A152770 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062249, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152770.P3406510410693525767

`A065608(n+1)-n`
-/

namespace A152770.P3406510410693525767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (n + 1) - (n : ℤ)

end

end A152770.P3406510410693525767

namespace A152770

/-- `A065608(n+1)-n` -/
def P3406510410693525767.Spec : Prop :=
  ∀ n, P3406510410693525767.a n = A152770 (n + 1)

end A152770

/-! ## A152770.P4032080079446412206

`A158901(n+1)-(n+1)`
-/

namespace A152770.P4032080079446412206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158901 (n + 1) - (n + 1 : ℤ)

end

end A152770.P4032080079446412206

namespace A152770

/-- `A158901(n+1)-(n+1)` -/
def P4032080079446412206.Spec : Prop :=
  ∀ n, P4032080079446412206.a n = A152770 (n + 1)

end A152770

/-! ## A152770.P8714778833051506317

`A001065(n+1)-A032741(n+1)`
-/

namespace A152770.P8714778833051506317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A032741 (n + 1)

end

end A152770.P8714778833051506317

namespace A152770

/-- `A001065(n+1)-A032741(n+1)` -/
def P8714778833051506317.Spec : Prop :=
  ∀ n, P8714778833051506317.a n = A152770 (n + 1)

end A152770

/-! ## A152770.P14952829253502103036

`A001065(n+1)-A000005(n+1)+1`
-/

namespace A152770.P14952829253502103036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A000005 (n + 1) + 1

end

end A152770.P14952829253502103036

namespace A152770

/-- `A001065(n+1)-A000005(n+1)+1` -/
def P14952829253502103036.Spec : Prop :=
  ∀ n, P14952829253502103036.a n = A152770 (n + 1)

end A152770

/-! ## A152770.P4996422170920482869

`A000203(n+1)-A062249(n+1)+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A152770

/-- `A000203(n+1)-A062249(n+1)+1` -/
def P4996422170920482869.Spec : Prop :=
  ∀ n, P4996422170920482869.a n = A152770 (n + 1)

theorem P4996422170920482869.correct : P4996422170920482869.Spec := by
  intro n
  simp only [A152770, Nat.add_sub_cancel]

end A152770

/-! ## A152770.P1699740632270470562

`A000203(n+1)-A000005(n+1)-n`
-/

namespace A152770.P1699740632270470562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000005 (n + 1) - (n : ℤ)

end

end A152770.P1699740632270470562

namespace A152770

/-- `A000203(n+1)-A000005(n+1)-n` -/
def P1699740632270470562.Spec : Prop :=
  ∀ n, P1699740632270470562.a n = A152770 (n + 1)

end A152770

/-! ## A152770.P1946432010551867198

`A000203(n+1)-A032741(n+1)-(n+1)`
-/

namespace A152770.P1946432010551867198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A032741 (n + 1) - (n + 1 : ℤ)

end

end A152770.P1946432010551867198

namespace A152770

/-- `A000203(n+1)-A032741(n+1)-(n+1)` -/
def P1946432010551867198.Spec : Prop :=
  ∀ n, P1946432010551867198.a n = A152770 (n + 1)

end A152770

/-! ## A152770.P18311221423574909633

`∑{d}[n+1, #-1]-n`
-/

namespace A152770.P18311221423574909633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 1) - (n : ℤ)

end

end A152770.P18311221423574909633

namespace A152770

/-- `∑{d}[n+1, #-1]-n` -/
def P18311221423574909633.Spec : Prop :=
  ∀ n, P18311221423574909633.a n = A152770 (n + 1)

end A152770

/-! ## A152770.P11553895445137354421

`∑{d}[n+1, A016035(#)]`
-/

namespace A152770.P11553895445137354421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A016035 d

end

end A152770.P11553895445137354421

namespace A152770

/-- `∑{d}[n+1, A016035(#)]` -/
def P11553895445137354421.Spec : Prop :=
  ∀ n, P11553895445137354421.a n = A152770 (n + 1)

end A152770

/-! ## A152770.P11192602435153042773

`1-A152864(n+1)+n`
-/

namespace A152770.P11192602435153042773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A152864 (n + 1) + (n : ℤ)

end

end A152770.P11192602435153042773

namespace A152770

/-- `1-A152864(n+1)+n` -/
def P11192602435153042773.Spec : Prop :=
  ∀ n, P11192602435153042773.a n = A152770 (n + 1)

end A152770

/-! ## A152770.P901370711728993048

`A137319(n+1)-Δ[n²]`
-/

namespace A152770.P901370711728993048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137319 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A152770.P901370711728993048

namespace A152770

/-- `A137319(n+1)-Δ[n²]` -/
def P901370711728993048.Spec : Prop :=
  ∀ n, P901370711728993048.a n = A152770 (n + 1)

end A152770

/-! ## A152770.P8650423168243117782

`A330866(n+1)/(n+1)-n`
-/

namespace A152770.P8650423168243117782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330866 (n + 1) : ℚ) / (n + 1 : ℚ) - (n : ℚ)

end

end A152770.P8650423168243117782

namespace A152770

/-- `A330866(n+1)/(n+1)-n` -/
def P8650423168243117782.Spec : Prop :=
  ∀ n, P8650423168243117782.a n = (A152770 (n + 1) : ℚ)

end A152770

/-! ## A152770.P2099142904989513177

`A088580(n+1)-(∏{e}[n+1, #+1]+1+n)`
-/

namespace A152770.P2099142904989513177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 1 + n : ℕ) : ℤ)

end

end A152770.P2099142904989513177

namespace A152770

/-- `A088580(n+1)-(∏{e}[n+1, #+1]+1+n)` -/
def P2099142904989513177.Spec : Prop :=
  ∀ n, P2099142904989513177.a n = A152770 (n + 1)

end A152770

/-! ## A152770.P12256693740761785202

`A000124(n)-A344622(n+1)`
-/

namespace A152770.P12256693740761785202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A344622 (n + 1)

end

end A152770.P12256693740761785202

namespace A152770

/-- `A000124(n)-A344622(n+1)` -/
def P12256693740761785202.Spec : Prop :=
  ∀ n, P12256693740761785202.a n = A152770 (n + 1)

end A152770

/-! ## A152770.P7655043569949358964

`A173455(n+1)-A325765(n)`
-/

namespace A152770.P7655043569949358964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (n + 1) - A325765 n

end

end A152770.P7655043569949358964

namespace A152770

/-- `A173455(n+1)-A325765(n)` -/
def P7655043569949358964.Spec : Prop :=
  ∀ n, P7655043569949358964.a n = A152770 (n + 1)

end A152770

/-! ## A152770.P4321250629569368529

`A062968(n+1)+A033880(n+1)`
-/

namespace A152770.P4321250629569368529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (n + 1) + A033880 (n + 1)

end

end A152770.P4321250629569368529

namespace A152770

/-- `A062968(n+1)+A033880(n+1)` -/
def P4321250629569368529.Spec : Prop :=
  ∀ n, P4321250629569368529.a n = A152770 (n + 1)

end A152770

/-! ## A152770.P17053904692474441419

`A051709(n+1)+A045763(n+1)`
-/

namespace A152770.P17053904692474441419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (n + 1) + A045763 (n + 1)

end

end A152770.P17053904692474441419

namespace A152770

/-- `A051709(n+1)+A045763(n+1)` -/
def P17053904692474441419.Spec : Prop :=
  ∀ n, P17053904692474441419.a n = A152770 (n + 1)

end A152770

/-! ## A152770.P17278769594878930223

`A237588(n+1)+A049820(n+1)`
-/

namespace A152770.P17278769594878930223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + A049820 (n + 1)

end

end A152770.P17278769594878930223

namespace A152770

/-- `A237588(n+1)+A049820(n+1)` -/
def P17278769594878930223.Spec : Prop :=
  ∀ n, P17278769594878930223.a n = A152770 (n + 1)

end A152770

/-! ## A152770.P436345681502039557

`A219428(n+1)+A153011(n+1)`
-/

namespace A152770.P436345681502039557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1) + A153011 (n + 1)

end

end A152770.P436345681502039557

namespace A152770

/-- `A219428(n+1)+A153011(n+1)` -/
def P436345681502039557.Spec : Prop :=
  ∀ n, P436345681502039557.a n = A152770 (n + 1)

end A152770

/-! ## A152770.P5362645160801483697

`A062968(n+1)-A033879(n+1)`
-/

namespace A152770.P5362645160801483697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (n + 1) - A033879 (n + 1)

end

end A152770.P5362645160801483697

namespace A152770

/-- `A062968(n+1)-A033879(n+1)` -/
def P5362645160801483697.Spec : Prop :=
  ∀ n, P5362645160801483697.a n = A152770 (n + 1)

end A152770

/-!
# A152771: a(n) = sigma(n) - 2*d(n) + 1.

The programs for A152771, the canonical program `A152771.P13412887130094788285` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152771 has offset 1).

The definition of A152771 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A114003, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152771.P13412887130094788285

`A000203(n+1)-A114003(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A152771

/-- `A000203(n+1)-A114003(n+1)` -/
def P13412887130094788285.Spec : Prop :=
  ∀ n, P13412887130094788285.a n = A152771 (n + 1)

theorem P13412887130094788285.correct : P13412887130094788285.Spec := by
  intro n
  simp only [A152771, Nat.add_sub_cancel]

end A152771

/-! ## A152771.P13282677281111844742

`A088580(n+1)-A062011(n+1)`
-/

namespace A152771.P13282677281111844742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A062011 (n + 1)

end

end A152771.P13282677281111844742

namespace A152771

/-- `A088580(n+1)-A062011(n+1)` -/
def P13282677281111844742.Spec : Prop :=
  ∀ n, P13282677281111844742.a n = A152771 (n + 1)

end A152771

/-! ## A152771.P1169437044686176584

`A000203(n+1)-2*A000005(n+1)+1`
-/

namespace A152771.P1169437044686176584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - 2 * A000005 (n + 1) + 1

end

end A152771.P1169437044686176584

namespace A152771

/-- `A000203(n+1)-2*A000005(n+1)+1` -/
def P1169437044686176584.Spec : Prop :=
  ∀ n, P1169437044686176584.a n = A152771 (n + 1)

end A152771

/-! ## A152771.P16714297429963707320

`∑{d}[n+1, #-2]+1`
-/

namespace A152771.P16714297429963707320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 2) + 1

end

end A152771.P16714297429963707320

namespace A152771

/-- `∑{d}[n+1, #-2]+1` -/
def P16714297429963707320.Spec : Prop :=
  ∀ n, P16714297429963707320.a n = A152771 (n + 1)

end A152771

/-! ## A152771.P17913456541096441530

`∑{d}[n+1, (2*n)%#]`
-/

namespace A152771.P17913456541096441530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), 2 * n % d

end

end A152771.P17913456541096441530

namespace A152771

/-- `∑{d}[n+1, (2*n)%#]` -/
def P17913456541096441530.Spec : Prop :=
  ∀ n, (P17913456541096441530.a n : ℤ) = A152771 (n + 1)

end A152771

/-! ## A152771.P1201602318201824721

`A152770(n+1)+A049820(n+1)`
-/

namespace A152771.P1201602318201824721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (n + 1) + A049820 (n + 1)

end

end A152771.P1201602318201824721

namespace A152771

/-- `A152770(n+1)+A049820(n+1)` -/
def P1201602318201824721.Spec : Prop :=
  ∀ n, P1201602318201824721.a n = A152771 (n + 1)

end A152771

/-! ## A152771.P15586455354802212549

`A065608(n+1)-A032741(n+1)`
-/

namespace A152771.P15586455354802212549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (n + 1) - A032741 (n + 1)

end

end A152771.P15586455354802212549

namespace A152771

/-- `A065608(n+1)-A032741(n+1)` -/
def P15586455354802212549.Spec : Prop :=
  ∀ n, P15586455354802212549.a n = A152771 (n + 1)

end A152771

/-! ## A152771.P4312191309107162833

`A158901(n+1)-A000005(n+1)`
-/

namespace A152771.P4312191309107162833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158901 (n + 1) - A000005 (n + 1)

end

end A152771.P4312191309107162833

namespace A152771

/-- `A158901(n+1)-A000005(n+1)` -/
def P4312191309107162833.Spec : Prop :=
  ∀ n, P4312191309107162833.a n = A152771 (n + 1)

end A152771

/-! ## A152771.P3756703207715016042

`A137319(n+1)-A158907(n+1)`
-/

namespace A152771.P3756703207715016042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137319 (n + 1) - A158907 (n + 1)

end

end A152771.P3756703207715016042

namespace A152771

/-- `A137319(n+1)-A158907(n+1)` -/
def P3756703207715016042.Spec : Prop :=
  ∀ n, P3756703207715016042.a n = A152771 (n + 1)

end A152771

/-! ## A152771.P6972243771735806764

`A255385(n+1)-A073757(n+1)`
-/

namespace A152771.P6972243771735806764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255385 (n + 1) - A073757 (n + 1)

end

end A152771.P6972243771735806764

namespace A152771

/-- `A255385(n+1)-A073757(n+1)` -/
def P6972243771735806764.Spec : Prop :=
  ∀ n, P6972243771735806764.a n = A152771 (n + 1)

end A152771

/-! ## A152771.P3178430155545546863

`A286002(n+1)-A152864(n+1)`
-/

namespace A152771.P3178430155545546863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286002 (n + 1) - A152864 (n + 1)

end

end A152771.P3178430155545546863

namespace A152771

/-- `A286002(n+1)-A152864(n+1)` -/
def P3178430155545546863.Spec : Prop :=
  ∀ n, P3178430155545546863.a n = A152771 (n + 1)

end A152771

/-! ## A152771.P6499031009912640282

`A152772(n+1)-A378216(n+1)`
-/

namespace A152771.P6499031009912640282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152772 (n + 1) - A378216 (n + 1)

end

end A152771.P6499031009912640282

namespace A152771

/-- `A152772(n+1)-A378216(n+1)` -/
def P6499031009912640282.Spec : Prop :=
  ∀ n, P6499031009912640282.a n = A152771 (n + 1)

end A152771

/-! ## A152771.P6540717289755473032

`A000203(n+1)+1-A062011(n+1)`
-/

namespace A152771.P6540717289755473032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (1 - A062011 (n + 1))

end

end A152771.P6540717289755473032

namespace A152771

/-- `A000203(n+1)+1-A062011(n+1)` -/
def P6540717289755473032.Spec : Prop :=
  ∀ n, P6540717289755473032.a n = A152771 (n + 1)

end A152771

/-! ## A152771.P12213615837247821545

`A065608(n+1)+1-A000005(n+1)`
-/

namespace A152771.P12213615837247821545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (n + 1) + (1 - A000005 (n + 1))

end

end A152771.P12213615837247821545

namespace A152771

/-- `A065608(n+1)+1-A000005(n+1)` -/
def P12213615837247821545.Spec : Prop :=
  ∀ n, P12213615837247821545.a n = A152771 (n + 1)

end A152771

/-! ## A152771.P13913328710712753160

`A237588(n+1)+2*A049820(n+1)`
-/

namespace A152771.P13913328710712753160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + 2 * A049820 (n + 1)

end

end A152771.P13913328710712753160

namespace A152771

/-- `A237588(n+1)+2*A049820(n+1)` -/
def P13913328710712753160.Spec : Prop :=
  ∀ n, P13913328710712753160.a n = A152771 (n + 1)

end A152771

/-! ## A152771.P18221144205176390227

`A039653(n+1)-2*A032741(n+1)`
-/

namespace A152771.P18221144205176390227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) - 2 * A032741 (n + 1)

end

end A152771.P18221144205176390227

namespace A152771

/-- `A039653(n+1)-2*A032741(n+1)` -/
def P18221144205176390227.Spec : Prop :=
  ∀ n, P18221144205176390227.a n = A152771 (n + 1)

end A152771

/-! ## A152771.P9675993112069560078

`A088580(n+1)-2*A000005(n+1)`
-/

namespace A152771.P9675993112069560078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - 2 * A000005 (n + 1)

end

end A152771.P9675993112069560078

namespace A152771

/-- `A088580(n+1)-2*A000005(n+1)` -/
def P9675993112069560078.Spec : Prop :=
  ∀ n, P9675993112069560078.a n = A152771 (n + 1)

end A152771

/-! ## A152771.P15317850297115895788

`A137319(n+1)-(A000005(n+1)+n)`
-/

namespace A152771.P15317850297115895788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137319 (n + 1) - (A000005 (n + 1) + (n : ℤ))

end

end A152771.P15317850297115895788

namespace A152771

/-- `A137319(n+1)-(A000005(n+1)+n)` -/
def P15317850297115895788.Spec : Prop :=
  ∀ n, P15317850297115895788.a n = A152771 (n + 1)

end A152771

/-! ## A152771.P2613106614612428993

`A062968(n+1)-A152864(n+1)+n`
-/

namespace A152771.P2613106614612428993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (n + 1) - A152864 (n + 1) + (n : ℤ)

end

end A152771.P2613106614612428993

namespace A152771

/-- `A062968(n+1)-A152864(n+1)+n` -/
def P2613106614612428993.Spec : Prop :=
  ∀ n, P2613106614612428993.a n = A152771 (n + 1)

end A152771

/-! ## A152771.P8970627689458548987

`A088580(n+1)-A004277(∏{e}[n+1, #+1])`
-/

namespace A152771.P8970627689458548987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A004277 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A152771.P8970627689458548987

namespace A152771

/-- `A088580(n+1)-A004277(∏{e}[n+1, #+1])` -/
def P8970627689458548987.Spec : Prop :=
  ∀ n, P8970627689458548987.a n = A152771 (n + 1)

end A152771

/-!
# A152772: a(n) = sigma(n) - 3*d(n) + 3.

The programs for A152772, the canonical program `A152772.P6447280447161898636` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152772 has offset 1).

The definition of A152772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152772.P6447280447161898636

`∑{d}[n+1, #-3]+3`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152772

/-- `∑{d}[n+1, #-3]+3` -/
def P6447280447161898636.Spec : Prop :=
  ∀ n, P6447280447161898636.a n = A152772 (n + 1)

theorem P6447280447161898636.correct : P6447280447161898636.Spec := by
  intro n
  simp only [A152772, Nat.add_sub_cancel]

end A152772

/-! ## A152772.P8000289250890126603

`∑{d}[n+1, -3%#²+#]`
-/

namespace A152772.P8000289250890126603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Int.tmod (-3) (d ^ 2 : ℤ) + (d : ℤ))

end

end A152772.P8000289250890126603

namespace A152772

/-- `∑{d}[n+1, -3%#²+#]` -/
def P8000289250890126603.Spec : Prop :=
  ∀ n, P8000289250890126603.a n = A152772 (n + 1)

end A152772

/-! ## A152772.P14237650140400886540

`(∑{d}[n+1, #]*∏{e}[n+1, #+1])%(∑{d}[n+1, #]+3)`
-/

namespace A152772.P14237650140400886540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)) % (∑ d ∈ Nat.divisors (f3 n), d + 3)

end

end A152772.P14237650140400886540

namespace A152772

/-- `(∑{d}[n+1, #]*∏{e}[n+1, #+1])%(∑{d}[n+1, #]+3)` -/
def P14237650140400886540.Spec : Prop :=
  ∀ n, (P14237650140400886540.a n : ℤ) = A152772 (n + 1)

end A152772

/-! ## A152772.P7762129995176610607

`A378216(n+1)+A152771(n+1)`
-/

namespace A152772.P7762129995176610607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378216 (n + 1) + A152771 (n + 1)

end

end A152772.P7762129995176610607

namespace A152772

/-- `A378216(n+1)+A152771(n+1)` -/
def P7762129995176610607.Spec : Prop :=
  ∀ n, P7762129995176610607.a n = A152772 (n + 1)

end A152772

/-! ## A152772.P1535872556894123036

`A152771(n+1)+2-A000005(n+1)`
-/

namespace A152772.P1535872556894123036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152771 (n + 1) + (2 - A000005 (n + 1))

end

end A152772.P1535872556894123036

namespace A152772

/-- `A152771(n+1)+2-A000005(n+1)` -/
def P1535872556894123036.Spec : Prop :=
  ∀ n, P1535872556894123036.a n = A152772 (n + 1)

end A152772

/-! ## A152772.P14341039581797421087

`2*A062968(n+1)-A152864(n+1)`
-/

namespace A152772.P14341039581797421087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062968 (n + 1) - A152864 (n + 1)

end

end A152772.P14341039581797421087

namespace A152772

/-- `2*A062968(n+1)-A152864(n+1)` -/
def P14341039581797421087.Spec : Prop :=
  ∀ n, P14341039581797421087.a n = A152772 (n + 1)

end A152772

/-! ## A152772.P17395817205448214226

`A000203(n+1)-3*A032741(n+1)`
-/

namespace A152772.P17395817205448214226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - 3 * A032741 (n + 1)

end

end A152772.P17395817205448214226

namespace A152772

/-- `A000203(n+1)-3*A032741(n+1)` -/
def P17395817205448214226.Spec : Prop :=
  ∀ n, P17395817205448214226.a n = A152772 (n + 1)

end A152772

/-! ## A152772.P15713779181843405354

`A064840(n+1)%(A000203(n+1)+3)`
-/

namespace A152772.P15713779181843405354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064840 (n + 1)) (A000203 (n + 1) + 3)

end

end A152772.P15713779181843405354

namespace A152772

/-- `A064840(n+1)%(A000203(n+1)+3)` -/
def P15713779181843405354.Spec : Prop :=
  ∀ n, P15713779181843405354.a n = A152772 (n + 1)

end A152772

/-! ## A152772.P8937873433362080414

`A000203(n+1)+3*(1-A000005(n+1))`
-/

namespace A152772.P8937873433362080414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + 3 * (1 - A000005 (n + 1))

end

end A152772.P8937873433362080414

namespace A152772

/-- `A000203(n+1)+3*(1-A000005(n+1))` -/
def P8937873433362080414.Spec : Prop :=
  ∀ n, P8937873433362080414.a n = A152772 (n + 1)

end A152772

/-! ## A152772.P9516170281590966058

`A004767(∑{d}[n+1, #])%∑{d}[n+1, #+1]`
-/

namespace A152772.P9516170281590966058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004767 (∑ d ∈ Nat.divisors (f1 n), d)) ((∑ d ∈ Nat.divisors (f2 n), (d + 1) : ℕ) : ℤ)

end

end A152772.P9516170281590966058

namespace A152772

/-- `A004767(∑{d}[n+1, #])%∑{d}[n+1, #+1]` -/
def P9516170281590966058.Spec : Prop :=
  ∀ n, P9516170281590966058.a n = A152772 (n + 1)

end A152772

/-! ## A152772.P9986572201676253512

`A159619(2*∑{d}[n+1, #])%∑{d}[n+1, #+1]`
-/

namespace A152772.P9986572201676253512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159619 (2 * (∑ d ∈ Nat.divisors (f1 n), d))) ((∑ d ∈ Nat.divisors (f2 n), (d + 1) : ℕ) : ℤ)

end

end A152772.P9986572201676253512

namespace A152772

/-- `A159619(2*∑{d}[n+1, #])%∑{d}[n+1, #+1]` -/
def P9986572201676253512.Spec : Prop :=
  ∀ n, P9986572201676253512.a n = A152772 (n + 1)

end A152772

/-! ## A152772.P5381668880933311523

`A000203(n+1)-3*A001222(∏{d}[n+1, A020639(#)])`
-/

namespace A152772.P5381668880933311523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - 3 * A001222 (∏ d ∈ Nat.divisors (f1 n), A020639 d).toNat

end

end A152772.P5381668880933311523

namespace A152772

/-- `A000203(n+1)-3*A001222(∏{d}[n+1, A020639(#)])` -/
def P5381668880933311523.Spec : Prop :=
  ∀ n, P5381668880933311523.a n = A152772 (n + 1)

end A152772

/-!
# A152773: 3 times heptagonal numbers: a(n) = 3*n*(5*n-3)/2.

The programs for A152773, the canonical program `A152773.P4356461927346527955` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152773 has offset 0).

The definition of A152773 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(5*n-3)/2` (program `A152773.P5051654573183598058`, by `A152773.P5051654573183598058.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152773.P6816355962148108035

`(15*n²-9*n)/2`
-/

namespace A152773.P6816355962148108035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((15 * n ^ 2 : ℤ) - (9 * n : ℤ) : ℚ) / 2

end

end A152773.P6816355962148108035

namespace A152773

/-- `(15*n²-9*n)/2` -/
def P6816355962148108035.Spec : Prop :=
  ∀ n, P6816355962148108035.a n = (A152773 n : ℚ)

theorem P6816355962148108035.correct : P6816355962148108035.Spec := by
  intro n
  induction n with
  | zero => simp [A152773, A152773.P6816355962148108035.a, A152773.P4356461927346527955.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A152773, Nat.add_sub_cancel, A152773.P6816355962148108035.a, A152773.P4356461927346527955.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A152773

/-! ## A152773.P5051654573183598058

`3*n*(5*n-3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152773.P5051654573183598058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℚ) * (((5 * n : ℤ) - 3 : ℚ) / 2))

end

end A152773.P5051654573183598058

namespace A152773

/-- `3*n*(5*n-3)/2` -/
def P5051654573183598058.Spec : Prop :=
  ∀ n, P5051654573183598058.a n = (A152773 n : ℚ)

theorem P5051654573183598058.correct : P5051654573183598058.Spec := by
  intro n
  induction n with
  | zero => simp [A152773, A152773.P5051654573183598058.a, A152773.P4356461927346527955.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A152773, Nat.add_sub_cancel, A152773.P5051654573183598058.a, A152773.P4356461927346527955.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A152773

/-! ## A152773.P4356461927346527955

`a(n-1)+15*n-12` with `a(0)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152773

/-- `a(n-1)+15*n-12` -/
def P4356461927346527955.Spec : Prop :=
  ∀ n, P4356461927346527955.a n = A152773 n

theorem P4356461927346527955.correct : P4356461927346527955.Spec := by
  intro n
  simp only [A152773]

end A152773

/-! ## A152773.P2025195546616912935

`n+A226489(n)`
-/

namespace A152773.P2025195546616912935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A226489 n

end

end A152773.P2025195546616912935

namespace A152773

/-- `n+A226489(n)` -/
def P2025195546616912935.Spec : Prop :=
  ∀ n, P2025195546616912935.a n = A152773 n

end A152773

/-! ## A152773.P17177482254045897771

`∑[a(n-1)+15]` with `a(0)=0, a(1)=3`
-/

namespace A152773.P17177482254045897771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152773.P17177482254045897771

namespace A152773

/-- `∑[a(n-1)+15]` -/
def P17177482254045897771.Spec : Prop :=
  ∀ n, (P17177482254045897771.a n : ℤ) = A152773 n

end A152773

/-! ## A152773.P8205267834213610151

`12-∑[a(n-1)-15]` with `a(0)=12`
-/

namespace A152773.P8205267834213610151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [12] fun n f1 =>
  f1 (n - 1) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152773.P8205267834213610151

namespace A152773

/-- `12-∑[a(n-1)-15]` -/
def P8205267834213610151.Spec : Prop :=
  ∀ n, P8205267834213610151.a n = A152773 n

end A152773

/-! ## A152773.P18132770541229333344

`4*C(2*n, 2)-∑[n]`
-/

namespace A152773.P18132770541229333344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.choose (2 * n) 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A152773.P18132770541229333344

namespace A152773

/-- `4*C(2*n, 2)-∑[n]` -/
def P18132770541229333344.Spec : Prop :=
  ∀ n, P18132770541229333344.a n = A152773 n

end A152773

/-! ## A152773.P11183757633350366130

`A226488(n)+n²`
-/

namespace A152773.P11183757633350366130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226488 n + (n ^ 2 : ℤ)

end

end A152773.P11183757633350366130

namespace A152773

/-- `A226488(n)+n²` -/
def P11183757633350366130.Spec : Prop :=
  ∀ n, P11183757633350366130.a n = A152773 n

end A152773

/-! ## A152773.P16179862488835162678

`A139268(n)+∑[n]`
-/

namespace A152773.P16179862488835162678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139268 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A152773.P16179862488835162678

namespace A152773

/-- `A139268(n)+∑[n]` -/
def P16179862488835162678.Spec : Prop :=
  ∀ n, P16179862488835162678.a n = A152773 n

end A152773

/-! ## A152773.P16879409335215450058

`A085250(n)-∑[n]`
-/

namespace A152773.P16879409335215450058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085250 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A152773.P16879409335215450058

namespace A152773

/-- `A085250(n)-∑[n]` -/
def P16879409335215450058.Spec : Prop :=
  ∀ n, P16879409335215450058.a n = A152773 n

end A152773

/-! ## A152773.P7982996344921972916

`A051869(n)+2*n`
-/

namespace A152773.P7982996344921972916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051869 n + (2 * n : ℤ)

end

end A152773.P7982996344921972916

namespace A152773

/-- `A051869(n)+2*n` -/
def P7982996344921972916.Spec : Prop :=
  ∀ n, P7982996344921972916.a n = A152773 n

end A152773

/-! ## A152773.P3032851391878048799

`A152734(n)-2*n`
-/

namespace A152773.P3032851391878048799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152734 n - (2 * n : ℤ)

end

end A152773.P3032851391878048799

namespace A152773

/-- `A152734(n)-2*n` -/
def P3032851391878048799.Spec : Prop :=
  ∀ n, P3032851391878048799.a n = A152773 n

end A152773

/-!
# A152774: Number of proper divisors of the Fibonacci number A000045(n).

The programs for A152774, the canonical program `A152774.P2921977873016836670` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152774 has offset 1).

The definition of A152774 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032741, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152774.P1662122925123933355

`A063375(n+1)-1`
-/

namespace A152774.P1662122925123933355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063375 (n + 1) - 1

end

end A152774.P1662122925123933355

namespace A152774

/-- `A063375(n+1)-1` -/
def P1662122925123933355.Spec : Prop :=
  ∀ n, P1662122925123933355.a n = A152774 (n + 1)

end A152774

/-! ## A152774.P803608586245447406

`A000005(A000045(n+1))-1`
-/

namespace A152774.P803608586245447406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000045 (n + 1)).toNat - 1

end

end A152774.P803608586245447406

namespace A152774

/-- `A000005(A000045(n+1))-1` -/
def P803608586245447406.Spec : Prop :=
  ∀ n, P803608586245447406.a n = A152774 (n + 1)

end A152774

/-! ## A152774.P2921977873016836670

`A032741(A000045(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A152774

/-- `A032741(A000045(n+1))` -/
def P2921977873016836670.Spec : Prop :=
  ∀ n, P2921977873016836670.a n = A152774 (n + 1)

theorem P2921977873016836670.correct : P2921977873016836670.Spec := by
  intro n
  simp only [A152774, Nat.add_sub_cancel]

end A152774

/-! ## A152774.P5277672738731161832

`A067856(A002144(n+1))+A063375(n+1)`
-/

namespace A152774.P5277672738731161832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (A002144 (n + 1)).toNat + A063375 (n + 1)

end

end A152774.P5277672738731161832

namespace A152774

/-- `A067856(A002144(n+1))+A063375(n+1)` -/
def P5277672738731161832.Spec : Prop :=
  ∀ n, P5277672738731161832.a n = A152774 (n + 1)

end A152774

/-! ## A152774.P1203102329547527920

`A197774(A074593(n+1))+A063375(n+1)`
-/

namespace A152774.P1203102329547527920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197774 (A074593 (n + 1)).toNat + A063375 (n + 1)

end

end A152774.P1203102329547527920

namespace A152774

/-- `A197774(A074593(n+1))+A063375(n+1)` -/
def P1203102329547527920.Spec : Prop :=
  ∀ n, P1203102329547527920.a n = A152774 (n + 1)

end A152774

/-! ## A152774.P9771975867296006265

`A305807(A000040(n+1))+A063375(n+1)`
-/

namespace A152774.P9771975867296006265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305807 (A000040 (n + 1)).toNat + A063375 (n + 1)

end

end A152774.P9771975867296006265

namespace A152774

/-- `A305807(A000040(n+1))+A063375(n+1)` -/
def P9771975867296006265.Spec : Prop :=
  ∀ n, P9771975867296006265.a n = A152774 (n + 1)

end A152774

/-! ## A152774.P16925457066410629582

`A348954(A198170(n+1))+A063375(n+1)`
-/

namespace A152774.P16925457066410629582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348954 (A198170 (n + 1)).toNat + A063375 (n + 1)

end

end A152774.P16925457066410629582

namespace A152774

/-- `A348954(A198170(n+1))+A063375(n+1)` -/
def P16925457066410629582.Spec : Prop :=
  ∀ n, P16925457066410629582.a n = A152774 (n + 1)

end A152774

/-! ## A152774.P2088587101517802921

`A197774(A027748(n+3))+A063375(n+1)`
-/

namespace A152774.P2088587101517802921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197774 (A027748 (n + 3)).toNat + A063375 (n + 1)

end

end A152774.P2088587101517802921

namespace A152774

/-- `A197774(A027748(n+3))+A063375(n+1)` -/
def P2088587101517802921.Spec : Prop :=
  ∀ n, P2088587101517802921.a n = A152774 (n + 1)

end A152774

/-! ## A152774.P9234814638003619206

`A105523(A053381(2*(n+1)))+A063375(n+1)`
-/

namespace A152774.P9234814638003619206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 (A053381 (2 * (n + 1))).toNat + A063375 (n + 1)

end

end A152774.P9234814638003619206

namespace A152774

/-- `A105523(A053381(2*(n+1)))+A063375(n+1)` -/
def P9234814638003619206.Spec : Prop :=
  ∀ n, P9234814638003619206.a n = A152774 (n + 1)

end A152774

/-! ## A152774.P6158744827430317533

`A331952(A242096(2*(n+2)))+A063375(n+1)`
-/

namespace A152774.P6158744827430317533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331952 (A242096 (2 * (n + 2))).toNat + A063375 (n + 1)

end

end A152774.P6158744827430317533

namespace A152774

/-- `A331952(A242096(2*(n+2)))+A063375(n+1)` -/
def P6158744827430317533.Spec : Prop :=
  ∀ n, P6158744827430317533.a n = A152774 (n + 1)

end A152774

/-! ## A152774.P16700159965333880230

`A193291(n+1)+A193292(n+1)-1`
-/

namespace A152774.P16700159965333880230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193291 (n + 1) + (A193292 (n + 1) - 1)

end

end A152774.P16700159965333880230

namespace A152774

/-- `A193291(n+1)+A193292(n+1)-1` -/
def P16700159965333880230.Spec : Prop :=
  ∀ n, P16700159965333880230.a n = A152774 (n + 1)

end A152774

/-! ## A152774.P11379794431998401901

`(A337923(n+1)+1)*A193292(n+1)-1`
-/

namespace A152774.P11379794431998401901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A337923 (n + 1) + 1) * A193292 (n + 1) - 1

end

end A152774.P11379794431998401901

namespace A152774

/-- `(A337923(n+1)+1)*A193292(n+1)-1` -/
def P11379794431998401901.Spec : Prop :=
  ∀ n, P11379794431998401901.a n = A152774 (n + 1)

end A152774

/-! ## A152774.P5323558743345414363

`A000005(A060865(n+1))*A193292(n+1)-1`
-/

namespace A152774.P5323558743345414363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A060865 (n + 1)).toNat * A193292 (n + 1) - 1

end

end A152774.P5323558743345414363

namespace A152774

/-- `A000005(A060865(n+1))*A193292(n+1)-1` -/
def P5323558743345414363.Spec : Prop :=
  ∀ n, P5323558743345414363.a n = A152774 (n + 1)

end A152774

/-! ## A152774.P16726503568565753953

`A074283(n+1)-A152990(n+1)`
-/

namespace A152774.P16726503568565753953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074283 (n + 1) - A152990 (n + 1)

end

end A152774.P16726503568565753953

namespace A152774

/-- `A074283(n+1)-A152990(n+1)` -/
def P16726503568565753953.Spec : Prop :=
  ∀ n, P16726503568565753953.a n = A152774 (n + 1)

end A152774

/-! ## A152774.P1330663584798647182

`∑{d}[n+1, A120256(#)]-1`
-/

namespace A152774.P1330663584798647182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A120256 d - 1

end

end A152774.P1330663584798647182

namespace A152774

/-- `∑{d}[n+1, A120256(#)]-1` -/
def P1330663584798647182.Spec : Prop :=
  ∀ n, P1330663584798647182.a n = A152774 (n + 1)

end A152774

/-! ## A152774.P13096452836562855752

`A030494(n+1)%A063375(n+1)`
-/

namespace A152774.P13096452836562855752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A063375 (n + 1))

end

end A152774.P13096452836562855752

namespace A152774

/-- `A030494(n+1)%A063375(n+1)` -/
def P13096452836562855752.Spec : Prop :=
  ∀ n, P13096452836562855752.a n = A152774 (n + 1)

end A152774

/-! ## A152774.P12603945821094519145

`A023443(A063375(n+1))`
-/

namespace A152774.P12603945821094519145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A063375 (n + 1)).toNat

end

end A152774.P12603945821094519145

namespace A152774

/-- `A023443(A063375(n+1))` -/
def P12603945821094519145.Spec : Prop :=
  ∀ n, P12603945821094519145.a n = A152774 (n + 1)

end A152774

/-! ## A152774.P13451118363569030904

`A023444(A063375(n+1)+1)`
-/

namespace A152774.P13451118363569030904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A063375 (n + 1) + 1).toNat

end

end A152774.P13451118363569030904

namespace A152774

/-- `A023444(A063375(n+1)+1)` -/
def P13451118363569030904.Spec : Prop :=
  ∀ n, P13451118363569030904.a n = A152774 (n + 1)

end A152774

/-! ## A152774.P5849384142597241354

`A289207(A063375(n+1)+1)`
-/

namespace A152774.P5849384142597241354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A063375 (n + 1) + 1).toNat

end

end A152774.P5849384142597241354

namespace A152774

/-- `A289207(A063375(n+1)+1)` -/
def P5849384142597241354.Spec : Prop :=
  ∀ n, P5849384142597241354.a n = A152774 (n + 1)

end A152774

/-! ## A152774.P10302876217526685732

`A023452(A063375(n+1)+9)`
-/

namespace A152774.P10302876217526685732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023452 (A063375 (n + 1) + 9).toNat

end

end A152774.P10302876217526685732

namespace A152774

/-- `A023452(A063375(n+1)+9)` -/
def P10302876217526685732.Spec : Prop :=
  ∀ n, P10302876217526685732.a n = A152774 (n + 1)

end A152774

/-!
# A152775: Numbers with 3n binary digits where every run length is 3, written in binary.

The programs for A152775, there is no canonical definition to state claims against.
-/

/-! ## A152775.P12558037912723901314

`A355280(A099919(n+1))`
-/

namespace A152775.P12558037912723901314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355280 (A099919 (n + 1)).toNat

end

end A152775.P12558037912723901314

/-!
# A152776: Numbers such that every run length in base 2 is 3.

The programs for A152776, the canonical program `A152776.P8844835841567316646` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152776 has offset 1).

The definition of A152776 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152776.P8844835841567316646

`8*a(n-1)+a(n-2)-8*a(n-3)` with `a(0)=7, a(1)=56, a(2)=455`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152776

/-- `8*a(n-1)+a(n-2)-8*a(n-3)` -/
def P8844835841567316646.Spec : Prop :=
  ∀ n, P8844835841567316646.a n = A152776 (n + 1)

theorem P8844835841567316646.correct : P8844835841567316646.Spec := by
  intro n
  simp only [A152776, Nat.add_sub_cancel]

end A152776

/-! ## A152776.P17380888193141578949

`7*A033118(n+1)`
-/

namespace A152776.P17380888193141578949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A033118 (n + 1)

end

end A152776.P17380888193141578949

namespace A152776

/-- `7*A033118(n+1)` -/
def P17380888193141578949.Spec : Prop :=
  ∀ n, P17380888193141578949.a n = A152776 (n + 1)

end A152776

/-! ## A152776.P15797965442705490531

`ogf(7/(1-8x-x^2+8x^3))`
-/

namespace A152776.P15797965442705490531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7] [1, -8, -1, 8] n

end

end A152776.P15797965442705490531

namespace A152776

/-- `ogf(7/(1-8x-x^2+8x^3))` -/
def P15797965442705490531.Spec : Prop :=
  ∀ n, P15797965442705490531.a n = A152776 (n + 1)

end A152776

/-! ## A152776.P17205724361244118293

`floor((8/3)²*8^n)`
-/

namespace A152776.P17205724361244118293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((8 : ℚ) / 3) ^ 2 * (8 ^ n : ℚ)⌋

end

end A152776.P17205724361244118293

namespace A152776

/-- `floor((8/3)²*8^n)` -/
def P17205724361244118293.Spec : Prop :=
  ∀ n, P17205724361244118293.a n = A152776 (n + 1)

end A152776

/-! ## A152776.P14770105666674478674

`7*∑[8^n-a(n-1)]` with `a(0)=1`
-/

namespace A152776.P14770105666674478674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (8 ^ n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152776.P14770105666674478674

namespace A152776

/-- `7*∑[8^n-a(n-1)]` -/
def P14770105666674478674.Spec : Prop :=
  ∀ n, P14770105666674478674.a n = A152776 (n + 1)

end A152776

/-! ## A152776.P13411027932491047471

`8^(n+1)-(a(n-1)+1)` with `a(0)=7`
-/

namespace A152776.P13411027932491047471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  (8 ^ (n + 1) : ℤ) - (a (n - 1) + 1)

end

end A152776.P13411027932491047471

namespace A152776

/-- `8^(n+1)-(a(n-1)+1)` -/
def P13411027932491047471.Spec : Prop :=
  ∀ n, P13411027932491047471.a n = A152776 (n + 1)

end A152776

/-! ## A152776.P4251016377643907302

`∑[8*a(n-1)]-a(n-1)` with `a(0)=7`
-/

namespace A152776.P4251016377643907302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A152776.P4251016377643907302

namespace A152776

/-- `∑[8*a(n-1)]-a(n-1)` -/
def P4251016377643907302.Spec : Prop :=
  ∀ n, P4251016377643907302.a n = A152776 (n + 1)

end A152776

/-! ## A152776.P5452469318907760836

`a(n-1)+7*or(1, a(n-1))` with `a(0)=7`
-/

namespace A152776.P5452469318907760836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 7 * Nat.lor 1 (a (n - 1))

end

end A152776.P5452469318907760836

namespace A152776

/-- `a(n-1)+7*or(1, a(n-1))` -/
def P5452469318907760836.Spec : Prop :=
  ∀ n, (P5452469318907760836.a n : ℤ) = A152776 (n + 1)

end A152776

/-! ## A152776.P17762075839173317131

`A153234(3*(n+2))`
-/

namespace A152776.P17762075839173317131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 (3 * (n + 2))

end

end A152776.P17762075839173317131

namespace A152776

/-- `A153234(3*(n+2))` -/
def P17762075839173317131.Spec : Prop :=
  ∀ n, P17762075839173317131.a n = A152776 (n + 1)

end A152776

/-! ## A152776.P10855231487651203956

`∑[A275788(3*(n+1))]`
-/

namespace A152776.P10855231487651203956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275788 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152776.P10855231487651203956

namespace A152776

/-- `∑[A275788(3*(n+1))]` -/
def P10855231487651203956.Spec : Prop :=
  ∀ n, P10855231487651203956.a n = A152776 (n + 1)

end A152776

/-! ## A152776.P1614512052339801358

`∑[7*A015565(n+1)]`
-/

namespace A152776.P1614512052339801358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A015565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152776.P1614512052339801358

namespace A152776

/-- `∑[7*A015565(n+1)]` -/
def P1614512052339801358.Spec : Prop :=
  ∀ n, P1614512052339801358.a n = A152776 (n + 1)

end A152776

/-! ## A152776.P17998709418135480674

`A262333(3*(n+1))-1`
-/

namespace A152776.P17998709418135480674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262333 (3 * (n + 1)) - 1

end

end A152776.P17998709418135480674

namespace A152776

/-- `A262333(3*(n+1))-1` -/
def P17998709418135480674.Spec : Prop :=
  ∀ n, P17998709418135480674.a n = A152776 (n + 1)

end A152776

/-! ## A152776.P14894752952300161825

`∑[7*A113405(3*(n+1))]`
-/

namespace A152776.P14894752952300161825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A113405 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152776.P14894752952300161825

namespace A152776

/-- `∑[7*A113405(3*(n+1))]` -/
def P14894752952300161825.Spec : Prop :=
  ∀ n, P14894752952300161825.a n = A152776 (n + 1)

end A152776

/-! ## A152776.P4224356174664409526

`A015565(n+2)-A000035(n)`
-/

namespace A152776.P4224356174664409526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015565 (n + 2) - A000035 n

end

end A152776.P4224356174664409526

namespace A152776

/-- `A015565(n+2)-A000035(n)` -/
def P4224356174664409526.Spec : Prop :=
  ∀ n, P4224356174664409526.a n = A152776 (n + 1)

end A152776

/-! ## A152776.P6486282634509249970

`xor(2*A037769(n+1), A037685(n+1))`
-/

namespace A152776.P6486282634509249970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A037769 (n + 1)) (A037685 (n + 1))

end

end A152776.P6486282634509249970

namespace A152776

/-- `xor(2*A037769(n+1), A037685(n+1))` -/
def P6486282634509249970.Spec : Prop :=
  ∀ n, P6486282634509249970.a n = A152776 (n + 1)

end A152776

/-! ## A152776.P9930106605026579375

`xor(2*A037783(n+1), A037699(n+1))`
-/

namespace A152776.P9930106605026579375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A037783 (n + 1)) (A037699 (n + 1))

end

end A152776.P9930106605026579375

namespace A152776

/-- `xor(2*A037783(n+1), A037699(n+1))` -/
def P9930106605026579375.Spec : Prop :=
  ∀ n, P9930106605026579375.a n = A152776 (n + 1)

end A152776

/-! ## A152776.P2407212743974473100

`xor(2*A037727(n+1), A037762(n+1))`
-/

namespace A152776.P2407212743974473100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A037727 (n + 1)) (A037762 (n + 1))

end

end A152776.P2407212743974473100

namespace A152776

/-- `xor(2*A037727(n+1), A037762(n+1))` -/
def P2407212743974473100.Spec : Prop :=
  ∀ n, P2407212743974473100.a n = A152776 (n + 1)

end A152776

/-! ## A152776.P9986376979176552636

`xor(2*A037692(n+2), A037748(n+2))`
-/

namespace A152776.P9986376979176552636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A037692 (n + 2)) (A037748 (n + 2))

end

end A152776.P9986376979176552636

namespace A152776

/-- `xor(2*A037692(n+2), A037748(n+2))` -/
def P9986376979176552636.Spec : Prop :=
  ∀ n, P9986376979176552636.a n = A152776 (n + 1)

end A152776

/-! ## A152776.P2606804567984385646

`xor(2*A037706(n+2), A037734(n+2))`
-/

namespace A152776.P2606804567984385646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A037706 (n + 2)) (A037734 (n + 2))

end

end A152776.P2606804567984385646

namespace A152776

/-- `xor(2*A037706(n+2), A037734(n+2))` -/
def P2606804567984385646.Spec : Prop :=
  ∀ n, P2606804567984385646.a n = A152776 (n + 1)

end A152776

/-!
# A152777: 7 times heptagonal numbers: a(n) = 7*n*(5*n-3)/2.

The programs for A152777, the canonical program `A152777.P17984612969344526260` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152777 has offset 0).

The definition of A152777 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*n*(5*n-3)/2` (program `A152777.P1168517822617779574`, by `A152777.P1168517822617779574.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152777.P9744324287648379943

`(35*n²-21*n)/2`
-/

namespace A152777.P9744324287648379943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((35 * n ^ 2 : ℤ) - (21 * n : ℤ) : ℚ) / 2

end

end A152777.P9744324287648379943

namespace A152777

/-- `(35*n²-21*n)/2` -/
def P9744324287648379943.Spec : Prop :=
  ∀ n, P9744324287648379943.a n = (A152777 n : ℚ)

theorem P9744324287648379943.correct : P9744324287648379943.Spec := by
  intro n
  induction n with
  | zero => simp [A152777, A152777.P9744324287648379943.a, A152777.P17984612969344526260.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A152777, Nat.add_sub_cancel, A152777.P9744324287648379943.a, A152777.P17984612969344526260.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A152777

/-! ## A152777.P1168517822617779574

`7*n*(5*n-3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152777.P1168517822617779574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * ((n : ℚ) * (((5 * n : ℤ) - 3 : ℚ) / 2))

end

end A152777.P1168517822617779574

namespace A152777

/-- `7*n*(5*n-3)/2` -/
def P1168517822617779574.Spec : Prop :=
  ∀ n, P1168517822617779574.a n = (A152777 n : ℚ)

theorem P1168517822617779574.correct : P1168517822617779574.Spec := by
  intro n
  induction n with
  | zero => simp [A152777, A152777.P1168517822617779574.a, A152777.P17984612969344526260.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A152777, Nat.add_sub_cancel, A152777.P1168517822617779574.a, A152777.P17984612969344526260.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A152777

/-! ## A152777.P17984612969344526260

`a(n-1)+35*n-28` with `a(0)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152777

/-- `a(n-1)+35*n-28` -/
def P17984612969344526260.Spec : Prop :=
  ∀ n, P17984612969344526260.a n = A152777 n

theorem P17984612969344526260.correct : P17984612969344526260.Spec := by
  intro n
  simp only [A152777]

end A152777

/-! ## A152777.P6064255252906371185

`∑[a(n-1)+35]` with `a(0)=0, a(1)=7`
-/

namespace A152777.P6064255252906371185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  f1 (n - 1) + 35

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152777.P6064255252906371185

namespace A152777

/-- `∑[a(n-1)+35]` -/
def P6064255252906371185.Spec : Prop :=
  ∀ n, (P6064255252906371185.a n : ℤ) = A152777 n

end A152777

/-! ## A152777.P11806851594335223860

`C(7*n, 2)-∑[14*n]`
-/

namespace A152777.P11806851594335223860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (7 * n) 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A152777.P11806851594335223860

namespace A152777

/-- `C(7*n, 2)-∑[14*n]` -/
def P11806851594335223860.Spec : Prop :=
  ∀ n, P11806851594335223860.a n = A152777 n

end A152777

/-! ## A152777.P10875305217473362402

`abs(7*(1-A192136(n)))`
-/

namespace A152777.P10875305217473362402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |7 * (1 - A192136 n)|

end

end A152777.P10875305217473362402

namespace A152777

/-- `abs(7*(1-A192136(n)))` -/
def P10875305217473362402.Spec : Prop :=
  ∀ n, P10875305217473362402.a n = A152777 n

end A152777

/-! ## A152777.P6875912032810836166

`A153783(n)+(2*n)²`
-/

namespace A152777.P6875912032810836166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153783 n + ((2 * n) ^ 2 : ℤ)

end

end A152777.P6875912032810836166

namespace A152777

/-- `A153783(n)+(2*n)²` -/
def P6875912032810836166.Spec : Prop :=
  ∀ n, P6875912032810836166.a n = A152777 n

end A152777

/-! ## A152777.P495530144968897953

`A152994(n)-(∑[n]+n)`
-/

namespace A152777.P495530144968897953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152994 n - ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)

end

end A152777.P495530144968897953

namespace A152777

/-- `A152994(n)-(∑[n]+n)` -/
def P495530144968897953.Spec : Prop :=
  ∀ n, P495530144968897953.a n = A152777 n

end A152777

/-! ## A152777.P3382234932057281360

`A153875(n)+n*(n+3)`
-/

namespace A152777.P3382234932057281360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153875 n + (n * (n + 3) : ℤ)

end

end A152777.P3382234932057281360

namespace A152777

/-- `A153875(n)+n*(n+3)` -/
def P3382234932057281360.Spec : Prop :=
  ∀ n, P3382234932057281360.a n = A152777 n

end A152777

/-! ## A152777.P4907114531341510769

`A226492(n)+(3*n-2)*4*n`
-/

namespace A152777.P4907114531341510769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226492 n + ((3 * n : ℤ) - 2) * (4 * n : ℤ)

end

end A152777.P4907114531341510769

namespace A152777

/-- `A226492(n)+(3*n-2)*4*n` -/
def P4907114531341510769.Spec : Prop :=
  ∀ n, P4907114531341510769.a n = A152777 n

end A152777

/-! ## A152777.P14091701202624067845

`A051873(n)+A014635(n)`
-/

namespace A152777.P14091701202624067845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051873 n + A014635 n

end

end A152777.P14091701202624067845

namespace A152777

/-- `A051873(n)+A014635(n)` -/
def P14091701202624067845.Spec : Prop :=
  ∀ n, P14091701202624067845.a n = A152777 n

end A152777

/-! ## A152777.P10598305209476008125

`A051876(n)+A022270(n)`
-/

namespace A152777.P10598305209476008125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051876 n + A022270 n

end

end A152777.P10598305209476008125

namespace A152777

/-- `A051876(n)+A022270(n)` -/
def P10598305209476008125.Spec : Prop :=
  ∀ n, P10598305209476008125.a n = A152777 n

end A152777

/-! ## A152777.P12429006269627573497

`A153786(n)+A000566(n)`
-/

namespace A152777.P12429006269627573497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153786 n + A000566 n

end

end A152777.P12429006269627573497

namespace A152777

/-- `A153786(n)+A000566(n)` -/
def P12429006269627573497.Spec : Prop :=
  ∀ n, P12429006269627573497.a n = A152777 n

end A152777

/-! ## A152777.P13876285083089473280

`A153795(n)+A005476(n)`
-/

namespace A152777.P13876285083089473280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153795 n + A005476 n

end

end A152777.P13876285083089473280

namespace A152777

/-- `A153795(n)+A005476(n)` -/
def P13876285083089473280.Spec : Prop :=
  ∀ n, P13876285083089473280.a n = A152777 n

end A152777

/-! ## A152777.P12547951598807189666

`A152760(n)+A022264(n)`
-/

namespace A152777.P12547951598807189666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152760 n + A022264 n

end

end A152777.P12547951598807189666

namespace A152777

/-- `A152760(n)+A022264(n)` -/
def P12547951598807189666.Spec : Prop :=
  ∀ n, P12547951598807189666.a n = A152777 n

end A152777

/-! ## A152777.P8630752018372542991

`A152743(n)+A051871(n)`
-/

namespace A152777.P8630752018372542991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152743 n + A051871 n

end

end A152777.P8630752018372542991

namespace A152777

/-- `A152743(n)+A051871(n)` -/
def P8630752018372542991.Spec : Prop :=
  ∀ n, P8630752018372542991.a n = A152777 n

end A152777

/-!
# A152778: Decimal expansion of log_12 (2).

The programs for A152778, there is no canonical definition to state claims against.
-/

/-! ## A152778.P17714502998556064223

`A155982(n+1)`
-/

namespace A152778.P17714502998556064223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155982 (n + 1 + 1)

end

end A152778.P17714502998556064223

/-! ## A152778.P6252383544201904187

`9-A153589(n)`
-/

namespace A152778.P6252383544201904187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A153589 n

end

end A152778.P6252383544201904187

/-!
# A152780: Decimal expansion of log_14 (2).

The programs for A152780, there is no canonical definition to state claims against.
-/

/-! ## A152780.P12232488963493415929

`9-A153624(n)`
-/

namespace A152780.P12232488963493415929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A153624 n

end

end A152780.P12232488963493415929

/-!
# A152783: Values of p for which 2^p - 1 is prime and which are followed by a gap such that no 2^q - 1 is prime for p < q < 2*p.

The programs for A152783, there is no canonical definition to state claims against.
-/

/-! ## A152783.P6794564400132428675

`A174265(lt[A000043(n+1), A134458(n+1)])`
-/

namespace A152783.P6794564400132428675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174265 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A152783.P6794564400132428675

/-!
# A152784: Partial sums of Prime Fibonacci numbers/A005478.

The programs for A152784, there is no canonical definition to state claims against.
-/

/-! ## A152784.P15690788765489957445

`∑[A005478(n+1)]`
-/

namespace A152784.P15690788765489957445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152784.P15690788765489957445

/-! ## A152784.P16012448588681048502

`∑[A139095(n+3)]`
-/

namespace A152784.P16012448588681048502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139095 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152784.P16012448588681048502

/-! ## A152784.P12558682139338525107

`∑[record[A139044(n+1)]]`
-/

namespace A152784.P12558682139338525107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139044 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152784.P12558682139338525107

/-! ## A152784.P7146280912329025316

`∑[record[A060383(n+3)]]`
-/

namespace A152784.P7146280912329025316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060383 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152784.P7146280912329025316

/-! ## A152784.P10553980352470347228

`∑[A000045(A001605(n+1))]`
-/

namespace A152784.P10553980352470347228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A001605 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152784.P10553980352470347228

/-!
# A152785: a(n)=Floor[(n^2)/Catalan].

The programs for A152785, there is no canonical definition to state claims against.
-/

/-! ## A152785.P4107039585631450464

`floor(n²/sin(tan(4)))`
-/

namespace A152785.P4107039585631450464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℝ) / Real.sin (Real.tan (4 : ℝ))⌋

end

end A152785.P4107039585631450464

/-! ## A152785.P17308654839240311068

`floor(n*n/sin(tan(4)))`
-/

namespace A152785.P17308654839240311068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * ((n : ℝ) / Real.sin (Real.tan (4 : ℝ)))⌋

end

end A152785.P17308654839240311068

/-! ## A152785.P13034752206413829645

`-ceil(-n²/sin(tan(4)))`
-/

namespace A152785.P13034752206413829645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈-((n ^ 2 : ℝ) / Real.sin (Real.tan (4 : ℝ)))⌉

end

end A152785.P13034752206413829645

/-! ## A152785.P14344035250992925230

`abs(ceil(-n*n/sin(tan(4))))`
-/

namespace A152785.P14344035250992925230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈-((n : ℝ) * ((n : ℝ) / Real.sin (Real.tan (4 : ℝ))))⌉|

end

end A152785.P14344035250992925230

/-! ## A152785.P14887687990707068428

`-ceil(-n*n/sin(tan(4)))`
-/

namespace A152785.P14887687990707068428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈-((n : ℝ) * ((n : ℝ) / Real.sin (Real.tan (4 : ℝ))))⌉

end

end A152785.P14887687990707068428

/-! ## A152785.P7845071033140552625

`floor((3-sqrt(2/3))/2*n²)`
-/

namespace A152785.P7845071033140552625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 - Real.sqrt ((2 : ℚ) / 3 : ℝ)) / 2 * (n ^ 2 : ℝ)⌋

end

end A152785.P7845071033140552625

/-! ## A152785.P18226856095974891377

`ceil(A057428(n)+n*n/sin(tan(4)))`
-/

namespace A152785.P18226856095974891377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 n : ℝ) + (n : ℝ) * ((n : ℝ) / Real.sin (Real.tan (4 : ℝ)))⌉

end

end A152785.P18226856095974891377

/-!
# A152786: Integers k such that (k^2)/2 is the arithmetic mean of a pair of twin primes.

The programs for A152786, there is no canonical definition to state claims against.
-/

/-! ## A152786.P14421106237504281258

`6*A037073(n+1)`
-/

namespace A152786.P14421106237504281258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A037073 (n + 1)

end

end A152786.P14421106237504281258

/-! ## A152786.P17953719154731389749

`sqrt(A037072(n+1))`
-/

namespace A152786.P17953719154731389749
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A037072 (n + 1) : ℝ)

end

end A152786.P17953719154731389749

/-! ## A152786.P10582887911745568316

`2*A173165(n+1)`
-/

namespace A152786.P10582887911745568316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173165 (n + 1)

end

end A152786.P10582887911745568316

/-! ## A152786.P11569276257989933870

`sqrt(2*A154670(n+1))`
-/

namespace A152786.P11569276257989933870
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * A154670 (n + 1) : ℝ)

end

end A152786.P11569276257989933870

/-! ## A152786.P1054406947557739949

`sqrt(2*(A069496(n+1)+1))`
-/

namespace A152786.P1054406947557739949
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * (A069496 (n + 1) + 1) : ℝ)

end

end A152786.P1054406947557739949

/-! ## A152786.P7766530707481843224

`sqrt(2*(A118593(n+1)-1))`
-/

namespace A152786.P7766530707481843224
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * (A118593 (n + 1) - 1) : ℝ)

end

end A152786.P7766530707481843224

/-! ## A152786.P10719614884432321406

`A154670(n+1)/A173165(n+1)`
-/

namespace A152786.P10719614884432321406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154670 (n + 1) : ℚ) / (A173165 (n + 1) : ℚ)

end

end A152786.P10719614884432321406

/-! ## A152786.P3625578166827658001

`A173165(n+1)²/A037073(n+1)-A173165(n+1)`
-/

namespace A152786.P3625578166827658001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173165 (n + 1) ^ 2 : ℚ) / (A037073 (n + 1) : ℚ) - (A173165 (n + 1) : ℚ)

end

end A152786.P3625578166827658001

/-! ## A152786.P1020941558596310256

`∩[A074924(n+1), A090697(n+1)]`
-/

namespace A152786.P1020941558596310256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152786.P1020941558596310256

/-! ## A152786.P8867355132492536629

`2*∩[A066049(n+1), A089001(n+1)]`
-/

namespace A152786.P8867355132492536629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152786.P8867355132492536629

/-! ## A152786.P3071306890650763486

`∩[A074924(n+1), A385821(n+1)]`
-/

namespace A152786.P3071306890650763486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152786.P3071306890650763486

/-! ## A152786.P13842874243481527660

`∩[A090697(n+1), A385821(n+1)]`
-/

namespace A152786.P13842874243481527660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152786.P13842874243481527660

/-! ## A152786.P13254066997657410303

`∩[A074924(n+1), A242330(n+1)]`
-/

namespace A152786.P13254066997657410303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152786.P13254066997657410303

/-! ## A152786.P14515711648056269232

`∩[A090697(n+1), A242330(n+1)]`
-/

namespace A152786.P14515711648056269232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152786.P14515711648056269232

/-! ## A152786.P5493716413655964858

`2*sqrt(A272890(n+1))`
-/

namespace A152786.P5493716413655964858
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A272890 (n + 1) : ℝ)

end

end A152786.P5493716413655964858

/-! ## A152786.P17121252399847625947

`A008458(A037073(n+1))`
-/

namespace A152786.P17121252399847625947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A037073 (n + 1)).toNat

end

end A152786.P17121252399847625947

/-! ## A152786.P7328857213035366694

`2*∩[A089001(n+1), A139013(n+1)]`
-/

namespace A152786.P7328857213035366694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152786.P7328857213035366694

/-! ## A152786.P11738218356319540660

`A004277(A173165(n+1))`
-/

namespace A152786.P11738218356319540660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A173165 (n + 1)).toNat

end

end A152786.P11738218356319540660

/-! ## A152786.P7619723323730834571

`2*∩[A066049(n+1), A139013(n+1)]`
-/

namespace A152786.P7619723323730834571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152786.P7619723323730834571

/-!
# A152787: Numbers k such that both k and k^2/2 are averages of twin prime pairs.

The programs for A152787, there is no canonical definition to state claims against.
-/

/-! ## A152787.P11612520004632651835

`A047976(n+1)+1`
-/

namespace A152787.P11612520004632651835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047976 (n + 1) + 1

end

end A152787.P11612520004632651835

/-! ## A152787.P8567155413445408009

`A047977(n+1)-1`
-/

namespace A152787.P8567155413445408009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047977 (n + 1) - 1

end

end A152787.P8567155413445408009

/-! ## A152787.P14037955954597605250

`sqrt(2*(A047978(n+1)+1))`
-/

namespace A152787.P14037955954597605250
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * (A047978 (n + 1) + 1) : ℝ)

end

end A152787.P14037955954597605250

/-! ## A152787.P16178902131871762313

`sqrt(2*(A047979(n+1)-1))`
-/

namespace A152787.P16178902131871762313
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * (A047979 (n + 1) - 1) : ℝ)

end

end A152787.P16178902131871762313

/-! ## A152787.P15851008034734675133

`xor(1, A047977(xor(1, xor(1, n+1))))`
-/

namespace A152787.P15851008034734675133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A047977 (Nat.xor 1 (Nat.xor 1 (n + 1))))

end

end A152787.P15851008034734675133

/-! ## A152787.P15498691029650283314

`sqrt(A047979(n+1)+A047978(n+1))`
-/

namespace A152787.P15498691029650283314
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A047979 (n + 1) + A047978 (n + 1) : ℝ)

end

end A152787.P15498691029650283314

/-! ## A152787.P11119377629505933527

`sqrt(A370453(n+1))`
-/

namespace A152787.P11119377629505933527
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A370453 (n + 1) : ℝ)

end

end A152787.P11119377629505933527

/-! ## A152787.P15995676182541773586

`∩[A014574(n+1), A152786(n+1)]`
-/

namespace A152787.P15995676182541773586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152787.P15995676182541773586

/-! ## A152787.P7326851705158534085

`∩[A152786(n+1), A217259(n+1)]`
-/

namespace A152787.P7326851705158534085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152787.P7326851705158534085

/-! ## A152787.P14263896880052355467

`∩[A056853(n+1), A152786(n+1)]`
-/

namespace A152787.P14263896880052355467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152787.P14263896880052355467

/-!
# A152788: Integers k such that (k^3)/3 is the average of a pair of twin primes.

The programs for A152788, there is no canonical definition to state claims against.
-/

/-! ## A152788.P5584509824972673943

`A132398(record[A133302(n+1)])`
-/

namespace A152788.P5584509824972673943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132398 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A152788.P5584509824972673943

/-!
# A152789: Football tournament numbers with distinct point totals: number of point series in A064626 in which no two teams have the same total number of points.

The programs for A152789, there is no canonical definition to state claims against.
-/

/-! ## A152789.P11204796298697842926

`A261224(A036765(n)²)`
-/

namespace A152789.P11204796298697842926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261224 (A036765 n ^ 2).toNat

end

end A152789.P11204796298697842926

/-! ## A152789.P1682760123917769299

`A261224(A114465(n)²)`
-/

namespace A152789.P1682760123917769299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261224 (A114465 n ^ 2).toNat

end

end A152789.P1682760123917769299

/-!
# A152791: Column 0 of triangle A152790.

The programs for A152791, there is no canonical definition to state claims against.
-/

/-! ## A152791.P9292274374747792765

`A152790(∑[n])`
-/

namespace A152791.P9292274374747792765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152790 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152791.P9292274374747792765

/-! ## A152791.P1045352726181266372

`A152790(n*(n+1)/2)+∑{d}[n+1, C(gcd(10, #), 10)]`
-/

namespace A152791.P1045352726181266372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152790 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat + ((∑ d ∈ Nat.divisors (f1 n), Nat.choose (Nat.gcd 10 d) 10 : ℕ) : ℤ)

end

end A152791.P1045352726181266372

/-! ## A152791.P10238193809531103741

`A152790(A000217(n))+char[9]`
-/

namespace A152791.P10238193809531103741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152790 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A152791.P10238193809531103741

/-! ## A152791.P4893498213482457928

`A152790(A179865(n+1))+char[9]`
-/

namespace A152791.P4893498213482457928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152790 (A179865 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A152791.P4893498213482457928

/-!
# A152792: Column 1 of triangle A152790.

The programs for A152792, there is no canonical definition to state claims against.
-/

/-! ## A152792.P13026958761164707015

`A152790(∑[n+1]+1)`
-/

namespace A152792.P13026958761164707015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152790 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A152792.P13026958761164707015

/-! ## A152792.P3474919472319138301

`A152790(A134869(n+1))+A025465(n)`
-/

namespace A152792.P3474919472319138301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152790 (A134869 (n + 1)).toNat + A025465 n

end

end A152792.P3474919472319138301

/-! ## A152792.P10532999233103526690

`A152790(A134869(n+1))+A059995(n)`
-/

namespace A152792.P10532999233103526690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152790 (A134869 (n + 1)).toNat + A059995 n

end

end A152792.P10532999233103526690

/-!
# A152793: Column 2 of triangle A152790.

The programs for A152793, there is no canonical definition to state claims against.
-/

/-! ## A152793.P7327241182442354742

`A152790(∑[n+2]+3)`
-/

namespace A152793.P7327241182442354742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152790 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A152793.P7327241182442354742

/-!
# A152795: Triangle defined by T(n,k) = T(n-1,k-1) + Sum_{j=k..n-2} T(n-1,j)*2^j*T(j,k-1) for n > k > 0 with T(n,n) = T(n,0) = 1, read by rows n >= 0 as k = 0..n.

The programs for A152795, there is no canonical definition to state claims against.
-/

/-! ## A152795.P11911715563145967021

`A181304(A229142(n))`
-/

namespace A152795.P11911715563145967021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181304 (A229142 n).toNat

end

end A152795.P11911715563145967021

/-! ## A152795.P5768229887131968703

`A081118(A181196(n+1)^A331039(n))`
-/

namespace A152795.P5768229887131968703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (SequenceMachineLib.roundAway ((A181196 (n + 1) : ℚ) ^ (A331039 n : ℤ))).toNat

end

end A152795.P5768229887131968703

/-! ## A152795.P4443180354933360432

`A081118(A181196(n+1)^A331509(n))`
-/

namespace A152795.P4443180354933360432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (SequenceMachineLib.roundAway ((A181196 (n + 1) : ℚ) ^ (A331509 n : ℤ))).toNat

end

end A152795.P4443180354933360432

/-! ## A152795.P5590847135481972873

`gcd(A278599(n), A344005(A156889(n+1)))`
-/

namespace A152795.P5590847135481972873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A278599 n) (A344005 (A156889 (n + 1)).toNat)

end

end A152795.P5590847135481972873

/-!
# A152796: Column 1 of triangle A152795.

The programs for A152796, there is no canonical definition to state claims against.
-/

/-! ## A152796.P5564891851677504623

`floor(A098544(n+1)/2)`
-/

namespace A152796.P5564891851677504623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A098544 (n + 1) : ℚ) / 2⌋

end

end A152796.P5564891851677504623

/-! ## A152796.P7995530908074853924

`A152795(∑[n+1]+1)`
-/

namespace A152796.P7995530908074853924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152795 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A152796.P7995530908074853924

/-! ## A152796.P6951705558631913850

`ceil(A098543(n+2)/4)`
-/

namespace A152796.P6951705558631913850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A098543 (n + 2) : ℚ) / 4⌉

end

end A152796.P6951705558631913850

/-! ## A152796.P5347310372128168382

`floor(A000123(A000051(n))/4)`
-/

namespace A152796.P5347310372128168382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000123 (A000051 n).toNat : ℚ) / 4⌋

end

end A152796.P5347310372128168382

/-!
# A152797: Column 2 of triangle A152795.

The programs for A152797, there is no canonical definition to state claims against.
-/

/-! ## A152797.P7297482957959620515

`A152795(∑[n+2]+3)`
-/

namespace A152797.P7297482957959620515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152795 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A152797.P7297482957959620515

/-!
# A152799: Column 2 of triangle A152798; first differences of A122889.

The programs for A152799, there is no canonical definition to state claims against.
-/

/-! ## A152799.P1226609653143103674

`Δ[A122889(n+1)]`
-/

namespace A152799.P1226609653143103674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122889 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152799.P1226609653143103674

/-! ## A152799.P16094856161848599501

`Δ[record[A122889(A002262(n))]]`
-/

namespace A152799.P16094856161848599501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122889 (A002262 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152799.P16094856161848599501

/-! ## A152799.P2139478981005491225

`Δ[record[A122889(A003986(n))]]`
-/

namespace A152799.P2139478981005491225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122889 (A003986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152799.P2139478981005491225

/-! ## A152799.P17654153736913848134

`Δ[record[A122889(A003987(n))]]`
-/

namespace A152799.P17654153736913848134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122889 (A003987 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152799.P17654153736913848134

/-! ## A152799.P112474834262957185

`Δ[record[A122889(A004788(n))]]`
-/

namespace A152799.P112474834262957185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122889 (A004788 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152799.P112474834262957185

