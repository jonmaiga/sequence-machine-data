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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.B008.C000
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
# A030100: Cubes whose digits are all odd.

The programs for A030100, there is no canonical definition to state claims against.
-/

/-! ## A030100.P15961425276007219323

`A030099(n+1)^3`
-/

namespace A030100.P15961425276007219323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030099 (n + 1) ^ 3

end

end A030100.P15961425276007219323

/-! ## A030100.P11104722587157006063

`or(1, A030099(A008619(2*n))^3)`
-/

namespace A030100.P11104722587157006063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A030099 (A008619 (2 * n)).toNat ^ 3)

end

end A030100.P11104722587157006063

/-! ## A030100.P9457386074079452222

`A030099(A000027(n+1))²*A030099(n+1)`
-/

namespace A030100.P9457386074079452222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030099 (A000027 (n + 1)).toNat ^ 2 * A030099 (n + 1)

end

end A030100.P9457386074079452222

/-! ## A030100.P17056486944448490574

`A030099(n+1)²*A030099(A008619(2*n))`
-/

namespace A030100.P17056486944448490574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030099 (n + 1) ^ 2 * A030099 (A008619 (2 * n)).toNat

end

end A030100.P17056486944448490574

/-! ## A030100.P7712566127581607359

`∩[A030479(n+1), A076442(n+1)]`
-/

namespace A030100.P7712566127581607359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030100.P7712566127581607359

/-!
# A030101: a(n) is the number produced when n is converted to binary digits, the binary digits are reversed and then converted back into a decimal number.

The programs for A030101, the canonical program `A030101.P16184294017372777612` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030101 has offset 0).

The definition of A030101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030101.P16184294017372777612

`n-A055945(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A030101

/-- `n-A055945(n)` -/
def P16184294017372777612.Spec : Prop :=
  ∀ n, P16184294017372777612.a n = A030101 n

theorem P16184294017372777612.correct : P16184294017372777612.Spec := by
  intro n
  simp only [A030101]

end A030101

/-! ## A030101.P16124860452802935852

`A055944(n)-n`
-/

namespace A030101.P16124860452802935852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n - (n : ℤ)

end

end A030101.P16124860452802935852

namespace A030101

/-- `A055944(n)-n` -/
def P16124860452802935852.Spec : Prop :=
  ∀ n, P16124860452802935852.a n = A030101 n

end A030101

/-! ## A030101.P7082730925066608543

`xor(n, A175919(n))`
-/

namespace A030101.P7082730925066608543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A175919 n)

end

end A030101.P7082730925066608543

namespace A030101

/-- `xor(n, A175919(n))` -/
def P7082730925066608543.Spec : Prop :=
  ∀ n, P7082730925066608543.a n = A030101 n

end A030101

/-! ## A030101.P12998788674428405510

`A264619(n)%(2*n+1)`
-/

namespace A030101.P12998788674428405510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264619 n) (2 * n + 1 : ℤ)

end

end A030101.P12998788674428405510

namespace A030101

/-- `A264619(n)%(2*n+1)` -/
def P12998788674428405510.Spec : Prop :=
  ∀ n, P12998788674428405510.a n = A030101 n

end A030101

/-! ## A030101.P6068374467708881809

`A048701(n)%(2^ceil(log2(n+1)))`
-/

namespace A030101.P6068374467708881809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048701 n) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)))

end

end A030101.P6068374467708881809

namespace A030101

/-- `A048701(n)%(2^ceil(log2(n+1)))` -/
def P6068374467708881809.Spec : Prop :=
  ∀ n, P6068374467708881809.a n = A030101 n

end A030101

/-! ## A030101.P792735239041675340

`A264618(n)%(2^ceil(log2(n+1)))`
-/

namespace A030101.P792735239041675340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264618 n) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)))

end

end A030101.P792735239041675340

namespace A030101

/-- `A264618(n)%(2^ceil(log2(n+1)))` -/
def P792735239041675340.Spec : Prop :=
  ∀ n, P792735239041675340.a n = A030101 n

end A030101

/-! ## A030101.P5319569566245160900

`A280995(A006068(n))`
-/

namespace A030101.P5319569566245160900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280995 (A006068 n).toNat

end

end A030101.P5319569566245160900

namespace A030101

/-- `A280995(A006068(n))` -/
def P5319569566245160900.Spec : Prop :=
  ∀ n, P5319569566245160900.a n = A030101 n

end A030101

/-! ## A030101.P1386205279427503731

`A003188(A378299(n))`
-/

namespace A030101.P1386205279427503731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A378299 n).toNat

end

end A030101.P1386205279427503731

namespace A030101

/-- `A003188(A378299(n))` -/
def P1386205279427503731.Spec : Prop :=
  ∀ n, P1386205279427503731.a n = A030101 n

end A030101

/-! ## A030101.P5453074292908491998

`and(A003817(n), A048701(n))`
-/

namespace A030101.P5453074292908491998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A048701 n)

end

end A030101.P5453074292908491998

namespace A030101

/-- `and(A003817(n), A048701(n))` -/
def P5453074292908491998.Spec : Prop :=
  ∀ n, P5453074292908491998.a n = A030101 n

end A030101

/-! ## A030101.P17301886976842329580

`and(A048701(n), A175298(n))`
-/

namespace A030101.P17301886976842329580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048701 n) (A175298 n)

end

end A030101.P17301886976842329580

namespace A030101

/-- `and(A048701(n), A175298(n))` -/
def P17301886976842329580.Spec : Prop :=
  ∀ n, P17301886976842329580.a n = A030101 n

end A030101

/-! ## A030101.P11337585658783974843

`and(A003817(n), A264618(n))`
-/

namespace A030101.P11337585658783974843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A264618 n)

end

end A030101.P11337585658783974843

namespace A030101

/-- `and(A003817(n), A264618(n))` -/
def P11337585658783974843.Spec : Prop :=
  ∀ n, P11337585658783974843.a n = A030101 n

end A030101

/-! ## A030101.P242660109562684173

`and(A003817(n), A264619(n))`
-/

namespace A030101.P242660109562684173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A264619 n)

end

end A030101.P242660109562684173

namespace A030101

/-- `and(A003817(n), A264619(n))` -/
def P242660109562684173.Spec : Prop :=
  ∀ n, P242660109562684173.a n = A030101 n

end A030101

/-! ## A030101.P3264857202390735387

`and(A175298(n), A264618(n))`
-/

namespace A030101.P3264857202390735387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A175298 n) (A264618 n)

end

end A030101.P3264857202390735387

namespace A030101

/-- `and(A175298(n), A264618(n))` -/
def P3264857202390735387.Spec : Prop :=
  ∀ n, P3264857202390735387.a n = A030101 n

end A030101

/-! ## A030101.P14233031485310058610

`and(A175298(n), A264619(n))`
-/

namespace A030101.P14233031485310058610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A175298 n) (A264619 n)

end

end A030101.P14233031485310058610

namespace A030101

/-- `and(A175298(n), A264619(n))` -/
def P14233031485310058610.Spec : Prop :=
  ∀ n, P14233031485310058610.a n = A030101 n

end A030101

/-! ## A030101.P13032803033390471339

`A145341(n+1)-A062383(n)`
-/

namespace A030101.P13032803033390471339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (n + 1) - A062383 n

end

end A030101.P13032803033390471339

namespace A030101

/-- `A145341(n+1)-A062383(n)` -/
def P13032803033390471339.Spec : Prop :=
  ∀ n, P13032803033390471339.a n = A030101 n

end A030101

/-! ## A030101.P15147940551629429350

`and(A003817(n), A145341(n+1))`
-/

namespace A030101.P15147940551629429350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A145341 (n + 1))

end

end A030101.P15147940551629429350

namespace A030101

/-- `and(A003817(n), A145341(n+1))` -/
def P15147940551629429350.Spec : Prop :=
  ∀ n, P15147940551629429350.a n = A030101 n

end A030101

/-! ## A030101.P2563376478100767863

`and(A145341(n+1), A175298(n))`
-/

namespace A030101.P2563376478100767863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A145341 (n + 1)) (A175298 n)

end

end A030101.P2563376478100767863

namespace A030101

/-- `and(A145341(n+1), A175298(n))` -/
def P2563376478100767863.Spec : Prop :=
  ∀ n, P2563376478100767863.a n = A030101 n

end A030101

/-! ## A030101.P15068239277054655780

`and(A145341(n+1), A264618(n))`
-/

namespace A030101.P15068239277054655780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A145341 (n + 1)) (A264618 n)

end

end A030101.P15068239277054655780

namespace A030101

/-- `and(A145341(n+1), A264618(n))` -/
def P15068239277054655780.Spec : Prop :=
  ∀ n, P15068239277054655780.a n = A030101 n

end A030101

/-! ## A030101.P13158538906195314328

`A035327(n)+n-A036044(n)`
-/

namespace A030101.P13158538906195314328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n + ((n : ℤ) - A036044 n)

end

end A030101.P13158538906195314328

namespace A030101

/-- `A035327(n)+n-A036044(n)` -/
def P13158538906195314328.Spec : Prop :=
  ∀ n, P13158538906195314328.a n = A030101 n

end A030101

/-! ## A030101.P5490204596637577039

`and(A035327(n)+n, A048701(n))`
-/

namespace A030101.P5490204596637577039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035327 n + (n : ℤ)) (A048701 n)

end

end A030101.P5490204596637577039

namespace A030101

/-- `and(A035327(n)+n, A048701(n))` -/
def P5490204596637577039.Spec : Prop :=
  ∀ n, P5490204596637577039.a n = A030101 n

end A030101

/-!
# A030102: Base-3 reversal of n (written in base 10).

The programs for A030102, there is no canonical definition to state claims against.
-/

/-! ## A030102.P5318987935605573306

`n-A055947(n)`
-/

namespace A030102.P5318987935605573306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055947 n

end

end A030102.P5318987935605573306

/-! ## A030102.P17133266669308870998

`A055946(n)-n`
-/

namespace A030102.P17133266669308870998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055946 n - (n : ℤ)

end

end A030102.P17133266669308870998

/-! ## A030102.P8101994265000799553

`A055947(n)*A057428(n)+n`
-/

namespace A030102.P8101994265000799553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 n * A057428 n + (n : ℤ)

end

end A030102.P8101994265000799553

/-! ## A030102.P4351114148161461471

`A263273(n/A038500(A028310(n)))`
-/

namespace A030102.P4351114148161461471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (SequenceMachineLib.roundAway ((n : ℚ) / (A038500 (A028310 n).toNat : ℚ))).toNat

end

end A030102.P4351114148161461471

/-! ## A030102.P4427298330998483524

`A055947(n)*A253206(A006530(n+1))+n`
-/

namespace A030102.P4427298330998483524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 n * A253206 (A006530 (n + 1)).toNat + (n : ℤ)

end

end A030102.P4427298330998483524

/-! ## A030102.P12539757711933884603

`A004488(A137305(n))`
-/

namespace A030102.P12539757711933884603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A137305 n).toNat

end

end A030102.P12539757711933884603

/-! ## A030102.P14315266942074417035

`A137305(n)-A327252(n)`
-/

namespace A030102.P14315266942074417035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137305 n - A327252 n

end

end A030102.P14315266942074417035

/-! ## A030102.P6440820309672871719

`A171960(A171960(3*n)+A055947(3*n))`
-/

namespace A030102.P6440820309672871719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 (A171960 (3 * n) + A055947 (3 * n)).toNat

end

end A030102.P6440820309672871719

/-! ## A030102.P2353869145137198801

`A171960(n)+n-A284797(n)`
-/

namespace A030102.P2353869145137198801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 n + ((n : ℤ) - A284797 n)

end

end A030102.P2353869145137198801

/-! ## A030102.P13366833082464772477

`A171960(A284797(3*n))`
-/

namespace A030102.P13366833082464772477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 (A284797 (3 * n)).toNat

end

end A030102.P13366833082464772477

/-!
# A030103: Base 4 reversal of n (written in base 10).

The programs for A030103, there is no canonical definition to state claims against.
-/

/-! ## A030103.P8860481548400865946

`n-A055949(n)`
-/

namespace A030103.P8860481548400865946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055949 n

end

end A030103.P8860481548400865946

/-! ## A030103.P3631273953102910330

`A055948(n)-n`
-/

namespace A030103.P3631273953102910330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055948 n - (n : ℤ)

end

end A030103.P3631273953102910330

/-! ## A030103.P3929353379387010432

`A048703(n)%A008574(n)`
-/

namespace A030103.P3929353379387010432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048703 n) (A008574 n)

end

end A030103.P3929353379387010432

/-! ## A030103.P1803459088126221815

`(A055948(n)+A000124(n))%∑[n+1]`
-/

namespace A030103.P1803459088126221815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055948 n + A000124 n) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A030103.P1803459088126221815

/-! ## A030103.P13315080096062101998

`-A055949(n)%A008585(n+1)+n`
-/

namespace A030103.P13315080096062101998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A055949 n) (A008585 (n + 1)) + (n : ℤ)

end

end A030103.P13315080096062101998

/-! ## A030103.P15933663255688791815

`-A055949(n)%A048573(n)+n`
-/

namespace A030103.P15933663255688791815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A055949 n) (A048573 n) + (n : ℤ)

end

end A030103.P15933663255688791815

/-! ## A030103.P16638335050659354331

`A292131(∑[n+1]+1)+A055948(n)`
-/

namespace A030103.P16638335050659354331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292131 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A055948 n

end

end A030103.P16638335050659354331

/-!
# A030104: Base 5 reversal of n (written in base 10).

The programs for A030104, there is no canonical definition to state claims against.
-/

/-! ## A030104.P987949950787388630

`n-A055951(n)`
-/

namespace A030104.P987949950787388630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055951 n

end

end A030104.P987949950787388630

/-! ## A030104.P1003196870773631831

`A055950(n)-n`
-/

namespace A030104.P1003196870773631831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055950 n - (n : ℤ)

end

end A030104.P1003196870773631831

/-! ## A030104.P774934944069085162

`A264995(n/A060904(A004277(n)))`
-/

namespace A030104.P774934944069085162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264995 (SequenceMachineLib.roundAway ((n : ℚ) / (A060904 (A004277 n).toNat : ℚ))).toNat

end

end A030104.P774934944069085162

/-! ## A030104.P18433119243004928998

`A055950(A008706(n))%A008706(n)`
-/

namespace A030104.P18433119243004928998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055950 (A008706 n).toNat) (A008706 n)

end

end A030104.P18433119243004928998

/-! ## A030104.P15155111409794897701

`A028900(A071241(n))-n`
-/

namespace A030104.P15155111409794897701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A071241 n).toNat - (n : ℤ)

end

end A030104.P15155111409794897701

/-! ## A030104.P15500967051918760913

`A008683(A154764(n+1))*A055951(n)+n`
-/

namespace A030104.P15500967051918760913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A154764 (n + 1)).toNat * A055951 n + (n : ℤ)

end

end A030104.P15500967051918760913

/-!
# A030105: Base 6 reversal of n (written in base 10).

The programs for A030105, there is no canonical definition to state claims against.
-/

/-! ## A030105.P7262553393601567284

`n-A055953(n)`
-/

namespace A030105.P7262553393601567284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055953 n

end

end A030105.P7262553393601567284

/-! ## A030105.P11993672691290173853

`A055952(n)-n`
-/

namespace A030105.P11993672691290173853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055952 n - (n : ℤ)

end

end A030105.P11993672691290173853

/-! ## A030105.P1594874313072117760

`abs(A055952(n)+A001489(n))`
-/

namespace A030105.P1594874313072117760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055952 n + A001489 n|

end

end A030105.P1594874313072117760

/-! ## A030105.P8082981145846628786

`abs(A055953(n)+A001489(n))`
-/

namespace A030105.P8082981145846628786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055953 n + A001489 n|

end

end A030105.P8082981145846628786

/-! ## A030105.P17252115766367698840

`∑{d}[A055952(n)+A001489(n), A000010(#)]`
-/

namespace A030105.P17252115766367698840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055952 n + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A030105.P17252115766367698840

/-! ## A030105.P17711898274747261043

`(A055952(n)+A001489(n))*A057428(n)²`
-/

namespace A030105.P17711898274747261043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055952 n + A001489 n) * A057428 n ^ 2

end

end A030105.P17711898274747261043

/-! ## A030105.P6763128677600840191

`A063524(n+2)+A055952(n)+A001489(n)`
-/

namespace A030105.P6763128677600840191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 2) + (A055952 n + A001489 n)

end

end A030105.P6763128677600840191

/-! ## A030105.P11215711154384132128

`A001489(n)+A055952(n)%A028872(n+2)`
-/

namespace A030105.P11215711154384132128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + Int.tmod (A055952 n) (A028872 (n + 2))

end

end A030105.P11215711154384132128

/-! ## A030105.P1852924814649846760

`(A055952(n)+A001489(n))*A050932(A056753(n))`
-/

namespace A030105.P1852924814649846760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055952 n + A001489 n) * A050932 (A056753 n).toNat

end

end A030105.P1852924814649846760

/-! ## A030105.P135698213889044946

`(A055952(n)+A001489(n))*A050932(A109613(n))`
-/

namespace A030105.P135698213889044946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055952 n + A001489 n) * A050932 (A109613 n).toNat

end

end A030105.P135698213889044946

/-! ## A030105.P12879796169705054931

`(A055952(n)+A001489(n))%A000041(n+1)`
-/

namespace A030105.P12879796169705054931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055952 n + A001489 n) (A000041 (n + 1))

end

end A030105.P12879796169705054931

/-! ## A030105.P95083846849169413

`-A001489(A055952(n)+A001489(n))`
-/

namespace A030105.P95083846849169413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001489 (A055952 n + A001489 n).toNat

end

end A030105.P95083846849169413

/-! ## A030105.P10061711779587261982

`(A055952(n)+A001489(n))*A053381(2*n)`
-/

namespace A030105.P10061711779587261982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055952 n + A001489 n) * A053381 (2 * n)

end

end A030105.P10061711779587261982

/-! ## A030105.P16515419150570081180

`A055952(A008458(n))%A008458(n)`
-/

namespace A030105.P16515419150570081180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055952 (A008458 n).toNat) (A008458 n)

end

end A030105.P16515419150570081180

/-! ## A030105.P7567529779061591004

`A015539(comp[3*n])+A055952(n)+A001489(n)`
-/

namespace A030105.P7567529779061591004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015539 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + (A055952 n + A001489 n)

end

end A030105.P7567529779061591004

/-! ## A030105.P10383090983819826156

`A004526(2*(A055952(n)+A001489(n)))`
-/

namespace A030105.P10383090983819826156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * (A055952 n + A001489 n)).toNat

end

end A030105.P10383090983819826156

/-! ## A030105.P11241222460238690419

`A049783(A152947(n+1))+A055952(n)+A001489(n)`
-/

namespace A030105.P11241222460238690419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049783 (A152947 (n + 1)).toNat + (A055952 n + A001489 n)

end

end A030105.P11241222460238690419

/-!
# A030106: Base 7 reversal of n (written in base 10).

The programs for A030106, there is no canonical definition to state claims against.
-/

/-! ## A030106.P14761573346843713931

`n-A055955(n)`
-/

namespace A030106.P14761573346843713931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055955 n

end

end A030106.P14761573346843713931

/-! ## A030106.P6181651650333750986

`A055954(n)-n`
-/

namespace A030106.P6181651650333750986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055954 n - (n : ℤ)

end

end A030106.P6181651650333750986

/-! ## A030106.P7773086389002136678

`abs(A055954(n)+A001489(n))`
-/

namespace A030106.P7773086389002136678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055954 n + A001489 n|

end

end A030106.P7773086389002136678

/-! ## A030106.P12216296987916782758

`abs(A055955(n)+A001489(n))`
-/

namespace A030106.P12216296987916782758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055955 n + A001489 n|

end

end A030106.P12216296987916782758

/-! ## A030106.P10479681167139086990

`A055955(n)*A260196(n)+n`
-/

namespace A030106.P10479681167139086990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n * A260196 n + (n : ℤ)

end

end A030106.P10479681167139086990

/-! ## A030106.P9171013347095280503

`A001478(n+1)+A055954(n)+1`
-/

namespace A030106.P9171013347095280503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A055954 n + 1)

end

end A030106.P9171013347095280503

/-! ## A030106.P8693081349304161261

`(A055954(n)+A001489(n))%A000132(n)`
-/

namespace A030106.P8693081349304161261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055954 n + A001489 n) (A000132 n)

end

end A030106.P8693081349304161261

/-! ## A030106.P18205260958207481696

`∑{d}[A055954(n)+A001489(n), A000010(#)]`
-/

namespace A030106.P18205260958207481696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055954 n + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A030106.P18205260958207481696

/-! ## A030106.P1554094144734495065

`or(A055954(n)+A001489(n), A003982(n+1))`
-/

namespace A030106.P1554094144734495065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055954 n + A001489 n) (A003982 (n + 1))

end

end A030106.P1554094144734495065

/-! ## A030106.P6585410506030027112

`(A055954(n)+A001489(n))*A000108(C(2, 2*n))`
-/

namespace A030106.P6585410506030027112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055954 n + A001489 n) * A000108 (Nat.choose 2 (2 * n))

end

end A030106.P6585410506030027112

/-! ## A030106.P3995008312857428253

`A046665(A006530(n+2))+A055954(n)+A001489(n)`
-/

namespace A030106.P3995008312857428253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A006530 (n + 2)).toNat + (A055954 n + A001489 n)

end

end A030106.P3995008312857428253

/-! ## A030106.P10779923224324018145

`A000038(n+2)+A055954(n)+A001489(n)`
-/

namespace A030106.P10779923224324018145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 2) + (A055954 n + A001489 n)

end

end A030106.P10779923224324018145

/-! ## A030106.P6904537419975971459

`A000007(n+2)+A055954(n)+A001489(n)`
-/

namespace A030106.P6904537419975971459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 2) + (A055954 n + A001489 n)

end

end A030106.P6904537419975971459

/-! ## A030106.P11536503891592110651

`(A055954(n)+A001489(n))*A000010(A014963(2*(n+1)))`
-/

namespace A030106.P11536503891592110651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055954 n + A001489 n) * A000010 (A014963 (2 * (n + 1))).toNat

end

end A030106.P11536503891592110651

/-! ## A030106.P2345077558665604749

`A003982(A121250(n+1)/3)+A055954(n)+A001489(n)`
-/

namespace A030106.P2345077558665604749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (SequenceMachineLib.roundAway ((A121250 (n + 1) : ℚ) / 3)).toNat + (A055954 n + A001489 n)

end

end A030106.P2345077558665604749

/-! ## A030106.P15329015352657891757

`A003982(A078494(n+1))+A055954(n)+A001489(n)`
-/

namespace A030106.P15329015352657891757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A078494 (n + 1)).toNat + (A055954 n + A001489 n)

end

end A030106.P15329015352657891757

/-! ## A030106.P3998269355801249408

`-A001489(A055954(n)+A001489(n))`
-/

namespace A030106.P3998269355801249408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001489 (A055954 n + A001489 n).toNat

end

end A030106.P3998269355801249408

/-! ## A030106.P2827972814053472790

`A004442(A055954(n))+A001478(n+1)`
-/

namespace A030106.P2827972814053472790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A055954 n).toNat + A001478 (n + 1)

end

end A030106.P2827972814053472790

/-!
# A030107: Base 8 reversal of n (written in base 10).

The programs for A030107, there is no canonical definition to state claims against.
-/

/-! ## A030107.P16480260896024424508

`n-A055957(n)`
-/

namespace A030107.P16480260896024424508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055957 n

end

end A030107.P16480260896024424508

/-! ## A030107.P15243834227416809822

`A055956(n)-n`
-/

namespace A030107.P15243834227416809822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055956 n - (n : ℤ)

end

end A030107.P15243834227416809822

/-! ## A030107.P26999445348533488

`abs(A055956(n)+A001489(n))`
-/

namespace A030107.P26999445348533488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055956 n + A001489 n|

end

end A030107.P26999445348533488

/-! ## A030107.P14761795417156428250

`-(A055957(n)+A001489(n))`
-/

namespace A030107.P14761795417156428250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A055957 n + A001489 n)

end

end A030107.P14761795417156428250

/-! ## A030107.P8886750361285726451

`A055957(n)*A057428(n)+n`
-/

namespace A030107.P8886750361285726451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 n * A057428 n + (n : ℤ)

end

end A030107.P8886750361285726451

/-! ## A030107.P355493727199783799

`(A055956(n)+A001489(n))%A052905(n)`
-/

namespace A030107.P355493727199783799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055956 n + A001489 n) (A052905 n)

end

end A030107.P355493727199783799

/-! ## A030107.P2491792242569977027

`A008683(A002476(n+1))*A055957(n)+n`
-/

namespace A030107.P2491792242569977027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002476 (n + 1)).toNat * A055957 n + (n : ℤ)

end

end A030107.P2491792242569977027

/-! ## A030107.P17151456591515125336

`A142150(2*(A055956(n)+A001489(n)))`
-/

namespace A030107.P17151456591515125336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (2 * (A055956 n + A001489 n)).toNat

end

end A030107.P17151456591515125336

/-! ## A030107.P3290328148443350746

`A055956(A022144(n))%A022144(n)`
-/

namespace A030107.P3290328148443350746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055956 (A022144 n).toNat) (A022144 n)

end

end A030107.P3290328148443350746

/-! ## A030107.P18418980223772934760

`A008683(A142235(n+1))*A055957(n)+n`
-/

namespace A030107.P18418980223772934760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A142235 (n + 1)).toNat * A055957 n + (n : ℤ)

end

end A030107.P18418980223772934760

/-! ## A030107.P3053135306510029597

`A196199(n²)+A055956(n)`
-/

namespace A030107.P3053135306510029597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (n ^ 2) + A055956 n

end

end A030107.P3053135306510029597

/-!
# A030108: Base 9 reversal of n (written in base 10).

The programs for A030108, there is no canonical definition to state claims against.
-/

/-! ## A030108.P5809771000619368054

`n-A055959(n)`
-/

namespace A030108.P5809771000619368054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055959 n

end

end A030108.P5809771000619368054

/-! ## A030108.P700130480056036628

`A055958(n)-n`
-/

namespace A030108.P700130480056036628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055958 n - (n : ℤ)

end

end A030108.P700130480056036628

/-! ## A030108.P7772267761974426761

`abs(A055958(n)+A001489(n))`
-/

namespace A030108.P7772267761974426761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055958 n + A001489 n|

end

end A030108.P7772267761974426761

/-! ## A030108.P14684762356401535153

`A055959(n)*A057428(n)+n`
-/

namespace A030108.P14684762356401535153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055959 n * A057428 n + (n : ℤ)

end

end A030108.P14684762356401535153

/-! ## A030108.P5190913300756088306

`(A055958(n)+A001489(n))*A033999(n)²`
-/

namespace A030108.P5190913300756088306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055958 n + A001489 n) * A033999 n ^ 2

end

end A030108.P5190913300756088306

/-! ## A030108.P5568233684066715401

`(A055958(n)+A001489(n))%A000217(n+1)`
-/

namespace A030108.P5568233684066715401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055958 n + A001489 n) (A000217 (n + 1))

end

end A030108.P5568233684066715401

/-! ## A030108.P12186421564075395773

`A000007(n+1)+A055958(n)+A001489(n)`
-/

namespace A030108.P12186421564075395773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A055958 n + A001489 n)

end

end A030108.P12186421564075395773

/-! ## A030108.P15440682256547021113

`(A055958(n)+A001489(n))*A033999(2*n)`
-/

namespace A030108.P15440682256547021113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055958 n + A001489 n) * A033999 (2 * n)

end

end A030108.P15440682256547021113

/-! ## A030108.P11387239404826151191

`A000196((A055958(n)+A001489(n))²)`
-/

namespace A030108.P11387239404826151191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((A055958 n + A001489 n) ^ 2).toNat

end

end A030108.P11387239404826151191

/-! ## A030108.P15641012011007260225

`A265523(n)+A265556(n)-n`
-/

namespace A030108.P15641012011007260225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265523 n + (A265556 n - (n : ℤ))

end

end A030108.P15641012011007260225

/-!
# A030109: Write n in binary, reverse bits, subtract 1, divide by 2.

The programs for A030109, the canonical program `A030109.P14199666590729784855` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030109 has offset 1).

The definition of A030109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030109.P7217545641714691239

`A059893(n+1)-A053644(n+1)`
-/

namespace A030109.P7217545641714691239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1) - A053644 (n + 1)

end

end A030109.P7217545641714691239

namespace A030109

/-- `A059893(n+1)-A053644(n+1)` -/
def P7217545641714691239.Spec : Prop :=
  ∀ n, P7217545641714691239.a n = A030109 (n + 1)

end A030109

/-! ## A030109.P7787697322629693653

`A049773(n+1)-1`
-/

namespace A030109.P7787697322629693653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049773 (n + 1) - 1

end

end A030109.P7787697322629693653

namespace A030109

/-- `A049773(n+1)-1` -/
def P7787697322629693653.Spec : Prop :=
  ∀ n, P7787697322629693653.a n = A030109 (n + 1)

end A030109

/-! ## A030109.P14199666590729784855

