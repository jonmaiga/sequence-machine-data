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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
# A003000: Number of bifix-free (or primary, or unbordered) words of length n over a two-letter alphabet.

The programs for A003000, the canonical program `A003000.P6557006647586866412` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003000 has offset 0).

The definition of A003000 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003000.P6557006647586866412

`2*a(n-1)-(1+(-1)^n)/2*a(floor(n/2))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003000

/-- `2*a(n-1)-(1+(-1)^n)/2*a(floor(n/2))` -/
def P6557006647586866412.Spec : Prop :=
  ∀ n, P6557006647586866412.a n = (A003000 n : ℚ)

end A003000

/-! ## A003000.P5637069688302661877

`∑{d}[n+1, A019590(#)*A045690((n+1)/#)]`
-/

namespace A003000.P5637069688302661877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019590 d * A045690 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003000.P5637069688302661877

namespace A003000

/-- `∑{d}[n+1, A019590(#)*A045690((n+1)/#)]` -/
def P5637069688302661877.Spec : Prop :=
  ∀ n, P5637069688302661877.a n = A003000 n

end A003000

/-! ## A003000.P7924269497382612229

`A308528(n+1)/2`
-/

namespace A003000.P7924269497382612229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308528 (n + 1) : ℚ) / 2

end

end A003000.P7924269497382612229

namespace A003000

/-- `A308528(n+1)/2` -/
def P7924269497382612229.Spec : Prop :=
  ∀ n, P7924269497382612229.a n = (A003000 n : ℚ)

end A003000

/-! ## A003000.P316896827418169052

`A045690(A008619(n))+Δ[A045690(n+1)]`
-/

namespace A003000.P316896827418169052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045690 (A008619 n).toNat + (f1 (n + 1) - f1 n)

end

end A003000.P316896827418169052

namespace A003000

/-- `A045690(A008619(n))+Δ[A045690(n+1)]` -/
def P316896827418169052.Spec : Prop :=
  ∀ n, P316896827418169052.a n = A003000 n

end A003000

/-! ## A003000.P11901058287001846582

`2^n-A094536(n)`
-/

namespace A003000.P11901058287001846582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A094536 n

end

end A003000.P11901058287001846582

namespace A003000

/-- `2^n-A094536(n)` -/
def P11901058287001846582.Spec : Prop :=
  ∀ n, P11901058287001846582.a n = A003000 n

end A003000

/-! ## A003000.P12601531083120214444

`abs(A000079(n)-A094536(n))`
-/

namespace A003000.P12601531083120214444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A094536 n|

end

end A003000.P12601531083120214444

namespace A003000

/-- `abs(A000079(n)-A094536(n))` -/
def P12601531083120214444.Spec : Prop :=
  ∀ n, P12601531083120214444.a n = A003000 n

end A003000

/-! ## A003000.P4289535874420670306

`A000079(n)-2*A094537(n)`
-/

namespace A003000.P4289535874420670306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - 2 * A094537 n

end

end A003000.P4289535874420670306

namespace A003000

/-- `A000079(n)-2*A094537(n)` -/
def P4289535874420670306.Spec : Prop :=
  ∀ n, P4289535874420670306.a n = A003000 n

end A003000

/-! ## A003000.P6120920781674121516

`A045690(n+1)+A094537(n+1)-A094536(n)`
-/

namespace A003000.P6120920781674121516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045690 (n + 1) + (A094537 (n + 1) - A094536 n)

end

end A003000.P6120920781674121516

namespace A003000

/-- `A045690(n+1)+A094537(n+1)-A094536(n)` -/
def P6120920781674121516.Spec : Prop :=
  ∀ n, P6120920781674121516.a n = A003000 n

end A003000

/-! ## A003000.P7654551871817184646

`(A000079(n+1)-A254128(n+1))/2`
-/

namespace A003000.P7654551871817184646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) - A254128 (n + 1) : ℚ) / 2

end

end A003000.P7654551871817184646

namespace A003000

/-- `(A000079(n+1)-A254128(n+1))/2` -/
def P7654551871817184646.Spec : Prop :=
  ∀ n, P7654551871817184646.a n = (A003000 n : ℚ)

end A003000

/-! ## A003000.P16153167876850053423

`A000122(n²)*A045690(A108069(or(1, n))+n)`
-/

namespace A003000.P16153167876850053423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) * A045690 (A108069 (Nat.lor 1 n) + (n : ℤ)).toNat

end

end A003000.P16153167876850053423

namespace A003000

/-- `A000122(n²)*A045690(A108069(or(1, n))+n)` -/
def P16153167876850053423.Spec : Prop :=
  ∀ n, P16153167876850053423.a n = A003000 n

end A003000

/-!
# A003001: Smallest number of multiplicative persistence n.

The programs for A003001, there is no canonical definition to state claims against.
-/

/-! ## A003001.P7309421729143152836

`∪[A198377(2*n+1), A014120(2*n)]`
-/

namespace A003001.P7309421729143152836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198377 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014120 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003001.P7309421729143152836

/-! ## A003001.P9712507192726584105

`∪[A352532(n+1), A014120(n*gcd(11, n))]`
-/

namespace A003001.P9712507192726584105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014120 (n * Nat.gcd 11 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003001.P9712507192726584105

/-! ## A003001.P4678214639619275156

`A014120(n)^A213217(A004185(n))`
-/

namespace A003001.P4678214639619275156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014120 n : ℚ) ^ (A213217 (A004185 n).toNat : ℤ)

end

end A003001.P4678214639619275156

/-! ## A003001.P15335071918853867544

`∪[A014120(n), A014120(A033863(n))]`
-/

namespace A003001.P15335071918853867544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014120 (A033863 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003001.P15335071918853867544

/-! ## A003001.P8438636633191690524

`∪[A014120(n), A014120(A198377(n))]`
-/

namespace A003001.P8438636633191690524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014120 (A198377 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003001.P8438636633191690524

/-!
# A003002: r3(n): Size of the largest subset of the numbers [1...n] which does not contain a 3-term arithmetic progression.

The programs for A003002, there is no canonical definition to state claims against.
-/

/-! ## A003002.P4411640338558860304

`∑[char[A065825(n+1)]]`
-/

namespace A003002.P4411640338558860304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065825 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003002.P4411640338558860304

/-! ## A003002.P17178094853962570068

`comp[A005047(n+1)+n+1]-n`
-/

namespace A003002.P17178094853962570068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005047 (n + 1) + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A003002.P17178094853962570068

/-! ## A003002.P9527012538589811138

`comp[A065825(A028310(n))+n]%(n+1)`
-/

namespace A003002.P9527012538589811138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065825 (A028310 n).toNat + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % (n + 1)

end

end A003002.P9527012538589811138

/-! ## A003002.P7487734068831143242

`A004277(n)-A358062(A004277(n))`
-/

namespace A003002.P7487734068831143242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A358062 (A004277 n).toNat

end

end A003002.P7487734068831143242

/-! ## A003002.P3041508677064289513

`∑[A275855(3*record[xor(1, n)²])]`
-/

namespace A003002.P3041508677064289513
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275855 (3 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003002.P3041508677064289513

/-!
# A003003: Size of the largest subset of the numbers [1...n] which doesn't contain a 4-term arithmetic progression.

The programs for A003003, there is no canonical definition to state claims against.
-/

/-! ## A003003.P7941785563004446119

`or(A000035(A006983(n+1)), A136746(n))`
-/

namespace A003003.P7941785563004446119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A006983 (n + 1)).toNat) (A136746 n)

end

end A003003.P7941785563004446119

/-! ## A003003.P8448324479635578706

`or(A000035(A217156(n+1)), A136746(n))`
-/

namespace A003003.P8448324479635578706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A217156 (n + 1)).toNat) (A136746 n)

end

end A003003.P8448324479635578706

/-! ## A003003.P5628932908284501402

`A136746(lt[A276421(n), A086390(n+1)])`
-/

namespace A003003.P5628932908284501402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276421 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136746 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A003003.P5628932908284501402

/-! ## A003003.P12930077674550255001

`A136746(lt[A276421(n), A276437(n+1)])`
-/

namespace A003003.P12930077674550255001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276421 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136746 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A003003.P12930077674550255001

/-! ## A003003.P1734434222238594151

`gcd(A073771(n+1), A136746(n))`
-/

namespace A003003.P1734434222238594151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073771 (n + 1)) (A136746 n)

end

end A003003.P1734434222238594151

/-!
# A003005: Size of the largest subset of the numbers [1..n] which doesn't contain a 6-term arithmetic progression.

The programs for A003005, there is no canonical definition to state claims against.
-/

/-! ## A003005.P1296388041258176942

`∑[A259362(A277873(n)^A219866(n+1))]`
-/

namespace A003005.P1296388041258176942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259362 (SequenceMachineLib.roundAway ((A277873 n : ℚ) ^ (A219866 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003005.P1296388041258176942

/-! ## A003005.P3350125219570494166

`∑[A345009(n)^A089407(n)]`
-/

namespace A003005.P3350125219570494166
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345009 n : ℚ) ^ (A089407 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003005.P3350125219570494166

/-! ## A003005.P13631064779788463445

`∑[A345009(n)^A115324(n)]`
-/

namespace A003005.P13631064779788463445
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345009 n : ℚ) ^ (A115324 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003005.P13631064779788463445

/-! ## A003005.P532725763370157333

`∑[A345009(n)^A194271(2*n+1)]`
-/

namespace A003005.P532725763370157333
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345009 n : ℚ) ^ (A194271 (2 * n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003005.P532725763370157333

/-!
# A003006: Number of n-level ladder expressions with A001622.

The programs for A003006, there is no canonical definition to state claims against.
-/

/-! ## A003006.P17645931118393792143

`A052321(n+1)-A036632(A036633(n))`
-/

namespace A003006.P17645931118393792143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052321 (n + 1) - A036632 (A036633 n).toNat

end

end A003006.P17645931118393792143

/-! ## A003006.P11861405466556419602

`A052321(n+1)-A083895(A001519(n))`
-/

namespace A003006.P11861405466556419602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052321 (n + 1) - A083895 (A001519 n).toNat

end

end A003006.P11861405466556419602

/-! ## A003006.P5632607592952898408

`A052321(n+1)-A007570(A174615(n))`
-/

namespace A003006.P5632607592952898408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052321 (n + 1) - A007570 (A174615 n).toNat

end

end A003006.P5632607592952898408

/-! ## A003006.P9191853774269682484

`A052321(n+1)-A007949(A191768(n))`
-/

namespace A003006.P9191853774269682484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052321 (n + 1) - A007949 (A191768 n).toNat

end

end A003006.P9191853774269682484

/-! ## A003006.P1063310090471312735

`A052321(n+1)-A185284(A036632(n))`
-/

namespace A003006.P1063310090471312735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052321 (n + 1) - A185284 (A036632 n).toNat

end

end A003006.P1063310090471312735

/-!
# A003007: Number of n-level ladder expressions with A002193.

The programs for A003007, there is no canonical definition to state claims against.
-/

/-! ## A003007.P15221178316866215742

`ceil(sqrt(C(3*n, n)/Δ[n²]))`
-/

namespace A003007.P15221178316866215742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((Nat.choose (3 * n) n : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) : ℝ)⌉

end

end A003007.P15221178316866215742

/-! ## A003007.P7001398831336054268

`ceil(root(C(3*n, n)/(2*n+1), 2))`
-/

namespace A003007.P7001398831336054268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose (3 * n) n : ℚ) / (2 * n + 1 : ℚ) : ℝ) ^ (1 / (2 : ℝ))⌉

end

end A003007.P7001398831336054268

/-! ## A003007.P3489074411650402970

`ceil(sqrt(floor(C(3*n, n)/(2*n+1))))`
-/

namespace A003007.P3489074411650402970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (⌊(Nat.choose (3 * n) n : ℚ) / (2 * n + 1 : ℚ)⌋ : ℝ)⌉

end

end A003007.P3489074411650402970

/-! ## A003007.P17832248516747876240

`ceil(sqrt(ceil(C(3*n, n)/(2*n+1))))`
-/

namespace A003007.P17832248516747876240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (⌈(Nat.choose (3 * n) n : ℚ) / (2 * n + 1 : ℚ)⌉ : ℝ)⌉

end

end A003007.P17832248516747876240

/-! ## A003007.P17207609285023265383

`ceil(sqrt(A001764(n)))`
-/

namespace A003007.P17207609285023265383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A001764 n : ℝ)⌉

end

end A003007.P17207609285023265383

/-!
# A003008: Number of n-level ladder expressions with A030798.

The programs for A003008, there is no canonical definition to state claims against.
-/

/-! ## A003008.P6075451978401328598

`round(3^∑[(n/(n+1))²])`
-/

namespace A003008.P6075451978401328598
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / (n + 1 : ℚ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 : ℝ) ^ ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ))

end

end A003008.P6075451978401328598

/-! ## A003008.P7941240415895959942

`floor(((n+1)^n/sin(acot(n)))^(3/11))`
-/

namespace A003008.P7941240415895959942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 1) ^ n : ℝ) / Real.sin (SequenceMachineLib.acot (n : ℝ))) ^ ((3 : ℚ) / 11 : ℝ)⌋

end

end A003008.P7941240415895959942

/-! ## A003008.P7894695026723466270

`floor((∑[A049075(n+1)]+1)/2)`
-/

namespace A003008.P7894695026723466270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2⌋

end

end A003008.P7894695026723466270

/-! ## A003008.P2474762061290787565

`floor(((n+1)*A321837(n))^(1/4))`
-/

namespace A003008.P2474762061290787565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℤ) * A321837 n : ℝ) ^ ((1 : ℚ) / 4 : ℝ)⌋

end

end A003008.P2474762061290787565

/-! ## A003008.P4100330990255967682

`A001462(A186996(n))`
-/

namespace A003008.P4100330990255967682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A186996 n).toNat

end

end A003008.P4100330990255967682

/-!
# A003009: 

The programs for A003009, there is no canonical definition to state claims against.
-/

/-! ## A003009.P14032918685899129649

`a(n-1)+(2^(n+1)*a(n-1))²` with `a(0)=3`
-/

namespace A003009.P14032918685899129649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (2 ^ (n + 1) * a (n - 1)) ^ 2

end

end A003009.P14032918685899129649

/-!
# A003010: A Lucas-Lehmer sequence: a(0) = 4; for n>0, a(n) = a(n-1)^2 - 2.

The programs for A003010, the canonical program `A003010.P3779515612658378707` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003010 has offset 0).

The definition of A003010 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-2` (program `A003010.P3779515612658378707`, by `A003010.P3779515612658378707.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003010.P3779515612658378707

`a(n-1)²-2` with `a(0)=4`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003010

/-- `a(n-1)²-2` -/
def P3779515612658378707.Spec : Prop :=
  ∀ n, P3779515612658378707.a n = A003010 n

theorem P3779515612658378707.correct : P3779515612658378707.Spec := by
  intro n
  simp only [A003010]

end A003010

/-! ## A003010.P5189546812132908839

`a(n-1)^2-2` with `a(0)=4`
-/

namespace A003010.P5189546812132908839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) ^ 2 - 2

end

end A003010.P5189546812132908839

namespace A003010

/-- `a(n-1)^2-2` -/
def P5189546812132908839.Spec : Prop :=
  ∀ n, P5189546812132908839.a n = A003010 n

theorem P5189546812132908839.correct : P5189546812132908839.Spec := by
  intro n
  simp only [A003010, Nat.add_sub_cancel, A003010.P5189546812132908839.a, A003010.P3779515612658378707.a, SequenceMachineLib.memo_apply]

end A003010

/-! ## A003010.P14126182318298000251

`ceil((2+sqrt(3))^2^n)`
-/

namespace A003010.P14126182318298000251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 + Real.sqrt (3 : ℝ)) ^ 2 ^ n⌉

end

end A003010.P14126182318298000251

namespace A003010

/-- `ceil((2+sqrt(3))^2^n)` -/
def P14126182318298000251.Spec : Prop :=
  ∀ n, P14126182318298000251.a n = A003010 n

end A003010

/-! ## A003010.P11237811299140802306

`root(a(n-1), 1/2)-2` with `a(0)=4`
-/

namespace A003010.P11237811299140802306
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) ^ (1 / ((1 : ℚ) / 2 : ℝ)) - 2

end

end A003010.P11237811299140802306

namespace A003010

/-- `root(a(n-1), 1/2)-2` -/
def P11237811299140802306.Spec : Prop :=
  ∀ n, P11237811299140802306.a n = (A003010 n : ℝ)

end A003010

/-!
# A003011: Number of permutations of up to n kinds of objects, where each kind of object can occur at most two times.

The programs for A003011, there is no canonical definition to state claims against.
-/

/-! ## A003011.P15220579940841066844

`A308292(∑[n+2]+3)`
-/

namespace A003011.P15220579940841066844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308292 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A003011.P15220579940841066844

/-! ## A003011.P17749781093989133454

`record[gcd(A303913(n), A308292(n))]`
-/

namespace A003011.P17749781093989133454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303913 n) (A308292 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003011.P17749781093989133454

/-! ## A003011.P468074818508639606

`record[gcd(A206735(n), A308292(n+2))]`
-/

namespace A003011.P468074818508639606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A206735 n) (A308292 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003011.P468074818508639606

/-! ## A003011.P4158563687510986184

`A229142(A034856(n+1))*A308292(A133263(n+2))`
-/

namespace A003011.P4158563687510986184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229142 (A034856 (n + 1)).toNat * A308292 (A133263 (n + 2)).toNat

end

end A003011.P4158563687510986184

/-! ## A003011.P3226844213218232161

`record[A308292(n)/A278134(n+2)]`
-/

namespace A003011.P3226844213218232161
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308292 n : ℚ) / (A278134 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003011.P3226844213218232161

/-!
# A003012: Maximum number of cubes of side length 2 that can be packed into a 3-dimensional torus of side length 2*n+1.

The programs for A003012, there is no canonical definition to state claims against.
-/

/-! ## A003012.P1528872413148007020

`A053698(n)-A382720(2*n)`
-/

namespace A003012.P1528872413148007020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053698 n - A382720 (2 * n)

end

end A003012.P1528872413148007020

/-! ## A003012.P135408244332129086

`A027444(n)-A006369(A059626(n))`
-/

namespace A003012.P135408244332129086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027444 n - A006369 (A059626 n).toNat

end

end A003012.P135408244332129086

/-!
# A003013: E.g.f. 1 + x*exp(x) + x^2*exp(2*x).

The programs for A003013, the canonical program `A003013.P16339675636839990099` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003013 has offset 0).

The definition of A003013 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002999, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A003013.P16339675636839990099

`A002999(n)-n`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A003013

/-- `A002999(n)-n` -/
def P16339675636839990099.Spec : Prop :=
  ∀ n, P16339675636839990099.a n = A003013 n

theorem P16339675636839990099.correct : P16339675636839990099.Spec := by
  intro n
  simp only [A003013]

end A003013

/-! ## A003013.P17481680784322762141

`A028310(n)+A001815(n)`
-/

namespace A003013.P17481680784322762141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + A001815 n

end

end A003013.P17481680784322762141

namespace A003013

/-- `A028310(n)+A001815(n)` -/
def P17481680784322762141.Spec : Prop :=
  ∀ n, P17481680784322762141.a n = A003013 n

end A003013

/-! ## A003013.P15866270045748535065

`A001815(n)+A004277(n)-n`
-/

namespace A003013.P15866270045748535065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n + (A004277 n - (n : ℤ))

end

end A003013.P15866270045748535065

namespace A003013

/-- `A001815(n)+A004277(n)-n` -/
def P15866270045748535065.Spec : Prop :=
  ∀ n, P15866270045748535065.a n = A003013 n

theorem P15866270045748535065.correct : P15866270045748535065.Spec := by
  intro n
  simp only [A003013, Nat.add_sub_cancel, A003013.P15866270045748535065.a, A003013.P16339675636839990099.a, A001815, A001815.P12767641149835959275.a, A002999, A002999.P3630414621016357249.a, A004277, A004277.P16255821370285667660.a, A000007, A000007.P6599383543502402472.a, A005843, A005843.P3167286115683555970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003013

/-! ## A003013.P3077774019908651958

`A028310(n)+n*A097067(n)`
-/

namespace A003013.P3077774019908651958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (n : ℤ) * A097067 n

end

end A003013.P3077774019908651958

namespace A003013

/-- `A028310(n)+n*A097067(n)` -/
def P3077774019908651958.Spec : Prop :=
  ∀ n, P3077774019908651958.a n = A003013 n

end A003013

/-! ## A003013.P10012935189737296611

`A001815(n)+record[A124625(n)]-n`
-/

namespace A003013.P10012935189737296611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ))

end

end A003013.P10012935189737296611

namespace A003013

/-- `A001815(n)+record[A124625(n)]-n` -/
def P10012935189737296611.Spec : Prop :=
  ∀ n, P10012935189737296611.a n = A003013 n

end A003013

/-! ## A003013.P5984566892871015874

`A008619(A004275(n))+A001815(n)`
-/

namespace A003013.P5984566892871015874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004275 n).toNat + A001815 n

end

end A003013.P5984566892871015874

namespace A003013

/-- `A008619(A004275(n))+A001815(n)` -/
def P5984566892871015874.Spec : Prop :=
  ∀ n, P5984566892871015874.a n = A003013 n

end A003013

/-! ## A003013.P15319248779051763558

`A005183(A028310(n)-1)*A028310(n)`
-/

namespace A003013.P15319248779051763558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005183 (A028310 n - 1).toNat * A028310 n

