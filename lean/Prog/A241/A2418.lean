import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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

/-!
# A241800: Number of ballot sequences of length n having exactly seven descents.

The programs for A241800, there is no canonical definition to state claims against.
-/

/-! ## A241800.P2878683756187892004

`A238121(eq[32, A294775(n)])`
-/

namespace A241800.P2878683756187892004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241800.P2878683756187892004

/-! ## A241800.P12910001071719713066

`A238121(A000124(n+12)+6)`
-/

namespace A241800.P12910001071719713066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A000124 (n + 12) + 6).toNat

end

end A241800.P12910001071719713066

/-! ## A241800.P17809301753624991513

`A238121(A167614(n+2)+A017209(n+8))`
-/

namespace A241800.P17809301753624991513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A167614 (n + 2) + A017209 (n + 8)).toNat

end

end A241800.P17809301753624991513

/-! ## A241800.P18301932523781080851

`A238121(A000217(n+14)-A004275(n+11))`
-/

namespace A241800.P18301932523781080851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A000217 (n + 14) - A004275 (n + 11)).toNat

end

end A241800.P18301932523781080851

/-!
# A241804: Number of ballot sequences of length 2n having exactly n descents.

The programs for A241804, there is no canonical definition to state claims against.
-/

/-! ## A241804.P4835520261212535342

`A238121(∑[4*n])`
-/

namespace A241804.P4835520261212535342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A241804.P4835520261212535342

/-! ## A241804.P10350991637461911497

`or(A000007(n), A238121(A046092(n)))`
-/

namespace A241804.P10350991637461911497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A238121 (A046092 n).toNat)

end

end A241804.P10350991637461911497

/-! ## A241804.P3951775835098964355

`A238121(A046092(n))^A057428(n)²`
-/

namespace A241804.P3951775835098964355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238121 (A046092 n).toNat : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A241804.P3951775835098964355

/-! ## A241804.P11188169821994828189

`A008619(A282568(n))*A238121(A046092(n))`
-/

namespace A241804.P11188169821994828189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A282568 n).toNat * A238121 (A046092 n).toNat

end

end A241804.P11188169821994828189

/-! ## A241804.P14098893277746037166

`A238121(A046092(n))^A001221(A016116(2*n))`
-/

namespace A241804.P14098893277746037166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238121 (A046092 n).toNat : ℚ) ^ (A001221 (A016116 (2 * n)).toNat : ℤ)

end

end A241804.P14098893277746037166

/-!
# A241805: Number of ballot sequences of length 2n+1 having exactly n descents.

The programs for A241805, there is no canonical definition to state claims against.
-/

/-! ## A241805.P5107846769733746354

`A238121(A056220(n+1))`
-/

namespace A241805.P5107846769733746354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A056220 (n + 1)).toNat

end

end A241805.P5107846769733746354

/-! ## A241805.P5400555368820348374

`A238121(eq[2, A007913(n+1)])`
-/

namespace A241805.P5400555368820348374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241805.P5400555368820348374

/-! ## A241805.P6377720442000965827

`A238121(A001844(n)+2*n)`
-/

namespace A241805.P6377720442000965827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A001844 n + (2 * n : ℤ)).toNat

end

end A241805.P6377720442000965827

/-! ## A241805.P18160334823003142463

`A238121(A001844(n)+n+n)`
-/

namespace A241805.P18160334823003142463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A001844 n + (n : ℤ) + (n : ℤ)).toNat

end

end A241805.P18160334823003142463

/-! ## A241805.P17131295888304335013

`A238121(A000217(2*n+1)+n)`
-/

namespace A241805.P17131295888304335013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A000217 (2 * n + 1) + (n : ℤ)).toNat

end

end A241805.P17131295888304335013

/-!
# A241806: Two-colorings of triangular arrays under rotational symmetries.

The programs for A241806, there is no canonical definition to state claims against.
-/

/-! ## A241806.P8148877656637549205

`2^n*A008620(A006125(n))`
-/

namespace A241806.P8148877656637549205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A008620 (A006125 n).toNat

end

end A241806.P8148877656637549205

/-! ## A241806.P8202973960567433826

`A371176(A014500(n)+A004090(n))`
-/

namespace A241806.P8202973960567433826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371176 (A014500 n + A004090 n).toNat

end

end A241806.P8202973960567433826

/-!
# A241807: Numerators of c(n) = (n^2+n+2)/((n+1)*(n+2)*(n+3)) as defined in A241269.

The programs for A241807, the canonical program `A241807.P8361902451886184378` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241807 has offset 0).

The definition of A241807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241807.P8361902451886184378

`(∑[n]+1)/gcd(∑[n]+1, 2*(n+1)²)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A241807

/-- `(∑[n]+1)/gcd(∑[n]+1, 2*(n+1)²)` -/
def P8361902451886184378.Spec : Prop :=
  ∀ n, P8361902451886184378.a n = (A241807 n : ℚ)

end A241807

/-! ## A241807.P3284015133664083855

`lcm(∑[n]+1, 2*(n+1)²)/(2*(n+1)²)`
-/

namespace A241807.P3284015133664083855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (∑ j ∈ Finset.range (n + 1), f1 j + 1) (2 * (n + 1) ^ 2) : ℚ) / (2 * (n + 1) ^ 2 : ℚ)

end

end A241807.P3284015133664083855

namespace A241807

/-- `lcm(∑[n]+1, 2*(n+1)²)/(2*(n+1)²)` -/
def P3284015133664083855.Spec : Prop :=
  ∀ n, P3284015133664083855.a n = (A241807 n : ℚ)

end A241807

/-! ## A241807.P15852585566173371467

`A106609(A000124(n)*A040005(n))`
-/

namespace A241807.P15852585566173371467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A000124 n * A040005 n).toNat

end

end A241807.P15852585566173371467

namespace A241807

/-- `A106609(A000124(n)*A040005(n))` -/
def P15852585566173371467.Spec : Prop :=
  ∀ n, P15852585566173371467.a n = A241807 n

end A241807

/-! ## A241807.P2624740255619935443

`A106609(A040001(n)²*A000124(n))`
-/

namespace A241807.P2624740255619935443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A040001 n ^ 2 * A000124 n).toNat

end

end A241807.P2624740255619935443

namespace A241807

/-- `A106609(A040001(n)²*A000124(n))` -/
def P2624740255619935443.Spec : Prop :=
  ∀ n, P2624740255619935443.a n = A241807 n

end A241807

/-! ## A241807.P16603088853377020074

`A106609(A000124(n)*A040001(n)*A040001(n))`
-/

namespace A241807.P16603088853377020074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A000124 n * A040001 n * A040001 n).toNat

end

end A241807.P16603088853377020074

namespace A241807

/-- `A106609(A000124(n)*A040001(n)*A040001(n))` -/
def P16603088853377020074.Spec : Prop :=
  ∀ n, P16603088853377020074.a n = A241807 n

end A241807

/-!
# A241808: Numbers k such that (2*k)^3 - 3 is prime.

The programs for A241808, there is no canonical definition to state claims against.
-/

/-! ## A241808.P15742596066975587272

`A153974(n+1)/2`
-/

namespace A241808.P15742596066975587272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153974 (n + 1) : ℚ) / 2

end

end A241808.P15742596066975587272

/-! ## A241808.P15318950413205322979

`A000217(A153974(n+1)-1)%A153974(n+1)`
-/

namespace A241808.P15318950413205322979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A153974 (n + 1) - 1).toNat) (A153974 (n + 1))

end

end A241808.P15318950413205322979

/-! ## A241808.P866580964022531511

`A038572(A153974(n+1))`
-/

namespace A241808.P866580964022531511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A153974 (n + 1)).toNat

end

end A241808.P866580964022531511

/-! ## A241808.P12596970536671200690

`A278537(A153974(n+1))%A016052(n+1)`
-/

namespace A241808.P12596970536671200690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278537 (A153974 (n + 1)).toNat) (A016052 (n + 1))

end

end A241808.P12596970536671200690

/-! ## A241808.P4306693266177665248

`A278537(A153974(n+1)%A016768(n+1))`
-/

namespace A241808.P4306693266177665248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (Int.tmod (A153974 (n + 1)) (A016768 (n + 1))).toNat

end

end A241808.P4306693266177665248

/-! ## A241808.P1521698416858742002

`A004526(A153974(n+1)+1)`
-/

namespace A241808.P1521698416858742002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A153974 (n + 1) + 1).toNat

end

end A241808.P1521698416858742002

/-! ## A241808.P8340771638474452280

`A008619(A153974(n+1)-1)`
-/

namespace A241808.P8340771638474452280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A153974 (n + 1) - 1).toNat

end

end A241808.P8340771638474452280

/-! ## A241808.P4013940346713318442

`A110654(A153974(n+1)-1)`
-/

namespace A241808.P4013940346713318442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A153974 (n + 1) - 1).toNat

end

end A241808.P4013940346713318442

/-! ## A241808.P13174214372037656743

`A052938(A153974(n+1)-2)`
-/

namespace A241808.P13174214372037656743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A153974 (n + 1) - 2).toNat

end

end A241808.P13174214372037656743

/-! ## A241808.P937898008141217067

`A026741(A153974(n+1)+2)-1`
-/

namespace A241808.P937898008141217067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A153974 (n + 1) + 2).toNat - 1

end

end A241808.P937898008141217067

/-! ## A241808.P5317773153138890195

`A178804(A153974(n+1)+2)-1`
-/

namespace A241808.P5317773153138890195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178804 (A153974 (n + 1) + 2).toNat - 1

end

end A241808.P5317773153138890195

/-! ## A241808.P15456673963620087341

`A002265(2*A153974(n+1))`
-/

namespace A241808.P15456673963620087341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A153974 (n + 1)).toNat

end

end A241808.P15456673963620087341

/-! ## A241808.P5114946196438625564

`A002265(A153974(n+1)+A153974(n+1)+1)`
-/

namespace A241808.P5114946196438625564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A153974 (n + 1) + (A153974 (n + 1) + 1)).toNat

end

end A241808.P5114946196438625564

/-! ## A241808.P8572702253596746533

`record[A153974(A193739(n))/2]`
-/

namespace A241808.P8572702253596746533
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153974 (A193739 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241808.P8572702253596746533

/-!
# A241809: Semiprimes sp such that sp+2 is a prime.

The programs for A241809, there is no canonical definition to state claims against.
-/

/-! ## A241809.P17337505579237454283

`A063638(n+1)-2`
-/

namespace A241809.P17337505579237454283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063638 (n + 1) - 2

end

end A241809.P17337505579237454283

/-! ## A241809.P14801962135317883558

`filter[A040976(n+3), A359828(#)]`
-/

namespace A241809.P14801962135317883558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A241809.P14801962135317883558

/-! ## A241809.P16831591593534754856

`filter[A179384(n+3), A359828(#)]`
-/

namespace A241809.P16831591593534754856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179384 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A241809.P16831591593534754856

/-! ## A241809.P14113777390533624507

`filter[A238526(n+3), A359828(#)]`
-/

namespace A241809.P14113777390533624507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A241809.P14113777390533624507

/-! ## A241809.P15765242820873164434

`A000040(eq[2, A001222(A000040(n+2)-2)]+2)-2`
-/

namespace A241809.P15765242820873164434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000040 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2) - 2

end

end A241809.P15765242820873164434

/-! ## A241809.P15556282839134265604

`p?[A001358(n+1)+2]-2`
-/

namespace A241809.P15556282839134265604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A241809.P15556282839134265604

/-! ## A241809.P14102151298126304821

`∩[A001358(n+1), A040976(n+1)]`
-/

namespace A241809.P14102151298126304821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241809.P14102151298126304821

/-! ## A241809.P13706094271119705565

`∩[A001358(n+1), A158458(n+1)]`
-/

namespace A241809.P13706094271119705565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241809.P13706094271119705565

/-! ## A241809.P6407076328606454307

`∩[A001358(n+1), A179384(n+1)]`
-/

namespace A241809.P6407076328606454307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241809.P6407076328606454307

/-! ## A241809.P4303320542204893163

`∩[A001358(n+1), A238526(n+1)]`
-/

namespace A241809.P4303320542204893163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241809.P4303320542204893163

/-! ## A241809.P13411771087110940095

`filter[A158458(n+1), A064911(#)]`
-/

namespace A241809.P13411771087110940095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A241809.P13411771087110940095

/-! ## A241809.P10721253126800753866

`filter[A158458(n+1), A353480(#)]`
-/

namespace A241809.P10721253126800753866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A241809.P10721253126800753866

/-! ## A241809.P914744735628818798

`filter[A040976(n+2), A064911(#)]`
-/

namespace A241809.P914744735628818798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A241809.P914744735628818798

/-! ## A241809.P5622657055920554955

`filter[A179384(n+2), A064911(#)]`
-/

namespace A241809.P5622657055920554955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179384 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A241809.P5622657055920554955

/-! ## A241809.P1066048169088442769

`filter[A158458(n+2), A101040(#)]`
-/

namespace A241809.P1066048169088442769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158458 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A241809.P1066048169088442769

/-! ## A241809.P7930372590425857592

`filter[A179384(n+2), A101040(#)]`
-/

namespace A241809.P7930372590425857592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179384 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A241809.P7930372590425857592

/-! ## A241809.P1250432306266808756

`filter[A238526(n+2), A064911(#)]`
-/

namespace A241809.P1250432306266808756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A241809.P1250432306266808756

/-! ## A241809.P7969587046721470989

`filter[A040976(n+2), A353480(#)]`
-/

namespace A241809.P7969587046721470989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A241809.P7969587046721470989

/-! ## A241809.P3021708668503694068

`filter[A179384(n+2), A353480(#)]`
-/

namespace A241809.P3021708668503694068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179384 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A241809.P3021708668503694068

/-! ## A241809.P16087298379082989564

`filter[A238526(n+2), A353480(#)]`
-/

namespace A241809.P16087298379082989564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A241809.P16087298379082989564

/-!
# A241810: Number of balanced orbitals over n sectors.

The programs for A241810, there is no canonical definition to state claims against.
-/

/-! ## A241810.P13206914815809984004

`A274706(eq[A062869(n), A124010(2*n+3)])`
-/

namespace A241810.P13206914815809984004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062869 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274706 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A241810.P13206914815809984004

/-!
# A241812: 

The programs for A241812, there is no canonical definition to state claims against.
-/

/-! ## A241812.P14812580186517850036

`A115940(n+1)`
-/

namespace A241812.P14812580186517850036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115940 (n + 1)

end

end A241812.P14812580186517850036

/-! ## A241812.P17677821739423226570

`C(A115939(n+1)+1, 2)`
-/

namespace A241812.P17677821739423226570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A115939 (n + 1) + 1).toNat 2

end

end A241812.P17677821739423226570

/-!
# A241813: Numbers disqualified from being in A019505 for not being the smallest number with their respective number of divisors.

The programs for A241813, there is no canonical definition to state claims against.
-/

/-! ## A241813.P17449946961021984497

`2*A134865(A326704(2*(n+2)))`
-/

namespace A241813.P17449946961021984497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134865 (A326704 (2 * (n + 2))).toNat

end

end A241813.P17449946961021984497

/-!
# A241815: Irregular triangular array : t(n, k) = number of vertices of degree k in graph S(n) of strict partitions, where two partitions have an edge if and only if their intersection is empty.

The programs for A241815, there is no canonical definition to state claims against.
-/

/-! ## A241815.P7024846445554625838

`A260452(A304836(n+4)+A180662(n))`
-/

namespace A241815.P7024846445554625838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260452 (A304836 (n + 4) + A180662 n).toNat

end

end A241815.P7024846445554625838

/-! ## A241815.P10458976494774171576

`gcd(A153287(n), A356230(A201463(n+5)))`
-/

namespace A241815.P10458976494774171576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A153287 n) (A356230 (A201463 (n + 5)).toNat)

end

end A241815.P10458976494774171576

/-! ## A241815.P11680306462790766497

`gcd(A238337(n+3), A342309(A210601(n+1)))`
-/

namespace A241815.P11680306462790766497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A238337 (n + 3)) (A342309 (A210601 (n + 1)).toNat)

end

end A241815.P11680306462790766497

/-! ## A241815.P9135463514451510440

`gcd(A059101(2*(n+2)), A159824(A279095(n+1)))`
-/

namespace A241815.P9135463514451510440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059101 (2 * (n + 2))) (A159824 (A279095 (n + 1)).toNat)

end

end A241815.P9135463514451510440

/-! ## A241815.P9996321922359345312

`gcd(A156563(n+1), A164721(A128735(n)))`
-/

namespace A241815.P9996321922359345312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156563 (n + 1)) (A164721 (A128735 n).toNat)

end

end A241815.P9996321922359345312

/-!
# A241816: a(n) is the largest number smaller than n that can be obtained by swapping two adjacent bits in n, or n if no such number exists.

The programs for A241816, the canonical program `A241816.P2851650172626581552` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241816 has offset 0).

The definition of A241816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241816.P5489891082980335907

`n-and(n, -and(n, n+1))/2`
-/

namespace A241816.P5489891082980335907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (Int.land (n : ℤ) (-(Nat.land n (n + 1) : ℤ)) : ℚ) / 2

end

end A241816.P5489891082980335907

namespace A241816

/-- `n-and(n, -and(n, n+1))/2` -/
def P5489891082980335907.Spec : Prop :=
  ∀ n, P5489891082980335907.a n = (A241816 n : ℚ)