`floor(A030101(n+1)/2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A030109

/-- `floor(A030101(n+1)/2)` -/
def P14199666590729784855.Spec : Prop :=
  ∀ n, P14199666590729784855.a n = A030109 (n + 1)

theorem P14199666590729784855.correct : P14199666590729784855.Spec := by
  intro n
  simp only [A030109, Nat.add_sub_cancel]

end A030109

/-! ## A030109.P6682338881899011797

`(Δ[A239447(n)]-1)/2`
-/

namespace A030109.P6682338881899011797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239447 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 1 : ℚ) / 2

end

end A030109.P6682338881899011797

namespace A030109

/-- `(Δ[A239447(n)]-1)/2` -/
def P6682338881899011797.Spec : Prop :=
  ∀ n, P6682338881899011797.a n = (A030109 (n + 1) : ℚ)

end A030109

/-! ## A030109.P16286257764984101079

`(n-A055945(n+1))/2`
-/

namespace A030109.P16286257764984101079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A055945 (n + 1) : ℚ) / 2

end

end A030109.P16286257764984101079

namespace A030109

/-- `(n-A055945(n+1))/2` -/
def P16286257764984101079.Spec : Prop :=
  ∀ n, P16286257764984101079.a n = (A030109 (n + 1) : ℚ)

end A030109

/-! ## A030109.P17142631795098783171

`(A055944(n+1)-(n+2))/2`
-/

namespace A030109.P17142631795098783171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055944 (n + 1) - (n + 2 : ℤ) : ℚ) / 2

end

end A030109.P17142631795098783171

namespace A030109

/-- `(A055944(n+1)-(n+2))/2` -/
def P17142631795098783171.Spec : Prop :=
  ∀ n, P17142631795098783171.a n = (A030109 (n + 1) : ℚ)

end A030109

/-! ## A030109.P152264531576620220

`A038572(A030101(n+1)-1)`
-/

namespace A030109.P152264531576620220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A030101 (n + 1) - 1).toNat

end

end A030109.P152264531576620220

namespace A030109

/-- `A038572(A030101(n+1)-1)` -/
def P152264531576620220.Spec : Prop :=
  ∀ n, P152264531576620220.a n = A030109 (n + 1)

end A030109

/-! ## A030109.P15334034315625508772

`A145342(A003602(n+1))-1`
-/

namespace A030109.P15334034315625508772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (A003602 (n + 1)).toNat - 1

end

end A030109.P15334034315625508772

namespace A030109

/-- `A145342(A003602(n+1))-1` -/
def P15334034315625508772.Spec : Prop :=
  ∀ n, P15334034315625508772.a n = A030109 (n + 1)

end A030109

/-! ## A030109.P10282635509272556509

`A059893(n+1)%A082908(n)`
-/

namespace A030109.P10282635509272556509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059893 (n + 1)) (A082908 n)

end

end A030109.P10282635509272556509

namespace A030109

/-- `A059893(n+1)%A082908(n)` -/
def P10282635509272556509.Spec : Prop :=
  ∀ n, P10282635509272556509.a n = A030109 (n + 1)

end A030109

/-! ## A030109.P8410939466409259331

`(A056539(A000265(n+1))-1)/2`
-/

namespace A030109.P8410939466409259331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056539 (A000265 (n + 1)).toNat - 1 : ℚ) / 2

end

end A030109.P8410939466409259331

namespace A030109

/-- `(A056539(A000265(n+1))-1)/2` -/
def P8410939466409259331.Spec : Prop :=
  ∀ n, P8410939466409259331.a n = (A030109 (n + 1) : ℚ)

end A030109

/-! ## A030109.P12117776014259599951

`A003817(n+1)-A059894(n+1)`
-/

namespace A030109.P12117776014259599951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (n + 1) - A059894 (n + 1)

end

end A030109.P12117776014259599951

namespace A030109

/-- `A003817(n+1)-A059894(n+1)` -/
def P12117776014259599951.Spec : Prop :=
  ∀ n, P12117776014259599951.a n = A030109 (n + 1)

end A030109

/-! ## A030109.P13535318527041351658

`A030101(n+1)%A049773(n+1)`
-/

namespace A030109.P13535318527041351658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030101 (n + 1)) (A049773 (n + 1))

end

end A030109.P13535318527041351658

namespace A030109

/-- `A030101(n+1)%A049773(n+1)` -/
def P13535318527041351658.Spec : Prop :=
  ∀ n, P13535318527041351658.a n = A030109 (n + 1)

end A030109

/-! ## A030109.P3697852730742640667

`and(A059893(n+1), A092323(n+1))`
-/

namespace A030109.P3697852730742640667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059893 (n + 1)) (A092323 (n + 1))

end

end A030109.P3697852730742640667

namespace A030109

/-- `and(A059893(n+1), A092323(n+1))` -/
def P3697852730742640667.Spec : Prop :=
  ∀ n, P3697852730742640667.a n = A030109 (n + 1)

end A030109

/-! ## A030109.P5123226700254996850

`and(A059893(n+1), A175543(n+1))`
-/

namespace A030109.P5123226700254996850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059893 (n + 1)) (A175543 (n + 1))

end

end A030109.P5123226700254996850

namespace A030109

/-- `and(A059893(n+1), A175543(n+1))` -/
def P5123226700254996850.Spec : Prop :=
  ∀ n, P5123226700254996850.a n = A030109 (n + 1)

end A030109

/-! ## A030109.P8514536168209950087

`(A030101(n+1)-1)/A020639(2*(n+1))`
-/

namespace A030109.P8514536168209950087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030101 (n + 1) - 1 : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A030109.P8514536168209950087

namespace A030109

/-- `(A030101(n+1)-1)/A020639(2*(n+1))` -/
def P8514536168209950087.Spec : Prop :=
  ∀ n, P8514536168209950087.a n = (A030109 (n + 1) : ℚ)

end A030109

/-! ## A030109.P7333564655609968398

`A059893(n+1)-A000079(A000523(n+1))`
-/

namespace A030109.P7333564655609968398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1) - A000079 (A000523 (n + 1)).toNat

end

end A030109.P7333564655609968398

namespace A030109

/-- `A059893(n+1)-A000079(A000523(n+1))` -/
def P7333564655609968398.Spec : Prop :=
  ∀ n, P7333564655609968398.a n = A030109 (n + 1)

end A030109

/-! ## A030109.P909291076167722897

`A059894(A053644(n+1))-A059894(n+1)`
-/

namespace A030109.P909291076167722897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (A053644 (n + 1)).toNat - A059894 (n + 1)

end

end A030109.P909291076167722897

namespace A030109

/-- `A059894(A053644(n+1))-A059894(n+1)` -/
def P909291076167722897.Spec : Prop :=
  ∀ n, P909291076167722897.a n = A030109 (n + 1)

end A030109

/-! ## A030109.P13478440860137788455

`A035327(n+1)+A059893(n+1)-A054429(n+1)`
-/

namespace A030109.P13478440860137788455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (n + 1) + (A059893 (n + 1) - A054429 (n + 1))

end

end A030109.P13478440860137788455

namespace A030109

/-- `A035327(n+1)+A059893(n+1)-A054429(n+1)` -/
def P13478440860137788455.Spec : Prop :=
  ∀ n, P13478440860137788455.a n = A030109 (n + 1)

end A030109

/-! ## A030109.P10018163915185314176

`A000225(A070939(n+1))-A059894(n+1)`
-/

namespace A030109.P10018163915185314176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A070939 (n + 1)).toNat - A059894 (n + 1)

end

end A030109.P10018163915185314176

namespace A030109

/-- `A000225(A070939(n+1))-A059894(n+1)` -/
def P10018163915185314176.Spec : Prop :=
  ∀ n, P10018163915185314176.a n = A030109 (n + 1)

end A030109

/-! ## A030109.P11405943385934346343

`A004524(A030101(n+1))`
-/

namespace A030109.P11405943385934346343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A030101 (n + 1)).toNat

end

end A030109.P11405943385934346343

namespace A030109

/-- `A004524(A030101(n+1))` -/
def P11405943385934346343.Spec : Prop :=
  ∀ n, P11405943385934346343.a n = A030109 (n + 1)

end A030109

/-!
# A030110: a(n) = 2^n - n^2 + 1.

The programs for A030110, the canonical program `A030110.P6847496981912939315` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030110 has offset 0).

The definition of A030110 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-n²+1` (program `A030110.P6847496981912939315`, by `A030110.P6847496981912939315.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A030110.P6847496981912939315

`2^n-n²+1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030110

/-- `2^n-n²+1` -/
def P6847496981912939315.Spec : Prop :=
  ∀ n, P6847496981912939315.a n = A030110 n

theorem P6847496981912939315.correct : P6847496981912939315.Spec := by
  intro n
  simp only [A030110]

end A030110

/-! ## A030110.P2665785726168857861

`floor(2^n-(n²-sinh(1)))`
-/

namespace A030110.P2665785726168857861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℝ) - ((n ^ 2 : ℝ) - Real.sinh (1 : ℝ))⌋

end

end A030110.P2665785726168857861

namespace A030110

/-- `floor(2^n-(n²-sinh(1)))` -/
def P2665785726168857861.Spec : Prop :=
  ∀ n, P2665785726168857861.a n = A030110 n

end A030110

/-! ## A030110.P2617733881286024823

`∑[2*(a(n-1)+n)-5]` with `a(0)=2, a(1)=0`
-/

namespace A030110.P2617733881286024823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  2 * (f1 (n - 1) + (n : ℤ)) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030110.P2617733881286024823

namespace A030110

/-- `∑[2*(a(n-1)+n)-5]` -/
def P2617733881286024823.Spec : Prop :=
  ∀ n, P2617733881286024823.a n = A030110 n

end A030110

/-! ## A030110.P8720373042470745559

`floor(∑[a(n-1)-2]+2^n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A030110.P8720373042470745559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 ^ n : ℤ)

end

end A030110.P8720373042470745559

namespace A030110

/-- `floor(∑[a(n-1)-2]+2^n)` -/
def P8720373042470745559.Spec : Prop :=
  ∀ n, P8720373042470745559.a n = A030110 n

end A030110

/-! ## A030110.P4252049480734104215

`floor(∑[2*a(n-1)]-n²)` with `a(0)=2, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A030110.P4252049480734104215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 2 : ℤ)

end

end A030110.P4252049480734104215

namespace A030110

/-- `floor(∑[2*a(n-1)]-n²)` -/
def P4252049480734104215.Spec : Prop :=
  ∀ n, P4252049480734104215.a n = A030110 n

end A030110

/-! ## A030110.P2084904035456882549

`∑[∑[a(n-1)+a(n-1)+2]]` with `a(0)=2, a(1)=-2, a(2)=-1`
-/

namespace A030110.P2084904035456882549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, -2, -1] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030110.P2084904035456882549

namespace A030110

/-- `∑[∑[a(n-1)+a(n-1)+2]]` -/
def P2084904035456882549.Spec : Prop :=
  ∀ n, P2084904035456882549.a n = A030110 n

end A030110

/-! ## A030110.P6061511430856312826

`abs(A024012(n)+1)`
-/

namespace A030110.P6061511430856312826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024012 n + 1|

end

end A030110.P6061511430856312826

namespace A030110

/-- `abs(A024012(n)+1)` -/
def P6061511430856312826.Spec : Prop :=
  ∀ n, P6061511430856312826.a n = A030110 n

end A030110

/-! ## A030110.P9717686291584502698

`abs(n²-A000051(n))`
-/

namespace A030110.P9717686291584502698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A000051 n|

end

end A030110.P9717686291584502698

namespace A030110

/-- `abs(n²-A000051(n))` -/
def P9717686291584502698.Spec : Prop :=
  ∀ n, P9717686291584502698.a n = A030110 n

end A030110

/-! ## A030110.P9575957112685240474

`and(3-n², A036563(n))`
-/

namespace A030110.P9575957112685240474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 - (n ^ 2 : ℤ)) (A036563 n)

end

end A030110.P9575957112685240474

namespace A030110

/-- `and(3-n², A036563(n))` -/
def P9575957112685240474.Spec : Prop :=
  ∀ n, P9575957112685240474.a n = A030110 n

end A030110

/-! ## A030110.P13175358902909163371

`∑[A052968(n)-3*n]`
-/

namespace A030110.P13175358902909163371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052968 n - (3 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030110.P13175358902909163371

namespace A030110

/-- `∑[A052968(n)-3*n]` -/
def P13175358902909163371.Spec : Prop :=
  ∀ n, P13175358902909163371.a n = A030110 n

end A030110

/-! ## A030110.P1387322042820824995

`abs(A000079(n)+1-n²)`
-/

namespace A030110.P1387322042820824995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n + (1 - (n ^ 2 : ℤ))|

end

end A030110.P1387322042820824995

namespace A030110

/-- `abs(A000079(n)+1-n²)` -/
def P1387322042820824995.Spec : Prop :=
  ∀ n, P1387322042820824995.a n = A030110 n

end A030110

/-! ## A030110.P5510879149882332908

`abs(n²-2-A000225(n))`
-/

namespace A030110.P5510879149882332908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - 2 - A000225 n|

end

end A030110.P5510879149882332908

namespace A030110

/-- `abs(n²-2-A000225(n))` -/
def P5510879149882332908.Spec : Prop :=
  ∀ n, P5510879149882332908.a n = A030110 n

end A030110

/-! ## A030110.P4220540775951266595

`abs(A000918(n)-n²+3)`
-/

namespace A030110.P4220540775951266595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000918 n - (n ^ 2 : ℤ) + 3|

end

end A030110.P4220540775951266595

namespace A030110

/-- `abs(A000918(n)-n²+3)` -/
def P4220540775951266595.Spec : Prop :=
  ∀ n, P4220540775951266595.a n = A030110 n

end A030110

/-! ## A030110.P13581605752352439127

`abs(∑[2*n]-A005126(n))`
-/

namespace A030110.P13581605752352439127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A005126 n|

end

end A030110.P13581605752352439127

namespace A030110

/-- `abs(∑[2*n]-A005126(n))` -/
def P13581605752352439127.Spec : Prop :=
  ∀ n, P13581605752352439127.a n = A030110 n

end A030110

/-! ## A030110.P9025971489587420695

`abs(A142974(n+1)-(n-1))`
-/

namespace A030110.P9025971489587420695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A142974 (n + 1) - ((n : ℤ) - 1)|

end

end A030110.P9025971489587420695

namespace A030110

/-- `abs(A142974(n+1)-(n-1))` -/
def P9025971489587420695.Spec : Prop :=
  ∀ n, P9025971489587420695.a n = A030110 n

end A030110

/-! ## A030110.P16500711040398357736

`abs(A176778(n)+2*n+1)`
-/

namespace A030110.P16500711040398357736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176778 n + (2 * n + 1 : ℤ)|

end

end A030110.P16500711040398357736

namespace A030110

/-- `abs(A176778(n)+2*n+1)` -/
def P16500711040398357736.Spec : Prop :=
  ∀ n, P16500711040398357736.a n = A030110 n

end A030110

/-! ## A030110.P7098390202566760258

`abs(2*(n+1)-A071099(n))`
-/

namespace A030110.P7098390202566760258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * (n + 1) : ℤ) - A071099 n|

end

end A030110.P7098390202566760258

namespace A030110

/-- `abs(2*(n+1)-A071099(n))` -/
def P7098390202566760258.Spec : Prop :=
  ∀ n, P7098390202566760258.a n = A030110 n

end A030110

/-! ## A030110.P14989287812274865851

`∑[A011782(n)+1-2*n]`
-/

namespace A030110.P14989287812274865851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (1 - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030110.P14989287812274865851

namespace A030110

/-- `∑[A011782(n)+1-2*n]` -/
def P14989287812274865851.Spec : Prop :=
  ∀ n, P14989287812274865851.a n = A030110 n

end A030110

/-! ## A030110.P14002968027804447613

`∑[∑[A034008(n)]-n-(n-1)]`
-/

namespace A030110.P14002968027804447613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030110.P14002968027804447613

namespace A030110

/-- `∑[∑[A034008(n)]-n-(n-1)]` -/
def P14002968027804447613.Spec : Prop :=
  ∀ n, P14002968027804447613.a n = A030110 n

end A030110

/-! ## A030110.P8049825333219439178

`∑[A166444(n+1)+1-2*n]`
-/

namespace A030110.P8049825333219439178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (n + 1) + 1 - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030110.P8049825333219439178

namespace A030110

/-- `∑[A166444(n+1)+1-2*n]` -/
def P8049825333219439178.Spec : Prop :=
  ∀ n, P8049825333219439178.a n = A030110 n

end A030110

/-!
# A030111: Triangular array in which k-th entry in n-th row is C([ (n+k)/2 ],k) (1<=k<=n).

The programs for A030111, the canonical program `A030111.P731753675035142376` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030111 has offset 1).

The definition of A030111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030111.P13078446504738206391

`A194005(A061579(n+1))`
-/

namespace A030111.P13078446504738206391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194005 (A061579 (n + 1)).toNat

end

end A030111.P13078446504738206391

namespace A030111

/-- `A194005(A061579(n+1))` -/
def P13078446504738206391.Spec : Prop :=
  ∀ n, P13078446504738206391.a n = A030111 (n + 1)

end A030111

/-! ## A030111.P731753675035142376

`A107230(n+1)/A061554(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A030111

/-- `A107230(n+1)/A061554(n+1)` -/
def P731753675035142376.Spec : Prop :=
  ∀ n, P731753675035142376.a n = (A030111 (n + 1) : ℚ)

end A030111

/-! ## A030111.P3901018963709990274

`A046854(comp[∑[n]])`
-/

namespace A030111.P3901018963709990274
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A030111.P3901018963709990274

namespace A030111

/-- `A046854(comp[∑[n]])` -/
def P3901018963709990274.Spec : Prop :=
  ∀ n, P3901018963709990274.a n = A030111 (n + 1)

end A030111

/-! ## A030111.P14933626768639328732

`(A014132(n+1)-A007401(n+1))*A046854(A014132(n+1))`
-/

namespace A030111.P14933626768639328732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014132 (n + 1) - A007401 (n + 1)) * A046854 (A014132 (n + 1)).toNat

end

end A030111.P14933626768639328732

namespace A030111

/-- `(A014132(n+1)-A007401(n+1))*A046854(A014132(n+1))` -/
def P14933626768639328732.Spec : Prop :=
  ∀ n, P14933626768639328732.a n = A030111 (n + 1)

end A030111

/-! ## A030111.P8687734673209006745

`A153764(2*A014132(n+1)-n)`
-/

namespace A030111.P8687734673209006745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153764 (2 * A014132 (n + 1) - (n : ℤ)).toNat

end

end A030111.P8687734673209006745

namespace A030111

/-- `A153764(2*A014132(n+1)-n)` -/
def P8687734673209006745.Spec : Prop :=
  ∀ n, P8687734673209006745.a n = A030111 (n + 1)

end A030111

/-! ## A030111.P6693164777502227791

`A153764(A014132(n+1)+A014132(n+1)-n)`
-/

namespace A030111.P6693164777502227791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153764 (A014132 (n + 1) + (A014132 (n + 1) - (n : ℤ))).toNat

end

end A030111.P6693164777502227791

namespace A030111

/-- `A153764(A014132(n+1)+A014132(n+1)-n)` -/
def P6693164777502227791.Spec : Prop :=
  ∀ n, P6693164777502227791.a n = A030111 (n + 1)

end A030111

/-! ## A030111.P15882348042627692288

`A334745(A214661(n+1)+1)`
-/

namespace A030111.P15882348042627692288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334745 (A214661 (n + 1) + 1).toNat

end

end A030111.P15882348042627692288

namespace A030111

/-- `A334745(A214661(n+1)+1)` -/
def P15882348042627692288.Spec : Prop :=
  ∀ n, P15882348042627692288.a n = A030111 (n + 1)

end A030111

/-! ## A030111.P419699318096175284

`A334745(A214604(n+1))`
-/

namespace A030111.P419699318096175284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334745 (A214604 (n + 1)).toNat

end

end A030111.P419699318096175284

namespace A030111

/-- `A334745(A214604(n+1))` -/
def P419699318096175284.Spec : Prop :=
  ∀ n, P419699318096175284.a n = A030111 (n + 1)

end A030111

/-! ## A030111.P8737601168611105183

`A334745(A214661(n+2))`
-/

namespace A030111.P8737601168611105183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334745 (A214661 (n + 2)).toNat

end

end A030111.P8737601168611105183

namespace A030111

/-- `A334745(A214661(n+2))` -/
def P8737601168611105183.Spec : Prop :=
  ∀ n, P8737601168611105183.a n = A030111 (n + 1)

end A030111

/-! ## A030111.P8670820342287682215

`A153764(lt[1, A049290(n+1)])`
-/

namespace A030111.P8670820342287682215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A030111.P8670820342287682215

namespace A030111

/-- `A153764(lt[1, A049290(n+1)])` -/
def P8670820342287682215.Spec : Prop :=
  ∀ n, P8670820342287682215.a n = A030111 (n + 1)

end A030111

/-!
# A030112: Number of antichains in the product of a fence poset with n elements and a chain with 7 elements; also number of paths with n turns when light is reflected from 8 glass plates.

The programs for A030112, there is no canonical definition to state claims against.
-/

/-! ## A030112.P6300320470868478060

`A050447(eq[7, A025581(n)])`
-/

namespace A030112.P6300320470868478060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030112.P6300320470868478060

/-! ## A030112.P12718466674563237930

`A050447(eq[8, A195663(n)])`
-/

namespace A030112.P12718466674563237930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030112.P12718466674563237930

/-! ## A030112.P1174802594153617865

`A050447(A055999(n+5)-2)`
-/

namespace A030112.P1174802594153617865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A055999 (n + 5) - 2).toNat

end

end A030112.P1174802594153617865

/-! ## A030112.P11705464152176108430

`A050447(A052905(n+5)-3)`
-/

namespace A030112.P11705464152176108430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A052905 (n + 5) - 3).toNat

end

end A030112.P11705464152176108430

/-! ## A030112.P12146601055398251525

`A050447(A046691(n+6)-4)`
-/

namespace A030112.P12146601055398251525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A046691 (n + 6) - 4).toNat

end

end A030112.P12146601055398251525

/-! ## A030112.P15246089882240011749

`A050447(A000217(n+8)-8)`
-/

namespace A030112.P15246089882240011749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A000217 (n + 8) - 8).toNat

end

end A030112.P15246089882240011749

/-! ## A030112.P14763256310459518141

`A050447(eq[8, A004736(n+1)])`
-/

namespace A030112.P14763256310459518141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030112.P14763256310459518141

/-!
# A030113: Number of antichains in the product of a fence poset with n elements and a chain with 8 elements; also number of paths with n turns when light is reflected from 9 glass plates.

The programs for A030113, there is no canonical definition to state claims against.
-/

/-! ## A030113.P16314575325155074228

`A050447(A052905(n+6)-4)`
-/

namespace A030113.P16314575325155074228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A052905 (n + 6) - 4).toNat

end

end A030113.P16314575325155074228

/-! ## A030113.P9034841297809347255

`A050447(A000217(n+9)-9)`
-/

namespace A030113.P9034841297809347255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A000217 (n + 9) - 9).toNat

end

end A030113.P9034841297809347255

/-! ## A030113.P16271778485943270304

`A050447(A167499(n+4)+4*(n+4))`
-/

namespace A030113.P16271778485943270304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A167499 (n + 4) + (4 * (n + 4) : ℤ)).toNat

end

end A030113.P16271778485943270304

/-! ## A030113.P467817774374857308

`A050447(A167614(n+6)+A004273(n+3))`
-/

namespace A030113.P467817774374857308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A167614 (n + 6) + A004273 (n + 3)).toNat

end

end A030113.P467817774374857308

/-! ## A030113.P18309294016325134859

`A050447(A004273(n+5)+A000096(n+6))`
-/

namespace A030113.P18309294016325134859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A004273 (n + 5) + A000096 (n + 6)).toNat

end

end A030113.P18309294016325134859

/-!
# A030114: Number of antichains in the product of a fence poset with n elements and a chain with 9 elements; also number of paths with n turns when light is reflected from 10 glass plates.

The programs for A030114, there is no canonical definition to state claims against.
-/

/-! ## A030114.P2453692869055712086

`A050447(A055999(n+7)-4)`
-/

namespace A030114.P2453692869055712086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A055999 (n + 7) - 4).toNat

end

end A030114.P2453692869055712086

/-! ## A030114.P16429462959199770223

`A050447(A052905(n+7)-5)`
-/

namespace A030114.P16429462959199770223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A052905 (n + 7) - 5).toNat

end

end A030114.P16429462959199770223

/-! ## A030114.P2196478912596477950

`A050447(A000217(n+10)-10)`
-/

namespace A030114.P2196478912596477950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A000217 (n + 10) - 10).toNat

end

end A030114.P2196478912596477950

/-! ## A030114.P9732432738780895754

`A050447(A167614(n+9)-13)`
-/

namespace A030114.P9732432738780895754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A167614 (n + 9) - 13).toNat

end

end A030114.P9732432738780895754

/-! ## A030114.P13969479681448789474

`A050447(A005408(n)+A167614(n+7)+5)`
-/

namespace A030114.P13969479681448789474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A005408 n + (A167614 (n + 7) + 5)).toNat

end

end A030114.P13969479681448789474

/-!
# A030115: Number of antichains in the product of a fence poset with n elements and a chain with 10 elements; also number of paths with n turns when light is reflected from 11 glass plates.

The programs for A030115, there is no canonical definition to state claims against.
-/

/-! ## A030115.P12532488866957106053

`A050446(eq[10, A002262(n)])`
-/

namespace A030115.P12532488866957106053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050446 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030115.P12532488866957106053

/-! ## A030115.P9300474671795902863

`A050447(eq[10, A025581(n)])`
-/

namespace A030115.P9300474671795902863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030115.P9300474671795902863

/-! ## A030115.P2749063642694913153

`A050447(A000217(n+11)-11)`
-/

namespace A030115.P2749063642694913153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A000217 (n + 11) - 11).toNat

end

end A030115.P2749063642694913153

/-! ## A030115.P1266980606027230763

`A050447(A167614(n+10)-14)`
-/

namespace A030115.P1266980606027230763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A167614 (n + 10) - 14).toNat

end

end A030115.P1266980606027230763

/-! ## A030115.P7193630375230466573

`A050447(A052905(n+4)+A008574(n+8))`
-/

namespace A030115.P7193630375230466573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A052905 (n + 4) + A008574 (n + 8)).toNat

end

end A030115.P7193630375230466573

/-! ## A030115.P9731763557351188915

`A050447(A004273(n+6)+A000096(n+8))`
-/

namespace A030115.P9731763557351188915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A004273 (n + 6) + A000096 (n + 8)).toNat

end

end A030115.P9731763557351188915

/-!
# A030116: Number of antichains in the product of a fence poset with n elements and a chain with 11 elements; also number of paths with n turns when light is reflected from 12 glass plates.

The programs for A030116, there is no canonical definition to state claims against.
-/

/-! ## A030116.P7975637092785631506

`A050447(A052905(n+9)-7)`
-/

namespace A030116.P7975637092785631506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A052905 (n + 9) - 7).toNat

end

end A030116.P7975637092785631506

/-! ## A030116.P13582437556900261401

`A050447(A000217(n+12)-12)`
-/

namespace A030116.P13582437556900261401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A000217 (n + 12) - 12).toNat

end

end A030116.P13582437556900261401

/-! ## A030116.P14429192106608640650

`A050447(Δ[A000292(n+11)]-12)`
-/

namespace A030116.P14429192106608640650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (f1 (n + 1) - f1 n - 12).toNat

end

end A030116.P14429192106608640650

/-! ## A030116.P15021864913498489324

`A050447(A027379(n+9)+n+3)`
-/

namespace A030116.P15021864913498489324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A027379 (n + 9) + (n + 3 : ℤ)).toNat

end

end A030116.P15021864913498489324

/-! ## A030116.P1324405146153881672

`A050447(A000124(n+11)+n-1)`
-/

namespace A030116.P1324405146153881672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A000124 (n + 11) + ((n : ℤ) - 1)).toNat

end

end A030116.P1324405146153881672

/-!
# A030117: Number of triangles a queen can make (starting anywhere) on an n X n board.

The programs for A030117, the canonical program `A030117.P10115146110968229152` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030117 has offset 0).

The definition of A030117 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030117.P10115146110968229152

`n*((n-1)*(13*n-8)/6-floor(n/2))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030117

/-- `n*((n-1)*(13*n-8)/6-floor(n/2))` -/
def P10115146110968229152.Spec : Prop :=
  ∀ n, P10115146110968229152.a n = (A030117 n : ℚ)

end A030117

/-! ## A030117.P10571600558991989582

`A144298(n)-(3*n-1)*C(n, 3)`
-/

namespace A030117.P10571600558991989582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144298 n - ((3 * n : ℤ) - 1) * (Nat.choose n 3 : ℤ)

end

end A030117.P10571600558991989582

namespace A030117

/-- `A144298(n)-(3*n-1)*C(n, 3)` -/
def P10571600558991989582.Spec : Prop :=
  ∀ n, P10571600558991989582.a n = A030117 n

end A030117

/-! ## A030117.P1689123899432763845

`A026741(n)+A177890(n)-A062708(n)`
-/

namespace A030117.P1689123899432763845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + (A177890 n - A062708 n)

end

end A030117.P1689123899432763845

namespace A030117

/-- `A026741(n)+A177890(n)-A062708(n)` -/
def P1689123899432763845.Spec : Prop :=
  ∀ n, P1689123899432763845.a n = A030117 n

end A030117

/-!
# A030118: a(0) = 1, a(1) = 1, a(n) = a(n-1) - a(n-2) + n.

The programs for A030118, the canonical program `A030118.P6436773226617813877` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030118 has offset 0).

The definition of A030118 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-a(n-2)+n` (program `A030118.P6436773226617813877`, by `A030118.P6436773226617813877.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A030118.P6436773226617813877

`a(n-1)-a(n-2)+n` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030118

/-- `a(n-1)-a(n-2)+n` -/
def P6436773226617813877.Spec : Prop :=
  ∀ n, P6436773226617813877.a n = A030118 n

theorem P6436773226617813877.correct : P6436773226617813877.Spec := by
  intro n
  simp only [A030118]

end A030118

/-! ## A030118.P12584453133230707086

`n+1-((-1)^floor((n-1)/3)+(-1)^floor(n/3))/2`
-/

namespace A030118.P12584453133230707086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - ((-1 : ℚ) ^ (⌊((n : ℤ) - 1 : ℚ) / 3⌋ : ℤ) + (-1 : ℚ) ^ (⌊(n : ℚ) / 3⌋ : ℤ)) / 2

end

end A030118.P12584453133230707086

namespace A030118

/-- `n+1-((-1)^floor((n-1)/3)+(-1)^floor(n/3))/2` -/
def P12584453133230707086.Spec : Prop :=
  ∀ n, P12584453133230707086.a n = (A030118 n : ℚ)

end A030118

/-! ## A030118.P14050905876962428758

`round(n+1-sin(n%6))`
-/

namespace A030118.P14050905876962428758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) - Real.sin ((n % 6 : ℕ) : ℝ))

end

end A030118.P14050905876962428758

namespace A030118

/-- `round(n+1-sin(n%6))` -/
def P14050905876962428758.Spec : Prop :=
  ∀ n, P14050905876962428758.a n = A030118 n

end A030118

/-! ## A030118.P7443440459232470924

`∑[2-a(n-3)]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A030118.P7443440459232470924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 2] fun n f1 =>
  2 - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030118.P7443440459232470924

namespace A030118

/-- `∑[2-a(n-3)]` -/
def P7443440459232470924.Spec : Prop :=
  ∀ n, P7443440459232470924.a n = A030118 n

end A030118

/-! ## A030118.P15421292565243901889

`round(cos((n+2)%6)+n+1)`
-/

namespace A030118.P15421292565243901889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (((n + 2) % 6 : ℕ) : ℝ) + (n + 1 : ℝ))

end

end A030118.P15421292565243901889

namespace A030118

/-- `round(cos((n+2)%6)+n+1)` -/
def P15421292565243901889.Spec : Prop :=
  ∀ n, P15421292565243901889.a n = A030118 n

end A030118

/-! ## A030118.P3989649121064508283

`round(sin((n+3)%6)+n+1)`
-/

namespace A030118.P3989649121064508283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (((n + 3) % 6 : ℕ) : ℝ) + (n + 1 : ℝ))

end

end A030118.P3989649121064508283

namespace A030118

/-- `round(sin((n+3)%6)+n+1)` -/
def P3989649121064508283.Spec : Prop :=
  ∀ n, P3989649121064508283.a n = A030118 n

end A030118

/-! ## A030118.P5734804387485577408

`ogf((1-2x+3x^2-x^3)/(1-3x+4x^2-3x^3+x^4))`
-/

namespace A030118.P5734804387485577408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 3, -1] [1, -3, 4, -3, 1] n

end

end A030118.P5734804387485577408

namespace A030118

/-- `ogf((1-2x+3x^2-x^3)/(1-3x+4x^2-3x^3+x^4))` -/
def P5734804387485577408.Spec : Prop :=
  ∀ n, P5734804387485577408.a n = A030118 n

end A030118

/-! ## A030118.P6537504084572413718

`Δ[(1-n)²-a(n-3)]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A030118.P6537504084572413718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  (1 - (n : ℤ)) ^ 2 - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030118.P6537504084572413718