end

end A003013.P15319248779051763558

namespace A003013

/-- `A005183(A028310(n)-1)*A028310(n)` -/
def P15319248779051763558.Spec : Prop :=
  ∀ n, P15319248779051763558.a n = A003013 n

end A003013

/-! ## A003013.P1961381087824593393

`A001815(n)+A026741(A008574(n))-n`
-/

namespace A003013.P1961381087824593393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n + (A026741 (A008574 n).toNat - (n : ℤ))

end

end A003013.P1961381087824593393

namespace A003013

/-- `A001815(n)+A026741(A008574(n))-n` -/
def P1961381087824593393.Spec : Prop :=
  ∀ n, P1961381087824593393.a n = A003013 n

end A003013

/-! ## A003013.P1379675805961455754

`A001815(n)+A026741(A026741(A008574(n)))`
-/

namespace A003013.P1379675805961455754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n + A026741 (A026741 (A008574 n).toNat).toNat

end

end A003013.P1379675805961455754

namespace A003013

/-- `A001815(n)+A026741(A026741(A008574(n)))` -/
def P1379675805961455754.Spec : Prop :=
  ∀ n, P1379675805961455754.a n = A003013 n

end A003013

/-! ## A003013.P10568906919620395910

`A100381(n)/2+1+n-A057427(n)`
-/

namespace A003013.P10568906919620395910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100381 n : ℚ) / 2 + 1 + (n : ℚ) - (A057427 n : ℚ)

end

end A003013.P10568906919620395910

namespace A003013

/-- `A100381(n)/2+1+n-A057427(n)` -/
def P10568906919620395910.Spec : Prop :=
  ∀ n, P10568906919620395910.a n = (A003013 n : ℚ)

end A003013

/-! ## A003013.P6998132106339471134

`A003014(n)-A052791(n)`
-/

namespace A003013.P6998132106339471134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003014 n - A052791 n

end

end A003013.P6998132106339471134

namespace A003013

/-- `A003014(n)-A052791(n)` -/
def P6998132106339471134.Spec : Prop :=
  ∀ n, P6998132106339471134.a n = A003013 n

end A003013

/-! ## A003013.P14500543489511942206

`A001815(n)+A007318(∑[n]+1)`
-/

namespace A003013.P14500543489511942206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n + A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A003013.P14500543489511942206

namespace A003013

/-- `A001815(n)+A007318(∑[n]+1)` -/
def P14500543489511942206.Spec : Prop :=
  ∀ n, P14500543489511942206.a n = A003013 n

end A003013

/-! ## A003013.P7912267226789223741

`A003506(∑[n-1]+2)+A001815(n)`
-/

namespace A003013.P7912267226789223741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat + A001815 n

end

end A003013.P7912267226789223741

namespace A003013

/-- `A003506(∑[n-1]+2)+A001815(n)` -/
def P7912267226789223741.Spec : Prop :=
  ∀ n, P7912267226789223741.a n = A003013 n

end A003013

/-! ## A003013.P1937875366406727039

`A007318(A000124(n))+A001815(n)`
-/

namespace A003013.P1937875366406727039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat + A001815 n

end

end A003013.P1937875366406727039

namespace A003013

/-- `A007318(A000124(n))+A001815(n)` -/
def P1937875366406727039.Spec : Prop :=
  ∀ n, P1937875366406727039.a n = A003013 n

end A003013

/-! ## A003013.P16318299969311690109

`A134400(A000217(n))+A001815(n)`
-/

namespace A003013.P16318299969311690109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134400 (A000217 n).toNat + A001815 n

end

end A003013.P16318299969311690109

namespace A003013

/-- `A134400(A000217(n))+A001815(n)` -/
def P16318299969311690109.Spec : Prop :=
  ∀ n, P16318299969311690109.a n = A003013 n

end A003013

/-!
# A003014: Expansion of e.g.f.: 1 + x*exp(x) + x^2*exp(2*x) + x^3*exp(3*x).

The programs for A003014, the canonical program `A003014.P12221424960156331694` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003014 has offset 0).

The definition of A003014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003014.P18289386615264607471

`A003013(n)+C(n, 3)*Δ[3^(n-2)]`
-/

namespace A003014.P18289386615264607471
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003013 n : ℚ) + (Nat.choose n 3 : ℚ) * (f1 (n + 1) - f1 n)

end

end A003014.P18289386615264607471

namespace A003014

/-- `A003013(n)+C(n, 3)*Δ[3^(n-2)]` -/
def P18289386615264607471.Spec : Prop :=
  ∀ n, P18289386615264607471.a n = (A003014 n : ℚ)

end A003014

/-! ## A003014.P189021542028893257

`A052791(n)+A003013(n)`
-/

namespace A003014.P189021542028893257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052791 n + A003013 n

end

end A003014.P189021542028893257

namespace A003014

/-- `A052791(n)+A003013(n)` -/
def P189021542028893257.Spec : Prop :=
  ∀ n, P189021542028893257.a n = A003014 n

end A003014

/-! ## A003014.P5216011642136025059

`A002999(n)+A052791(n)-n`
-/

namespace A003014.P5216011642136025059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002999 n + (A052791 n - (n : ℤ))

end

end A003014.P5216011642136025059

namespace A003014

/-- `A002999(n)+A052791(n)-n` -/
def P5216011642136025059.Spec : Prop :=
  ∀ n, P5216011642136025059.a n = A003014 n

end A003014

/-! ## A003014.P10743011214241060214

`A003013(A028310(n))+Δ[3^n]/9*C(n, 3)`
-/

namespace A003014.P10743011214241060214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003013 (A028310 n).toNat : ℚ) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 9 * (Nat.choose n 3 : ℚ)

end

end A003014.P10743011214241060214

namespace A003014

/-- `A003013(A028310(n))+Δ[3^n]/9*C(n, 3)` -/
def P10743011214241060214.Spec : Prop :=
  ∀ n, P10743011214241060214.a n = (A003014 n : ℚ)

end A003014

/-! ## A003014.P16978785833950656216

`A001489(n)+A052791(n)+A002999(n)`
-/

namespace A003014.P16978785833950656216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (A052791 n + A002999 n)

end

end A003014.P16978785833950656216

namespace A003014

/-- `A001489(n)+A052791(n)+A002999(n)` -/
def P16978785833950656216.Spec : Prop :=
  ∀ n, P16978785833950656216.a n = A003014 n

end A003014

/-! ## A003014.P12221424960156331694

`A001815(n)+A052791(n)+A028310(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A003014

/-- `A001815(n)+A052791(n)+A028310(n)` -/
def P12221424960156331694.Spec : Prop :=
  ∀ n, P12221424960156331694.a n = A003014 n

theorem P12221424960156331694.correct : P12221424960156331694.Spec := by
  intro n
  simp only [A003014]

end A003014

/-! ## A003014.P16469699587382216017

`A052791(n)+A003506(∑[n-1]+2)+A001815(n)`
-/

namespace A003014.P16469699587382216017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052791 n + (A003506 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat + A001815 n)

end

end A003014.P16469699587382216017

namespace A003014

/-- `A052791(n)+A003506(∑[n-1]+2)+A001815(n)` -/
def P16469699587382216017.Spec : Prop :=
  ∀ n, P16469699587382216017.a n = A003014 n

end A003014

/-!
# A003015: Numbers that occur 5 or more times in Pascal's triangle.

The programs for A003015, there is no canonical definition to state claims against.
-/

/-! ## A003015.P7235100979046246808

`A325903(eq[1, Δ[A342495(n)]])`
-/

namespace A003015.P7235100979046246808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342495 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003015.P7235100979046246808

/-!
# A003017: Expansion of 1/(1 - x*exp(x) + x^2*exp(2*x) - x^3*exp(3*x)).

The programs for A003017, there is no canonical definition to state claims against.
-/

/-! ## A003017.P17947036508140441881

`n*A074487(a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A003017.P17947036508140441881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * A074487 (a (n - 2)).toNat

end

end A003017.P17947036508140441881

/-! ## A003017.P17594753155284814491

`n*A364502(a(n-1)²)` with `a(0)=1`
-/

namespace A003017.P17594753155284814491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A364502 (a (n - 1) ^ 2).toNat

end

end A003017.P17594753155284814491

/-!
# A003018: Number of distinct values taken by 3^3^...^3 (with n 3's and parentheses inserted in all possible ways).

The programs for A003018, there is no canonical definition to state claims against.
-/

/-! ## A003018.P2839151885053691460

`A349014(n)+A319951(A036647(n))`
-/

namespace A003018.P2839151885053691460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349014 n + A319951 (A036647 n).toNat

end

end A003018.P2839151885053691460

/-! ## A003018.P14385584206002799861

`A349014(n)+A178691(A178688(2*(n+2)))`
-/

namespace A003018.P14385584206002799861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349014 n + A178691 (A178688 (2 * (n + 2))).toNat

end

end A003018.P14385584206002799861

/-! ## A003018.P12333566325998499544

`A349014(A004915(n+1))+char[9]`
-/

namespace A003018.P12333566325998499544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349014 (A004915 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A003018.P12333566325998499544

/-! ## A003018.P3986332909599230332

`A349014(n)+A185284(A000045(n))`
-/

namespace A003018.P3986332909599230332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349014 n + A185284 (A000045 n).toNat

end

end A003018.P3986332909599230332

/-! ## A003018.P2465842119433354938

`A349014(n)+A079998(A316980(n))`
-/

namespace A003018.P2465842119433354938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349014 n + A079998 (A316980 n).toNat

end

end A003018.P2465842119433354938

/-!
# A003019: Number of distinct values taken by 4^4^...^4 (with n 4's and parentheses inserted in all possible ways).

The programs for A003019, there is no canonical definition to state claims against.
-/

/-! ## A003019.P3188226143373850826

`or(A036625(n+1), A036641(A036632(n)))`
-/

namespace A003019.P3188226143373850826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036625 (n + 1)) (A036641 (A036632 n).toNat)

end

end A003019.P3188226143373850826

/-! ## A003019.P12120279582818850071

`or(A036625(n+1), A036641(A036639(n)))`
-/

namespace A003019.P12120279582818850071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036625 (n + 1)) (A036641 (A036639 n).toNat)

end

end A003019.P12120279582818850071

/-! ## A003019.P439466362717033627

`or(A036625(n+1), A036641(A036646(n)))`
-/

namespace A003019.P439466362717033627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036625 (n + 1)) (A036641 (A036646 n).toNat)

end

end A003019.P439466362717033627

/-! ## A003019.P15994903460659352435

`A036625(A082743(n))`
-/

namespace A003019.P15994903460659352435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036625 (A082743 n).toNat

end

end A003019.P15994903460659352435

/-! ## A003019.P7222158540211936776

`A036625(A381225(n))`
-/

namespace A003019.P7222158540211936776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036625 (A381225 n).toNat

end

end A003019.P7222158540211936776

/-!
# A003020: Largest prime factor of the "repunit" number 11...1 (cf. A002275).

The programs for A003020, the canonical program `A003020.P9425741526442274275` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003020 has offset 2).

The definition of A003020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003020.P9425741526442274275