end A241816

/-! ## A241816.P2851650172626581552

`A214546(and(n, n+1))-1+n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A241816

/-- `A214546(and(n, n+1))-1+n` -/
def P2851650172626581552.Spec : Prop :=
  ∀ n, P2851650172626581552.a n = A241816 n

theorem P2851650172626581552.correct : P2851650172626581552.Spec := by
  intro n
  simp only [A241816]

end A241816

/-! ## A241816.P17080783612118188088

`and(and(n, n+1)-1, A269170(n))`
-/

namespace A241816.P17080783612118188088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((Nat.land n (n + 1) : ℤ) - 1) (A269170 n)

end

end A241816.P17080783612118188088

namespace A241816

/-- `and(and(n, n+1)-1, A269170(n))` -/
def P17080783612118188088.Spec : Prop :=
  ∀ n, P17080783612118188088.a n = A241816 n

end A241816

/-! ## A241816.P17533777633598606277

`A243109(A129760(n+1))-A129760(n+1)+n`
-/

namespace A241816.P17533777633598606277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243109 (A129760 (n + 1)).toNat - A129760 (n + 1) + (n : ℤ)

end

end A241816.P17533777633598606277

namespace A241816

/-- `A243109(A129760(n+1))-A129760(n+1)+n` -/
def P17533777633598606277.Spec : Prop :=
  ∀ n, P17533777633598606277.a n = A241816 n

end A241816

/-! ## A241816.P367576973377855418

`n-A131577(A285099(n+1))`
-/

namespace A241816.P367576973377855418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A131577 (A285099 (n + 1)).toNat

end

end A241816.P367576973377855418

namespace A241816

/-- `n-A131577(A285099(n+1))` -/
def P367576973377855418.Spec : Prop :=
  ∀ n, P367576973377855418.a n = A241816 n

end A241816

/-! ## A241816.P11002100994831917267

`A026741(and(n, and(n, n+1)-1)+n)`
-/

namespace A241816.P11002100994831917267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.land (n : ℤ) ((Nat.land n (n + 1) : ℤ) - 1) + (n : ℤ)).toNat

end

end A241816.P11002100994831917267

namespace A241816

/-- `A026741(and(n, and(n, n+1)-1)+n)` -/
def P11002100994831917267.Spec : Prop :=
  ∀ n, P11002100994831917267.a n = A241816 n

end A241816

/-! ## A241816.P17833700009628115062

`A064680(and(n, and(n, n+1)-1)+n)`
-/

namespace A241816.P17833700009628115062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (Int.land (n : ℤ) ((Nat.land n (n + 1) : ℤ) - 1) + (n : ℤ)).toNat

end

end A241816.P17833700009628115062

namespace A241816

/-- `A064680(and(n, and(n, n+1)-1)+n)` -/
def P17833700009628115062.Spec : Prop :=
  ∀ n, P17833700009628115062.a n = A241816 n

end A241816

/-! ## A241816.P3057732366216132351

`n-A268040(A000982(and(n, n+1)))`
-/

namespace A241816.P3057732366216132351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A268040 (A000982 (Nat.land n (n + 1))).toNat

end

end A241816.P3057732366216132351

namespace A241816

/-- `n-A268040(A000982(and(n, n+1)))` -/
def P3057732366216132351.Spec : Prop :=
  ∀ n, P3057732366216132351.a n = A241816 n

end A241816

/-! ## A241816.P7087209108748827329

`n-A171941(and(n, n+1)+1)`
-/

namespace A241816.P7087209108748827329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A171941 (Nat.land n (n + 1) + 1)

end

end A241816.P7087209108748827329

namespace A241816

/-- `n-A171941(and(n, n+1)+1)` -/
def P7087209108748827329.Spec : Prop :=
  ∀ n, P7087209108748827329.a n = A241816 n

end A241816

/-! ## A241816.P16010641721412033493

`n-and(n, A263991(n+1))/2`
-/

namespace A241816.P16010641721412033493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (Int.land (n : ℤ) (A263991 (n + 1)) : ℚ) / 2

end

end A241816.P16010641721412033493

namespace A241816

/-- `n-and(n, A263991(n+1))/2` -/
def P16010641721412033493.Spec : Prop :=
  ∀ n, P16010641721412033493.a n = (A241816 n : ℚ)

end A241816

/-!
# A241817: Semiprimes sp such that sp-3 is prime.

The programs for A241817, there is no canonical definition to state claims against.
-/

/-! ## A241817.P5375684862494934380

`2*A063908(n+1)`
-/

namespace A241817.P5375684862494934380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063908 (n + 1)

end

end A241817.P5375684862494934380

/-! ## A241817.P5136318716295010289

`A092109(n+1)+3`
-/

namespace A241817.P5136318716295010289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092109 (n + 1) + 3

end

end A241817.P5136318716295010289

/-! ## A241817.P11243059699262371401

`lcm(2, A063908(A000027(n+1)))`
-/

namespace A241817.P11243059699262371401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A063908 (A000027 (n + 1)).toNat)

end

end A241817.P11243059699262371401

/-! ## A241817.P2478406547125876686

`A226755(n+1)/A063908(n+1)+3`
-/

namespace A241817.P2478406547125876686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226755 (n + 1) : ℚ) / (A063908 (n + 1) : ℚ) + 3

end

end A241817.P2478406547125876686

/-! ## A241817.P11548512620331066122

`A063908(n+1)+A063908(abs(xor(n, -1)))`
-/

namespace A241817.P11548512620331066122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (n + 1) + A063908 |Int.xor (n : ℤ) (-1)|.toNat

end

end A241817.P11548512620331066122

/-! ## A241817.P14912310958448354106

`lcm(A010141(xor(n, n+1)), A063908(n+1))`
-/

namespace A241817.P14912310958448354106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010141 (Nat.xor n (n + 1))) (A063908 (n + 1))

end

end A241817.P14912310958448354106

/-! ## A241817.P17423273313919132424

`A063908(A000027(n+1))+A063908(n+1)`
-/

namespace A241817.P17423273313919132424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (A000027 (n + 1)).toNat + A063908 (n + 1)

end

end A241817.P17423273313919132424

/-! ## A241817.P3859664161255599030

`p?[A015819(n+1)]+3`
-/

namespace A241817.P3859664161255599030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 3

end

end A241817.P3859664161255599030

/-! ## A241817.P12273860772237455730

`p?[A308169(n+1)]+3`
-/

namespace A241817.P12273860772237455730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 3

end

end A241817.P12273860772237455730

/-! ## A241817.P17834335691561176516

`2*p?[A090670(n+1)]`
-/

namespace A241817.P17834335691561176516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241817.P17834335691561176516

/-! ## A241817.P15616998647183728806

`2*p?[A104635(n+1)+2]`
-/

namespace A241817.P15616998647183728806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241817.P15616998647183728806

/-! ## A241817.P7934939540270202143

`2*∩[A042986(n+1), A090670(n+1)]`
-/

namespace A241817.P7934939540270202143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241817.P7934939540270202143

/-! ## A241817.P13145900069867658294

`p?[2*A000040(n+1)-3]+3`
-/

namespace A241817.P13145900069867658294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 3

end

end A241817.P13145900069867658294

/-! ## A241817.P2865618572360573464

`2*∩[A000040(n+1), A090670(n+1)]`
-/

namespace A241817.P2865618572360573464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241817.P2865618572360573464

/-! ## A241817.P14300008739503898742

`2*∩[A006005(n+1), A090670(n+1)]`
-/

namespace A241817.P14300008739503898742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241817.P14300008739503898742

/-! ## A241817.P16138961498146725398

`2*∩[A008578(n+1), A090670(n+1)]`
-/

namespace A241817.P16138961498146725398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241817.P16138961498146725398

/-! ## A241817.P10116832530193507125

`2*∩[A046022(n+1), A090670(n+1)]`
-/

namespace A241817.P10116832530193507125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241817.P10116832530193507125

/-! ## A241817.P3781383098324796312

`2*∩[A001751(n+1), A090670(n+1)]`
-/

namespace A241817.P3781383098324796312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241817.P3781383098324796312

/-! ## A241817.P7790559574909845298

`record[2*A023576(n+2)]`
-/

namespace A241817.P7790559574909845298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023576 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241817.P7790559574909845298

/-! ## A241817.P7565940038952438661

`record[2*A023578(n+2)]`
-/

namespace A241817.P7565940038952438661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241817.P7565940038952438661

/-!
# A241818: Number of partitions p = [x(1), ..., x(k)], where x(1) >= x(2) >= ... >= x(k), of n such that max(x(i) - x(i-1)) < number of distinct parts of p.

The programs for A241818, there is no canonical definition to state claims against.
-/

/-! ## A241818.P4677267015411079195

`A000041(n)-A241821(n)`
-/

namespace A241818.P4677267015411079195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241821 n

end

end A241818.P4677267015411079195

/-! ## A241818.P1563043856491716731

`A213598(n)-A241821(n)`
-/

namespace A241818.P1563043856491716731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A241821 n

end

end A241818.P1563043856491716731

/-! ## A241818.P7027798000863328331

`A241819(n)-A241820(n)`
-/

namespace A241818.P7027798000863328331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241819 n - A241820 n

end

end A241818.P7027798000863328331

/-! ## A241818.P6835373057892425587

`sqrt(A001255(n))-A241821(n)`
-/

namespace A241818.P6835373057892425587
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241821 n : ℝ)

end

end A241818.P6835373057892425587

/-! ## A241818.P6219783362605342773

`∑[A002865(n)]-A241821(n)`
-/

namespace A241818.P6219783362605342773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241821 n

end

end A241818.P6219783362605342773

/-!
# A241819: Number of partitions p = [x(1), ..., x(k)], where x(1) >= x(2) >= ... >= x(k), of n such that max(x(i) - x(i-1)) <= number of distinct parts of p.

The programs for A241819, there is no canonical definition to state claims against.
-/

/-! ## A241819.P8105329208175801728

`A241818(n)+A241820(n)`
-/

namespace A241819.P8105329208175801728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241818 n + A241820 n

end

end A241819.P8105329208175801728

/-! ## A241819.P16369857340641994183

`A000041(n)-A241822(n)`
-/

namespace A241819.P16369857340641994183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241822 n

end

end A241819.P16369857340641994183

/-! ## A241819.P6533637238897472267

`A213598(n)-A241822(n)`
-/

namespace A241819.P6533637238897472267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A241822 n

end

end A241819.P6533637238897472267

/-! ## A241819.P1494851576867984666

`sqrt(A001255(n))-A241822(n)`
-/

namespace A241819.P1494851576867984666
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241822 n : ℝ)

end

end A241819.P1494851576867984666

/-! ## A241819.P4717920864622272185

`∑[A002865(n)]-A241822(n)`
-/

namespace A241819.P4717920864622272185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241822 n

end

end A241819.P4717920864622272185

/-!
# A241820: Number of partitions p = [x(1), ..., x(k)], where x(1) >= x(2) >= ... >= x(k), of n such that max(x(i) - x(i-1)) = number of distinct parts of p.

The programs for A241820, there is no canonical definition to state claims against.
-/

/-! ## A241820.P7646922189287530482

`A241819(n)-A241818(n)`
-/

namespace A241820.P7646922189287530482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241819 n - A241818 n

end

end A241820.P7646922189287530482

/-! ## A241820.P8801689339794604144

`A241821(n)-A241822(n)`
-/

namespace A241820.P8801689339794604144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241821 n - A241822 n

end

end A241820.P8801689339794604144

/-! ## A241820.P16393158081230825930

`A241819(xor(1, xor(1, n)))%A241818(n)`
-/

namespace A241820.P16393158081230825930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241819 (Nat.xor 1 (Nat.xor 1 n))) (A241818 n)

end

end A241820.P16393158081230825930

/-! ## A241820.P1018959092323836192

`A241819(A028310(n))%A241818(n)`
-/

namespace A241820.P1018959092323836192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241819 (A028310 n).toNat) (A241818 n)

end

end A241820.P1018959092323836192

/-! ## A241820.P1670187587405062848

`A000041(n)-(A241822(n)+A241818(n))`
-/

namespace A241820.P1670187587405062848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241822 n + A241818 n)

end

end A241820.P1670187587405062848

/-!
# A241821: Number of partitions p = [x(1), ..., x(k)], where x(1) >= x(2) >= ... >= x(k), of n such that max(x(i) - x(i-1)) >= number of distinct parts of p.

The programs for A241821, there is no canonical definition to state claims against.
-/

/-! ## A241821.P15787936145628966939

`A241820(n)+A241822(n)`
-/

namespace A241821.P15787936145628966939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241820 n + A241822 n

end

end A241821.P15787936145628966939

/-! ## A241821.P14858056874764036086

`A000041(n)-A241818(n)`
-/

namespace A241821.P14858056874764036086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241818 n

end

end A241821.P14858056874764036086

/-! ## A241821.P2563972320334960898

`A213598(n)-A241818(n)`
-/

namespace A241821.P2563972320334960898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A241818 n

end

end A241821.P2563972320334960898

/-! ## A241821.P9572007964385705172

`sqrt(A001255(n))-A241818(n)`
-/

namespace A241821.P9572007964385705172
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241818 n : ℝ)

end

end A241821.P9572007964385705172

/-! ## A241821.P13285691430239931707

`∑[A002865(n)]-A241818(n)`
-/

namespace A241821.P13285691430239931707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241818 n

end

end A241821.P13285691430239931707

/-!
# A241822: Number of partitions p = [x(1), ..., x(k)], where x(1) >= x(2) >= ... >= x(k), of n such that max(x(i) - x(i-1)) > number of distinct parts of p.

The programs for A241822, there is no canonical definition to state claims against.
-/

/-! ## A241822.P10889436452245970124

`A241821(n)-A241820(n)`
-/

namespace A241822.P10889436452245970124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241821 n - A241820 n

end

end A241822.P10889436452245970124

/-! ## A241822.P12476869065172270726

`A000041(n)-A241819(n)`
-/

namespace A241822.P12476869065172270726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241819 n

end

end A241822.P12476869065172270726

/-! ## A241822.P15016900861341089895

`A213598(n)-A241819(n)`
-/

namespace A241822.P15016900861341089895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A241819 n

end

end A241822.P15016900861341089895

/-! ## A241822.P10956801112963251298

`sqrt(A001255(n))-A241819(n)`
-/

namespace A241822.P10956801112963251298
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241819 n : ℝ)

end

end A241822.P10956801112963251298

/-! ## A241822.P1864772881549334141

`∑[A002865(n)]-A241819(n)`
-/

namespace A241822.P1864772881549334141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241819 n

end

end A241822.P1864772881549334141

/-!
# A241823: Number of partitions p = [x(1), ..., x(k)], where x(1) >= x(2) >= ... >= x(k), of n such that min(x(i) - x(i-1)) < number of distinct parts of p.

The programs for A241823, there is no canonical definition to state claims against.
-/

/-! ## A241823.P988352865803575288

`A000041(n)-A241826(n)`
-/

namespace A241823.P988352865803575288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241826 n

end

end A241823.P988352865803575288

/-! ## A241823.P190650423830482856

`A213598(n)-A241826(n)`
-/

namespace A241823.P190650423830482856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A241826 n

end

end A241823.P190650423830482856

/-! ## A241823.P1801455207250392326

`A241824(n)-A241825(n)`
-/

namespace A241823.P1801455207250392326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241824 n - A241825 n

end

end A241823.P1801455207250392326

/-! ## A241823.P8549508357292709845

`sqrt(A001255(n))-A241826(n)`
-/

namespace A241823.P8549508357292709845
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241826 n : ℝ)

end

end A241823.P8549508357292709845

/-! ## A241823.P6330445777670459965

`∑[A002865(n)]-A241826(n)`
-/

namespace A241823.P6330445777670459965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241826 n

end

end A241823.P6330445777670459965

/-!
# A241824: Number of partitions p = [x(1), ..., x(k)], where x(1) >= x(2) >= ... >= x(k), of n such that min(x(i) - x(i-1)) <= number of distinct parts of p.

The programs for A241824, there is no canonical definition to state claims against.
-/

/-! ## A241824.P8153162125822498910

`A241823(n)+A241825(n)`
-/

namespace A241824.P8153162125822498910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241823 n + A241825 n

end

end A241824.P8153162125822498910

/-! ## A241824.P5433230038892985946

`A000041(n)-A241827(n)`
-/

namespace A241824.P5433230038892985946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241827 n

end

end A241824.P5433230038892985946

/-! ## A241824.P7461837204268013119

`A213598(n)-A241827(n)`
-/

namespace A241824.P7461837204268013119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A241827 n

end

end A241824.P7461837204268013119

/-! ## A241824.P11510891190373868285

`sqrt(A001255(n))-A241827(n)`
-/

namespace A241824.P11510891190373868285
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241827 n : ℝ)

end

end A241824.P11510891190373868285

/-! ## A241824.P12348046018318435042

`∑[A002865(n)]-A241827(n)`
-/

namespace A241824.P12348046018318435042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241827 n

end

end A241824.P12348046018318435042

/-!
# A241825: Number of partitions p = [x(1), ..., x(k)], where x(1) >= x(2) >= ... >= x(k), of n such that min(x(i) - x(i-1)) = number of distinct parts of p.

The programs for A241825, there is no canonical definition to state claims against.
-/

/-! ## A241825.P12770319577452446673

`A241826(n)-A241827(n)`
-/

namespace A241825.P12770319577452446673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241826 n - A241827 n

end

end A241825.P12770319577452446673

/-! ## A241825.P12769147719119681608

`A241824(n)-A241823(n)`
-/

namespace A241825.P12769147719119681608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241824 n - A241823 n

end

end A241825.P12769147719119681608

/-! ## A241825.P17988757878853490333

`A000041(n)-(A241827(n)+A241823(n))`
-/

namespace A241825.P17988757878853490333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241827 n + A241823 n)

end

end A241825.P17988757878853490333

/-! ## A241825.P9032801478619613233

`A241824(n)+A241826(n)-A000041(n)`
-/

namespace A241825.P9032801478619613233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241824 n + (A241826 n - A000041 n)

end

end A241825.P9032801478619613233

/-! ## A241825.P16153965115722192795

`A213598(n)-(A241827(n)+A241823(n))`
-/

namespace A241825.P16153965115722192795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - (A241827 n + A241823 n)

end

end A241825.P16153965115722192795

/-!
# A241826: Number of partitions p = [x(1), ..., x(k)], where x(1) >= x(2) >= ... >= x(k), of n such that min(x(i) - x(i-1)) >= number of distinct parts of p.

The programs for A241826, there is no canonical definition to state claims against.
-/

/-! ## A241826.P1985501630028019803

`A241825(n)+A241827(n)`
-/

namespace A241826.P1985501630028019803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241825 n + A241827 n

end

end A241826.P1985501630028019803

/-! ## A241826.P6003334007959498725

`A000041(n)-A241823(n)`
-/

namespace A241826.P6003334007959498725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241823 n

end

end A241826.P6003334007959498725

/-! ## A241826.P13061738355398311182

`A213598(n)-A241823(n)`
-/

namespace A241826.P13061738355398311182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A241823 n

end

end A241826.P13061738355398311182

/-! ## A241826.P10909802990255145665

`sqrt(A001255(n))-A241823(n)`
-/

namespace A241826.P10909802990255145665
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241823 n : ℝ)

end

end A241826.P10909802990255145665

/-! ## A241826.P10155364706162043771

`∑[A002865(n)]-A241823(n)`
-/

namespace A241826.P10155364706162043771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241823 n

end

end A241826.P10155364706162043771

/-!
# A241827: Number of partitions p = [x(1), ..., x(k)], where x(1) >= x(2) >= ... >= x(k), of n such that min(x(i) - x(i-1)) > number of distinct parts of p.

The programs for A241827, there is no canonical definition to state claims against.
-/

/-! ## A241827.P8521005468730276454

`A241826(n)-A241825(n)`
-/

namespace A241827.P8521005468730276454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241826 n - A241825 n

end

end A241827.P8521005468730276454

/-! ## A241827.P16966895949123117491

`A241826(n)+A057428(n)*A241825(n)`
-/

namespace A241827.P16966895949123117491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241826 n + A057428 n * A241825 n

end

end A241827.P16966895949123117491

/-! ## A241827.P10023651539676666473

`A000041(n)-A241824(n)`
-/

namespace A241827.P10023651539676666473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241824 n

end

end A241827.P10023651539676666473

/-! ## A241827.P7688298144794153225

`A213598(n)-A241824(n)`
-/

namespace A241827.P7688298144794153225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A241824 n

end

end A241827.P7688298144794153225

/-! ## A241827.P10445953870750727946

`sqrt(A001255(n))-A241824(n)`
-/

namespace A241827.P10445953870750727946
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241824 n : ℝ)

end

end A241827.P10445953870750727946

/-!
# A241828: Number of partitions p = [x(1), ..., x(k)], where x(1) >= x(2) >= ... >= x(k), of n such that max(x(i) - x(i-1)) < number of parts of p.

The programs for A241828, there is no canonical definition to state claims against.
-/

/-! ## A241828.P16480239051853768125

`A000041(n)-A241831(n)`
-/

namespace A241828.P16480239051853768125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241831 n

end

end A241828.P16480239051853768125

/-! ## A241828.P13247886918906564279

`A213598(n)-A241831(n)`
-/

namespace A241828.P13247886918906564279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A241831 n

end

end A241828.P13247886918906564279

/-! ## A241828.P12505761117164189412

`A241829(n)-A241830(n)`
-/

namespace A241828.P12505761117164189412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241829 n - A241830 n

end

end A241828.P12505761117164189412

/-! ## A241828.P16746057696961358171

`sqrt(A001255(n))-A241831(n)`
-/

namespace A241828.P16746057696961358171
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241831 n : ℝ)

end

end A241828.P16746057696961358171

/-! ## A241828.P9753552530256777698

`∑[A002865(n)]-A241831(n)`
-/

namespace A241828.P9753552530256777698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241831 n

end

end A241828.P9753552530256777698

/-!
# A241829: Number of partitions p = [x(1), ..., x(k)], where x(1) >= x(2) >= ... >= x(k), of n such that max(x(i) - x(i-1)) <= number of parts of p.

The programs for A241829, there is no canonical definition to state claims against.
-/

/-! ## A241829.P12687346932975159832

`A241828(n)+A241830(n)`
-/

namespace A241829.P12687346932975159832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241828 n + A241830 n

end

end A241829.P12687346932975159832

/-! ## A241829.P12131899467603075725

`A000041(n)-A241832(n)`
-/

namespace A241829.P12131899467603075725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241832 n

end

end A241829.P12131899467603075725

/-! ## A241829.P14516223947752758493

`A213598(n)-A241832(n)`
-/

namespace A241829.P14516223947752758493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A241832 n

end

end A241829.P14516223947752758493

/-! ## A241829.P1335946561686300233

`sqrt(A001255(n))-A241832(n)`
-/

namespace A241829.P1335946561686300233
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241832 n : ℝ)

end

end A241829.P1335946561686300233

/-! ## A241829.P14143409035620520560

`∑[A002865(n)]-A241832(n)`
-/

namespace A241829.P14143409035620520560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241832 n

end

end A241829.P14143409035620520560

/-!
# A241830: Number of partitions p = [x(1), ..., x(k)], where x(1) >= x(2) >= ... >= x(k), of n such that max(x(i) - x(i-1)) = number of parts of p.

The programs for A241830, there is no canonical definition to state claims against.
-/

/-! ## A241830.P11681096230257592660

`A241831(n)-A241832(n)`
-/

namespace A241830.P11681096230257592660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241831 n - A241832 n

end

end A241830.P11681096230257592660

/-! ## A241830.P1116191394796664338

`A241829(n)-A241828(n)`
-/

namespace A241830.P1116191394796664338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241829 n - A241828 n

end

end A241830.P1116191394796664338

/-! ## A241830.P9923097619910198475

`A241829(char[1]+n)%A241828(n)`
-/

namespace A241830.P9923097619910198475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241829 ((if ∃ j, f1 j = n then 1 else 0) + n)) (A241828 n)

end

end A241830.P9923097619910198475

/-! ## A241830.P130659928537902090

`A000041(n)-(A241832(n)+A241828(n))`
-/

namespace A241830.P130659928537902090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241832 n + A241828 n)

end

end A241830.P130659928537902090

/-! ## A241830.P5881925869304668874

`A241829(n)+A241831(n)-A000041(n)`
-/

namespace A241830.P5881925869304668874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241829 n + (A241831 n - A000041 n)

end

end A241830.P5881925869304668874

/-!
# A241831: Number of partitions p = [x(1), ..., x(k)], where x(1) >= x(2) >= ... >= x(k), of n such that max(x(i) - x(i-1)) >= number of parts of p.

The programs for A241831, there is no canonical definition to state claims against.
-/

/-! ## A241831.P18200134582339343061

`A241830(n)+A241832(n)`
-/

namespace A241831.P18200134582339343061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241830 n + A241832 n

end

end A241831.P18200134582339343061

/-! ## A241831.P10292034760162630765

`1-(A304042(n)-A241832(n)-A241830(n))`
-/

namespace A241831.P10292034760162630765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A304042 n - A241832 n - A241830 n)

end

end A241831.P10292034760162630765

/-! ## A241831.P15850270411477153477

`A102376(n)%3-(1-A241832(n)-A241830(n))`
-/

namespace A241831.P15850270411477153477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102376 n) 3 - (1 - A241832 n - A241830 n)

end

end A241831.P15850270411477153477

/-! ## A241831.P13018018065571178120

`A023443(Δ[n²]-n)-(n-A241832(n)-A241830(n))`
-/

namespace A241831.P13018018065571178120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - ((n : ℤ) - A241832 n - A241830 n)

end

end A241831.P13018018065571178120

/-! ## A241831.P8586149359460145740

`A241830(n)-(A241830(A304042(n))-A241832(n))`
-/

namespace A241831.P8586149359460145740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241830 n - (A241830 (A304042 n).toNat - A241832 n)

end

end A241831.P8586149359460145740

/-! ## A241831.P9603360598487737988

`A000041(n)%(A000041(n)-A241832(n)-A241830(n))`
-/

namespace A241831.P9603360598487737988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) (A000041 n - A241832 n - A241830 n)

end

end A241831.P9603360598487737988

/-! ## A241831.P3134059570448569229

`A213598(n)%(A213598(n)-A241832(n)-A241830(n))`
-/

namespace A241831.P3134059570448569229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213598 n) (A213598 n - A241832 n - A241830 n)

end

end A241831.P3134059570448569229

/-! ## A241831.P6842281283034157795

`A139582(n)/2-(A000041(n)-A241832(n)-A241830(n))`
-/

namespace A241831.P6842281283034157795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A000041 n - A241832 n - A241830 n : ℚ)

end

end A241831.P6842281283034157795

/-! ## A241831.P5446825873685348788

`A133041(n)-n-(A000041(n)-A241832(n)-A241830(n))`
-/

namespace A241831.P5446825873685348788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (n : ℤ) - (A000041 n - A241832 n - A241830 n)

end

end A241831.P5446825873685348788

/-!
# A241832: Number of partitions p = [x(1), ..., x(k)], where x(1) >= x(2) >= ... >= x(k), of n such that max(x(i) - x(i-1)) > number of parts of p.

The programs for A241832, there is no canonical definition to state claims against.
-/

/-! ## A241832.P4360865806744298423

`A241831(n)-A241830(n)`
-/

namespace A241832.P4360865806744298423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241831 n - A241830 n

end

end A241832.P4360865806744298423

/-! ## A241832.P5318522995478304485

`A000041(n)-A241829(n)`
-/

namespace A241832.P5318522995478304485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241829 n

end

end A241832.P5318522995478304485

/-! ## A241832.P9430625773614538852

`A213598(n)-A241829(n)`
-/

namespace A241832.P9430625773614538852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A241829 n

end

end A241832.P9430625773614538852

/-! ## A241832.P889855120254431171

`sqrt(A001255(n))-A241829(n)`
-/

namespace A241832.P889855120254431171
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241829 n : ℝ)

end

end A241832.P889855120254431171

/-! ## A241832.P8021748986341780778

`∑[A002865(n)]-A241829(n)`
-/

namespace A241832.P8021748986341780778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241829 n

end

end A241832.P8021748986341780778

/-!
# A241833: Greedy residue sequence of squares 2^2, 3^2, 4^2, ...

The programs for A241833, there is no canonical definition to state claims against.
-/

/-! ## A241833.P11375071633337792638

`A242305((n+2)²)`
-/

namespace A241833.P11375071633337792638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242305 ((n + 2) ^ 2)

end

end A241833.P11375071633337792638

/-! ## A241833.P3347945412729943820

`dr(A242305(A000290(n+2)))`
-/

namespace A241833.P3347945412729943820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A242305 (A000290 (n + 2)).toNat)

end

end A241833.P3347945412729943820

/-! ## A241833.P11609526489049331688

`A242305(A303054(3*n+2))%6`
-/

namespace A241833.P11609526489049331688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242305 (A303054 (3 * n + 2)).toNat) 6

end

end A241833.P11609526489049331688

/-! ## A241833.P691799364316384366

`C(A242305(A000290(n+2)), A054977(n))`
-/

namespace A241833.P691799364316384366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A242305 (A000290 (n + 2)).toNat).toNat (A054977 n).toNat

end

end A241833.P691799364316384366

/-! ## A241833.P16052119320287919192

`A007318(∑[n])*A242305(A000290(n+2))`
-/

namespace A241833.P16052119320287919192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A242305 (A000290 (n + 2)).toNat

end

end A241833.P16052119320287919192

/-!
# A241834: Number of terms in the greedy residue sum for n^2.

The programs for A241834, there is no canonical definition to state claims against.
-/

/-! ## A241834.P11601687555149677954

`A242306((n+2)²)`
-/

namespace A241834.P11601687555149677954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242306 ((n + 2) ^ 2)

end

end A241834.P11601687555149677954

/-! ## A241834.P9124250864041043969

`A001221(A020639(n+1)*A173965(n+2))`
-/

namespace A241834.P9124250864041043969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A020639 (n + 1) * A173965 (n + 2)).toNat

end

end A241834.P9124250864041043969

/-! ## A241834.P8130207425345365031

`A261461(lt[A276625(n+2), A090085(n+1)])`
-/

namespace A241834.P8130207425345365031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A241834.P8130207425345365031

/-! ## A241834.P7970834685197597569

`A001221(A138994(3*n+4)*A274035(n+1))`
-/

namespace A241834.P7970834685197597569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A138994 (3 * n + 4) * A274035 (n + 1)).toNat

end

end A241834.P7970834685197597569

/-! ## A241834.P801398071999401588

`A238949(A320195(3*n+1)%A214504(3*(n+2)))`
-/

namespace A241834.P801398071999401588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238949 (Int.tmod (A320195 (3 * n + 1)) (A214504 (3 * (n + 2)))).toNat

end

end A241834.P801398071999401588

/-!
# A241835: Numbers k such that k^2 is s-greedy summable, where s is the sequence A000290 of squares.

The programs for A241835, there is no canonical definition to state claims against.
-/

/-! ## A241835.P16156771833094164626

`sqrt(A241836(n+2))`
-/

namespace A241835.P16156771833094164626
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A241836 (n + 2) : ℝ)

end

end A241835.P16156771833094164626

/-! ## A241835.P7176466011823638753

`eq[0, A241833(n+2)]+2`
-/

namespace A241835.P7176466011823638753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241833 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A241835.P7176466011823638753

/-! ## A241835.P15018512767426714259

`record[n+5-A241833(n+5)]`
-/

namespace A241835.P15018512767426714259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) - A241833 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241835.P15018512767426714259

/-! ## A241835.P7707209128124514708

`root(A241836(n+2), A133265(A133265(n)))`
-/

namespace A241835.P7707209128124514708
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A241836 (n + 2) : ℝ) ^ (1 / (A133265 (A133265 n).toNat : ℝ))

end

end A241835.P7707209128124514708

/-! ## A241835.P2783557878908853036

`eq[0, A241833(A233583(n+1))]`
-/

namespace A241835.P2783557878908853036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241833 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241835.P2783557878908853036

/-! ## A241835.P11189723624523818807

`A056926(A241836(n+2))%A167614(n+1)`
-/

namespace A241835.P11189723624523818807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056926 (A241836 (n + 2)).toNat) (A167614 (n + 1))

end

end A241835.P11189723624523818807

/-! ## A241835.P2327127612312619132

`A329888(A241836(n+2)%A016971(n))`
-/

namespace A241835.P2327127612312619132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (Int.tmod (A241836 (n + 2)) (A016971 n)).toNat

end

end A241835.P2327127612312619132

/-! ## A241835.P4783867334185060008

`A329888(A241836(n+2))%A036323(n+1)`
-/

namespace A241835.P4783867334185060008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329888 (A241836 (n + 2)).toNat) (A036323 (n + 1))

end

end A241835.P4783867334185060008

/-! ## A241835.P2432247352449153812

`A329888(2*A241836(n+2)-A241836(n+2))`
-/

namespace A241835.P2432247352449153812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (2 * A241836 (n + 2) - A241836 (n + 2)).toNat

end

end A241835.P2432247352449153812

/-!
# A241836: Squares-greedy summable squares.

The programs for A241836, there is no canonical definition to state claims against.
-/

/-! ## A241836.P15156324805983889629

`A241835(n+2)²`
-/

namespace A241836.P15156324805983889629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241835 (n + 2) ^ 2

end

end A241836.P15156324805983889629

/-! ## A241836.P3391375447583023959

`A000290(A241835(2*(n+1)-n))`
-/

namespace A241836.P3391375447583023959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A241835 (2 * (n + 1) - n)).toNat

end

end A241836.P3391375447583023959

/-! ## A241836.P7015621157523410415

`A241835(n+2)^gcd(2, A241817(n+1))`
-/

namespace A241836.P7015621157523410415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241835 (n + 2) ^ Int.gcd 2 (A241817 (n + 1))

end

end A241836.P7015621157523410415

/-! ## A241836.P14488254847179392250

`A241835(n+2)^A020639(A074400(n+1))`
-/

namespace A241836.P14488254847179392250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241835 (n + 2) : ℚ) ^ (A020639 (A074400 (n + 1)).toNat : ℤ)

end

end A241836.P14488254847179392250

/-! ## A241836.P5239327372606466754

`A000290(A241835(n+2)%A241835(n+3))`
-/

namespace A241836.P5239327372606466754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A241835 (n + 2)) (A241835 (n + 3))).toNat

end

end A241836.P5239327372606466754

/-! ## A241836.P16717645231107008611

`A241835(n+2)^A020639(A334970(n+1))`
-/

namespace A241836.P16717645231107008611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241835 (n + 2) : ℚ) ^ (A020639 (A334970 (n + 1)).toNat : ℤ)

end

end A241836.P16717645231107008611

/-!
# A241838: Column 1 of A237270, also the right border.

The programs for A241838, there is no canonical definition to state claims against.
-/

/-! ## A241838.P14033777330863312637

`A237270(A237590(n+1))`
-/

namespace A241838.P14033777330863312637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 (A237590 (n + 1)).toNat

end

end A241838.P14033777330863312637

/-! ## A241838.P267074609976134081

`A237270(∑[A237271(n+1)])`
-/

namespace A241838.P267074609976134081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A241838.P267074609976134081

/-! ## A241838.P152972435394442543

`A237270(∑[A348327(n+1)+A262619(n+1)])`
-/

namespace A241838.P152972435394442543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348327 (n + 1) + A262619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A241838.P152972435394442543

/-! ## A241838.P15152320537319757178

`A237270(∑[A001227(n+1)-A239657(n+1)])`
-/

namespace A241838.P15152320537319757178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A239657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A241838.P15152320537319757178

/-! ## A241838.P17852183480572323363

`A237270(∑[A000005(n+1)-A243982(n+1)])`
-/

namespace A241838.P17852183480572323363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A243982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A241838.P17852183480572323363

/-! ## A241838.P4252160096323482174

`A241559(n+1)-A326523(A350012(n+1))`
-/

namespace A241838.P4252160096323482174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241559 (n + 1) - A326523 (A350012 (n + 1)).toNat

end

end A241838.P4252160096323482174

/-!
# A241839: Number of simple connected graphs on n nodes that are not regular.

The programs for A241839, there is no canonical definition to state claims against.
-/

/-! ## A241839.P14333281346999216059

`A001349(n+1)-A005177(n+1)`
-/

namespace A241839.P14333281346999216059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A005177 (n + 1)

end

end A241839.P14333281346999216059

/-! ## A241839.P13940534259247199492

`A057864(n+1)+A283421(n+1)-A005177(n+1)`
-/

namespace A241839.P13940534259247199492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057864 (n + 1) + (A283421 (n + 1) - A005177 (n + 1))

end

end A241839.P13940534259247199492

/-! ## A241839.P6736705093396467170

`A243241(n+1)-A294405(n+1)`
-/

namespace A241839.P6736705093396467170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243241 (n + 1) - A294405 (n + 1)

end

end A241839.P6736705093396467170

/-! ## A241839.P15805445619538552732

`A243241(n+1)-A326548(A315857(n))`
-/

namespace A241839.P15805445619538552732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243241 (n + 1) - A326548 (A315857 n).toNat

end

end A241839.P15805445619538552732

/-! ## A241839.P10216483200766321250

`A243241(n+1)-(A005177(n+1)-A088741(n+1))`
-/

namespace A241839.P10216483200766321250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243241 (n + 1) - (A005177 (n + 1) - A088741 (n + 1))

end

end A241839.P10216483200766321250

/-!
# A241840: Number of simple connected graphs on n nodes that are not distance-regular.

The programs for A241840, there is no canonical definition to state claims against.
-/

/-! ## A241840.P16438382448253575647

`A001349(n+1)-A241814(n+1)`
-/

namespace A241840.P16438382448253575647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A241814 (n + 1)

end

end A241840.P16438382448253575647

/-! ## A241840.P5149111258469961277

`A243241(n+1)-A001222(A114044(n))`
-/

namespace A241840.P5149111258469961277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243241 (n + 1) - A001222 (A114044 n).toNat

end

end A241840.P5149111258469961277

/-! ## A241840.P15566876297225001557

`A243241(n+1)-A072491(A294405(n+1))`
-/

namespace A241840.P15566876297225001557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243241 (n + 1) - A072491 (A294405 (n + 1)).toNat

end

end A241840.P15566876297225001557

/-! ## A241840.P6858157777857714376

`A241839(n+1)+A294405(n+1)-A001222(A114044(n))`
-/

namespace A241840.P6858157777857714376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241839 (n + 1) + (A294405 (n + 1) - A001222 (A114044 n).toNat)

end

end A241840.P6858157777857714376

/-! ## A241840.P4059221778740466993

`A001349(n+1)-A088741(n+1)-A001222(A114044(n))`
-/

namespace A241840.P4059221778740466993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A088741 (n + 1) - A001222 (A114044 n).toNat

end

end A241840.P4059221778740466993

/-!
# A241841: Number of simple connected graphs on n nodes that are not trees.

The programs for A241841, there is no canonical definition to state claims against.
-/

/-! ## A241841.P1622122919797864432

`A001349(n+1)-A000055(n+1)`
-/

namespace A241841.P1622122919797864432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A000055 (n + 1)

end

end A241841.P1622122919797864432

/-! ## A241841.P6339900107601228539

`A001349(n+1)-sqrt(A001256(n+1))`
-/

namespace A241841.P6339900107601228539
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001349 (n + 1) : ℝ) - Real.sqrt (A001256 (n + 1) : ℝ)

end

end A241841.P6339900107601228539

/-! ## A241841.P10543674353050512071

`A001349(n+1)-A095133(A000124(n))`
-/

namespace A241841.P10543674353050512071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A095133 (A000124 n).toNat

end

end A241841.P10543674353050512071

/-! ## A241841.P10332827716717110130

`A000088(n+1)-(A000719(n+1)+A000055(n+1))`
-/

namespace A241841.P10332827716717110130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - (A000719 (n + 1) + A000055 (n + 1))

end

end A241841.P10332827716717110130

/-! ## A241841.P6658407612282825651

`A007146(n+1)+A052446(n+1)-A000055(n+1)`
-/

namespace A241841.P6658407612282825651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007146 (n + 1) + (A052446 (n + 1) - A000055 (n + 1))

end

end A241841.P6658407612282825651

/-!
# A241842: Number of simple connected graphs on n nodes that are non-integral.

The programs for A241842, there is no canonical definition to state claims against.
-/

/-! ## A241842.P11877336121661376091

`A001349(n+1)-A064731(n+1)`
-/

namespace A241842.P11877336121661376091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A064731 (n + 1)

end

end A241842.P11877336121661376091

/-! ## A241842.P14261784388975352015

`A201922(A000124(n))-A064731(n+1)`
-/

namespace A241842.P14261784388975352015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A064731 (n + 1)

end

end A241842.P14261784388975352015

/-! ## A241842.P6409858292647416792

`A304311(A000217(n+1))-A064731(n+1)`
-/

namespace A241842.P6409858292647416792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304311 (A000217 (n + 1)).toNat - A064731 (n + 1)

end

end A241842.P6409858292647416792

/-! ## A241842.P18446244529153530901

`A003049(n+1)+A158007(n+1)-A064731(n+1)`
-/

namespace A241842.P18446244529153530901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003049 (n + 1) + (A158007 (n + 1) - A064731 (n + 1))

end

end A241842.P18446244529153530901

/-! ## A241842.P8828202017039170540

`A001349(n+1)-(A077027(n+1)-A287154(n+1))`
-/

namespace A241842.P8828202017039170540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - (A077027 (n + 1) - A287154 (n + 1))

end

end A241842.P8828202017039170540

/-!
# A241843: Number of simple connected graphs on n nodes that are non-chordal.

The programs for A241843, there is no canonical definition to state claims against.
-/

/-! ## A241843.P18150082779251929716

`A001349(n+1)-A048192(n+1)`
-/

namespace A241843.P18150082779251929716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A048192 (n + 1)

end

end A241843.P18150082779251929716

/-! ## A241843.P3908474782556146709

`A287481(n+1)-A287482(n+1)`
-/

namespace A241843.P3908474782556146709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287481 (n + 1) - A287482 (n + 1)

end

end A241843.P3908474782556146709

/-! ## A241843.P14071478503496564840

`A201922(A000124(n))-A048192(n+1)`
-/

namespace A241843.P14071478503496564840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A048192 (n + 1)

end

end A241843.P14071478503496564840

/-! ## A241843.P11009884055250948846

`A007146(n+1)+A052446(n+1)-A048192(n+1)`
-/

namespace A241843.P11009884055250948846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007146 (n + 1) + (A052446 (n + 1) - A048192 (n + 1))

end

end A241843.P11009884055250948846

/-! ## A241843.P2781422581721381778

`A003049(n+1)+A158007(n+1)-A048192(n+1)`
-/

namespace A241843.P2781422581721381778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003049 (n + 1) + (A158007 (n + 1) - A048192 (n + 1))

end

end A241843.P2781422581721381778

/-!
# A241844: Number of ordered ways to write n = k + m with k > 0 and m > 0 such that L(k) + m is prime, where L(k) is the k-th Lucas number.

The programs for A241844, there is no canonical definition to state claims against.
-/

/-! ## A241844.P7297504347783194041

`A037800(or(A022100(n), A028262(n)))`
-/

namespace A241844.P7297504347783194041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (Int.lor (A022100 n) (A028262 n)).toNat

end

end A241844.P7297504347783194041

/-! ## A241844.P15849241572323788154

`A001221(record[A255047(n)-A347231(n+1)])`
-/

namespace A241844.P15849241572323788154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n - A347231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A241844.P15849241572323788154

/-! ## A241844.P18192543291558467198

`A058061(∑[A293558(n+1)])`
-/

namespace A241844.P18192543291558467198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058061 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A241844.P18192543291558467198

/-! ## A241844.P9927887168951193558

`A001221(A309272(n+1)-lcm(n, -1%∏{e}[n, #]))`
-/

namespace A241844.P9927887168951193558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A309272 (n + 1) - (Int.lcm (n : ℤ) (Int.tmod (-1) ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)) : ℤ)).toNat

end

end A241844.P9927887168951193558

/-! ## A241844.P5583408656088990790

`A109925(A377865(n+1)^A053261(n))`
-/

namespace A241844.P5583408656088990790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (SequenceMachineLib.roundAway ((A377865 (n + 1) : ℚ) ^ (A053261 n : ℤ))).toNat

end

end A241844.P5583408656088990790

/-!
# A241847: a(n) = n^2 + 17.

The programs for A241847, the canonical program `A241847.P8388503422762483598` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241847 has offset 0).