namespace A030118

/-- `Δ[(1-n)²-a(n-3)]` -/
def P6537504084572413718.Spec : Prop :=
  ∀ n, P6537504084572413718.a n = A030118 n

end A030118

/-! ## A030118.P14110504646586872460

`floor(n-1-(a(n-3)-n))` with `a(0)=1, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A030118.P14110504646586872460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (n : ℤ) - 1 - (a (n - 3) - (n : ℤ))

end

end A030118.P14110504646586872460

namespace A030118

/-- `floor(n-1-(a(n-3)-n))` -/
def P14110504646586872460.Spec : Prop :=
  ∀ n, P14110504646586872460.a n = A030118 n

end A030118

/-!
# A030119: a(n) = a(n-1) + a(n-2) + n, a(0) = a(1) = 1.

The programs for A030119, the canonical program `A030119.P11249973913337593535` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030119 has offset 0).

The definition of A030119 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+n` (program `A030119.P11249973913337593535`, by `A030119.P11249973913337593535.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A030119.P11249973913337593535

`a(n-1)+a(n-2)+n` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030119

/-- `a(n-1)+a(n-2)+n` -/
def P11249973913337593535.Spec : Prop :=
  ∀ n, (P11249973913337593535.a n : ℤ) = A030119 n

theorem P11249973913337593535.correct : P11249973913337593535.Spec := by
  intro n
  simp only [A030119]

end A030119

/-! ## A030119.P10168532974589907987

`ogf((1-2x+3x^2-x^3)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A030119.P10168532974589907987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 3, -1] [1, -3, 2, 1, -1] n

end

end A030119.P10168532974589907987

namespace A030119

/-- `ogf((1-2x+3x^2-x^3)/(1-3x+2x^2+x^3-x^4))` -/
def P10168532974589907987.Spec : Prop :=
  ∀ n, P10168532974589907987.a n = A030119 n

end A030119

/-! ## A030119.P15313844841845557991

`1-(a(n-3)-2*a(n-1))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A030119.P15313844841845557991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  1 - (a (n - 3) - 2 * a (n - 1))

end

end A030119.P15313844841845557991

namespace A030119

/-- `1-(a(n-3)-2*a(n-1))` -/
def P15313844841845557991.Spec : Prop :=
  ∀ n, P15313844841845557991.a n = A030119 n

end A030119

/-! ## A030119.P3388513266639308777

`n-∑[a(n-1)-(2-a(n-2))]` with `a(0)=-1, a(1)=1`
-/

namespace A030119.P3388513266639308777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n f1 =>
  f1 (n - 1) - (2 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030119.P3388513266639308777

namespace A030119

/-- `n-∑[a(n-1)-(2-a(n-2))]` -/
def P3388513266639308777.Spec : Prop :=
  ∀ n, P3388513266639308777.a n = A030119 n

end A030119

/-! ## A030119.P5911015843426100086

`1-(a(n-3)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A030119.P5911015843426100086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  1 - (a (n - 3) - a (n - 1) - a (n - 1))

end

end A030119.P5911015843426100086

namespace A030119

/-- `1-(a(n-3)-a(n-1)-a(n-1))` -/
def P5911015843426100086.Spec : Prop :=
  ∀ n, P5911015843426100086.a n = A030119 n

end A030119

/-! ## A030119.P18116094672618566487

`A192981(n)+n`
-/

namespace A030119.P18116094672618566487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192981 n + (n : ℤ)

end

end A030119.P18116094672618566487

namespace A030119

/-- `A192981(n)+n` -/
def P18116094672618566487.Spec : Prop :=
  ∀ n, P18116094672618566487.a n = A030119 n

end A030119

/-! ## A030119.P8192987236404723310

`A171516(n)-n`
-/

namespace A030119.P8192987236404723310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171516 n - (n : ℤ)

end

end A030119.P8192987236404723310

namespace A030119

/-- `A171516(n)-n` -/
def P8192987236404723310.Spec : Prop :=
  ∀ n, P8192987236404723310.a n = A030119 n

end A030119

/-! ## A030119.P17681985529762783732

`∑[A104449(n)-1]-1`
-/

namespace A030119.P17681985529762783732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A030119.P17681985529762783732

namespace A030119

/-- `∑[A104449(n)-1]-1` -/
def P17681985529762783732.Spec : Prop :=
  ∀ n, P17681985529762783732.a n = A030119 n

end A030119

/-! ## A030119.P14972475596298108391

`A022308(n+1)-(n+2)`
-/

namespace A030119.P14972475596298108391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 (n + 1) - (n + 2 : ℤ)

end

end A030119.P14972475596298108391

namespace A030119

/-- `A022308(n+1)-(n+2)` -/
def P14972475596298108391.Spec : Prop :=
  ∀ n, P14972475596298108391.a n = A030119 n

end A030119

/-! ## A030119.P12442345074985215104

`A000285(n+1)-(n+3)`
-/

namespace A030119.P12442345074985215104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 (n + 1) - (n + 3 : ℤ)

end

end A030119.P12442345074985215104

namespace A030119

/-- `A000285(n+1)-(n+3)` -/
def P12442345074985215104.Spec : Prop :=
  ∀ n, P12442345074985215104.a n = A030119 n

end A030119

/-! ## A030119.P4356157570706523894

`A104449(n+2)-(n+3)`
-/

namespace A030119.P4356157570706523894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 (n + 2) - (n + 3 : ℤ)

end

end A030119.P4356157570706523894

namespace A030119

/-- `A104449(n+2)-(n+3)` -/
def P4356157570706523894.Spec : Prop :=
  ∀ n, P4356157570706523894.a n = A030119 n

end A030119

/-! ## A030119.P9918550655877913671

`∑[Δ[A000285(n)]-1]-1`
-/

namespace A030119.P9918550655877913671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A030119.P9918550655877913671

namespace A030119

/-- `∑[Δ[A000285(n)]-1]-1` -/
def P9918550655877913671.Spec : Prop :=
  ∀ n, P9918550655877913671.a n = A030119 n

end A030119

/-! ## A030119.P8737246718579427884

`A212804(n)+A001924(n)`
-/

namespace A030119.P8737246718579427884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A001924 n

end

end A030119.P8737246718579427884

namespace A030119

/-- `A212804(n)+A001924(n)` -/
def P8737246718579427884.Spec : Prop :=
  ∀ n, P8737246718579427884.a n = A030119 n

end A030119

/-! ## A030119.P11065283159214362701

`A064551(n)-A014283(n)`
-/

namespace A030119.P11065283159214362701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064551 n - A014283 n

end

end A030119.P11065283159214362701

namespace A030119

/-- `A064551(n)-A014283(n)` -/
def P11065283159214362701.Spec : Prop :=
  ∀ n, P11065283159214362701.a n = A030119 n

end A030119

/-! ## A030119.P3371742441949409368

`A154691(n)-A002062(n)`
-/

namespace A030119.P3371742441949409368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154691 n - A002062 n

end

end A030119.P3371742441949409368

namespace A030119

/-- `A154691(n)-A002062(n)` -/
def P3371742441949409368.Spec : Prop :=
  ∀ n, P3371742441949409368.a n = A030119 n

end A030119

/-! ## A030119.P14796098875777365880

`A210728(n)-A001911(n)`
-/

namespace A030119.P14796098875777365880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210728 n - A001911 n

end

end A030119.P14796098875777365880

namespace A030119

/-- `A210728(n)-A001911(n)` -/
def P14796098875777365880.Spec : Prop :=
  ∀ n, P14796098875777365880.a n = A030119 n

end A030119

/-! ## A030119.P4793132861343989008

`A171237(n)-A081659(n)`
-/

namespace A030119.P4793132861343989008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171237 n - A081659 n

end

end A030119.P4793132861343989008

namespace A030119

/-- `A171237(n)-A081659(n)` -/
def P4793132861343989008.Spec : Prop :=
  ∀ n, P4793132861343989008.a n = A030119 n

end A030119

/-! ## A030119.P8795539492812015831

`A131300(n)-A210673(n)`
-/

namespace A030119.P8795539492812015831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131300 n - A210673 n

end

end A030119.P8795539492812015831

namespace A030119

/-- `A131300(n)-A210673(n)` -/
def P8795539492812015831.Spec : Prop :=
  ∀ n, P8795539492812015831.a n = A030119 n

end A030119

/-! ## A030119.P17939327692159376756

`∑[A001595(n)]-A000045(n)`
-/

namespace A030119.P17939327692159376756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000045 n

end

end A030119.P17939327692159376756

namespace A030119

/-- `∑[A001595(n)]-A000045(n)` -/
def P17939327692159376756.Spec : Prop :=
  ∀ n, P17939327692159376756.a n = A030119 n

end A030119

/-! ## A030119.P18393293939273711818

`A001924(n)+Δ[A000045(n)]`
-/

namespace A030119.P18393293939273711818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n + (f1 (n + 1) - f1 n)

end

end A030119.P18393293939273711818

namespace A030119

/-- `A001924(n)+Δ[A000045(n)]` -/
def P18393293939273711818.Spec : Prop :=
  ∀ n, P18393293939273711818.a n = A030119 n

end A030119

/-!
# A030120: Spontaneous magnetization coefficients for square lattice spin 3/2 Ising model.

The programs for A030120, there is no canonical definition to state claims against.
-/

/-! ## A030120.P16748356834371293099

`A010105(n)-A000007(n)`
-/

namespace A030120.P16748356834371293099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010105 n - A000007 n

end

end A030120.P16748356834371293099

/-! ## A030120.P7311131395200219418

`A010105(n)/A054977(n)`
-/

namespace A030120.P7311131395200219418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010105 n : ℚ) / (A054977 n : ℚ)

end

end A030120.P7311131395200219418

/-! ## A030120.P16279205976136297177

`A010105(n)/A141044(n)`
-/

namespace A030120.P16279205976136297177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010105 n : ℚ) / (A141044 n : ℚ)

end

end A030120.P16279205976136297177

/-! ## A030120.P1838500683478167176

`A010105(n)^A062157(n)²`
-/

namespace A030120.P1838500683478167176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010105 n : ℚ) ^ (A062157 n ^ 2 : ℤ)

end

end A030120.P1838500683478167176

/-! ## A030120.P4221609599067309595

`A010105(n)/A000038(n)!`
-/

namespace A030120.P4221609599067309595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010105 n : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)

end

end A030120.P4221609599067309595

/-! ## A030120.P5210211822850483624

`A010105(n)-char[A030122(n)]`
-/

namespace A030120.P5210211822850483624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030122 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010105 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A030120.P5210211822850483624

/-! ## A030120.P2521001684985780093

`A010105(n)-A286653(∑[n]+n)`
-/

namespace A030120.P2521001684985780093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010105 n - A286653 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A030120.P2521001684985780093

/-! ## A030120.P10820927722520711814

`A010105(n)-and(1, A000010((n+1)²))`
-/

namespace A030120.P10820927722520711814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010105 n - Int.land 1 (A000010 ((n + 1) ^ 2))

end

end A030120.P10820927722520711814

/-! ## A030120.P8509585122077274420

`A010105(n)-and(1, ∑[A000010(n+1)])`
-/

namespace A030120.P8509585122077274420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010105 n - Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A030120.P8509585122077274420

/-! ## A030120.P15497002954467956571

`A010105(n)-A000035(A005875(n))`
-/

namespace A030120.P15497002954467956571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010105 n - A000035 (A005875 n).toNat

end

end A030120.P15497002954467956571

/-! ## A030120.P9132153454153484308

`A010105(n)-A000035(A008458(n))`
-/

namespace A030120.P9132153454153484308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010105 n - A000035 (A008458 n).toNat

end

end A030120.P9132153454153484308

/-! ## A030120.P11987364078095391318

`A010105(n)-A008683(A008574(n))`
-/

namespace A030120.P11987364078095391318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010105 n - A008683 (A008574 n).toNat

end

end A030120.P11987364078095391318

/-! ## A030120.P11294105425281143990

`A010105(n)/A014963(A016825(n))`
-/

namespace A030120.P11294105425281143990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010105 n : ℚ) / (A014963 (A016825 n).toNat : ℚ)

end

end A030120.P11294105425281143990

/-! ## A030120.P329028467512545033

`A010105(n)-A106544(A029837(n+2))`
-/

namespace A030120.P329028467512545033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010105 n - A106544 (A029837 (n + 2)).toNat

end

end A030120.P329028467512545033

/-! ## A030120.P11495545303100392942

`A010105(n)+A008683(2*A008574(n))`
-/

namespace A030120.P11495545303100392942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010105 n + A008683 (2 * A008574 n).toNat

end

end A030120.P11495545303100392942

/-! ## A030120.P2838187830429147523

`A010105(n)^A051903(A079879(n+1))`
-/

namespace A030120.P2838187830429147523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010105 n : ℚ) ^ (A051903 (A079879 (n + 1)).toNat : ℤ)

end

end A030120.P2838187830429147523

/-! ## A030120.P4032333098199589354

`A010105(n)+A010106(n)-A030121(n)`
-/

namespace A030120.P4032333098199589354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010105 n + (A010106 n - A030121 n)

end

end A030120.P4032333098199589354

/-!
# A030121: Spontaneous magnetization coefficients for square lattice spin 5/2 Ising model.

The programs for A030121, there is no canonical definition to state claims against.
-/

/-! ## A030121.P14848685679467014816

`floor(A010106(n)+acot(n))`
-/

namespace A030121.P14848685679467014816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010106 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A030121.P14848685679467014816

/-! ## A030121.P7118585460921850075

`A010106(n)+A000007(n)`
-/

namespace A030121.P7118585460921850075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010106 n + A000007 n

end

end A030121.P7118585460921850075

/-! ## A030121.P10409937228847903744

`A010106(n)+char[A016855(n)]`
-/

namespace A030121.P10409937228847903744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016855 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010106 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A030121.P10409937228847903744

/-! ## A030121.P7847423981979306331

`A010106(n)+char[A017394(n)]`
-/

namespace A030121.P7847423981979306331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017394 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010106 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A030121.P7847423981979306331

/-! ## A030121.P4550295226866350183

`A010106(n)+char[A090392(n)]`
-/

namespace A030121.P4550295226866350183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090392 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010106 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A030121.P4550295226866350183

/-! ## A030121.P11826117982112687171

`A010106(n)+A008574(n)%2`
-/

namespace A030121.P11826117982112687171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010106 n + Int.tmod (A008574 n) 2

end

end A030121.P11826117982112687171

/-! ## A030121.P6657867629671441851

`xor(A000007(2*n), A010106(n))`
-/

namespace A030121.P6657867629671441851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (2 * n)) (A010106 n)

end

end A030121.P6657867629671441851

/-! ## A030121.P11973627814471884032

`A010106(n)+A008683((n+1)²)`
-/

namespace A030121.P11973627814471884032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010106 n + A008683 ((n + 1) ^ 2)

end

end A030121.P11973627814471884032

/-! ## A030121.P4932909107199112824

`A010106(n)+A000010(n+2)%2`
-/

namespace A030121.P4932909107199112824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010106 n + Int.tmod (A000010 (n + 2)) 2

end

end A030121.P4932909107199112824

/-! ## A030121.P16182818165465037585

`A010106(n)+A000045(C(2, n+2))`
-/

namespace A030121.P16182818165465037585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010106 n + A000045 (Nat.choose 2 (n + 2))

end

end A030121.P16182818165465037585

/-! ## A030121.P2312930961653826289

`n^a(A001221(n))*A010106(n)` with `a(0)=3`
-/

namespace A030121.P2312930961653826289
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [3] fun n a =>
  (n : ℝ) ^ (a (A001221 n).toNat) * (A010106 n : ℝ)

end

end A030121.P2312930961653826289

/-! ## A030121.P15519525179695318684

`A010106(n)+A000035(A001316(n))`
-/

namespace A030121.P15519525179695318684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010106 n + A000035 (A001316 n).toNat

end

end A030121.P15519525179695318684

/-! ## A030121.P8747556692043056561

`A010109(A001222(n+1))+A010106(n)`
-/

namespace A030121.P8747556692043056561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010109 (A001222 (n + 1)).toNat + A010106 n

end

end A030121.P8747556692043056561

/-! ## A030121.P9632862276808796168

`A010106(n)+A010106(A000120(n))/2`
-/

namespace A030121.P9632862276808796168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010106 n : ℚ) + (A010106 (A000120 n).toNat : ℚ) / 2

end

end A030121.P9632862276808796168

/-! ## A030121.P4244439584641441447

`A010106(n)+A001221(A014963(4*n+2))`
-/

namespace A030121.P4244439584641441447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010106 n + A001221 (A014963 (4 * n + 2)).toNat

end

end A030121.P4244439584641441447

/-! ## A030121.P17672434956446036311

`A010105(n)+A010106(n)-A030120(n)`
-/

namespace A030121.P17672434956446036311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010105 n + (A010106 n - A030120 n)

end

end A030121.P17672434956446036311

/-!
# A030123: Most likely total for a roll of n 6-sided dice, choosing the smallest if there is a choice.

The programs for A030123, the canonical program `A030123.P822239246666980812` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030123 has offset 0).