`A005422(n+2)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A003020

/-- `A005422(n+2)` -/
def P9425741526442274275.Spec : Prop :=
  ∀ n, P9425741526442274275.a n = A003020 (n + 2)

theorem P9425741526442274275.correct : P9425741526442274275.Spec := by
  intro n
  simp only [A003020, Nat.add_sub_cancel]

end A003020

/-! ## A003020.P4104163518763531241

`A102380(∑[A046053(n+2)]+1)`
-/

namespace A003020.P4104163518763531241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102380 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A003020.P4104163518763531241

namespace A003020

/-- `A102380(∑[A046053(n+2)]+1)` -/
def P4104163518763531241.Spec : Prop :=
  ∀ n, P4104163518763531241.a n = A003020 (n + 2)

end A003020

/-! ## A003020.P2470366910312662005

`A001270(∑[A057951(n+2)]+2)`
-/

namespace A003020.P2470366910312662005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057951 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001270 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A003020.P2470366910312662005

namespace A003020

/-- `A001270(∑[A057951(n+2)]+2)` -/
def P2470366910312662005.Spec : Prop :=
  ∀ n, P2470366910312662005.a n = A003020 (n + 2)

end A003020

/-! ## A003020.P6295710832557381569

`A249627(n+2)/A067063(n+2)`
-/

namespace A003020.P6295710832557381569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249627 (n + 2) : ℚ) / (A067063 (n + 2) : ℚ)

end

end A003020.P6295710832557381569

namespace A003020

/-- `A249627(n+2)/A067063(n+2)` -/
def P6295710832557381569.Spec : Prop :=
  ∀ n, P6295710832557381569.a n = (A003020 (n + 2) : ℚ)

end A003020

/-! ## A003020.P18348631620274519696

`∑{e}[A020707(n), A005422(#)]`
-/

namespace A003020.P18348631620274519696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A005422 (Nat.factorization (f1 n).natAbs p)

end

end A003020.P18348631620274519696

namespace A003020

/-- `∑{e}[A020707(n), A005422(#)]` -/
def P18348631620274519696.Spec : Prop :=
  ∀ n, P18348631620274519696.a n = A003020 (n + 2)

end A003020

/-!
# A003021: Largest prime factor of 10^n + 1.

The programs for A003021, the canonical program `A003021.P3961287160256763782` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003021 has offset 0).

The definition of A003021 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A003021.P3961287160256763782

`A006530(A062397(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A003021

/-- `A006530(A062397(n))` -/
def P3961287160256763782.Spec : Prop :=
  ∀ n, P3961287160256763782.a n = A003021 n

theorem P3961287160256763782.correct : P3961287160256763782.Spec := by
  intro n
  simp only [A003021]

end A003021

/-! ## A003021.P1110105078900371094

`A001271(∑[A057934(n+1)]-A057934(n+1))`
-/

namespace A003021.P1110105078900371094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001271 (∑ j ∈ Finset.range (n + 1), f1 j - A057934 (n + 1)).toNat

end

end A003021.P1110105078900371094

namespace A003021

/-- `A001271(∑[A057934(n+1)]-A057934(n+1))` -/
def P1110105078900371094.Spec : Prop :=
  ∀ n, P1110105078900371094.a n = A003021 n

end A003021

/-! ## A003021.P10915737843898054755

`p?[A240554(Δ[A101853(n+4)]-1)]`
-/

namespace A003021.P10915737843898054755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (f2 (n + 1) - f2 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003021.P10915737843898054755

namespace A003021

/-- `p?[A240554(Δ[A101853(n+4)]-1)]` -/
def P10915737843898054755.Spec : Prop :=
  ∀ n, P10915737843898054755.a n = A003021 n

end A003021

/-!
# A003022: Length of shortest (or optimal) Golomb ruler with n marks.

The programs for A003022, there is no canonical definition to state claims against.
-/

/-! ## A003022.P4516356846448484951

`A227590(n+2)-1`
-/

namespace A003022.P4516356846448484951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227590 (n + 2) - 1

end

end A003022.P4516356846448484951

/-! ## A003022.P11834667014116347399

`A106683(C(n+3, 2))`
-/

namespace A003022.P11834667014116347399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (Nat.choose (n + 3) 2)

end

end A003022.P11834667014116347399

/-! ## A003022.P1008976760383727476

`A106683(∑[n+2]+1)`
-/

namespace A003022.P1008976760383727476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A003022.P1008976760383727476

/-! ## A003022.P8822438699920589984

`∑[abs(Δ[A227590(n+1)])]`
-/

namespace A003022.P8822438699920589984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227590 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003022.P8822438699920589984

/-!
# A003023: "Length" of aliquot sequence for n.

The programs for A003023, there is no canonical definition to state claims against.
-/

/-! ## A003023.P5771609965909100965

`A098007(n+1)-and(2, A098007(A115350(n+1)))`
-/

namespace A003023.P5771609965909100965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098007 (n + 1) - Int.land 2 (A098007 (A115350 (n + 1)).toNat)

end

end A003023.P5771609965909100965

/-! ## A003023.P116823899929299863

`A098008(n+1)+A008683(A098007(A115350(n+1)))`
-/

namespace A003023.P116823899929299863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098008 (n + 1) + A008683 (A098007 (A115350 (n + 1)).toNat).toNat

end

end A003023.P116823899929299863

/-! ## A003023.P2261975886015698317

`A044050(n+1)-(A098008(n+1)/A007906(n+1))^A000041(n)`
-/

namespace A003023.P2261975886015698317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044050 (n + 1) : ℚ) - ((A098008 (n + 1) : ℚ) / (A007906 (n + 1) : ℚ)) ^ (A000041 n : ℤ)

end

end A003023.P2261975886015698317

/-! ## A003023.P4188582183001204678

`A044050(n+1)-(A098008(n+1)/A007906(n+1))^A206708(n+1)`
-/

namespace A003023.P4188582183001204678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044050 (n + 1) : ℚ) - ((A098008 (n + 1) : ℚ) / (A007906 (n + 1) : ℚ)) ^ (A206708 (n + 1) : ℤ)

end

end A003023.P4188582183001204678

/-! ## A003023.P16259840683635564710

`abs(A309397(3*(n+2))-A098008(n+1))`
-/

namespace A003023.P16259840683635564710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A309397 (3 * (n + 2)) - A098008 (n + 1)|

end

end A003023.P16259840683635564710

/-!
# A003024: Number of acyclic digraphs (or DAGs) with n labeled nodes.

The programs for A003024, there is no canonical definition to state claims against.
-/

/-! ## A003024.P2515326980193115286

`abs(A224069(∑[n]))`
-/

namespace A003024.P2515326980193115286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A224069 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A003024.P2515326980193115286

/-! ## A003024.P18293872539478349895

`A033999(n)*A224069(∑[n])`
-/

namespace A003024.P18293872539478349895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A224069 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003024.P18293872539478349895

/-! ## A003024.P6702427151488013840

`gcd(A000038(n), A224069(∑[n]))`
-/

namespace A003024.P6702427151488013840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A224069 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A003024.P6702427151488013840

/-! ## A003024.P6005877013117734780

`lcm(2, A224069(A000217(n)))/2`
-/

namespace A003024.P6005877013117734780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A224069 (A000217 n).toNat) : ℚ) / 2

end

end A003024.P6005877013117734780

/-! ## A003024.P8766720587173898055

`lcm(A020985(n), A224069(A000217(n)))`
-/

namespace A003024.P8766720587173898055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A224069 (A000217 n).toNat)

end

end A003024.P8766720587173898055

/-!
# A003025: Number of n-node labeled acyclic digraphs with 1 out-point.

The programs for A003025, there is no canonical definition to state claims against.
-/

/-! ## A003025.P12046447223684062623

`(-1)^n*(n+1)*A134531(n+1)`
-/

namespace A003025.P12046447223684062623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (n + 1 : ℤ) * A134531 (n + 1)

end

end A003025.P12046447223684062623

/-! ## A003025.P12246933535568214293

`A058876(∑[n+1])`
-/

namespace A003025.P12246933535568214293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058876 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003025.P12246933535568214293

/-! ## A003025.P9816857379606428982

`record[A058876(A038722(n+1))]`
-/

namespace A003025.P9816857379606428982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058876 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003025.P9816857379606428982

/-! ## A003025.P10487448926202672441

`record[A058876(A286156(n+1))]`
-/

namespace A003025.P10487448926202672441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058876 (A286156 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003025.P10487448926202672441

/-! ## A003025.P11606550225413724506

`record[A058876(A286159(n+1))]`
-/

namespace A003025.P11606550225413724506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058876 (A286159 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003025.P11606550225413724506

/-!
# A003026: Number of n-node labeled acyclic digraphs with 2 out-points.

The programs for A003026, there is no canonical definition to state claims against.
-/

/-! ## A003026.P7599426063970938978

`A058876(∑[n+2])`
-/

namespace A003026.P7599426063970938978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058876 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003026.P7599426063970938978

/-! ## A003026.P10721959475628045306

`record[A058876(gcd(n, A122078(n)))]`
-/

namespace A003026.P10721959475628045306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058876 (Int.gcd (n : ℤ) (A122078 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003026.P10721959475628045306

/-! ## A003026.P14399438388199766254

`record[gcd(A008290(n), A058876(n+1))]`
-/

namespace A003026.P14399438388199766254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 n) (A058876 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003026.P14399438388199766254

/-! ## A003026.P15610179437216787174

`record[and(A058876(n+1), A167374(n))]`
-/

namespace A003026.P15610179437216787174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058876 (n + 1)) (A167374 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003026.P15610179437216787174

/-! ## A003026.P14702992264695326264

`record[A058876(n+1)^A167374(n+1)]`
-/

namespace A003026.P14702992264695326264
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058876 (n + 1) : ℚ) ^ (A167374 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003026.P14702992264695326264

/-!
# A003027: Number of weakly connected digraphs with n labeled nodes.

The programs for A003027, there is no canonical definition to state claims against.
-/

/-! ## A003027.P5475989128332193147

`A062738(n+1)/2^(n+1)`
-/

namespace A003027.P5475989128332193147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062738 (n + 1) : ℚ) / (2 ^ (n + 1) : ℚ)

end

end A003027.P5475989128332193147

/-! ## A003027.P6653654224463681550

`A189898(∑[n]+1)`
-/

namespace A003027.P6653654224463681550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189898 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A003027.P6653654224463681550

/-! ## A003027.P5216987354176633138

`record[A189898(n+1)]`
-/

namespace A003027.P5216987354176633138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003027.P5216987354176633138

/-! ## A003027.P9424892590157797805

`A177781(n+1)/(n+1)`
-/

namespace A003027.P9424892590157797805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177781 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A003027.P9424892590157797805

/-! ## A003027.P448319032151198420

`record[A308460(A027379(n))]`
-/

namespace A003027.P448319032151198420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308460 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003027.P448319032151198420

/-!
# A003028: Number of digraphs on n labeled nodes with a source.

The programs for A003028, there is no canonical definition to state claims against.
-/

/-! ## A003028.P7215075929009949932

`record[A361579(n)]`
-/

namespace A003028.P7215075929009949932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003028.P7215075929009949932

/-! ## A003028.P7816464463474069738

`A361579(∑[n+1]+1)`
-/

namespace A003028.P7816464463474069738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361579 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A003028.P7816464463474069738

/-!
# A003030: Number of strongly connected digraphs with n labeled nodes.

The programs for A003030, there is no canonical definition to state claims against.
-/

/-! ## A003030.P13614565637855254707

`A361455(∑[n+1]+1)`
-/

namespace A003030.P13614565637855254707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361455 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A003030.P13614565637855254707

/-! ## A003030.P13272279808650195753

`A361591(∑[n+1]+1)`
-/

namespace A003030.P13272279808650195753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361591 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A003030.P13272279808650195753

/-! ## A003030.P352875625707957456

`2*A054945(n+1)+n!`
-/

namespace A003030.P352875625707957456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054945 (n + 1) + (Nat.factorial n : ℤ)

end

end A003030.P352875625707957456

/-! ## A003030.P702995921087711873

`A054945(n+1)+A054944(n+1)`
-/

namespace A003030.P702995921087711873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054945 (n + 1) + A054944 (n + 1)

end

end A003030.P702995921087711873

/-! ## A003030.P2869997688631322634

`A000142(n)+2*A054945(n+1)`
-/

namespace A003030.P2869997688631322634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + 2 * A054945 (n + 1)

end

end A003030.P2869997688631322634

/-!
# A003031: Denominators of expansion of Fresnel integral S(z).

The programs for A003031, the canonical program `A003031.P1417501241020801541` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003031 has offset 0).

The definition of A003031 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003031.P1417501241020801541

`(4*n+3)*2^(2*n+1)*(2*n+1)!`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003031

/-- `(4*n+3)*2^(2*n+1)*(2*n+1)!` -/
def P1417501241020801541.Spec : Prop :=
  ∀ n, (P1417501241020801541.a n : ℤ) = A003031 n

theorem P1417501241020801541.correct : P1417501241020801541.Spec := by
  intro n
  simp only [A003031]

end A003031

/-! ## A003031.P5191831277215214102

`A014481(Δ[n²])`
-/

namespace A003031.P5191831277215214102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014481 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A003031.P5191831277215214102

namespace A003031

/-- `A014481(Δ[n²])` -/
def P5191831277215214102.Spec : Prop :=
  ∀ n, P5191831277215214102.a n = A003031 n

end A003031

/-! ## A003031.P2084416257090218009

`A000165(2*n+1)*(4*n+3)`
-/

namespace A003031.P2084416257090218009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 (2 * n + 1) * (4 * n + 3 : ℤ)

end

end A003031.P2084416257090218009

namespace A003031

/-- `A000165(2*n+1)*(4*n+3)` -/
def P2084416257090218009.Spec : Prop :=
  ∀ n, P2084416257090218009.a n = A003031 n

theorem P2084416257090218009.correct : P2084416257090218009.Spec := by
  intro n
  simp only [A003031, Nat.add_sub_cancel, A003031.P2084416257090218009.a, A003031.P1417501241020801541.a, A000165, A000165.P16837922414982216743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003031

/-! ## A003031.P12523766506856581225

`A002866(2*n+1)*(8*n+6)`
-/

namespace A003031.P12523766506856581225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002866 (2 * n + 1) * (8 * n + 6 : ℤ)

end

end A003031.P12523766506856581225

namespace A003031

/-- `A002866(2*n+1)*(8*n+6)` -/
def P12523766506856581225.Spec : Prop :=
  ∀ n, P12523766506856581225.a n = A003031 n

end A003031

/-! ## A003031.P5080255005276154671

`A204912(A181890(n))`
-/

namespace A003031.P5080255005276154671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204912 (A181890 n).toNat

end

end A003031.P5080255005276154671

namespace A003031

/-- `A204912(A181890(n))` -/
def P5080255005276154671.Spec : Prop :=
  ∀ n, P5080255005276154671.a n = A003031 n

end A003031

/-!
# A003032: Smallest integer m such that the product of every 3 consecutive integers > m has a prime factor > prime(n).

The programs for A003032, there is no canonical definition to state claims against.
-/

/-! ## A003032.P18273146746305175190

`A004176(A193944(n+1))`
-/

namespace A003032.P18273146746305175190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 (A193944 (n + 1)).toNat

end

end A003032.P18273146746305175190

/-! ## A003032.P5492027361798389974

`A193944(A024645(n+1))`
-/

namespace A003032.P5492027361798389974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193944 (A024645 (n + 1)).toNat

end

end A003032.P5492027361798389974

/-! ## A003032.P7611639116850680755

`A193944(A024646(n+1))`
-/

namespace A003032.P7611639116850680755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193944 (A024646 (n + 1)).toNat

end

end A003032.P7611639116850680755

/-!
# A003033: Smallest integer m such that the product of every 4 consecutive integers > m has a prime factor > prime(n).

The programs for A003033, there is no canonical definition to state claims against.
-/

/-! ## A003033.P15610844470698985936

`A137822(2*(n+1))*A137822(A000142(n))`
-/

namespace A003033.P15610844470698985936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137822 (2 * (n + 1)) * A137822 (A000142 n).toNat

end

end A003033.P15610844470698985936

/-! ## A003033.P8790279748957554218

`A193945(A001462(2*n+3)%A299782(n+1))`
-/

namespace A003033.P8790279748957554218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193945 (Int.tmod (A001462 (2 * n + 3)) (A299782 (n + 1))).toNat

end

end A003033.P8790279748957554218

/-!
# A003035: Maximal number of 3-tree rows in n-tree orchard problem.

The programs for A003035, there is no canonical definition to state claims against.
-/

/-! ## A003035.P4759827421007285264

`round(floor((n/2)²)/log(5))`
-/

namespace A003035.P4759827421007285264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((⌊((n : ℚ) / 2) ^ 2⌋ : ℝ) / Real.log (5 : ℝ))

end

end A003035.P4759827421007285264

/-! ## A003035.P2657518428786913351

`char[4*n+6]+ceil(C(n, 2)/3)`
-/

namespace A003035.P2657518428786913351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ⌈(Nat.choose n 2 : ℚ) / 3⌉

end

end A003035.P2657518428786913351

/-! ## A003035.P13523130720039484518

`∑[round(xor(1, n)/6)]+floor((n²-n)/15)`
-/

namespace A003035.P13523130720039484518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌊((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 15⌋

end

end A003035.P13523130720039484518

/-! ## A003035.P14574672226022299543

`A029922(floor((n/2)²))`
-/

namespace A003035.P14574672226022299543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029922 ⌊((n : ℚ) / 2) ^ 2⌋.toNat

end

end A003035.P14574672226022299543

/-! ## A003035.P2007992757975121193

`A039139(round(n²/8)+1)`
-/

namespace A003035.P2007992757975121193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039139 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 8) + 1).toNat

end

end A003035.P2007992757975121193

/-!
# A003037: Smallest number of complexity n: smallest number requiring n 1's to build using +, * and ^.

The programs for A003037, there is no canonical definition to state claims against.
-/

/-! ## A003037.P14673945135217722482

`A114044(n)+record[A334032(n+1)]`
-/

namespace A003037.P14673945135217722482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114044 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003037.P14673945135217722482

/-! ## A003037.P10226520352043500449

`A351724(n)+record[A334032(n+1)]`
-/

namespace A003037.P10226520352043500449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351724 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003037.P10226520352043500449

/-!
# A003038: Dimensions of split simple Lie algebras over any field of characteristic zero.

The programs for A003038, there is no canonical definition to state claims against.
-/

/-! ## A003038.P14243615179841744104

`∩[A001066(n+1), A126581(n+1)]`
-/

namespace A003038.P14243615179841744104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003038.P14243615179841744104

/-! ## A003038.P15966488894545643150

`∩[A047283(n+1), A126581(n+1)]`
-/

namespace A003038.P15966488894545643150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003038.P15966488894545643150

/-! ## A003038.P15243015544004383464

`∩[A047287(n+1), A126581(n+1)]`
-/

namespace A003038.P15243015544004383464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003038.P15243015544004383464

/-! ## A003038.P16092412406515710785

`∩[A047299(n+1), A126581(n+1)]`
-/

namespace A003038.P16092412406515710785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003038.P16092412406515710785

/-! ## A003038.P3849028362877118061

`∩[A047303(n+1), A126581(n+1)]`
-/

namespace A003038.P3849028362877118061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003038.P3849028362877118061

/-!
# A003040: Highest degree of an irreducible representation of symmetric group S_n of degree n.

The programs for A003040, there is no canonical definition to state claims against.
-/

/-! ## A003040.P14546656663930532716

`A224653(∑[A060437(n+1)])`
-/

namespace A003040.P14546656663930532716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224653 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003040.P14546656663930532716

/-! ## A003040.P7522601342827130748

`A224653(∑[A318558(n+1)+A060426(n+1)])`
-/

namespace A003040.P7522601342827130748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318558 (n + 1) + A060426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224653 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003040.P7522601342827130748

/-! ## A003040.P3032385469639540928

`A060240(A026905(n+1))`
-/

namespace A003040.P3032385469639540928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060240 (A026905 (n + 1)).toNat

end

end A003040.P3032385469639540928

/-! ## A003040.P11989775852270173598

`A060240(∑[record[A035363(n)]])`
-/

namespace A003040.P11989775852270173598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060240 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003040.P11989775852270173598

/-! ## A003040.P1941058960332775726

`A060240(∑[A000041(n+1)])`
-/

namespace A003040.P1941058960332775726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060240 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003040.P1941058960332775726

/-!
# A003041: Number of vacuously transitive relations on n nodes up to isomorphism.

The programs for A003041, there is no canonical definition to state claims against.
-/

/-! ## A003041.P6891224859334240858

`A193260(A307228(n+1))`
-/

namespace A003041.P6891224859334240858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193260 (A307228 (n + 1)).toNat

end

end A003041.P6891224859334240858

/-! ## A003041.P16846339536239008863

`∑[A081556(A001003(n)+1)]`
-/

namespace A003041.P16846339536239008863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081556 (A001003 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003041.P16846339536239008863

/-!
# A003042: Number of directed Hamiltonian cycles (or Gray codes) on n-cube.

The programs for A003042, there is no canonical definition to state claims against.
-/

/-! ## A003042.P16284336141043174492

`ratio[ceil(2^(n-1))]*A066037(n+1)`
-/

namespace A003042.P16284336141043174492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A066037 (n + 1) : ℚ)

end

end A003042.P16284336141043174492

/-!
# A003043: Number of Hamiltonian paths (or Gray codes) on n-cube with a marked starting node.

The programs for A003043, there is no canonical definition to state claims against.
-/

/-! ## A003043.P11550281644278561242

`A091299(n+1)/2^(n+1)`
-/

namespace A003043.P11550281644278561242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091299 (n + 1) : ℚ) / (2 ^ (n + 1) : ℚ)

end

end A003043.P11550281644278561242

/-!
# A003044: For n > 4, a(n) is the least integer > a(n-1) with precisely two representations a(n) = a(i) + a(j), 1 <= i < j < n; and a(n) = n for n=1..4.

The programs for A003044, there is no canonical definition to state claims against.
-/

/-! ## A003044.P7858021832992592989

`A020658(lt[A311171(n), A168390(n+1)])`
-/

namespace A003044.P7858021832992592989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311171 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020658 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A003044.P7858021832992592989

/-!
# A003045: a(n) (n>6) is least integer > a(n-1) with precisely three representations a(n) = a(i) + a(j), 1 <= i < j < n, a(n) = n for n=1..6.

The programs for A003045, there is no canonical definition to state claims against.
-/

/-! ## A003045.P13848537414792003263

`A096528(A294758(n))+A060471(n+1)`
-/

namespace A003045.P13848537414792003263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096528 (A294758 n).toNat + A060471 (n + 1)

end

end A003045.P13848537414792003263

/-! ## A003045.P14000443427820612215

`or(A060471(n+1), A210716(A185036(n)))`
-/

namespace A003045.P14000443427820612215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060471 (n + 1)) (A210716 (A185036 n).toNat)

end

end A003045.P14000443427820612215

/-!
# A003046: Product of first n Catalan numbers.

The programs for A003046, there is no canonical definition to state claims against.
-/

/-! ## A003046.P1799598782716593980

`∏[C(2*n, n)/(n+1)]`
-/

namespace A003046.P1799598782716593980
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A003046.P1799598782716593980

/-! ## A003046.P1262555069823783721

`∏[(4-6/(n+1))*a(n-1)]` with `a(0)=1`
-/

namespace A003046.P1262555069823783721
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A003046.P1262555069823783721

/-! ## A003046.P7661461359884418429

`C(2*n, n+1)*a(n-1)/n` with `a(0)=1`
-/

namespace A003046.P7661461359884418429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (2 * n) (n + 1) : ℚ) * a (n - 1) / (n : ℚ)

end

end A003046.P7661461359884418429

/-! ## A003046.P10438104685276216888

`a(n-1)/n*C(2*n, n-1)` with `a(0)=1`
-/

namespace A003046.P10438104685276216888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (n : ℚ) * (Nat.choose (2 * n) ((n : ℤ) - 1).toNat : ℚ)

end

end A003046.P10438104685276216888

/-! ## A003046.P17792053244376752776

`∏[A000108(n)]`
-/

namespace A003046.P17792053244376752776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A003046.P17792053244376752776

/-!
# A003047: a(n) = Catalan(n) * Product_{k = 0..n-1} a(k).

The programs for A003047, the canonical program `A003047.P4151287923999535134` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003047 has offset 1).

The definition of A003047 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003047.P4151287923999535134

`(4*(n+1)-6)*a(n-1)²/(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003047

/-- `(4*(n+1)-6)*a(n-1)²/(n+1)` -/
def P4151287923999535134.Spec : Prop :=
  ∀ n, P4151287923999535134.a n = (A003047 (n + 1) : ℚ)

end A003047

/-! ## A003047.P10719842101881473201

`(4-6/(n+1))*a(n-1)²` with `a(0)=1`
-/

namespace A003047.P10719842101881473201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 - 6 / (n + 1 : ℚ)) * a (n - 1) ^ 2

end

end A003047.P10719842101881473201

namespace A003047

/-- `(4-6/(n+1))*a(n-1)²` -/
def P10719842101881473201.Spec : Prop :=
  ∀ n, P10719842101881473201.a n = (A003047 (n + 1) : ℚ)

end A003047

/-! ## A003047.P17719427845629244719

`(4-6/(n+1))*a(n-1)*a(n-1)` with `a(0)=1`
-/

namespace A003047.P17719427845629244719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 - 6 / (n + 1 : ℚ)) * a (n - 1) * a (n - 1)

end

end A003047.P17719427845629244719

namespace A003047

/-- `(4-6/(n+1))*a(n-1)*a(n-1)` -/
def P17719427845629244719.Spec : Prop :=
  ∀ n, P17719427845629244719.a n = (A003047 (n + 1) : ℚ)

end A003047

/-! ## A003047.P3204641785085961329

`A028580(round(sqrt(n²+1)))`
-/

namespace A003047.P3204641785085961329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028580 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A003047.P3204641785085961329

namespace A003047

/-- `A028580(round(sqrt(n²+1)))` -/
def P3204641785085961329.Spec : Prop :=
  ∀ n, P3204641785085961329.a n = A003047 (n + 1)

end A003047

/-! ## A003047.P10989181059468503156

`A055633(∑[A008619(n)])`
-/

namespace A003047.P10989181059468503156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055633 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003047.P10989181059468503156

namespace A003047

/-- `A055633(∑[A008619(n)])` -/
def P10989181059468503156.Spec : Prop :=
  ∀ n, P10989181059468503156.a n = A003047 (n + 1)

end A003047

/-!
# A003048: a(n+1) = n*a(n) - (-1)^n.

The programs for A003048, the canonical program `A003048.P6974688099969864913` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003048 has offset 1).

The definition of A003048 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003048.P6974688099969864913

`n*a(n-1)+(-1)^(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003048

/-- `n*a(n-1)+(-1)^(n+1)` -/
def P6974688099969864913.Spec : Prop :=
  ∀ n, P6974688099969864913.a n = A003048 (n + 1)

theorem P6974688099969864913.correct : P6974688099969864913.Spec := by
  intro n
  simp only [A003048, Nat.add_sub_cancel]

end A003048

/-! ## A003048.P6464596147883792457

`n!+A002467(n)`
-/

namespace A003048.P6464596147883792457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) + A002467 n

end

end A003048.P6464596147883792457

namespace A003048

/-- `n!+A002467(n)` -/
def P6464596147883792457.Spec : Prop :=
  ∀ n, P6464596147883792457.a n = A003048 (n + 1)

end A003048

/-! ## A003048.P12608699373661428599

`abs(xor(1, -(n*a(n-1))))` with `a(0)=1`
-/

namespace A003048.P12608699373661428599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |Int.xor 1 (-((n : ℤ) * a (n - 1)))|

end

end A003048.P12608699373661428599

namespace A003048

/-- `abs(xor(1, -(n*a(n-1))))` -/
def P12608699373661428599.Spec : Prop :=
  ∀ n, P12608699373661428599.a n = A003048 (n + 1)

end A003048

/-! ## A003048.P15548616625387926229

`-xor(1, -(n*a(n-1)))` with `a(0)=1`
-/

namespace A003048.P15548616625387926229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -Int.xor 1 (-((n : ℤ) * a (n - 1)))

end

end A003048.P15548616625387926229

namespace A003048

/-- `-xor(1, -(n*a(n-1)))` -/
def P15548616625387926229.Spec : Prop :=
  ∀ n, P15548616625387926229.a n = A003048 (n + 1)

end A003048

/-! ## A003048.P12766383338695966003

`xor(1, n*a(n-1)+1)-1` with `a(0)=1`
-/

namespace A003048.P12766383338695966003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 ((n : ℤ) * a (n - 1) + 1) - 1

end

end A003048.P12766383338695966003

namespace A003048

/-- `xor(1, n*a(n-1)+1)-1` -/
def P12766383338695966003.Spec : Prop :=
  ∀ n, P12766383338695966003.a n = A003048 (n + 1)

end A003048

/-! ## A003048.P15397763843547929807

`a(n-1)/n^(-1)-(-1)^n` with `a(0)=1`
-/

namespace A003048.P15397763843547929807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) - ((-1) ^ n : ℚ)

end

end A003048.P15397763843547929807

namespace A003048

/-- `a(n-1)/n^(-1)-(-1)^n` -/
def P15397763843547929807.Spec : Prop :=
  ∀ n, P15397763843547929807.a n = (A003048 (n + 1) : ℚ)

end A003048

/-! ## A003048.P4714561499839287405

`2*n%2+n*a(n-1)-1` with `a(0)=1`
-/

namespace A003048.P4714561499839287405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * (n % 2) : ℕ) : ℤ) + ((n : ℤ) * a (n - 1) - 1)

end

end A003048.P4714561499839287405

namespace A003048

/-- `2*n%2+n*a(n-1)-1` -/
def P4714561499839287405.Spec : Prop :=
  ∀ n, P4714561499839287405.a n = A003048 (n + 1)

end A003048

/-! ## A003048.P14365151863070795095

`(n-1)*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A003048.P14365151863070795095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((n : ℤ) - 1) * (a (n - 1) + a (n - 2))

end

end A003048.P14365151863070795095

namespace A003048

/-- `(n-1)*(a(n-1)+a(n-2))` -/
def P14365151863070795095.Spec : Prop :=
  ∀ n, P14365151863070795095.a n = A003048 (n + 1)

end A003048

/-! ## A003048.P17612316462538060732

`∏[(n-1)/a(n-1)+n-1]` with `a(0)=1, a(1)=2`
-/

namespace A003048.P17612316462538060732
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) / f1 (n - 1) + ((n : ℤ) - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A003048.P17612316462538060732

namespace A003048

/-- `∏[(n-1)/a(n-1)+n-1]` -/
def P17612316462538060732.Spec : Prop :=
  ∀ n, P17612316462538060732.a n = (A003048 (n + 1) : ℚ)

end A003048

/-! ## A003048.P12961081344173385002

`2*a(n-1)%2-(1-n*a(n-1))` with `a(0)=1`
-/

namespace A003048.P12961081344173385002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * Int.tmod (a (n - 1)) 2 - (1 - (n : ℤ) * a (n - 1))

end

end A003048.P12961081344173385002

namespace A003048

/-- `2*a(n-1)%2-(1-n*a(n-1))` -/
def P12961081344173385002.Spec : Prop :=
  ∀ n, P12961081344173385002.a n = A003048 (n + 1)

end A003048

/-!
# A003049: Number of connected Eulerian graphs with n unlabeled nodes.

The programs for A003049, there is no canonical definition to state claims against.
-/

/-! ## A003049.P8604633790812468023

`A000007(n)+Δ[A133736(A028310(n))]`
-/

namespace A003049.P8604633790812468023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133736 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A003049.P8604633790812468023

/-! ## A003049.P306152255285589134

`A000007(n)+Δ[A133736(A233583(n+1))]`
-/

namespace A003049.P306152255285589134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133736 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A003049.P306152255285589134

/-! ## A003049.P10365846674023760860

`Δ[A133736(A233583(n+1))+A057427(n)]`
-/

namespace A003049.P10365846674023760860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133736 (A233583 (n + 1)).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003049.P10365846674023760860

/-! ## A003049.P15191068618662344259

`A134746(2*n)+Δ[A133736(A233583(n+1))]`
-/

namespace A003049.P15191068618662344259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133736 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134746 (2 * n) + (f1 (n + 1) - f1 n)

end

end A003049.P15191068618662344259

/-! ## A003049.P12599311984056762987

`A133736(n+1)+A000007(n)-A133736(A028310(n))`
-/

namespace A003049.P12599311984056762987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133736 (n + 1) + (A000007 n - A133736 (A028310 n).toNat)

end

end A003049.P12599311984056762987

/-!
# A003050: Number of primitive sublattices of index n in hexagonal lattice: triples x,y,z from Z/nZ with x+y+z = 0, discarding any triple that can be obtained from another by multiplying by a unit and permuting.

The programs for A003050, the canonical program `A003050.P2859772275645655449` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003050 has offset 1).