The definition of A241847 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+17` (program `A241847.P8388503422762483598`, by `A241847.P8388503422762483598.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A241847.P8388503422762483598

`n²+17`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A241847

/-- `n²+17` -/
def P8388503422762483598.Spec : Prop :=
  ∀ n, (P8388503422762483598.a n : ℤ) = A241847 n

theorem P8388503422762483598.correct : P8388503422762483598.Spec := by
  intro n
  simp only [A241847]

end A241847

/-!
# A241848: a(n) = n^2 + 18.

The programs for A241848, the canonical program `A241848.P10518508374331350270` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241848 has offset 0).

The definition of A241848 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+18` (program `A241848.P10518508374331350270`, by `A241848.P10518508374331350270.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A241848.P10518508374331350270

`n²+18`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A241848

/-- `n²+18` -/
def P10518508374331350270.Spec : Prop :=
  ∀ n, (P10518508374331350270.a n : ℤ) = A241848 n

theorem P10518508374331350270.correct : P10518508374331350270.Spec := by
  intro n
  simp only [A241848]

end A241848

/-!
# A241849: a(n) = n^2 + 19.

The programs for A241849, the canonical program `A241849.P2465626945269001209` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241849 has offset 0).

The definition of A241849 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+19` (program `A241849.P2465626945269001209`, by `A241849.P2465626945269001209.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A241849.P2465626945269001209