The definition of A030123 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030123.P822239246666980812

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=7, a(3)=10, a(4)=14`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030123

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P822239246666980812.Spec : Prop :=
  ∀ n, P822239246666980812.a n = A030123 n

theorem P822239246666980812.correct : P822239246666980812.Spec := by
  intro n
  simp only [A030123]

end A030123

/-! ## A030123.P599631446237640298

`a(n-2)+7` with `a(0)=0, a(1)=1, a(2)=7, a(3)=10`
-/

namespace A030123.P599631446237640298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 7, 10] fun n a =>
  a (n - 2) + 7

end

end A030123.P599631446237640298

namespace A030123

/-- `a(n-2)+7` -/
def P599631446237640298.Spec : Prop :=
  ∀ n, (P599631446237640298.a n : ℤ) = A030123 n

end A030123

/-! ## A030123.P6019610065212374684

`∑[7-a(n-1)]` with `a(0)=0, a(1)=1, a(2)=6, a(3)=3`
-/

namespace A030123.P6019610065212374684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6, 3] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030123.P6019610065212374684

namespace A030123

/-- `∑[7-a(n-1)]` -/
def P6019610065212374684.Spec : Prop :=
  ∀ n, P6019610065212374684.a n = A030123 n

end A030123

/-! ## A030123.P15734382229197365658

`7*n-4-a(n-1)` with `a(0)=0, a(1)=1, a(2)=7`
-/

namespace A030123.P15734382229197365658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 7] fun n a =>
  (7 * n : ℤ) - 4 - a (n - 1)

end

end A030123.P15734382229197365658

namespace A030123

/-- `7*n-4-a(n-1)` -/
def P15734382229197365658.Spec : Prop :=
  ∀ n, P15734382229197365658.a n = A030123 n

end A030123

/-! ## A030123.P16716088207365475858

`∑[A101403(a(n-1))]` with `a(0)=0, a(1)=1, a(2)=6`
-/

namespace A030123.P16716088207365475858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6] fun n f1 =>
  A101403 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030123.P16716088207365475858

namespace A030123

/-- `∑[A101403(a(n-1))]` -/
def P16716088207365475858.Spec : Prop :=
  ∀ n, P16716088207365475858.a n = A030123 n

end A030123

/-! ## A030123.P5832764317416883996

`floor(7*n/2)%A039771(n+1)`
-/

namespace A030123.P5832764317416883996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊7 * ((n : ℚ) / 2)⌋ (A039771 (n + 1))

end

end A030123.P5832764317416883996

namespace A030123

/-- `floor(7*n/2)%A039771(n+1)` -/
def P5832764317416883996.Spec : Prop :=
  ∀ n, P5832764317416883996.a n = A030123 n

end A030123

/-! ## A030123.P3372646583703091078

`C(A047355(n+1), abs(floor(1/(γ-n))))`
-/

namespace A030123.P3372646583703091078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A047355 (n + 1)).toNat |⌊1 / (Real.eulerMascheroniConstant - (n : ℝ))⌋|.toNat

end

end A030123.P3372646583703091078

namespace A030123

/-- `C(A047355(n+1), abs(floor(1/(γ-n))))` -/
def P3372646583703091078.Spec : Prop :=
  ∀ n, (P3372646583703091078.a n : ℤ) = A030123 n

end A030123

/-! ## A030123.P17934921106219618960

`A256680(A199969(n+1))+n`
-/

namespace A030123.P17934921106219618960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256680 (A199969 (n + 1)).toNat + (n : ℤ)

end

end A030123.P17934921106219618960

namespace A030123

/-- `A256680(A199969(n+1))+n` -/
def P17934921106219618960.Spec : Prop :=
  ∀ n, P17934921106219618960.a n = A030123 n

end A030123

/-! ## A030123.P183977799286698425

`A308196(n)-A047209(n+1)`
-/

namespace A030123.P183977799286698425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308196 n - A047209 (n + 1)

end

end A030123.P183977799286698425

namespace A030123

/-- `A308196(n)-A047209(n+1)` -/
def P183977799286698425.Spec : Prop :=
  ∀ n, P183977799286698425.a n = A030123 n

end A030123

/-! ## A030123.P1219183243813510582

`A047355(n+1)%A002523(n)`
-/

namespace A030123.P1219183243813510582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047355 (n + 1)) (A002523 n)

end

end A030123.P1219183243813510582

namespace A030123

/-- `A047355(n+1)%A002523(n)` -/
def P1219183243813510582.Spec : Prop :=
  ∀ n, P1219183243813510582.a n = A030123 n

end A030123

/-! ## A030123.P5422175615468778057

`and(A047355(n+1), A134824(n))`
-/

namespace A030123.P5422175615468778057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047355 (n + 1)) (A134824 n)

end

end A030123.P5422175615468778057

namespace A030123

/-- `and(A047355(n+1), A134824(n))` -/
def P5422175615468778057.Spec : Prop :=
  ∀ n, P5422175615468778057.a n = A030123 n

end A030123

/-! ## A030123.P8192259293900429715

`and(A047355(n+1), A260196(n))`
-/

namespace A030123.P8192259293900429715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047355 (n + 1)) (A260196 n)

end

end A030123.P8192259293900429715

namespace A030123

/-- `and(A047355(n+1), A260196(n))` -/
def P8192259293900429715.Spec : Prop :=
  ∀ n, P8192259293900429715.a n = A030123 n

end A030123

/-! ## A030123.P6856276440791471395

`A047215(A159075(n)+n)+n`
-/

namespace A030123.P6856276440791471395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047215 (A159075 n + (n : ℤ)).toNat + (n : ℤ)

end

end A030123.P6856276440791471395

namespace A030123

/-- `A047215(A159075(n)+n)+n` -/
def P6856276440791471395.Spec : Prop :=
  ∀ n, P6856276440791471395.a n = A030123 n

end A030123

/-! ## A030123.P8122474307522311895

`A047215(n-A063524(n))+n`
-/

namespace A030123.P8122474307522311895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047215 ((n : ℤ) - A063524 n).toNat + (n : ℤ)

end

end A030123.P8122474307522311895

namespace A030123

/-- `A047215(n-A063524(n))+n` -/
def P8122474307522311895.Spec : Prop :=
  ∀ n, P8122474307522311895.a n = A030123 n

end A030123

/-! ## A030123.P11138255058824760519

`A032766(n)+A005843(n-char[1])`
-/

namespace A030123.P11138255058824760519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n + A005843 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A030123.P11138255058824760519

namespace A030123

/-- `A032766(n)+A005843(n-char[1])` -/
def P11138255058824760519.Spec : Prop :=
  ∀ n, P11138255058824760519.a n = A030123 n

end A030123

/-! ## A030123.P14289066779174392676

`A032766(n)+2*A199969(n+1)`
-/

namespace A030123.P14289066779174392676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n + 2 * A199969 (n + 1)

end

end A030123.P14289066779174392676

namespace A030123

/-- `A032766(n)+2*A199969(n+1)` -/
def P14289066779174392676.Spec : Prop :=
  ∀ n, P14289066779174392676.a n = A030123 n

end A030123

/-! ## A030123.P9849731106361625876

`A146509(n+1)%A143795(n+1)`
-/

namespace A030123.P9849731106361625876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146509 (n + 1)) (A143795 (n + 1))

end

end A030123.P9849731106361625876

namespace A030123

/-- `A146509(n+1)%A143795(n+1)` -/
def P9849731106361625876.Spec : Prop :=
  ∀ n, P9849731106361625876.a n = A030123 n

end A030123

/-! ## A030123.P4078899805295684675

`(2*A249547(n)+1)%A192136(n)`
-/

namespace A030123.P4078899805295684675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A249547 n + 1) (A192136 n)

end

end A030123.P4078899805295684675

namespace A030123

/-- `(2*A249547(n)+1)%A192136(n)` -/
def P4078899805295684675.Spec : Prop :=
  ∀ n, P4078899805295684675.a n = A030123 n

end A030123

/-! ## A030123.P5287891145361295354

`A319279(n+1)+n-A018837(n)`
-/

namespace A030123.P5287891145361295354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319279 (n + 1) + ((n : ℤ) - A018837 n)

end

end A030123.P5287891145361295354

namespace A030123

/-- `A319279(n+1)+n-A018837(n)` -/
def P5287891145361295354.Spec : Prop :=
  ∀ n, P5287891145361295354.a n = A030123 n

end A030123

/-! ## A030123.P15926209573126099392

`A047355(n+1)-A254667(A254667(n)-n)`
-/

namespace A030123.P15926209573126099392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047355 (n + 1) - A254667 (A254667 n - (n : ℤ)).toNat

end

end A030123.P15926209573126099392

namespace A030123

/-- `A047355(n+1)-A254667(A254667(n)-n)` -/
def P15926209573126099392.Spec : Prop :=
  ∀ n, P15926209573126099392.a n = A030123 n

end A030123

/-!
# A030124: Complement (and also first differences) of Hofstadter's sequence A005228.

The programs for A030124, there is no canonical definition to state claims against.
-/

/-! ## A030124.P10537561161486811515

`Δ[A005228(n+1)]`
-/

namespace A030124.P10537561161486811515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030124.P10537561161486811515

/-! ## A030124.P14505250167841378582

`comp[A081689(n)]+1`
-/

namespace A030124.P14505250167841378582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081689 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A030124.P14505250167841378582

/-! ## A030124.P11693288124951194912

`comp[∑[comp[A005228(n+2)]]]`
-/

namespace A030124.P11693288124951194912
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A030124.P11693288124951194912

/-! ## A030124.P3163653741533172765

`A225687(n+1)+1+n`
-/

namespace A030124.P3163653741533172765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (n + 1) + 1 + (n : ℤ)

end

end A030124.P3163653741533172765

/-! ## A030124.P11406383728062235328

`A056731(n)+a(n-1)` with `a(0)=2`
-/

namespace A030124.P11406383728062235328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A056731 n + a (n - 1)

end

end A030124.P11406383728062235328

/-! ## A030124.P14074204058803114872

`A061578(n+1)+A000007(n)`
-/

namespace A030124.P14074204058803114872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061578 (n + 1) + A000007 n

end

end A030124.P14074204058803114872

/-! ## A030124.P7282251499003589649

`A054977(n)*A061578(n+1)`
-/

namespace A030124.P7282251499003589649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A061578 (n + 1)

end

end A030124.P7282251499003589649

/-! ## A030124.P1383494323309506369

`comp[A167151(comp[A005408(n)+1])]`
-/

namespace A030124.P1383494323309506369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167151 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A030124.P1383494323309506369

/-! ## A030124.P4516044367614756121

`A005228(n+2)-A005228(n+1)`
-/

namespace A030124.P4516044367614756121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 2) - A005228 (n + 1)

end

end A030124.P4516044367614756121

/-! ## A030124.P14824644512749306292

`A061577(n+1)/A005228(n+1)*A061578(n+1)`
-/

namespace A030124.P14824644512749306292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061577 (n + 1) : ℚ) / (A005228 (n + 1) : ℚ) * (A061578 (n + 1) : ℚ)

end

end A030124.P14824644512749306292

/-! ## A030124.P11262106269560644254

`Δ[A081689(n)]`
-/

namespace A030124.P11262106269560644254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030124.P11262106269560644254

/-! ## A030124.P11138229591768038140

`A081688(n+1)+1`
-/

namespace A030124.P11138229591768038140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081688 (n + 1) + 1

end

end A030124.P11138229591768038140

/-! ## A030124.P7980315183662903264

`Δ[A109592(n+1)/2]`
-/

namespace A030124.P7980315183662903264
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109592 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030124.P7980315183662903264

/-! ## A030124.P656131100142806321

`A081689(n+1)-A081689(n)`
-/

namespace A030124.P656131100142806321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081689 (n + 1) - A081689 n

end

end A030124.P656131100142806321

/-! ## A030124.P14292067215055169286

`A061578(n+2)-A056731(n+1)`
-/

namespace A030124.P14292067215055169286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061578 (n + 2) - A056731 (n + 1)

end

end A030124.P14292067215055169286

/-! ## A030124.P11389873351869819512

`A022953(n+2)-(A061577(n+2)+A056731(n+1))`
-/

namespace A030124.P11389873351869819512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022953 (n + 2) - (A061577 (n + 2) + A056731 (n + 1))

end

end A030124.P11389873351869819512

/-! ## A030124.P8432446027742688141

`A020725(A081688(n+1))`
-/

namespace A030124.P8432446027742688141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A081688 (n + 1)).toNat

end

end A030124.P8432446027742688141

/-! ## A030124.P2982373311813813900

`A181440(A061578(n+1))`
-/

namespace A030124.P2982373311813813900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A061578 (n + 1)).toNat

end

end A030124.P2982373311813813900

/-! ## A030124.P1275418711070006273

`A167151(2*(n+1))`
-/

namespace A030124.P1275418711070006273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167151 (2 * (n + 1))

end

end A030124.P1275418711070006273

/-! ## A030124.P7325094320605431398

`∑[A167151(Δ[A167151(2*n)])]`
-/

namespace A030124.P7325094320605431398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167151 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167151 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030124.P7325094320605431398

/-!
# A030126: Schur's numbers (version 1).

The programs for A030126, there is no canonical definition to state claims against.
-/

/-! ## A030126.P16058175038645981668

`ogf((2-5x-9x^2)/(1-5x+x^2+10x^3))`
-/

namespace A030126.P16058175038645981668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -5, -9] [1, -5, 1, 10] n

end

end A030126.P16058175038645981668

/-!
# A030127: Term at which n-Somos sequence first becomes nonintegral.

The programs for A030127, there is no canonical definition to state claims against.
-/

/-! ## A030127.P7105544960729446165

`eq[10, A084767(A199344(n))]`
-/

namespace A030127.P7105544960729446165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084767 (A199344 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030127.P7105544960729446165

/-! ## A030127.P5184754532539428064

`A109402(A032565(n+1))+16`
-/

namespace A030127.P5184754532539428064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109402 (A032565 (n + 1)).toNat + 16

end

end A030127.P5184754532539428064

/-! ## A030127.P2411972628114091139

`A109402(n+1)+A102376(A262242(n+1))`
-/

namespace A030127.P2411972628114091139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109402 (n + 1) + A102376 (A262242 (n + 1)).toNat

end

end A030127.P2411972628114091139

/-! ## A030127.P9886965012841296306

`xor(A030308(A322230(n+3)), A060275(2*n+3))`
-/

namespace A030127.P9886965012841296306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A030308 (A322230 (n + 3)).toNat) (A060275 (2 * n + 3))

end

end A030127.P9886965012841296306

/-!
# A030128: Number of Steiner triple systems (STS's) on n elements.

The programs for A030128, there is no canonical definition to state claims against.
-/

/-! ## A030128.P182622947328690477

`and(A287741(n+3), A366554(A028825(3*n+1)))`
-/

namespace A030128.P182622947328690477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A287741 (n + 3)) (A366554 (A028825 (3 * n + 1)).toNat)

end

end A030128.P182622947328690477

/-! ## A030128.P574103601714121298

`A128192(n+1)*A306862(n²)/A326889(A007947(n+1))`
-/

namespace A030128.P574103601714121298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128192 (n + 1) * A306862 (n ^ 2) : ℚ) / (A326889 (A007947 (n + 1)).toNat : ℚ)

end

end A030128.P574103601714121298

/-!
# A030129: Number of nonisomorphic Steiner triple systems (STS's) S(2,3,n) on n points.

The programs for A030129, there is no canonical definition to state claims against.
-/

/-! ## A030129.P9205749514665304491

`A263099(or(6, 7*n))`
-/

namespace A030129.P9205749514665304491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263099 (Nat.lor 6 (7 * n))

end

end A030129.P9205749514665304491

/-! ## A030129.P17355710108555039908

`sqrt(A051390(comp[n^4]))`
-/

namespace A030129.P17355710108555039908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A051390 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℝ)

end

end A030129.P17355710108555039908

/-! ## A030129.P3640495987306026282

`A266344(2^n+n²)`
-/

namespace A030129.P3640495987306026282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266344 (2 ^ n + n ^ 2)

end

end A030129.P3640495987306026282

/-! ## A030129.P14292227648122012024

`log2(gcd(n, A162059(n+1)))`
-/

namespace A030129.P14292227648122012024
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (n : ℤ) (A162059 (n + 1)) : ℝ)

end

end A030129.P14292227648122012024

/-! ## A030129.P6996620415732028786

`A000161(A022398(n))`
-/

namespace A030129.P6996620415732028786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A022398 n).toNat

end

end A030129.P6996620415732028786

/-!
# A030130: Binary expansion contains a single 0.

The programs for A030130, the canonical program `A030130.P14159575509811306268` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030130 has offset 1).

The definition of A030130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030130.P14564846947287321198

`A081118(n+1)-char[∑[n]]`
-/

namespace A030130.P14564846947287321198
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A030130.P14564846947287321198

namespace A030130

/-- `A081118(n+1)-char[∑[n]]` -/
def P14564846947287321198.Spec : Prop :=
  ∀ n, P14564846947287321198.a n = A030130 (n + 1)

end A030130

/-! ## A030130.P6817675710061395146

`A043569(n+1)-A035214(n)`
-/

namespace A030130.P6817675710061395146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043569 (n + 1) - A035214 n

end

end A030130.P6817675710061395146

namespace A030130

/-- `A043569(n+1)-A035214(n)` -/
def P6817675710061395146.Spec : Prop :=
  ∀ n, P6817675710061395146.a n = A030130 (n + 1)

end A030130

/-! ## A030130.P14159575509811306268

`xor(A010054(n), A081118(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A030130

/-- `xor(A010054(n), A081118(n+1))` -/
def P14159575509811306268.Spec : Prop :=
  ∀ n, P14159575509811306268.a n = A030130 (n + 1)

theorem P14159575509811306268.correct : P14159575509811306268.Spec := by
  intro n
  simp only [A030130, Nat.add_sub_cancel]

end A030130

/-! ## A030130.P2111685378730905484

`A089633(comp[∑[n+1]])`
-/

namespace A030130.P2111685378730905484
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A030130.P2111685378730905484

namespace A030130

/-- `A089633(comp[∑[n+1]])` -/
def P2111685378730905484.Spec : Prop :=
  ∀ n, P2111685378730905484.a n = A030130 (n + 1)

end A030130

/-! ## A030130.P18043479535597436631

`xor(1, record[xor(1, A089633(n))])`
-/

namespace A030130.P18043479535597436631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A089633 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A030130.P18043479535597436631

namespace A030130

/-- `xor(1, record[xor(1, A089633(n))])` -/
def P18043479535597436631.Spec : Prop :=
  ∀ n, P18043479535597436631.a n = A030130 (n + 1)

end A030130

/-! ## A030130.P8767065162702383751

`∩[A089633(A080036(n)-1), A089633(n)]`
-/

namespace A030130.P8767065162702383751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (A080036 n - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030130.P8767065162702383751

namespace A030130

/-- `∩[A089633(A080036(n)-1), A089633(n)]` -/
def P8767065162702383751.Spec : Prop :=
  ∀ n, (P8767065162702383751.a n : ℤ) = A030130 (n + 1)

end A030130

/-! ## A030130.P2000520144912161749

`∩[A089633(n), A089633(A123578(n)+n)]`
-/

namespace A030130.P2000520144912161749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (A123578 n + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030130.P2000520144912161749

namespace A030130

/-- `∩[A089633(n), A089633(A123578(n)+n)]` -/
def P2000520144912161749.Spec : Prop :=
  ∀ n, (P2000520144912161749.a n : ℤ) = A030130 (n + 1)

end A030130

/-! ## A030130.P6331368519871840559

`A023758(A080036(n)+1)-1`
-/

namespace A030130.P6331368519871840559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (A080036 n + 1).toNat - 1

end

end A030130.P6331368519871840559

namespace A030130

/-- `A023758(A080036(n)+1)-1` -/
def P6331368519871840559.Spec : Prop :=
  ∀ n, P6331368519871840559.a n = A030130 (n + 1)

end A030130

/-! ## A030130.P7268445434454473916

`∪[A002446(n), A164874(n+1)]`
-/

namespace A030130.P7268445434454473916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002446 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A030130.P7268445434454473916

namespace A030130

/-- `∪[A002446(n), A164874(n+1)]` -/
def P7268445434454473916.Spec : Prop :=
  ∀ n, (P7268445434454473916.a n : ℤ) = A030130 (n + 1)

end A030130

/-! ## A030130.P4388982150811273211

`∩[A087118(n+1), A089633(n)]`
-/

namespace A030130.P4388982150811273211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030130.P4388982150811273211

namespace A030130

/-- `∩[A087118(n+1), A089633(n)]` -/
def P4388982150811273211.Spec : Prop :=
  ∀ n, (P4388982150811273211.a n : ℤ) = A030130 (n + 1)

end A030130

/-! ## A030130.P18328570883242757873

`∩[A087118(n+1), A345297(n)]`
-/

namespace A030130.P18328570883242757873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345297 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030130.P18328570883242757873

namespace A030130

/-- `∩[A087118(n+1), A345297(n)]` -/
def P18328570883242757873.Spec : Prop :=
  ∀ n, (P18328570883242757873.a n : ℤ) = A030130 (n + 1)

end A030130

/-! ## A030130.P1753232542982534561

`∩[A003754(n+1), A087118(n+1)]`
-/

namespace A030130.P1753232542982534561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030130.P1753232542982534561

namespace A030130

/-- `∩[A003754(n+1), A087118(n+1)]` -/
def P1753232542982534561.Spec : Prop :=
  ∀ n, (P1753232542982534561.a n : ℤ) = A030130 (n + 1)

end A030130

/-! ## A030130.P10965532326142157043

`record[A334076(n)+2*n]`
-/

namespace A030130.P10965532326142157043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334076 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030130.P10965532326142157043

namespace A030130

/-- `record[A334076(n)+2*n]` -/
def P10965532326142157043.Spec : Prop :=
  ∀ n, P10965532326142157043.a n = A030130 (n + 1)

end A030130

/-! ## A030130.P8152913392563200440

`lt[xor(n, A209639(n)), 2]`
-/

namespace A030130.P8152913392563200440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A209639 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A030130.P8152913392563200440

namespace A030130

/-- `lt[xor(n, A209639(n)), 2]` -/
def P8152913392563200440.Spec : Prop :=
  ∀ n, (P8152913392563200440.a n : ℤ) = A030130 (n + 1)

end A030130

/-! ## A030130.P1514479995566922624

`A059009(A089633(n))`
-/

namespace A030130.P1514479995566922624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 (A089633 n).toNat

end

end A030130.P1514479995566922624

namespace A030130

/-- `A059009(A089633(n))` -/
def P1514479995566922624.Spec : Prop :=
  ∀ n, P1514479995566922624.a n = A030130 (n + 1)

end A030130

/-! ## A030130.P13248098972431639209

`lt[A090996(n), A090996(n+1)]`
-/

namespace A030130.P13248098972431639209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030130.P13248098972431639209

namespace A030130

/-- `lt[A090996(n), A090996(n+1)]` -/
def P13248098972431639209.Spec : Prop :=
  ∀ n, (P13248098972431639209.a n : ℤ) = A030130 (n + 1)

end A030130

/-!
# A030131: Site percolation series for hexagonal net.

The programs for A030131, there is no canonical definition to state claims against.
-/

/-! ## A030131.P14495397304647414789

`A344180(n)-A098429(A073506(n+1))`
-/

namespace A030131.P14495397304647414789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n - A098429 (A073506 (n + 1)).toNat

end

end A030131.P14495397304647414789

/-!
# A030132: Digital root of Fibonacci(n).

The programs for A030132, the canonical program `A030132.P9012282044205346454` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030132 has offset 0).

The definition of A030132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030132.P9012282044205346454

`dr(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030132

/-- `dr(a(n-1)+a(n-2))` -/
def P9012282044205346454.Spec : Prop :=
  ∀ n, (P9012282044205346454.a n : ℤ) = A030132 n

theorem P9012282044205346454.correct : P9012282044205346454.Spec := by
  intro n
  simp only [A030132]

end A030132

/-!
# A030133: a(n+1) is the sum of digits of (a(n) + a(n-1)).

The programs for A030133, the canonical program `A030133.P6387364624159024520` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030133 has offset 0).

The definition of A030133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030133.P6387364624159024520

`dr(a(n-1)+a(n-2))` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030133

/-- `dr(a(n-1)+a(n-2))` -/
def P6387364624159024520.Spec : Prop :=
  ∀ n, (P6387364624159024520.a n : ℤ) = A030133 n

theorem P6387364624159024520.correct : P6387364624159024520.Spec := by
  intro n
  simp only [A030133]

end A030133

/-!
# A030134: a(n)^2 has last digit equal to the sum of the other digits.

The programs for A030134, there is no canonical definition to state claims against.
-/

/-! ## A030134.P16784202789945581012

`sqrt(A054259(n+1))`
-/

namespace A030134.P16784202789945581012
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A054259 (n + 1) : ℝ)

end

end A030134.P16784202789945581012

/-! ## A030134.P3381540937646180629

`or(root(A054259(n+1), 2), A000035(n))`
-/

namespace A030134.P3381540937646180629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A054259 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000035 n)

end

end A030134.P3381540937646180629

/-! ## A030134.P10819993887916821254

`or(root(A054259(n+1), 2), A021913(n))`
-/

namespace A030134.P10819993887916821254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A054259 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A021913 n)

end

end A030134.P10819993887916821254

/-! ## A030134.P4796627312328568445

`or(root(A054259(n+1), 2), A088157(n))`
-/

namespace A030134.P4796627312328568445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A054259 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A088157 n)

end

end A030134.P4796627312328568445

/-!
# A030136: Number of triangular n-ominoes on the icosahedron.

The programs for A030136, there is no canonical definition to state claims against.
-/

/-! ## A030136.P11782140697784167418

`A138234(A255064(n+1))`
-/

namespace A030136.P11782140697784167418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138234 (A255064 (n + 1)).toNat

end

end A030136.P11782140697784167418

/-! ## A030136.P18016279061088980982

`A104305(A354539(n+1))`
-/

namespace A030136.P18016279061088980982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104305 (A354539 (n + 1)).toNat

end

end A030136.P18016279061088980982

/-! ## A030136.P2831618682275398718

`A103128(A005162(n+1)-n)`
-/

namespace A030136.P2831618682275398718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A005162 (n + 1) - (n : ℤ)).toNat

end

end A030136.P2831618682275398718

/-! ## A030136.P15387568220977828492

`A010101(n+1)-∑[A025435(n)]`
-/

namespace A030136.P15387568220977828492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010101 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030136.P15387568220977828492

/-! ## A030136.P10706816623165552637

`A347233(n+1)+A091328(n+1)`
-/

namespace A030136.P10706816623165552637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347233 (n + 1) + A091328 (n + 1)

end

end A030136.P10706816623165552637

/-!
# A030139: a(n+1) = sum of digits of (a(n) + a(n-1)).

The programs for A030139, the canonical program `A030139.P7803319099297458089` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030139 has offset 0).

The definition of A030139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030139.P7803319099297458089

`dr(a(n-1)+a(n-2))` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030139

/-- `dr(a(n-1)+a(n-2))` -/
def P7803319099297458089.Spec : Prop :=
  ∀ n, (P7803319099297458089.a n : ℤ) = A030139 n

theorem P7803319099297458089.correct : P7803319099297458089.Spec := by
  intro n
  simp only [A030139]

end A030139

/-!
# A030140: The nonsquares squared.

The programs for A030140, the canonical program `A030140.P325291231154129228` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030140 has offset 1).

The definition of A030140 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030140.P325291231154129228

`(n+1+floor(1/2+sqrt(n+1)))²`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030140

/-- `(n+1+floor(1/2+sqrt(n+1)))²` -/
def P325291231154129228.Spec : Prop :=
  ∀ n, P325291231154129228.a n = A030140 (n + 1)

theorem P325291231154129228.correct : P325291231154129228.Spec := by
  intro n
  simp only [A030140, Nat.add_sub_cancel]

end A030140

/-! ## A030140.P13250321624294753103

`comp[A000290(n)]^2`
-/

namespace A030140.P13250321624294753103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A030140.P13250321624294753103

namespace A030140

/-- `comp[A000290(n)]^2` -/
def P13250321624294753103.Spec : Prop :=
  ∀ n, (P13250321624294753103.a n : ℤ) = A030140 (n + 1)

end A030140

/-! ## A030140.P14449403686349219933

`comp[A008794(n)]^2`
-/

namespace A030140.P14449403686349219933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A030140.P14449403686349219933

namespace A030140

/-- `comp[A008794(n)]^2` -/
def P14449403686349219933.Spec : Prop :=
  ∀ n, (P14449403686349219933.a n : ℤ) = A030140 (n + 1)

end A030140

/-! ## A030140.P13386263389659297684

`comp[A018796(n)]^2`
-/

namespace A030140.P13386263389659297684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A030140.P13386263389659297684

namespace A030140

/-- `comp[A018796(n)]^2` -/
def P13386263389659297684.Spec : Prop :=
  ∀ n, (P13386263389659297684.a n : ℤ) = A030140 (n + 1)

end A030140

/-! ## A030140.P5021440320359812270

`comp[A168077(n)]^2`
-/

namespace A030140.P5021440320359812270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A030140.P5021440320359812270

namespace A030140

/-- `comp[A168077(n)]^2` -/
def P5021440320359812270.Spec : Prop :=
  ∀ n, (P5021440320359812270.a n : ℤ) = A030140 (n + 1)

end A030140

/-! ## A030140.P13789916858022974347

`comp[A181318(n)]^2`
-/

namespace A030140.P13789916858022974347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181318 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A030140.P13789916858022974347

namespace A030140

/-- `comp[A181318(n)]^2` -/
def P13789916858022974347.Spec : Prop :=
  ∀ n, (P13789916858022974347.a n : ℤ) = A030140 (n + 1)

end A030140

/-! ## A030140.P4882693016734722686

`A179125(n+1)^(2/3)`
-/

namespace A030140.P4882693016734722686
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A179125 (n + 1) : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A030140.P4882693016734722686

namespace A030140

/-- `A179125(n+1)^(2/3)` -/
def P4882693016734722686.Spec : Prop :=
  ∀ n, P4882693016734722686.a n = (A030140 (n + 1) : ℝ)

end A030140

/-! ## A030140.P17878857101005141001

`A000037(n+1)*A000037(n+1)`
-/

namespace A030140.P17878857101005141001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1) * A000037 (n + 1)

end

end A030140.P17878857101005141001

namespace A030140

/-- `A000037(n+1)*A000037(n+1)` -/
def P17878857101005141001.Spec : Prop :=
  ∀ n, P17878857101005141001.a n = A030140 (n + 1)

end A030140

/-! ## A030140.P7233435701423822063

`A179125(n+1)/A000037(n+1)`
-/

namespace A030140.P7233435701423822063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179125 (n + 1) : ℚ) / (A000037 (n + 1) : ℚ)

end

end A030140.P7233435701423822063

namespace A030140

/-- `A179125(n+1)/A000037(n+1)` -/
def P7233435701423822063.Spec : Prop :=
  ∀ n, P7233435701423822063.a n = (A030140 (n + 1) : ℚ)

end A030140

/-! ## A030140.P12084495093866674245

`comp[A048760(n)]^2`
-/

namespace A030140.P12084495093866674245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A030140.P12084495093866674245

namespace A030140

/-- `comp[A048760(n)]^2` -/
def P12084495093866674245.Spec : Prop :=
  ∀ n, (P12084495093866674245.a n : ℤ) = A030140 (n + 1)

end A030140

/-! ## A030140.P7170507719079390644

`comp[A053187(n)]^2`
-/

namespace A030140.P7170507719079390644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053187 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A030140.P7170507719079390644

namespace A030140

/-- `comp[A053187(n)]^2` -/
def P7170507719079390644.Spec : Prop :=
  ∀ n, (P7170507719079390644.a n : ℤ) = A030140 (n + 1)

end A030140

/-! ## A030140.P11451657471600766606

`record[A361253(n+2)²]`
-/

namespace A030140.P11451657471600766606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361253 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030140.P11451657471600766606

namespace A030140

/-- `record[A361253(n+2)²]` -/
def P11451657471600766606.Spec : Prop :=
  ∀ n, P11451657471600766606.a n = A030140 (n + 1)

end A030140

/-! ## A030140.P2085548371241919290

`A000290(comp[n*(n+2)]+1)`
-/

namespace A030140.P2085548371241919290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A030140.P2085548371241919290

namespace A030140

/-- `A000290(comp[n*(n+2)]+1)` -/
def P2085548371241919290.Spec : Prop :=
  ∀ n, P2085548371241919290.a n = A030140 (n + 1)

end A030140

/-! ## A030140.P17854937432422423897

`A005563(comp[n*(n+2)])+1`
-/

namespace A030140.P17854937432422423897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1

end

end A030140.P17854937432422423897

namespace A030140

/-- `A005563(comp[n*(n+2)])+1` -/
def P17854937432422423897.Spec : Prop :=
  ∀ n, P17854937432422423897.a n = A030140 (n + 1)

end A030140

/-! ## A030140.P14779149910700867253

`A002522(A183299(n+1)+1)-1`
-/

namespace A030140.P14779149910700867253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A183299 (n + 1) + 1).toNat - 1

end

end A030140.P14779149910700867253

namespace A030140

/-- `A002522(A183299(n+1)+1)-1` -/
def P14779149910700867253.Spec : Prop :=
  ∀ n, P14779149910700867253.a n = A030140 (n + 1)

end A030140

/-! ## A030140.P15692943815892535864

`A008865(A183299(n+1)+1)+2`
-/

namespace A030140.P15692943815892535864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008865 (A183299 (n + 1) + 1).toNat + 2

end

end A030140.P15692943815892535864

namespace A030140

/-- `A008865(A183299(n+1)+1)+2` -/
def P15692943815892535864.Spec : Prop :=
  ∀ n, P15692943815892535864.a n = A030140 (n + 1)

end A030140

/-! ## A030140.P5349032371701268417

`A002378(A000037(n+1)-1)+A000037(n+1)`
-/

namespace A030140.P5349032371701268417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A000037 (n + 1) - 1).toNat + A000037 (n + 1)

end

end A030140.P5349032371701268417

namespace A030140

/-- `A002378(A000037(n+1)-1)+A000037(n+1)` -/
def P5349032371701268417.Spec : Prop :=
  ∀ n, P5349032371701268417.a n = A030140 (n + 1)

end A030140

/-! ## A030140.P6826155373206197858

`record[A255437(n+2)²]`
-/

namespace A030140.P6826155373206197858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255437 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030140.P6826155373206197858

namespace A030140

/-- `record[A255437(n+2)²]` -/
def P6826155373206197858.Spec : Prop :=
  ∀ n, P6826155373206197858.a n = A030140 (n + 1)

end A030140

/-! ## A030140.P17809841746711595421

`A000463(A348005(n+1))`
-/

namespace A030140.P17809841746711595421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A348005 (n + 1)).toNat

end

end A030140.P17809841746711595421

namespace A030140

/-- `A000463(A348005(n+1))` -/
def P17809841746711595421.Spec : Prop :=
  ∀ n, P17809841746711595421.a n = A030140 (n + 1)

end A030140

/-!
# A030141: Numbers in which parity of the decimal digits alternates.

The programs for A030141, there is no canonical definition to state claims against.
-/

/-! ## A030141.P16037229282860547295

`comp[A228709(n+1)]`
-/

namespace A030141.P16037229282860547295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A030141.P16037229282860547295

/-! ## A030141.P11260616250768544570

`A228723(a(n-1)+1)` with `a(0)=0`
-/

namespace A030141.P11260616250768544570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A228723 (a (n - 1) + 1).toNat

end

end A030141.P11260616250768544570

/-! ## A030141.P6048392252750927120

`record[A228723(and(n, A228723(n)))]`
-/

namespace A030141.P6048392252750927120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228723 (Int.land (n : ℤ) (A228723 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030141.P6048392252750927120

/-! ## A030141.P8918055923302077364

`record[A228723(2*n-A228723(n))]`
-/

namespace A030141.P8918055923302077364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228723 ((2 * n : ℤ) - A228723 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030141.P8918055923302077364

/-! ## A030141.P7734136861398130702

`record[A228723(n)%A215539(n+1)]`
-/

namespace A030141.P7734136861398130702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228723 n) (A215539 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030141.P7734136861398130702

/-! ## A030141.P5007390746519554959

`record[A228723(n-(A228723(n)-n))]`
-/

namespace A030141.P5007390746519554959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228723 ((n : ℤ) - (A228723 n - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030141.P5007390746519554959

/-! ## A030141.P16458103491369417376

`record[n*A228710(n)]`
-/

namespace A030141.P16458103491369417376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A228710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030141.P16458103491369417376

/-! ## A030141.P7570290405534258165

`record[gcd(n, A228722(n))]`
-/

namespace A030141.P7570290405534258165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A228722 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030141.P7570290405534258165

/-! ## A030141.P11106841227858273616

`filter[A118763(n), A228710(#)]`
-/

namespace A030141.P11106841227858273616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A030141.P11106841227858273616

/-! ## A030141.P16957206503417473697

`filter[A398280(n), A228710(#)]`
-/

namespace A030141.P16957206503417473697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A030141.P16957206503417473697

/-! ## A030141.P11746096555454792710

`eq[n, A228722(A321801(n))]`
-/

namespace A030141.P11746096555454792710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228722 (A321801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030141.P11746096555454792710

/-! ## A030141.P29193174475071706

`eq[A228722(n), A321802(n)]`
-/

namespace A030141.P29193174475071706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228722 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030141.P29193174475071706

/-! ## A030141.P11389057090616470639

`eq[A228723(n), A321801(n)]`
-/

namespace A030141.P11389057090616470639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228723 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030141.P11389057090616470639

/-! ## A030141.P14398722081196695486

`eq[A228723(n), A321802(n)]`
-/

namespace A030141.P14398722081196695486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228723 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030141.P14398722081196695486

/-! ## A030141.P3126123639392513865

`eq[n, A228722(A337864(n))]`
-/

namespace A030141.P3126123639392513865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228722 (A337864 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030141.P3126123639392513865

/-! ## A030141.P11761573442235798575

`eq[n, A228722(A351868(n))]`
-/

namespace A030141.P11761573442235798575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228722 (A351868 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030141.P11761573442235798575

/-! ## A030141.P1352304460017598225

`filter[A043096(n+1), A228710(#)]`
-/

namespace A030141.P1352304460017598225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A030141.P1352304460017598225

/-! ## A030141.P4754090965397001713

`filter[A241157(n+1), A228710(#)]`
-/

namespace A030141.P4754090965397001713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A030141.P4754090965397001713

/-! ## A030141.P2942627263867200567

`filter[A241158(n+1), A228710(#)]`
-/

namespace A030141.P2942627263867200567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A030141.P2942627263867200567

/-! ## A030141.P7274696881580255081

`lt[1, A045918(n)*A228710(n)]`
-/

namespace A030141.P7274696881580255081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n * A228710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A030141.P7274696881580255081

/-!
# A030142: Odd numbers in which parity of digits alternates.

The programs for A030142, there is no canonical definition to state claims against.
-/

/-! ## A030142.P18085106457916163786

`∩[2*n+1, A030141(n+1)]`
-/

namespace A030142.P18085106457916163786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030142.P18085106457916163786

/-! ## A030142.P12186394228943778023

`∩[A030141(n+1), A060747(n)]`
-/

namespace A030142.P12186394228943778023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030142.P12186394228943778023

/-! ## A030142.P14626632781318656609

`∩[A030141(n+1), A004273(n+1)]`
-/

namespace A030142.P14626632781318656609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030142.P14626632781318656609

/-! ## A030142.P15501605702011169523

`lt[xor(n, A228710(n)), n]`
-/

namespace A030142.P15501605702011169523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A228710 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A030142.P15501605702011169523

/-! ## A030142.P10316334950251926987

`filter[2*n+1, A228710(#)]`
-/

namespace A030142.P10316334950251926987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j) = 1) n)

end

end A030142.P10316334950251926987

/-! ## A030142.P11994318974370979278

`eq[or(1, n), A228723(lcm(16, n)/16)]`
-/

namespace A030142.P11994318974370979278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228723 (SequenceMachineLib.roundAway ((Nat.lcm 16 n : ℚ) / 16)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030142.P11994318974370979278

/-! ## A030142.P10344633303778275802

`eq[n, A228722(A093178(n))]`
-/

namespace A030142.P10344633303778275802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228722 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030142.P10344633303778275802

/-! ## A030142.P10354577697102120942

`eq[A093178(n), A228723(n)]`
-/

namespace A030142.P10354577697102120942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228723 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030142.P10354577697102120942

/-! ## A030142.P9744756818715310565

`eq[n, A228722(A215495(n))]`
-/

namespace A030142.P9744756818715310565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228722 (A215495 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030142.P9744756818715310565

/-! ## A030142.P667422696026273253

`eq[A215495(n), A228723(n)]`
-/

namespace A030142.P667422696026273253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215495 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228723 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030142.P667422696026273253

/-! ## A030142.P11215191520951145660

`eq[n, A225058(A228722(n))]`
-/

namespace A030142.P11215191520951145660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225058 (A228722 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030142.P11215191520951145660

/-! ## A030142.P4543104558555231151

`eq[A225058(n), A228723(n)]`
-/

namespace A030142.P4543104558555231151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225058 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228723 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030142.P4543104558555231151

/-! ## A030142.P10473318231747342748

`eq[A228722(n), A257088(n)]`
-/

namespace A030142.P10473318231747342748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228722 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030142.P10473318231747342748

/-! ## A030142.P17764109925297657091

`eq[A228723(n), A257088(n)]`
-/

namespace A030142.P17764109925297657091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228723 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030142.P17764109925297657091

/-! ## A030142.P11434772210200921770

`eq[A228722(n), A257143(n)]`
-/

namespace A030142.P11434772210200921770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228722 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257143 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030142.P11434772210200921770

/-! ## A030142.P7495664293863749099

`filter[A030141(n+1), A000035(#)]`
-/

namespace A030142.P7495664293863749099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A030142.P7495664293863749099

/-! ## A030142.P14061199024351068404

`eq[A019303(n+1), A228710(n)]`
-/

namespace A030142.P14061199024351068404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030142.P14061199024351068404

/-! ## A030142.P3705250832289070762

`eq[A019304(n+1), A228710(n)]`
-/

namespace A030142.P3705250832289070762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030142.P3705250832289070762

/-! ## A030142.P9649792706277631957

`eq[A028920(n+1), A228710(n)]`
-/

namespace A030142.P9649792706277631957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030142.P9649792706277631957

/-! ## A030142.P15195656717098212374

`eq[A052552(n), A228710(n)]`
-/

namespace A030142.P15195656717098212374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030142.P15195656717098212374

/-!
# A030143: Even numbers in which parity of digits alternates.

The programs for A030143, there is no canonical definition to state claims against.
-/

/-! ## A030143.P9560294257626768172

`∩[2*n, A030141(n+1)]`
-/

namespace A030143.P9560294257626768172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030143.P9560294257626768172

/-! ## A030143.P12331566923297772483

`filter[2*n, A228710(#)]`
-/

namespace A030143.P12331566923297772483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j) = 1) n)

end

end A030143.P12331566923297772483

/-! ## A030143.P212857938388329160

`eq[lcm(2, n), A228723(n)]`
-/

namespace A030143.P212857938388329160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228723 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030143.P212857938388329160

/-! ## A030143.P11106651603995791424

`lt[n, xor(n, A228710(n))]`
-/

namespace A030143.P11106651603995791424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A228710 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A030143.P11106651603995791424

/-! ## A030143.P17071735642808670356

`eq[A019303(n), A228710(n)]`
-/

namespace A030143.P17071735642808670356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019303 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030143.P17071735642808670356

/-! ## A030143.P1184620059259791068

`eq[A019304(n), A228710(n)]`
-/

namespace A030143.P1184620059259791068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019304 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030143.P1184620059259791068

/-! ## A030143.P13644487889407360355

`eq[A028920(n), A228710(n)]`
-/

namespace A030143.P13644487889407360355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030143.P13644487889407360355

/-! ## A030143.P10431386176220162455

`eq[n, A038608(A228722(n))]`
-/

namespace A030143.P10431386176220162455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A228722 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030143.P10431386176220162455

/-! ## A030143.P15120828493146254547

`eq[n, A038608(A228723(n))]`
-/

namespace A030143.P15120828493146254547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A228723 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030143.P15120828493146254547

/-! ## A030143.P2623859300084827931

`eq[A053381(n), A228710(n)]`
-/

namespace A030143.P2623859300084827931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053381 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030143.P2623859300084827931

/-! ## A030143.P7871453178538956826

`eq[A056753(n), A228710(n)]`
-/

namespace A030143.P7871453178538956826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056753 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030143.P7871453178538956826

/-! ## A030143.P18295577223223687194

`eq[A059029(n), A228722(n)]`
-/

namespace A030143.P18295577223223687194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228722 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030143.P18295577223223687194

/-! ## A030143.P11113966681864077158

`eq[A059029(n), A228723(n)]`
-/

namespace A030143.P11113966681864077158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228723 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030143.P11113966681864077158

/-! ## A030143.P12893060896184965738

`eq[A066104(n), A228722(n)]`
-/

namespace A030143.P12893060896184965738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066104 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228722 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030143.P12893060896184965738

/-! ## A030143.P7034461375221836623

`eq[A109043(n), A228722(n)]`
-/

namespace A030143.P7034461375221836623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228722 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030143.P7034461375221836623

/-! ## A030143.P10386198775193212005

`eq[A109043(n), A228723(n)]`
-/

namespace A030143.P10386198775193212005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228723 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030143.P10386198775193212005

/-! ## A030143.P4285736315509116203

`eq[A114567(n), A228710(n)]`
-/

namespace A030143.P4285736315509116203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114567 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030143.P4285736315509116203

/-! ## A030143.P3603723803969216448

`filter[A030141(n+1), A059841(#)]`
-/

namespace A030143.P3603723803969216448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A030143.P3603723803969216448

/-! ## A030143.P10139222422713680619

`eq[A001511(n+1), A228710(n)]`
-/

namespace A030143.P10139222422713680619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030143.P10139222422713680619

/-! ## A030143.P1689409691760802816

`eq[A003484(n+1), A228710(n)]`
-/

namespace A030143.P1689409691760802816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030143.P1689409691760802816

/-!
# A030144: Primes in which parity of digits alternates.

The programs for A030144, there is no canonical definition to state claims against.
-/

/-! ## A030144.P1019923709789226054

`p?[floor(A030142(n+1)+acot(n))]`
-/

namespace A030144.P1019923709789226054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030142 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030144.P1019923709789226054

/-! ## A030144.P13070235497614239031

`p?[A030142(n+1)+A000007(n)]`
-/

namespace A030144.P13070235497614239031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030142 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030144.P13070235497614239031

/-! ## A030144.P855879814133911167

`p?[A030141(n+1)]`
-/

namespace A030144.P855879814133911167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030144.P855879814133911167

/-! ## A030144.P13031746455117098299

`record[A006530(A030141(n+3))]`
-/

namespace A030144.P13031746455117098299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A030141 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030144.P13031746455117098299

/-! ## A030144.P1313983172197243614

`∩[A000040(n+1), A030141(n+1)]`
-/

namespace A030144.P1313983172197243614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030144.P1313983172197243614

/-! ## A030144.P12039970439746460426

`∩[A030141(n+1), A050757(n+1)]`
-/

namespace A030144.P12039970439746460426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030144.P12039970439746460426

/-! ## A030144.P11951968677784613124

`∩[A030141(n+1), A076805(n+1)]`
-/

namespace A030144.P11951968677784613124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030144.P11951968677784613124

/-! ## A030144.P12677132347503929750

`∩[A030141(n+1), A240920(n+1)]`
-/

namespace A030144.P12677132347503929750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030144.P12677132347503929750

/-! ## A030144.P15488094090075724561

`record[A006530(2*A030142(n+1))]`
-/

namespace A030144.P15488094090075724561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A030142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030144.P15488094090075724561

/-! ## A030144.P15079618862688931301

`p?[n*A228710(n)]`
-/

namespace A030144.P15079618862688931301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A228710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030144.P15079618862688931301

/-! ## A030144.P8930816061529696708

`eq[A003415(n), A228710(n)]`
-/

namespace A030144.P8930816061529696708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030144.P8930816061529696708

/-! ## A030144.P15551463911345598419

`eq[A018783(n), A228710(n)]`
-/

namespace A030144.P15551463911345598419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030144.P15551463911345598419

/-! ## A030144.P11361950641569692548

`eq[A032741(n), A228710(n)]`
-/

namespace A030144.P11361950641569692548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030144.P11361950641569692548

/-! ## A030144.P12225280060529505343

`eq[n, A062584(A228722(n))]`
-/

namespace A030144.P12225280060529505343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A228722 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030144.P12225280060529505343

/-! ## A030144.P16650097806593632041

`eq[n, A062584(A228723(n))]`
-/

namespace A030144.P16650097806593632041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A228723 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030144.P16650097806593632041

/-! ## A030144.P6111270536665973525

`eq[A064502(n), A228722(n)]`
-/

namespace A030144.P6111270536665973525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228722 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030144.P6111270536665973525

/-! ## A030144.P1990897404351864866

`eq[A064502(n), A228723(n)]`
-/

namespace A030144.P1990897404351864866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228723 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030144.P1990897404351864866

/-! ## A030144.P5768282029044239242

`eq[A084413(n), A228722(n)]`
-/

namespace A030144.P5768282029044239242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228722 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030144.P5768282029044239242

/-! ## A030144.P18044989206404423009

`eq[A084413(n), A228723(n)]`
-/

namespace A030144.P18044989206404423009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228723 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030144.P18044989206404423009

/-! ## A030144.P390637361556653876

`eq[A175126(n), A228710(n)]`
-/

namespace A030144.P390637361556653876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030144.P390637361556653876

/-!
# A030145: Primes such that in p^2 the parity of digits alternates.

The programs for A030145, there is no canonical definition to state claims against.
-/

/-! ## A030145.P13677940333433349151

`sqrt(A030146(n+1))`
-/

namespace A030145.P13677940333433349151
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030146 (n + 1) : ℝ)

end

end A030145.P13677940333433349151

/-! ## A030145.P17776751079980380322

`root(A030146(n+1), A001316(A001316(n)))`
-/

namespace A030145.P17776751079980380322
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030146 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A030145.P17776751079980380322

/-! ## A030145.P12573798209995952028

`A030146(n+1)^(1/A001222(A001358(n+1)))`
-/

namespace A030145.P12573798209995952028
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030146 (n + 1) : ℝ) ^ (1 / (A001222 (A001358 (n + 1)).toNat : ℚ) : ℝ)

end

end A030145.P12573798209995952028

/-! ## A030145.P9651173221639040693

`root(A030146(n+1), A133265(A133265(n)))`
-/

namespace A030145.P9651173221639040693
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030146 (n + 1) : ℝ) ^ (1 / (A133265 (A133265 n).toNat : ℝ))

end

end A030145.P9651173221639040693

/-! ## A030145.P8689273641747553128

`A030146(n+1)^(A005843(n+6)/A008586(n+6))`
-/

namespace A030145.P8689273641747553128
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030146 (n + 1) : ℝ) ^ ((A005843 (n + 6) : ℚ) / (A008586 (n + 6) : ℚ) : ℝ)

end

end A030145.P8689273641747553128

/-! ## A030145.P11900464719209825405

`p?[A030151(n+1)]`
-/

namespace A030145.P11900464719209825405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030145.P11900464719209825405

/-! ## A030145.P8042607817535769866

`record[A020639(A030151(n+3))]`
-/

namespace A030145.P8042607817535769866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A030151 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030145.P8042607817535769866

/-! ## A030145.P2739885093909173497

`filter[A030151(n+2), A010051(#)]`
-/

namespace A030145.P2739885093909173497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030151 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A030145.P2739885093909173497

/-! ## A030145.P10595801391700636024

`∩[A000040(n+1), A030151(n+1)]`
-/

namespace A030145.P10595801391700636024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030145.P10595801391700636024

/-!
# A030146: Squares-of-primes in which no two adjacent digits have the same parity.

The programs for A030146, there is no canonical definition to state claims against.
-/

/-! ## A030146.P2880204267099851973

`A030145(n+1)²`
-/

namespace A030146.P2880204267099851973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030145 (n + 1) ^ 2

end

end A030146.P2880204267099851973

/-! ## A030146.P5936233401633182055

`A030145(2*(n+1)-(n+1))^2`
-/

namespace A030146.P5936233401633182055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030145 (2 * (n + 1) - (n + 1)) ^ 2

end

end A030146.P5936233401633182055

/-! ## A030146.P11804747459971964686

`A030145(n+1)*A030145(-xor(n, -1))`
-/

namespace A030146.P11804747459971964686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030145 (n + 1) * A030145 (-Int.xor (n : ℤ) (-1)).toNat

end

end A030146.P11804747459971964686

/-! ## A030146.P17801299878556830716

`A030145(A000027(n+1))*A030145(n+1)`
-/

namespace A030146.P17801299878556830716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030145 (A000027 (n + 1)).toNat * A030145 (n + 1)

end

end A030146.P17801299878556830716

/-! ## A030146.P16056635382811304143

`or(A030145(n+1)*A030145(n+1), A021913(n))`
-/

namespace A030146.P16056635382811304143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030145 (n + 1) * A030145 (n + 1)) (A021913 n)