The definition of A003050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003050.P11945434856860030445

`∑{d}[n+1, A003051(#)*A271102((n+1)/#)]`
-/

namespace A003050.P11945434856860030445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003051 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003050.P11945434856860030445

namespace A003050

/-- `∑{d}[n+1, A003051(#)*A271102((n+1)/#)]` -/
def P11945434856860030445.Spec : Prop :=
  ∀ n, P11945434856860030445.a n = A003050 (n + 1)

end A003050

/-! ## A003050.P2859772275645655449

`A001615(n+1)-(A157227(n+1)+A157223(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A003050

/-- `A001615(n+1)-(A157227(n+1)+A157223(n+1))` -/
def P2859772275645655449.Spec : Prop :=
  ∀ n, P2859772275645655449.a n = A003050 (n + 1)

theorem P2859772275645655449.correct : P2859772275645655449.Spec := by
  intro n
  simp only [A003050, Nat.add_sub_cancel]

end A003050

/-! ## A003050.P7763697986712946504

`A060594(n+1)+A157223(n+1)-A157227(n+1)`
-/

namespace A003050.P7763697986712946504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (n + 1) + (A157223 (n + 1) - A157227 (n + 1))

end

end A003050.P7763697986712946504

namespace A003050

/-- `A060594(n+1)+A157223(n+1)-A157227(n+1)` -/
def P7763697986712946504.Spec : Prop :=
  ∀ n, P7763697986712946504.a n = A003050 (n + 1)

end A003050

/-! ## A003050.P7548936109166957596

`A118668(A325033(3*(n+1))+A062860(n))`
-/

namespace A003050.P7548936109166957596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118668 (A325033 (3 * (n + 1)) + A062860 n).toNat

end

end A003050.P7548936109166957596

namespace A003050

/-- `A118668(A325033(3*(n+1))+A062860(n))` -/
def P7548936109166957596.Spec : Prop :=
  ∀ n, P7548936109166957596.a n = A003050 (n + 1)

end A003050

/-! ## A003050.P4254491509535340301

`A182860(C(round((n+3)²/12), A000120(n)))`
-/

namespace A003050.P4254491509535340301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182860 (Nat.choose (SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12)).toNat (A000120 n).toNat)

end

end A003050.P4254491509535340301

namespace A003050

/-- `A182860(C(round((n+3)²/12), A000120(n)))` -/
def P4254491509535340301.Spec : Prop :=
  ∀ n, P4254491509535340301.a n = A003050 (n + 1)

end A003050

/-!
# A003051: Number of inequivalent sublattices of index n in hexagonal lattice, where two sublattices are equivalent if they are related by a rotation or reflection preserving the hexagonal lattice.

The programs for A003051, the canonical program `A003051.P6848603489716177678` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003051 has offset 1).

The definition of A003051 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, A145390, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A003051.P6848603489716177678

`(A000203(n+1)+2*A002324(n+1)+3*A145390(n+1))/6`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A003051

/-- `(A000203(n+1)+2*A002324(n+1)+3*A145390(n+1))/6` -/
def P6848603489716177678.Spec : Prop :=
  ∀ n, P6848603489716177678.a n = (A003051 (n + 1) : ℚ)

end A003051

/-! ## A003051.P17382687614567335230

`(A145394(n+1)+A145390(n+1))/2`
-/

namespace A003051.P17382687614567335230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145394 (n + 1) + A145390 (n + 1) : ℚ) / 2

end

end A003051.P17382687614567335230

namespace A003051

/-- `(A145394(n+1)+A145390(n+1))/2` -/
def P17382687614567335230.Spec : Prop :=
  ∀ n, P17382687614567335230.a n = (A003051 (n + 1) : ℚ)

end A003051

/-! ## A003051.P4723380637378952463

`∑{d}[n+1, A003050(#)*A010052((n+1)/#)]`
-/

namespace A003051.P4723380637378952463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003050 d * A010052 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A003051.P4723380637378952463

namespace A003051

/-- `∑{d}[n+1, A003050(#)*A010052((n+1)/#)]` -/
def P4723380637378952463.Spec : Prop :=
  ∀ n, P4723380637378952463.a n = A003051 (n + 1)

end A003051

/-! ## A003051.P3518698972379761466

`A002324(n+1)+A145391(n+1)-A145394(n+1)`
-/

namespace A003051.P3518698972379761466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1) + (A145391 (n + 1) - A145394 (n + 1))

end

end A003051.P3518698972379761466

namespace A003051

/-- `A002324(n+1)+A145391(n+1)-A145394(n+1)` -/
def P3518698972379761466.Spec : Prop :=
  ∀ n, P3518698972379761466.a n = A003051 (n + 1)

end A003051

/-! ## A003051.P14924770115800237737

`∑{d}[n+1, A112689(#+1)]`
-/

namespace A003051.P14924770115800237737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112689 (d + 1)

end

end A003051.P14924770115800237737

namespace A003051

/-- `∑{d}[n+1, A112689(#+1)]` -/
def P14924770115800237737.Spec : Prop :=
  ∀ n, P14924770115800237737.a n = A003051 (n + 1)

end A003051

/-!
# A003052: Self numbers or Colombian numbers (numbers that are not of the form m + sum of digits of m for any m).

The programs for A003052, there is no canonical definition to state claims against.
-/

/-! ## A003052.P13084299827771883358

`A163128(n+1)+1+n`
-/

namespace A003052.P13084299827771883358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163128 (n + 1) + 1 + (n : ℤ)

end

end A003052.P13084299827771883358

/-! ## A003052.P14757253364203310081

`A377472(n)+a(n-1)` with `a(0)=1`
-/

namespace A003052.P14757253364203310081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A377472 n + a (n - 1)

end

end A003052.P14757253364203310081

/-! ## A003052.P12419844629447089943

`a(n-1)+A163139(n)+1` with `a(0)=1`
-/

namespace A003052.P12419844629447089943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A163139 n + 1)

end

end A003052.P12419844629447089943

/-! ## A003052.P4786694053074771511

`∪[A249045(n+1), A249047(n+1)]`
-/

namespace A003052.P4786694053074771511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003052.P4786694053074771511

/-! ## A003052.P4081301020301270996

`∑[A163139(n+1)+1]-A163139(n+1)`
-/

namespace A003052.P4081301020301270996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163139 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A163139 (n + 1)

end

end A003052.P4081301020301270996

/-! ## A003052.P5239357075238678858

`record[A036233(n+1)]`
-/

namespace A003052.P5239357075238678858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003052.P5239357075238678858

/-! ## A003052.P79250114286063702

`record[n^(1-A230093(n))]`
-/

namespace A003052.P79250114286063702
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (1 - A230093 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003052.P79250114286063702

/-! ## A003052.P15979292898962957508

`record[(n+1)*(1-A230093(n+1))]`
-/

namespace A003052.P15979292898962957508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A230093 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003052.P15979292898962957508

/-! ## A003052.P2838274877250111203

`eq[n, A230093(n)+A028310(n)]`
-/

namespace A003052.P2838274877250111203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n + A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003052.P2838274877250111203

/-! ## A003052.P219236196667096360

`eq[2, A230093(n)+A161872(n+2)]`
-/

namespace A003052.P219236196667096360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n + A161872 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003052.P219236196667096360

/-! ## A003052.P15958322677262450440

`eq[A230093(n)+1, A230093(A033716(n))]`
-/

namespace A003052.P15958322677262450440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 (A033716 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003052.P15958322677262450440

/-! ## A003052.P12490630241318405047

`eq[A230093(n)+A002033(n), A002033(n)]`
-/

namespace A003052.P12490630241318405047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n + A002033 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003052.P12490630241318405047

/-! ## A003052.P9395296935393107156

`eq[A230093(n)+A002061(n), A002061(n)]`
-/

namespace A003052.P9395296935393107156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n + A002061 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003052.P9395296935393107156

/-! ## A003052.P2929275538138540739

`eq[A230093(n)+A003415(n), A003415(n)]`
-/

namespace A003052.P2929275538138540739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n + A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003052.P2929275538138540739

/-! ## A003052.P7581138790018051065

`eq[A230093(n)+A056965(n), A056965(n)]`
-/

namespace A003052.P7581138790018051065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n + A056965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003052.P7581138790018051065

/-! ## A003052.P6915725368767791030

`eq[A230093(n)+A073855(n), A073855(n)]`
-/

namespace A003052.P6915725368767791030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n + A073855 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003052.P6915725368767791030

/-! ## A003052.P14291458970674219430

`eq[A000120(n)-A230093(n), A000120(n)]`
-/

namespace A003052.P14291458970674219430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A230093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003052.P14291458970674219430

/-! ## A003052.P10057784328955373983

`eq[A072480(n)-A230093(n), A072480(n)]`
-/

namespace A003052.P10057784328955373983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n - A230093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003052.P10057784328955373983

/-! ## A003052.P9797789054596607176

`eq[A100050(n)-A230093(n), A100050(n)]`
-/

namespace A003052.P9797789054596607176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100050 n - A230093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100050 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003052.P9797789054596607176

/-! ## A003052.P12764140798219268994

`eq[A104555(n)-A230093(n), A104555(n)]`
-/

namespace A003052.P12764140798219268994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104555 n - A230093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104555 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003052.P12764140798219268994

/-!
# A003053: Order of orthogonal group O(n, GF(2)).

The programs for A003053, there is no canonical definition to state claims against.
-/

/-! ## A003053.P11218346769182537200

`∏[(n%2)^n+2^n-1]`
-/

namespace A003053.P11218346769182537200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n % 2) ^ n : ℕ) : ℤ) + ((2 ^ n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A003053.P11218346769182537200

/-! ## A003053.P10788982505654765069

`(2^n-log2(gcd(2, n)))*a(n-1)` with `a(0)=1`
-/

namespace A003053.P10788982505654765069
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  ((2 ^ n : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)) * a (n - 1)

end

end A003053.P10788982505654765069

/-! ## A003053.P14768943798134961459

`(2^n-(n+1)%2)*a(n-1)` with `a(0)=1`
-/

namespace A003053.P14768943798134961459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 ^ n : ℤ) - (((n + 1) % 2 : ℕ) : ℤ)) * a (n - 1)

end

end A003053.P14768943798134961459

/-! ## A003053.P1574075603552009928

`(2^n-and(1, n+1))*a(n-1)` with `a(0)=1`
-/

namespace A003053.P1574075603552009928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 ^ n : ℤ) - (Nat.land 1 (n + 1) : ℤ)) * a (n - 1)

end

end A003053.P1574075603552009928

/-! ## A003053.P142353842564351953

`(2^n-char[2*n])*lcm(n, a(n-1))` with `a(0)=1`
-/

namespace A003053.P142353842564351953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 ^ n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * (Int.lcm (n : ℤ) (a (n - 1)) : ℤ)

end

end A003053.P142353842564351953

/-!
# A003056: n appears n+1 times. Also the array A(n,k) = n+k (n >= 0, k >= 0) read by antidiagonals. Also inverse of triangular numbers.

The programs for A003056, the canonical program `A003056.P5318256527314048597` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003056 has offset 0).

The definition of A003056 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003056.P5318256527314048597

`floor((sqrt(1+8*n)-1)/2)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003056

/-- `floor((sqrt(1+8*n)-1)/2)` -/
def P5318256527314048597.Spec : Prop :=
  ∀ n, P5318256527314048597.a n = A003056 n

theorem P5318256527314048597.correct : P5318256527314048597.Spec := by
  intro n
  simp only [A003056]

end A003056

/-! ## A003056.P15078269232311510737

`n+1-A122797(n+1)`
-/

namespace A003056.P15078269232311510737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A122797 (n + 1)

end

end A003056.P15078269232311510737

namespace A003056

/-- `n+1-A122797(n+1)` -/
def P15078269232311510737.Spec : Prop :=
  ∀ n, P15078269232311510737.a n = A003056 n

end A003056

/-! ## A003056.P15960836149428772427

`2*n+1-A001614(n+1)`
-/

namespace A003056.P15960836149428772427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A001614 (n + 1)

end

end A003056.P15960836149428772427

namespace A003056

/-- `2*n+1-A001614(n+1)` -/
def P15960836149428772427.Spec : Prop :=
  ∀ n, P15960836149428772427.a n = A003056 n

end A003056

/-! ## A003056.P9700327663640668283

`∑[char[C(n, 2)]]-1`
-/

namespace A003056.P9700327663640668283
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A003056.P9700327663640668283

namespace A003056

/-- `∑[char[C(n, 2)]]-1` -/
def P9700327663640668283.Spec : Prop :=
  ∀ n, P9700327663640668283.a n = A003056 n

end A003056

/-! ## A003056.P11449842242453984215

`comp[∑[n]]%(n+2)`
-/

namespace A003056.P11449842242453984215
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 2)

end

end A003056.P11449842242453984215

namespace A003056

/-- `comp[∑[n]]%(n+2)` -/
def P11449842242453984215.Spec : Prop :=
  ∀ n, (P11449842242453984215.a n : ℤ) = A003056 n

end A003056

/-! ## A003056.P16977524177500374137

`xor(∑[-char[∑[n]]], -1)`
-/

namespace A003056.P16977524177500374137
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A003056.P16977524177500374137

namespace A003056

/-- `xor(∑[-char[∑[n]]], -1)` -/
def P16977524177500374137.Spec : Prop :=
  ∀ n, P16977524177500374137.a n = A003056 n

end A003056

/-! ## A003056.P17835758658258431357

`comp[C(n, 2)]-(n+2)`
-/

namespace A003056.P17835758658258431357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 2 : ℤ)

end

end A003056.P17835758658258431357

namespace A003056

/-- `comp[C(n, 2)]-(n+2)` -/
def P17835758658258431357.Spec : Prop :=
  ∀ n, P17835758658258431357.a n = A003056 n

end A003056

/-! ## A003056.P15381473783841231889

`comp[C(n, 2)-2]-n`
-/

namespace A003056.P15381473783841231889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A003056.P15381473783841231889

namespace A003056

/-- `comp[C(n, 2)-2]-n` -/
def P15381473783841231889.Spec : Prop :=
  ∀ n, P15381473783841231889.a n = A003056 n

end A003056

/-! ## A003056.P3842624583158379352

`∑[and(1, char[∑[n]])]-1`
-/

namespace A003056.P3842624583158379352
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A003056.P3842624583158379352

namespace A003056

/-- `∑[and(1, char[∑[n]])]-1` -/
def P3842624583158379352.Spec : Prop :=
  ∀ n, P3842624583158379352.a n = A003056 n

end A003056

/-! ## A003056.P16702461356612390734

`n-∑[xor(1, char[∑[n]])]`
-/

namespace A003056.P16702461356612390734
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A003056.P16702461356612390734

namespace A003056

/-- `n-∑[xor(1, char[∑[n]])]` -/
def P16702461356612390734.Spec : Prop :=
  ∀ n, P16702461356612390734.a n = A003056 n

end A003056

/-! ## A003056.P11953144866468111516

`round(log(cosh(round(sqrt(2*(n+1))))))`
-/

namespace A003056.P11953144866468111516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.cosh (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) : ℝ)))

end

end A003056.P11953144866468111516

namespace A003056

/-- `round(log(cosh(round(sqrt(2*(n+1))))))` -/
def P11953144866468111516.Spec : Prop :=
  ∀ n, P11953144866468111516.a n = A003056 n

end A003056

/-! ## A003056.P3845597266750232754

`round(log(sinh(round(sqrt(2*(n+1))))))`
-/

namespace A003056.P3845597266750232754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.sinh (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) : ℝ)))

end

end A003056.P3845597266750232754

namespace A003056

/-- `round(log(sinh(round(sqrt(2*(n+1))))))` -/
def P3845597266750232754.Spec : Prop :=
  ∀ n, P3845597266750232754.a n = A003056 n

end A003056

/-! ## A003056.P17382873008571663316

`(∑[dr(2*char[∑[n]])]-2)/2`
-/

namespace A003056.P17382873008571663316
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((2 * (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2 : ℚ) / 2

end

end A003056.P17382873008571663316

namespace A003056

/-- `(∑[dr(2*char[∑[n]])]-2)/2` -/
def P17382873008571663316.Spec : Prop :=
  ∀ n, P17382873008571663316.a n = (A003056 n : ℚ)

end A003056

/-! ## A003056.P17155096587928117351

`a(n-(a(n-1)+1))+1` with `a(0)=0`
-/

namespace A003056.P17155096587928117351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - (a (n - 1) + 1)) + 1

end

end A003056.P17155096587928117351

namespace A003056

/-- `a(n-(a(n-1)+1))+1` -/
def P17155096587928117351.Spec : Prop :=
  ∀ n, (P17155096587928117351.a n : ℤ) = A003056 n

end A003056

/-! ## A003056.P4396250731501021594

`log2(A137688(n))`
-/

namespace A003056.P4396250731501021594
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A137688 n : ℝ)

end

end A003056.P4396250731501021594

namespace A003056

/-- `log2(A137688(n))` -/
def P4396250731501021594.Spec : Prop :=
  ∀ n, P4396250731501021594.a n = (A003056 n : ℝ)

end A003056

/-! ## A003056.P11778803237769751394

`∑[A073424(n)]`
-/

namespace A003056.P11778803237769751394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003056.P11778803237769751394

namespace A003056

/-- `∑[A073424(n)]` -/
def P11778803237769751394.Spec : Prop :=
  ∀ n, P11778803237769751394.a n = A003056 n

end A003056

/-! ## A003056.P9498217189857619405

`Δ[A006463(n)]`
-/

namespace A003056.P9498217189857619405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003056.P9498217189857619405

namespace A003056

/-- `Δ[A006463(n)]` -/
def P9498217189857619405.Spec : Prop :=
  ∀ n, P9498217189857619405.a n = A003056 n

end A003056

/-! ## A003056.P8199221402739461081

`A279891(n)/2`
-/

namespace A003056.P8199221402739461081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279891 n : ℚ) / 2

end

end A003056.P8199221402739461081

namespace A003056

/-- `A279891(n)/2` -/
def P8199221402739461081.Spec : Prop :=
  ∀ n, P8199221402739461081.a n = (A003056 n : ℚ)

theorem P8199221402739461081.correct : P8199221402739461081.Spec := by
  intro n
  simp only [A003056, Nat.add_sub_cancel, A003056.P8199221402739461081.a, A003056.P5318256527314048597.a, A279891, A279891.P15168887197681408912.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A003056

/-! ## A003056.P962700565923713724

`val(A098355(n), 3)`
-/

namespace A003056.P962700565923713724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A098355 n).toNat 3

end

end A003056.P962700565923713724

namespace A003056

/-- `val(A098355(n), 3)` -/
def P962700565923713724.Spec : Prop :=
  ∀ n, (P962700565923713724.a n : ℤ) = A003056 n

end A003056

/-! ## A003056.P15287129218274149578

`n-A083920(n)`
-/

namespace A003056.P15287129218274149578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A083920 n

end

end A003056.P15287129218274149578

namespace A003056

/-- `n-A083920(n)` -/
def P15287129218274149578.Spec : Prop :=
  ∀ n, P15287129218274149578.a n = A003056 n

end A003056

/-!
# A003057: n appears n - 1 times.

The programs for A003057, the canonical program `A003057.P16308936517940939054` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003057 has offset 2).

The definition of A003057 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003057.P16308936517940939054

`round(sqrt(2*(n+1)))+1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003057

/-- `round(sqrt(2*(n+1)))+1` -/
def P16308936517940939054.Spec : Prop :=
  ∀ n, P16308936517940939054.a n = A003057 (n + 2)

theorem P16308936517940939054.correct : P16308936517940939054.Spec := by
  intro n
  simp only [A003057, Nat.add_sub_cancel]

end A003057

/-! ## A003057.P5548603198351212244

`abs(comp[C(n, 2)]-n)`
-/

namespace A003057.P5548603198351212244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)|

end

end A003057.P5548603198351212244

namespace A003057

/-- `abs(comp[C(n, 2)]-n)` -/
def P5548603198351212244.Spec : Prop :=
  ∀ n, P5548603198351212244.a n = A003057 (n + 2)

end A003057

/-! ## A003057.P751129477392468178

`-xor(∑[char[∑[n]]], -1)`
-/

namespace A003057.P751129477392468178
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-1)

end

end A003057.P751129477392468178

namespace A003057