`n²+19`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A241849

/-- `n²+19` -/
def P2465626945269001209.Spec : Prop :=
  ∀ n, (P2465626945269001209.a n : ℤ) = A241849 n

theorem P2465626945269001209.correct : P2465626945269001209.Spec := by
  intro n
  simp only [A241849]

end A241849

/-!
# A241850: a(n) = n^2 + 20.

The programs for A241850, the canonical program `A241850.P2932617922786550184` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241850 has offset 0).

The definition of A241850 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+20` (program `A241850.P2932617922786550184`, by `A241850.P2932617922786550184.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A241850.P2932617922786550184

`n²+20`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A241850

/-- `n²+20` -/
def P2932617922786550184.Spec : Prop :=
  ∀ n, (P2932617922786550184.a n : ℤ) = A241850 n

theorem P2932617922786550184.correct : P2932617922786550184.Spec := by
  intro n
  simp only [A241850]

end A241850

/-!
# A241851: a(n) = n^2 + 21.

The programs for A241851, the canonical program `A241851.P11917510233345763991` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241851 has offset 0).

The definition of A241851 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+21` (program `A241851.P11917510233345763991`, by `A241851.P11917510233345763991.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A241851.P11917510233345763991

`n²+21`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A241851

/-- `n²+21` -/
def P11917510233345763991.Spec : Prop :=
  ∀ n, (P11917510233345763991.a n : ℤ) = A241851 n

theorem P11917510233345763991.correct : P11917510233345763991.Spec := by
  intro n
  simp only [A241851]

end A241851

/-!
# A241853: Records of the difference between the maximum and minimum x's such that sigma(x)=m.

The programs for A241853, there is no canonical definition to state claims against.
-/

/-! ## A241853.P11697483819146923634

`record[A057637(n+1)-A051444(n+1)]`
-/

namespace A241853.P11697483819146923634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1) - A051444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241853.P11697483819146923634

/-! ## A241853.P11080669414874125274

`record[A057637(n+1)-A070982(n+1)]`
-/

namespace A241853.P11080669414874125274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1) - A070982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241853.P11080669414874125274

/-! ## A241853.P15268271087096689114

`record[A319068(n+1)-A070982(n+1)]`
-/

namespace A241853.P15268271087096689114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319068 (n + 1) - A070982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241853.P15268271087096689114

/-! ## A241853.P16265289841836009079

`record[A057637(A002191(n+1))-A002192(n+1)]`
-/

namespace A241853.P16265289841836009079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (A002191 (n + 1)).toNat - A002192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241853.P16265289841836009079

/-! ## A241853.P2312820702223469418

`A057637(A241852(n+1))-A051444(A241852(n+1))`
-/

namespace A241853.P2312820702223469418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (A241852 (n + 1)).toNat - A051444 (A241852 (n + 1)).toNat

end

end A241853.P2312820702223469418

/-!
# A241854: Number m that give records for the quotient between the maximum and minimum x's such that sigma(x)=m.

The programs for A241854, there is no canonical definition to state claims against.
-/

/-! ## A241854.P1436990444020428265

`A000203(record[A008480(C(n+7, 7))])`
-/

namespace A241854.P1436990444020428265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (Nat.choose (n + 7) 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A241854.P1436990444020428265

/-! ## A241854.P2920542640279942165

`lcm(A298266(n), A342410(A144068(n)))`
-/

namespace A241854.P2920542640279942165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A298266 n) (A342410 (A144068 n).toNat)

end

end A241854.P2920542640279942165

/-!
# A241855: Array t(n,k) of sum of successive even powers of primes, where t(n,k) = sum_(j=0..k-1) prime(n)^(2j), with n>=1 and k>=0, read by ascending antidiagonals.

The programs for A241855, the canonical program `A241855.P16343483656618910074` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241855 has offset 1).

The definition of A241855 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241855.P16343483656618910074