end

end A030146.P16056635382811304143

/-! ## A030146.P5195298174303178815

`A030145(n+1)*A030145(A008619(2*n))`
-/

namespace A030146.P5195298174303178815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030145 (n + 1) * A030145 (A008619 (2 * n)).toNat

end

end A030146.P5195298174303178815

/-! ## A030146.P5265826889083258503

`record[A030145(A152271(n))²]`
-/

namespace A030146.P5265826889083258503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030145 (A152271 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030146.P5265826889083258503

/-! ## A030146.P17030748392048720512

`record[A030145(A152271(n))]*A030145(n+1)`
-/

namespace A030146.P17030748392048720512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030145 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A030145 (n + 1)

end

end A030146.P17030748392048720512

/-! ## A030146.P14154770330589333013

`A030145(n+1)%A082444(n+1)*A030145(n+1)`
-/

namespace A030146.P14154770330589333013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030145 (n + 1)) (A082444 (n + 1)) * A030145 (n + 1)

end

end A030146.P14154770330589333013

/-! ## A030146.P9338788624295344823

`p?[A030151(n+1)]²`
-/

namespace A030146.P9338788624295344823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A030146.P9338788624295344823

/-! ## A030146.P3786976108907985325

`p?[A030151(n+2)]^2`
-/

namespace A030146.P3786976108907985325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030151 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A030146.P3786976108907985325

/-! ## A030146.P7376789865694948008

`p?[A030151(n+1)]*A030145(n+1)`
-/

namespace A030146.P7376789865694948008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A030145 (n + 1)

end

end A030146.P7376789865694948008

/-!
# A030147: Palindromes in which parity of digits alternates.

The programs for A030147, there is no canonical definition to state claims against.
-/

/-! ## A030147.P4068665937201133791

`∪[A030148(n+1), A030149(n+1)]`
-/

namespace A030147.P4068665937201133791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A030147.P4068665937201133791

/-! ## A030147.P13498053305072533042

`∩[A002113(n+1), A030141(n+1)]`
-/

namespace A030147.P13498053305072533042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030147.P13498053305072533042

/-! ## A030147.P8261738690177582311

`∩[A030141(n+1), A050783(n+1)]`
-/

namespace A030147.P8261738690177582311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030147.P8261738690177582311

/-! ## A030147.P17838534551902796458

`filter[A056142(n), A228710(#)]`
-/

namespace A030147.P17838534551902796458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A030147.P17838534551902796458

/-! ## A030147.P4744218883935091650

`eq[n, A228722(A004086(n))]`
-/

namespace A030147.P4744218883935091650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228722 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030147.P4744218883935091650

/-! ## A030147.P5781163662965319535

`eq[n, A004086(A228723(n))]`
-/

namespace A030147.P5781163662965319535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A228723 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030147.P5781163662965319535

/-! ## A030147.P7629090225272615918

`eq[n, A020485(A228722(n))]`
-/

namespace A030147.P7629090225272615918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (A228722 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030147.P7629090225272615918

/-! ## A030147.P4528166311400021839

`eq[A020485(n), A228723(n)]`
-/

namespace A030147.P4528166311400021839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228723 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030147.P4528166311400021839

/-! ## A030147.P7397972367131960907

`eq[n, A228722(A047813(n))]`
-/

namespace A030147.P7397972367131960907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228722 (A047813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030147.P7397972367131960907

/-! ## A030147.P1338208140291373518

`eq[A047813(n), A228723(n)]`
-/

namespace A030147.P1338208140291373518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228723 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030147.P1338208140291373518

/-!
# A030148: Odd palindromes in which parity of digits alternates.

The programs for A030148, there is no canonical definition to state claims against.
-/

/-! ## A030148.P11358999549452044041

`A030147(eq[1, A030147(n+1)%2]+1)`
-/

namespace A030148.P11358999549452044041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030147 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030147 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A030148.P11358999549452044041

/-! ## A030148.P777636449327336680

`A030147(eq[1, and(1, A030147(n+1))]+1)`
-/

namespace A030148.P777636449327336680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A030147 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030147 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A030148.P777636449327336680

/-! ## A030148.P16485828314072631149

`A056525(A376692(n+1))`
-/

namespace A030148.P16485828314072631149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A376692 (n + 1)).toNat

end

end A030148.P16485828314072631149

/-! ## A030148.P8364948792434242422

`∩[A029950(n+1), A030147(n+1)]`
-/

namespace A030148.P8364948792434242422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030148.P8364948792434242422

/-! ## A030148.P6036112234423289901

`record[A000265(A030147(n+2))]`
-/

namespace A030148.P6036112234423289901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A030147 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030148.P6036112234423289901

/-! ## A030148.P6510390139531192179

`∩[A002113(n+1), A030142(n+1)]`
-/

namespace A030148.P6510390139531192179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030148.P6510390139531192179

/-! ## A030148.P6696997708519337337

`∩[A029950(n+1), A030141(n+1)]`
-/

namespace A030148.P6696997708519337337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030148.P6696997708519337337

/-! ## A030148.P17830872922754344770

`∩[A029950(n+1), A030142(n+1)]`
-/

namespace A030148.P17830872922754344770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030148.P17830872922754344770

/-! ## A030148.P10535403180875665878

`∩[A030142(n+1), A030147(n+1)]`
-/

namespace A030148.P10535403180875665878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030148.P10535403180875665878

/-! ## A030148.P11699833791569543494

`∩[A030142(n+1), A050783(n+1)]`
-/

namespace A030148.P11699833791569543494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030148.P11699833791569543494

/-! ## A030148.P15672657165808432418

`∩[A030142(n+1), A056525(n+1)]`
-/

namespace A030148.P15672657165808432418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030148.P15672657165808432418

/-! ## A030148.P5204915682915690045

`∩[A030142(n+1), A061917(n+1)]`
-/

namespace A030148.P5204915682915690045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030148.P5204915682915690045

/-! ## A030148.P18092344302622778838

`∩[A030142(n+1), A092361(n+1)]`
-/

namespace A030148.P18092344302622778838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030148.P18092344302622778838

/-! ## A030148.P17929783458681103809

`∩[A376692(n+1), A002113(n+1)]`
-/

namespace A030148.P17929783458681103809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030148.P17929783458681103809

/-!
# A030149: Even palindromes in which parity of digits alternates.

The programs for A030149, there is no canonical definition to state claims against.
-/

/-! ## A030149.P17998161347698884417

`record[A030147(n+1)%or(1, A030147(n+1))]`
-/

namespace A030149.P17998161347698884417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030147 (n + 1)) (Int.lor 1 (A030147 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030149.P17998161347698884417

/-! ## A030149.P685792527419703394

`∩[A029951(n+1), A030147(n+1)]`
-/

namespace A030149.P685792527419703394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030149.P685792527419703394

/-! ## A030149.P2328000774708408719

`∩[2*n, A030147(n+1)]`
-/

namespace A030149.P2328000774708408719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030149.P2328000774708408719

/-! ## A030149.P15655505834321755054

`∩[A002113(n+1), A030143(n+1)]`
-/

namespace A030149.P15655505834321755054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030149.P15655505834321755054

/-! ## A030149.P18217755330391140623

`∩[A029951(n+1), A030141(n+1)]`
-/

namespace A030149.P18217755330391140623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030149.P18217755330391140623

/-! ## A030149.P14456381700470198454

`∩[A029951(n+1), A030143(n+1)]`
-/

namespace A030149.P14456381700470198454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030149.P14456381700470198454

/-! ## A030149.P9356113993679882485

`∩[A002113(n+1), A062285(n+1)]`
-/

namespace A030149.P9356113993679882485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030149.P9356113993679882485

/-! ## A030149.P10401938163676820085

`∩[A030143(n+1), A050783(n+1)]`
-/

namespace A030149.P10401938163676820085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030149.P10401938163676820085

/-! ## A030149.P5205687854463488109

`∩[A029951(n+1), A062285(n+1)]`
-/

namespace A030149.P5205687854463488109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030149.P5205687854463488109

/-! ## A030149.P8218897162982504104

`∩[A030147(n+1), A062285(n+1)]`
-/

namespace A030149.P8218897162982504104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030149.P8218897162982504104

/-! ## A030149.P4598361761916198245

`∩[A050783(n+1), A062285(n+1)]`
-/

namespace A030149.P4598361761916198245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030149.P4598361761916198245

/-! ## A030149.P5605409997426569242

`∩[A061917(n+1), A062285(n+1)]`
-/

namespace A030149.P5605409997426569242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030149.P5605409997426569242

/-! ## A030149.P15126822741873333709

`∩[A030143(n+1), A306273(n+1)]`
-/

namespace A030149.P15126822741873333709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030149.P15126822741873333709

/-!
# A030150: Palindromic primes in which parity of digits alternates.

The programs for A030150, there is no canonical definition to state claims against.
-/

/-! ## A030150.P9981991164383791059

`∩[A002385(n+1), A030147(n+1)]`
-/

namespace A030150.P9981991164383791059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030150.P9981991164383791059

/-! ## A030150.P9523731726862194460

`∩[A030147(n+1), A050784(n+1)]`
-/

namespace A030150.P9523731726862194460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030150.P9523731726862194460

/-! ## A030150.P75268846148950065

`∩[A030147(n+1), A072299(n+1)]`
-/

namespace A030150.P75268846148950065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030150.P75268846148950065

/-! ## A030150.P17470897131699218973

`∩[A030147(n+1), A232183(n+1)]`
-/

namespace A030150.P17470897131699218973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030150.P17470897131699218973

/-! ## A030150.P17930905123332902870

`∩[A002113(n+1), A030144(n+1)]`
-/

namespace A030150.P17930905123332902870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030150.P17930905123332902870

/-! ## A030150.P12785046875132195554

`∩[A002385(n+1), A030144(n+1)]`
-/

namespace A030150.P12785046875132195554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030150.P12785046875132195554

/-! ## A030150.P1478811090929299448

`∩[A030144(n+1), A030147(n+1)]`
-/

namespace A030150.P1478811090929299448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030150.P1478811090929299448

/-! ## A030150.P15628592773034058215

`∩[A030144(n+1), A050783(n+1)]`
-/

namespace A030150.P15628592773034058215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030150.P15628592773034058215

/-! ## A030150.P4939271394960458883

`∩[A030144(n+1), A050784(n+1)]`
-/

namespace A030150.P4939271394960458883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030150.P4939271394960458883

/-! ## A030150.P2403118955964725444

`∩[A030144(n+1), A056525(n+1)]`
-/

namespace A030150.P2403118955964725444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030150.P2403118955964725444

/-!
# A030151: Numbers k such that in k^2 the parity of digits alternates.

The programs for A030151, there is no canonical definition to state claims against.
-/

/-! ## A030151.P14054998884393958613

`sqrt(A030152(n+1))`
-/

namespace A030151.P14054998884393958613
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030152 (n + 1) : ℝ)

end

end A030151.P14054998884393958613

/-! ## A030151.P1129835367601637128

`A030152(n+1)^(A054977(n)/2)`
-/

namespace A030151.P1129835367601637128
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030152 (n + 1) : ℝ) ^ ((A054977 n : ℚ) / 2 : ℝ)

end

end A030151.P1129835367601637128

/-! ## A030151.P8215318394036549982

`∪[A030155(n+1), A030157(n+1)]`
-/

namespace A030151.P8215318394036549982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A030151.P8215318394036549982

/-! ## A030151.P15615122924822402278

`∑{p}[A001316(n), root(A030152(n+1), #)]`
-/

namespace A030151.P15615122924822402278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A030152 (n + 1) : ℝ) ^ (1 / (p : ℝ))

end

end A030151.P15615122924822402278

/-! ## A030151.P4559319528510577449

`A030152(n+1)^(1/A001222(A001358(n+1)))`
-/

namespace A030151.P4559319528510577449
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030152 (n + 1) : ℝ) ^ (1 / (A001222 (A001358 (n + 1)).toNat : ℚ) : ℝ)

end

end A030151.P4559319528510577449

/-! ## A030151.P12473087031181052483

`A030152(n+1)^(A100063(n)/2^A100063(n))`
-/

namespace A030151.P12473087031181052483
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030152 (n + 1) : ℝ) ^ ((A100063 n : ℚ) / (2 : ℚ) ^ (A100063 n : ℤ) : ℝ)

end

end A030151.P12473087031181052483

/-! ## A030151.P6490369509062012386

`A030152(n+1)^(A001359(n+1)/A108605(n+1))`
-/

namespace A030151.P6490369509062012386
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030152 (n + 1) : ℝ) ^ ((A001359 (n + 1) : ℚ) / (A108605 (n + 1) : ℚ) : ℝ)

end

end A030151.P6490369509062012386

/-! ## A030151.P13157446637023351638

`A030152(n+1)^(A001222(A030145(n+1))/2)`
-/

namespace A030151.P13157446637023351638
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030152 (n + 1) : ℝ) ^ ((A001222 (A030145 (n + 1)).toNat : ℚ) / 2 : ℝ)

end

end A030151.P13157446637023351638

/-! ## A030151.P2917663974917703632

`A030152(n+1)^(1/A001222(A001248(n+1)))`
-/

namespace A030151.P2917663974917703632
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030152 (n + 1) : ℝ) ^ (1 / (A001222 (A001248 (n + 1)).toNat : ℚ) : ℝ)

end

end A030151.P2917663974917703632

/-!
# A030152: Squares in which parity of digits alternates.

The programs for A030152, there is no canonical definition to state claims against.
-/

/-! ## A030152.P10815548128812249560

`A030151(n+1)²`
-/

namespace A030152.P10815548128812249560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030151 (n + 1) ^ 2

end

end A030152.P10815548128812249560

/-! ## A030152.P1439013171046861672

`A030151(n+1)^gcd(2, A000122(n))`
-/

namespace A030152.P1439013171046861672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030151 (n + 1) ^ Int.gcd 2 (A000122 n)

end

end A030152.P1439013171046861672

/-! ## A030152.P14359465853765252072

`∪[A030156(n+1), A030158(n+1)]`
-/

namespace A030152.P14359465853765252072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A030152.P14359465853765252072

/-! ## A030152.P13443850220324558394

`∪[A030155(n+1), A030157(n+1)]²`
-/

namespace A030152.P13443850220324558394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A030152.P13443850220324558394

/-! ## A030152.P13636824008733965927

`A030151(n+1)^A014963(A001316(n))`
-/

namespace A030152.P13636824008733965927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030151 (n + 1) : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A030152.P13636824008733965927

/-! ## A030152.P12861717511324233462

`A030151(n+1)^A000005(A205723(n+1))`
-/

namespace A030152.P12861717511324233462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030151 (n + 1) : ℚ) ^ (A000005 (A205723 (n + 1)).toNat : ℤ)

end

end A030152.P12861717511324233462

/-! ## A030152.P14847424198929708332

`A326540(A001222(n+1))+A030151(n+1)^2`
-/

namespace A030152.P14847424198929708332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326540 (A001222 (n + 1)).toNat + A030151 (n + 1) ^ 2

end

end A030152.P14847424198929708332

/-! ## A030152.P17369304786383911435

`A030151(n+1)^(A070201(A325401(n+1))+2)`
-/

namespace A030152.P17369304786383911435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030151 (n + 1) : ℚ) ^ (A070201 (A325401 (n + 1)).toNat + 2 : ℤ)

end

end A030152.P17369304786383911435

/-! ## A030152.P2853603123356611923

`A030151(n+1)^A000005(A138889(A000005(n+1)))`
-/

namespace A030152.P2853603123356611923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030151 (n + 1) : ℚ) ^ (A000005 (A138889 (A000005 (n + 1)).toNat).toNat : ℤ)

end

end A030152.P2853603123356611923

/-! ## A030152.P13220117908248234687

`A030151(A008619(2*n))*A030151(n+1)`
-/

namespace A030152.P13220117908248234687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030151 (A008619 (2 * n)).toNat * A030151 (n + 1)

end

end A030152.P13220117908248234687

/-! ## A030152.P14428456436347406548

`A030151(n+1)^A000005(A001097(n+1))`
-/

namespace A030152.P14428456436347406548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030151 (n + 1) : ℚ) ^ (A000005 (A001097 (n + 1)).toNat : ℤ)

end

end A030152.P14428456436347406548

/-! ## A030152.P16642057311687530400

`A030151(n+1)^A020639(A030143(2*n+3))`
-/

namespace A030152.P16642057311687530400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030151 (n + 1) : ℚ) ^ (A020639 (A030143 (2 * n + 3)).toNat : ℤ)

end

end A030152.P16642057311687530400

/-! ## A030152.P13952652706166728315

`A000290(A030151(n+1)+and(2, A000290(n)))`
-/

namespace A030152.P13952652706166728315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A030151 (n + 1) + Int.land 2 (A000290 n)).toNat

end

end A030152.P13952652706166728315

/-! ## A030152.P13054066897874036723

`A000290(2*A030151(n+1)-A030151(n+1))`
-/

namespace A030152.P13054066897874036723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A030151 (n + 1) - A030151 (n + 1)).toNat

end

end A030152.P13054066897874036723

/-! ## A030152.P16226505841146360373

`A000290(A030151(n+1))*A010052(A000290(n))`
-/

namespace A030152.P16226505841146360373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A030151 (n + 1)).toNat * A010052 (A000290 n).toNat

end

end A030152.P16226505841146360373

/-!
# A030153: Numbers k such that in k and k^2 the parity of digits alternates.

The programs for A030153, there is no canonical definition to state claims against.
-/

/-! ## A030153.P17826649312412708301

`sqrt(A030154(n+1))`
-/

namespace A030153.P17826649312412708301
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030154 (n + 1) : ℝ)

end

end A030153.P17826649312412708301

/-! ## A030153.P6587211365517076711

`A030154(A000027(n+1))^(1/2)`
-/

namespace A030153.P6587211365517076711
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030154 (A000027 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A030153.P6587211365517076711

/-! ## A030153.P2597160949304257587

`A030154(n+1)^2^A033999(A159461(n+1)+1)`
-/

namespace A030153.P2597160949304257587
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030154 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (A033999 (A159461 (n + 1) + 1).toNat : ℤ) : ℝ)

end

end A030153.P2597160949304257587

/-! ## A030153.P14555981861349316485

`∩[A030141(n+1), A030151(n+1)]`
-/

namespace A030153.P14555981861349316485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030153.P14555981861349316485

/-!
# A030154: Squares such that in n and sqrt(n) the parity of digits alternates.

The programs for A030154, there is no canonical definition to state claims against.
-/

/-! ## A030154.P5369463448718942518

`A030153(n+1)²`
-/

namespace A030154.P5369463448718942518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030153 (n + 1) ^ 2

end

end A030154.P5369463448718942518

/-! ## A030154.P11781576057160611935

`A030153(2*(n+1)-(n+1))^2`
-/

namespace A030154.P11781576057160611935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030153 (2 * (n + 1) - (n + 1)) ^ 2

end

end A030154.P11781576057160611935

/-! ## A030154.P11112607894675589049

`record[A030153(A324347(n))²]`
-/

namespace A030154.P11112607894675589049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030153 (A324347 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030154.P11112607894675589049

/-! ## A030154.P2095559642240118469

`record[A030153(A324347(n))]*A030153(n+1)`
-/

namespace A030154.P2095559642240118469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030153 (A324347 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A030153 (n + 1)

end

end A030154.P2095559642240118469

/-! ## A030154.P17461056411727750625

`A030153(A000027(n+1))*A030153(n+1)`
-/

namespace A030154.P17461056411727750625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030153 (A000027 (n + 1)).toNat * A030153 (n + 1)

end

end A030154.P17461056411727750625

/-! ## A030154.P3706222279735373154

`A030153(n+1)*A030153(A023443(n+2))`
-/

namespace A030154.P3706222279735373154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030153 (n + 1) * A030153 (A023443 (n + 2)).toNat

end

end A030154.P3706222279735373154

/-! ## A030154.P3976610803267120895

`A030153(A008619(2*n))²*A106400(n)²`
-/

namespace A030154.P3976610803267120895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030153 (A008619 (2 * n)).toNat ^ 2 * A106400 n ^ 2

end

end A030154.P3976610803267120895

/-! ## A030154.P2851499128229366548

`A030153(A008619(2*n+1))*A030153(n+1)`
-/

namespace A030154.P2851499128229366548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030153 (A008619 (2 * n + 1)).toNat * A030153 (n + 1)

end

end A030154.P2851499128229366548

/-! ## A030154.P14922657830502039413

`∩[A030141(n+1), A030151(n+1)]²`
-/

namespace A030154.P14922657830502039413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A030154.P14922657830502039413

/-!
# A030155: Odd n such that in n^2 the parity of digits alternates.

The programs for A030155, there is no canonical definition to state claims against.
-/

/-! ## A030155.P14518345938401697405

`sqrt(A030156(n+1))`
-/

namespace A030155.P14518345938401697405
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030156 (n + 1) : ℝ)

end

end A030155.P14518345938401697405

/-! ## A030155.P12316527847774660491

`A030156(n+1)^(A057427(n)/2)`
-/

namespace A030155.P12316527847774660491
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030156 (n + 1) : ℝ) ^ ((A057427 n : ℚ) / 2 : ℝ)

end

end A030155.P12316527847774660491

/-! ## A030155.P9993692157999601697

`root(A030156(n+1), gcd(2, A030143(n+1)))`
-/

namespace A030155.P9993692157999601697
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030156 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A030143 (n + 1)) : ℝ))

end

end A030155.P9993692157999601697

/-! ## A030155.P4006267499980375981

`root(A030156(n+1), A001316(A001316(n)))`
-/