/-- `-xor(∑[char[∑[n]]], -1)` -/
def P751129477392468178.Spec : Prop :=
  ∀ n, P751129477392468178.a n = A003057 (n + 2)

end A003057

/-! ## A003057.P5217142490385039049

`∑[char[∑[n]]+floor(acot(n))]`
-/

namespace A003057.P5217142490385039049
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003057.P5217142490385039049

namespace A003057

/-- `∑[char[∑[n]]+floor(acot(n))]` -/
def P5217142490385039049.Spec : Prop :=
  ∀ n, P5217142490385039049.a n = A003057 (n + 2)

end A003057

/-! ## A003057.P10963477332088145085

`and(∑[char[∑[n]]]+1, -1)`
-/

namespace A003057.P10963477332088145085
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) (-1)

end

end A003057.P10963477332088145085

namespace A003057

/-- `and(∑[char[∑[n]]]+1, -1)` -/
def P10963477332088145085.Spec : Prop :=
  ∀ n, P10963477332088145085.a n = A003057 (n + 2)

end A003057

/-! ## A003057.P9840606979004383199

`(comp[∑[n]]+3)%(n+3)`
-/

namespace A003057.P9840606979004383199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 3) % (n + 3)

end

end A003057.P9840606979004383199

namespace A003057

/-- `(comp[∑[n]]+3)%(n+3)` -/
def P9840606979004383199.Spec : Prop :=
  ∀ n, (P9840606979004383199.a n : ℤ) = A003057 (n + 2)

end A003057

/-! ## A003057.P15428480236428390868

`ceil(sqrt(or(1, comp[∑[n]]+n)))`
-/

namespace A003057.P15428480236428390868
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℝ)⌉

end

end A003057.P15428480236428390868

namespace A003057

/-- `ceil(sqrt(or(1, comp[∑[n]]+n)))` -/
def P15428480236428390868.Spec : Prop :=
  ∀ n, P15428480236428390868.a n = A003057 (n + 2)

end A003057

/-! ## A003057.P12716655117774989589

`ceil(sqrt(∑[dr(char[∑[n]]+11)]))`
-/

namespace A003057.P12716655117774989589
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (((if ∃ j, f2 j = n then 1 else 0) + 11 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉

end

end A003057.P12716655117774989589

namespace A003057

/-- `ceil(sqrt(∑[dr(char[∑[n]]+11)]))` -/
def P12716655117774989589.Spec : Prop :=
  ∀ n, P12716655117774989589.a n = A003057 (n + 2)

end A003057

/-! ## A003057.P13656915593100459108

`(∑[2*char[C(n, 2)]]+2)/2`
-/

namespace A003057.P13656915593100459108
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℚ) / 2

end

end A003057.P13656915593100459108

namespace A003057

/-- `(∑[2*char[C(n, 2)]]+2)/2` -/
def P13656915593100459108.Spec : Prop :=
  ∀ n, P13656915593100459108.a n = (A003057 (n + 2) : ℚ)

end A003057

/-! ## A003057.P7247780680170606499

`round(sqrt(lt[floor(sqrt(lcm(2, n+1)))², n]))`
-/

namespace A003057.P7247780680170606499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (Nat.lcm 2 (n + 1)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℝ))

end

end A003057.P7247780680170606499

namespace A003057

/-- `round(sqrt(lt[floor(sqrt(lcm(2, n+1)))², n]))` -/
def P7247780680170606499.Spec : Prop :=
  ∀ n, P7247780680170606499.a n = A003057 (n + 2)

end A003057

/-! ## A003057.P4429674727984187521

`ceil(sqrt(a(n-1)+2*n+1))` with `a(0)=2`
-/

namespace A003057.P4429674727984187521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈Real.sqrt (a (n - 1) + (2 * n + 1 : ℤ) : ℝ)⌉

end

end A003057.P4429674727984187521

namespace A003057

/-- `ceil(sqrt(a(n-1)+2*n+1))` -/
def P4429674727984187521.Spec : Prop :=
  ∀ n, P4429674727984187521.a n = A003057 (n + 2)

end A003057

/-! ## A003057.P2205578037660732680

`floor(a(n-1)/2-(n/(1-a(n-1))-1))` with `a(0)=2`
-/

namespace A003057.P2205578037660732680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(a (n - 1) : ℚ) / 2 - ((n : ℚ) / (1 - a (n - 1) : ℚ) - 1)⌋

end

end A003057.P2205578037660732680

namespace A003057

/-- `floor(a(n-1)/2-(n/(1-a(n-1))-1))` -/
def P2205578037660732680.Spec : Prop :=
  ∀ n, P2205578037660732680.a n = A003057 (n + 2)

end A003057

/-! ## A003057.P8239699919485961552

`∑[A073423(n)]`
-/

namespace A003057.P8239699919485961552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003057.P8239699919485961552

namespace A003057

/-- `∑[A073423(n)]` -/
def P8239699919485961552.Spec : Prop :=
  ∀ n, P8239699919485961552.a n = A003057 (n + 2)

end A003057

/-! ## A003057.P13633464913331328955

`sqrt(A140978(n+1))`
-/

namespace A003057.P13633464913331328955
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A140978 (n + 1) : ℝ)

end

end A003057.P13633464913331328955

namespace A003057

/-- `sqrt(A140978(n+1))` -/
def P13633464913331328955.Spec : Prop :=
  ∀ n, P13633464913331328955.a n = (A003057 (n + 2) : ℝ)

end A003057

/-! ## A003057.P3949582241434125082

`log2(A098354(n+1))`
-/

namespace A003057.P3949582241434125082
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A098354 (n + 1) : ℝ)

end

end A003057.P3949582241434125082

namespace A003057

/-- `log2(A098354(n+1))` -/
def P3949582241434125082.Spec : Prop :=
  ∀ n, P3949582241434125082.a n = (A003057 (n + 2) : ℝ)

end A003057

/-! ## A003057.P278167423120302017

`ceil(sqrt(A004202(n+1)))`
-/

namespace A003057.P278167423120302017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A004202 (n + 1) : ℝ)⌉

end

end A003057.P278167423120302017

namespace A003057

/-- `ceil(sqrt(A004202(n+1)))` -/
def P278167423120302017.Spec : Prop :=
  ∀ n, P278167423120302017.a n = A003057 (n + 2)

end A003057

/-! ## A003057.P10374094992146860160

`floor(log2(A084468(n+1)))`
-/

namespace A003057.P10374094992146860160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A084468 (n + 1)).toNat

end

end A003057.P10374094992146860160

namespace A003057

/-- `floor(log2(A084468(n+1)))` -/
def P10374094992146860160.Spec : Prop :=
  ∀ n, (P10374094992146860160.a n : ℤ) = A003057 (n + 2)

end A003057

/-!
# A003059: k appears 2k-1 times. Also, square root of n, rounded up.

The programs for A003059, the canonical program `A003059.P1258737259570017328` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003059 has offset 1).

The definition of A003059 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003059.P1258737259570017328

`ceil(sqrt(n+1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003059

/-- `ceil(sqrt(n+1))` -/
def P1258737259570017328.Spec : Prop :=
  ∀ n, P1258737259570017328.a n = A003059 (n + 1)

theorem P1258737259570017328.correct : P1258737259570017328.Spec := by
  intro n
  simp only [A003059, Nat.add_sub_cancel]

end A003059

/-! ## A003059.P9448403746002473156

`comp[2*C(n, 2)]-n`
-/

namespace A003059.P9448403746002473156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A003059.P9448403746002473156

namespace A003059

/-- `comp[2*C(n, 2)]-n` -/
def P9448403746002473156.Spec : Prop :=
  ∀ n, P9448403746002473156.a n = A003059 (n + 1)

end A003059

/-! ## A003059.P545354651994504422

`a(n-1)+C(n, a(n-1)²)` with `a(0)=1`
-/

namespace A003059.P545354651994504422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose n (a (n - 1) ^ 2)

end

end A003059.P545354651994504422

namespace A003059

/-- `a(n-1)+C(n, a(n-1)²)` -/
def P545354651994504422.Spec : Prop :=
  ∀ n, (P545354651994504422.a n : ℤ) = A003059 (n + 1)

end A003059

/-! ## A003059.P7455144160716172761

`floor(a(n-1)+n/a(n-1)²)` with `a(0)=1`
-/

namespace A003059.P7455144160716172761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n : ℚ) / (a (n - 1) ^ 2 : ℚ)⌋

end

end A003059.P7455144160716172761

namespace A003059

/-- `floor(a(n-1)+n/a(n-1)²)` -/
def P7455144160716172761.Spec : Prop :=
  ∀ n, P7455144160716172761.a n = A003059 (n + 1)

end A003059

/-! ## A003059.P8401923741957517140

`floor(a(n-1)-(a(n-1)²/n-2))` with `a(0)=1`
-/

namespace A003059.P8401923741957517140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) - ((a (n - 1) ^ 2 : ℚ) / (n : ℚ) - 2)⌋

end

end A003059.P8401923741957517140

namespace A003059

/-- `floor(a(n-1)-(a(n-1)²/n-2))` -/
def P8401923741957517140.Spec : Prop :=
  ∀ n, P8401923741957517140.a n = A003059 (n + 1)

end A003059

/-! ## A003059.P12226521586811548320

`floor(a(n-1)+2^(n-a(n-1)²))` with `a(0)=1`
-/

namespace A003059.P12226521586811548320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - a (n - 1) ^ 2 : ℤ)⌋

end

end A003059.P12226521586811548320

namespace A003059

/-- `floor(a(n-1)+2^(n-a(n-1)²))` -/
def P12226521586811548320.Spec : Prop :=
  ∀ n, P12226521586811548320.a n = A003059 (n + 1)

end A003059

/-! ## A003059.P2975484172077825962

`floor((a(n-1)+n/a(n-1)+2)/2)` with `a(0)=1`
-/

namespace A003059.P2975484172077825962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((a (n - 1) : ℚ) + ((n : ℚ) / (a (n - 1) : ℚ) + 2)) / 2⌋

end

end A003059.P2975484172077825962

namespace A003059

/-- `floor((a(n-1)+n/a(n-1)+2)/2)` -/
def P2975484172077825962.Spec : Prop :=
  ∀ n, P2975484172077825962.a n = A003059 (n + 1)

end A003059

/-! ## A003059.P14292214000360684311

`floor((a(n-1)-floor(n/(1-a(n-1))))/2)` with `a(0)=1, a(1)=2`
-/

namespace A003059.P14292214000360684311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(a (n - 1) - ⌊(n : ℚ) / (1 - a (n - 1) : ℚ)⌋ : ℚ) / 2⌋

end

end A003059.P14292214000360684311

namespace A003059

/-- `floor((a(n-1)-floor(n/(1-a(n-1))))/2)` -/
def P14292214000360684311.Spec : Prop :=
  ∀ n, P14292214000360684311.a n = A003059 (n + 1)

end A003059

/-! ## A003059.P11761986085385347513

`Δ[A327672(n)]`
-/

namespace A003059.P11761986085385347513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003059.P11761986085385347513

namespace A003059

/-- `Δ[A327672(n)]` -/
def P11761986085385347513.Spec : Prop :=
  ∀ n, P11761986085385347513.a n = A003059 (n + 1)

end A003059

/-! ## A003059.P3594659228815942164

`1+A000196(n)`
-/

namespace A003059.P3594659228815942164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000196 n

end

end A003059.P3594659228815942164

namespace A003059

/-- `1+A000196(n)` -/
def P3594659228815942164.Spec : Prop :=
  ∀ n, P3594659228815942164.a n = A003059 (n + 1)

end A003059

/-! ## A003059.P6069893845236909932

`floor(sqrt(A080037(n)))`
-/

namespace A003059.P6069893845236909932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A080037 n)

end

end A003059.P6069893845236909932

namespace A003059

/-- `floor(sqrt(A080037(n)))` -/
def P6069893845236909932.Spec : Prop :=
  ∀ n, P6069893845236909932.a n = A003059 (n + 1)

end A003059

/-! ## A003059.P2928972837739269114

`∑[char[A165488(n)]]`
-/

namespace A003059.P2928972837739269114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165488 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003059.P2928972837739269114

namespace A003059

/-- `∑[char[A165488(n)]]` -/
def P2928972837739269114.Spec : Prop :=
  ∀ n, (P2928972837739269114.a n : ℤ) = A003059 (n + 1)

end A003059

/-! ## A003059.P11706371146707359123

`sqrt(A048761(n+1))`
-/

namespace A003059.P11706371146707359123
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A048761 (n + 1) : ℝ)

end

end A003059.P11706371146707359123

namespace A003059

/-- `sqrt(A048761(n+1))` -/
def P11706371146707359123.Spec : Prop :=
  ∀ n, P11706371146707359123.a n = (A003059 (n + 1) : ℝ)

end A003059

/-! ## A003059.P3256027230432553246

`sqrt(A048760(n))+1`
-/

namespace A003059.P3256027230432553246
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A048760 n : ℝ) + 1

end

end A003059.P3256027230432553246

namespace A003059

/-- `sqrt(A048760(n))+1` -/
def P3256027230432553246.Spec : Prop :=
  ∀ n, P3256027230432553246.a n = (A003059 (n + 1) : ℝ)

end A003059

/-! ## A003059.P10150073072897415107

`sqrt(A080883(n)+n)`
-/

namespace A003059.P10150073072897415107
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A080883 n + (n : ℤ) : ℝ)

end

end A003059.P10150073072897415107

namespace A003059

/-- `sqrt(A080883(n)+n)` -/
def P10150073072897415107.Spec : Prop :=
  ∀ n, P10150073072897415107.a n = (A003059 (n + 1) : ℝ)

end A003059

/-! ## A003059.P15287606567982777075

`sqrt(A165776(n)-n)`
-/

namespace A003059.P15287606567982777075
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165776 n - (n : ℤ) : ℝ)

end

end A003059.P15287606567982777075

namespace A003059

/-- `sqrt(A165776(n)-n)` -/
def P15287606567982777075.Spec : Prop :=
  ∀ n, P15287606567982777075.a n = (A003059 (n + 1) : ℝ)

end A003059

/-! ## A003059.P2289095123759938488

`A130819(n+1)/2`
-/

namespace A003059.P2289095123759938488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130819 (n + 1) : ℚ) / 2

end

end A003059.P2289095123759938488

namespace A003059

/-- `A130819(n+1)/2` -/
def P2289095123759938488.Spec : Prop :=
  ∀ n, P2289095123759938488.a n = (A003059 (n + 1) : ℚ)

end A003059

/-! ## A003059.P9086385772905977878

`1-A028391(n)+n`
-/

namespace A003059.P9086385772905977878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A028391 n + (n : ℤ)

end

end A003059.P9086385772905977878

namespace A003059

/-- `1-A028391(n)+n` -/
def P9086385772905977878.Spec : Prop :=
  ∀ n, P9086385772905977878.a n = A003059 (n + 1)

end A003059

/-! ## A003059.P16130853314625651727

`A028392(n)+1-n`
-/

namespace A003059.P16130853314625651727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 n + (1 - (n : ℤ))

end

end A003059.P16130853314625651727

namespace A003059

/-- `A028392(n)+1-n` -/
def P16130853314625651727.Spec : Prop :=
  ∀ n, P16130853314625651727.a n = A003059 (n + 1)

end A003059

/-! ## A003059.P13048407530751653692

`A078358(n+1)-n`
-/

namespace A003059.P13048407530751653692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078358 (n + 1) - (n : ℤ)

end

end A003059.P13048407530751653692

namespace A003059

/-- `A078358(n+1)-n` -/
def P13048407530751653692.Spec : Prop :=
  ∀ n, P13048407530751653692.a n = A003059 (n + 1)

theorem P13048407530751653692.correct : P13048407530751653692.Spec := by
  intro n
  simp only [A003059, Nat.add_sub_cancel, A003059.P13048407530751653692.a, A003059.P1258737259570017328.a, A078358, A078358.P11401124287563201188.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A003059

/-!
# A003060: Smallest number with reciprocal of period length n in decimal (base 10).

The programs for A003060, there is no canonical definition to state claims against.
-/

/-! ## A003060.P16019826988103874018

`A254578(8^n)`
-/

namespace A003060.P16019826988103874018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254578 (8 ^ n)

end

end A003060.P16019826988103874018

/-!
# A003061: Number of non-Abelian (finite) groups with n conjugacy classes.

The programs for A003061, there is no canonical definition to state claims against.
-/

/-! ## A003061.P8213706881098450141

`A073043(n+1)-A000688(n+1)`
-/

namespace A003061.P8213706881098450141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073043 (n + 1) - A000688 (n + 1)

end

end A003061.P8213706881098450141

/-! ## A003061.P17760794957518398240

`A073043(n+1)-A095691(n+1)`
-/

namespace A003061.P17760794957518398240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073043 (n + 1) - A095691 (n + 1)

end

end A003061.P17760794957518398240

/-! ## A003061.P16596777005729595352

`A073043(n+1)-A000005((n+1)/∏{p}[n+1, #])`
-/

namespace A003061.P16596777005729595352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073043 (n + 1) - A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A003061.P16596777005729595352

/-! ## A003061.P8660216320407390539

`A073043(n+1)-A071542((n+1)/∏{p}[n+1, #])`
-/

namespace A003061.P8660216320407390539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073043 (n + 1) - A071542 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A003061.P8660216320407390539

/-! ## A003061.P1776811612375755520

`A073043(n+1)-A304716((n+1)/∏{p}[n+1, #])`
-/

namespace A003061.P1776811612375755520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073043 (n + 1) - A304716 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A003061.P1776811612375755520

/-!
# A003062: Beginnings of periodic unitary aliquot sequences.

The programs for A003062, there is no canonical definition to state claims against.
-/

/-! ## A003062.P926364249135036939

`eq[1, A318880(n+1)]+1`
-/

namespace A003062.P926364249135036939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318880 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A003062.P926364249135036939

/-! ## A003062.P1531047349944545320

`eq[A097033(n+1), A318883(n+1)]+1`
-/

namespace A003062.P1531047349944545320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318883 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A003062.P1531047349944545320

/-! ## A003062.P12217274748966688680

`filter[A024995(n+2), A318880(#)]`
-/

namespace A003062.P12217274748966688680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024995 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A318880 (f1 j).toNat = 1) n)

end

end A003062.P12217274748966688680

/-! ## A003062.P5297100561401518172

`filter[A177712(n+1), A318880(#)]`
-/

namespace A003062.P5297100561401518172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A318880 (f1 j).toNat = 1) n)

end

end A003062.P5297100561401518172

/-! ## A003062.P6443569363049204668

`filter[A020739(n), A318880(#)]`
-/

namespace A003062.P6443569363049204668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A318880 (f1 j).toNat = 1) n)

end

end A003062.P6443569363049204668

/-! ## A003062.P17772262501235372917

`filter[A103517(n), A318880(#)]`
-/

namespace A003062.P17772262501235372917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A318880 (f1 j).toNat = 1) n)

end

end A003062.P17772262501235372917

/-! ## A003062.P7871012885297508708

`A092486(eq[1, A318880(n+1)])`
-/

namespace A003062.P7871012885297508708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003062.P7871012885297508708

/-! ## A003062.P14557862706439993433

`filter[A004277(n+1), A318880(#)]`
-/

namespace A003062.P14557862706439993433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A318880 (f1 j).toNat = 1) n)

end

end A003062.P14557862706439993433

/-! ## A003062.P10978169812951759202

`filter[A005843(n+1), A318880(#)]`
-/

namespace A003062.P10978169812951759202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A318880 (f1 j).toNat = 1) n)

end

end A003062.P10978169812951759202

/-! ## A003062.P10431837024950028571

`filter[A112598(n+1), A318880(#)]`
-/

namespace A003062.P10431837024950028571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A318880 (f1 j).toNat = 1) n)

end

end A003062.P10431837024950028571

/-! ## A003062.P13802603113941495846

`filter[A054741(n+1), A318880(#)]`
-/

namespace A003062.P13802603113941495846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A318880 (f1 j).toNat = 1) n)

end

end A003062.P13802603113941495846

/-! ## A003062.P162551810464950154

`filter[A119432(n+1), A318880(#)]`
-/

namespace A003062.P162551810464950154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A318880 (f1 j).toNat = 1) n)

end

end A003062.P162551810464950154

/-! ## A003062.P5768130081930728910

`filter[A069209(n+1), A318880(#)]`
-/

namespace A003062.P5768130081930728910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A318880 (f1 j).toNat = 1) n)

end

end A003062.P5768130081930728910

/-! ## A003062.P9295740421956563706

`A014681(eq[1, A318880(n+1)])`
-/

namespace A003062.P9295740421956563706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003062.P9295740421956563706

/-! ## A003062.P13902992500752095060

`A020725(eq[1, A318880(n+1)])`
-/

namespace A003062.P13902992500752095060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003062.P13902992500752095060

/-! ## A003062.P569694456618935696

`A100710(eq[1, A318880(n+1)])`
-/

namespace A003062.P569694456618935696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100710 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003062.P569694456618935696

/-! ## A003062.P2883924581481443362

`A153152(eq[1, A318880(n+1)])`
-/

namespace A003062.P2883924581481443362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003062.P2883924581481443362

/-! ## A003062.P14176597735894247254

`record[A159966(n+6)*A318880(n+6)]`
-/

namespace A003062.P14176597735894247254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (n + 6) * A318880 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003062.P14176597735894247254

/-! ## A003062.P3418622289806573925

`record[A163241(A163241(n+6)*A318880(n+6))]`
-/