`(A000040(row(n)-col(n)+1)²^col(n)-1)/(A000040(row(n)-col(n)+1)²-1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A241855

/-- `(A000040(row(n)-col(n)+1)²^col(n)-1)/(A000040(row(n)-col(n)+1)²-1)` -/
def P16343483656618910074.Spec : Prop :=
  ∀ n, P16343483656618910074.a n = (A241855 (n + 1) : ℚ)

end A241855

/-! ## A241855.P973365159295605211

`A249027(n+1)-A028950(A121757(n))`
-/

namespace A241855.P973365159295605211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249027 (n + 1) - A028950 (A121757 n).toNat

end

end A241855.P973365159295605211

namespace A241855

/-- `A249027(n+1)-A028950(A121757(n))` -/
def P973365159295605211.Spec : Prop :=
  ∀ n, P973365159295605211.a n = A241855 (n + 1)

end A241855

/-! ## A241855.P17659713242991865760

`A003056(A002262(n)^A219773(n+1))`
-/

namespace A241855.P17659713242991865760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A219773 (n + 1) : ℤ))).toNat

end

end A241855.P17659713242991865760

namespace A241855

/-- `A003056(A002262(n)^A219773(n+1))` -/
def P17659713242991865760.Spec : Prop :=
  ∀ n, P17659713242991865760.a n = A241855 (n + 1)

end A241855

/-! ## A241855.P4317357041670737740

`A003056(A002262(n)^A245334(n+1))`
-/

namespace A241855.P4317357041670737740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A245334 (n + 1) : ℤ))).toNat

end

end A241855.P4317357041670737740

namespace A241855

/-- `A003056(A002262(n)^A245334(n+1))` -/
def P4317357041670737740.Spec : Prop :=
  ∀ n, P4317357041670737740.a n = A241855 (n + 1)

end A241855

/-! ## A241855.P15130106262819238430

`A022307(A266183(n+1)*A266183(n+1))`
-/

namespace A241855.P15130106262819238430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (A266183 (n + 1) * A266183 (n + 1)).toNat

end

end A241855.P15130106262819238430

namespace A241855

/-- `A022307(A266183(n+1)*A266183(n+1))` -/
def P15130106262819238430.Spec : Prop :=
  ∀ n, P15130106262819238430.a n = A241855 (n + 1)

end A241855

/-!
# A241856: Smallest number of carries while adding two primes in binary, the sum of which is 2*n.

The programs for A241856, there is no canonical definition to state claims against.
-/

/-! ## A241856.P8552968173541837922

`A108421(n+2)-A000120(n+2)`
-/

namespace A241856.P8552968173541837922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108421 (n + 2) - A000120 (n + 2)

end

end A241856.P8552968173541837922

/-! ## A241856.P9193416036159819424

`A108421(n+2)-Δ[A000788(n+1)]`
-/

namespace A241856.P9193416036159819424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108421 (n + 2) - (f1 (n + 1) - f1 n)

end

end A241856.P9193416036159819424

/-! ## A241856.P7164582797605920533

`A108421(n+2)-A001222(A001316(n+2))`
-/

namespace A241856.P7164582797605920533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108421 (n + 2) - A001222 (A001316 (n + 2)).toNat

end

end A241856.P7164582797605920533

/-! ## A241856.P3700748314461945956

`A108421(n+2)-A000523(A001316(2*(n+2)))`
-/

namespace A241856.P3700748314461945956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108421 (n + 2) - A000523 (A001316 (2 * (n + 2))).toNat

end

end A241856.P3700748314461945956

/-! ## A241856.P6694502619934717736

`A108421(n+2)+A059841(n)-A081743(n+2)`
-/

namespace A241856.P6694502619934717736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108421 (n + 2) + (A059841 n - A081743 (n + 2))

end

end A241856.P6694502619934717736

/-! ## A241856.P5494009977581113972

`A108422(n+2)-(A108423(n+2)+A000120(n+2))`
-/

namespace A241856.P5494009977581113972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108422 (n + 2) - (A108423 (n + 2) + A000120 (n + 2))

end

end A241856.P5494009977581113972

/-!
# A241857: Number of primes p less than prime(n)-1, such that adding prime(n)-1 and p in binary does not require any carry.

The programs for A241857, there is no canonical definition to state claims against.
-/

/-! ## A241857.P5564889701186646004

`A352888(A193839(n+2))%A127202(n+1)`
-/

namespace A241857.P5564889701186646004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352888 (A193839 (n + 2)).toNat) (A127202 (n + 1))

end

end A241857.P5564889701186646004

/-!
# A241859: 1st arithmetic derivative of numbers with prime arithmetic derivative (A157037).

The programs for A241859, the canonical program `A241859.P6128019901053988530` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241859 has offset 1).

The definition of A241859 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A157037, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A241859.P6128019901053988530

`A003415(A157037(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A241859

/-- `A003415(A157037(n+1))` -/
def P6128019901053988530.Spec : Prop :=
  ∀ n, P6128019901053988530.a n = A241859 (n + 1)

theorem P6128019901053988530.correct : P6128019901053988530.Spec := by
  intro n
  simp only [A241859, Nat.add_sub_cancel]

end A241859

/-! ## A241859.P2338835436634255483

`p?[A345305(n+1)]`
-/

namespace A241859.P2338835436634255483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241859.P2338835436634255483

namespace A241859

/-- `p?[A345305(n+1)]` -/
def P2338835436634255483.Spec : Prop :=
  ∀ n, P2338835436634255483.a n = A241859 (n + 1)

end A241859

/-! ## A241859.P2493916514822319527

`p?[A327965(comp[A327929(n+1)])]`
-/

namespace A241859.P2493916514822319527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327929 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327965 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241859.P2493916514822319527

namespace A241859

/-- `p?[A327965(comp[A327929(n+1)])]` -/
def P2493916514822319527.Spec : Prop :=
  ∀ n, P2493916514822319527.a n = A241859 (n + 1)

end A241859

/-! ## A241859.P18018028226979360979

`p?[A068328(n+1)]`
-/

namespace A241859.P18018028226979360979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241859.P18018028226979360979

namespace A241859

/-- `p?[A068328(n+1)]` -/
def P18018028226979360979.Spec : Prop :=
  ∀ n, P18018028226979360979.a n = A241859 (n + 1)

end A241859

/-! ## A241859.P16314673941634935539

`filter[A068328(n+2), A010051(#)]`
-/

namespace A241859.P16314673941634935539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A241859.P16314673941634935539

namespace A241859

/-- `filter[A068328(n+2), A010051(#)]` -/
def P16314673941634935539.Spec : Prop :=
  ∀ n, P16314673941634935539.a n = A241859 (n + 1)

end A241859

/-! ## A241859.P2686209831187113853

`A328385(A157037(2*n+1-n))`
-/

namespace A241859.P2686209831187113853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328385 (A157037 (2 * n + 1 - n)).toNat

end

end A241859.P2686209831187113853

namespace A241859

/-- `A328385(A157037(2*n+1-n))` -/
def P2686209831187113853.Spec : Prop :=
  ∀ n, P2686209831187113853.a n = A241859 (n + 1)

end A241859

/-! ## A241859.P8164764021655835383

`p?[A157104(n+1)]`
-/

namespace A241859.P8164764021655835383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241859.P8164764021655835383

namespace A241859

/-- `p?[A157104(n+1)]` -/
def P8164764021655835383.Spec : Prop :=
  ∀ n, P8164764021655835383.a n = A241859 (n + 1)

end A241859

/-! ## A241859.P4819686514303834721

`p?[A260624(n+1)]`
-/

namespace A241859.P4819686514303834721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241859.P4819686514303834721

namespace A241859

/-- `p?[A260624(n+1)]` -/
def P4819686514303834721.Spec : Prop :=
  ∀ n, P4819686514303834721.a n = A241859 (n + 1)

end A241859

/-! ## A241859.P5982039538443313054

`filter[A260624(n+1), A010051(#)]`
-/

namespace A241859.P5982039538443313054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A241859.P5982039538443313054

namespace A241859

/-- `filter[A260624(n+1), A010051(#)]` -/
def P5982039538443313054.Spec : Prop :=
  ∀ n, P5982039538443313054.a n = A241859 (n + 1)

end A241859

/-! ## A241859.P17054380092871963823

`p?[A003415(n)]`
-/

namespace A241859.P17054380092871963823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241859.P17054380092871963823

namespace A241859

/-- `p?[A003415(n)]` -/
def P17054380092871963823.Spec : Prop :=
  ∀ n, P17054380092871963823.a n = A241859 (n + 1)

end A241859

/-! ## A241859.P2101107434810954209

`p?[A345373(n+1)]`
-/

namespace A241859.P2101107434810954209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241859.P2101107434810954209

namespace A241859

/-- `p?[A345373(n+1)]` -/
def P2101107434810954209.Spec : Prop :=
  ∀ n, P2101107434810954209.a n = A241859 (n + 1)

end A241859

/-! ## A241859.P2141116609034395536

`p?[A168036(n)+n]`
-/

namespace A241859.P2141116609034395536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241859.P2141116609034395536

namespace A241859

/-- `p?[A168036(n)+n]` -/
def P2141116609034395536.Spec : Prop :=
  ∀ n, P2141116609034395536.a n = A241859 (n + 1)

end A241859

/-! ## A241859.P13468281832396430606

`p?[A129283(n)-n]`
-/

namespace A241859.P13468281832396430606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241859.P13468281832396430606

namespace A241859

/-- `p?[A129283(n)-n]` -/
def P13468281832396430606.Spec : Prop :=
  ∀ n, P13468281832396430606.a n = A241859 (n + 1)

end A241859

/-! ## A241859.P5122616290229030540

`A003415(eq[1, A068346(n)])`
-/

namespace A241859.P5122616290229030540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241859.P5122616290229030540

namespace A241859

/-- `A003415(eq[1, A068346(n)])` -/
def P5122616290229030540.Spec : Prop :=
  ∀ n, P5122616290229030540.a n = A241859 (n + 1)

end A241859

/-! ## A241859.P2175146691594588925

`A003415(eq[1, A341995(n)])`
-/

namespace A241859.P2175146691594588925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241859.P2175146691594588925

namespace A241859

/-- `A003415(eq[1, A341995(n)])` -/
def P2175146691594588925.Spec : Prop :=
  ∀ n, P2175146691594588925.a n = A241859 (n + 1)

end A241859

/-! ## A241859.P10337610265810992578

`A003415(eq[3, A256750(n)])`
-/

namespace A241859.P10337610265810992578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241859.P10337610265810992578

namespace A241859

/-- `A003415(eq[3, A256750(n)])` -/
def P10337610265810992578.Spec : Prop :=
  ∀ n, P10337610265810992578.a n = A241859 (n + 1)

end A241859

/-! ## A241859.P13172987442612787024

`A003415(lt[n, A086134(n)²])`
-/

namespace A241859.P13172987442612787024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086134 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A241859.P13172987442612787024

namespace A241859

/-- `A003415(lt[n, A086134(n)²])` -/
def P13172987442612787024.Spec : Prop :=
  ∀ n, P13172987442612787024.a n = A241859 (n + 1)

end A241859

/-! ## A241859.P6044487340760715512

`A086134(lt[n, A086134(n)²])`
-/

namespace A241859.P6044487340760715512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086134 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A241859.P6044487340760715512

namespace A241859

/-- `A086134(lt[n, A086134(n)²])` -/
def P6044487340760715512.Spec : Prop :=
  ∀ n, P6044487340760715512.a n = A241859 (n + 1)

end A241859

/-! ## A241859.P589485106246318880

`A003415(lt[sqrt(n), A086134(n)])`
-/

namespace A241859.P589485106246318880
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n)

end

end A241859.P589485106246318880

namespace A241859

/-- `A003415(lt[sqrt(n), A086134(n)])` -/
def P589485106246318880.Spec : Prop :=
  ∀ n, P589485106246318880.a n = A241859 (n + 1)

end A241859

/-! ## A241859.P10444687897754464149

`A086134(lt[sqrt(n), A086134(n)])`
-/

namespace A241859.P10444687897754464149
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086134 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n)

end

end A241859.P10444687897754464149

namespace A241859

/-- `A086134(lt[sqrt(n), A086134(n)])` -/
def P10444687897754464149.Spec : Prop :=
  ∀ n, P10444687897754464149.a n = A241859 (n + 1)

end A241859

/-!
# A241862: Number of compositions of n such that the smallest part has multiplicity two.

The programs for A241862, there is no canonical definition to state claims against.
-/

/-! ## A241862.P16567259702617226430

`A238342(∑[n+2]+3)`
-/

namespace A241862.P16567259702617226430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A241862.P16567259702617226430

/-! ## A241862.P17674862545298570547

`lcm(A033999(n), A238342(A340266(n+1)))`
-/

namespace A241862.P17674862545298570547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A238342 (A340266 (n + 1)).toNat)

end

end A241862.P17674862545298570547

/-! ## A241862.P12729900543333189447

`or(A000007(n), A238342(A340266(n+1)))`
-/

namespace A241862.P12729900543333189447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A238342 (A340266 (n + 1)).toNat)

end

end A241862.P12729900543333189447

/-! ## A241862.P3583530055319265722

`A238342(A340266(n+1))+A000007(n+1)`
-/

namespace A241862.P3583530055319265722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A340266 (n + 1)).toNat + A000007 (n + 1)

end

end A241862.P3583530055319265722

/-! ## A241862.P12548474032247763066

`A238342(A340266(n+1))+A000038(n+1)`
-/

namespace A241862.P12548474032247763066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A340266 (n + 1)).toNat + A000038 (n + 1)

end

end A241862.P12548474032247763066

/-! ## A241862.P3932441063068615685

`A238342(A340266(n+1))+A020761(n+1)`
-/

namespace A241862.P3932441063068615685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A340266 (n + 1)).toNat + A020761 (n + 1)

end

end A241862.P3932441063068615685

/-! ## A241862.P6030939269475149351

`A033999(2*n)*A238342(A340266(n+1))`
-/

namespace A241862.P6030939269475149351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A238342 (A340266 (n + 1)).toNat

end

end A241862.P6030939269475149351

/-! ## A241862.P13287445256258657218

`A238342(A046691(n)+6)%A007443(n+1)`
-/

namespace A241862.P13287445256258657218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238342 (A046691 n + 6).toNat) (A007443 (n + 1))

end

end A241862.P13287445256258657218

/-! ## A241862.P4711047872920756837

`A007318(A295931(n+1))*A238342(A340266(n+1))`
-/

namespace A241862.P4711047872920756837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A295931 (n + 1)).toNat * A238342 (A340266 (n + 1)).toNat

end

end A241862.P4711047872920756837

/-! ## A241862.P2502603971286544993

`A238342(A340266(n+1))^A014963(A001749(n+1))`
-/

namespace A241862.P2502603971286544993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238342 (A340266 (n + 1)).toNat : ℚ) ^ (A014963 (A001749 (n + 1)).toNat : ℤ)

end

end A241862.P2502603971286544993

/-! ## A241862.P1160548182649373984

`A014963(2*A002145(n+1))*A238342(A340266(n+1))`
-/

namespace A241862.P1160548182649373984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A002145 (n + 1)).toNat * A238342 (A340266 (n + 1)).toNat

end

end A241862.P1160548182649373984

/-! ## A241862.P13073529065287421472

`A238342(A340266(n+1))^A014963(A001359(n+1)+1)`
-/

namespace A241862.P13073529065287421472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238342 (A340266 (n + 1)).toNat : ℚ) ^ (A014963 (A001359 (n + 1) + 1).toNat : ℤ)

end

end A241862.P13073529065287421472

/-! ## A241862.P6812676379551287652

`A238342(A340266(n+1))+A038760(n²)`
-/

namespace A241862.P6812676379551287652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A340266 (n + 1)).toNat + A038760 (n ^ 2)

end

end A241862.P6812676379551287652

/-!
# A241863: Number of compositions of n such that the smallest part has multiplicity three.

The programs for A241863, there is no canonical definition to state claims against.
-/

/-! ## A241863.P8981190022167640559

`A238342(∑[n+3]+6)`
-/

namespace A241863.P8981190022167640559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A241863.P8981190022167640559

/-! ## A241863.P18092618546663446640

`gcd(C(2, n+2), A238342(A052905(n)+8))`
-/

namespace A241863.P18092618546663446640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A238342 (A052905 n + 8).toNat)

end

end A241863.P18092618546663446640

/-! ## A241863.P6038397094976046086

`A238342(A167614(n+2))%A000051(n)`
-/

namespace A241863.P6038397094976046086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238342 (A167614 (n + 2)).toNat) (A000051 n)

end

end A241863.P6038397094976046086

/-! ## A241863.P16612276991564214671

`or(A000007(n), A238342(A167614(n+2)))`
-/

namespace A241863.P16612276991564214671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A238342 (A167614 (n + 2)).toNat)

end

end A241863.P16612276991564214671

/-! ## A241863.P3851444948665423750

`A238342(A167614(n+2))+A147612(2*A025747(n))`
-/

namespace A241863.P3851444948665423750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A167614 (n + 2)).toNat + A147612 (2 * A025747 n).toNat

end

end A241863.P3851444948665423750

/-!
# A241864: Number of compositions of n such that the smallest part has multiplicity four.

The programs for A241864, there is no canonical definition to state claims against.
-/

/-! ## A241864.P2441169783674813095

`A238342(∑[n+4]+10)`
-/

namespace A241864.P2441169783674813095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A241864.P2441169783674813095

/-! ## A241864.P9973287447239582922

`A238342(A027379(n+2)+7)+A000007(n+1)`
-/

namespace A241864.P9973287447239582922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A027379 (n + 2) + 7).toNat + A000007 (n + 1)

end

end A241864.P9973287447239582922

/-! ## A241864.P13893789147807356037

`A014963(A000096(n)+1)*A238342(A027379(n+2)+7)`
-/

namespace A241864.P13893789147807356037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000096 n + 1).toNat * A238342 (A027379 (n + 2) + 7).toNat

end

end A241864.P13893789147807356037

/-! ## A241864.P15724084006774872476

`A001222(A052247(n+1))*A238342(A027379(n+2)+7)`
-/

namespace A241864.P15724084006774872476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A052247 (n + 1)).toNat * A238342 (A027379 (n + 2) + 7).toNat

end

end A241864.P15724084006774872476

/-! ## A241864.P4333159918196479902

`A014963(A297150(n+1))*A238342(A027379(n+2)+7)`
-/

namespace A241864.P4333159918196479902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A297150 (n + 1)).toNat * A238342 (A027379 (n + 2) + 7).toNat

end

end A241864.P4333159918196479902

/-!
# A241865: Number of compositions of n such that the smallest part has multiplicity five.

The programs for A241865, there is no canonical definition to state claims against.
-/

/-! ## A241865.P7180536737837334335

`A238342(A167499(n+4))`
-/

namespace A241865.P7180536737837334335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A167499 (n + 4)).toNat

end

end A241865.P7180536737837334335

/-! ## A241865.P12847064343544634145

`A238342(A167614(n+4)+2)`
-/

namespace A241865.P12847064343544634145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A167614 (n + 4) + 2).toNat

end

end A241865.P12847064343544634145

/-! ## A241865.P16874825395129565595

`A238342(A000096(n+4)+6)`
-/

namespace A241865.P16874825395129565595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A000096 (n + 4) + 6).toNat

end

end A241865.P16874825395129565595