namespace A030155.P4006267499980375981
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030156 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A030155.P4006267499980375981

/-! ## A030155.P7677965040413199166

`root(A030156(n+1), A224516(A224516(n+1)))`
-/

namespace A030155.P7677965040413199166
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030156 (n + 1) : ℝ) ^ (1 / (A224516 (A224516 (n + 1)).toNat : ℝ))

end

end A030155.P7677965040413199166

/-! ## A030155.P5276572469052741217

`∩[2*n+1, A030151(n+1)]`
-/

namespace A030155.P5276572469052741217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030155.P5276572469052741217

/-! ## A030155.P15380425429406405853

`record[A000265(A030151(n+2))]`
-/

namespace A030155.P15380425429406405853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A030151 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030155.P15380425429406405853

/-! ## A030155.P9794678227764872262

`A000265(root(A030156(n+1), 2))`
-/

namespace A030155.P9794678227764872262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A030156 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A030155.P9794678227764872262

/-! ## A030155.P3827598179041488933

`filter[A030151(n+2), A374134(#)]`
-/

namespace A030155.P3827598179041488933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030151 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A030155.P3827598179041488933

/-! ## A030155.P2296545968990524852

`record[A093411(A030151(A233583(n+1)))]`
-/

namespace A030155.P2296545968990524852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A030151 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030155.P2296545968990524852

/-! ## A030155.P14158487324471168501

`record[A093178(A030151(n+1))]`
-/

namespace A030155.P14158487324471168501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A030151 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030155.P14158487324471168501

/-! ## A030155.P3116847235774559514

`∩[A030151(n+1), A060747(n)]`
-/

namespace A030155.P3116847235774559514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030155.P3116847235774559514

/-! ## A030155.P17792179206709169838

`∩[A030151(n+1), A005843(n)+1]`
-/

namespace A030155.P17792179206709169838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030155.P17792179206709169838

/-! ## A030155.P5844862537666952701

`∩[A030151(n+1), A089684(n+1)]`
-/

namespace A030155.P5844862537666952701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030155.P5844862537666952701

/-! ## A030155.P9117280415486453924

`A030156(n+1)^(A007318(∑[n])/2)`
-/

namespace A030155.P9117280415486453924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030156 (n + 1) : ℝ) ^ ((A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2 : ℝ)

end

end A030155.P9117280415486453924

/-! ## A030155.P7742722315873898964

`∩[A030151(n+1), A277599(n+1)]`
-/

namespace A030155.P7742722315873898964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030155.P7742722315873898964

/-! ## A030155.P8994667964276954515

`A026741(root(A030156(n+1), 2))`
-/

namespace A030155.P8994667964276954515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((A030156 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A030155.P8994667964276954515

/-! ## A030155.P14856927006871019796

`filter[A030151(n+1), A000035(#)]`
-/

namespace A030155.P14856927006871019796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A030155.P14856927006871019796

/-!
# A030156: Odd squares in which parity of digits alternates.

The programs for A030156, there is no canonical definition to state claims against.
-/

/-! ## A030156.P1080966172862734041

`A030155(n+1)²`
-/

namespace A030156.P1080966172862734041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030155 (n + 1) ^ 2

end

end A030156.P1080966172862734041

/-! ## A030156.P9931593680528105847

`A030155(n+1)^(A057427(n)+1)`
-/

namespace A030156.P9931593680528105847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030155 (n + 1) : ℚ) ^ (A057427 n + 1 : ℤ)

end

end A030156.P9931593680528105847

/-! ## A030156.P11398531321150522108

`A030155(n+1)^A020639(2*(n+1))`
-/

namespace A030156.P11398531321150522108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030155 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A030156.P11398531321150522108

/-! ## A030156.P16316893751243265375

`A030155(n+1)^A321478(round(n/(n+1))+1)`
-/

namespace A030156.P16316893751243265375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030155 (n + 1) : ℚ) ^ (A321478 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ)) + 1).toNat : ℤ)

end

end A030156.P16316893751243265375

/-! ## A030156.P13711822000782845018

`A030155(n+1)^A014963(A001316(n))`
-/

namespace A030156.P13711822000782845018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030155 (n + 1) : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A030156.P13711822000782845018

/-! ## A030156.P4533103015976189477

`A030155(n+1)^A061142(A006530(n+1))`
-/

namespace A030156.P4533103015976189477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030155 (n + 1) : ℚ) ^ (A061142 (A006530 (n + 1)).toNat : ℤ)

end

end A030156.P4533103015976189477

/-! ## A030156.P12227240588238864780

`A030155(n+1)^A292563(A196058(n+1))`
-/

namespace A030156.P12227240588238864780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030155 (n + 1) : ℚ) ^ (A292563 (A196058 (n + 1)).toNat : ℤ)

end

end A030156.P12227240588238864780

/-! ## A030156.P8271479933165646906

`A030152(eq[1, and(1, A030152(n+1))]+1)`
-/

namespace A030156.P8271479933165646906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A030152 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A030156.P8271479933165646906

/-! ## A030156.P11720589773334209392

`A030155(n+1)^A000034(2*n+1)`
-/

namespace A030156.P11720589773334209392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030155 (n + 1) : ℚ) ^ (A000034 (2 * n + 1) : ℤ)

end

end A030156.P11720589773334209392

/-! ## A030156.P7604642033059445496

`A030155(n+1)^(2%p?[A014681(n)])`
-/

namespace A030156.P7604642033059445496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030155 (n + 1) : ℚ) ^ (Int.tmod 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) : ℤ)

end

end A030156.P7604642033059445496

/-! ## A030156.P16047278388571447642

`A030155(n+1)^A001227(record[A006530(n+2)])`
-/

namespace A030156.P16047278388571447642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030155 (n + 1) : ℚ) ^ (A001227 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ)

end

end A030156.P16047278388571447642

/-! ## A030156.P11157222525319978613

`A030155(n+1)^A181819(record[A006530(n+2)])`
-/

namespace A030156.P11157222525319978613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030155 (n + 1) : ℚ) ^ (A181819 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ)

end

end A030156.P11157222525319978613

/-! ## A030156.P2348212790710325166

`A030155(n+1)^A001222(A115585(n+1))`
-/

namespace A030156.P2348212790710325166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030155 (n + 1) : ℚ) ^ (A001222 (A115585 (n + 1)).toNat : ℤ)

end

end A030156.P2348212790710325166

/-! ## A030156.P16268967634819218325

`A030155(n+1)^A001227(2*A000040(n+1))`
-/

namespace A030156.P16268967634819218325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030155 (n + 1) : ℚ) ^ (A001227 (2 * A000040 (n + 1)).toNat : ℤ)

end

end A030156.P16268967634819218325

/-! ## A030156.P7606410869963714394

`record[A000265(A030151(n+2))²]`
-/

namespace A030156.P7606410869963714394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A030151 (n + 2)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030156.P7606410869963714394

/-! ## A030156.P17172465234980617032

`A030155(n+1)*A057427(A174095(n))*A030155(n+1)`
-/

namespace A030156.P17172465234980617032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030155 (n + 1) * A057427 (A174095 n).toNat * A030155 (n + 1)

end

end A030156.P17172465234980617032

/-! ## A030156.P15314261597581561233

`record[A093178(A030151(n+1))²]`
-/

namespace A030156.P15314261597581561233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A030151 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030156.P15314261597581561233

/-! ## A030156.P15560737171849262919

`∩[A030152(n+1), A016754(n)]`
-/

namespace A030156.P15560737171849262919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030156.P15560737171849262919

/-! ## A030156.P5332928747601531003

`∩[A030151(n+1), A060747(n)]²`
-/

namespace A030156.P5332928747601531003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A030156.P5332928747601531003

/-! ## A030156.P6937551633887362291

`∩[A030151(n+1), A005843(n)+1]²`
-/

namespace A030156.P6937551633887362291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A030156.P6937551633887362291

/-!
# A030157: Even numbers k such that in k^2 the parity of digits alternates.

The programs for A030157, there is no canonical definition to state claims against.
-/

/-! ## A030157.P13971087393624921937

`sqrt(A030158(n+1))`
-/

namespace A030157.P13971087393624921937
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030158 (n + 1) : ℝ)

end

end A030157.P13971087393624921937

/-! ## A030157.P660644097405567498

`A030158(n+1)^(A054977(n)/2)`
-/

namespace A030157.P660644097405567498
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030158 (n + 1) : ℝ) ^ ((A054977 n : ℚ) / 2 : ℝ)

end

end A030157.P660644097405567498

/-! ## A030157.P5227660686768716147

`A030158(n+1)^(1/A040001(2*n))`
-/

namespace A030157.P5227660686768716147
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030158 (n + 1) : ℝ) ^ (1 / (A040001 (2 * n) : ℚ) : ℝ)

end

end A030157.P5227660686768716147

/-! ## A030157.P2146675194327638525

`A030158(n+1)^(A007318(C(2, n))/2)`
-/

namespace A030157.P2146675194327638525
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030158 (n + 1) : ℝ) ^ ((A007318 (Nat.choose 2 n) : ℚ) / 2 : ℝ)

end

end A030157.P2146675194327638525

/-! ## A030157.P7553384903601161929

`∩[2*n, A030151(n+1)]`
-/

namespace A030157.P7553384903601161929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030157.P7553384903601161929

/-! ## A030157.P4010557474553963434

`∩[A030151(n+1), A005843(n)]`
-/

namespace A030157.P4010557474553963434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030157.P4010557474553963434

/-! ## A030157.P9866309752302914670

`∩[A030151(n+1), A060747(n)+1]`
-/

namespace A030157.P9866309752302914670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030157.P9866309752302914670

/-! ## A030157.P11715804743839240016

`record[A038608(A030151(n+1))]`
-/

namespace A030157.P11715804743839240016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A030151 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030157.P11715804743839240016

/-! ## A030157.P8150464929714049109

`filter[A030151(n+1), A059841(#)]`
-/

namespace A030157.P8150464929714049109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A030157.P8150464929714049109

/-!
# A030158: Even squares in which parity of digits alternates.

The programs for A030158, there is no canonical definition to state claims against.
-/

/-! ## A030158.P17551733255610771961

`A030157(n+1)²`
-/

namespace A030158.P17551733255610771961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030157 (n + 1) ^ 2

end

end A030158.P17551733255610771961

/-! ## A030158.P10719460703007220347

`A030157(n+1)^gcd(2, A030143(n+1))`
-/

namespace A030158.P10719460703007220347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030157 (n + 1) ^ Int.gcd 2 (A030143 (n + 1))

end

end A030158.P10719460703007220347

/-! ## A030158.P12076730219865592015

`A030157(n+1)^A030157(ceil(ratio[n+1]))`
-/

namespace A030158.P12076730219865592015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030157 (n + 1) : ℚ) ^ (A030157 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat : ℤ)

end

end A030158.P12076730219865592015

/-! ## A030158.P8725611652685214307

`A030157(n+1)%A158734(n)*A030157(n+1)`
-/

namespace A030158.P8725611652685214307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030157 (n + 1)) (A158734 n) * A030157 (n + 1)

end

end A030158.P8725611652685214307

/-! ## A030158.P3791347607879838079

`A030157(n+1)^A000005(A031368(n+1))`
-/

namespace A030158.P3791347607879838079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030157 (n + 1) : ℚ) ^ (A000005 (A031368 (n + 1)).toNat : ℤ)

end

end A030158.P3791347607879838079

/-! ## A030158.P16505237374996975203

`A030157(n+1)^A020639(A030143(2*n+3))`
-/

namespace A030158.P16505237374996975203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030157 (n + 1) : ℚ) ^ (A020639 (A030143 (2 * n + 3)).toNat : ℤ)

end

end A030158.P16505237374996975203

/-! ## A030158.P16772958092038532475

`∩[2*n, A030151(n+1)]²`
-/

namespace A030158.P16772958092038532475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A030158.P16772958092038532475

/-! ## A030158.P5442656158419315790

`∩[(2*n)², A030152(n+1)]`
-/

namespace A030158.P5442656158419315790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030158.P5442656158419315790

/-! ## A030158.P17184896730699945440

`∩[A030152(n+1), A016742(n)]`
-/

namespace A030158.P17184896730699945440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030158.P17184896730699945440

/-! ## A030158.P172950485672797474

`∩[A030151(n+1), A005843(n)]²`
-/

namespace A030158.P172950485672797474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A030158.P172950485672797474

/-!
# A030159: Numbers n such that in n^3 the parity of digits alternates.

The programs for A030159, there is no canonical definition to state claims against.
-/

/-! ## A030159.P408086379306448283

`A030160(n+1)^(1/3)`
-/

namespace A030159.P408086379306448283
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030160 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A030159.P408086379306448283

/-! ## A030159.P13100116679144105683

`record[A030161(n+1)%(n+1)²]`
-/

namespace A030159.P13100116679144105683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030161 (n + 1)) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030159.P13100116679144105683

/-! ## A030159.P9280084172020332738

`A030161(A077168(n))`
-/

namespace A030159.P9280084172020332738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030161 (A077168 n).toNat

end

end A030159.P9280084172020332738

/-! ## A030159.P3941499537877041908

`record[A030161(A225634(n))]`
-/

namespace A030159.P3941499537877041908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030161 (A225634 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030159.P3941499537877041908

/-!
# A030160: Cubes in which parity of digits alternates.

The programs for A030160, there is no canonical definition to state claims against.
-/

/-! ## A030160.P17982848606654709621

`A030159(n+1)^3`
-/

namespace A030160.P17982848606654709621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030159 (n + 1) ^ 3

end

end A030160.P17982848606654709621

/-! ## A030160.P5524951971964064223

`A030159(n%comp[∑[n]]+1)²*A030159(n+1)`
-/

namespace A030160.P5524951971964064223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030159 (n % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) ^ 2 * A030159 (n + 1)

end

end A030160.P5524951971964064223

/-! ## A030160.P12711826822682952931

`A030159(A000027(n+1))²*A030159(n+1)`
-/

namespace A030160.P12711826822682952931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030159 (A000027 (n + 1)).toNat ^ 2 * A030159 (n + 1)

end

end A030160.P12711826822682952931

/-! ## A030160.P2567383006915201295

`A030159(A028310(n)+1)²*A030159(n+1)`
-/

namespace A030160.P2567383006915201295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030159 (A028310 n + 1).toNat ^ 2 * A030159 (n + 1)

end

end A030160.P2567383006915201295

/-! ## A030160.P15108664367493679413

`A030159(A028242(2*n))²*A030159(n+1)`
-/

namespace A030160.P15108664367493679413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030159 (A028242 (2 * n)).toNat ^ 2 * A030159 (n + 1)

end

end A030160.P15108664367493679413

/-!
# A030161: Numbers k such that in k and k^3 the parity of digits alternates.

The programs for A030161, there is no canonical definition to state claims against.
-/

/-! ## A030161.P4072497234869558136

`A030162(n+1)^(1/3)`
-/

namespace A030161.P4072497234869558136
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030162 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A030161.P4072497234869558136

/-! ## A030161.P1850910090469000898

`A030159(A166535(n+1))`
-/

namespace A030161.P1850910090469000898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030159 (A166535 (n + 1)).toNat

end

end A030161.P1850910090469000898

/-! ## A030161.P15438059646129147471

`A030159(A398164(n+1))`
-/

namespace A030161.P15438059646129147471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030159 (A398164 (n + 1)).toNat

end

end A030161.P15438059646129147471

/-! ## A030161.P14725145780736826466

`A030159(A023783(n+2))`
-/

namespace A030161.P14725145780736826466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030159 (A023783 (n + 2)).toNat

end

end A030161.P14725145780736826466

/-! ## A030161.P12729557223966728893

`A030159(A247764(n+2))`
-/

namespace A030161.P12729557223966728893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030159 (A247764 (n + 2)).toNat

end

end A030161.P12729557223966728893

/-!
# A030162: Cubes such that in n and n^(1/3) the parity of digits alternates.

The programs for A030162, there is no canonical definition to state claims against.
-/

/-! ## A030162.P13833470707056218860

`A030161(n+1)^3`
-/

namespace A030162.P13833470707056218860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030161 (n + 1) ^ 3

end

end A030162.P13833470707056218860

/-! ## A030162.P10848835617876631411

`A000578(A030161(n+1))`
-/

namespace A030162.P10848835617876631411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A030161 (n + 1)).toNat

end

end A030162.P10848835617876631411

/-! ## A030162.P16101545736519189323

`A030160(A166535(n+1))`
-/

namespace A030162.P16101545736519189323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030160 (A166535 (n + 1)).toNat

end

end A030162.P16101545736519189323

/-! ## A030162.P4009872474942473509

`A030160(A398164(n+1))`
-/

namespace A030162.P4009872474942473509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030160 (A398164 (n + 1)).toNat

end

end A030162.P4009872474942473509

/-! ## A030162.P17276360884512077957

`A030160(A023783(n+2))`
-/

namespace A030162.P17276360884512077957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030160 (A023783 (n + 2)).toNat

end

end A030162.P17276360884512077957

/-!
# A030163: Solutions x of 2*uphi(x)=x, where uphi is the unitary phi function (A047994).

The programs for A030163, there is no canonical definition to state claims against.
-/

/-! ## A030163.P6419178003532643119

`record[A319481(A303691(n+3))]`
-/

namespace A030163.P6419178003532643119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319481 (A303691 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030163.P6419178003532643119

/-! ## A030163.P6353433180569388890

`A319481(A057427(n)+2+n)`
-/

namespace A030163.P6353433180569388890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319481 (A057427 n + 2 + (n : ℤ)).toNat

end

end A030163.P6353433180569388890

/-! ## A030163.P17331333136683906665

`A319481(3-A000007(n)+n)`
-/

namespace A030163.P17331333136683906665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319481 (3 - A000007 n + (n : ℤ)).toNat

end

end A030163.P17331333136683906665

/-!
# A030164: Numbers n such that uphi(sigma(n)) = n, where the uphi is the unitary phi function A047994.

The programs for A030164, there is no canonical definition to state claims against.
-/

/-! ## A030164.P4870548432855337842

`eq[n, A047994(A227131(n))]`
-/

namespace A030164.P4870548432855337842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A227131 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030164.P4870548432855337842

/-! ## A030164.P12595909551263176393

`eq[n, A047994(A039653(n)+1)]`
-/

namespace A030164.P12595909551263176393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A039653 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030164.P12595909551263176393

/-!
# A030173: Differences p(i)-p(j) between primes, sorted in numerical order.

The programs for A030173, the canonical program `A030173.P11040345326000713843` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030173 has offset 1).

The definition of A030173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030173.P11040345326000713843