namespace A003062.P3418622289806573925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A163241 (n + 6) * A318880 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003062.P3418622289806573925

/-! ## A003062.P14833609477819958127

`filter[A204879(n+1), A318880(#)]`
-/

namespace A003062.P14833609477819958127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A318880 (f1 j).toNat = 1) n)

end

end A003062.P14833609477819958127

/-!
# A003063: a(n) = 3^(n-1) - 2^n.

The programs for A003063, the canonical program `A003063.P3137776878251869551` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003063 has offset 1).

The definition of A003063 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-2^(n+1)` (program `A003063.P3137776878251869551`, by `A003063.P3137776878251869551.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003063.P3137776878251869551

`3^n-2^(n+1)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003063

/-- `3^n-2^(n+1)` -/
def P3137776878251869551.Spec : Prop :=
  ∀ n, P3137776878251869551.a n = A003063 (n + 1)

theorem P3137776878251869551.correct : P3137776878251869551.Spec := by
  intro n
  simp only [A003063, Nat.add_sub_cancel]

end A003063

/-! ## A003063.P15582573476164909284

`ogf((-1+4x)/(1-5x+6x^2))`
-/

namespace A003063.P15582573476164909284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 4] [1, -5, 6] n

end

end A003063.P15582573476164909284

namespace A003063

/-- `ogf((-1+4x)/(1-5x+6x^2))` -/
def P15582573476164909284.Spec : Prop :=
  ∀ n, P15582573476164909284.a n = A003063 (n + 1)

end A003063

/-! ## A003063.P6096051848227471062

`(3^n-∑[2^n]-1)%or(2, 3^n-1)`
-/

namespace A003063.P6096051848227471062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((3 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (Int.lor 2 ((3 ^ n : ℤ) - 1))

end

end A003063.P6096051848227471062

namespace A003063

/-- `(3^n-∑[2^n]-1)%or(2, 3^n-1)` -/
def P6096051848227471062.Spec : Prop :=
  ∀ n, P6096051848227471062.a n = A003063 (n + 1)

end A003063

/-! ## A003063.P18028063395451434577

`xor(1, A101052(n)-3)`
-/

namespace A003063.P18028063395451434577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A101052 n - 3)

end

end A003063.P18028063395451434577

namespace A003063

/-- `xor(1, A101052(n)-3)` -/
def P18028063395451434577.Spec : Prop :=
  ∀ n, P18028063395451434577.a n = A003063 (n + 1)

end A003063

/-! ## A003063.P1122340601289275255

`or(1, A028243(n+1)-2)`
-/

namespace A003063.P1122340601289275255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A028243 (n + 1) - 2)

end

end A003063.P1122340601289275255

namespace A003063

/-- `or(1, A028243(n+1)-2)` -/
def P1122340601289275255.Spec : Prop :=
  ∀ n, P1122340601289275255.a n = A003063 (n + 1)

end A003063

/-! ## A003063.P8490324048052040503

`or(1, 2*(A134063(n)-2))`
-/

namespace A003063.P8490324048052040503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * (A134063 n - 2))

end

end A003063.P8490324048052040503

namespace A003063

/-- `or(1, 2*(A134063(n)-2))` -/
def P8490324048052040503.Spec : Prop :=
  ∀ n, P8490324048052040503.a n = A003063 (n + 1)

end A003063

/-! ## A003063.P17639581690228582050

`Δ[A007051(n)-∑[2^n]]`
-/

namespace A003063.P17639581690228582050
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003063.P17639581690228582050

namespace A003063

/-- `Δ[A007051(n)-∑[2^n]]` -/
def P17639581690228582050.Spec : Prop :=
  ∀ n, P17639581690228582050.a n = A003063 (n + 1)

end A003063

/-! ## A003063.P3221684535824887177

`Δ[A003462(n)-(∑[2^n]-1)]`
-/

namespace A003063.P3221684535824887177
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003063.P3221684535824887177

namespace A003063

/-- `Δ[A003462(n)-(∑[2^n]-1)]` -/
def P3221684535824887177.Spec : Prop :=
  ∀ n, P3221684535824887177.a n = A003063 (n + 1)

end A003063

/-! ## A003063.P5016644391575359931

`Δ[A094374(n)-A033484(n)]`
-/

namespace A003063.P5016644391575359931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n - A033484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003063.P5016644391575359931

namespace A003063

/-- `Δ[A094374(n)-A033484(n)]` -/
def P5016644391575359931.Spec : Prop :=
  ∀ n, P5016644391575359931.a n = A003063 (n + 1)

end A003063

/-! ## A003063.P7470896319363737853

`Δ[A099754(n)-A033484(n)]`
-/

namespace A003063.P7470896319363737853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n - A033484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003063.P7470896319363737853

namespace A003063

/-- `Δ[A099754(n)-A033484(n)]` -/
def P7470896319363737853.Spec : Prop :=
  ∀ n, P7470896319363737853.a n = A003063 (n + 1)

end A003063

/-! ## A003063.P2418424658883119292

`(A304973(Δ[n²])-2^n)%A007689(n)`
-/

namespace A003063.P2418424658883119292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304973 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (2 ^ n : ℤ)) (A007689 n)

end

end A003063.P2418424658883119292

namespace A003063

/-- `(A304973(Δ[n²])-2^n)%A007689(n)` -/
def P2418424658883119292.Spec : Prop :=
  ∀ n, P2418424658883119292.a n = A003063 (n + 1)

end A003063

/-! ## A003063.P16383435007927764449

`Δ[A214091(n)/2]`
-/

namespace A003063.P16383435007927764449
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214091 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003063.P16383435007927764449

namespace A003063

/-- `Δ[A214091(n)/2]` -/
def P16383435007927764449.Spec : Prop :=
  ∀ n, P16383435007927764449.a n = (A003063 (n + 1) : ℚ)

theorem P16383435007927764449.correct : P16383435007927764449.Spec := by
  intro n
  simp only [A003063, Nat.add_sub_cancel, A003063.P16383435007927764449.f1, A003063.P16383435007927764449.a, A003063.P3137776878251869551.a, A214091, A214091.P12934642212141174810.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A003063

/-! ## A003063.P6516867604449525911

`Δ[A101052(n)-A007051(n)]`
-/

namespace A003063.P6516867604449525911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101052 n - A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003063.P6516867604449525911

namespace A003063

/-- `Δ[A101052(n)-A007051(n)]` -/
def P6516867604449525911.Spec : Prop :=
  ∀ n, P6516867604449525911.a n = A003063 (n + 1)

end A003063

/-! ## A003063.P13655704033212946871

`(A008776(n)-A020707(n))/2`
-/

namespace A003063.P13655704033212946871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008776 n - A020707 n : ℚ) / 2

end

end A003063.P13655704033212946871

namespace A003063

/-- `(A008776(n)-A020707(n))/2` -/
def P13655704033212946871.Spec : Prop :=
  ∀ n, P13655704033212946871.a n = (A003063 (n + 1) : ℚ)

theorem P13655704033212946871.correct : P13655704033212946871.Spec := by
  intro n
  simp only [A003063, Nat.add_sub_cancel, A003063.P13655704033212946871.a, A003063.P3137776878251869551.a, A008776, A008776.P11088121667404015999.a, A020707, A020707.P16024998955381595964.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A003063

/-! ## A003063.P9203931979699852202

`(A002783(n)-A048578(n))/2`
-/

namespace A003063.P9203931979699852202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002783 n - A048578 n : ℚ) / 2

end

end A003063.P9203931979699852202

namespace A003063

/-- `(A002783(n)-A048578(n))/2` -/
def P9203931979699852202.Spec : Prop :=
  ∀ n, P9203931979699852202.a n = (A003063 (n + 1) : ℚ)

theorem P9203931979699852202.correct : P9203931979699852202.Spec := by
  intro n
  simp only [A003063, Nat.add_sub_cancel, A003063.P9203931979699852202.a, A003063.P3137776878251869551.a, A002783, A002783.P13135652513880479999.a, A048578, A048578.P13686089786535013419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A003063

/-! ## A003063.P77600502115532507

`(A245804(n)-A000079(n))/2`
-/

namespace A003063.P77600502115532507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245804 n - A000079 n : ℚ) / 2

end

end A003063.P77600502115532507

namespace A003063

/-- `(A245804(n)-A000079(n))/2` -/
def P77600502115532507.Spec : Prop :=
  ∀ n, P77600502115532507.a n = (A003063 (n + 1) : ℚ)

theorem P77600502115532507.correct : P77600502115532507.Spec := by
  intro n
  simp only [A003063, Nat.add_sub_cancel, A003063.P77600502115532507.a, A003063.P3137776878251869551.a, A000079, A000079.P10855139691139572931.a, A245804, A245804.P12793058916236791245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A003063

/-! ## A003063.P11659428148709598908

`(A027649(n)-Δ[A033484(n)])/2`
-/

namespace A003063.P11659428148709598908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027649 n - (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A003063.P11659428148709598908

namespace A003063

/-- `(A027649(n)-Δ[A033484(n)])/2` -/
def P11659428148709598908.Spec : Prop :=
  ∀ n, P11659428148709598908.a n = (A003063 (n + 1) : ℚ)

theorem P11659428148709598908.correct : P11659428148709598908.Spec := by
  intro n
  simp only [A003063, Nat.add_sub_cancel, A003063.P11659428148709598908.f1, A003063.P11659428148709598908.a, A003063.P3137776878251869551.a, A027649, A027649.P2434933350896167885.a, A033484, A033484.P10856640375789116383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A003063

/-! ## A003063.P1483576787306049033

`(A210448(n)-Δ[A099754(n)])/2`
-/

namespace A003063.P1483576787306049033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210448 n - (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A003063.P1483576787306049033

namespace A003063

/-- `(A210448(n)-Δ[A099754(n)])/2` -/
def P1483576787306049033.Spec : Prop :=
  ∀ n, P1483576787306049033.a n = (A003063 (n + 1) : ℚ)

end A003063

/-! ## A003063.P9295827932080668823

`Δ[A028243(n+1)/2-A036563(n)]`
-/

namespace A003063.P9295827932080668823
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028243 (n + 1) : ℚ) / 2 - (A036563 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003063.P9295827932080668823

namespace A003063

/-- `Δ[A028243(n+1)/2-A036563(n)]` -/
def P9295827932080668823.Spec : Prop :=
  ∀ n, P9295827932080668823.a n = (A003063 (n + 1) : ℚ)

theorem P9295827932080668823.correct : P9295827932080668823.Spec := by
  intro n
  simp only [A003063, Nat.add_sub_cancel, A003063.P9295827932080668823.f1, A003063.P9295827932080668823.a, A003063.P3137776878251869551.a, A028243, A028243.P7259272612448304247.a, A036563, A036563.P16747850807333830855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A003063

/-! ## A003063.P7009555673771793386

`A214091(2*n)/A085279(n+1)`
-/

namespace A003063.P7009555673771793386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214091 (2 * n) : ℚ) / (A085279 (n + 1) : ℚ)

end

end A003063.P7009555673771793386

namespace A003063

/-- `A214091(2*n)/A085279(n+1)` -/
def P7009555673771793386.Spec : Prop :=
  ∀ n, P7009555673771793386.a n = (A003063 (n + 1) : ℚ)

end A003063

/-!
# A003064: a(n) = smallest number with shortest addition chain of length n.

The programs for A003064, there is no canonical definition to state claims against.
-/

/-! ## A003064.P13323474037930936641

`A137814(n)+1-A137795(n+1)²`
-/

namespace A003064.P13323474037930936641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137814 n + (1 - A137795 (n + 1) ^ 2)

end

end A003064.P13323474037930936641

/-! ## A003064.P17934618423310534333

`A075530(A266082(A000045(n+1)))+n`
-/

namespace A003064.P17934618423310534333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075530 (A266082 (A000045 (n + 1)).toNat).toNat + (n : ℤ)

end

end A003064.P17934618423310534333

/-! ## A003064.P16344780485200005811

`A258837(A137795(n+1))+A137814(n)`
-/

namespace A003064.P16344780485200005811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258837 (A137795 (n + 1)).toNat + A137814 n

end

end A003064.P16344780485200005811

/-! ## A003064.P14522436921792496173

`A137814(n)-and(A022560(n), A343430(n+1))`
-/

namespace A003064.P14522436921792496173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137814 n - Int.land (A022560 n) (A343430 (n + 1))

end

end A003064.P14522436921792496173

/-! ## A003064.P9935034518805597783

`A383334(∑[n]+1)`
-/

namespace A003064.P9935034518805597783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383334 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A003064.P9935034518805597783

/-!
# A003065: Number of integers with a shortest addition chain of length n.

The programs for A003065, there is no canonical definition to state claims against.
-/

/-! ## A003065.P10035662432015698837

`A383333(∑[n]+1)`
-/

namespace A003065.P10035662432015698837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383333 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A003065.P10035662432015698837

/-! ## A003065.P6127066512498556083

`A375815(A210043(n))`
-/

namespace A003065.P6127066512498556083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375815 (A210043 n).toNat

end

end A003065.P6127066512498556083

/-! ## A003065.P17869693230427967050

`A003056(A148019(n+1))`
-/

namespace A003065.P17869693230427967050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A148019 (n + 1)).toNat

end

end A003065.P17869693230427967050

/-! ## A003065.P5618648375610289889

`A003056(Δ[A151257(n)]+1)`
-/

namespace A003065.P5618648375610289889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (f1 (n + 1) - f1 n + 1).toNat

end

end A003065.P5618648375610289889

/-! ## A003065.P2395012599444848843

`A103128(A246563(n)+∑{e}[n+1, #])`
-/

namespace A003065.P2395012599444848843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A246563 n + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)).toNat

end

end A003065.P2395012599444848843

/-!
# A003066: Problimes (first definition).

The programs for A003066, there is no canonical definition to state claims against.
-/

/-! ## A003066.P5153885853300594174

`∑[A110591(A022442(A005211(n+1)))]`
-/