/-! ## A241865.P3913455046205860689

`A238342(A000217(n+5)+5)`
-/

namespace A241865.P3913455046205860689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A000217 (n + 5) + 5).toNat

end

end A241865.P3913455046205860689

/-! ## A241865.P10066973326090421842

`A238342(A055998(n+3)+8)`
-/

namespace A241865.P10066973326090421842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A055998 (n + 3) + 8).toNat

end

end A241865.P10066973326090421842

/-! ## A241865.P6575470475652325481

`A238342(A000124(n+6)-(n+2))`
-/

namespace A241865.P6575470475652325481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A000124 (n + 6) - (n + 2 : ℤ)).toNat

end

end A241865.P6575470475652325481

/-!
# A241866: Number of compositions of n such that the smallest part has multiplicity six.

The programs for A241866, there is no canonical definition to state claims against.
-/

/-! ## A241866.P8985582196443480564

`A238342(A167499(n+5)+1)`
-/

namespace A241866.P8985582196443480564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A167499 (n + 5) + 1).toNat

end

end A241866.P8985582196443480564

/-! ## A241866.P13622231746032727123

`A238342(A000096(n+5)+7)`
-/

namespace A241866.P13622231746032727123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A000096 (n + 5) + 7).toNat

end

end A241866.P13622231746032727123

/-! ## A241866.P4192546892348901067

`A238342(eq[7, A002260(n+1)])`
-/

namespace A241866.P4192546892348901067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241866.P4192546892348901067

/-! ## A241866.P18306048026189801821

`A238342(A000124(n+7)-(n+2))`
-/

namespace A241866.P18306048026189801821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A000124 (n + 7) - (n + 2 : ℤ)).toNat

end

end A241866.P18306048026189801821

/-! ## A241866.P14549655331334669552

`A238342(A052905(n+5)-A005843(n+2))`
-/

namespace A241866.P14549655331334669552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A052905 (n + 5) - A005843 (n + 2)).toNat

end

end A241866.P14549655331334669552

/-! ## A241866.P5713906129406039360

`A238342(A167614(n+3)+A005843(n+7))`
-/

namespace A241866.P5713906129406039360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A167614 (n + 3) + A005843 (n + 7)).toNat

end

end A241866.P5713906129406039360

/-! ## A241866.P1446488396358112458

`A238342(A005843(n+8)+A000124(n+4))`
-/

namespace A241866.P1446488396358112458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A005843 (n + 8) + A000124 (n + 4)).toNat

end

end A241866.P1446488396358112458

/-! ## A241866.P14174986579783581272

`A238342(A004275(n+9)+A000124(n+4))`
-/

namespace A241866.P14174986579783581272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A004275 (n + 9) + A000124 (n + 4)).toNat

end

end A241866.P14174986579783581272

/-!
# A241867: Number of compositions of n such that the smallest part has multiplicity seven.

The programs for A241867, there is no canonical definition to state claims against.
-/

/-! ## A241867.P8641183302888756981

`A238342(eq[7, A002262(n)])`
-/

namespace A241867.P8641183302888756981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241867.P8641183302888756981

/-! ## A241867.P15678766653239638020

`A238342(A167499(n+6)+2)`
-/

namespace A241867.P15678766653239638020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A167499 (n + 6) + 2).toNat

end

end A241867.P15678766653239638020

/-! ## A241867.P16537031088307476373

`A238342(A167614(n+6)+4)`
-/

namespace A241867.P16537031088307476373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A167614 (n + 6) + 4).toNat

end

end A241867.P16537031088307476373

/-! ## A241867.P5817600933738059916

`A238342(A000096(n+6)+8)`
-/

namespace A241867.P5817600933738059916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A000096 (n + 6) + 8).toNat

end

end A241867.P5817600933738059916

/-! ## A241867.P17420123858742403340

`A238342(A000124(n+8)-(n+2))`
-/

namespace A241867.P17420123858742403340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A000124 (n + 8) - (n + 2 : ℤ)).toNat

end

end A241867.P17420123858742403340

/-!
# A241868: Number of compositions of n such that the smallest part has multiplicity eight.

The programs for A241868, there is no canonical definition to state claims against.
-/

/-! ## A241868.P17602618715052288267

`A238342(A167614(n+7)+5)`
-/

namespace A241868.P17602618715052288267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A167614 (n + 7) + 5).toNat

end

end A241868.P17602618715052288267

/-! ## A241868.P9234303820637978242

`A238342(A000124(n+8)+7)`
-/

namespace A241868.P9234303820637978242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A000124 (n + 8) + 7).toNat

end

end A241868.P9234303820637978242

/-! ## A241868.P702562787893168804

`A238342(A000096(n+7)+9)`
-/

namespace A241868.P702562787893168804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A000096 (n + 7) + 9).toNat

end

end A241868.P702562787893168804

/-! ## A241868.P11683290360606530637

`A238342(A000217(n+8)+8)`
-/

namespace A241868.P11683290360606530637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A000217 (n + 8) + 8).toNat

end

end A241868.P11683290360606530637

/-! ## A241868.P12756211420953191171

`A238342(A052905(n+7)-A005843(n+3))`
-/

namespace A241868.P12756211420953191171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A052905 (n + 7) - A005843 (n + 3)).toNat

end

end A241868.P12756211420953191171

/-!
# A241869: Number of compositions of n such that the smallest part has multiplicity nine.

The programs for A241869, there is no canonical definition to state claims against.
-/

/-! ## A241869.P12357612648999552185

`A238342(eq[9, A002262(n)])`
-/

namespace A241869.P12357612648999552185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241869.P12357612648999552185

/-! ## A241869.P2471419334439516957

`A238342(A000124(n+9)+8)`
-/

namespace A241869.P2471419334439516957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A000124 (n + 9) + 8).toNat

end

end A241869.P2471419334439516957

/-! ## A241869.P7646279694032370718

`A238342(A000096(n+8)+10)`
-/

namespace A241869.P7646279694032370718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A000096 (n + 8) + 10).toNat

end

end A241869.P7646279694032370718

/-! ## A241869.P5255071742346383355

`A238342(eq[10, A002260(n+1)])`
-/

namespace A241869.P5255071742346383355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241869.P5255071742346383355

/-! ## A241869.P882506758742078472

`A238342(A000217(n+11)-11-Δ[n²])`
-/

namespace A241869.P882506758742078472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A000217 (n + 11) - 11 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A241869.P882506758742078472

/-! ## A241869.P12183368943787129857

`A238342(A000217(n+11)-A005843(n+6))`
-/

namespace A241869.P12183368943787129857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A000217 (n + 11) - A005843 (n + 6)).toNat

end

end A241869.P12183368943787129857

/-!
# A241870: Number of compositions of n such that the smallest part has multiplicity ten.

The programs for A241870, there is no canonical definition to state claims against.
-/

/-! ## A241870.P9396833999278273218

`A238342(eq[10, A002262(n)])`
-/

namespace A241870.P9396833999278273218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241870.P9396833999278273218

/-! ## A241870.P1707314217468111487

`A238342(A000096(n+9)+11)`
-/

namespace A241870.P1707314217468111487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A000096 (n + 9) + 11).toNat

end

end A241870.P1707314217468111487

/-! ## A241870.P11174947972717137325

`A238342(A000217(n+10)+10)`
-/

namespace A241870.P11174947972717137325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A000217 (n + 10) + 10).toNat

end

end A241870.P11174947972717137325

/-! ## A241870.P7266261931203943329

`A238342(eq[11, A002260(n+1)])`
-/

namespace A241870.P7266261931203943329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241870.P7266261931203943329

/-! ## A241870.P384229209731936259

`A238342(A052905(n+9)-A005843(n+4))`
-/

namespace A241870.P384229209731936259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A052905 (n + 9) - A005843 (n + 4)).toNat

end

end A241870.P384229209731936259

/-! ## A241870.P11171199687419469652

`A238342(A167614(n+11)-A005843(n+8))`
-/

namespace A241870.P11171199687419469652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (A167614 (n + 11) - A005843 (n + 8)).toNat

end

end A241870.P11171199687419469652

/-!
# A241871: Number of ascent sequences of length 2n with exactly n descents.

The programs for A241871, there is no canonical definition to state claims against.
-/

/-! ## A241871.P143647492161127963

`A238858(∑[4*n])`
-/

namespace A241871.P143647492161127963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238858 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A241871.P143647492161127963

/-! ## A241871.P2118242313191971520

`gcd(A000038(n), A238858(A046092(n)))`
-/

namespace A241871.P2118242313191971520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A238858 (A046092 n).toNat)

end

end A241871.P2118242313191971520

/-! ## A241871.P12121097941688484906

`lcm(A087960(n), A238858(A046092(n)))`
-/

namespace A241871.P12121097941688484906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A238858 (A046092 n).toNat)

end

end A241871.P12121097941688484906

/-! ## A241871.P1693944683755639209

`or(A000007(n), A238858(A046092(n)))`
-/

namespace A241871.P1693944683755639209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A238858 (A046092 n).toNat)

end

end A241871.P1693944683755639209

/-! ## A241871.P1514877492846476258

`A238858(A046092(n))+A180601(n+1)`
-/

namespace A241871.P1514877492846476258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238858 (A046092 n).toNat + A180601 (n + 1)

end

end A241871.P1514877492846476258

/-!
# A241872: Number of ascent sequences of length n with exactly two descents.

The programs for A241872, there is no canonical definition to state claims against.
-/

/-! ## A241872.P16038092059127174256

`A238858(A340266(n+4))`
-/

namespace A241872.P16038092059127174256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238858 (A340266 (n + 4)).toNat

end

end A241872.P16038092059127174256

/-! ## A241872.P8981387672075318568

`A238858(A000124(n+5)+1)`
-/

namespace A241872.P8981387672075318568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238858 (A000124 (n + 5) + 1).toNat

end

end A241872.P8981387672075318568

/-! ## A241872.P708614149449412268

`A238858(A080036(A000124(n+4)))`
-/

namespace A241872.P708614149449412268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238858 (A080036 (A000124 (n + 4)).toNat).toNat

end

end A241872.P708614149449412268

/-! ## A241872.P9700548031797021226

`A238858(A245300(A167499(n+1)+n))`
-/

namespace A241872.P9700548031797021226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238858 (A245300 (A167499 (n + 1) + (n : ℤ)).toNat).toNat

end

end A241872.P9700548031797021226

/-! ## A241872.P2580986484578008533

`record[A238858(A167614(n+1)-A057427(n))]`
-/