`eq[1, A370482(n+2)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A030173

/-- `eq[1, A370482(n+2)]` -/
def P11040345326000713843.Spec : Prop :=
  ∀ n, (P11040345326000713843.a n : ℤ) = A030173 (n + 1)

theorem P11040345326000713843.correct : P11040345326000713843.Spec := by
  intro n
  simp only [A030173, Nat.add_sub_cancel]

end A030173

/-! ## A030173.P9855624687740248978

`lt[A325937(n+3), 2]+1`
-/

namespace A030173.P9855624687740248978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A030173.P9855624687740248978

namespace A030173

/-- `lt[A325937(n+3), 2]+1` -/
def P9855624687740248978.Spec : Prop :=
  ∀ n, (P9855624687740248978.a n : ℤ) = A030173 (n + 1)

end A030173

/-! ## A030173.P11374706080186863216

`eq[n%2, A010051(n+2)]`
-/

namespace A030173.P11374706080186863216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030173.P11374706080186863216

namespace A030173

/-- `eq[n%2, A010051(n+2)]` -/
def P11374706080186863216.Spec : Prop :=
  ∀ n, (P11374706080186863216.a n : ℤ) = A030173 (n + 1)

end A030173

/-! ## A030173.P16126911417701494035

`comp[A007921(n+1)-1]+1`
-/

namespace A030173.P16126911417701494035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A030173.P16126911417701494035

namespace A030173

/-- `comp[A007921(n+1)-1]+1` -/
def P16126911417701494035.Spec : Prop :=
  ∀ n, (P16126911417701494035.a n : ℤ) = A030173 (n + 1)

end A030173

/-! ## A030173.P1675941140015372996

`comp[2*A153238(n+1)]+1`
-/

namespace A030173.P1675941140015372996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A030173.P1675941140015372996

namespace A030173

/-- `comp[2*A153238(n+1)]+1` -/
def P1675941140015372996.Spec : Prop :=
  ∀ n, (P1675941140015372996.a n : ℤ) = A030173 (n + 1)

end A030173

/-! ## A030173.P5116372226466902453

`record[gcd(1-n, A003966(n+1))]`
-/

namespace A030173.P5116372226466902453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) (A003966 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030173.P5116372226466902453

namespace A030173

/-- `record[gcd(1-n, A003966(n+1))]` -/
def P5116372226466902453.Spec : Prop :=
  ∀ n, (P5116372226466902453.a n : ℤ) = A030173 (n + 1)

end A030173

/-! ## A030173.P9348363433410174500

`∪[2*(n+1), A000040(n+2)-2]`
-/

namespace A030173.P9348363433410174500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A030173.P9348363433410174500

namespace A030173

/-- `∪[2*(n+1), A000040(n+2)-2]` -/
def P9348363433410174500.Spec : Prop :=
  ∀ n, (P9348363433410174500.a n : ℤ) = A030173 (n + 1)

end A030173

/-! ## A030173.P8578725766281474946

`eq[1-a(n-1), C(2, A000005(n+2))]` with `a(0)=0`
-/

namespace A030173.P8578725766281474946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000005 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A030173.P8578725766281474946

namespace A030173

/-- `eq[1-a(n-1), C(2, A000005(n+2))]` -/
def P8578725766281474946.Spec : Prop :=
  ∀ n, (P8578725766281474946.a n : ℤ) = A030173 (n + 1)

end A030173

/-! ## A030173.P2200019317239364535

`eq[1-a(n-1), C(A000010(n+2), n+1)]` with `a(0)=0`
-/

namespace A030173.P2200019317239364535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000010 (n + 2)).toNat (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A030173.P2200019317239364535

namespace A030173

/-- `eq[1-a(n-1), C(A000010(n+2), n+1)]` -/
def P2200019317239364535.Spec : Prop :=
  ∀ n, (P2200019317239364535.a n : ℤ) = A030173 (n + 1)

end A030173

/-! ## A030173.P15909156770483641197

`eq[1-a(n-1), C(A006530(n+2), n+2)]` with `a(0)=0`
-/

namespace A030173.P15909156770483641197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 2)).toNat (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A030173.P15909156770483641197

namespace A030173

/-- `eq[1-a(n-1), C(A006530(n+2), n+2)]` -/
def P15909156770483641197.Spec : Prop :=
  ∀ n, (P15909156770483641197.a n : ℤ) = A030173 (n + 1)

end A030173

/-! ## A030173.P1559302564149588964

`lt[A093178(n), A000010(n+2)]`
-/

namespace A030173.P1559302564149588964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030173.P1559302564149588964

namespace A030173

/-- `lt[A093178(n), A000010(n+2)]` -/
def P1559302564149588964.Spec : Prop :=
  ∀ n, (P1559302564149588964.a n : ℤ) = A030173 (n + 1)

end A030173

/-! ## A030173.P13006703830261189616

`lt[A001222(n+2), A141310(n)]`
-/

namespace A030173.P13006703830261189616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030173.P13006703830261189616

namespace A030173

/-- `lt[A001222(n+2), A141310(n)]` -/
def P13006703830261189616.Spec : Prop :=
  ∀ n, (P13006703830261189616.a n : ℤ) = A030173 (n + 1)

end A030173

/-! ## A030173.P2692550003950361917

`∪[A169606(n+1), A004277(n)]`
-/

namespace A030173.P2692550003950361917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A030173.P2692550003950361917

namespace A030173

/-- `∪[A169606(n+1), A004277(n)]` -/
def P2692550003950361917.Spec : Prop :=
  ∀ n, (P2692550003950361917.a n : ℤ) = A030173 (n + 1)

end A030173

/-! ## A030173.P3268995482835955111

`∪[A169606(n+1), A004279(n)]`
-/

namespace A030173.P3268995482835955111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A030173.P3268995482835955111

namespace A030173

/-- `∪[A169606(n+1), A004279(n)]` -/
def P3268995482835955111.Spec : Prop :=
  ∀ n, (P3268995482835955111.a n : ℤ) = A030173 (n + 1)

end A030173

/-! ## A030173.P3118639689567269287

`∪[A169606(n+1), A103517(n)]`
-/

namespace A030173.P3118639689567269287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A030173.P3118639689567269287

namespace A030173

/-- `∪[A169606(n+1), A103517(n)]` -/
def P3118639689567269287.Spec : Prop :=
  ∀ n, (P3118639689567269287.a n : ℤ) = A030173 (n + 1)

end A030173

/-! ## A030173.P7134454267236297072

`∪[A350460(n+1), A004277(n)]`
-/

namespace A030173.P7134454267236297072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A030173.P7134454267236297072

namespace A030173

/-- `∪[A350460(n+1), A004277(n)]` -/
def P7134454267236297072.Spec : Prop :=
  ∀ n, (P7134454267236297072.a n : ℤ) = A030173 (n + 1)

end A030173

/-! ## A030173.P62029341135699752

`∪[A350460(n+1), A004279(n)]`
-/

namespace A030173.P62029341135699752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A030173.P62029341135699752

namespace A030173

/-- `∪[A350460(n+1), A004279(n)]` -/
def P62029341135699752.Spec : Prop :=
  ∀ n, (P62029341135699752.a n : ℤ) = A030173 (n + 1)

end A030173

/-! ## A030173.P4822109477479410370

`lt[A107286(n+2), A020639(n+1)]`
-/

namespace A030173.P4822109477479410370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030173.P4822109477479410370

namespace A030173

/-- `lt[A107286(n+2), A020639(n+1)]` -/
def P4822109477479410370.Spec : Prop :=
  ∀ n, (P4822109477479410370.a n : ℤ) = A030173 (n + 1)

end A030173

/-!
# A030174: Squares composed of digits {1,2,3}.

The programs for A030174, there is no canonical definition to state claims against.
-/

/-! ## A030174.P8414033706251774288

`A030175(n+1)²`
-/

namespace A030174.P8414033706251774288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030175 (n + 1) ^ 2

end

end A030174.P8414033706251774288

/-! ## A030174.P13982821085827400985

`A030175(n+1)^p?[A030202(n)]`
-/

namespace A030174.P13982821085827400985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030202 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030175 (n + 1) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A030174.P13982821085827400985

/-! ## A030174.P6564378501059547811

`A030175(n+1)^A001221(A007283(n))`
-/

namespace A030174.P6564378501059547811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030175 (n + 1) : ℚ) ^ (A001221 (A007283 n).toNat : ℤ)

end

end A030174.P6564378501059547811

/-! ## A030174.P10712471976168774966

`A030175(n+1)^A014963(A000079(n))`
-/

namespace A030174.P10712471976168774966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030175 (n + 1) : ℚ) ^ (A014963 (A000079 n).toNat : ℤ)

end

end A030174.P10712471976168774966

/-! ## A030174.P15461798056571895943

`A030175(n+1)^A020639(A322827(n))`
-/

namespace A030174.P15461798056571895943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030175 (n + 1) : ℚ) ^ (A020639 (A322827 n).toNat : ℤ)

end

end A030174.P15461798056571895943

/-!
# A030175: When squared gives number composed of digits {1,2,3}.

The programs for A030175, there is no canonical definition to state claims against.
-/

/-! ## A030175.P14007535855142041038

`sqrt(A030174(n+1))`
-/

namespace A030175.P14007535855142041038
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030174 (n + 1) : ℝ)

end

end A030175.P14007535855142041038

/-! ## A030175.P14322836160919539538

`root(A030174(n+1), A111972(n+6))`
-/

namespace A030175.P14322836160919539538
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030174 (n + 1) : ℝ) ^ (1 / (A111972 (n + 6) : ℝ))

end

end A030175.P14322836160919539538

/-! ## A030175.P84763595917846656

`root(A030174(n+1), A000799(C(2, n)!))`
-/

namespace A030175.P84763595917846656
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030174 (n + 1) : ℝ) ^ (1 / (A000799 (Nat.factorial (Nat.choose 2 n)) : ℝ))

end

end A030175.P84763595917846656

/-! ## A030175.P12349512949904081026

`root(A030174(n+1), A001316(A001316(n)))`
-/

namespace A030175.P12349512949904081026
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030174 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A030175.P12349512949904081026

/-!
# A030176: Squares composed of digits {4,5,6}.

The programs for A030176, there is no canonical definition to state claims against.
-/

/-! ## A030176.P14716311271911820891

`A030177(n+1)²`
-/

namespace A030176.P14716311271911820891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030177 (n + 1) ^ 2

end

end A030176.P14716311271911820891

/-! ## A030176.P16168933779324670906

`A030177(n+1)^A337539(3*n+5)`
-/

namespace A030176.P16168933779324670906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030177 (n + 1) : ℚ) ^ (A337539 (3 * n + 5) : ℤ)

end

end A030176.P16168933779324670906

/-! ## A030176.P1590461184881438545

`A030177(n+1)^A046523(A006567(n+1))`
-/

namespace A030176.P1590461184881438545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030177 (n + 1) : ℚ) ^ (A046523 (A006567 (n + 1)).toNat : ℤ)

end

end A030176.P1590461184881438545

/-! ## A030176.P1779694285098921016

`A030177(n+1)^A046523(A137812(n+1))`
-/

namespace A030176.P1779694285098921016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030177 (n + 1) : ℚ) ^ (A046523 (A137812 (n + 1)).toNat : ℤ)

end

end A030176.P1779694285098921016

/-! ## A030176.P4021342558408314598

`lcm(A000034(n), A030177(n+1))*A030177(n+1)`
-/

namespace A030176.P4021342558408314598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 n) (A030177 (n + 1)) : ℤ) * A030177 (n + 1)

end

end A030176.P4021342558408314598

/-!
# A030177: When squared gives number composed of digits {4,5,6}.

The programs for A030177, there is no canonical definition to state claims against.
-/

/-! ## A030177.P12320638856301012486

`sqrt(A030176(n+1))`
-/

namespace A030177.P12320638856301012486
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030176 (n + 1) : ℝ)

end

end A030177.P12320638856301012486

/-! ## A030177.P7691052590906289001

`root(A030176(n+1), p?[A030203(n)])`
-/

namespace A030177.P7691052590906289001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030203 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030176 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A030177.P7691052590906289001

/-! ## A030177.P8069058849758250954

`root(A030176(n+1), lcm(2, A000034(n)))`
-/

namespace A030177.P8069058849758250954
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030176 (n + 1) : ℝ) ^ (1 / (Int.lcm 2 (A000034 n) : ℝ))

end

end A030177.P8069058849758250954

/-! ## A030177.P11223178965728135432

`root(A030176(n+1), A001316(A001316(n)))`
-/

namespace A030177.P11223178965728135432
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030176 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A030177.P11223178965728135432

/-!
# A030179: Quarter-squares squared: A002620^2.

The programs for A030179, the canonical program `A030179.P12931471110697372176` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030179 has offset 0).

The definition of A030179 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030179.P12931471110697372176

`floor(n²/4)²`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030179

/-- `floor(n²/4)²` -/
def P12931471110697372176.Spec : Prop :=
  ∀ n, P12931471110697372176.a n = A030179 n

theorem P12931471110697372176.correct : P12931471110697372176.Spec := by
  intro n
  simp only [A030179]

end A030179

/-! ## A030179.P17275277747283543807

`∑[and(n, -2)]²/4`
-/

namespace A030179.P17275277747283543807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 4

end

end A030179.P17275277747283543807

namespace A030179

/-- `∑[and(n, -2)]²/4` -/
def P17275277747283543807.Spec : Prop :=
  ∀ n, P17275277747283543807.a n = (A030179 n : ℚ)

end A030179

/-! ## A030179.P7130496851963525472

`∑[and(n, -2)/2]^2`
-/

namespace A030179.P7130496851963525472
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A030179.P7130496851963525472

namespace A030179

/-- `∑[and(n, -2)/2]^2` -/
def P7130496851963525472.Spec : Prop :=
  ∀ n, P7130496851963525472.a n = (A030179 n : ℚ)

end A030179

/-! ## A030179.P9920656166361884507

`round((and(-2, n²)/4)²)`
-/

namespace A030179.P9920656166361884507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Int.land (-2) (n ^ 2 : ℤ) : ℚ) / 4) ^ 2)

end

end A030179.P9920656166361884507

namespace A030179

/-- `round((and(-2, n²)/4)²)` -/
def P9920656166361884507.Spec : Prop :=
  ∀ n, P9920656166361884507.a n = A030179 n

end A030179

/-! ## A030179.P275091857641895683

`∑[C(n, 2)*floor(n/2)]`
-/

namespace A030179.P275091857641895683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030179.P275091857641895683

namespace A030179

/-- `∑[C(n, 2)*floor(n/2)]` -/
def P275091857641895683.Spec : Prop :=
  ∀ n, P275091857641895683.a n = A030179 n

end A030179

/-! ## A030179.P10801897053806297981

`∑[n-∑[n%2]]^2`
-/

namespace A030179.P10801897053806297981
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A030179.P10801897053806297981

namespace A030179

/-- `∑[n-∑[n%2]]^2` -/
def P10801897053806297981.Spec : Prop :=
  ∀ n, P10801897053806297981.a n = A030179 n

end A030179

/-! ## A030179.P11401360685419979338

`∑[∑[∑{p}[n, C(2, #)]]]^2`
-/

namespace A030179.P11401360685419979338
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.choose 2 p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A030179.P11401360685419979338

namespace A030179

/-- `∑[∑[∑{p}[n, C(2, #)]]]^2` -/
def P11401360685419979338.Spec : Prop :=
  ∀ n, (P11401360685419979338.a n : ℤ) = A030179 n

end A030179

/-! ## A030179.P6538970223698641935

`∑[a(n-2)+1]^2` with `a(0)=0, a(1)=0`
-/

namespace A030179.P6538970223698641935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A030179.P6538970223698641935

namespace A030179

/-- `∑[a(n-2)+1]^2` -/
def P6538970223698641935.Spec : Prop :=
  ∀ n, (P6538970223698641935.a n : ℤ) = A030179 n

end A030179

/-! ## A030179.P637485923783253927

`floor(∑[a(n-2)+1]²)` with `a(0)=0, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A030179.P637485923783253927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A030179.P637485923783253927

namespace A030179

/-- `floor(∑[a(n-2)+1]²)` -/
def P637485923783253927.Spec : Prop :=
  ∀ n, (P637485923783253927.a n : ℤ) = A030179 n

end A030179

/-! ## A030179.P3581327527382138135

`ceil(∑[a(n-2)+1]²)` with `a(0)=0, a(1)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A030179.P3581327527382138135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A030179.P3581327527382138135

namespace A030179

/-- `ceil(∑[a(n-2)+1]²)` -/
def P3581327527382138135.Spec : Prop :=
  ∀ n, (P3581327527382138135.a n : ℤ) = A030179 n

end A030179

/-! ## A030179.P1894983579391021290

`round(∑[a(n-2)+1]²)` with `a(0)=0, a(1)=0`

`round` is left out, it is the identity on integers.
-/

namespace A030179.P1894983579391021290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A030179.P1894983579391021290

namespace A030179

/-- `round(∑[a(n-2)+1]²)` -/
def P1894983579391021290.Spec : Prop :=
  ∀ n, (P1894983579391021290.a n : ℤ) = A030179 n

end A030179

/-! ## A030179.P17303497212368074336

`∑[a(n-2)+2]²/4` with `a(0)=0, a(1)=0`
-/

namespace A030179.P17303497212368074336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 4

end

end A030179.P17303497212368074336

namespace A030179

/-- `∑[a(n-2)+2]²/4` -/
def P17303497212368074336.Spec : Prop :=
  ∀ n, P17303497212368074336.a n = (A030179 n : ℚ)

end A030179

/-! ## A030179.P13122114196262304715

`floor(∑[∑[1-a(n-1)]]²)` with `a(0)=0, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A030179.P13122114196262304715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A030179.P13122114196262304715

namespace A030179

/-- `floor(∑[∑[1-a(n-1)]]²)` -/
def P13122114196262304715.Spec : Prop :=
  ∀ n, P13122114196262304715.a n = A030179 n

end A030179

/-! ## A030179.P9547398745248818381

`∑[∑[2-a(n-1)]]²/4` with `a(0)=0, a(1)=0`
-/

namespace A030179.P9547398745248818381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 4

end

end A030179.P9547398745248818381

namespace A030179

/-- `∑[∑[2-a(n-1)]]²/4` -/
def P9547398745248818381.Spec : Prop :=
  ∀ n, P9547398745248818381.a n = (A030179 n : ℚ)

end A030179

/-! ## A030179.P12197456676408083206

`A212892(n)/2`
-/

namespace A030179.P12197456676408083206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212892 n : ℚ) / 2

end

end A030179.P12197456676408083206

namespace A030179

/-- `A212892(n)/2` -/
def P12197456676408083206.Spec : Prop :=
  ∀ n, P12197456676408083206.a n = (A030179 n : ℚ)

end A030179

/-! ## A030179.P12334449252528474281

`Δ[A059859(abs(1-n))]`
-/

namespace A030179.P12334449252528474281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059859 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030179.P12334449252528474281

namespace A030179

/-- `Δ[A059859(abs(1-n))]` -/
def P12334449252528474281.Spec : Prop :=
  ∀ n, P12334449252528474281.a n = A030179 n

end A030179

/-! ## A030179.P9142951283924536591

`A002415(n)-A350050(n)`
-/

namespace A030179.P9142951283924536591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n - A350050 n

end

end A030179.P9142951283924536591

namespace A030179

/-- `A002415(n)-A350050(n)` -/
def P9142951283924536591.Spec : Prop :=
  ∀ n, P9142951283924536591.a n = A030179 n

end A030179

/-! ## A030179.P10688744307739065567

`A212505(n)-A212714(n)`
-/

namespace A030179.P10688744307739065567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212505 n - A212714 n

end

end A030179.P10688744307739065567

namespace A030179

/-- `A212505(n)-A212714(n)` -/
def P10688744307739065567.Spec : Prop :=
  ∀ n, P10688744307739065567.a n = A030179 n

end A030179

/-! ## A030179.P5251603021375589614

`A002620(n)*A002620(n)`
-/

namespace A030179.P5251603021375589614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n * A002620 n

end

end A030179.P5251603021375589614

namespace A030179

/-- `A002620(n)*A002620(n)` -/
def P5251603021375589614.Spec : Prop :=
  ∀ n, P5251603021375589614.a n = A030179 n

end A030179

/-! ## A030179.P16389646069956270242

`A001057(n)²*A008794(n)`
-/

namespace A030179.P16389646069956270242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n ^ 2 * A008794 n

end

end A030179.P16389646069956270242

namespace A030179

/-- `A001057(n)²*A008794(n)` -/
def P16389646069956270242.Spec : Prop :=
  ∀ n, P16389646069956270242.a n = A030179 n

end A030179

/-!
# A030180: a(n) = (n^7 - n)/42.

The programs for A030180, the canonical program `A030180.P8430814144619639411` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030180 has offset 0).

The definition of A030180 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030180.P8430814144619639411

`(n^7-n)/42`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030180

/-- `(n^7-n)/42` -/
def P8430814144619639411.Spec : Prop :=
  ∀ n, P8430814144619639411.a n = (A030180 n : ℚ)

end A030180

/-! ## A030180.P8982717752397689155

`round(∑[((1-n)²+n)²*C(n, 2)]/3)`
-/

namespace A030180.P8982717752397689155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2 + (n : ℤ)) ^ 2 * (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3)

end

end A030180.P8982717752397689155

namespace A030180

/-- `round(∑[((1-n)²+n)²*C(n, 2)]/3)` -/
def P8982717752397689155.Spec : Prop :=
  ∀ n, P8982717752397689155.a n = A030180 n

end A030180

/-! ## A030180.P2751575673561766381

`floor(A108495(n)/7)`
-/

namespace A030180.P2751575673561766381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A108495 n : ℚ) / 7⌋

end

end A030180.P2751575673561766381

namespace A030180

/-- `floor(A108495(n)/7)` -/
def P2751575673561766381.Spec : Prop :=
  ∀ n, P2751575673561766381.a n = A030180 n

end A030180

/-! ## A030180.P1153222334145895642

`∑[A002061(n)*A006325(n)]`
-/

namespace A030180.P1153222334145895642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n * A006325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030180.P1153222334145895642

namespace A030180

/-- `∑[A002061(n)*A006325(n)]` -/
def P1153222334145895642.Spec : Prop :=
  ∀ n, P1153222334145895642.a n = A030180 n

end A030180

/-! ## A030180.P9117427089915685073

`A108495(n)-A208537(n+1)`
-/

namespace A030180.P9117427089915685073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108495 n - A208537 (n + 1)

end

end A030180.P9117427089915685073

namespace A030180

/-- `A108495(n)-A208537(n+1)` -/
def P9117427089915685073.Spec : Prop :=
  ∀ n, P9117427089915685073.a n = A030180 n

end A030180

/-! ## A030180.P15906937952805490297

`1/A040420(n)*A133499(n)`
-/

namespace A030180.P15906937952805490297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A040420 n : ℚ) * (A133499 n : ℚ)

end

end A030180.P15906937952805490297

namespace A030180

/-- `1/A040420(n)*A133499(n)` -/
def P15906937952805490297.Spec : Prop :=
  ∀ n, P15906937952805490297.a n = (A030180 n : ℚ)

end A030180

/-! ## A030180.P11847809234179739482

`∑[A006325(n)/2*A051890(n)]`
-/

namespace A030180.P11847809234179739482
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006325 n : ℚ) / 2 * (A051890 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030180.P11847809234179739482

namespace A030180

/-- `∑[A006325(n)/2*A051890(n)]` -/
def P11847809234179739482.Spec : Prop :=
  ∀ n, P11847809234179739482.a n = (A030180 n : ℚ)

end A030180

/-! ## A030180.P2494165669897886548

`∑[(A006484(n)-n)*A002061(n)]`
-/

namespace A030180.P2494165669897886548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006484 n - (n : ℤ)) * A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030180.P2494165669897886548

namespace A030180

/-- `∑[(A006484(n)-n)*A002061(n)]` -/
def P2494165669897886548.Spec : Prop :=
  ∀ n, P2494165669897886548.a n = A030180 n

end A030180

/-!
# A030184: Expansion of eta(q) * eta(q^3) * eta(q^5) * eta(q^15) in powers of q.

The programs for A030184, there is no canonical definition to state claims against.
-/

/-! ## A030184.P17895506426232307137

`A122776(A080512(n+1))`
-/

namespace A030184.P17895506426232307137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122776 (A080512 (n + 1)).toNat

end

end A030184.P17895506426232307137

/-! ## A030184.P5100455176914544792

`A122776(A257143(n+1))`
-/

namespace A030184.P5100455176914544792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122776 (A257143 (n + 1)).toNat

end

end A030184.P5100455176914544792

/-! ## A030184.P9090598515250505955

`A030218(2*(n+1))+A030218(n+1)`
-/

namespace A030184.P9090598515250505955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030218 (2 * (n + 1)) + A030218 (n + 1)

end

end A030184.P9090598515250505955

/-! ## A030184.P1890523563831865071

`A286137(2*(n+1))+A286137(n+1)`
-/

namespace A030184.P1890523563831865071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286137 (2 * (n + 1)) + A286137 (n + 1)

end

end A030184.P1890523563831865071

/-! ## A030184.P7351506818700432945

`A286129(2*(n+1))+A286128(2*(n+1))`
-/

namespace A030184.P7351506818700432945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286129 (2 * (n + 1)) + A286128 (2 * (n + 1))

end

end A030184.P7351506818700432945

/-! ## A030184.P10922213221786980702

`A122776(A317315(n+1))`
-/

namespace A030184.P10922213221786980702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122776 (A317315 (n + 1)).toNat

end

end A030184.P10922213221786980702

/-!
# A030186: a(n) = 3*a(n-1) + a(n-2) - a(n-3) for n >= 3, a(0)=1, a(1)=2, a(2)=7.

The programs for A030186, the canonical program `A030186.P5552931916037222847` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030186 has offset 0).

The definition of A030186 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+a(n-2)-a(n-3)` (program `A030186.P5552931916037222847`, by `A030186.P5552931916037222847.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A030186.P5552931916037222847

`3*a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=7`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030186

/-- `3*a(n-1)+a(n-2)-a(n-3)` -/
def P5552931916037222847.Spec : Prop :=
  ∀ n, P5552931916037222847.a n = A030186 n

theorem P5552931916037222847.correct : P5552931916037222847.Spec := by
  intro n
  simp only [A030186]

end A030186

/-! ## A030186.P15518741745595035036

`ogf((1-x)/(1-3x-x^2+x^3))`
-/

namespace A030186.P15518741745595035036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -3, -1, 1] n

end

end A030186.P15518741745595035036

namespace A030186

/-- `ogf((1-x)/(1-3x-x^2+x^3))` -/
def P15518741745595035036.Spec : Prop :=
  ∀ n, P15518741745595035036.a n = A030186 n

end A030186

/-! ## A030186.P3064026375552310664

`A365967(2*n)`
-/

namespace A030186.P3064026375552310664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365967 (2 * n)

end

end A030186.P3064026375552310664

namespace A030186

/-- `A365967(2*n)` -/
def P3064026375552310664.Spec : Prop :=
  ∀ n, P3064026375552310664.a n = A030186 n

end A030186

/-! ## A030186.P3370242416158386723

`A061534(n)-a(n-1)` with `a(0)=1`
-/

namespace A030186.P3370242416158386723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A061534 n - a (n - 1)

end

end A030186.P3370242416158386723

namespace A030186

/-- `A061534(n)-a(n-1)` -/
def P3370242416158386723.Spec : Prop :=
  ∀ n, P3370242416158386723.a n = A030186 n

end A030186

/-! ## A030186.P17096405072753351370

`A181301(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A030186.P17096405072753351370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A181301 n + a (n - 2)

end

end A030186.P17096405072753351370

namespace A030186

/-- `A181301(n)+a(n-2)` -/
def P17096405072753351370.Spec : Prop :=
  ∀ n, P17096405072753351370.a n = A030186 n

end A030186

/-! ## A030186.P315779687288774078

`A033505(n)-Δ[A287275(n)]`
-/

namespace A030186.P315779687288774078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033505 n - (f1 (n + 1) - f1 n)

end

end A030186.P315779687288774078

namespace A030186

/-- `A033505(n)-Δ[A287275(n)]` -/
def P315779687288774078.Spec : Prop :=
  ∀ n, P315779687288774078.a n = A030186 n

end A030186

/-! ## A030186.P12418110087213631428

`A033505(n)+A033505(n)-∑[A061534(n)]`
-/

namespace A030186.P12418110087213631428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033505 n + (A033505 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A030186.P12418110087213631428

namespace A030186

/-- `A033505(n)+A033505(n)-∑[A061534(n)]` -/
def P12418110087213631428.Spec : Prop :=
  ∀ n, P12418110087213631428.a n = A030186 n

end A030186

/-! ## A030186.P1064929734792310365

`Δ[Δ[A287275(n)]]`
-/

namespace A030186.P1064929734792310365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030186.P1064929734792310365

namespace A030186

/-- `Δ[Δ[A287275(n)]]` -/
def P1064929734792310365.Spec : Prop :=
  ∀ n, P1064929734792310365.a n = A030186 n

end A030186

/-! ## A030186.P4328455539532753763

`A181301(n+1)-∑[A061534(n)]`
-/

namespace A030186.P4328455539532753763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181301 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030186.P4328455539532753763

namespace A030186

/-- `A181301(n+1)-∑[A061534(n)]` -/
def P4328455539532753763.Spec : Prop :=
  ∀ n, P4328455539532753763.a n = A030186 n

end A030186

/-! ## A030186.P2730184970343448943

`2*A033505(n)-∑[A061534(n)]`
-/

namespace A030186.P2730184970343448943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033505 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030186.P2730184970343448943

namespace A030186

/-- `2*A033505(n)-∑[A061534(n)]` -/
def P2730184970343448943.Spec : Prop :=
  ∀ n, P2730184970343448943.a n = A030186 n

end A030186

/-! ## A030186.P4398292011532083788

`∑[Δ[A033505(n)]-A088016(n+1)]`
-/

namespace A030186.P4398292011532083788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033505 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A088016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030186.P4398292011532083788

namespace A030186

/-- `∑[Δ[A033505(n)]-A088016(n+1)]` -/
def P4398292011532083788.Spec : Prop :=
  ∀ n, P4398292011532083788.a n = A030186 n

end A030186

/-! ## A030186.P6599192604749355198

`A061534(n+1)+A033505(n)-A033505(n+1)`
-/

namespace A030186.P6599192604749355198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061534 (n + 1) + (A033505 n - A033505 (n + 1))

end

end A030186.P6599192604749355198

namespace A030186

/-- `A061534(n+1)+A033505(n)-A033505(n+1)` -/
def P6599192604749355198.Spec : Prop :=
  ∀ n, P6599192604749355198.a n = A030186 n

end A030186

/-! ## A030186.P7218696467627825182

`Δ[A033505(n+1)]%A033505(n+1)`
-/

namespace A030186.P7218696467627825182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A033505 (n + 1))

end

end A030186.P7218696467627825182

namespace A030186

/-- `Δ[A033505(n+1)]%A033505(n+1)` -/
def P7218696467627825182.Spec : Prop :=
  ∀ n, P7218696467627825182.a n = A030186 n

end A030186

/-! ## A030186.P10289910839877296049

`A316726(n+1)+A316726(n)-A183712(n+1)`
-/

namespace A030186.P10289910839877296049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316726 (n + 1) + (A316726 n - A183712 (n + 1))

end

end A030186.P10289910839877296049

namespace A030186

/-- `A316726(n+1)+A316726(n)-A183712(n+1)` -/
def P10289910839877296049.Spec : Prop :=
  ∀ n, P10289910839877296049.a n = A030186 n

end A030186

/-! ## A030186.P18390211159240818110

`A220563(n+1)+A220563(n+2)-A183712(n+1)`
-/

namespace A030186.P18390211159240818110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220563 (n + 1) + (A220563 (n + 2) - A183712 (n + 1))

end

end A030186.P18390211159240818110

namespace A030186

/-- `A220563(n+1)+A220563(n+2)-A183712(n+1)` -/
def P18390211159240818110.Spec : Prop :=
  ∀ n, P18390211159240818110.a n = A030186 n

end A030186

/-!
# A030187: Expansion of eta(q) * eta(q^2) * eta(q^7) * eta(q^14) in powers of q.

The programs for A030187, there is no canonical definition to state claims against.
-/

/-! ## A030187.P15290260884573226545

`A112848(n+1)^A264909(A028303(n))`
-/

namespace A030187.P15290260884573226545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112848 (n + 1) : ℚ) ^ (A264909 (A028303 n).toNat : ℤ)

end

end A030187.P15290260884573226545

/-! ## A030187.P16572358260066326392

`A112848(n+1)^A264909(A028304(n))`
-/

namespace A030187.P16572358260066326392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112848 (n + 1) : ℚ) ^ (A264909 (A028304 n).toNat : ℤ)

end

end A030187.P16572358260066326392

/-!
# A030188: Expansion of q^(-1/2) * eta(q) * eta(q^2) * eta(q^3) * eta(q^6) in powers of q.

The programs for A030188, there is no canonical definition to state claims against.
-/

/-! ## A030188.P2435462952160273710

`(-1)^n*A159819(n)`
-/

namespace A030188.P2435462952160273710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A159819 n

end

end A030188.P2435462952160273710

/-! ## A030188.P7084571615459256258

`A159819(n)/A033999(n)`
-/

namespace A030188.P7084571615459256258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159819 n : ℚ) / (A033999 n : ℚ)

end

end A030188.P7084571615459256258

/-! ## A030188.P13520856229445665273

`A109039(n)*A159819(n)/A257656(n)`
-/

namespace A030188.P13520856229445665273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109039 n * A159819 n : ℚ) / (A257656 n : ℚ)

end

end A030188.P13520856229445665273

/-! ## A030188.P17032766297042159982

`A276847(Δ[n²])`
-/

namespace A030188.P17032766297042159982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276847 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A030188.P17032766297042159982

/-! ## A030188.P3046088841272745303

`A276847(2*n+1)%(n+2)`
-/

namespace A030188.P3046088841272745303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276847 (2 * n + 1)) (n + 2 : ℤ)

end

end A030188.P3046088841272745303

/-! ## A030188.P13974692160062856080

`A276847(2*n+1)+A271231(2*n)`
-/

namespace A030188.P13974692160062856080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276847 (2 * n + 1) + A271231 (2 * n)

end

end A030188.P13974692160062856080

/-! ## A030188.P7586741222262267622

`A087960(2*n)*A271231(2*n+1)`
-/

namespace A030188.P7586741222262267622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A271231 (2 * n + 1)

end

end A030188.P7586741222262267622

/-! ## A030188.P17905974923914446655

`A276847(2*n+1)+A276847(2*(n+1))`
-/

namespace A030188.P17905974923914446655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276847 (2 * n + 1) + A276847 (2 * (n + 1))

end

end A030188.P17905974923914446655

/-! ## A030188.P3415428598426558830

`A034947(2*n+1)*A271231(2*n+1)`
-/

namespace A030188.P3415428598426558830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (2 * n + 1) * A271231 (2 * n + 1)

end

end A030188.P3415428598426558830

/-! ## A030188.P2408518561314033978

`A209615(2*n+1)*A271231(2*n+1)`
-/

namespace A030188.P2408518561314033978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (2 * n + 1) * A271231 (2 * n + 1)

end

end A030188.P2408518561314033978

/-! ## A030188.P15074480947516548364

`A246707(2*n+1)/2-A246707(2*n+1)`
-/

namespace A030188.P15074480947516548364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246707 (2 * n + 1) : ℚ) / 2 - (A246707 (2 * n + 1) : ℚ)

end

end A030188.P15074480947516548364

/-! ## A030188.P4879481459752798260

`(A088748(2*n+1)-A088748(2*n))*A271231(2*n+1)`
-/

namespace A030188.P4879481459752798260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088748 (2 * n + 1) - A088748 (2 * n)) * A271231 (2 * n + 1)

end

end A030188.P4879481459752798260

/-! ## A030188.P15549746510730104034

`A261277(n)/A131713(n)`
-/

namespace A030188.P15549746510730104034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261277 n : ℚ) / (A131713 n : ℚ)

end

end A030188.P15549746510730104034

/-! ## A030188.P5142713370527249187

`A261277(n)/(2-A057079(n)²)`
-/

namespace A030188.P5142713370527249187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261277 n : ℚ) / (2 - A057079 n ^ 2 : ℚ)

end

end A030188.P5142713370527249187

/-! ## A030188.P460179735102529076

`A261277(n)/A057079(4*n)`
-/

namespace A030188.P460179735102529076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261277 n : ℚ) / (A057079 (4 * n) : ℚ)

end

end A030188.P460179735102529076

/-! ## A030188.P15695763150480372666

`A246707(A016969(n)-2)/2`
-/

namespace A030188.P15695763150480372666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246707 (A016969 n - 2).toNat : ℚ) / 2

end

end A030188.P15695763150480372666

/-! ## A030188.P5968638356779775291

`A271231(2*n+1)/A087960(n²)`
-/

namespace A030188.P5968638356779775291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271231 (2 * n + 1) : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A030188.P5968638356779775291

/-!
# A030189: Expansion of eta(q)*eta(q^2)*eta(q^4)*eta(q^8).

The programs for A030189, there is no canonical definition to state claims against.
-/

/-! ## A030189.P10413540109758400448

`A170925(n)+A044941(2^n)`
-/

namespace A030189.P10413540109758400448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170925 n + A044941 (2 ^ n)

end

end A030189.P10413540109758400448

/-! ## A030189.P12365847891488869892

`A170925(n)+A005088(A174109(n))`
-/

namespace A030189.P12365847891488869892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170925 n + A005088 (A174109 n).toNat

end

end A030189.P12365847891488869892

/-! ## A030189.P17407255142442866074

`A185284(A000009(n))+A170925(n)`
-/

namespace A030189.P17407255142442866074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000009 n).toNat + A170925 n

end

end A030189.P17407255142442866074

/-! ## A030189.P8823466546328743014

`A170925(n)+A025441(A184955(n))`
-/

namespace A030189.P8823466546328743014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170925 n + A025441 (A184955 n).toNat

end

end A030189.P8823466546328743014

/-! ## A030189.P15875118656703582834

`A170925(n)+A102683(A174678(n))`
-/

namespace A030189.P15875118656703582834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170925 n + A102683 (A174678 n).toNat

end

end A030189.P15875118656703582834

/-!
# A030190: Binary Champernowne sequence (or word): write the numbers 0,1,2,3,4,... in base 2 and juxtapose.

The programs for A030190, there is no canonical definition to state claims against.
-/

/-! ## A030190.P440486739333026844

`1-A030315(n)`
-/

namespace A030190.P440486739333026844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A030315 n

end

end A030190.P440486739333026844

/-! ## A030190.P7489786733889683938

`char[comp[A003607(n)]]`
-/

namespace A030190.P7489786733889683938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003607 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A030190.P7489786733889683938

/-! ## A030190.P18305219338610079303

`char[A030303(n+1)]`
-/

namespace A030190.P18305219338610079303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A030190.P18305219338610079303

/-! ## A030190.P138825570483923531

`char[lt[0, A319954(n)]+1]`
-/

namespace A030190.P138825570483923531
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319954 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A030190.P138825570483923531

/-! ## A030190.P14814239841695183950

`∑[char[∑[A056062(n)]]]²%2`
-/

namespace A030190.P14814239841695183950
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056062 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 % 2

end

end A030190.P14814239841695183950

/-! ## A030190.P5582049255394280592

`char[eq[1, A030302(n+1)]+1]`
-/

namespace A030190.P5582049255394280592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A030190.P5582049255394280592

/-! ## A030190.P11044258983497588117

`A030315(C(n*A030315(n), n))`
-/

namespace A030190.P11044258983497588117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030315 (Nat.choose ((n : ℤ) * A030315 n).toNat n)

end

end A030190.P11044258983497588117

/-! ## A030190.P12989475492926819051

`(A000040(n+1)+char[A003607(n+1)])%2`
-/

namespace A030190.P12989475492926819051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003607 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) 2

end

end A030190.P12989475492926819051

/-! ## A030190.P1169735699884553953

`A030315(Δ[A008851(n+1)]*A030315(n))`
-/

namespace A030190.P1169735699884553953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030315 ((f1 (n + 1) - f1 n) * A030315 n).toNat

end

end A030190.P1169735699884553953

/-! ## A030190.P6078104500778742057

`A030315(A030303(n+1)*A030315(n))`
-/

namespace A030190.P6078104500778742057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030315 (A030303 (n + 1) * A030315 n).toNat

end

end A030190.P6078104500778742057

/-! ## A030190.P15123112714833880344

`A030315(lt[A030315(n), 1]*A030315(n))`
-/

namespace A030190.P15123112714833880344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030315 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030315 ((SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) * A030315 n).toNat

end

end A030190.P15123112714833880344

/-! ## A030190.P9318769002765491060

`A057427(n*A319954(n-A057427(n)))`
-/

namespace A030190.P9318769002765491060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((n : ℤ) * A319954 ((n : ℤ) - A057427 n).toNat).toNat

end

end A030190.P9318769002765491060

/-! ## A030190.P5095666521840496663

`A030302(A028310(n))-A108069(2*n+1)`
-/

namespace A030190.P5095666521840496663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (A028310 n).toNat - A108069 (2 * n + 1)

end

end A030190.P5095666521840496663

/-! ## A030190.P4747136159604370922

`A030315(A030315(n)*A083652(n))`
-/

namespace A030190.P4747136159604370922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030315 (A030315 n * A083652 n).toNat

end

end A030190.P4747136159604370922

/-! ## A030190.P14079431818658160042

`A030302(A233583(n+1)+A000007(n))`
-/

namespace A030190.P14079431818658160042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (A233583 (n + 1) + A000007 n).toNat

end

end A030190.P14079431818658160042

/-! ## A030190.P1672652165009458124

`A030302(A233583(n+1))*A057427(n)`
-/

namespace A030190.P1672652165009458124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (A233583 (n + 1)).toNat * A057427 n

end

end A030190.P1672652165009458124

/-! ## A030190.P2012633080690444616

`A021913(A382115(n+1))`
-/

namespace A030190.P2012633080690444616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A382115 (n + 1)).toNat

end

end A030190.P2012633080690444616

/-! ## A030190.P17502595747898570379

`and(2, A055143(n+1))/2`
-/

namespace A030190.P17502595747898570379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A055143 (n + 1)) : ℚ) / 2

end

end A030190.P17502595747898570379

/-! ## A030190.P17028248402606708956

`char[A030304(n+1)]`
-/

namespace A030190.P17028248402606708956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A030190.P17028248402606708956

/-!
# A030191: Scaled Chebyshev U-polynomial evaluated at sqrt(5)/2.

The programs for A030191, the canonical program `A030191.P204622573558910074` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030191 has offset 0).

The definition of A030191 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030191.P204622573558910074