namespace A003066.P5153885853300594174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A022442 (A005211 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003066.P5153885853300594174

/-! ## A003066.P6887548779681242854

`∑[A084558(A132603(n+1))]+1`
-/

namespace A003066.P6887548779681242854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A132603 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A003066.P6887548779681242854

/-! ## A003066.P13471388690409236465

`∑[A084558(A062493(n)+1)]`
-/

namespace A003066.P13471388690409236465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A062493 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003066.P13471388690409236465

/-! ## A003066.P2938636762164292006

`∑[A084558(A151800(A062493(n)))]`
-/

namespace A003066.P2938636762164292006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A151800 (A062493 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003066.P2938636762164292006

/-! ## A003066.P6145755753963726674

`∑[A084558(A008619(A053810(n+1)))]`
-/

namespace A003066.P6145755753963726674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A008619 (A053810 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003066.P6145755753963726674

/-!
# A003067: Problimes (second definition).

The programs for A003067, there is no canonical definition to state claims against.
-/

/-! ## A003067.P4971694342301194291

`∑[A070939(A156262(n+1)+A061579(n+1))]`
-/

namespace A003067.P4971694342301194291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A156262 (n + 1) + A061579 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003067.P4971694342301194291

/-! ## A003067.P13619409066695313051

`∑[A070939(A325328(n+1)+A205558(n+2))]`
-/

namespace A003067.P13619409066695313051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A325328 (n + 1) + A205558 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003067.P13619409066695313051

/-! ## A003067.P10194355150318310345

`∑[A038605(A008706(A317709(n+1)))]`
-/

namespace A003067.P10194355150318310345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (A008706 (A317709 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003067.P10194355150318310345

/-! ## A003067.P3874938727448072392

`∑[A084558(A000124(A160512(n+1)))]`
-/

namespace A003067.P3874938727448072392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A000124 (A160512 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003067.P3874938727448072392

/-! ## A003067.P10066602278204829610

`∑[A000523(A105356(n+1)+A038722(n+2)+1)]`
-/

namespace A003067.P10066602278204829610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A105356 (n + 1) + A038722 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003067.P10066602278204829610

/-! ## A003067.P289386729079135812

`∑[A000523(A105356(n+2)+A038722(n+2))]`
-/

namespace A003067.P289386729079135812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A105356 (n + 2) + A038722 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003067.P289386729079135812

/-!
# A003068: Problimes (third definition).

The programs for A003068, there is no canonical definition to state claims against.
-/

/-! ## A003068.P14363056664124616754

`A178907(n+1)-A000040(n+1)`
-/

namespace A003068.P14363056664124616754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178907 (n + 1) - A000040 (n + 1)

end

end A003068.P14363056664124616754

/-! ## A003068.P9470728536754271542

`A178907(n+1)-A008578(n+2)`
-/

namespace A003068.P9470728536754271542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178907 (n + 1) - A008578 (n + 2)

end

end A003068.P9470728536754271542

/-! ## A003068.P1388510445508362299

`A178907(n+1)-sqrt(A001248(n+1))`
-/

namespace A003068.P1388510445508362299
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A178907 (n + 1) : ℝ) - Real.sqrt (A001248 (n + 1) : ℝ)

end

end A003068.P1388510445508362299

/-! ## A003068.P2964868209996118876

`A178907(n+1)-p?[A000961(n+1)]`
-/

namespace A003068.P2964868209996118876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178907 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003068.P2964868209996118876

/-! ## A003068.P8029877338503950671

`A178907(n+1)-A100484(n+1)/2`
-/

namespace A003068.P8029877338503950671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178907 (n + 1) : ℚ) - (A100484 (n + 1) : ℚ) / 2

end

end A003068.P8029877338503950671

/-! ## A003068.P949963770405057255

`A178907(n+1)-record[A000010(n+1)+1]`
-/

namespace A003068.P949963770405057255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178907 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003068.P949963770405057255

/-! ## A003068.P31030832533765708

`A178907(n+1)+A007504(n)-A007504(n+1)`
-/

namespace A003068.P31030832533765708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178907 (n + 1) + (A007504 n - A007504 (n + 1))

end

end A003068.P31030832533765708

/-! ## A003068.P13237470644168615761

`A178907(n+1)-A006530(A100484(n+1))`
-/

namespace A003068.P13237470644168615761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178907 (n + 1) - A006530 (A100484 (n + 1)).toNat

end

end A003068.P13237470644168615761

/-! ## A003068.P10317817689290679288

`A178907(n+1)-record[A051698(n)]`
-/

namespace A003068.P10317817689290679288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178907 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003068.P10317817689290679288

/-! ## A003068.P15769799399198951778

`A178907(n+1)-record[A014963(n+2)]`
-/

namespace A003068.P15769799399198951778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178907 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003068.P15769799399198951778

/-! ## A003068.P16731411520184935048

`A178907(n+1)-p?[A296065(n+1)]`
-/

namespace A003068.P16731411520184935048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178907 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003068.P16731411520184935048

/-!
# A003069: Number of n-node digraphs with same converse as complement.

The programs for A003069, there is no canonical definition to state claims against.
-/

/-! ## A003069.P3174805468708325589

`A093049(A005370(n))+A005388(n)`
-/

namespace A003069.P3174805468708325589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093049 (A005370 n).toNat + A005388 n

end

end A003069.P3174805468708325589

/-! ## A003069.P6403325285027514422

`A307240(n)*A337211(A336103(n))`
-/

namespace A003069.P6403325285027514422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307240 n * A337211 (A336103 n).toNat

end

end A003069.P6403325285027514422

/-! ## A003069.P14084585316656137766

`A232626(A104934(n)*A232626(n+4))`
-/

namespace A003069.P14084585316656137766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232626 (A104934 n * A232626 (n + 4)).toNat

end

end A003069.P14084585316656137766

/-!
# A003070: a(n) = ceiling(log_2 n!).

The programs for A003070, the canonical program `A003070.P9410696812712733123` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003070 has offset 0).

The definition of A003070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003070.P10085159303025862240

`ceil(∑[log2(n+1)]-log2(n+1))`
-/

namespace A003070.P10085159303025862240
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j - Real.logb 2 (n + 1 : ℝ)⌉

end

end A003070.P10085159303025862240

namespace A003070

/-- `ceil(∑[log2(n+1)]-log2(n+1))` -/
def P10085159303025862240.Spec : Prop :=
  ∀ n, P10085159303025862240.a n = A003070 n

end A003070

/-! ## A003070.P17165851414049363641

`A072831(n)-A130716(n)`
-/

namespace A003070.P17165851414049363641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072831 n - A130716 n

end

end A003070.P17165851414049363641

namespace A003070

/-- `A072831(n)-A130716(n)` -/
def P17165851414049363641.Spec : Prop :=
  ∀ n, P17165851414049363641.a n = A003070 n

end A003070

/-! ## A003070.P17949396746178528514

`round(A072831(n)-acot(A079584(n)))`
-/

namespace A003070.P17949396746178528514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A072831 n : ℝ) - SequenceMachineLib.acot (A079584 n : ℝ))

end

end A003070.P17949396746178528514

namespace A003070

/-- `round(A072831(n)-acot(A079584(n)))` -/
def P17949396746178528514.Spec : Prop :=
  ∀ n, P17949396746178528514.a n = A003070 n

end A003070

/-! ## A003070.P9410696812712733123

`A072831(n)-round(1/A001399(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A003070

/-- `A072831(n)-round(1/A001399(n))` -/
def P9410696812712733123.Spec : Prop :=
  ∀ n, P9410696812712733123.a n = A003070 n

theorem P9410696812712733123.correct : P9410696812712733123.Spec := by
  intro n
  simp only [A003070]

end A003070

/-! ## A003070.P5816821944994830647

`A072831(n)-A102460(A276375(n+1)+1)`
-/

namespace A003070.P5816821944994830647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072831 n - A102460 (A276375 (n + 1) + 1).toNat

end

end A003070.P5816821944994830647

namespace A003070

/-- `A072831(n)-A102460(A276375(n+1)+1)` -/
def P5816821944994830647.Spec : Prop :=
  ∀ n, P5816821944994830647.a n = A003070 n

end A003070

/-! ## A003070.P7028258585766942190

`A184985(A072831(n))`
-/

namespace A003070.P7028258585766942190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (A072831 n).toNat

end

end A003070.P7028258585766942190

namespace A003070

/-- `A184985(A072831(n))` -/
def P7028258585766942190.Spec : Prop :=
  ∀ n, P7028258585766942190.a n = A003070 n

end A003070

/-! ## A003070.P8263271065042139639

`floor(log2(A020543(n)))`
-/

namespace A003070.P8263271065042139639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A020543 n).toNat

end

end A003070.P8263271065042139639

namespace A003070

/-- `floor(log2(A020543(n)))` -/
def P8263271065042139639.Spec : Prop :=
  ∀ n, (P8263271065042139639.a n : ℤ) = A003070 n

end A003070

/-! ## A003070.P3916265774898307022

`floor(log2(A006932(n+1)))`
-/

namespace A003070.P3916265774898307022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A006932 (n + 1)).toNat

end

end A003070.P3916265774898307022

namespace A003070

/-- `floor(log2(A006932(n+1)))` -/
def P3916265774898307022.Spec : Prop :=
  ∀ n, (P3916265774898307022.a n : ℤ) = A003070 n

end A003070

/-! ## A003070.P5023587409298619818

`floor(log2(A186374(n+1)))`
-/

namespace A003070.P5023587409298619818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A186374 (n + 1)).toNat

end

end A003070.P5023587409298619818

namespace A003070

/-- `floor(log2(A186374(n+1)))` -/
def P5023587409298619818.Spec : Prop :=
  ∀ n, (P5023587409298619818.a n : ℤ) = A003070 n

end A003070

/-!
# A003071: Sorting numbers: maximal number of comparisons for sorting n elements by list merging.

The programs for A003071, the canonical program `A003071.P4419298609567822883` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003071 has offset 1).

The definition of A003071 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003071.P9874035341508474522

`a(n-1)+A061338(n)` with `a(0)=0`
-/

namespace A003071.P9874035341508474522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A061338 n

end

end A003071.P9874035341508474522

namespace A003071

/-- `a(n-1)+A061338(n)` -/
def P9874035341508474522.Spec : Prop :=
  ∀ n, P9874035341508474522.a n = A003071 (n + 1)

end A003071

/-! ## A003071.P4419298609567822883

`a(n-1)+A006519(n)+A000120(n)-1` with `a(0)=0`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A003071

/-- `a(n-1)+A006519(n)+A000120(n)-1` -/
def P4419298609567822883.Spec : Prop :=
  ∀ n, P4419298609567822883.a n = A003071 (n + 1)

theorem P4419298609567822883.correct : P4419298609567822883.Spec := by
  intro n
  simp only [A003071, Nat.add_sub_cancel]

end A003071

/-! ## A003071.P6975021411634171489

`n+A000337(A000523(n))+a(n-2^A000523(n))` with `a(0)=0`
-/

namespace A003071.P6975021411634171489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) + A000337 (A000523 n).toNat + a (SequenceMachineLib.roundAway ((n : ℚ) - (2 : ℚ) ^ (A000523 n : ℤ))).toNat

end

end A003071.P6975021411634171489

namespace A003071

/-- `n+A000337(A000523(n))+a(n-2^A000523(n))` -/
def P6975021411634171489.Spec : Prop :=
  ∀ n, P6975021411634171489.a n = A003071 (n + 1)

end A003071

/-! ## A003071.P7048070883064924462

`∑[A061338(n)]`
-/

namespace A003071.P7048070883064924462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061338 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003071.P7048070883064924462

namespace A003071

/-- `∑[A061338(n)]` -/
def P7048070883064924462.Spec : Prop :=
  ∀ n, P7048070883064924462.a n = A003071 (n + 1)

end A003071

/-! ## A003071.P8239391372373720621

`A396769(n+1)-n`
-/

namespace A003071.P8239391372373720621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396769 (n + 1) - (n : ℤ)

end

end A003071.P8239391372373720621

namespace A003071

/-- `A396769(n+1)-n` -/
def P8239391372373720621.Spec : Prop :=
  ∀ n, P8239391372373720621.a n = A003071 (n + 1)

theorem P8239391372373720621.correct : P8239391372373720621.Spec := by
  intro n
  simp only [A003071, Nat.add_sub_cancel, A003071.P8239391372373720621.a, A003071.P4419298609567822883.a, A000120, A000120.P2816527436160941581.a, A006519, A006519.P10435570611646570274.a, A396769, A396769.P5317963927150121089.a, A005187, A005187.P3874015513960485494.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003071

/-! ## A003071.P3476642101175610176

`∑[A000120(n)]+∑[and(n, -n)]-n`
-/

namespace A003071.P3476642101175610176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ))

end

end A003071.P3476642101175610176

namespace A003071

/-- `∑[A000120(n)]+∑[and(n, -n)]-n` -/
def P3476642101175610176.Spec : Prop :=
  ∀ n, P3476642101175610176.a n = A003071 (n + 1)

end A003071

/-! ## A003071.P1282821111722155618

`∑[A089265(A233775(n))]`
-/

namespace A003071.P1282821111722155618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089265 (A233775 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003071.P1282821111722155618

namespace A003071

/-- `∑[A089265(A233775(n))]` -/
def P1282821111722155618.Spec : Prop :=
  ∀ n, P1282821111722155618.a n = A003071 (n + 1)

end A003071

/-! ## A003071.P14510480638432772439

`A136013(n)+A000788(n)`
-/

namespace A003071.P14510480638432772439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136013 n + A000788 n

end

end A003071.P14510480638432772439

namespace A003071

/-- `A136013(n)+A000788(n)` -/
def P14510480638432772439.Spec : Prop :=
  ∀ n, P14510480638432772439.a n = A003071 (n + 1)

end A003071

/-! ## A003071.P4684526644715317688

`A298011(n)+A187059(n)`
-/

namespace A003071.P4684526644715317688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298011 n + A187059 n

end

end A003071.P4684526644715317688

namespace A003071

/-- `A298011(n)+A187059(n)` -/
def P4684526644715317688.Spec : Prop :=
  ∀ n, P4684526644715317688.a n = A003071 (n + 1)

end A003071

/-! ## A003071.P9362346386488749314

`∑[or(n, A153151(n))-A011371(n)]`
-/

namespace A003071.P9362346386488749314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A153151 n) - A011371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003071.P9362346386488749314

namespace A003071

/-- `∑[or(n, A153151(n))-A011371(n)]` -/
def P9362346386488749314.Spec : Prop :=
  ∀ n, P9362346386488749314.a n = A003071 (n + 1)

end A003071

/-! ## A003071.P863200164008186342

`∪[A230720(n+1), A230721(n+1)]`
-/

namespace A003071.P863200164008186342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003071.P863200164008186342

namespace A003071

/-- `∪[A230720(n+1), A230721(n+1)]` -/
def P863200164008186342.Spec : Prop :=
  ∀ n, (P863200164008186342.a n : ℤ) = A003071 (n + 1)

end A003071

/-! ## A003071.P4639744788549569640

`A000788(2*n)-A298043(n)`
-/

namespace A003071.P4639744788549569640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 (2 * n) - A298043 n

end

end A003071.P4639744788549569640

namespace A003071

/-- `A000788(2*n)-A298043(n)` -/
def P4639744788549569640.Spec : Prop :=
  ∀ n, P4639744788549569640.a n = A003071 (n + 1)

end A003071

/-!
# A003072: Numbers that are the sum of 3 positive cubes.

The programs for A003072, there is no canonical definition to state claims against.
-/

/-! ## A003072.P11335571702024735342

`∪[A008917(n+1), A025395(n+1)]`
-/

namespace A003072.P11335571702024735342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003072.P11335571702024735342

/-! ## A003072.P5078578252205051756

`∪[A024975(n+1), A219726(n+1)]`
-/

namespace A003072.P5078578252205051756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003072.P5078578252205051756

/-! ## A003072.P16799206683725507568

`record[A024981(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A003072.P16799206683725507568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024981 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003072.P16799206683725507568

/-! ## A003072.P17756128373125356159

`record[A024981(A331742(n))]`
-/

namespace A003072.P17756128373125356159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024981 (A331742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003072.P17756128373125356159

/-! ## A003072.P8458090220684432953

`record[A024981(A319345(n+1))]`
-/

namespace A003072.P8458090220684432953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024981 (A319345 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003072.P8458090220684432953

/-! ## A003072.P13771873507413462236

`record[A024981(n+1)%A024981(n+2)]`
-/

namespace A003072.P13771873507413462236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024981 (n + 1)) (A024981 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003072.P13771873507413462236

/-! ## A003072.P13145710810879987390

`record[A024981(A008619(n)+A000120(n))]`
-/

namespace A003072.P13145710810879987390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024981 (A008619 n + A000120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003072.P13145710810879987390

/-! ## A003072.P12354086897143776472

`record[A024981(A003602(n+1))]`
-/

namespace A003072.P12354086897143776472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024981 (A003602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003072.P12354086897143776472

/-! ## A003072.P1302576803636299875

`record[A024981(gcd(n+1, A008619(n)))]`
-/

namespace A003072.P1302576803636299875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024981 (Int.gcd (n + 1 : ℤ) (A008619 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003072.P1302576803636299875

/-! ## A003072.P5985653548869933936

`record[A024981(gcd(n, A298024(n)))]`
-/

namespace A003072.P5985653548869933936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024981 (Int.gcd (n : ℤ) (A298024 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003072.P5985653548869933936

/-! ## A003072.P8551195329537834094

`record[A024981(A060715(n+1)+1)]`
-/

namespace A003072.P8551195329537834094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024981 (A060715 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003072.P8551195329537834094

/-! ## A003072.P16568660733286131590

`record[A024981(A060715(n+2))]`
-/

namespace A003072.P16568660733286131590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024981 (A060715 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003072.P16568660733286131590

/-! ## A003072.P16262878158420612321

`lt[0, A025456(n)]`
-/

namespace A003072.P16262878158420612321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003072.P16262878158420612321

/-! ## A003072.P3896189550691174006

`lt[0, A051344(n)]`
-/

namespace A003072.P3896189550691174006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051344 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003072.P3896189550691174006

/-! ## A003072.P3117160181169634529

`lt[A025446(n), A025447(n)]`
-/

namespace A003072.P3117160181169634529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025446 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025447 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A003072.P3117160181169634529

/-! ## A003072.P5536608419010773283

`eq[A000038(n)², A000038(A051344(n))]`
-/

namespace A003072.P5536608419010773283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A051344 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003072.P5536608419010773283

/-! ## A003072.P3493048174360890869

`eq[2*A000007(n), A000007(A051344(n))]`
-/

namespace A003072.P3493048174360890869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A051344 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003072.P3493048174360890869

/-! ## A003072.P8304211012925504913

`record[A024981(A056239(n+1)+1)]`
-/

namespace A003072.P8304211012925504913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024981 (A056239 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003072.P8304211012925504913

/-! ## A003072.P13982255374562595796

`record[A024981(A056239(n+2))]`
-/

namespace A003072.P13982255374562595796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024981 (A056239 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003072.P13982255374562595796

/-! ## A003072.P13906614454464892023

`A336725(∑[n+3]+1)`
-/

namespace A003072.P13906614454464892023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A003072.P13906614454464892023

/-!
# A003073: A nonlinear recurrence.

The programs for A003073, there is no canonical definition to state claims against.
-/

/-! ## A003073.P6691350910999644039

`A123946(n)-A044941(A002531(n))`
-/

namespace A003073.P6691350910999644039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123946 n - A044941 (A002531 n).toNat

end

end A003073.P6691350910999644039

/-! ## A003073.P9951754904384169326

`A123946(n)+A062157(A184955(n))`
-/

namespace A003073.P9951754904384169326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123946 n + A062157 (A184955 n).toNat

end

end A003073.P9951754904384169326

/-! ## A003073.P11322767248800157894

`A085761(A172173(n+1))`
-/

namespace A003073.P11322767248800157894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085761 (A172173 (n + 1)).toNat

end

end A003073.P11322767248800157894

/-! ## A003073.P7431137137884313833

`A110656(A305194(3*n+5)+∑[∑{e}[n+1, #]+1])`
-/

namespace A003073.P7431137137884313833
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A305194 (3 * n + 5) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A003073.P7431137137884313833

/-! ## A003073.P17342006059056174385

`A123946(n)-A185284(A032865(n+1))`
-/

namespace A003073.P17342006059056174385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123946 n - A185284 (A032865 (n + 1)).toNat

end

end A003073.P17342006059056174385

/-!
# A003074: Number of different numbers <= n that are sums of 3 positive cubes.

The programs for A003074, there is no canonical definition to state claims against.
-/

/-! ## A003074.P3651703775998043257

`∑[char[A003072(n+1)-1]]`
-/

namespace A003074.P3651703775998043257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003074.P3651703775998043257

/-! ## A003074.P13145804807161708823

`∑[char[A024981(n+1)-1]]`
-/

namespace A003074.P13145804807161708823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024981 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003074.P13145804807161708823

/-! ## A003074.P5314662320874082908

`a(A025456(n+1)+1)+a(n-1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A003074.P5314662320874082908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (A025456 (n + 1) + 1).toNat + a (n - 1)

end

end A003074.P5314662320874082908

/-! ## A003074.P14323059439697463048

`∑[A057427(A051344(n+1))]`
-/

namespace A003074.P14323059439697463048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A051344 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003074.P14323059439697463048

/-! ## A003074.P14987783935088352781

`∑[A168046(A051344(-xor(n, -1)))]`
-/

namespace A003074.P14987783935088352781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 (A051344 (-Int.xor (n : ℤ) (-1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003074.P14987783935088352781

/-! ## A003074.P10676884083240393981

`∑[A025456(A004736(∑[n+2]+4))]`
-/

namespace A003074.P10676884083240393981
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 (A004736 (∑ j ∈ Finset.range (n + 1), f2 j + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003074.P10676884083240393981

/-! ## A003074.P4928795981389570570

`A001222(∏[A025456(n+1)+1])`
-/

namespace A003074.P4928795981389570570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003074.P4928795981389570570

/-!
# A003075: Minimal number of comparisons needed for n-element sorting network.

The programs for A003075, there is no canonical definition to state claims against.
-/

/-! ## A003075.P4729205772574967486

`A308767(n)+∑[ceil(log2(n+1))]`
-/

namespace A003075.P4729205772574967486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308767 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003075.P4729205772574967486

/-! ## A003075.P1107666708760746145

`∑[A087808(or(2, n)%(n^n+1))]`
-/

namespace A003075.P1107666708760746145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (Nat.lor 2 n % (n ^ n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003075.P1107666708760746145

/-! ## A003075.P8766979925002595031

`∑[gcd(2, ∏{p}[n, #])*A071330(n+1)]`
-/

namespace A003075.P8766979925002595031
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℤ) * A071330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003075.P8766979925002595031

/-! ## A003075.P13640536994764524646

`∑[floor(A365209(3*n+4)/10)]+n`
-/

namespace A003075.P13640536994764524646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A365209 (3 * n + 4) : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A003075.P13640536994764524646

/-! ## A003075.P13911921417584005296

`∑[A284316(2*(n+1))+ceil(log2(n+1))]`
-/

namespace A003075.P13911921417584005296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284316 (2 * (n + 1)) + ⌈Real.logb 2 (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003075.P13911921417584005296

/-!
# A003076: n-th digit after decimal point of square root of n.

The programs for A003076, the canonical program `A003076.P10377168025556263812` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003076 has offset 0).

The definition of A003076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003076.P11715339970044774308

`A060563(round(sqrt(n²+1)))%10`
-/

namespace A003076.P11715339970044774308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060563 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) 10

end

end A003076.P11715339970044774308

namespace A003076

/-- `A060563(round(sqrt(n²+1)))%10` -/
def P11715339970044774308.Spec : Prop :=
  ∀ n, P11715339970044774308.a n = A003076 n

end A003076

/-! ## A003076.P10377168025556263812

`floor(sqrt(n)*10^n)%10`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003076

/-- `floor(sqrt(n)*10^n)%10` -/
def P10377168025556263812.Spec : Prop :=
  ∀ n, P10377168025556263812.a n = A003076 n

theorem P10377168025556263812.correct : P10377168025556263812.Spec := by
  intro n
  simp only [A003076]

end A003076

/-! ## A003076.P16215326352820988507

`A073027(2*n²+A000038(n))`
-/

namespace A003076.P16215326352820988507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073027 ((2 * n ^ 2 : ℤ) + A000038 n).toNat

end

end A003076.P16215326352820988507

namespace A003076

/-- `A073027(2*n²+A000038(n))` -/
def P16215326352820988507.Spec : Prop :=
  ∀ n, P16215326352820988507.a n = A003076 n

end A003076

/-! ## A003076.P3662184383689161919

`A245970(lt[A255852(2*n), A255863(n)])`
-/

namespace A003076.P3662184383689161919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255852 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245970 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A003076.P3662184383689161919

namespace A003076

/-- `A245970(lt[A255852(2*n), A255863(n)])` -/
def P3662184383689161919.Spec : Prop :=
  ∀ n, P3662184383689161919.a n = A003076 n

end A003076

/-!
# A003078: Number of letters in n (in Danish).

The programs for A003078, there is no canonical definition to state claims against.
-/

/-! ## A003078.P18198804367488590705

`A014656(∑[6^A034450(n+1)])`
-/

namespace A003078.P18198804367488590705
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A034450 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014656 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A003078.P18198804367488590705

/-!
# A003079: One of the basic cycles in the x->3x-1 (x odd) or x/2 (x even) problem.

The programs for A003079, the canonical program `A003079.P675230764117497561` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003079 has offset 0).

The definition of A003079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003079.P675230764117497561

`a(n-5)` with `a(0)=5, a(1)=14, a(2)=7, a(3)=20, a(4)=10`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003079

/-- `a(n-5)` -/
def P675230764117497561.Spec : Prop :=
  ∀ n, (P675230764117497561.a n : ℤ) = A003079 n

theorem P675230764117497561.correct : P675230764117497561.Spec := by
  intro n
  simp only [A003079]

end A003079

/-!
# A003080: Number of rooted triangular cacti with 2n+1 nodes (n triangles).

The programs for A003080, there is no canonical definition to state claims against.
-/

/-! ## A003080.P8372526763820805425

`A332648(∑[n+3])`
-/

namespace A003080.P8372526763820805425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332648 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003080.P8372526763820805425

/-! ## A003080.P15759927713290204744

`or(char[3], A332648(A027379(n+1)))`
-/

namespace A003080.P15759927713290204744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A332648 (A027379 (n + 1)).toNat)

end

end A003080.P15759927713290204744

/-! ## A003080.P9997639236188771221

`A332648(A141214(n))%A211734(A020705(n))`
-/

namespace A003080.P9997639236188771221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332648 (A141214 n).toNat) (A211734 (A020705 n).toNat)

end

end A003080.P9997639236188771221

/-! ## A003080.P10999509106071608964

`A332648(A141214(n))+A000038(A002383(n+1))`
-/

namespace A003080.P10999509106071608964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332648 (A141214 n).toNat + A000038 (A002383 (n + 1)).toNat

end

end A003080.P10999509106071608964

/-! ## A003080.P6142414528215192687

`A344976(A016116(n))+A332648(A141214(n))`
-/

namespace A003080.P6142414528215192687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344976 (A016116 n).toNat + A332648 (A141214 n).toNat

end

end A003080.P6142414528215192687

/-!
# A003081: Number of triangular cacti with 2n+1 nodes (n triangles).

The programs for A003081, there is no canonical definition to state claims against.
-/

/-! ## A003081.P2706488143544030487

`A332649(∑[n+3])`
-/

namespace A003081.P2706488143544030487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332649 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003081.P2706488143544030487

/-! ## A003081.P6366930684091818487

`A332649(A027379(n+1))+A025444(n)`
-/

namespace A003081.P6366930684091818487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332649 (A027379 (n + 1)).toNat + A025444 n

end

end A003081.P6366930684091818487

/-! ## A003081.P5867928823206662129

`or(A000007(n), A332649(A027379(n+1)))`
-/

namespace A003081.P5867928823206662129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A332649 (A027379 (n + 1)).toNat)

end

end A003081.P5867928823206662129

/-! ## A003081.P10128295106619076116

`A332649(A027379(n+1))%A000108(n+2)`
-/

namespace A003081.P10128295106619076116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332649 (A027379 (n + 1)).toNat) (A000108 (n + 2))

end

end A003081.P10128295106619076116

/-! ## A003081.P14429146987259054818

`A007318(A000217(n))*A332649(A027379(n+1))`
-/

namespace A003081.P14429146987259054818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A332649 (A027379 (n + 1)).toNat

end

end A003081.P14429146987259054818

/-!
# A003082: Number of multigraphs with 4 nodes and n edges.

The programs for A003082, the canonical program `A003082.P8532452631219291351` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003082 has offset 0).

The definition of A003082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1098 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003082.P8532452631219291351

`A090491(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A003082

/-- `A090491(n)+a(n-3)` -/
def P8532452631219291351.Spec : Prop :=
  ∀ n, P8532452631219291351.a n = A003082 n

theorem P8532452631219291351.correct : P8532452631219291351.Spec := by
  intro n
  simp only [A003082]

end A003082

/-! ## A003082.P5729039191338551657

`A173196(A110654(n))+A054473(n)`
-/

namespace A003082.P5729039191338551657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (A110654 n).toNat + A054473 n

end

end A003082.P5729039191338551657

namespace A003082

/-- `A173196(A110654(n))+A054473(n)` -/
def P5729039191338551657.Spec : Prop :=
  ∀ n, P5729039191338551657.a n = A003082 n

theorem P5729039191338551657.correct : P5729039191338551657.Spec := by
  intro n
  simp only [A003082, Nat.add_sub_cancel, A003082.P5729039191338551657.a, A003082.P8532452631219291351.a, A054473, A054473.P5529264726719540084.a, A090491, A090491.P1940977484404229344.f1, A090491.P1940977484404229344.a, A110654, A110654.P360289776162656549.a, A173196, A173196.P2423826778333667374.a, A026810, A026810.P8500249767737753929.a, A052282, A052282.P8537123680179149703.f1, A052282.P8537123680179149703.a, A008627, A008627.P17336718027921360282.f2, A008627.P17336718027921360282.f1, A008627.P17336718027921360282.a, A052938, A052938.P15385682642359846143.a, A058212, A058212.P4769622711738520392.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003082

/-! ## A003082.P8942563851139833961

`A328652(A028310(n))+A001399(n)`
-/

namespace A003082.P8942563851139833961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328652 (A028310 n).toNat + A001399 n

end

end A003082.P8942563851139833961

namespace A003082

/-- `A328652(A028310(n))+A001399(n)` -/
def P8942563851139833961.Spec : Prop :=
  ∀ n, P8942563851139833961.a n = A003082 n

end A003082

/-! ## A003082.P17541793738610999036

`A328652(A028310(n))+∑[A103221(n)]`
-/

namespace A003082.P17541793738610999036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328652 (A028310 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003082.P17541793738610999036

namespace A003082

/-- `A328652(A028310(n))+∑[A103221(n)]` -/
def P17541793738610999036.Spec : Prop :=
  ∀ n, P17541793738610999036.a n = A003082 n

end A003082

/-! ## A003082.P14587676188106128550

`A328652(A028310(n))+A266755(2*n)`
-/

namespace A003082.P14587676188106128550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328652 (A028310 n).toNat + A266755 (2 * n)

end

end A003082.P14587676188106128550

namespace A003082

/-- `A328652(A028310(n))+A266755(2*n)` -/
def P14587676188106128550.Spec : Prop :=
  ∀ n, P14587676188106128550.a n = A003082 n

end A003082

/-! ## A003082.P8415450376847228177

`A328652(A007318(A000124(n)))+A001399(n)`
-/

namespace A003082.P8415450376847228177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328652 (A007318 (A000124 n).toNat).toNat + A001399 n

end

end A003082.P8415450376847228177

namespace A003082

/-- `A328652(A007318(A000124(n)))+A001399(n)` -/
def P8415450376847228177.Spec : Prop :=
  ∀ n, P8415450376847228177.a n = A003082 n

end A003082

/-!
# A003083: Sum a(n) x^n / n = log (1 + Sum g(n) x^n ), where g(n) is # graphs on n nodes (A000088).

The programs for A003083, there is no canonical definition to state claims against.
-/

/-! ## A003083.P1422022863868937018

`A349953(a(n-1)²+3)` with `a(0)=1`
-/

namespace A003083.P1422022863868937018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A349953 (a (n - 1) ^ 2 + 3).toNat

end

end A003083.P1422022863868937018

/-!
# A003085: Number of weakly connected digraphs with n unlabeled nodes.

The programs for A003085, there is no canonical definition to state claims against.
-/

/-! ## A003085.P4258336615835989694

`A127910(n)+A116950(n)`
-/

namespace A003085.P4258336615835989694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127910 n + A116950 n

end

end A003085.P4258336615835989694

/-! ## A003085.P10533105210881990701

`A056988(n+1)+A035512(n+1)`
-/

namespace A003085.P10533105210881990701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056988 (n + 1) + A035512 (n + 1)

end

end A003085.P10533105210881990701

/-! ## A003085.P4239025478539746061

`A054918(n+1)+A054590(n+1)`
-/

namespace A003085.P4239025478539746061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054918 (n + 1) + A054590 (n + 1)

end

end A003085.P4239025478539746061

/-! ## A003085.P13425211328589019923

`A055969(n+1)+A054932(n+1)`
-/

namespace A003085.P13425211328589019923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055969 (n + 1) + A054932 (n + 1)

end

end A003085.P13425211328589019923

/-! ## A003085.P15487024068469038099

`A000273(n+1)-A054590(n+1)`
-/

namespace A003085.P15487024068469038099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000273 (n + 1) - A054590 (n + 1)

end

end A003085.P15487024068469038099

/-!
# A003086: Number of self-complementary digraphs with n nodes.

The programs for A003086, there is no canonical definition to state claims against.
-/

/-! ## A003086.P12570494636093448982

`A054928(n+1)-A055969(n+1)`
-/

namespace A003086.P12570494636093448982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054928 (n + 1) - A055969 (n + 1)

end

end A003086.P12570494636093448982

/-! ## A003086.P1705683393769963012

`Δ[A173313(n)]-2*A055969(n+1)`
-/

namespace A003086.P1705683393769963012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A055969 (n + 1)

end

end A003086.P1705683393769963012

/-! ## A003086.P4507086258917008574

`2*A054932(n+1)-A054918(n+1)`
-/

namespace A003086.P4507086258917008574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054932 (n + 1) - A054918 (n + 1)

end

end A003086.P4507086258917008574

/-! ## A003086.P9430646540976995142

`A054928(n+1)+A054932(n+1)-A003085(n+1)`
-/

namespace A003086.P9430646540976995142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054928 (n + 1) + (A054932 (n + 1) - A003085 (n + 1))

end

end A003086.P9430646540976995142

/-! ## A003086.P3014853838596305712

`A054590(n+1)+A054932(n+1)-A055969(n+1)`
-/

namespace A003086.P3014853838596305712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054590 (n + 1) + (A054932 (n + 1) - A055969 (n + 1))

end

end A003086.P3014853838596305712

/-!
# A003087: Number of acyclic digraphs with n unlabeled nodes.

The programs for A003087, there is no canonical definition to state claims against.
-/

/-! ## A003087.P12514625911906958048

`∑[A361589(n)]`
-/

namespace A003087.P12514625911906958048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361589 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003087.P12514625911906958048

/-! ## A003087.P566830690776872495

`A361582(∑[n]+n)`
-/

namespace A003087.P566830690776872495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361582 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A003087.P566830690776872495

/-! ## A003087.P4989955009362277609

`A361590(∑[n]+n)`
-/

namespace A003087.P4989955009362277609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361590 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A003087.P4989955009362277609

/-! ## A003087.P4021567908861775233

`∑[A361588(∑[n]+n)]`
-/

namespace A003087.P4021567908861775233
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361588 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003087.P4021567908861775233

/-! ## A003087.P14670313713136015912

`gcd(floor(1/(n+1)), A361582(A000096(n)))`
-/

namespace A003087.P14670313713136015912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A361582 (A000096 n).toNat)

end

end A003087.P14670313713136015912

/-!
# A003088: Number of unilateral digraphs with n unlabeled nodes.

The programs for A003088, there is no canonical definition to state claims against.
-/

/-! ## A003088.P16887528674973656174

`A368415(floor(exp(n)))`
-/

namespace A003088.P16887528674973656174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368415 ⌊Real.exp (n : ℝ)⌋.toNat

end

end A003088.P16887528674973656174

/-!
# A003089: Number of connected line graphs with n nodes.

The programs for A003089, there is no canonical definition to state claims against.
-/

/-! ## A003089.P2724144999878738323

`A002905(n+1)-char[2]`
-/

namespace A003089.P2724144999878738323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002905 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A003089.P2724144999878738323

/-! ## A003089.P5579233242091551969

`A275421(∑[n]+1)-char[2]`
-/

namespace A003089.P5579233242091551969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275421 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A003089.P5579233242091551969

/-! ## A003089.P14205408806826577103

`xor(char[A220896(3*n)], A002905(n+1))`
-/

namespace A003089.P14205408806826577103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220896 (3 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A002905 (n + 1))

end

end A003089.P14205408806826577103

/-! ## A003089.P15021012744651659409

`xor(char[A089080(2*(n+1))], A002905(n+1))`
-/

namespace A003089.P15021012744651659409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A002905 (n + 1))

end

end A003089.P15021012744651659409

/-! ## A003089.P13822247571305459364

`A121373(A014574(n+1))+A002905(n+1)`
-/

namespace A003089.P13822247571305459364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A014574 (n + 1)).toNat + A002905 (n + 1)

end

end A003089.P13822247571305459364

/-!
# A003090: Number of species (or "main classes" or "paratopy classes") of Latin squares of order n.

The programs for A003090, there is no canonical definition to state claims against.
-/

/-! ## A003090.P1785103437546948264

`A393633(∑[n+1])`
-/

namespace A003090.P1785103437546948264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393633 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003090.P1785103437546948264

/-! ## A003090.P17051289008705915747

`A132313(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2`
-/

namespace A003090.P17051289008705915747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 2] fun n a =>
  A132313 (a (n - 1)).toNat

end

end A003090.P17051289008705915747

/-! ## A003090.P8926285221789264403

`A055527((a(n-1)+a(n-2))²)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2`
-/

namespace A003090.P8926285221789264403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 2] fun n a =>
  A055527 ((a (n - 1) + a (n - 2)) ^ 2).toNat

end

end A003090.P8926285221789264403

/-!
# A003091: a(n) = floor( 2^(n*(n-1)/2) / n! ).

The programs for A003091, the canonical program `A003091.P16923648346499775415` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003091 has offset 1).

The definition of A003091 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003091.P16923648346499775415

`floor(2^C(n+1, 2)/(n+1)!)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003091

/-- `floor(2^C(n+1, 2)/(n+1)!)` -/
def P16923648346499775415.Spec : Prop :=
  ∀ n, P16923648346499775415.a n = A003091 (n + 1)

theorem P16923648346499775415.correct : P16923648346499775415.Spec := by
  intro n
  simp only [A003091, Nat.add_sub_cancel]

end A003091

/-! ## A003091.P16195989747479473043

`floor(2^((n+1)*n/2)/(n+1)!)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A003091.P16195989747479473043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℝ) ^ (((n + 1) * n : ℚ) / 2 : ℝ) / (Nat.factorial (n + 1) : ℝ)⌋

end

end A003091.P16195989747479473043

namespace A003091

/-- `floor(2^((n+1)*n/2)/(n+1)!)` -/
def P16195989747479473043.Spec : Prop :=
  ∀ n, P16195989747479473043.a n = A003091 (n + 1)

end A003091

/-! ## A003091.P15171701370900971887

`floor(∏[2^n/(n+1)])`
-/

namespace A003091.P15171701370900971887
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A003091.P15171701370900971887

namespace A003091

/-- `floor(∏[2^n/(n+1)])` -/
def P15171701370900971887.Spec : Prop :=
  ∀ n, P15171701370900971887.a n = A003091 (n + 1)

end A003091

/-!
# A003092: Number of labeled plane 2-trees with n nodes.

The programs for A003092, there is no canonical definition to state claims against.
-/

/-! ## A003092.P2736435643729720370

`(2*a(n-2)+1)!*∑[n]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A003092.P2736435643729720370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  Nat.factorial (2 * a (n - 2) + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003092.P2736435643729720370

/-!
# A003093: Number of planar 2-trees with n nodes.

The programs for A003093, there is no canonical definition to state claims against.
-/

/-! ## A003093.P4256022261344536420

`A194204(A361375(n))+1`
-/

namespace A003093.P4256022261344536420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194204 (A361375 n).toNat + 1

end

end A003093.P4256022261344536420

/-!
# A003094: Number of unlabeled connected planar simple graphs with n nodes.

The programs for A003094, there is no canonical definition to state claims against.
-/

/-! ## A003094.P2380771748514835131

`A001349(n)-A145270(n)`
-/

namespace A003094.P2380771748514835131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 n - A145270 n

end

end A003094.P2380771748514835131

/-! ## A003094.P15732031014085881417

`A304311(∑[n])-A145270(n)`
-/

namespace A003094.P15732031014085881417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304311 (∑ j ∈ Finset.range (n + 1), f1 j) - A145270 n

end

end A003094.P15732031014085881417

/-! ## A003094.P413269622256327910

`A201922(C(n, 2)+1)-A145270(n)`
-/

namespace A003094.P413269622256327910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (Nat.choose n 2 + 1) - A145270 n

end

end A003094.P413269622256327910

/-! ## A003094.P2721165541698313892

`A201922(∑[abs(1-n)])-A145270(n)`
-/

namespace A003094.P2721165541698313892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A145270 n

end

end A003094.P2721165541698313892

/-! ## A003094.P5028343815183666248

`A005142(n)+A157051(n)-A145270(n)`
-/

namespace A003094.P5028343815183666248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005142 n + (A157051 n - A145270 n)

end

end A003094.P5028343815183666248

/-!
# A003095: a(n) = a(n-1)^2 + 1 for n >= 1, with a(0) = 0.

The programs for A003095, the canonical program `A003095.P6762538100364105393` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003095 has offset 0).

The definition of A003095 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²+1` (program `A003095.P6762538100364105393`, by `A003095.P6762538100364105393.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003095.P6243987113948554481

`1+a(n-1)²` with `a(0)=0`
-/

namespace A003095.P6243987113948554481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (n - 1) ^ 2

end

end A003095.P6243987113948554481

namespace A003095

/-- `1+a(n-1)²` -/
def P6243987113948554481.Spec : Prop :=
  ∀ n, (P6243987113948554481.a n : ℤ) = A003095 n

theorem P6243987113948554481.correct : P6243987113948554481.Spec := by
  intro n
  simp only [A003095, Nat.add_sub_cancel, A003095.P6243987113948554481.a, A003095.P6762538100364105393.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A003095

/-! ## A003095.P6762538100364105393

`a(n-1)²+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003095

/-- `a(n-1)²+1` -/
def P6762538100364105393.Spec : Prop :=
  ∀ n, (P6762538100364105393.a n : ℤ) = A003095 n

theorem P6762538100364105393.correct : P6762538100364105393.Spec := by
  intro n
  simp only [A003095]

end A003095

/-! ## A003095.P17306705901736950833

`1+a(n-1)^2` with `a(0)=0`
-/

namespace A003095.P17306705901736950833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (n - 1) ^ 2

end

end A003095.P17306705901736950833

namespace A003095

/-- `1+a(n-1)^2` -/
def P17306705901736950833.Spec : Prop :=
  ∀ n, (P17306705901736950833.a n : ℤ) = A003095 n

theorem P17306705901736950833.correct : P17306705901736950833.Spec := by
  intro n
  simp only [A003095, Nat.add_sub_cancel, A003095.P17306705901736950833.a, A003095.P6762538100364105393.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A003095

/-! ## A003095.P9074176819725244231

`or(2, a(n-1)²)-1` with `a(0)=0`
-/

namespace A003095.P9074176819725244231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor 2 (a (n - 1) ^ 2) - 1

end

end A003095.P9074176819725244231

namespace A003095

/-- `or(2, a(n-1)²)-1` -/
def P9074176819725244231.Spec : Prop :=
  ∀ n, P9074176819725244231.a n = A003095 n

end A003095

/-! ## A003095.P11946441035161226113

`xor(2, a(n-1)²)-1` with `a(0)=0`
-/

namespace A003095.P11946441035161226113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor 2 (a (n - 1) ^ 2) - 1

end

end A003095.P11946441035161226113

namespace A003095

/-- `xor(2, a(n-1)²)-1` -/
def P11946441035161226113.Spec : Prop :=
  ∀ n, P11946441035161226113.a n = A003095 n

end A003095

/-!
# A003096: a(n) = a(n-1)^2 - 1, a(0) = 2.

The programs for A003096, the canonical program `A003096.P6639200725068343033` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003096 has offset 0).

The definition of A003096 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-1` (program `A003096.P6639200725068343033`, by `A003096.P6639200725068343033.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003096.P6639200725068343033

`a(n-1)²-1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003096

/-- `a(n-1)²-1` -/
def P6639200725068343033.Spec : Prop :=
  ∀ n, P6639200725068343033.a n = A003096 n

theorem P6639200725068343033.correct : P6639200725068343033.Spec := by
  intro n
  simp only [A003096]

end A003096

/-! ## A003096.P9042934623107288418

`a(n-1)^2-1` with `a(0)=2`
-/

namespace A003096.P9042934623107288418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) ^ 2 - 1

end

end A003096.P9042934623107288418

namespace A003096

/-- `a(n-1)^2-1` -/
def P9042934623107288418.Spec : Prop :=
  ∀ n, P9042934623107288418.a n = A003096 n

theorem P9042934623107288418.correct : P9042934623107288418.Spec := by
  intro n
  simp only [A003096, Nat.add_sub_cancel, A003096.P9042934623107288418.a, A003096.P6639200725068343033.a, SequenceMachineLib.memo_apply]

end A003096

/-! ## A003096.P17509413977380444680

`root(a(n-1), 1/2)-1` with `a(0)=2`
-/

namespace A003096.P17509413977380444680
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) ^ (1 / ((1 : ℚ) / 2 : ℝ)) - 1

end

end A003096.P17509413977380444680

namespace A003096

/-- `root(a(n-1), 1/2)-1` -/
def P17509413977380444680.Spec : Prop :=
  ∀ n, P17509413977380444680.a n = (A003096 n : ℝ)

end A003096

/-! ## A003096.P13035824547672359293

`a(n-1)*a(n-1)-1` with `a(0)=2`
-/

namespace A003096.P13035824547672359293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * a (n - 1) - 1

end

end A003096.P13035824547672359293

namespace A003096

/-- `a(n-1)*a(n-1)-1` -/
def P13035824547672359293.Spec : Prop :=
  ∀ n, P13035824547672359293.a n = A003096 n

theorem P13035824547672359293.correct : P13035824547672359293.Spec := by
  intro n
  simp only [A003096, Nat.add_sub_cancel, A003096.P13035824547672359293.a, A003096.P6639200725068343033.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A003096

/-! ## A003096.P18016215067910400299

`a(n-1)/(floor(1/a(n-1))+1/a(n-1))-1` with `a(0)=2`
-/

namespace A003096.P18016215067910400299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) / ((⌊1 / a (n - 1)⌋ : ℚ) + 1 / a (n - 1)) - 1

end

end A003096.P18016215067910400299

namespace A003096

/-- `a(n-1)/(floor(1/a(n-1))+1/a(n-1))-1` -/
def P18016215067910400299.Spec : Prop :=
  ∀ n, P18016215067910400299.a n = (A003096 n : ℚ)

end A003096

/-!
# A003097: Critical connected topologies with n points.

The programs for A003097, there is no canonical definition to state claims against.
-/

/-! ## A003097.P7297610147911095802

`A383712(A135035(n))`
-/

namespace A003097.P7297610147911095802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383712 (A135035 n).toNat

end

end A003097.P7297610147911095802

/-! ## A003097.P3034998805695283683

`Δ[A130446(A335456(n))]`
-/

namespace A003097.P3034998805695283683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A335456 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003097.P3034998805695283683

/-!
# A003098: Palindromic triangular numbers.

The programs for A003098, there is no canonical definition to state claims against.
-/

/-! ## A003098.P476780458320850527

`A002113(A101034(n+1)+1)`
-/

namespace A003098.P476780458320850527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A101034 (n + 1) + 1).toNat

end

end A003098.P476780458320850527

/-! ## A003098.P9381465729905759531

`∩[A002113(n+1), A000217(n)]`
-/

namespace A003098.P9381465729905759531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003098.P9381465729905759531

/-! ## A003098.P13984711901499853278

`∩[A002113(n+1), A061455(n+1)]`
-/

namespace A003098.P13984711901499853278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003098.P13984711901499853278

/-! ## A003098.P1666439728802103485

`A004158(eq[C(n+1, 2), A004158(n)])`
-/

namespace A003098.P1666439728802103485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004158 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003098.P1666439728802103485

/-! ## A003098.P191158058514775228

`∩[A002113(n+1), A334129(n+1)]`
-/

namespace A003098.P191158058514775228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003098.P191158058514775228

/-!
# A003099: a(n) = Sum_{k=0..n} binomial(n,k^2).

The programs for A003099, there is no canonical definition to state claims against.
-/

/-! ## A003099.P5118362691724571810

`∑[A103198(n)]`
-/

namespace A003099.P5118362691724571810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003099.P5118362691724571810

/-! ## A003099.P7112111612715459293

`A103198(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A003099.P7112111612715459293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A103198 n + a (A023443 n).toNat

end

end A003099.P7112111612715459293

/-! ## A003099.P14597515832863069581

`∑[lcm(2, A307522(n))/2]`
-/

namespace A003099.P14597515832863069581
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A307522 n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003099.P14597515832863069581

/-! ## A003099.P116022380756863077

`∑[A307522(n)/A280560(n)]`
-/

namespace A003099.P116022380756863077
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307522 n : ℚ) / (A280560 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003099.P116022380756863077

/-! ## A003099.P13072176036273998687

`∑[A307522(n)/A002448(n²)]`
-/

namespace A003099.P13072176036273998687
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307522 n : ℚ) / (A002448 (n ^ 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003099.P13072176036273998687