namespace A241872.P2580986484578008533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238858 (A167614 (n + 1) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241872.P2580986484578008533

/-! ## A241872.P16543771043901720889

`A238858(A033638(n+5)+A033638(n+6))`
-/

namespace A241872.P16543771043901720889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238858 (A033638 (n + 5) + A033638 (n + 6)).toNat

end

end A241872.P16543771043901720889

/-!
# A241873: Number of ascent sequences of length n with exactly three descents.

The programs for A241873, there is no canonical definition to state claims against.
-/

/-! ## A241873.P17375641581236442607

`A238858(A000124(n+6)+2)`
-/

namespace A241873.P17375641581236442607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238858 (A000124 (n + 6) + 2).toNat

end

end A241873.P17375641581236442607

/-! ## A241873.P4976264256410964349

`A238858(A055998(n+4)+6)`
-/

namespace A241873.P4976264256410964349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238858 (A055998 (n + 4) + 6).toNat

end

end A241873.P4976264256410964349

/-! ## A241873.P17848722734701719251

`A238858(A245300(A166136(n+1)+n))`
-/

namespace A241873.P17848722734701719251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238858 (A245300 (A166136 (n + 1) + (n : ℤ)).toNat).toNat

end

end A241873.P17848722734701719251

/-! ## A241873.P10038404864585070245

`record[A238858(A057427(n)*A167614(n+1))]`
-/

namespace A241873.P10038404864585070245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238858 (A057427 n * A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241873.P10038404864585070245

/-! ## A241873.P17697837331391084844

`A238858(A245300(A167499(n+1)+n+1))`
-/

namespace A241873.P17697837331391084844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238858 (A245300 (A167499 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A241873.P17697837331391084844

/-! ## A241873.P10340451124143755225

`A238858(A033638(n+5)+A033638(n+8))`
-/

namespace A241873.P10340451124143755225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238858 (A033638 (n + 5) + A033638 (n + 8)).toNat

end

end A241873.P10340451124143755225

/-! ## A241873.P3135077556138515086

`A238858(eq[8, A222127(n+1)])`
-/

namespace A241873.P3135077556138515086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241873.P3135077556138515086

/-! ## A241873.P5471517989038157914

`A238858(eq[6, A214015(n)])`
-/

namespace A241873.P5471517989038157914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241873.P5471517989038157914

/-!
# A241874: Number of ascent sequences of length n with exactly four descents.

The programs for A241874, there is no canonical definition to state claims against.
-/

/-! ## A241874.P1234568276953911094

`A238858(eq[60, A292795(n)])`
-/

namespace A241874.P1234568276953911094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  60

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241874.P1234568276953911094

/-! ## A241874.P12421972288546845740

`A238858(A167614(n+7)+1)`
-/

namespace A241874.P12421972288546845740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238858 (A167614 (n + 7) + 1).toNat

end

end A241874.P12421972288546845740

/-! ## A241874.P6552032094211914682

`A238858(A000124(n+8)+3)`
-/

namespace A241874.P6552032094211914682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238858 (A000124 (n + 8) + 3).toNat

end

end A241874.P6552032094211914682

/-! ## A241874.P12538309223792975403

`A238858(A000217(n+8)+4)`
-/

namespace A241874.P12538309223792975403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238858 (A000217 (n + 8) + 4).toNat

end

end A241874.P12538309223792975403

/-! ## A241874.P4548250576048596241

`A238858(eq[9, A255636(n+1)])`
-/

namespace A241874.P4548250576048596241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241874.P4548250576048596241

/-! ## A241874.P7671250213036820260

`A238858(Δ[A000292(n+7)]+4)`
-/

namespace A241874.P7671250213036820260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238858 (f1 (n + 1) - f1 n + 4).toNat

end

end A241874.P7671250213036820260

/-!
# A241875: Number of ascent sequences of length n with exactly five descents.

The programs for A241875, there is no canonical definition to state claims against.
-/

/-! ## A241875.P1864802612002658721

`A238858(A167499(n+8))`
-/

namespace A241875.P1864802612002658721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238858 (A167499 (n + 8)).toNat

end

end A241875.P1864802612002658721

/-! ## A241875.P13792252060092517841

`A238858(eq[8, A239550(n)])`
-/

namespace A241875.P13792252060092517841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241875.P13792252060092517841

/-!
# A241876: Number of ascent sequences of length n with exactly six descents.

The programs for A241876, there is no canonical definition to state claims against.
-/

/-! ## A241876.P4873490827168251876

`A238858(A167614(n+9)+3)`
-/

namespace A241876.P4873490827168251876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238858 (A167614 (n + 9) + 3).toNat

end

end A241876.P4873490827168251876

/-!
# A241877: Number of ascent sequences of length n with exactly seven descents.

The programs for A241877, there is no canonical definition to state claims against.
-/

/-! ## A241877.P4689326375093189278

`A238858(A167487(n+11))`
-/

namespace A241877.P4689326375093189278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238858 (A167487 (n + 11)).toNat

end

end A241877.P4689326375093189278

/-!
# A241881: Number of ascent sequences of length n with the maximal number of descents.

The programs for A241881, there is no canonical definition to state claims against.
-/

/-! ## A241881.P16958281400261021977

`A238858(A000096(n)-round(sqrt(2*n)))`
-/

namespace A241881.P16958281400261021977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238858 (A000096 n - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

end

end A241881.P16958281400261021977

/-! ## A241881.P2246434556937523701

`A238858(A034856(n+1)-A080036(n))`
-/

namespace A241881.P2246434556937523701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238858 (A034856 (n + 1) - A080036 n).toNat

end

end A241881.P2246434556937523701

/-! ## A241881.P4890233132133908144

`A238858(lt[n*A238121(n+1), A259479(n)])`
-/

namespace A241881.P4890233132133908144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A238121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259479 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238858 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A241881.P4890233132133908144

/-!
# A241882: Numbers with d digits that are divisible by 2^d and have at most 2 distinct digits: exactly one even digit and at most one odd digit.

The programs for A241882, there is no canonical definition to state claims against.
-/

/-! ## A241882.P1436493408768932511

`∑[2^A002828(A006966(n))]`
-/

namespace A241882.P1436493408768932511
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002828 (A006966 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241882.P1436493408768932511

/-! ## A241882.P15438229016254113201

`∑[A064128(A064128(n+1)+A052955(n))]`
-/

namespace A241882.P15438229016254113201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064128 (A064128 (n + 1) + A052955 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241882.P15438229016254113201

/-! ## A241882.P5683277269686505980

`eq[A249306(n+1), A292258(A003639(2*(n+1)))]`
-/

namespace A241882.P5683277269686505980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292258 (A003639 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A241882.P5683277269686505980

/-! ## A241882.P7543156218632832461

`∑[A000005(A209325(n)+5)]`
-/

namespace A241882.P7543156218632832461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A209325 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241882.P7543156218632832461

/-! ## A241882.P12364300639691261518

`∑[A000005(or(2, A137953(n)))]`
-/

namespace A241882.P12364300639691261518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lor 2 (A137953 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241882.P12364300639691261518

/-!
# A241884: Numbers n such that n - n^2/k^2 is not prime for all k < n.

The programs for A241884, there is no canonical definition to state claims against.
-/

/-! ## A241884.P18125311501211735505

`eq[A025468(A140106(n²+1)), A055672(n)]+1`
-/

namespace A241884.P18125311501211735505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 (A140106 (n ^ 2 + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A241884.P18125311501211735505

/-! ## A241884.P782824166415641759

`record[A144786(n+1)-A055672(n)]`
-/

namespace A241884.P782824166415641759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144786 (n + 1) - A055672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241884.P782824166415641759

/-! ## A241884.P6577777771720778437

`record[A163638(n)+A085491(A085491(n))]`
-/

namespace A241884.P6577777771720778437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163638 n + A085491 (A085491 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241884.P6577777771720778437

/-! ## A241884.P7245702483517661097

`eq[A025468(A102569((n+1)^(n²%3))), A055672(n)]+1`
-/

namespace A241884.P7245702483517661097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 (A102569 ((n + 1) ^ (n ^ 2 % 3))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A241884.P7245702483517661097

/-! ## A241884.P4721147024488367763

`eq[A025468(A102569(n+1)), A055672(n)]+1`
-/

namespace A241884.P4721147024488367763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 (A102569 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A241884.P4721147024488367763

/-!
# A241885: Write the coefficient of x^n/n! in the expansion of (x/(exp(x)-1))^(1/2) as f(n)/g(n); sequence gives f(n).

The programs for A241885, there is no canonical definition to state claims against.
-/

/-! ## A241885.P1724845932087200943

`A370414(∑[n])`
-/

namespace A241885.P1724845932087200943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370414 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A241885.P1724845932087200943

/-! ## A241885.P1421022356519656972

`or(1, A370414(A000217(n)))`
-/

namespace A241885.P1421022356519656972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A370414 (A000217 n).toNat)

end

end A241885.P1421022356519656972

/-! ## A241885.P6820081197932095338

`A370414(A000217(n))%A004171(n)`
-/

namespace A241885.P6820081197932095338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A370414 (A000217 n).toNat) (A004171 n)

end

end A241885.P6820081197932095338

/-! ## A241885.P8619287833744078855

`A370414(A000217(n))+A070201(n+1)`
-/

namespace A241885.P8619287833744078855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370414 (A000217 n).toNat + A070201 (n + 1)

end

end A241885.P8619287833744078855

/-! ## A241885.P9862988673934559788

`A370414(A000217(n))+A091194(n+1)`
-/

namespace A241885.P9862988673934559788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370414 (A000217 n).toNat + A091194 (n + 1)

end

end A241885.P9862988673934559788

/-!
# A241886: a(n) = smallest prime p such that there is a gap of n*(n+1) between p and the next prime.

The programs for A241886, there is no canonical definition to state claims against.
-/

/-! ## A241886.P11915350842942038446

`A000230((n+1)*(n+2)/2)`
-/

namespace A241886.P11915350842942038446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (SequenceMachineLib.roundAway (((n + 1) * (n + 2) : ℚ) / 2)).toNat

end

end A241886.P11915350842942038446

/-! ## A241886.P791698402752795335

`A045881(∑[n+1])-1`
-/

namespace A241886.P791698402752795335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045881 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A241886.P791698402752795335

/-! ## A241886.P8200199783501726701

`or(1, A000230(A000096(n)+1))`
-/

namespace A241886.P8200199783501726701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000230 (A000096 n + 1).toNat)

end

end A241886.P8200199783501726701

/-! ## A241886.P7263152901520610208

`or(1, A000230(A000217(n+1)))`
-/

namespace A241886.P7263152901520610208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000230 (A000217 (n + 1)).toNat)

end

end A241886.P7263152901520610208

/-! ## A241886.P16614098336475867935

`A000230(A000096(n)+1)*A133707(n+1)`
-/

namespace A241886.P16614098336475867935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (A000096 n + 1).toNat * A133707 (n + 1)

end

end A241886.P16614098336475867935

/-!
# A241888: a(n) = 2^(4*n + 1) - 1.

The programs for A241888, the canonical program `A241888.P7078688151318599760` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241888 has offset 0).

The definition of A241888 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(4*n+1)-1` (program `A241888.P7078688151318599760`, by `A241888.P7078688151318599760.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A241888.P7078688151318599760

`2^(4*n+1)-1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A241888

/-- `2^(4*n+1)-1` -/
def P7078688151318599760.Spec : Prop :=
  ∀ n, P7078688151318599760.a n = A241888 n

theorem P7078688151318599760.correct : P7078688151318599760.Spec := by
  intro n
  simp only [A241888]

end A241888

/-! ## A241888.P14752579012668365698

`A000225(4*n+1)`
-/

namespace A241888.P14752579012668365698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (4 * n + 1)

end

end A241888.P14752579012668365698

namespace A241888

/-- `A000225(4*n+1)` -/
def P14752579012668365698.Spec : Prop :=
  ∀ n, P14752579012668365698.a n = A241888 n

end A241888

/-! ## A241888.P4318331148478333735

`ogf((1+14x)/(1-17x+16x^2))`
-/

namespace A241888.P4318331148478333735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 14] [1, -17, 16] n

end

end A241888.P4318331148478333735

namespace A241888

/-- `ogf((1+14x)/(1-17x+16x^2))` -/
def P4318331148478333735.Spec : Prop :=
  ∀ n, P4318331148478333735.a n = A241888 n

end A241888

/-! ## A241888.P8916584088853579606

`or(15, 16*a(n-1))` with `a(0)=1`
-/

namespace A241888.P8916584088853579606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 15 (16 * a (n - 1))

end

end A241888.P8916584088853579606

namespace A241888

/-- `or(15, 16*a(n-1))` -/
def P8916584088853579606.Spec : Prop :=
  ∀ n, (P8916584088853579606.a n : ℤ) = A241888 n

end A241888

/-! ## A241888.P13870421118303201184

`xor(15, 16*a(n-1))` with `a(0)=1`
-/

namespace A241888.P13870421118303201184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 15 (16 * a (n - 1))

end

end A241888.P13870421118303201184

namespace A241888

/-- `xor(15, 16*a(n-1))` -/
def P13870421118303201184.Spec : Prop :=
  ∀ n, (P13870421118303201184.a n : ℤ) = A241888 n

end A241888

/-! ## A241888.P3259638383814911154

`xor(15, lcm(16, a(n-1)))` with `a(0)=1`
-/

namespace A241888.P3259638383814911154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 15 (Nat.lcm 16 (a (n - 1)))

end

end A241888.P3259638383814911154

namespace A241888

/-- `xor(15, lcm(16, a(n-1)))` -/
def P3259638383814911154.Spec : Prop :=
  ∀ n, (P3259638383814911154.a n : ℤ) = A241888 n

end A241888

/-! ## A241888.P10191764059328600155

`∑[16*a(n-1)]` with `a(0)=1, a(1)=30`
-/

namespace A241888.P10191764059328600155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 30] fun n f1 =>
  16 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241888.P10191764059328600155

namespace A241888

/-- `∑[16*a(n-1)]` -/
def P10191764059328600155.Spec : Prop :=
  ∀ n, (P10191764059328600155.a n : ℤ) = A241888 n

end A241888

/-! ## A241888.P2240975171279638153

`xor(16^n-1, 16^n)`
-/

namespace A241888.P2240975171279638153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((16 ^ n : ℤ) - 1) (16 ^ n : ℤ)

end

end A241888.P2240975171279638153

namespace A241888

/-- `xor(16^n-1, 16^n)` -/
def P2240975171279638153.Spec : Prop :=
  ∀ n, P2240975171279638153.a n = A241888 n

end A241888

/-! ## A241888.P9201914529864571680

`record[-(4*a(n-1)+5)]` with `a(0)=1`
-/

namespace A241888.P9201914529864571680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -(4 * f1 (n - 1) + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241888.P9201914529864571680

namespace A241888

/-- `record[-(4*a(n-1)+5)]` -/
def P9201914529864571680.Spec : Prop :=
  ∀ n, P9201914529864571680.a n = A241888 n

end A241888

/-! ## A241888.P1067431458362783391

`A083420(2*n)`
-/

namespace A241888.P1067431458362783391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083420 (2 * n)

end

end A241888.P1067431458362783391

namespace A241888

/-- `A083420(2*n)` -/
def P1067431458362783391.Spec : Prop :=
  ∀ n, P1067431458362783391.a n = A241888 n

end A241888

/-!
# A241889: a(n) = n^2 + 23.

The programs for A241889, the canonical program `A241889.P8482498643878434743` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241889 has offset 0).

The definition of A241889 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+23` (program `A241889.P8482498643878434743`, by `A241889.P8482498643878434743.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A241889.P8482498643878434743

`n²+23`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A241889

/-- `n²+23` -/
def P8482498643878434743.Spec : Prop :=
  ∀ n, (P8482498643878434743.a n : ℤ) = A241889 n

theorem P8482498643878434743.correct : P8482498643878434743.Spec := by
  intro n
  simp only [A241889]

end A241889

/-!
# A241890: a(n) = n^2 + 24.

The programs for A241890, the canonical program `A241890.P11570905073153749260` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241890 has offset 0).

The definition of A241890 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+24` (program `A241890.P11570905073153749260`, by `A241890.P11570905073153749260.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A241890.P11570905073153749260

`n²+24`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A241890

/-- `n²+24` -/
def P11570905073153749260.Spec : Prop :=
  ∀ n, (P11570905073153749260.a n : ℤ) = A241890 n

theorem P11570905073153749260.correct : P11570905073153749260.Spec := by
  intro n
  simp only [A241890]

end A241890

/-!
# A241891: Total number of unit squares appearing in the Thue-Morse sequence of logical matrices (1, 0 version) after n stages.

The programs for A241891, the canonical program `A241891.P9479106235604816941` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241891 has offset 0).

The definition of A241891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241891.P9479106235604816941

`A241682(n)+A176742(n)²`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A241891

/-- `A241682(n)+A176742(n)²` -/
def P9479106235604816941.Spec : Prop :=
  ∀ n, P9479106235604816941.a n = A241891 n

theorem P9479106235604816941.correct : P9479106235604816941.Spec := by
  intro n
  simp only [A241891]

end A241891

/-! ## A241891.P837429569124755343

`A128209(n)²-A241682(n)`
-/

namespace A241891.P837429569124755343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128209 n ^ 2 - A241682 n

end

end A241891.P837429569124755343

namespace A241891

/-- `A128209(n)²-A241682(n)` -/
def P837429569124755343.Spec : Prop :=
  ∀ n, P837429569124755343.a n = A241891 n

end A241891

/-! ## A241891.P12459189017717956743

`A241894(n)-(A241893(n)+A241892(n))`
-/

namespace A241891.P12459189017717956743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241894 n - (A241893 n + A241892 n)

end

end A241891.P12459189017717956743

namespace A241891

/-- `A241894(n)-(A241893(n)+A241892(n))` -/
def P12459189017717956743.Spec : Prop :=
  ∀ n, P12459189017717956743.a n = A241891 n

end A241891

/-! ## A241891.P10300301133194797785

`A176742(n)²+A241685(n)-(A241684(n)+A241683(n))`
-/

namespace A241891.P10300301133194797785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176742 n ^ 2 + (A241685 n - (A241684 n + A241683 n))

end

end A241891.P10300301133194797785

namespace A241891

/-- `A176742(n)²+A241685(n)-(A241684(n)+A241683(n))` -/
def P10300301133194797785.Spec : Prop :=
  ∀ n, P10300301133194797785.a n = A241891 n

end A241891

/-! ## A241891.P11544543596371565067

`A128209(n)²-(A123344(n)-A167193(n))*A084247(n)`
-/

namespace A241891.P11544543596371565067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128209 n ^ 2 - (A123344 n - A167193 n) * A084247 n

end

end A241891.P11544543596371565067

namespace A241891

/-- `A128209(n)²-(A123344(n)-A167193(n))*A084247(n)` -/
def P11544543596371565067.Spec : Prop :=
  ∀ n, P11544543596371565067.a n = A241891 n

end A241891

/-!
# A241892: Total number of 2 X 2 squares appearing in the Thue-Morse sequence logical matrices (1, 0 version) after n stages.

The programs for A241892, the canonical program `A241892.P12101613970399667759` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241892 has offset 0).

The definition of A241892 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241892.P13865817157217564262

`A241683(n)+char[2*(n+1)]`
-/

namespace A241892.P13865817157217564262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241683 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A241892.P13865817157217564262

namespace A241892

/-- `A241683(n)+char[2*(n+1)]` -/
def P13865817157217564262.Spec : Prop :=
  ∀ n, P13865817157217564262.a n = A241892 n

end A241892

/-! ## A241892.P5006834781421932067

`A084152(n)-A000975(A289207(n))`
-/

namespace A241892.P5006834781421932067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084152 n - A000975 (A289207 n).toNat

end

end A241892.P5006834781421932067

namespace A241892

/-- `A084152(n)-A000975(A289207(n))` -/
def P5006834781421932067.Spec : Prop :=
  ∀ n, P5006834781421932067.a n = A241892 n

end A241892

/-! ## A241892.P12101613970399667759

`A005578(n)+A084152(n)-A011782(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A241892

/-- `A005578(n)+A084152(n)-A011782(n)` -/
def P12101613970399667759.Spec : Prop :=
  ∀ n, P12101613970399667759.a n = A241892 n

theorem P12101613970399667759.correct : P12101613970399667759.Spec := by
  intro n
  simp only [A241892]

end A241892

/-! ## A241892.P14619138625033953659

`A023105(n)+A084152(n)-A128209(n)`
-/

namespace A241892.P14619138625033953659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023105 n + (A084152 n - A128209 n)

end

end A241892.P14619138625033953659

namespace A241892

/-- `A023105(n)+A084152(n)-A128209(n)` -/
def P14619138625033953659.Spec : Prop :=
  ∀ n, P14619138625033953659.a n = A241892 n

end A241892

/-! ## A241892.P91192628444104803

`A023105(n)*A078008(n)-A097072(n)`
-/

namespace A241892.P91192628444104803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023105 n * A078008 n - A097072 n

end

end A241892.P91192628444104803

namespace A241892

/-- `A023105(n)*A078008(n)-A097072(n)` -/
def P91192628444104803.Spec : Prop :=
  ∀ n, P91192628444104803.a n = A241892 n

end A241892

/-! ## A241892.P11451399919749412382

`A084152(n)-A000975(n)%A011782(n)`
-/

namespace A241892.P11451399919749412382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084152 n - Int.tmod (A000975 n) (A011782 n)

end

end A241892.P11451399919749412382

namespace A241892

/-- `A084152(n)-A000975(n)%A011782(n)` -/
def P11451399919749412382.Spec : Prop :=
  ∀ n, P11451399919749412382.a n = A241892 n

end A241892

/-! ## A241892.P9465564208644824745

`ceil(floor(2^n/3)²/2)`
-/

namespace A241892.P9465564208644824745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊(2 ^ n : ℚ) / 3⌋ ^ 2 : ℚ) / 2⌉

end

end A241892.P9465564208644824745

namespace A241892

/-- `ceil(floor(2^n/3)²/2)` -/
def P9465564208644824745.Spec : Prop :=
  ∀ n, P9465564208644824745.a n = A241892 n

end A241892

/-! ## A241892.P992036922398793843

`(1-A005578(n))²-A241683(n)`
-/

namespace A241892.P992036922398793843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A005578 n) ^ 2 - A241683 n

end

end A241892.P992036922398793843

namespace A241892

/-- `(1-A005578(n))²-A241683(n)` -/
def P992036922398793843.Spec : Prop :=
  ∀ n, P992036922398793843.a n = A241892 n

end A241892

/-! ## A241892.P3521770067366258215

`A241894(n)-(A241893(n)+A241891(n))`
-/

namespace A241892.P3521770067366258215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241894 n - (A241893 n + A241891 n)

end

end A241892.P3521770067366258215

namespace A241892

/-- `A241894(n)-(A241893(n)+A241891(n))` -/
def P3521770067366258215.Spec : Prop :=
  ∀ n, P3521770067366258215.a n = A241892 n

end A241892

/-! ## A241892.P17581814394491311867

`A084175(n)-or(A000975(n), A003683(n))`
-/

namespace A241892.P17581814394491311867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084175 n - Int.lor (A000975 n) (A003683 n)

end

end A241892.P17581814394491311867

namespace A241892

/-- `A084175(n)-or(A000975(n), A003683(n))` -/
def P17581814394491311867.Spec : Prop :=
  ∀ n, P17581814394491311867.a n = A241892 n

end A241892

/-! ## A241892.P2112752107386872860

`round(A141023(n)²/18)`
-/

namespace A241892.P2112752107386872860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A141023 n ^ 2 : ℚ) / 18)

end

end A241892.P2112752107386872860

namespace A241892

/-- `round(A141023(n)²/18)` -/
def P2112752107386872860.Spec : Prop :=
  ∀ n, P2112752107386872860.a n = A241892 n

end A241892

/-! ## A241892.P2254793325974704672

`round((1-A001045(n+1))²/8)`
-/

namespace A241892.P2254793325974704672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((1 - A001045 (n + 1)) ^ 2 : ℚ) / 8)

end

end A241892.P2254793325974704672

namespace A241892

/-- `round((1-A001045(n+1))²/8)` -/
def P2254793325974704672.Spec : Prop :=
  ∀ n, P2254793325974704672.a n = A241892 n

end A241892

/-!
# A241893: The total number of rectangles appearing in the Thue-Morse sequence logical matrices (1, 0 version) after n stages.

The programs for A241893, the canonical program `A241893.P363522728590733482` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241893 has offset 0).

The definition of A241893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241893.P363522728590733482

`4*floor((A005578(n+1)/4)²)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A241893

/-- `4*floor((A005578(n+1)/4)²)` -/
def P363522728590733482.Spec : Prop :=
  ∀ n, P363522728590733482.a n = A241893 n

theorem P363522728590733482.correct : P363522728590733482.Spec := by
  intro n
  simp only [A241893]

end A241893

/-! ## A241893.P3194966613311639534

`A241894(n)-(A241892(n)+A241891(n))`
-/

namespace A241893.P3194966613311639534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241894 n - (A241892 n + A241891 n)

end

end A241893.P3194966613311639534

namespace A241893

/-- `A241894(n)-(A241892(n)+A241891(n))` -/
def P3194966613311639534.Spec : Prop :=
  ∀ n, P3194966613311639534.a n = A241893 n

end A241893

/-! ## A241893.P6997308533756797593

`(A166977(n)+A083944(n))*A167030(n)`
-/

namespace A241893.P6997308533756797593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166977 n + A083944 n) * A167030 n

end

end A241893.P6997308533756797593

namespace A241893

/-- `(A166977(n)+A083944(n))*A167030(n)` -/
def P6997308533756797593.Spec : Prop :=
  ∀ n, P6997308533756797593.a n = A241893 n

end A241893

/-! ## A241893.P14554483059181518760

`A001045(n)*A005578(n)-A134451(n)`
-/

namespace A241893.P14554483059181518760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A005578 n - A134451 n

end

end A241893.P14554483059181518760

namespace A241893

/-- `A001045(n)*A005578(n)-A134451(n)` -/
def P14554483059181518760.Spec : Prop :=
  ∀ n, P14554483059181518760.a n = A241893 n

end A241893

/-! ## A241893.P1748393594239138997

`A084639(n)%A036563(n)*A167030(n)`
-/

namespace A241893.P1748393594239138997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084639 n) (A036563 n) * A167030 n

end

end A241893.P1748393594239138997

namespace A241893

/-- `A084639(n)%A036563(n)*A167030(n)` -/
def P1748393594239138997.Spec : Prop :=
  ∀ n, P1748393594239138997.a n = A241893 n

end A241893

/-! ## A241893.P12905457330147925887

`xor(A059841(n), A128209(n))*A167030(n)`
-/

namespace A241893.P12905457330147925887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059841 n) (A128209 n) * A167030 n

end

end A241893.P12905457330147925887

namespace A241893

/-- `xor(A059841(n), A128209(n))*A167030(n)` -/
def P12905457330147925887.Spec : Prop :=
  ∀ n, P12905457330147925887.a n = A241893 n

end A241893

/-! ## A241893.P17168238582941943537

`A000975(n)%A005578(n)*A023105(n+1)`
-/

namespace A241893.P17168238582941943537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000975 n) (A005578 n) * A023105 (n + 1)

end

end A241893.P17168238582941943537

namespace A241893

/-- `A000975(n)%A005578(n)*A023105(n+1)` -/
def P17168238582941943537.Spec : Prop :=
  ∀ n, P17168238582941943537.a n = A241893 n

end A241893

/-! ## A241893.P16853617112613854557

`A005578(n+2)%A005578(n)*A023105(n+1)`
-/

namespace A241893.P16853617112613854557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005578 (n + 2)) (A005578 n) * A023105 (n + 1)

end

end A241893.P16853617112613854557

namespace A241893

/-- `A005578(n+2)%A005578(n)*A023105(n+1)` -/
def P16853617112613854557.Spec : Prop :=
  ∀ n, P16853617112613854557.a n = A241893 n

end A241893

/-! ## A241893.P5683598421118304518

`and(A000918(n), A133684(2*n))*A023105(n+1)`
-/

namespace A241893.P5683598421118304518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000918 n) (A133684 (2 * n)) * A023105 (n + 1)

end

end A241893.P5683598421118304518

namespace A241893

/-- `and(A000918(n), A133684(2*n))*A023105(n+1)` -/
def P5683598421118304518.Spec : Prop :=
  ∀ n, P5683598421118304518.a n = A241893 n

end A241893

/-! ## A241893.P12708549212366925876

`and(A133684(2*n+1), A133684(2*n))*A023105(n+1)`
-/

namespace A241893.P12708549212366925876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A133684 (2 * n + 1)) (A133684 (2 * n)) * A023105 (n + 1)

end

end A241893.P12708549212366925876

namespace A241893

/-- `and(A133684(2*n+1), A133684(2*n))*A023105(n+1)` -/
def P12708549212366925876.Spec : Prop :=
  ∀ n, P12708549212366925876.a n = A241893 n

end A241893

/-! ## A241893.P1895746745450805493

`A241684(n)-A241684(n+4)%A001045(n+2)`
-/

namespace A241893.P1895746745450805493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241684 n - Int.tmod (A241684 (n + 4)) (A001045 (n + 2))

end

end A241893.P1895746745450805493

namespace A241893

/-- `A241684(n)-A241684(n+4)%A001045(n+2)` -/
def P1895746745450805493.Spec : Prop :=
  ∀ n, P1895746745450805493.a n = A241893 n

end A241893

/-!
# A241894: The total number of squares and rectangles appearing in the Thue-Morse sequence (1, 0 version) logical matrices after n stages.

The programs for A241894, the canonical program `A241894.P17174019636187558007` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241894 has offset 0).

The definition of A241894 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241894.P17174019636187558007

`A000982(A005578(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A241894

/-- `A000982(A005578(n+1))` -/
def P17174019636187558007.Spec : Prop :=
  ∀ n, P17174019636187558007.a n = A241894 n

theorem P17174019636187558007.correct : P17174019636187558007.Spec := by
  intro n
  simp only [A241894]

end A241894

/-! ## A241894.P11561809834771008760

`round(2^n/3)²+2*a(n-1)-n%2` with `a(0)=1`
-/

namespace A241894.P11561809834771008760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3) ^ 2 + (2 * a (n - 1) - ((n % 2 : ℕ) : ℤ))

end

end A241894.P11561809834771008760

namespace A241894

/-- `round(2^n/3)²+2*a(n-1)-n%2` -/
def P11561809834771008760.Spec : Prop :=
  ∀ n, P11561809834771008760.a n = A241894 n

end A241894

/-! ## A241894.P11434670483002916781

`A241685(n)+char[2*n]`
-/

namespace A241894.P11434670483002916781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241685 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A241894.P11434670483002916781

namespace A241894

/-- `A241685(n)+char[2*n]` -/
def P11434670483002916781.Spec : Prop :=
  ∀ n, P11434670483002916781.a n = A241894 n

end A241894

/-! ## A241894.P6934539438476617714

`ceil(∑[A003683(n)]+2^n/3)`
-/

namespace A241894.P6934539438476617714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + (2 ^ n : ℚ) / 3⌉

end

end A241894.P6934539438476617714

namespace A241894

/-- `ceil(∑[A003683(n)]+2^n/3)` -/
def P6934539438476617714.Spec : Prop :=
  ∀ n, P6934539438476617714.a n = A241894 n

end A241894

/-! ## A241894.P7628031047375892170

`A084152(n+1)+ceil(2^n/3)`
-/

namespace A241894.P7628031047375892170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084152 (n + 1) + ⌈(2 ^ n : ℚ) / 3⌉

end

end A241894.P7628031047375892170

namespace A241894

/-- `A084152(n+1)+ceil(2^n/3)` -/
def P7628031047375892170.Spec : Prop :=
  ∀ n, P7628031047375892170.a n = A241894 n

end A241894

/-! ## A241894.P1925655966431252597

`A084175(n)+A005578(n)`
-/

namespace A241894.P1925655966431252597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084175 n + A005578 n

end

end A241894.P1925655966431252597

namespace A241894

/-- `A084175(n)+A005578(n)` -/
def P1925655966431252597.Spec : Prop :=
  ∀ n, P1925655966431252597.a n = A241894 n

end A241894

/-! ## A241894.P8038980813312157885

`xor(A059841(n), A241685(n))`
-/

namespace A241894.P8038980813312157885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059841 n) (A241685 n)

end

end A241894.P8038980813312157885

namespace A241894

/-- `xor(A059841(n), A241685(n))` -/
def P8038980813312157885.Spec : Prop :=
  ∀ n, P8038980813312157885.a n = A241894 n

end A241894

/-! ## A241894.P6856273966640312108

`A005578(n)+∑[A003683(n)]`
-/

namespace A241894.P6856273966640312108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241894.P6856273966640312108

namespace A241894

/-- `A005578(n)+∑[A003683(n)]` -/
def P6856273966640312108.Spec : Prop :=
  ∀ n, P6856273966640312108.a n = A241894 n

end A241894

/-! ## A241894.P9776820072313497103

`A001045(n)²+A005578(n)²`
-/

namespace A241894.P9776820072313497103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n ^ 2 + A005578 n ^ 2

end

end A241894.P9776820072313497103

namespace A241894

/-- `A001045(n)²+A005578(n)²` -/
def P9776820072313497103.Spec : Prop :=
  ∀ n, P9776820072313497103.a n = A241894 n

end A241894

/-! ## A241894.P9724605346516577424

`A241892(n+1)+A001045(n+1)`
-/

namespace A241894.P9724605346516577424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241892 (n + 1) + A001045 (n + 1)

end

end A241894.P9724605346516577424

namespace A241894

/-- `A241892(n+1)+A001045(n+1)` -/
def P9724605346516577424.Spec : Prop :=
  ∀ n, P9724605346516577424.a n = A241894 n

end A241894

/-! ## A241894.P8209908701532594978

`A241683(n+1)+A005578(n+1)`
-/

namespace A241894.P8209908701532594978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241683 (n + 1) + A005578 (n + 1)

end

end A241894.P8209908701532594978

namespace A241894

/-- `A241683(n+1)+A005578(n+1)` -/
def P8209908701532594978.Spec : Prop :=
  ∀ n, P8209908701532594978.a n = A241894 n

end A241894

/-! ## A241894.P14367862962331410847

`A023105(n+1)+A084152(n+1)-1`
-/

namespace A241894.P14367862962331410847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023105 (n + 1) + (A084152 (n + 1) - 1)

end

end A241894.P14367862962331410847

namespace A241894

/-- `A023105(n+1)+A084152(n+1)-1` -/
def P14367862962331410847.Spec : Prop :=
  ∀ n, P14367862962331410847.a n = A241894 n

end A241894

/-! ## A241894.P14818719189364967413

`A241891(n)+A241893(n)+A241892(n)`
-/

namespace A241894.P14818719189364967413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241891 n + (A241893 n + A241892 n)

end

end A241894.P14818719189364967413

namespace A241894

/-- `A241891(n)+A241893(n)+A241892(n)` -/
def P14818719189364967413.Spec : Prop :=
  ∀ n, P14818719189364967413.a n = A241894 n

end A241894

/-! ## A241894.P5976573518700175174

`A005578(n)+A001045(n+1)*A001045(n)`
-/

namespace A241894.P5976573518700175174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n + A001045 (n + 1) * A001045 n

end

end A241894.P5976573518700175174

namespace A241894

/-- `A005578(n)+A001045(n+1)*A001045(n)` -/
def P5976573518700175174.Spec : Prop :=
  ∀ n, P5976573518700175174.a n = A241894 n

end A241894

/-! ## A241894.P5706827112585585421

`A000035(n+1)+A001045(n)*A052953(n)`
-/

namespace A241894.P5706827112585585421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) + A001045 n * A052953 n

end

end A241894.P5706827112585585421

namespace A241894

/-- `A000035(n+1)+A001045(n)*A052953(n)` -/
def P5706827112585585421.Spec : Prop :=
  ∀ n, P5706827112585585421.a n = A241894 n

end A241894

/-! ## A241894.P17993139232844058691

`A052953(n)*A128209(n)-A005578(n+1)`
-/

namespace A241894.P17993139232844058691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052953 n * A128209 n - A005578 (n + 1)

end

end A241894.P17993139232844058691

namespace A241894

/-- `A052953(n)*A128209(n)-A005578(n+1)` -/
def P17993139232844058691.Spec : Prop :=
  ∀ n, P17993139232844058691.a n = A241894 n

end A241894

/-! ## A241894.P11618708608143297254

`A000975(n+1)+A241892(n+1)-A000975(n)`
-/

namespace A241894.P11618708608143297254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (n + 1) + (A241892 (n + 1) - A000975 n)

end

end A241894.P11618708608143297254

namespace A241894

/-- `A000975(n+1)+A241892(n+1)-A000975(n)` -/
def P11618708608143297254.Spec : Prop :=
  ∀ n, P11618708608143297254.a n = A241894 n

end A241894

/-! ## A241894.P13733359535000087247

`A000975(n+1)+A167030(n+1)*A167030(n)`
-/

namespace A241894.P13733359535000087247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (n + 1) + A167030 (n + 1) * A167030 n

end

end A241894.P13733359535000087247

namespace A241894

/-- `A000975(n+1)+A167030(n+1)*A167030(n)` -/
def P13733359535000087247.Spec : Prop :=
  ∀ n, P13733359535000087247.a n = A241894 n

end A241894

/-! ## A241894.P17504874823524308320

`A128209(n+1)*A128209(n)-A005578(n+1)`
-/

namespace A241894.P17504874823524308320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128209 (n + 1) * A128209 n - A005578 (n + 1)

end

end A241894.P17504874823524308320

namespace A241894

/-- `A128209(n+1)*A128209(n)-A005578(n+1)` -/
def P17504874823524308320.Spec : Prop :=
  ∀ n, P17504874823524308320.a n = A241894 n

end A241894

/-! ## A241894.P11878778719780645243

`A000975(n+1)-A167193(n+1)*A167193(n)`
-/

namespace A241894.P11878778719780645243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (n + 1) - A167193 (n + 1) * A167193 n

end

end A241894.P11878778719780645243

namespace A241894

/-- `A000975(n+1)-A167193(n+1)*A167193(n)` -/
def P11878778719780645243.Spec : Prop :=
  ∀ n, P11878778719780645243.a n = A241894 n

end A241894

/-!
# A241897: Primes p equal to the sum in base 3 of the digits of all primes < p - digit-sum of the index of prime p(i-1).

The programs for A241897, there is no canonical definition to state claims against.
-/

/-! ## A241897.P7874298395655834737

`A073523(∪[A320331(n+4), A320329(n)])`
-/

namespace A241897.P7874298395655834737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320331 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320329 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073523 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A241897.P7874298395655834737

/-!
# A241898: a(n) is the largest integer such that n = a(n)^2 + ... is a decomposition of n into a sum of at most four nondecreasing squares.

The programs for A241898, there is no canonical definition to state claims against.
-/

/-! ## A241898.P5872174317330876335

`A191090(or(A072965(n+1), A185284(n)))`
-/

namespace A241898.P5872174317330876335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191090 (Int.lor (A072965 (n + 1)) (A185284 n)).toNat

end

end A241898.P5872174317330876335

/-! ## A241898.P6932488564644264729

`A191090(A072965(n+1)%A119845(n+2))`
-/

namespace A241898.P6932488564644264729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191090 (Int.tmod (A072965 (n + 1)) (A119845 (n + 2))).toNat

end

end A241898.P6932488564644264729

/-! ## A241898.P3292163057441690766

`A191090(A072965(n+1))+A185284(A185284(n)²)`
-/

namespace A241898.P3292163057441690766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191090 (A072965 (n + 1)).toNat + A185284 (A185284 n ^ 2).toNat

end

end A241898.P3292163057441690766

/-! ## A241898.P4502434113763633516

`A191090(A072965(n+1)^A033183(n+1))`
-/

namespace A241898.P4502434113763633516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191090 (SequenceMachineLib.roundAway ((A072965 (n + 1) : ℚ) ^ (A033183 (n + 1) : ℤ))).toNat

end

end A241898.P4502434113763633516

/-!
# A241899: Numbers n equal to the sum of all the two-digit numbers formed without repetition from the digits of n.

The programs for A241899, there is no canonical definition to state claims against.
-/

/-! ## A241899.P6064489118654001607

`11*record[∏{digits}[n+1, 12*#]/12]`
-/

namespace A241899.P6064489118654001607
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 12 * x).prod : ℕ) : ℚ) / 12

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  11 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241899.P6064489118654001607

/-! ## A241899.P880229121025502838

`11*lt[n²*round(atan(n%12)), 10*n]`
-/

namespace A241899.P880229121025502838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * SequenceMachineLib.roundAway (Real.arctan ((n % 12 : ℕ) : ℝ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A241899.P880229121025502838

/-! ## A241899.P5962816971119764431

`11*∑[lt[n, ∏{digits}[n, 3*#]]-∑{digits}[n, #]]`
-/

namespace A241899.P5962816971119764431
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => 3 * x).prod

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < f3 j) n : ℤ) - ((((SequenceMachineLib.digits10 (f5 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A241899.P5962816971119764431

/-! ## A241899.P15137683529376060064

`11*A001102(n+1)`
-/

namespace A241899.P15137683529376060064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A001102 (n + 1)

end

end A241899.P15137683529376060064