`5*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030191

/-- `5*(a(n-1)-a(n-2))` -/
def P204622573558910074.Spec : Prop :=
  ∀ n, P204622573558910074.a n = A030191 n

theorem P204622573558910074.correct : P204622573558910074.Spec := by
  intro n
  simp only [A030191]

end A030191

/-! ## A030191.P10840321770749463266

`(((5+sqrt(5))/2)^(n+1)-((5-sqrt(5))/2)^(n+1))/sqrt(5)`
-/

namespace A030191.P10840321770749463266
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((5 + Real.sqrt (5 : ℝ)) / 2) ^ (n + 1) - ((5 - Real.sqrt (5 : ℝ)) / 2) ^ (n + 1)) / Real.sqrt (5 : ℝ)

end

end A030191.P10840321770749463266

namespace A030191

/-- `(((5+sqrt(5))/2)^(n+1)-((5-sqrt(5))/2)^(n+1))/sqrt(5)` -/
def P10840321770749463266.Spec : Prop :=
  ∀ n, P10840321770749463266.a n = (A030191 n : ℝ)

end A030191

/-! ## A030191.P14339722895087896012

`ogf(1/(1-5x+5x^2))`
-/

namespace A030191.P14339722895087896012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -5, 5] n

end

end A030191.P14339722895087896012

namespace A030191

/-- `ogf(1/(1-5x+5x^2))` -/
def P14339722895087896012.Spec : Prop :=
  ∀ n, P14339722895087896012.a n = A030191 n

end A030191

/-! ## A030191.P7419711472509271605

`A093131(n+1)`
-/

namespace A030191.P7419711472509271605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093131 (n + 1)

end

end A030191.P7419711472509271605

namespace A030191

/-- `A093131(n+1)` -/
def P7419711472509271605.Spec : Prop :=
  ∀ n, P7419711472509271605.a n = A030191 n

end A030191

/-! ## A030191.P11382372713755126266

`∑[A039717(n+1)]`
-/

namespace A030191.P11382372713755126266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030191.P11382372713755126266

namespace A030191

/-- `∑[A039717(n+1)]` -/
def P11382372713755126266.Spec : Prop :=
  ∀ n, P11382372713755126266.a n = A030191 n

end A030191

/-! ## A030191.P16132683183189802565

`∑[A217777(2*n)]`
-/

namespace A030191.P16132683183189802565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217777 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030191.P16132683183189802565

namespace A030191

/-- `∑[A217777(2*n)]` -/
def P16132683183189802565.Spec : Prop :=
  ∀ n, P16132683183189802565.a n = A030191 n

end A030191

/-! ## A030191.P14760841140580289172

`∑[abs(Δ[A093131(n)])]`
-/

namespace A030191.P14760841140580289172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093131 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030191.P14760841140580289172

namespace A030191

/-- `∑[abs(Δ[A093131(n)])]` -/
def P14760841140580289172.Spec : Prop :=
  ∀ n, P14760841140580289172.a n = A030191 n

end A030191

/-! ## A030191.P4403155023452370449

`∑[abs(Δ[A112091(n)])]`
-/

namespace A030191.P4403155023452370449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112091 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030191.P4403155023452370449

namespace A030191

/-- `∑[abs(Δ[A112091(n)])]` -/
def P4403155023452370449.Spec : Prop :=
  ∀ n, P4403155023452370449.a n = A030191 n

end A030191

/-! ## A030191.P6851191756627101374

`A112091(n+1)-1`
-/

namespace A030191.P6851191756627101374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112091 (n + 1) - 1

end

end A030191.P6851191756627101374

namespace A030191

/-- `A112091(n+1)-1` -/
def P6851191756627101374.Spec : Prop :=
  ∀ n, P6851191756627101374.a n = A030191 n

end A030191

/-! ## A030191.P6848765460409481697

`record[A093131(abs(1-n))]`
-/

namespace A030191.P6848765460409481697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093131 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030191.P6848765460409481697

namespace A030191

/-- `record[A093131(abs(1-n))]` -/
def P6848765460409481697.Spec : Prop :=
  ∀ n, P6848765460409481697.a n = A030191 n

end A030191

/-! ## A030191.P2120458614052292704

`∑[∑[A136775(n+1)]]`
-/

namespace A030191.P2120458614052292704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136775 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030191.P2120458614052292704

namespace A030191

/-- `∑[∑[A136775(n+1)]]` -/
def P2120458614052292704.Spec : Prop :=
  ∀ n, P2120458614052292704.a n = A030191 n

end A030191

/-! ## A030191.P11873378876490858928

`∑[A216212(2*n+1)/2]`
-/

namespace A030191.P11873378876490858928
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216212 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030191.P11873378876490858928

namespace A030191

/-- `∑[A216212(2*n+1)/2]` -/
def P11873378876490858928.Spec : Prop :=
  ∀ n, P11873378876490858928.a n = (A030191 n : ℚ)

end A030191

/-! ## A030191.P13726095862495460617

`a(n-1)+A081567(n)+a(n-1)` with `a(0)=1`
-/

namespace A030191.P13726095862495460617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A081567 n + a (n - 1))

end

end A030191.P13726095862495460617

namespace A030191

/-- `a(n-1)+A081567(n)+a(n-1)` -/
def P13726095862495460617.Spec : Prop :=
  ∀ n, P13726095862495460617.a n = A030191 n

end A030191

/-! ## A030191.P10752751281442298317

`A020876(n)-A098111(n)`
-/

namespace A030191.P10752751281442298317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020876 n - A098111 n

end

end A030191.P10752751281442298317

namespace A030191

/-- `A020876(n)-A098111(n)` -/
def P10752751281442298317.Spec : Prop :=
  ∀ n, P10752751281442298317.a n = A030191 n

end A030191

/-! ## A030191.P17363299852352372277

`∑[A217779(n)-A094865(n)]`
-/

namespace A030191.P17363299852352372277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217779 n - A094865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030191.P17363299852352372277

namespace A030191

/-- `∑[A217779(n)-A094865(n)]` -/
def P17363299852352372277.Spec : Prop :=
  ∀ n, P17363299852352372277.a n = A030191 n

end A030191

/-! ## A030191.P12370934325061056534

`A081567(n+1)-A020876(n)`
-/

namespace A030191.P12370934325061056534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081567 (n + 1) - A020876 n

end

end A030191.P12370934325061056534

namespace A030191

/-- `A081567(n+1)-A020876(n)` -/
def P12370934325061056534.Spec : Prop :=
  ∀ n, P12370934325061056534.a n = A030191 n

end A030191

/-! ## A030191.P10603192831018501303

`A052936(n+1)-A093129(n)`
-/

namespace A030191.P10603192831018501303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052936 (n + 1) - A093129 n

end

end A030191.P10603192831018501303

namespace A030191

/-- `A052936(n+1)-A093129(n)` -/
def P10603192831018501303.Spec : Prop :=
  ∀ n, P10603192831018501303.a n = A030191 n

end A030191

/-! ## A030191.P1678145081691577245

`A093129(n+1)-A098111(n)`
-/

namespace A030191.P1678145081691577245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093129 (n + 1) - A098111 n

end

end A030191.P1678145081691577245

namespace A030191

/-- `A093129(n+1)-A098111(n)` -/
def P1678145081691577245.Spec : Prop :=
  ∀ n, P1678145081691577245.a n = A030191 n

end A030191

/-! ## A030191.P15970600233031972989

`A217783(n)-A094865(n+1)`
-/

namespace A030191.P15970600233031972989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217783 n - A094865 (n + 1)

end

end A030191.P15970600233031972989

namespace A030191

/-- `A217783(n)-A094865(n+1)` -/
def P15970600233031972989.Spec : Prop :=
  ∀ n, P15970600233031972989.a n = A030191 n

end A030191

/-! ## A030191.P5445701145098985695

`∑[Δ[A081567(n)]-A081567(n)]`
-/

namespace A030191.P5445701145098985695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081567 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A081567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030191.P5445701145098985695

namespace A030191

/-- `∑[Δ[A081567(n)]-A081567(n)]` -/
def P5445701145098985695.Spec : Prop :=
  ∀ n, P5445701145098985695.a n = A030191 n

end A030191

/-!
# A030192: Scaled Chebyshev U-polynomial evaluated at sqrt(6)/2.

The programs for A030192, the canonical program `A030192.P4920431678628459289` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030192 has offset 0).

The definition of A030192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030192.P3795032560165659216

`ogf(1/(1-6x+6x^2))`
-/

namespace A030192.P3795032560165659216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, 6] n

end

end A030192.P3795032560165659216

namespace A030192

/-- `ogf(1/(1-6x+6x^2))` -/
def P3795032560165659216.Spec : Prop :=
  ∀ n, P3795032560165659216.a n = A030192 n

end A030192

/-! ## A030192.P4920431678628459289

`6*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030192

/-- `6*(a(n-1)-a(n-2))` -/
def P4920431678628459289.Spec : Prop :=
  ∀ n, P4920431678628459289.a n = A030192 n

theorem P4920431678628459289.correct : P4920431678628459289.Spec := by
  intro n
  simp only [A030192]

end A030192

/-! ## A030192.P13408865293717246192

`∑[A140766(n+1)]`
-/

namespace A030192.P13408865293717246192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030192.P13408865293717246192

namespace A030192

/-- `∑[A140766(n+1)]` -/
def P13408865293717246192.Spec : Prop :=
  ∀ n, P13408865293717246192.a n = A030192 n

end A030192

/-! ## A030192.P1710410666447030185

`A094434(n+2)/2`
-/

namespace A030192.P1710410666447030185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094434 (n + 2) : ℚ) / 2

end

end A030192.P1710410666447030185

namespace A030192

/-- `A094434(n+2)/2` -/
def P1710410666447030185.Spec : Prop :=
  ∀ n, P1710410666447030185.a n = (A030192 n : ℚ)

end A030192

/-! ## A030192.P1398008496286408784

`A083881(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A030192.P1398008496286408784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A083881 n + 3 * a (n - 1)

end

end A030192.P1398008496286408784

namespace A030192

/-- `A083881(n)+3*a(n-1)` -/
def P1398008496286408784.Spec : Prop :=
  ∀ n, P1398008496286408784.a n = A030192 n

end A030192

/-! ## A030192.P2996624607881284676

`a(n-1)+A086405(n)+a(n-1)` with `a(0)=1`
-/

namespace A030192.P2996624607881284676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A086405 n + a (n - 1))

end

end A030192.P2996624607881284676

namespace A030192

/-- `a(n-1)+A086405(n)+a(n-1)` -/
def P2996624607881284676.Spec : Prop :=
  ∀ n, P2996624607881284676.a n = A030192 n

end A030192

/-! ## A030192.P2557461736330916827

`A276265(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A030192.P2557461736330916827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A276265 n - (a (n - 1) + a (n - 1))

end

end A030192.P2557461736330916827

namespace A030192

/-- `A276265(n)-(a(n-1)+a(n-1))` -/
def P2557461736330916827.Spec : Prop :=
  ∀ n, P2557461736330916827.a n = A030192 n

end A030192

/-! ## A030192.P11805027296650104975

`A056452(n)*A108412(n)`
-/

namespace A030192.P11805027296650104975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056452 n * A108412 n

end

end A030192.P11805027296650104975

namespace A030192

/-- `A056452(n)*A108412(n)` -/
def P11805027296650104975.Spec : Prop :=
  ∀ n, P11805027296650104975.a n = A030192 n

end A030192

/-! ## A030192.P160951627736924068

`Δ[A083881(n)]-A083881(n)`
-/

namespace A030192.P160951627736924068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A083881 n

end

end A030192.P160951627736924068

namespace A030192

/-- `Δ[A083881(n)]-A083881(n)` -/
def P160951627736924068.Spec : Prop :=
  ∀ n, P160951627736924068.a n = A030192 n

end A030192

/-! ## A030192.P952170194708354526

`A094434(n+1)+A086405(n)`
-/

namespace A030192.P952170194708354526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094434 (n + 1) + A086405 n

end

end A030192.P952170194708354526

namespace A030192

/-- `A094434(n+1)+A086405(n)` -/
def P952170194708354526.Spec : Prop :=
  ∀ n, P952170194708354526.a n = A030192 n

end A030192

/-! ## A030192.P17318255588373603856

`A026549(n)*A143643(n+1)`
-/

namespace A030192.P17318255588373603856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 n * A143643 (n + 1)

end

end A030192.P17318255588373603856

namespace A030192

/-- `A026549(n)*A143643(n+1)` -/
def P17318255588373603856.Spec : Prop :=
  ∀ n, P17318255588373603856.a n = A030192 n

end A030192

/-! ## A030192.P4068661548973538474

`∑[A094434(n+1)+A083881(n)]`
-/

namespace A030192.P4068661548973538474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094434 (n + 1) + A083881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030192.P4068661548973538474

namespace A030192

/-- `∑[A094434(n+1)+A083881(n)]` -/
def P4068661548973538474.Spec : Prop :=
  ∀ n, P4068661548973538474.a n = A030192 n

end A030192

/-! ## A030192.P3637927035837604001

`A086405(n+1)-A083881(n+1)`
-/

namespace A030192.P3637927035837604001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086405 (n + 1) - A083881 (n + 1)

end

end A030192.P3637927035837604001

namespace A030192

/-- `A086405(n+1)-A083881(n+1)` -/
def P3637927035837604001.Spec : Prop :=
  ∀ n, P3637927035837604001.a n = A030192 n

end A030192

/-! ## A030192.P883197684819264798

`A026532(n+1)*A082630(n+1)`
-/

namespace A030192.P883197684819264798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026532 (n + 1) * A082630 (n + 1)

end

end A030192.P883197684819264798

namespace A030192

/-- `A026532(n+1)*A082630(n+1)` -/
def P883197684819264798.Spec : Prop :=
  ∀ n, P883197684819264798.a n = A030192 n

end A030192

/-! ## A030192.P17496820248861703475

`A083881(n+1)-2*A083881(n)`
-/

namespace A030192.P17496820248861703475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083881 (n + 1) - 2 * A083881 n

end

end A030192.P17496820248861703475

namespace A030192

/-- `A083881(n+1)-2*A083881(n)` -/
def P17496820248861703475.Spec : Prop :=
  ∀ n, P17496820248861703475.a n = A030192 n

end A030192

/-! ## A030192.P4908511702233343588

`A086405(n)+A086405(n)-A094433(n+1)`
-/

namespace A030192.P4908511702233343588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086405 n + (A086405 n - A094433 (n + 1))

end

end A030192.P4908511702233343588

namespace A030192

/-- `A086405(n)+A086405(n)-A094433(n+1)` -/
def P4908511702233343588.Spec : Prop :=
  ∀ n, P4908511702233343588.a n = A030192 n

end A030192

/-! ## A030192.P9656506383174242164

`A094434(n+1)+∑[A094434(n+1)+A094433(n)]`
-/

namespace A030192.P9656506383174242164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094434 (n + 1) + A094433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094434 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030192.P9656506383174242164

namespace A030192

/-- `A094434(n+1)+∑[A094434(n+1)+A094433(n)]` -/
def P9656506383174242164.Spec : Prop :=
  ∀ n, P9656506383174242164.a n = A030192 n

end A030192

/-! ## A030192.P18392640739504567965

`A094433(n+1)+A094434(n+1)+A094434(n+1)`
-/

namespace A030192.P18392640739504567965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094433 (n + 1) + (A094434 (n + 1) + A094434 (n + 1))

end

end A030192.P18392640739504567965

namespace A030192

/-- `A094433(n+1)+A094434(n+1)+A094434(n+1)` -/
def P18392640739504567965.Spec : Prop :=
  ∀ n, P18392640739504567965.a n = A030192 n

end A030192

/-! ## A030192.P10175498353842218474

`Δ[A162273(n)]%A162273(n)`
-/

namespace A030192.P10175498353842218474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A162273 n)

end

end A030192.P10175498353842218474

namespace A030192

/-- `Δ[A162273(n)]%A162273(n)` -/
def P10175498353842218474.Spec : Prop :=
  ∀ n, P10175498353842218474.a n = A030192 n

end A030192

/-!
# A030193: Let S = squares; a(0)=0; a(n) = smallest m such that m - a(i) is not in S for any i < n.

The programs for A030193, there is no canonical definition to state claims against.
-/

/-! ## A030193.P11784058747159177982

`A224839(n+1)-1`
-/

namespace A030193.P11784058747159177982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224839 (n + 1) - 1

end

end A030193.P11784058747159177982

/-! ## A030193.P4972224125772542381

`∑[A171465(n+1)]-A171465(n+1)`
-/

namespace A030193.P4972224125772542381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A171465 (n + 1)

end

end A030193.P4972224125772542381

/-! ## A030193.P2265367482078261260

`eq[0, A014586(n)]`
-/

namespace A030193.P2265367482078261260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014586 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030193.P2265367482078261260

/-! ## A030193.P7504509805669848129

`A023443(A224839(n+1))`
-/

namespace A030193.P7504509805669848129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A224839 (n + 1)).toNat

end

end A030193.P7504509805669848129

/-! ## A030193.P15980672845619348142

`eq[1, A059841(A338027(n))]`
-/

namespace A030193.P15980672845619348142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A338027 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030193.P15980672845619348142

/-! ## A030193.P16038511623443645176

`lt[A281236(A014586(n)+1), 2]`
-/

namespace A030193.P16038511623443645176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281236 (A014586 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A030193.P16038511623443645176

/-! ## A030193.P11809335096438634004

`lt[A014586(n), A014560(A014589(n))]`
-/

namespace A030193.P11809335096438634004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014586 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014560 (A014589 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030193.P11809335096438634004

/-!
# A030194: a(0)=0; a(n) is the smallest m such that m - a(i) is not a triangular number for any i < n.

The programs for A030194, there is no canonical definition to state claims against.
-/

/-! ## A030194.P95602448948243365

`A336531(n+1)-1`
-/

namespace A030194.P95602448948243365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336531 (n + 1) - 1

end

end A030194.P95602448948243365

/-! ## A030194.P10406156526964578394

`xor(-A336531(n+1), -A162292(n+1)%2)`
-/

namespace A030194.P10406156526964578394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A336531 (n + 1)) (Int.tmod (-A162292 (n + 1)) 2)

end

end A030194.P10406156526964578394

/-! ## A030194.P15796920858765450886

`A349340(A000040(n+1))+A336531(n+1)`
-/

namespace A030194.P15796920858765450886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (A000040 (n + 1)).toNat + A336531 (n + 1)

end

end A030194.P15796920858765450886

/-! ## A030194.P2294507658866358339

`eq[0, A019509(n)]`
-/

namespace A030194.P2294507658866358339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019509 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030194.P2294507658866358339

/-! ## A030194.P5431694075213599137

`A023443(A336531(n+1))`
-/

namespace A030194.P5431694075213599137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A336531 (n + 1)).toNat

end

end A030194.P5431694075213599137

/-! ## A030194.P2485641484110739027

`A289207(A336531(n+1)+1)`
-/

namespace A030194.P2485641484110739027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A336531 (n + 1) + 1).toNat

end

end A030194.P2485641484110739027

/-! ## A030194.P10067740153427895186

`and(A336531(n+1)+A001348(n+1), A001348(n+1))`
-/

namespace A030194.P10067740153427895186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A336531 (n + 1) + A001348 (n + 1)) (A001348 (n + 1))

end

end A030194.P10067740153427895186

/-!
# A030195: a(n) = 3*a(n-1) + 3*a(n-2), a(0)=0, a(1)=1.

The programs for A030195, the canonical program `A030195.P14060356971139714760` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030195 has offset 0).

The definition of A030195 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+3*a(n-2)` (program `A030195.P14060356971139714760`, by `A030195.P14060356971139714760.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A030195.P14060356971139714760

`3*a(n-1)+3*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030195

/-- `3*a(n-1)+3*a(n-2)` -/
def P14060356971139714760.Spec : Prop :=
  ∀ n, (P14060356971139714760.a n : ℤ) = A030195 n

theorem P14060356971139714760.correct : P14060356971139714760.Spec := by
  intro n
  simp only [A030195]

end A030195

/-! ## A030195.P18067349025412493678

`ogf(x/(1-3x-3x^2))`
-/

namespace A030195.P18067349025412493678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -3, -3] n

end

end A030195.P18067349025412493678

namespace A030195

/-- `ogf(x/(1-3x-3x^2))` -/
def P18067349025412493678.Spec : Prop :=
  ∀ n, P18067349025412493678.a n = A030195 n

end A030195

/-! ## A030195.P18185316545220707442

`3*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A030195.P18185316545220707442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * (a (n - 1) + a (n - 2))

end

end A030195.P18185316545220707442

namespace A030195

/-- `3*(a(n-1)+a(n-2))` -/
def P18185316545220707442.Spec : Prop :=
  ∀ n, (P18185316545220707442.a n : ℤ) = A030195 n

theorem P18185316545220707442.correct : P18185316545220707442.Spec := by
  intro n
  simp only [A030195, Nat.add_sub_cancel, A030195.P18185316545220707442.a, A030195.P14060356971139714760.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A030195

/-! ## A030195.P16333858933752831216

`3*(a(n-1)-floor(-a(n-2)))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A030195.P16333858933752831216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * (a (n - 1) - (-a (n - 2)))

end

end A030195.P16333858933752831216

namespace A030195

/-- `3*(a(n-1)-floor(-a(n-2)))` -/
def P16333858933752831216.Spec : Prop :=
  ∀ n, P16333858933752831216.a n = A030195 n

end A030195

/-! ## A030195.P1590489529345021929

`3*(a(n-1)-ceil(-a(n-2)))` with `a(0)=0, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A030195.P1590489529345021929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * (a (n - 1) - (-a (n - 2)))

end

end A030195.P1590489529345021929

namespace A030195

/-- `3*(a(n-1)-ceil(-a(n-2)))` -/
def P1590489529345021929.Spec : Prop :=
  ∀ n, P1590489529345021929.a n = A030195 n

end A030195

/-! ## A030195.P13224704122632884871

`3*(a(n-1)-round(-a(n-2)))` with `a(0)=0, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A030195.P13224704122632884871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * (a (n - 1) - (-a (n - 2)))

end

end A030195.P13224704122632884871

namespace A030195

/-- `3*(a(n-1)-round(-a(n-2)))` -/
def P13224704122632884871.Spec : Prop :=
  ∀ n, P13224704122632884871.a n = A030195 n

end A030195

/-! ## A030195.P11022264520521290697

`(a(n-1)+a(n-2))/(1-2/3)` with `a(0)=0, a(1)=1`
-/

namespace A030195.P11022264520521290697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) + a (n - 2)) / (1 - (2 : ℚ) / 3)

end

end A030195.P11022264520521290697

namespace A030195

/-- `(a(n-1)+a(n-2))/(1-2/3)` -/
def P11022264520521290697.Spec : Prop :=
  ∀ n, P11022264520521290697.a n = (A030195 n : ℚ)

end A030195

/-! ## A030195.P18004489782233170438

`A106435(n)/3`
-/

namespace A030195.P18004489782233170438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106435 n : ℚ) / 3

end

end A030195.P18004489782233170438

namespace A030195

/-- `A106435(n)/3` -/
def P18004489782233170438.Spec : Prop :=
  ∀ n, P18004489782233170438.a n = (A030195 n : ℚ)

end A030195

/-! ## A030195.P11849300848458490553

`A202206(n)-A134927(n)`
-/

namespace A030195.P11849300848458490553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202206 n - A134927 n

end

end A030195.P11849300848458490553

namespace A030195

/-- `A202206(n)-A134927(n)` -/
def P11849300848458490553.Spec : Prop :=
  ∀ n, P11849300848458490553.a n = A030195 n

end A030195

/-! ## A030195.P17517063205235343836

`2*A221454(n+1)-A000045(n)`
-/

namespace A030195.P17517063205235343836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A221454 (n + 1) - A000045 n

end

end A030195.P17517063205235343836

namespace A030195

/-- `2*A221454(n+1)-A000045(n)` -/
def P17517063205235343836.Spec : Prop :=
  ∀ n, P17517063205235343836.a n = A030195 n

end A030195

/-! ## A030195.P17704583114401838925

`A172012(n)-2*A134927(n)`
-/

namespace A030195.P17704583114401838925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172012 n - 2 * A134927 n

end

end A030195.P17704583114401838925

namespace A030195

/-- `A172012(n)-2*A134927(n)` -/
def P17704583114401838925.Spec : Prop :=
  ∀ n, P17704583114401838925.a n = A030195 n

end A030195

/-! ## A030195.P13171214335777658145

`2*A202206(n)-A172012(n)`
-/

namespace A030195.P13171214335777658145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A202206 n - A172012 n

end

end A030195.P13171214335777658145

namespace A030195

/-- `2*A202206(n)-A172012(n)` -/
def P13171214335777658145.Spec : Prop :=
  ∀ n, P13171214335777658145.a n = A030195 n

end A030195

/-! ## A030195.P14303691845235461811

`(A108306(n)-A125145(n))/2`
-/

namespace A030195.P14303691845235461811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108306 n - A125145 n : ℚ) / 2

end

end A030195.P14303691845235461811

namespace A030195

/-- `(A108306(n)-A125145(n))/2` -/
def P14303691845235461811.Spec : Prop :=
  ∀ n, P14303691845235461811.a n = (A030195 n : ℚ)

end A030195

/-! ## A030195.P13740501444292600199

`(A180142(n)-A155116(n))/2`
-/

namespace A030195.P13740501444292600199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180142 n - A155116 n : ℚ) / 2

end

end A030195.P13740501444292600199

namespace A030195

/-- `(A180142(n)-A155116(n))/2` -/
def P13740501444292600199.Spec : Prop :=
  ∀ n, P13740501444292600199.a n = (A030195 n : ℚ)

end A030195

/-! ## A030195.P17270072550170630190

`∑[A271318(2*n)]-A271318(2*n)`
-/

namespace A030195.P17270072550170630190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271318 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A271318 (2 * n)

end

end A030195.P17270072550170630190

namespace A030195

/-- `∑[A271318(2*n)]-A271318(2*n)` -/
def P17270072550170630190.Spec : Prop :=
  ∀ n, P17270072550170630190.a n = A030195 n

end A030195

/-! ## A030195.P2813006237347576976

`A123620(n+1)-A125145(n+1)`
-/

namespace A030195.P2813006237347576976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123620 (n + 1) - A125145 (n + 1)

end

end A030195.P2813006237347576976

namespace A030195

/-- `A123620(n+1)-A125145(n+1)` -/
def P2813006237347576976.Spec : Prop :=
  ∀ n, P2813006237347576976.a n = A030195 n

end A030195

/-! ## A030195.P17669194647334721004

`A125145(n+1)-A180142(n+1)`
-/

namespace A030195.P17669194647334721004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125145 (n + 1) - A180142 (n + 1)

end

end A030195.P17669194647334721004

namespace A030195

/-- `A125145(n+1)-A180142(n+1)` -/
def P17669194647334721004.Spec : Prop :=
  ∀ n, P17669194647334721004.a n = A030195 n

end A030195

/-! ## A030195.P924729045947723953

`(A123620(n+1)-A180142(n+1))/2`
-/

namespace A030195.P924729045947723953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123620 (n + 1) - A180142 (n + 1) : ℚ) / 2

end

end A030195.P924729045947723953

namespace A030195

/-- `(A123620(n+1)-A180142(n+1))/2` -/
def P924729045947723953.Spec : Prop :=
  ∀ n, P924729045947723953.a n = (A030195 n : ℚ)

end A030195

/-! ## A030195.P134762056128932585

`A155116(n+1)+A155116(n+1)-A125145(n+1)`
-/

namespace A030195.P134762056128932585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155116 (n + 1) + (A155116 (n + 1) - A125145 (n + 1))

end

end A030195.P134762056128932585

namespace A030195

/-- `A155116(n+1)+A155116(n+1)-A125145(n+1)` -/
def P134762056128932585.Spec : Prop :=
  ∀ n, P134762056128932585.a n = A030195 n

end A030195

/-!
# A030196: Distinct elements occurring in triangle of Eulerian numbers (sorted).

The programs for A030196, there is no canonical definition to state claims against.
-/

/-! ## A030196.P3258067130630446520

`record[A344393(n+1)%A344378(2*(n+1))]`
-/

namespace A030196.P3258067130630446520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344393 (n + 1)) (A344378 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030196.P3258067130630446520

/-! ## A030196.P15498522387356366891

`A005187(eq[A071044(n+1), A222804(n)])`
-/

namespace A030196.P15498522387356366891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A030196.P15498522387356366891

/-!
# A030199: Expansion of x * Product_{k>=1} (1 - x^k) * (1 - x^(23*k)).

The programs for A030199, there is no canonical definition to state claims against.
-/

/-! ## A030199.P11906723523433852192

`(A028959(n+1)-A028930(n+1))/2`
-/

namespace A030199.P11906723523433852192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028959 (n + 1) - A028930 (n + 1) : ℚ) / 2

end

end A030199.P11906723523433852192

/-! ## A030199.P17549593417848811845

`A226378(A005383(n+1))²*A215029(A126845(n+1))`
-/

namespace A030199.P17549593417848811845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A005383 (n + 1)).toNat ^ 2 * A215029 (A126845 (n + 1)).toNat

end

end A030199.P17549593417848811845

/-! ## A030199.P14191184213954198474

`A237420(A073277(n+1))+A215029(A126845(n+1))`
-/

namespace A030199.P14191184213954198474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 (A073277 (n + 1)).toNat + A215029 (A126845 (n + 1)).toNat

end

end A030199.P14191184213954198474

/-! ## A030199.P15336115897342951826

`A215029(A126845(n+1))+A007814(A006512(2*n+3))`
-/

namespace A030199.P15336115897342951826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 (A126845 (n + 1)).toNat + A007814 (A006512 (2 * n + 3)).toNat

end

end A030199.P15336115897342951826

/-! ## A030199.P12306286639443089086

`A010052(n²)*A215029(A126845(n+1))`
-/

namespace A030199.P12306286639443089086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n ^ 2) * A215029 (A126845 (n + 1)).toNat

end

end A030199.P12306286639443089086

/-! ## A030199.P9914845810927079659

`A143431(n²)²*A215029(A126845(n+1))`
-/

namespace A030199.P9914845810927079659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143431 (n ^ 2) ^ 2 * A215029 (A126845 (n + 1)).toNat

end

end A030199.P9914845810927079659

/-! ## A030199.P2457761176432586834

`A109768((n+1)²)*A215029(A126845(n+1))`
-/

namespace A030199.P2457761176432586834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109768 ((n + 1) ^ 2) * A215029 (A126845 (n + 1)).toNat

end

end A030199.P2457761176432586834

/-! ## A030199.P16507683030575427355

`A057077(∑[2*n]+1)²*A215029(A126845(n+1))`
-/

namespace A030199.P16507683030575427355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2 * A215029 (A126845 (n + 1)).toNat

end

end A030199.P16507683030575427355

/-! ## A030199.P10186328729724621534

`A215029(gcd(A126845(n+1), A151878(n)))`
-/

namespace A030199.P10186328729724621534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 (Int.gcd (A126845 (n + 1)) (A151878 n))

end

end A030199.P10186328729724621534

/-! ## A030199.P17739394699691396159

`A215029(or(A126845(n+1), A151878(n)))`
-/

namespace A030199.P17739394699691396159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 (Int.lor (A126845 (n + 1)) (A151878 n)).toNat

end

end A030199.P17739394699691396159

