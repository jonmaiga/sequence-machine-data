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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
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
# A188900: Number of compositions of n that avoid the pattern 12-3.

The programs for A188900, there is no canonical definition to state claims against.
-/

/-! ## A188900.P9300078410792976461

`ceil(2^(n-1))-A375406(n)`
-/

namespace A188900.P9300078410792976461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A375406 n

end

end A188900.P9300078410792976461

/-! ## A188900.P8574967039827432053

`A000027(A011782(n)-A375406(n))`
-/

namespace A188900.P8574967039827432053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A011782 n - A375406 n).toNat

end

end A188900.P8574967039827432053

/-! ## A188900.P9452605889538782151

`A297246(A115507(n+1))+A102726(n)`
-/

namespace A188900.P9452605889538782151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297246 (A115507 (n + 1)).toNat + A102726 n

end

end A188900.P9452605889538782151

/-! ## A188900.P2462790159356300714

`A206739(2*n+1)+∑[A069283(A120588(n))]`
-/

namespace A188900.P2462790159356300714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (A120588 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206739 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188900.P2462790159356300714

/-! ## A188900.P4792280850975797181

`A297246(A115507(n+1))+A011782(n)-A335514(n)`
-/

namespace A188900.P4792280850975797181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297246 (A115507 (n + 1)).toNat + (A011782 n - A335514 n)

end

end A188900.P4792280850975797181

/-!
# A188901: Integers in the sequences (arithmetic derivative of k) divided by k.

The programs for A188901, there is no canonical definition to state claims against.
-/

/-! ## A188901.P192039718759345677

`A083345(A072873(n+1))`
-/

namespace A188901.P192039718759345677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083345 (A072873 (n + 1)).toNat

end

end A188901.P192039718759345677

/-! ## A188901.P7255833053992380010

`A049085(lt[A105615(n), A105642(3*n+5)])`
-/

namespace A188901.P7255833053992380010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105615 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105642 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049085 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A188901.P7255833053992380010

/-! ## A188901.P2823744493345742041

`A189036(A343222(2*n+5)+A072873(n+1))`
-/

namespace A188901.P2823744493345742041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189036 (A343222 (2 * n + 5) + A072873 (n + 1)).toNat

end

end A188901.P2823744493345742041

/-! ## A188901.P2439517070486922311

`A003415(A072873(n+1))/A072873(A000027(n+1))`
-/

namespace A188901.P2439517070486922311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (A072873 (n + 1)).toNat : ℚ) / (A072873 (A000027 (n + 1)).toNat : ℚ)

end

end A188901.P2439517070486922311

/-!
# A188902: Numerator of the base n logarithm of the product of the divisors of n.

The programs for A188902, the canonical program `A188902.P4940289484515000086` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188902 has offset 2).

The definition of A188902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188902.P6365363771849489025

`lcm(2, A000005(n+2))/2`
-/

namespace A188902.P6365363771849489025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A000005 (n + 2)) : ℚ) / 2

end

end A188902.P6365363771849489025

namespace A188902

/-- `lcm(2, A000005(n+2))/2` -/
def P6365363771849489025.Spec : Prop :=
  ∀ n, P6365363771849489025.a n = (A188902 (n + 2) : ℚ)

end A188902

/-! ## A188902.P14107684645960721231

`A026741(A000005(n+2))`
-/

namespace A188902.P14107684645960721231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A000005 (n + 2)).toNat

end

end A188902.P14107684645960721231

namespace A188902

/-- `A026741(A000005(n+2))` -/
def P14107684645960721231.Spec : Prop :=
  ∀ n, P14107684645960721231.a n = A188902 (n + 2)

end A188902

/-! ## A188902.P1866402117449026398

`A030065(A062011(n+2))`
-/

namespace A188902.P1866402117449026398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (A062011 (n + 2)).toNat

end

end A188902.P1866402117449026398

namespace A188902

/-- `A030065(A062011(n+2))` -/
def P1866402117449026398.Spec : Prop :=
  ∀ n, P1866402117449026398.a n = A188902 (n + 2)

end A188902

/-! ## A188902.P4940289484515000086

`A030065(A131089(n+2))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A188902

/-- `A030065(A131089(n+2))` -/
def P4940289484515000086.Spec : Prop :=
  ∀ n, P4940289484515000086.a n = A188902 (n + 2)

theorem P4940289484515000086.correct : P4940289484515000086.Spec := by
  intro n
  simp only [A188902, Nat.add_sub_cancel]

end A188902

/-! ## A188902.P14060635784917548981

`A066635(A337174(n+2))`
-/

namespace A188902.P14060635784917548981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066635 (A337174 (n + 2)).toNat

end

end A188902.P14060635784917548981

namespace A188902

/-- `A066635(A337174(n+2))` -/
def P14060635784917548981.Spec : Prop :=
  ∀ n, P14060635784917548981.a n = A188902 (n + 2)

end A188902

/-! ## A188902.P4172357399175879656

`A026741(A032741(n+2)+1)`
-/

namespace A188902.P4172357399175879656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A032741 (n + 2) + 1).toNat

end

end A188902.P4172357399175879656

namespace A188902

/-- `A026741(A032741(n+2)+1)` -/
def P4172357399175879656.Spec : Prop :=
  ∀ n, P4172357399175879656.a n = A188902 (n + 2)

end A188902

/-! ## A188902.P5084211800967175660

`A026741(A070824(n+2)+2)`
-/

namespace A188902.P5084211800967175660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A070824 (n + 2) + 2).toNat

end

end A188902.P5084211800967175660

namespace A188902

/-- `A026741(A070824(n+2)+2)` -/
def P5084211800967175660.Spec : Prop :=
  ∀ n, P5084211800967175660.a n = A188902 (n + 2)

end A188902

/-! ## A188902.P16554726128917186176

`A145051(A000005(n+2)-1)`
-/

namespace A188902.P16554726128917186176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145051 (A000005 (n + 2) - 1).toNat

end

end A188902.P16554726128917186176

namespace A188902

/-- `A145051(A000005(n+2)-1)` -/
def P16554726128917186176.Spec : Prop :=
  ∀ n, P16554726128917186176.a n = A188902 (n + 2)

end A188902

/-! ## A188902.P5823349845484260206

`A060819(2*A000005(n+2))`
-/

namespace A188902.P5823349845484260206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (2 * A000005 (n + 2)).toNat

end

end A188902.P5823349845484260206

namespace A188902

/-- `A060819(2*A000005(n+2))` -/
def P5823349845484260206.Spec : Prop :=
  ∀ n, P5823349845484260206.a n = A188902 (n + 2)

end A188902

/-! ## A188902.P14185780091147554367

`A026741(A062011(n+2)/2)`
-/

namespace A188902.P14185780091147554367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((A062011 (n + 2) : ℚ) / 2)).toNat

end

end A188902.P14185780091147554367

namespace A188902

/-- `A026741(A062011(n+2)/2)` -/
def P14185780091147554367.Spec : Prop :=
  ∀ n, P14185780091147554367.a n = A188902 (n + 2)

end A188902

/-! ## A188902.P14253531843136888566

`∑{d}[A000005(n+2), A326305(#)]`
-/

namespace A188902.P14253531843136888566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A326305 d

end

end A188902.P14253531843136888566

namespace A188902

/-- `∑{d}[A000005(n+2), A326305(#)]` -/
def P14253531843136888566.Spec : Prop :=
  ∀ n, P14253531843136888566.a n = A188902 (n + 2)

end A188902

/-! ## A188902.P4335951103285560510

`abs(A030640(A000005(n+2)-1))`
-/

namespace A188902.P4335951103285560510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A030640 (A000005 (n + 2) - 1).toNat|

end

end A188902.P4335951103285560510

namespace A188902

/-- `abs(A030640(A000005(n+2)-1))` -/
def P4335951103285560510.Spec : Prop :=
  ∀ n, P4335951103285560510.a n = A188902 (n + 2)

end A188902

/-! ## A188902.P5354300271602480663

`A075119(A000005(n+2)²+2)`
-/

namespace A188902.P5354300271602480663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075119 (A000005 (n + 2) ^ 2 + 2).toNat

end

end A188902.P5354300271602480663

namespace A188902

/-- `A075119(A000005(n+2)²+2)` -/
def P5354300271602480663.Spec : Prop :=
  ∀ n, P5354300271602480663.a n = A188902 (n + 2)

end A188902

/-! ## A188902.P7010851656239762154

`A349520(A000005(n+2)²-1)`
-/

namespace A188902.P7010851656239762154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (A000005 (n + 2) ^ 2 - 1).toNat

end

end A188902.P7010851656239762154

namespace A188902

/-- `A349520(A000005(n+2)²-1)` -/
def P7010851656239762154.Spec : Prop :=
  ∀ n, P7010851656239762154.a n = A188902 (n + 2)

end A188902

/-! ## A188902.P2660537008210282340

`A056622(2*A000005(n+2)²)`
-/

namespace A188902.P2660537008210282340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056622 (2 * A000005 (n + 2) ^ 2).toNat

end

end A188902.P2660537008210282340

namespace A188902

/-- `A056622(2*A000005(n+2)²)` -/
def P2660537008210282340.Spec : Prop :=
  ∀ n, P2660537008210282340.a n = A188902 (n + 2)

end A188902

/-! ## A188902.P1507468902801644443

`A000005(n+2)/A275437(n+1)`
-/

namespace A188902.P1507468902801644443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 2) : ℚ) / (A275437 (n + 1) : ℚ)

end

end A188902.P1507468902801644443

namespace A188902

/-- `A000005(n+2)/A275437(n+1)` -/
def P1507468902801644443.Spec : Prop :=
  ∀ n, P1507468902801644443.a n = (A188902 (n + 2) : ℚ)

end A188902

/-! ## A188902.P15843227910814032743

`A000005(n+2)/A169695(n+2)`
-/

namespace A188902.P15843227910814032743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 2) : ℚ) / (A169695 (n + 2) : ℚ)

end

end A188902.P15843227910814032743

namespace A188902

/-- `A000005(n+2)/A169695(n+2)` -/
def P15843227910814032743.Spec : Prop :=
  ∀ n, P15843227910814032743.a n = (A188902 (n + 2) : ℚ)

end A188902

/-! ## A188902.P16629535028474182062

`A347129(n+2)/A348498(n+2)`
-/

namespace A188902.P16629535028474182062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347129 (n + 2) : ℚ) / (A348498 (n + 2) : ℚ)

end

end A188902.P16629535028474182062

namespace A188902

/-- `A347129(n+2)/A348498(n+2)` -/
def P16629535028474182062.Spec : Prop :=
  ∀ n, P16629535028474182062.a n = (A188902 (n + 2) : ℚ)

end A188902

/-! ## A188902.P14718193539144571069

`A347130(n+2)/A348497(n+2)`
-/

namespace A188902.P14718193539144571069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347130 (n + 2) : ℚ) / (A348497 (n + 2) : ℚ)

end

end A188902.P14718193539144571069

namespace A188902

/-- `A347130(n+2)/A348497(n+2)` -/
def P14718193539144571069.Spec : Prop :=
  ∀ n, P14718193539144571069.a n = (A188902 (n + 2) : ℚ)

end A188902

/-! ## A188902.P908605147602165147

`gcd(A000005(n+2), A066446(n+2))`
-/

namespace A188902.P908605147602165147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 2)) (A066446 (n + 2))

end

end A188902.P908605147602165147

namespace A188902

/-- `gcd(A000005(n+2), A066446(n+2))` -/
def P908605147602165147.Spec : Prop :=
  ∀ n, (P908605147602165147.a n : ℤ) = A188902 (n + 2)

end A188902

/-!
# A188903: a(n) is the least power of 2 such that 2n+1 - a(n) is prime, or 0 if no such prime exists.

The programs for A188903, there is no canonical definition to state claims against.
-/

/-! ## A188903.P9483728580474544326

`and(char[A000096(n)+1]-2, 2^A276417(n))`
-/

namespace A188903.P9483728580474544326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 2) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A276417 n : ℤ)))

end

end A188903.P9483728580474544326

/-! ## A188903.P16546334557913358779

`A216095(A276417(n))-char[A350960(n)]`
-/

namespace A188903.P16546334557913358779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350960 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216095 (A276417 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A188903.P16546334557913358779

/-! ## A188903.P12437853839347227605

`A216095(A276417(n))-A277822(A151934(n))`
-/

namespace A188903.P12437853839347227605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216095 (A276417 n).toNat - A277822 (A151934 n).toNat

end

end A188903.P12437853839347227605

/-! ## A188903.P17925318991515079739

`(2^A276417(n))%A326005(n)`
-/

namespace A188903.P17925318991515079739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A276417 n : ℤ))) (A326005 n)

end

end A188903.P17925318991515079739

/-! ## A188903.P11476281105780347044

`A089473(A252168(n+1))%A016921(n)`
-/

namespace A188903.P11476281105780347044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089473 (A252168 (n + 1)).toNat) (A016921 n)

end

end A188903.P11476281105780347044

/-! ## A188903.P12996010795823212834

`A164190(A276417(n))%A210185(A000124(n))`
-/

namespace A188903.P12996010795823212834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164190 (A276417 n).toNat) (A210185 (A000124 n).toNat)

end

end A188903.P12996010795823212834

/-! ## A188903.P14484157693430288709

`A151934(A151934(n)²)*A216095(A276417(n))`
-/

namespace A188903.P14484157693430288709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151934 (A151934 n ^ 2).toNat * A216095 (A276417 n).toNat

end

end A188903.P14484157693430288709

/-!
# A188904: Number of n X n binary arrays without the pattern 0 1 0 diagonally or antidiagonally.

The programs for A188904, there is no canonical definition to state claims against.
-/

/-! ## A188904.P568220791497523771

`A188910((n+1)²+n²)`
-/

namespace A188904.P568220791497523771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188910 ((n + 1) ^ 2 + n ^ 2)

end

end A188904.P568220791497523771

/-! ## A188904.P10448195681118351803

`record[A188910(Δ[A235355(n)])]`
-/

namespace A188904.P10448195681118351803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188910 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188904.P10448195681118351803

/-! ## A188904.P15350919530601886398

`record[A003982(n)*A188910(n+1)]`
-/

namespace A188904.P15350919530601886398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A188910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188904.P15350919530601886398

/-! ## A188904.P4001560668011887016

`record[gcd(A114327(n), A188910(n+1))]`
-/

namespace A188904.P4001560668011887016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A188910 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188904.P4001560668011887016

/-! ## A188904.P17563276291918894926

`A188910(A001844(n))+A025466(n)`
-/

namespace A188904.P17563276291918894926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188910 (A001844 n).toNat + A025466 n

end

end A188904.P17563276291918894926

/-!
# A188905: Number of nX4 binary arrays without the pattern 0 1 0 diagonally or antidiagonally.

The programs for A188905, there is no canonical definition to state claims against.
-/

/-! ## A188905.P17881520695222987306

`A188910(∑[n+3]+7)`
-/

namespace A188905.P17881520695222987306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188910 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A188905.P17881520695222987306

/-! ## A188905.P120608137381491285

`lcm(2, A188910(A167614(n+2)+1))`
-/

namespace A188905.P120608137381491285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A188910 (A167614 (n + 2) + 1).toNat)

end

end A188905.P120608137381491285

/-! ## A188905.P17525999491903396052

`record[A188910(n+5)/A092083(n+1)]`
-/

namespace A188905.P17525999491903396052
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188910 (n + 5) : ℚ) / (A092083 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188905.P17525999491903396052

/-! ## A188905.P4893423895058459996

`A188910(A167614(n+2)+1)%A337076(3*n+5)`
-/

namespace A188905.P4893423895058459996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188910 (A167614 (n + 2) + 1).toNat) (A337076 (3 * n + 5))

end

end A188905.P4893423895058459996

/-!
# A188906: Number of nX5 binary arrays without the pattern 0 1 0 diagonally or antidiagonally.

The programs for A188906, there is no canonical definition to state claims against.
-/

/-! ## A188906.P12406477155396789981

`A188910(A167499(n+3))`
-/

namespace A188906.P12406477155396789981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188910 (A167499 (n + 3)).toNat

end

end A188906.P12406477155396789981

/-! ## A188906.P10988522274112390720

`A188910(A155212(n)+13)`
-/

namespace A188906.P10988522274112390720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188910 (A155212 n + 13).toNat

end

end A188906.P10988522274112390720

/-! ## A188906.P11410164753437211967

`A188910(A374005(n+1))`
-/

namespace A188906.P11410164753437211967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188910 (A374005 (n + 1)).toNat

end

end A188906.P11410164753437211967

/-! ## A188906.P15207964941836870489

`A188910(A046691(n+3))`
-/

namespace A188906.P15207964941836870489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188910 (A046691 (n + 3)).toNat

end

end A188906.P15207964941836870489

/-! ## A188906.P12636676781172683071

`A188910(Δ[A023545(n+1)])`
-/

namespace A188906.P12636676781172683071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188910 (f1 (n + 1) - f1 n).toNat

end

end A188906.P12636676781172683071

/-!
# A188907: Number of nX6 binary arrays without the pattern 0 1 0 diagonally or antidiagonally.

The programs for A188907, there is no canonical definition to state claims against.
-/

/-! ## A188907.P2195942299643836876

`A188910(A166136(n+4))`
-/

namespace A188907.P2195942299643836876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188910 (A166136 (n + 4)).toNat

end

end A188907.P2195942299643836876

/-! ## A188907.P2167048139249632511

`A188910(A374007(n+1))`
-/

namespace A188907.P2167048139249632511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188910 (A374007 (n + 1)).toNat

end

end A188907.P2167048139249632511

/-! ## A188907.P2423487281851274081

`A188910(A052905(n+3))`
-/

namespace A188907.P2423487281851274081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188910 (A052905 (n + 3)).toNat

end

end A188907.P2423487281851274081

/-! ## A188907.P13041438054139523273

`A188910(eq[3, A219347(n)])`
-/

namespace A188907.P13041438054139523273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188907.P13041438054139523273

/-! ## A188907.P12048703276486113970

`A188910(eq[8, A185782(n+1)])`
-/

namespace A188907.P12048703276486113970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188907.P12048703276486113970

/-!
# A188908: Number of nX7 binary arrays without the pattern 0 1 0 diagonally or antidiagonally.

The programs for A188908, there is no canonical definition to state claims against.
-/

/-! ## A188908.P2092780603175445683

`A188910(A167614(n+5)+4)`
-/

namespace A188908.P2092780603175445683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188910 (A167614 (n + 5) + 4).toNat

end

end A188908.P2092780603175445683

/-! ## A188908.P11722593677247262718

`A188910(eq[8, A131818(n+1)])`
-/

namespace A188908.P11722593677247262718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188908.P11722593677247262718

/-! ## A188908.P10118816083397801732

`A188910(A374008(n+1))`
-/

namespace A188908.P10118816083397801732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188910 (A374008 (n + 1)).toNat

end

end A188908.P10118816083397801732

/-! ## A188908.P11656761369404221759

`A188910(A055999(n+4))`
-/

namespace A188908.P11656761369404221759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188910 (A055999 (n + 4)).toNat

end

end A188908.P11656761369404221759

/-! ## A188908.P16226153490254809559

`A188910(eq[4, A219347(n)])`
-/

namespace A188908.P16226153490254809559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188908.P16226153490254809559

/-!
# A188909: Number of nX8 binary arrays without the pattern 0 1 0 diagonally or antidiagonally.

The programs for A188909, there is no canonical definition to state claims against.
-/

/-! ## A188909.P10056034708470837659

`A188910(eq[13, A066657(n)])`
-/

namespace A188909.P10056034708470837659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188909.P10056034708470837659

/-! ## A188909.P5757771488999606239

`A188910(eq[9, A131818(n+1)])`
-/

namespace A188909.P5757771488999606239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188909.P5757771488999606239

/-! ## A188909.P7665094791571279478

`A188910(A374009(n+1))`
-/

namespace A188909.P7665094791571279478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188910 (A374009 (n + 1)).toNat

end

end A188909.P7665094791571279478

/-! ## A188909.P7177854858345275461

`A188910(eq[5, A219347(n)])`
-/

namespace A188909.P7177854858345275461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188909.P7177854858345275461

/-! ## A188909.P2853608504150601799

`A188910(eq[7, A193592(n)])`
-/

namespace A188909.P2853608504150601799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188909.P2853608504150601799

/-!
# A188911: Binomial convolution of the binomial coefficients bin(3n,n) (A005809).

The programs for A188911, there is no canonical definition to state claims against.
-/

/-! ## A188911.P547054101243772358

`Δ[A052938(∑[A322543(n)])]`
-/

namespace A188911.P547054101243772358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322543 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188911.P547054101243772358

/-!
# A188912: Binomial convolution of the binomial coefficients bin(3n,n)/(2n+1) (A001764).

The programs for A188912, there is no canonical definition to state claims against.
-/

/-! ## A188912.P18094971713970083856

`A188913(n)/(n+1)`
-/

namespace A188912.P18094971713970083856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188913 n : ℚ) / (n + 1 : ℚ)

end

end A188912.P18094971713970083856

/-! ## A188912.P10307429527168614637

`A000108(n)/A000984(n)*A188913(n)`
-/

namespace A188912.P10307429527168614637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) / (A000984 n : ℚ) * (A188913 n : ℚ)

end

end A188912.P10307429527168614637

/-! ## A188912.P4640678291336856030

`A006013(n)/A045721(n)*A188913(n)`
-/

namespace A188912.P4640678291336856030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006013 n : ℚ) / (A045721 n : ℚ) * (A188913 n : ℚ)

end

end A188912.P4640678291336856030

/-!
# A188913: Binomial convolution of the binomial coefficients bin(3n,n) (A005809) and bin(3n,n)/(2n+1) (A001764).

The programs for A188913, there is no canonical definition to state claims against.
-/

/-! ## A188913.P7870644819974099177

`(n+1)*A188912(n)`
-/

namespace A188913.P7870644819974099177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A188912 n

end

end A188913.P7870644819974099177

/-! ## A188913.P14565807587532533845

`A188912(n)*A266285(2*n)`
-/

namespace A188913.P14565807587532533845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188912 n * A266285 (2 * n)

end

end A188913.P14565807587532533845

/-! ## A188913.P9348304605325647718

`A188912(n)*A328399(2*n)`
-/

namespace A188913.P9348304605325647718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188912 n * A328399 (2 * n)

end

end A188913.P9348304605325647718

/-! ## A188913.P4732547393104239190

`A188912(n)*A220645(A000217(n))`
-/

namespace A188913.P4732547393104239190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188912 n * A220645 (A000217 n).toNat

end

end A188913.P4732547393104239190

/-! ## A188913.P2187525615605367996

`A188912(n)/A006013(n)*A045721(n)`
-/

namespace A188913.P2187525615605367996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188912 n : ℚ) / (A006013 n : ℚ) * (A045721 n : ℚ)

end

end A188913.P2187525615605367996

/-!
# A188914: a(n) = n*n! + 1 = (n+1)! - n! + 1.

The programs for A188914, the canonical program `A188914.P9239190203283106361` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188914 has offset 0).

The definition of A188914 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*n!+1` (program `A188914.P9239190203283106361`, by `A188914.P9239190203283106361.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A188914.P9239190203283106361

`n*n!+1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A188914

/-- `n*n!+1` -/
def P9239190203283106361.Spec : Prop :=
  ∀ n, (P9239190203283106361.a n : ℤ) = A188914 n

theorem P9239190203283106361.correct : P9239190203283106361.Spec := by
  intro n
  simp only [A188914]

end A188914

/-! ## A188914.P14223334930701332876

`A005095(n+1)-A005095(n)`
-/

namespace A188914.P14223334930701332876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005095 (n + 1) - A005095 n

end

end A188914.P14223334930701332876

namespace A188914

/-- `A005095(n+1)-A005095(n)` -/
def P14223334930701332876.Spec : Prop :=
  ∀ n, P14223334930701332876.a n = A188914 n

end A188914

/-! ## A188914.P12665727316857614550

`Δ[n!]+1`
-/

namespace A188914.P12665727316857614550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A188914.P12665727316857614550

namespace A188914

/-- `Δ[n!]+1` -/
def P12665727316857614550.Spec : Prop :=
  ∀ n, P12665727316857614550.a n = A188914 n

theorem P12665727316857614550.correct : P12665727316857614550.Spec := by
  intro n
  simp only [A188914, Nat.add_sub_cancel, A188914.P12665727316857614550.f1, A188914.P12665727316857614550.a, A188914.P9239190203283106361.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A188914

/-! ## A188914.P4558306052561106409

`1-Δ[-n!]`
-/

namespace A188914.P4558306052561106409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A188914.P4558306052561106409

namespace A188914

/-- `1-Δ[-n!]` -/
def P4558306052561106409.Spec : Prop :=
  ∀ n, P4558306052561106409.a n = A188914 n

theorem P4558306052561106409.correct : P4558306052561106409.Spec := by
  intro n
  simp only [A188914, Nat.add_sub_cancel, A188914.P4558306052561106409.f1, A188914.P4558306052561106409.a, A188914.P9239190203283106361.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A188914

/-! ## A188914.P6863749799830521267

`abs(xor(Δ[n!], -1))`
-/

namespace A188914.P6863749799830521267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (-1)|

end

end A188914.P6863749799830521267

namespace A188914

/-- `abs(xor(Δ[n!], -1))` -/
def P6863749799830521267.Spec : Prop :=
  ∀ n, P6863749799830521267.a n = A188914 n

end A188914

/-! ## A188914.P348246108280402769

`-xor(Δ[n!], -1)`
-/

namespace A188914.P348246108280402769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (-1)

end

end A188914.P348246108280402769

namespace A188914

/-- `-xor(Δ[n!], -1)` -/
def P348246108280402769.Spec : Prop :=
  ∀ n, P348246108280402769.a n = A188914 n

end A188914

/-! ## A188914.P8918204004054056637

`Δ[n-(1-n!)]`
-/

namespace A188914.P8918204004054056637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (1 - (Nat.factorial n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188914.P8918204004054056637

namespace A188914

/-- `Δ[n-(1-n!)]` -/
def P8918204004054056637.Spec : Prop :=
  ∀ n, P8918204004054056637.a n = A188914 n

theorem P8918204004054056637.correct : P8918204004054056637.Spec := by
  intro n
  simp only [A188914, Nat.add_sub_cancel, A188914.P8918204004054056637.f1, A188914.P8918204004054056637.a, A188914.P9239190203283106361.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A188914

/-! ## A188914.P12404599525762309765

`abs(xor(n*n!, -1))`
-/

namespace A188914.P12404599525762309765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n * Nat.factorial n : ℤ) (-1)|

end

end A188914.P12404599525762309765

namespace A188914

/-- `abs(xor(n*n!, -1))` -/
def P12404599525762309765.Spec : Prop :=
  ∀ n, P12404599525762309765.a n = A188914 n

end A188914

/-! ## A188914.P12718912043285608853

`-xor(n*n!, -1)`
-/

namespace A188914.P12718912043285608853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n * Nat.factorial n : ℤ) (-1)

end

end A188914.P12718912043285608853

namespace A188914

/-- `-xor(n*n!, -1)` -/
def P12718912043285608853.Spec : Prop :=
  ∀ n, P12718912043285608853.a n = A188914 n

end A188914

/-! ## A188914.P17350592205373002743

`(n+1)!+1-n!`
-/

namespace A188914.P17350592205373002743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) + (1 - (Nat.factorial n : ℤ))

end

end A188914.P17350592205373002743

namespace A188914

/-- `(n+1)!+1-n!` -/
def P17350592205373002743.Spec : Prop :=
  ∀ n, P17350592205373002743.a n = A188914 n

theorem P17350592205373002743.correct : P17350592205373002743.Spec := by
  intro n
  simp only [A188914, Nat.add_sub_cancel, A188914.P17350592205373002743.a, A188914.P9239190203283106361.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A188914

/-!
# A188915: Union of squares and powers of 2.

The programs for A188915, the canonical program `A188915.P11418170771548926014` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188915 has offset 0).

The definition of A188915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188915.P11418170771548926014

`eq[A209229(A056926(n)), A209229(n)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A188915

/-- `eq[A209229(A056926(n)), A209229(n)]` -/
def P11418170771548926014.Spec : Prop :=
  ∀ n, (P11418170771548926014.a n : ℤ) = A188915 n

theorem P11418170771548926014.correct : P11418170771548926014.Spec := by
  intro n
  simp only [A188915]

end A188915

/-! ## A188915.P16799098950024317379

`eq[A006257(n), A006257(A056926(n)²)]`
-/

namespace A188915.P16799098950024317379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A056926 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188915.P16799098950024317379

namespace A188915

/-- `eq[A006257(n), A006257(A056926(n)²)]` -/
def P16799098950024317379.Spec : Prop :=
  ∀ n, (P16799098950024317379.a n : ℤ) = A188915 n

end A188915

/-! ## A188915.P7626860299633815277

`eq[A160552(A056926(n)²), A160552(n)]`
-/

namespace A188915.P7626860299633815277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (A056926 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188915.P7626860299633815277

namespace A188915

/-- `eq[A160552(A056926(n)²), A160552(n)]` -/
def P7626860299633815277.Spec : Prop :=
  ∀ n, (P7626860299633815277.a n : ℤ) = A188915 n

end A188915

/-! ## A188915.P9780413553544608227

`eq[A124757(n)*A191521(n), A124757(n)]`
-/

namespace A188915.P9780413553544608227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 n * A191521 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188915.P9780413553544608227

namespace A188915

/-- `eq[A124757(n)*A191521(n), A124757(n)]` -/
def P9780413553544608227.Spec : Prop :=
  ∀ n, (P9780413553544608227.a n : ℤ) = A188915 n

end A188915

/-! ## A188915.P12375102680255777110

`record[and(n, -gcd(n, A000122(n)))]`
-/

namespace A188915.P12375102680255777110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(Int.gcd (n : ℤ) (A000122 n) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188915.P12375102680255777110

namespace A188915

/-- `record[and(n, -gcd(n, A000122(n)))]` -/
def P12375102680255777110.Spec : Prop :=
  ∀ n, P12375102680255777110.a n = A188915 n

end A188915

/-! ## A188915.P15748669731265903920

`eq[A053188(A048298(n)), A053188(n)]`
-/

namespace A188915.P15748669731265903920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A048298 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188915.P15748669731265903920

namespace A188915

/-- `eq[A053188(A048298(n)), A053188(n)]` -/
def P15748669731265903920.Spec : Prop :=
  ∀ n, (P15748669731265903920.a n : ℤ) = A188915 n

end A188915

/-! ## A188915.P5082549667266652440

`eq[A000120(n), A000120(A056926(n)²)]`
-/

namespace A188915.P5082549667266652440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A056926 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188915.P5082549667266652440

namespace A188915

/-- `eq[A000120(n), A000120(A056926(n)²)]` -/
def P5082549667266652440.Spec : Prop :=
  ∀ n, (P5082549667266652440.a n : ℤ) = A188915 n

end A188915

/-! ## A188915.P3708728237473674424

`eq[A261337(A056926(n)²), A261337(n)]`
-/

namespace A188915.P3708728237473674424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261337 (A056926 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261337 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188915.P3708728237473674424

namespace A188915

/-- `eq[A261337(A056926(n)²), A261337(n)]` -/
def P3708728237473674424.Spec : Prop :=
  ∀ n, (P3708728237473674424.a n : ℤ) = A188915 n

end A188915

/-! ## A188915.P14119141919712995553

`lt[A085144(A010052(n)+A001316(n)), 2]`
-/

namespace A188915.P14119141919712995553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (A010052 n + A001316 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A188915.P14119141919712995553

namespace A188915

/-- `lt[A085144(A010052(n)+A001316(n)), 2]` -/
def P14119141919712995553.Spec : Prop :=
  ∀ n, (P14119141919712995553.a n : ℤ) = A188915 n

end A188915

/-! ## A188915.P5523627320403100209

`lt[A085144(A001316(n)-A010052(n)), 2]`
-/

namespace A188915.P5523627320403100209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (A001316 n - A010052 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A188915.P5523627320403100209

namespace A188915

/-- `lt[A085144(A001316(n)-A010052(n)), 2]` -/
def P5523627320403100209.Spec : Prop :=
  ∀ n, (P5523627320403100209.a n : ℤ) = A188915 n

end A188915

/-! ## A188915.P107557512907290734

`eq[A000120(n)*A053186(n), A053186(n)]`
-/

namespace A188915.P107557512907290734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A053186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188915.P107557512907290734

namespace A188915

/-- `eq[A000120(n)*A053186(n), A053186(n)]` -/
def P107557512907290734.Spec : Prop :=
  ∀ n, (P107557512907290734.a n : ℤ) = A188915 n

end A188915

/-! ## A188915.P4662853408147883995

`eq[A069283(n*A010052(n)), A069283(n)]`
-/

namespace A188915.P4662853408147883995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 ((n : ℤ) * A010052 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188915.P4662853408147883995

namespace A188915

/-- `eq[A069283(n*A010052(n)), A069283(n)]` -/
def P4662853408147883995.Spec : Prop :=
  ∀ n, (P4662853408147883995.a n : ℤ) = A188915 n

end A188915

/-! ## A188915.P16558244331186329951

`eq[A000120(n)*A091453(n), A091453(n)]`
-/

namespace A188915.P16558244331186329951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A091453 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188915.P16558244331186329951

namespace A188915

/-- `eq[A000120(n)*A091453(n), A091453(n)]` -/
def P16558244331186329951.Spec : Prop :=
  ∀ n, (P16558244331186329951.a n : ℤ) = A188915 n

end A188915

/-! ## A188915.P4406436297837881003

`eq[A151861(A056926(n)²), A151861(n)]`
-/

namespace A188915.P4406436297837881003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151861 (A056926 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188915.P4406436297837881003

namespace A188915

/-- `eq[A151861(A056926(n)²), A151861(n)]` -/
def P4406436297837881003.Spec : Prop :=
  ∀ n, (P4406436297837881003.a n : ℤ) = A188915 n

end A188915

/-! ## A188915.P12455505509365073967

`eq[1, A038573(A038573(n)+A010052(n))]`
-/

namespace A188915.P12455505509365073967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (A038573 n + A010052 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188915.P12455505509365073967

namespace A188915

/-- `eq[1, A038573(A038573(n)+A010052(n))]` -/
def P12455505509365073967.Spec : Prop :=
  ∀ n, (P12455505509365073967.a n : ℤ) = A188915 n

end A188915

/-!
# A188916: Where squares occur in the union of squares and powers of 2.

The programs for A188916, the canonical program `A188916.P11571620703163945745` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188916 has offset 0).

The definition of A188916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188916.P6351896569390930302

`comp[floor(2*2^(n-1)*sqrt(2))+n+1]`
-/

namespace A188916.P6351896569390930302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) * Real.sqrt (2 : ℝ)⌋ + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188916.P6351896569390930302

namespace A188916

/-- `comp[floor(2*2^(n-1)*sqrt(2))+n+1]` -/
def P6351896569390930302.Spec : Prop :=
  ∀ n, (P6351896569390930302.a n : ℤ) = A188916 n

end A188916

/-! ## A188916.P10884668397878651318

`round(log2(A028310(n))+n)`
-/

namespace A188916.P10884668397878651318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A028310 n : ℝ) + (n : ℝ))

end

end A188916.P10884668397878651318

namespace A188916

/-- `round(log2(A028310(n))+n)` -/
def P10884668397878651318.Spec : Prop :=
  ∀ n, P10884668397878651318.a n = A188916 n

end A188916

/-! ## A188916.P14394280221500235230

`round(log2(A000007(n)+n))+n`
-/

namespace A188916.P14394280221500235230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A000007 n + (n : ℤ) : ℝ)) + (n : ℤ)

end

end A188916.P14394280221500235230

namespace A188916

/-- `round(log2(A000007(n)+n))+n` -/
def P14394280221500235230.Spec : Prop :=
  ∀ n, P14394280221500235230.a n = A188916 n

end A188916

/-! ## A188916.P15475270681583473087

`A004526(ceil(log2(n²+1)))+n`
-/

namespace A188916.P15475270681583473087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ⌈Real.logb 2 (n ^ 2 + 1 : ℝ)⌉.toNat + (n : ℤ)

end

end A188916.P15475270681583473087

namespace A188916

/-- `A004526(ceil(log2(n²+1)))+n` -/
def P15475270681583473087.Spec : Prop :=
  ∀ n, P15475270681583473087.a n = A188916 n

end A188916

/-! ## A188916.P11571620703163945745

`A004257(A028310(n))+n`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A188916

/-- `A004257(A028310(n))+n` -/
def P11571620703163945745.Spec : Prop :=
  ∀ n, P11571620703163945745.a n = A188916 n

theorem P11571620703163945745.correct : P11571620703163945745.Spec := by
  intro n
  simp only [A188916]

end A188916

/-! ## A188916.P14146694877248735018

`comp[A188917(2*n+1)]%A000040(n+1)`
-/

namespace A188916.P14146694877248735018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188917 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A000040 (n + 1))

end

end A188916.P14146694877248735018

namespace A188916

/-- `comp[A188917(2*n+1)]%A000040(n+1)` -/
def P14146694877248735018.Spec : Prop :=
  ∀ n, P14146694877248735018.a n = A188916 n

end A188916

/-! ## A188916.P5735835763567349259

`A122841(3*n+1)+comp[A188917(2*n+1)]`
-/

namespace A188916.P5735835763567349259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188917 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (3 * n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A188916.P5735835763567349259

namespace A188916

/-- `A122841(3*n+1)+comp[A188917(2*n+1)]` -/
def P5735835763567349259.Spec : Prop :=
  ∀ n, P5735835763567349259.a n = A188916 n

end A188916

/-! ## A188916.P7749311143629092217

`round(log2(a(n-1)+n*2^n))` with `a(0)=0`
-/

namespace A188916.P7749311143629092217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway (Real.logb 2 (a (n - 1) + (n * 2 ^ n : ℤ) : ℝ))

end

end A188916.P7749311143629092217

namespace A188916

/-- `round(log2(a(n-1)+n*2^n))` -/
def P7749311143629092217.Spec : Prop :=
  ∀ n, P7749311143629092217.a n = A188916 n

end A188916

/-! ## A188916.P16650814244606103001

`round(log2(A134401(n)))`
-/

namespace A188916.P16650814244606103001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A134401 n : ℝ))

end

end A188916.P16650814244606103001

namespace A188916

/-- `round(log2(A134401(n)))` -/
def P16650814244606103001.Spec : Prop :=
  ∀ n, P16650814244606103001.a n = A188916 n

end A188916

/-! ## A188916.P1373142622756149865

`round(log2(A036289(n)+A000007(n)))`
-/

namespace A188916.P1373142622756149865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A036289 n + A000007 n : ℝ))

end

end A188916.P1373142622756149865

namespace A188916

/-- `round(log2(A036289(n)+A000007(n)))` -/
def P1373142622756149865.Spec : Prop :=
  ∀ n, P1373142622756149865.a n = A188916 n

end A188916

/-! ## A188916.P2020151277536249976

`round(log2(A088157(n)+A036289(n)))`
-/

namespace A188916.P2020151277536249976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A088157 n + A036289 n : ℝ))

end

end A188916.P2020151277536249976

namespace A188916

/-- `round(log2(A088157(n)+A036289(n)))` -/
def P2020151277536249976.Spec : Prop :=
  ∀ n, P2020151277536249976.a n = A188916 n

end A188916

/-! ## A188916.P14392803879902525703

`round(log2(A004277(n)*A011782(n)))`
-/

namespace A188916.P14392803879902525703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A004277 n * A011782 n : ℝ))

end

end A188916.P14392803879902525703

namespace A188916

/-- `round(log2(A004277(n)*A011782(n)))` -/
def P14392803879902525703.Spec : Prop :=
  ∀ n, P14392803879902525703.a n = A188916 n

end A188916

/-! ## A188916.P10389095981446891879

`floor(log2(log2(A356563(n)))+n)`
-/

namespace A188916.P10389095981446891879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.logb 2 (A356563 n : ℝ)) + (n : ℝ)⌋

end

end A188916.P10389095981446891879

namespace A188916

/-- `floor(log2(log2(A356563(n)))+n)` -/
def P10389095981446891879.Spec : Prop :=
  ∀ n, P10389095981446891879.a n = A188916 n

end A188916

/-! ## A188916.P14944717757665166202

`round(log2(A105821(∑[n]+1)+n))+n`
-/

namespace A188916.P14944717757665166202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A105821 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + (n : ℤ) : ℝ)) + (n : ℤ)

end

end A188916.P14944717757665166202

namespace A188916

/-- `round(log2(A105821(∑[n]+1)+n))+n` -/
def P14944717757665166202.Spec : Prop :=
  ∀ n, P14944717757665166202.a n = A188916 n

end A188916

/-! ## A188916.P535094856606232855

`A070939(n²)+n-A070939(n)`
-/

namespace A188916.P535094856606232855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n ^ 2) + ((n : ℤ) - A070939 n)

end

end A188916.P535094856606232855

namespace A188916

/-- `A070939(n²)+n-A070939(n)` -/
def P535094856606232855.Spec : Prop :=
  ∀ n, P535094856606232855.a n = A188916 n

end A188916

/-!
# A188917: Where powers of 2 occur in the union of squares and powers of 2.

The programs for A188917, the canonical program `A188917.P11121832098210832002` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188917 has offset 0).

The definition of A188917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188917.P11141405958664134100

`floor(2^(n/2)+(n+1)/2)`
-/

namespace A188917.P11141405958664134100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℝ) ^ ((n : ℚ) / 2 : ℝ) + ((n + 1 : ℚ) / 2 : ℝ)⌋

end

end A188917.P11141405958664134100

namespace A188917

/-- `floor(2^(n/2)+(n+1)/2)` -/
def P11141405958664134100.Spec : Prop :=
  ∀ n, P11141405958664134100.a n = A188917 n

end A188917

/-! ## A188917.P11121832098210832002

`ceil(A017910(n)+n/2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A188917

/-- `ceil(A017910(n)+n/2)` -/
def P11121832098210832002.Spec : Prop :=
  ∀ n, P11121832098210832002.a n = A188917 n

theorem P11121832098210832002.correct : P11121832098210832002.Spec := by
  intro n
  simp only [A188917]

end A188917

/-! ## A188917.P6360746832148025394

`A017912(n)+A004526(n)`
-/

namespace A188917.P6360746832148025394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017912 n + A004526 n

end

end A188917.P6360746832148025394

namespace A188917

/-- `A017912(n)+A004526(n)` -/
def P6360746832148025394.Spec : Prop :=
  ∀ n, P6360746832148025394.a n = A188917 n

end A188917

/-! ## A188917.P15050690651852450135

`A110654(n)+A017910(n)`
-/

namespace A188917.P15050690651852450135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A017910 n

end

end A188917.P15050690651852450135

namespace A188917

/-- `A110654(n)+A017910(n)` -/
def P15050690651852450135.Spec : Prop :=
  ∀ n, P15050690651852450135.a n = A188917 n

end A188917

/-! ## A188917.P5697506968925866430

`A033638(n+1)+A017910(n)-A033638(n)`
-/

namespace A188917.P5697506968925866430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (n + 1) + A017910 n - A033638 n

end

end A188917.P5697506968925866430

namespace A188917

/-- `A033638(n+1)+A017910(n)-A033638(n)` -/
def P5697506968925866430.Spec : Prop :=
  ∀ n, P5697506968925866430.a n = A188917 n

end A188917

/-! ## A188917.P10607817429555121506

`∑[n%2]+floor(sqrt(2^n))`
-/

namespace A188917.P10607817429555121506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.sqrt (2 ^ n)

end

end A188917.P10607817429555121506

namespace A188917

/-- `∑[n%2]+floor(sqrt(2^n))` -/
def P10607817429555121506.Spec : Prop :=
  ∀ n, (P10607817429555121506.a n : ℤ) = A188917 n

end A188917

/-! ## A188917.P9537416595132183399

`ceil(sqrt(2^n))+val(2^n, 4)`
-/

namespace A188917.P9537416595132183399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 ^ n : ℝ)⌉ + (SequenceMachineLib.valuation (2 ^ n) 4 : ℤ)

end

end A188917.P9537416595132183399

namespace A188917

/-- `ceil(sqrt(2^n))+val(2^n, 4)` -/
def P9537416595132183399.Spec : Prop :=
  ∀ n, P9537416595132183399.a n = A188917 n

end A188917

/-!
# A188918: Alternate partial sums of binomial(2n,n)*binomial(3n,n) (A006480).

The programs for A188918, there is no canonical definition to state claims against.
-/

/-! ## A188918.P5872530472244694905

`C(3*n, n)*C(2*n, n)-a(n-1)` with `a(0)=1`
-/

namespace A188918.P5872530472244694905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (3 * n) n * Nat.choose (2 * n) n : ℤ) - a (n - 1)

end

end A188918.P5872530472244694905

/-! ## A188918.P11576845950866190123

`abs(∑[A245086(2*n)])`
-/

namespace A188918.P11576845950866190123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245086 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A188918.P11576845950866190123

/-! ## A188918.P14351062356078810853

`A006480(n)-a(n-1)` with `a(0)=1`
-/

namespace A188918.P14351062356078810853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006480 n - a (n - 1)

end

end A188918.P14351062356078810853

/-! ## A188918.P15651505693253260675

`∑[n+1]*A324151(n)-a(n-1)` with `a(0)=1`
-/

namespace A188918.P15651505693253260675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A324151 n - a (n - 1)

end

end A188918.P15651505693253260675

/-! ## A188918.P3429989029354385559

`(2*n+1)*A024486(n)-a(n-1)` with `a(0)=1`
-/

namespace A188918.P3429989029354385559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1 : ℤ) * A024486 n - a (n - 1)

end

end A188918.P3429989029354385559

/-! ## A188918.P9452444828992170396

`A000984(n)*A005809(n)-a(n-1)` with `a(0)=1`
-/

namespace A188918.P9452444828992170396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000984 n * A005809 n - a (n - 1)

end

end A188918.P9452444828992170396

/-! ## A188918.P4821726956447670049

`record[A126869(n)]*A005809(n)-a(n-1)` with `a(0)=1`
-/

namespace A188918.P4821726956447670049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A005809 n - a (n - 1)

end

end A188918.P4821726956447670049

/-! ## A188918.P13091958829489313664

`A005809(n)*A063886(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A188918.P13091958829489313664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005809 n * A063886 (2 * n) - a (n - 1)

end

end A188918.P13091958829489313664

/-! ## A188918.P17996024117797401392

`(n+1)*A000108(n)*A005809(n)-a(n-1)` with `a(0)=1`
-/

namespace A188918.P17996024117797401392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * A000108 n * A005809 n - a (n - 1)

end

end A188918.P17996024117797401392

/-! ## A188918.P3342940790885164908

`A001405(A005843(n))*A005809(n)-a(n-1)` with `a(0)=1`
-/

namespace A188918.P3342940790885164908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001405 (A005843 n).toNat * A005809 n - a (n - 1)

end

end A188918.P3342940790885164908

/-!
# A188920: a(n) is the limiting term of the n-th column of the triangle in A188919.

The programs for A188920, there is no canonical definition to state claims against.
-/

/-! ## A188920.P18374218713760547588

`A188919(A180415(n+1))`
-/

namespace A188920.P18374218713760547588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188919 (A180415 (n + 1)).toNat

end

end A188920.P18374218713760547588

/-! ## A188920.P4138541147318979848

`A188919(∑[∑[n]+2])`
-/

namespace A188920.P4138541147318979848
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188919 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A188920.P4138541147318979848

/-! ## A188920.P18288669977573679192

`A011782(n)-A375140(A028310(n))`
-/

namespace A188920.P18288669977573679192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A375140 (A028310 n).toNat

end

end A188920.P18288669977573679192

/-! ## A188920.P8306886964414713542

`A055086(A088456(n+1)-n)-A048050(A008302(n+1))`
-/

namespace A188920.P8306886964414713542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A088456 (n + 1) - (n : ℤ)).toNat - A048050 (A008302 (n + 1)).toNat

end

end A188920.P8306886964414713542

/-! ## A188920.P2492967634337875276

`A319111(A087036(n))`
-/

namespace A188920.P2492967634337875276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319111 (A087036 n).toNat

end

end A188920.P2492967634337875276

/-!
# A188921: Expansion of the fractional part of Pi in base Pi.

The programs for A188921, there is no canonical definition to state claims against.
-/

/-! ## A188921.P9887252186028076392

`A303877(n+1)`
-/

namespace A188921.P9887252186028076392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303877 (n + 1)

end

end A188921.P9887252186028076392

/-! ## A188921.P13570157373913551266

`dr(A303877(Δ[n²]-n))`
-/

namespace A188921.P13570157373913551266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A303877 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A188921.P13570157373913551266

/-! ## A188921.P12131724134277853142

`∑[Δ[A303877(n)]%Δ[n²]]`
-/

namespace A188921.P12131724134277853142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303877 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188921.P12131724134277853142

/-! ## A188921.P7001615812172575754

`and(3, A303877(A131732(2*n)))`
-/

namespace A188921.P7001615812172575754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A303877 (A131732 (2 * n)).toNat)

end

end A188921.P7001615812172575754

/-! ## A188921.P10543427268747289418

`A303877(Δ[n²]-n)-A000035(2*n)`
-/

namespace A188921.P10543427268747289418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303877 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - A000035 (2 * n)

end

end A188921.P10543427268747289418

/-! ## A188921.P17592605594527203165

`A000034(2*n)*A303877(Δ[n²]-n)`
-/

namespace A188921.P17592605594527203165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A303877 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A188921.P17592605594527203165

/-! ## A188921.P3551269047585757324

`A007318(C(2, n))²*A303877(Δ[n²]-n)`
-/

namespace A188921.P3551269047585757324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) ^ 2 * A303877 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A188921.P3551269047585757324

/-! ## A188921.P9766308221121053503

`A000108(C(n, n²))*A303877(Δ[n²]-n)`
-/

namespace A188921.P9766308221121053503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose n (n ^ 2)) * A303877 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A188921.P9766308221121053503

/-! ## A188921.P5770951187850352288

`A007318(a(n-1))*A303877(Δ[n²]-n)` with `a(0)=0`
-/

namespace A188921.P5770951187850352288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007318 (a (n - 1)).toNat * A303877 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A188921.P5770951187850352288

/-! ## A188921.P16074783466891616462

`A000010(-or(n, -2))*A303877(Δ[n²]-n)`
-/

namespace A188921.P16074783466891616462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (-Int.lor (n : ℤ) (-2)).toNat * A303877 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A188921.P16074783466891616462

/-!
# A188933: Continued fraction of sqrt(7)+sqrt(8).

The programs for A188933, there is no canonical definition to state claims against.
-/

/-! ## A188933.P2073105153106302607

`A130773(A239829(n+2)^A110618(n))`
-/

namespace A188933.P2073105153106302607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (SequenceMachineLib.roundAway ((A239829 (n + 2) : ℚ) ^ (A110618 n : ℤ))).toNat

end

end A188933.P2073105153106302607

/-!
# A188934: Decimal expansion of (1+sqrt(17))/4.

The programs for A188934, there is no canonical definition to state claims against.
-/

/-! ## A188934.P10839679960406091719

`A188485(n)-xor(A223134(n), A267872(n))`
-/

namespace A188934.P10839679960406091719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188485 (n + 1) - Int.xor (A223134 n) (A267872 n)

end

end A188934.P10839679960406091719

/-!
# A188939: Decimal expansion of (7+sqrt(33))/4.

The programs for A188939, there is no canonical definition to state claims against.
-/

/-! ## A188939.P1651421047694362304

`A189966(n)+A000007(n)`
-/

namespace A188939.P1651421047694362304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189966 (n + 1) + A000007 n

end

end A188939.P1651421047694362304

/-! ## A188939.P3091330072397890219

`A189966(n)+A000038(n)/2`
-/

namespace A188939.P3091330072397890219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189966 (n + 1) : ℚ) + (A000038 n : ℚ) / 2

end

end A188939.P3091330072397890219

/-! ## A188939.P9619256013316742359

`A028310(n)+A189966(n)-n`
-/

namespace A188939.P9619256013316742359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (A189966 (n + 1) - (n : ℤ))

end

end A188939.P9619256013316742359

/-! ## A188939.P5795775050549455308

`A189966(A028310(n))+A000038(n)`
-/

namespace A188939.P5795775050549455308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189966 ((A028310 n).toNat + 1) + A000038 n

end

end A188939.P5795775050549455308

/-! ## A188939.P10207929830651679416

`or(A189966(A028310(n)), A189966(n))`
-/

namespace A188939.P10207929830651679416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A189966 ((A028310 n).toNat + 1)) (A189966 (n + 1))

end

end A188939.P10207929830651679416

/-! ## A188939.P1152920912944268748

`or(A073424(A054066(n+1)), A189966(n))`
-/

namespace A188939.P1152920912944268748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073424 (A054066 (n + 1)).toNat) (A189966 (n + 1))

end

end A188939.P1152920912944268748

/-! ## A188939.P8117387778125570439

`A189966(n)+A073424(A054066(n+2))`
-/

namespace A188939.P8117387778125570439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189966 (n + 1) + A073424 (A054066 (n + 2)).toNat

end

end A188939.P8117387778125570439

/-! ## A188939.P9665790432731911619

`A189966(n)+A087781(A087784(n+1))`
-/

namespace A188939.P9665790432731911619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189966 (n + 1) + A087781 (A087784 (n + 1)).toNat

end

end A188939.P9665790432731911619

/-! ## A188939.P6118007952221977398

`A189966(n)+A087780(A100057(n+2))`
-/

namespace A188939.P6118007952221977398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189966 (n + 1) + A087780 (A100057 (n + 2)).toNat

end

end A188939.P6118007952221977398

/-! ## A188939.P4090138120586467292

`A189966(n)+A087781(A087785(n+1))`
-/

namespace A188939.P4090138120586467292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189966 (n + 1) + A087781 (A087785 (n + 1)).toNat

end

end A188939.P4090138120586467292

/-!
# A188940: Decimal expansion of (9-sqrt(65))/4.

The programs for A188940, there is no canonical definition to state claims against.
-/

/-! ## A188940.P2831802618988169803

`9-A188734(n+1)`
-/

namespace A188940.P2831802618988169803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A188734 (n + 1 + 1)

end

end A188940.P2831802618988169803

/-!
# A188941: Decimal expansion of (9+sqrt(65))/4.

The programs for A188941, there is no canonical definition to state claims against.
-/

/-! ## A188941.P526915075639959394

`A171417(n)+A000007(n)`
-/

namespace A188941.P526915075639959394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171417 (n + 1) + A000007 n

end

end A188941.P526915075639959394

/-! ## A188941.P4416733211202406701

`A171417(n)+A010054(A010054(n)+n)`
-/

namespace A188941.P4416733211202406701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171417 (n + 1) + A010054 (A010054 n + (n : ℤ)).toNat

end

end A188941.P4416733211202406701

/-! ## A188941.P1622817784578144275

`A171417(n)+A010054(A000124(n))`
-/

namespace A188941.P1622817784578144275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171417 (n + 1) + A010054 (A000124 n).toNat

end

end A188941.P1622817784578144275

/-!
# A188942: Decimal expansion of (7-sqrt(13))/6.

The programs for A188942, there is no canonical definition to state claims against.
-/

/-! ## A188942.P2625613831982290203

`9-A356033(n)`
-/

namespace A188942.P2625613831982290203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A356033 n

end

end A188942.P2625613831982290203

/-!
# A188947: a(n) = n^3 - 2*n^2 + 2*n + 1.

The programs for A188947, the canonical program `A188947.P13044450238604799921` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188947 has offset 1).

The definition of A188947 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^3-2*(n+1)²+2*(n+1)+1` (program `A188947.P13044450238604799921`, by `A188947.P13044450238604799921.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A188947.P7297201882005900217

`n+2+(n+1)*n²`
-/

namespace A188947.P7297201882005900217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + (n + 1) * n ^ 2

end

end A188947.P7297201882005900217

namespace A188947

/-- `n+2+(n+1)*n²` -/
def P7297201882005900217.Spec : Prop :=
  ∀ n, (P7297201882005900217.a n : ℤ) = A188947 (n + 1)

theorem P7297201882005900217.correct : P7297201882005900217.Spec := by
  intro n
  simp only [A188947, Nat.add_sub_cancel, A188947.P7297201882005900217.a, A188947.P13044450238604799921.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A188947

/-! ## A188947.P13044450238604799921

`(n+1)^3-2*(n+1)²+2*(n+1)+1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A188947

/-- `(n+1)^3-2*(n+1)²+2*(n+1)+1` -/
def P13044450238604799921.Spec : Prop :=
  ∀ n, P13044450238604799921.a n = A188947 (n + 1)

theorem P13044450238604799921.correct : P13044450238604799921.Spec := by
  intro n
  simp only [A188947, Nat.add_sub_cancel]

end A188947

/-! ## A188947.P14748959385679109327

`ceil((n+1)/acot(n²+1))`
-/

namespace A188947.P14748959385679109327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / SequenceMachineLib.acot (n ^ 2 + 1 : ℝ)⌉

end

end A188947.P14748959385679109327

namespace A188947

/-- `ceil((n+1)/acot(n²+1))` -/
def P14748959385679109327.Spec : Prop :=
  ∀ n, P14748959385679109327.a n = A188947 (n + 1)

end A188947

/-! ## A188947.P13896022108720293190

`∑[∑[a(n-1)+6]]` with `a(0)=2, a(1)=1, a(2)=8`
-/

namespace A188947.P13896022108720293190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 8] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188947.P13896022108720293190

namespace A188947

/-- `∑[∑[a(n-1)+6]]` -/
def P13896022108720293190.Spec : Prop :=
  ∀ n, (P13896022108720293190.a n : ℤ) = A188947 (n + 1)

end A188947

/-! ## A188947.P17668779202312031463

`floor(n+1+lcm(n+1, n²)+ϕ)`
-/

namespace A188947.P17668779202312031463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) + ((Nat.lcm (n + 1) (n ^ 2) : ℝ) + Real.goldenRatio)⌋

end

end A188947.P17668779202312031463

namespace A188947

/-- `floor(n+1+lcm(n+1, n²)+ϕ)` -/
def P17668779202312031463.Spec : Prop :=
  ∀ n, P17668779202312031463.a n = A188947 (n + 1)

end A188947

/-! ## A188947.P14543441456939153058

`abs(∑[A056106(n)+1]-n)`
-/

namespace A188947.P14543441456939153058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056106 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A188947.P14543441456939153058

namespace A188947

/-- `abs(∑[A056106(n)+1]-n)` -/
def P14543441456939153058.Spec : Prop :=
  ∀ n, P14543441456939153058.a n = A188947 (n + 1)

end A188947

/-! ## A188947.P8186223417040638784

`abs(∑[A049450(n)+2]-n)`
-/

namespace A188947.P8186223417040638784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049450 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A188947.P8186223417040638784

namespace A188947

/-- `abs(∑[A049450(n)+2]-n)` -/
def P8186223417040638784.Spec : Prop :=
  ∀ n, P8186223417040638784.a n = A188947 (n + 1)

end A188947

/-! ## A188947.P11825566978675773988

`abs((n+1)*(A000290(n)+2)-n)`
-/

namespace A188947.P11825566978675773988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * (A000290 n + 2) - (n : ℤ)|

end

end A188947.P11825566978675773988

namespace A188947

/-- `abs((n+1)*(A000290(n)+2)-n)` -/
def P11825566978675773988.Spec : Prop :=
  ∀ n, P11825566978675773988.a n = A188947 (n + 1)

end A188947

/-! ## A188947.P9021510926505821347

`∑[(n-1)*3*n+A004277(n)+1]`
-/

namespace A188947.P9021510926505821347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (3 * n : ℤ) + (A004277 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188947.P9021510926505821347

namespace A188947

/-- `∑[(n-1)*3*n+A004277(n)+1]` -/
def P9021510926505821347.Spec : Prop :=
  ∀ n, P9021510926505821347.a n = A188947 (n + 1)

end A188947

/-! ## A188947.P1640300036052206529

`abs((sqrt(A000537(n))+1)*2*n+2-n)`
-/

namespace A188947.P1640300036052206529
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |(Real.sqrt (A000537 n : ℝ) + 1) * (2 * n : ℝ) + 2 - (n : ℝ)|

end

end A188947.P1640300036052206529

namespace A188947

/-- `abs((sqrt(A000537(n))+1)*2*n+2-n)` -/
def P1640300036052206529.Spec : Prop :=
  ∀ n, P1640300036052206529.a n = (A188947 (n + 1) : ℝ)

end A188947

/-! ## A188947.P5290104714742366257

`abs((n+1)*(A005563(n)-2*n+2)-n)`
-/

namespace A188947.P5290104714742366257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * (A005563 n - (2 * n : ℤ) + 2) - (n : ℤ)|

end

end A188947.P5290104714742366257

namespace A188947

/-- `abs((n+1)*(A005563(n)-2*n+2)-n)` -/
def P5290104714742366257.Spec : Prop :=
  ∀ n, P5290104714742366257.a n = A188947 (n + 1)

end A188947

/-! ## A188947.P905633183145197427

`abs(2*(2*n-n)*A000217(n)+n+2)`
-/

namespace A188947.P905633183145197427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (((2 * n : ℤ) - (n : ℤ)) * A000217 n) + (n + 2 : ℤ)|

end

end A188947.P905633183145197427

namespace A188947

/-- `abs(2*(2*n-n)*A000217(n)+n+2)` -/
def P905633183145197427.Spec : Prop :=
  ∀ n, P905633183145197427.a n = A188947 (n + 1)

end A188947

/-! ## A188947.P8840651678185447208

`((n^3+2)/A000027(n+1)+n)*(n+1)`
-/

namespace A188947.P8840651678185447208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 3 + 2 : ℚ) / (A000027 (n + 1) : ℚ) + (n : ℚ)) * (n + 1 : ℚ)

end

end A188947.P8840651678185447208

namespace A188947

/-- `((n^3+2)/A000027(n+1)+n)*(n+1)` -/
def P8840651678185447208.Spec : Prop :=
  ∀ n, P8840651678185447208.a n = (A188947 (n + 1) : ℚ)

end A188947

/-! ## A188947.P14894281892556338779

`∑[A056105(A028310(n))+n]`
-/

namespace A188947.P14894281892556338779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056105 (A028310 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188947.P14894281892556338779

namespace A188947

/-- `∑[A056105(A028310(n))+n]` -/
def P14894281892556338779.Spec : Prop :=
  ∀ n, P14894281892556338779.a n = A188947 (n + 1)

end A188947

/-! ## A188947.P4436170985239673845

`∑[A054977(n)+A049450(n)]`
-/

namespace A188947.P4436170985239673845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + A049450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188947.P4436170985239673845

namespace A188947

/-- `∑[A054977(n)+A049450(n)]` -/
def P4436170985239673845.Spec : Prop :=
  ∀ n, P4436170985239673845.a n = A188947 (n + 1)

end A188947

/-! ## A188947.P11469726257606038630

`(A069779(n)+A069778(n))/A069778(n)`
-/

namespace A188947.P11469726257606038630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069779 n + A069778 n : ℚ) / (A069778 n : ℚ)

end

end A188947.P11469726257606038630

namespace A188947

/-- `(A069779(n)+A069778(n))/A069778(n)` -/
def P11469726257606038630.Spec : Prop :=
  ∀ n, P11469726257606038630.a n = (A188947 (n + 1) : ℚ)

end A188947

/-! ## A188947.P2357088095120381391

`∑[A004277(n)+Δ[A007531(n)]+1]`
-/

namespace A188947.P2357088095120381391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (f2 (n + 1) - f2 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188947.P2357088095120381391

namespace A188947

/-- `∑[A004277(n)+Δ[A007531(n)]+1]` -/
def P2357088095120381391.Spec : Prop :=
  ∀ n, P2357088095120381391.a n = A188947 (n + 1)

end A188947

/-! ## A188947.P9828517762579558175

`abs(∑[A097921(3*n)+1]-n-n)`
-/

namespace A188947.P9828517762579558175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097921 (3 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) - (n : ℤ)|

end

end A188947.P9828517762579558175

namespace A188947

/-- `abs(∑[A097921(3*n)+1]-n-n)` -/
def P9828517762579558175.Spec : Prop :=
  ∀ n, P9828517762579558175.a n = A188947 (n + 1)

end A188947

/-! ## A188947.P6676132832868401451

`record[(2*n+1)*(A004736(n+1)-1)+2]`
-/

namespace A188947.P6676132832868401451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (A004736 (n + 1) - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188947.P6676132832868401451

namespace A188947

/-- `record[(2*n+1)*(A004736(n+1)-1)+2]` -/
def P6676132832868401451.Spec : Prop :=
  ∀ n, P6676132832868401451.a n = A188947 (n + 1)

end A188947

/-!
# A188948: Values of x such that x^2 + y^2 = 13^n with x and y coprime and 0 < x < y.

The programs for A188948, there is no canonical definition to state claims against.
-/

/-! ## A188948.P8675561287410631017

`A158936(2*n)`
-/

namespace A188948.P8675561287410631017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158936 (2 * n)

end

end A188948.P8675561287410631017

/-! ## A188948.P1604017470228225278

`A158936(A004277(n))-A000007(n)`
-/

namespace A188948.P1604017470228225278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158936 (A004277 n).toNat - A000007 n

end

end A188948.P1604017470228225278

/-! ## A188948.P18421668241301372895

`lcm(A158936(A005843(n)), A165573(n))`
-/

namespace A188948.P18421668241301372895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158936 (A005843 n).toNat) (A165573 n)

end

end A188948.P18421668241301372895

/-! ## A188948.P15129517541705228567

`A158936(A005843(n))+A000038(n+3)`
-/

namespace A188948.P15129517541705228567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158936 (A005843 n).toNat + A000038 (n + 3)

end

end A188948.P15129517541705228567

/-! ## A188948.P14937608016518538438

`A158936(A004277(n))%A037576(n+1)`
-/

namespace A188948.P14937608016518538438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158936 (A004277 n).toNat) (A037576 (n + 1))

end

end A188948.P14937608016518538438

/-! ## A188948.P4719481759616598482

`A158936(A004277(n))%A158966(n)`
-/

namespace A188948.P4719481759616598482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158936 (A004277 n).toNat) (A158966 n)

end

end A188948.P4719481759616598482

/-!
# A188949: Values of y such that x^2 + y^2 = 13^n with x and y coprime and 0 < x < y.

The programs for A188949, there is no canonical definition to state claims against.
-/

/-! ## A188949.P15664073907351088420

`A158936(Δ[n²])`
-/

namespace A188949.P15664073907351088420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158936 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A188949.P15664073907351088420

/-! ## A188949.P2650390160739776702

`record[A158936(xor(1, n))]`
-/

namespace A188949.P2650390160739776702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158936 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188949.P2650390160739776702

/-! ## A188949.P4344737870417589121

`record[A158936(n^(n%2))]`
-/

namespace A188949.P4344737870417589121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158936 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188949.P4344737870417589121

/-! ## A188949.P4029227127277895982

`record[A158936(n^and(1, n))]`
-/

namespace A188949.P4029227127277895982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158936 (n ^ Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188949.P4029227127277895982

/-! ## A188949.P14016728065800120057

`A158936(2*n+1)+A000007(n+1)`
-/

namespace A188949.P14016728065800120057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158936 (2 * n + 1) + A000007 (n + 1)

end

end A188949.P14016728065800120057

/-!
# A188951: Number of perfect powers (A001597) < 2^n.

The programs for A188951, there is no canonical definition to state claims against.
-/

/-! ## A188951.P9091111831335291847

`∑[A377435(abs(1-n))]`
-/

namespace A188951.P9091111831335291847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377435 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188951.P9091111831335291847

/-! ## A188951.P17669665603549184995

`char[1]+A070228(n)-1`
-/

namespace A188951.P17669665603549184995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A070228 n - 1)

end

end A188951.P17669665603549184995

/-! ## A188951.P8737181850931970975

`A070228(C(n, n²)+n)-1`
-/

namespace A188951.P8737181850931970975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070228 (Nat.choose n (n ^ 2) + n) - 1

end

end A188951.P8737181850931970975

/-! ## A188951.P7171525062675297889

`A070228(A254667(n))-1`
-/

namespace A188951.P7171525062675297889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070228 (A254667 n).toNat - 1

end

end A188951.P7171525062675297889

/-! ## A188951.P14178121791028131378

`A070228(n)-A060576(n)`
-/

namespace A188951.P14178121791028131378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070228 n - A060576 n

end

end A188951.P14178121791028131378

/-! ## A188951.P1452613439532617753

`A070228(n)-char[A014085(n)]`
-/

namespace A188951.P1452613439532617753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070228 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A188951.P1452613439532617753

/-! ## A188951.P9378457042811292752

`A070228(A000007(C(n, 2))+n)-1`
-/

namespace A188951.P9378457042811292752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070228 (A000007 (Nat.choose n 2) + (n : ℤ)).toNat - 1

end

end A188951.P9378457042811292752

/-! ## A188951.P2581261688292359801

`char[1]-(A007318(∑[n])-A070228(n))`
-/

namespace A188951.P2581261688292359801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (A007318 (∑ j ∈ Finset.range (n + 1), f2 j) - A070228 n)

end

end A188951.P2581261688292359801

/-!
# A188952: Number of n X n array permutations with each element moved no more than a city block distance of two.

The programs for A188952, there is no canonical definition to state claims against.
-/

/-! ## A188952.P4059055970478875224

`A188958(∑[4*n]+1)`
-/

namespace A188952.P4059055970478875224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188958 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188952.P4059055970478875224

/-!
# A188953: Number of nX2 array permutations with each element moved no more than a city block distance of two.

The programs for A188953, there is no canonical definition to state claims against.
-/

/-! ## A188953.P17007905753798568496

`A188958(∑[n+1]+2)`
-/

namespace A188953.P17007905753798568496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188958 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A188953.P17007905753798568496

/-!
# A188954: Number of nX3 array permutations with each element moved no more than a city block distance of two.

The programs for A188954, there is no canonical definition to state claims against.
-/

/-! ## A188954.P5985201261259039231

`A188958(∑[n+2]+4)`
-/

namespace A188954.P5985201261259039231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188958 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A188954.P5985201261259039231

/-! ## A188954.P3531234125752583570

`record[A188958(A167614(∑{e}[n+1, #]+1))]`
-/

namespace A188954.P3531234125752583570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188958 (A167614 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188954.P3531234125752583570

/-! ## A188954.P14969943231573795278

`lcm((n+1)/∏{p}[n+1, #], A188958(A167614(n+1)))`
-/

namespace A188954.P14969943231573795278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A188958 (A167614 (n + 1)).toNat)

end

end A188954.P14969943231573795278

/-! ## A188954.P18023331406680959170

`A344420(n)+A188958(A167614(n+1))`
-/

namespace A188954.P18023331406680959170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 n + A188958 (A167614 (n + 1)).toNat

end

end A188954.P18023331406680959170

/-! ## A188954.P14209144929106018276

`A188958(A167614(n+1))*A214956(n+1)`
-/

namespace A188954.P14209144929106018276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188958 (A167614 (n + 1)).toNat * A214956 (n + 1)

end

end A188954.P14209144929106018276

/-!
# A188955: Number of nX4 array permutations with each element moved no more than a city block distance of two.

The programs for A188955, there is no canonical definition to state claims against.
-/

/-! ## A188955.P6599669175670022153

`A188958(A167614(n+2)+1)`
-/

namespace A188955.P6599669175670022153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188958 (A167614 (n + 2) + 1).toNat

end

end A188955.P6599669175670022153

/-! ## A188955.P11011973387778467438

`A188958(Δ[A023545(n+1)-n²])`
-/

namespace A188955.P11011973387778467438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188958 (f1 (n + 1) - f1 n).toNat

end

end A188955.P11011973387778467438

/-! ## A188955.P10817557270224925752

`A188958(A055998(n+2))`
-/

namespace A188955.P10817557270224925752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188958 (A055998 (n + 2)).toNat

end

end A188955.P10817557270224925752

/-!
# A188956: Number of nX5 array permutations with each element moved no more than a city block distance of two.

The programs for A188956, there is no canonical definition to state claims against.
-/

/-! ## A188956.P1609972697678954760

`A188958(A374005(n+1))`
-/

namespace A188956.P1609972697678954760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188958 (A374005 (n + 1)).toNat

end

end A188956.P1609972697678954760

/-!
# A188957: 

The programs for A188957, there is no canonical definition to state claims against.
-/

/-! ## A188957.P12240159363544222020

`A188958(A167499(n+4)+1)`
-/

namespace A188957.P12240159363544222020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188958 (A167499 (n + 4) + 1).toNat

end

end A188957.P12240159363544222020

/-!
# A188959: Number of nX2 array permutations with each element moved by a city block distance of no more than three.

The programs for A188959, there is no canonical definition to state claims against.
-/

/-! ## A188959.P6894566778704119603

`A188962(∑[n+1]+2)`
-/

namespace A188959.P6894566778704119603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188962 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A188959.P6894566778704119603

/-! ## A188959.P17796525618431577366

`record[A119830(n)*A188962(n+3)]`
-/

namespace A188959.P17796525618431577366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119830 n * A188962 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188959.P17796525618431577366

/-! ## A188959.P8207273258316080171

`record[gcd(A025581(n), A188962(n+3))]`
-/

namespace A188959.P8207273258316080171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A188962 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188959.P8207273258316080171

/-! ## A188959.P3374862551726413206

`A188962(A373662(n+1))+A181735(n+1)`
-/

namespace A188959.P3374862551726413206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188962 (A373662 (n + 1)).toNat + A181735 (n + 1)

end

end A188959.P3374862551726413206

/-!
# A188960: Number of nX3 array permutations with each element moved by a city block distance of no more than three.

The programs for A188960, there is no canonical definition to state claims against.
-/

/-! ## A188960.P792533246905833884

`A188962(∑[n+2]+4)`
-/

namespace A188960.P792533246905833884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188962 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A188960.P792533246905833884

/-! ## A188960.P14317456047880268424

`lcm(2, A188962(A167614(n+1)))`
-/

namespace A188960.P14317456047880268424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A188962 (A167614 (n + 1)).toNat)

end

end A188960.P14317456047880268424

/-! ## A188960.P2372964356036094079

`A308954(n)+A188962(A167614(n+1))`
-/

namespace A188960.P2372964356036094079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308954 n + A188962 (A167614 (n + 1)).toNat

end

end A188960.P2372964356036094079

/-!
# A188961: Number of nX4 array permutations with each element moved by a city block distance of no more than three.

The programs for A188961, there is no canonical definition to state claims against.
-/

/-! ## A188961.P5694945620492052446

`A188962(∑[n+4]+3)`
-/

namespace A188961.P5694945620492052446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188962 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A188961.P5694945620492052446

/-!
# A188962: T(n,k)=Number of nXk array permutations with each element moved by a city block distance of no more than three.

The programs for A188962, there is no canonical definition to state claims against.
-/

/-! ## A188962.P5335283310412460411

`(A131923(n)%p?[∑[2^n+2]])!`
-/

namespace A188962.P5335283310412460411
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (A131923 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)).toNat

end

end A188962.P5335283310412460411

/-! ## A188962.P11303712008970290229

`A331084(∑[A287211(n)])!`
-/

namespace A188962.P11303712008970290229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287211 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A331084 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A188962.P11303712008970290229

/-! ## A188962.P14138936635929758240

`A342739(record[A342730(n)])!`
-/

namespace A188962.P14138936635929758240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342730 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A342739 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A188962.P14138936635929758240

/-! ## A188962.P3676189437386276640

`A003991(A032563(n+1))!`
-/

namespace A188962.P3676189437386276640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A003991 (A032563 (n + 1)).toNat).toNat

end

end A188962.P3676189437386276640

/-! ## A188962.P377786072269148473

`A000120(A187807(n+1))!`
-/

namespace A188962.P377786072269148473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000120 (A187807 (n + 1)).toNat).toNat

end

end A188962.P377786072269148473

/-!
# A188963: Number of nX2 array permutations with each element moved and moved by a city block distance of no more than three.

The programs for A188963, there is no canonical definition to state claims against.
-/

/-! ## A188963.P9322906549646014296

`A188966(∑[n+1]+2)`
-/

namespace A188963.P9322906549646014296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188966 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A188963.P9322906549646014296

/-! ## A188963.P12058919250983007450

`record[A188966(n+3)/A055133(n)]`
-/

namespace A188963.P12058919250983007450
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188966 (n + 3) : ℚ) / (A055133 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188963.P12058919250983007450

/-! ## A188963.P1092321732039708063

`record[gcd(A188966(n+1), A259776(n))]`
-/

namespace A188963.P1092321732039708063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A188966 (n + 1)) (A259776 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188963.P1092321732039708063

/-!
# A188964: Number of nX3 array permutations with each element moved and moved by a city block distance of no more than three.

The programs for A188964, there is no canonical definition to state claims against.
-/

/-! ## A188964.P4189537527232379997

`A188966(∑[n+2]+4)`
-/

namespace A188964.P4189537527232379997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188966 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A188964.P4189537527232379997

/-! ## A188964.P10692572141320915528

`round(1/∑{d}[n+1, 1/#])*A188966(A167614(n+1))`
-/

namespace A188964.P10692572141320915528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (∑ d ∈ Nat.divisors (f1 n), 1 / (d : ℚ))) * A188966 (A167614 (n + 1)).toNat

end

end A188964.P10692572141320915528

/-! ## A188964.P4620869848176757789

`A188966(A167614(n+1))+A056965(n)`
-/

namespace A188964.P4620869848176757789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188966 (A167614 (n + 1)).toNat + A056965 n

end

end A188964.P4620869848176757789

/-!
# A188965: Number of nX4 array permutations with each element moved and moved by a city block distance of no more than three.

The programs for A188965, there is no canonical definition to state claims against.
-/

/-! ## A188965.P8970486355508924372

`A188966(A020752(n+1))`
-/

namespace A188965.P8970486355508924372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188966 (A020752 (n + 1)).toNat

end

end A188965.P8970486355508924372

/-!
# A188966: T(n,k)=Number of nXk array permutations with each element moved and moved by a city block distance of no more than three.

The programs for A188966, there is no canonical definition to state claims against.
-/

/-! ## A188966.P7600946663235112813

`A364068(A339490(n+1))`
-/

namespace A188966.P7600946663235112813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364068 (A339490 (n + 1)).toNat

end

end A188966.P7600946663235112813

/-! ## A188966.P5621310871949740285

`A000166(A003991(n+1)*A251078(n))`
-/

namespace A188966.P5621310871949740285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (A003991 (n + 1) * A251078 n).toNat

end

end A188966.P5621310871949740285

/-! ## A188966.P9194574962420350119

`A000166(A003991(n+1)%A000615(n))`
-/

namespace A188966.P9194574962420350119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (Int.tmod (A003991 (n + 1)) (A000615 n)).toNat

end

end A188966.P9194574962420350119

/-! ## A188966.P1752570029793980721

`A259783(A003991(n+1))%A349739(n)`
-/

namespace A188966.P1752570029793980721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259783 (A003991 (n + 1)).toNat) (A349739 n)

end

end A188966.P1752570029793980721

/-!
# A188967: Zero-one sequence based on (3n-2): a(A016777(k))=a(k); a(A007494(k))=1-a(k); a(1)=0.

The programs for A188967, there is no canonical definition to state claims against.
-/

/-! ## A188967.P17642377214573687293

`char[A188969(n+1)-1]`
-/

namespace A188967.P17642377214573687293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188969 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188967.P17642377214573687293

/-! ## A188967.P13079234986929678059

`Δ[A257998(A028310(n))]`
-/

namespace A188967.P13079234986929678059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257998 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188967.P13079234986929678059

/-! ## A188967.P7331159916895723908

`A257998(n+1)-A257998(A028310(n))`
-/

namespace A188967.P7331159916895723908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257998 (n + 1) - A257998 (A028310 n).toNat

end

end A188967.P7331159916895723908

/-! ## A188967.P7026102319001946228

`A257998(n+1)-A257998(A065033(n)+A004526(n))`
-/

namespace A188967.P7026102319001946228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257998 (n + 1) - A257998 (A065033 n + A004526 n).toNat

end

end A188967.P7026102319001946228

/-! ## A188967.P2595605489426921537

`Δ[A257998(gcd(n, A008458(n)))]`
-/

namespace A188967.P2595605489426921537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257998 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188967.P2595605489426921537

/-! ## A188967.P2879320448441177314

`Δ[A257998(A065033(n)+A004526(n))]`
-/

namespace A188967.P2879320448441177314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257998 (A065033 n + A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188967.P2879320448441177314

/-! ## A188967.P13135064514338198924

`A257998(n+1)-A257998(A065033(2*n))`
-/

namespace A188967.P13135064514338198924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257998 (n + 1) - A257998 (A065033 (2 * n)).toNat

end

end A188967.P13135064514338198924

/-! ## A188967.P2832500505230187006

`Δ[A257998(A065033(2*n))]`
-/

namespace A188967.P2832500505230187006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257998 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188967.P2832500505230187006

/-! ## A188967.P8820195972079228945

`Δ[A257998(A123108(2*n))]`
-/

namespace A188967.P8820195972079228945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257998 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188967.P8820195972079228945

/-! ## A188967.P2056650232745989685

`Δ[A257998(A003056(A000124(n)))]`
-/

namespace A188967.P2056650232745989685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257998 (A003056 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188967.P2056650232745989685

/-! ## A188967.P14257343913195858463

`A000035(A126792(A051176(n)))`
-/

namespace A188967.P14257343913195858463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A126792 (A051176 n).toNat).toNat

end

end A188967.P14257343913195858463

/-! ## A188967.P5417721607564956919

`A126792(A030102(A030102(n)))%2`
-/

namespace A188967.P5417721607564956919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126792 (A030102 (A030102 n).toNat).toNat) 2

end

end A188967.P5417721607564956919

/-! ## A188967.P10930134428640314085

`and(A000337(n), A126792(A051176(n)))`
-/

namespace A188967.P10930134428640314085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000337 n) (A126792 (A051176 n).toNat)

end

end A188967.P10930134428640314085

/-! ## A188967.P10898689140235056869

`and(A006483(n), A126792(A051176(n)))`
-/

namespace A188967.P10898689140235056869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006483 n) (A126792 (A051176 n).toNat)

end

end A188967.P10898689140235056869

/-! ## A188967.P14702230579378517320

`and(A057427(n), A126792(A051176(n)))`
-/

namespace A188967.P14702230579378517320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A126792 (A051176 n).toNat)

end

end A188967.P14702230579378517320

/-! ## A188967.P8445244407089832483

`A126792(n)%2`
-/

namespace A188967.P8445244407089832483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126792 n) 2

end

end A188967.P8445244407089832483

/-! ## A188967.P7903835245724519723

`A000035(A126792(n))`
-/

namespace A188967.P7903835245724519723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A126792 n).toNat

end

end A188967.P7903835245724519723

/-! ## A188967.P5620595229657510779

`and(A000051(n), A126792(n))`
-/

namespace A188967.P5620595229657510779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 n) (A126792 n)

end

end A188967.P5620595229657510779

/-! ## A188967.P11920308474708222477

`and(A000337(n), A126792(n))`
-/

namespace A188967.P11920308474708222477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000337 n) (A126792 n)

end

end A188967.P11920308474708222477

/-! ## A188967.P12384299492684013071

`and(A001576(n), A126792(n))`
-/

namespace A188967.P12384299492684013071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001576 n) (A126792 n)

end

end A188967.P12384299492684013071

/-!
# A188968: Positions of 0 in A188967; complement of A188968.

The programs for A188968, there is no canonical definition to state claims against.
-/

/-! ## A188968.P6538080409483946250

`eq[0, A188967(n+1)]+1`
-/

namespace A188968.P6538080409483946250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188967 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A188968.P6538080409483946250

/-! ## A188968.P1861404976072308376

`record[n+1-A000217(n*A188967(n+1))]`
-/

namespace A188968.P1861404976072308376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000217 ((n : ℤ) * A188967 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188968.P1861404976072308376

/-! ## A188968.P5769049544130512755

`record[n+1-A047842(n)*A188967(n+1)]`
-/

namespace A188968.P5769049544130512755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A047842 n * A188967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188968.P5769049544130512755

/-! ## A188968.P5948155199344623363

`A000720(p?[A188967(n+1)+A000040(n+1)])`
-/

namespace A188968.P5948155199344623363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188967 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A188968.P5948155199344623363

/-! ## A188968.P10630833490753583185

`eq[1, A188967(A065033(n)+n)]`
-/

namespace A188968.P10630833490753583185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188967 (A065033 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188968.P10630833490753583185

/-! ## A188968.P16952813688431999901

`record[(n+1)*A188967(A001651(n+1)+1)]`
-/

namespace A188968.P16952813688431999901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A188967 (A001651 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188968.P16952813688431999901

/-! ## A188968.P14937464602124365478

`eq[1, A188967(A065033(3*n))]`
-/

namespace A188968.P14937464602124365478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188967 (A065033 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188968.P14937464602124365478

/-! ## A188968.P5136478531326488579

`record[n+1-A051424(n)*A188967(n+1)]`
-/

namespace A188968.P5136478531326488579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A051424 n * A188967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188968.P5136478531326488579

/-!
# A188969: Positions of 1 in A188967; complement of A188968.

The programs for A188969, there is no canonical definition to state claims against.
-/

/-! ## A188969.P4277308095903662896

`filter[n+1, A188967(#)]`
-/

namespace A188969.P4277308095903662896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188967 (f1 j) = 1) n)

end

end A188969.P4277308095903662896

/-! ## A188969.P16890547665855209479

`eq[1, A188967(n+1)]+1`
-/

namespace A188969.P16890547665855209479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188967 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A188969.P16890547665855209479

/-! ## A188969.P13709404251569065812

`record[(n+2)*A188967(n+2)]`
-/

namespace A188969.P13709404251569065812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A188967 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188969.P13709404251569065812

/-! ## A188969.P963999458363828923

`eq[1, A188967(A028310(n))]`
-/

namespace A188969.P963999458363828923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188967 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188969.P963999458363828923

/-! ## A188969.P14934690467684328336

`A344180(eq[1, A188967(A344180(n))])`
-/

namespace A188969.P14934690467684328336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188967 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188969.P14934690467684328336

/-! ## A188969.P1242957972662315154

`A000720(p?[A000040(n+1)*A188967(n+1)])`
-/

namespace A188969.P1242957972662315154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A188967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A188969.P1242957972662315154

/-! ## A188969.P6339202303108455170

`eq[1, A188967(A065033(2*n))]`
-/

namespace A188969.P6339202303108455170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188967 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188969.P6339202303108455170

/-! ## A188969.P5559585556700832047

`record[A029635(A188967(n+1)+A000217(n))]`
-/

namespace A188969.P5559585556700832047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (A188967 (n + 1) + A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188969.P5559585556700832047

/-! ## A188969.P6904622610520986644

`eq[1, and(1, A126792(n))]+1`
-/

namespace A188969.P6904622610520986644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A126792 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A188969.P6904622610520986644

/-! ## A188969.P9144372584454825937

`eq[1, A087810(A126792(n+1)²)]+2`
-/

namespace A188969.P9144372584454825937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087810 (A126792 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A188969.P9144372584454825937

/-!
# A188970: Zero-one sequence based on (4n-3): a(A016813(k))=a(k); a(A004772(k))=1-a(k); a(1)=0.

The programs for A188970, there is no canonical definition to state claims against.
-/

/-! ## A188970.P11316549706133169919

`char[A188972(n+1)-1]`
-/

namespace A188970.P11316549706133169919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188972 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188970.P11316549706133169919

/-! ## A188970.P13487589303539635499

`char[comp[A188971(n+1)-1]]`
-/

namespace A188970.P13487589303539635499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188971 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A188970.P13487589303539635499

/-! ## A188970.P745214925239473707

`char[A260196(n)+A188972(n+1)]`
-/

namespace A188970.P745214925239473707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A188972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188970.P745214925239473707

/-! ## A188970.P721537847705565398

`char[abs(A188972(1-A001489(n))-1)]`
-/

namespace A188970.P721537847705565398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A188972 (1 - A001489 n).toNat - 1|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188970.P721537847705565398

/-! ## A188970.P17775653618486453569

`and(ceil(sin(n)²), A310189(A094739(n+1)))`
-/

namespace A188970.P17775653618486453569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌈Real.sin (n : ℝ) ^ 2⌉ (A310189 (A094739 (n + 1)).toNat)

end

end A188970.P17775653618486453569

/-!
# A188971: Positions of 0 in A188970; complement of A188972.

The programs for A188971, there is no canonical definition to state claims against.
-/

/-! ## A188971.P16435137558250494423

`eq[0, A188970(n+1)]+1`
-/

namespace A188971.P16435137558250494423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188970 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A188971.P16435137558250494423

/-! ## A188971.P16542833914487410026

`eq[char[A188972(n+1)], A000007(n)]`
-/

namespace A188971.P16542833914487410026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188972 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A188971.P16542833914487410026

/-! ## A188971.P12511288472352349520

`eq[char[A188972(n+1)], A000038(n)]`
-/

namespace A188971.P12511288472352349520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188972 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A188971.P12511288472352349520

/-! ## A188971.P9366539879935745969

`eq[A000007(n), A188970(A028310(n))]`
-/

namespace A188971.P9366539879935745969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188970 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188971.P9366539879935745969

/-! ## A188971.P13377128917654233344

`eq[A000038(n), A188970(A028310(n))]`
-/

namespace A188971.P13377128917654233344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188970 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188971.P13377128917654233344

/-!
# A188972: Positions of 1 in A188970; complement of A188971.

The programs for A188972, there is no canonical definition to state claims against.
-/

/-! ## A188972.P18208737876347523915

`filter[n+1, A188970(#)]`
-/

namespace A188972.P18208737876347523915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188970 (f1 j) = 1) n)

end

end A188972.P18208737876347523915

/-! ## A188972.P16033338885836986698

`eq[1, A188970(n+1)]+1`
-/

namespace A188972.P16033338885836986698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188970 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A188972.P16033338885836986698

/-! ## A188972.P11322210490275796412

`lt[0, A188970(A028310(n))]`
-/

namespace A188972.P11322210490275796412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188970 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A188972.P11322210490275796412

/-! ## A188972.P8097297916830424763

`A020725(lt[0, A188970(n+1)])`
-/

namespace A188972.P8097297916830424763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A188972.P8097297916830424763

/-! ## A188972.P552388376683707506

`A020725(eq[1, A188970(n+1)])`
-/

namespace A188972.P552388376683707506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188972.P552388376683707506

/-! ## A188972.P12408120073400267748

`eq[1, A188970(A000007(n)+n)]`
-/

namespace A188972.P12408120073400267748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188970 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188972.P12408120073400267748

/-! ## A188972.P7932404990440032817

`eq[char[A188971(n+1)], A000007(n)]`
-/

namespace A188972.P7932404990440032817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188971 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A188972.P7932404990440032817

/-! ## A188972.P1590615999557532866

`eq[char[A188971(n+1)], A010051(2*(n+1))]`
-/

namespace A188972.P1590615999557532866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188971 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A188972.P1590615999557532866

/-!
# A188973: Zero-one sequence based on squares: a(A000290(k))=a(k); a(A000037(k))=1-a(k); a(1)=0.

The programs for A188973, there is no canonical definition to state claims against.
-/

/-! ## A188973.P1320096824730306132

`char[A188975(n+1)-1]`
-/

namespace A188973.P1320096824730306132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188975 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188973.P1320096824730306132

/-! ## A188973.P5193406106791917491

`and(1, A260740(4*n+3))`
-/

namespace A188973.P5193406106791917491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A260740 (4 * n + 3))

end

end A188973.P5193406106791917491

/-! ## A188973.P9429489618378401804

`a(A257024(n))` with `a(0)=0, a(1)=1`
-/

namespace A188973.P9429489618378401804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A257024 n).toNat

end

end A188973.P9429489618378401804

/-! ## A188973.P11653149217121916306

`and(A004970(n), A257024(n))`
-/

namespace A188973.P11653149217121916306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004970 n) (A257024 n)

end

end A188973.P11653149217121916306

/-! ## A188973.P7952543678281318632

`and(A007664(n), A257024(n))`
-/

namespace A188973.P7952543678281318632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007664 n) (A257024 n)

end

end A188973.P7952543678281318632

/-! ## A188973.P11026608808132047423

`and(A049691(n), A257024(n))`
-/

namespace A188973.P11026608808132047423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049691 n) (A257024 n)

end

end A188973.P11026608808132047423

/-! ## A188973.P16947165424092054413

`and(A051132(n), A257024(n))`
-/

namespace A188973.P16947165424092054413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051132 n) (A257024 n)

end

end A188973.P16947165424092054413

/-! ## A188973.P4502528457361190214

`and(A053456(n), A257024(n))`
-/

namespace A188973.P4502528457361190214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053456 n) (A257024 n)

end

end A188973.P4502528457361190214

/-! ## A188973.P5963045247680040084

`and(A054977(n), A257024(n))`
-/

namespace A188973.P5963045247680040084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A257024 n)

end

end A188973.P5963045247680040084

/-! ## A188973.P8713788140794303189

`and(A057427(n), A257024(n))`
-/

namespace A188973.P8713788140794303189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A257024 n)

end

end A188973.P8713788140794303189

/-! ## A188973.P12174839540046148433

`and(A061351(n), A257024(n))`
-/

namespace A188973.P12174839540046148433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061351 n) (A257024 n)

end

end A188973.P12174839540046148433

/-! ## A188973.P6056277214957352991

`and(A000350(n+1), A257024(n))`
-/

namespace A188973.P6056277214957352991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000350 (n + 1)) (A257024 n)

end

end A188973.P6056277214957352991

/-! ## A188973.P3121407610159666555

`and(A000448(n+1), A257024(n))`
-/

namespace A188973.P3121407610159666555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000448 (n + 1)) (A257024 n)

end

end A188973.P3121407610159666555

/-! ## A188973.P15029507391773833368

`and(A001248(n+1), A257024(n))`
-/

namespace A188973.P15029507391773833368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001248 (n + 1)) (A257024 n)

end

end A188973.P15029507391773833368

/-! ## A188973.P4016059918340827012

`and(A002313(n+1), A257024(n))`
-/

namespace A188973.P4016059918340827012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002313 (n + 1)) (A257024 n)

end

end A188973.P4016059918340827012

/-! ## A188973.P3092826982957838394

`and(A030481(n+1), A257024(n))`
-/

namespace A188973.P3092826982957838394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A030481 (n + 1)) (A257024 n)

end

end A188973.P3092826982957838394

/-! ## A188973.P11286960703457979084

`and(A179645(n+1), A257024(n))`
-/

namespace A188973.P11286960703457979084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A179645 (n + 1)) (A257024 n)

end

end A188973.P11286960703457979084

/-! ## A188973.P10139416241195795371

`and(A257024(n), A273230(n+1))`
-/

namespace A188973.P10139416241195795371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A257024 n) (A273230 (n + 1))

end

end A188973.P10139416241195795371

/-! ## A188973.P7317165040548941849

`and(A257024(n), A335598(n+1))`
-/

namespace A188973.P7317165040548941849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A257024 n) (A335598 (n + 1))

end

end A188973.P7317165040548941849

/-!
# A188974: Positions of 0 in A188973; complement of A188975.

The programs for A188974, there is no canonical definition to state claims against.
-/

/-! ## A188974.P7352230028054118009

`comp[A188975(n+1)-1]+1`
-/

namespace A188974.P7352230028054118009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188975 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188974.P7352230028054118009

/-! ## A188974.P11655503302131498457

`eq[0, A188973(n+1)]+1`
-/

namespace A188974.P11655503302131498457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A188974.P11655503302131498457

/-! ## A188974.P15046336192667275410

`record[(1-A188973(n+1))*A000027(n+1)]`
-/

namespace A188974.P15046336192667275410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A188973 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188974.P15046336192667275410

/-! ## A188974.P9761590570374215734

`record[n+1-A000217(n*A188973(n+1))]`
-/

namespace A188974.P9761590570374215734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000217 ((n : ℤ) * A188973 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188974.P9761590570374215734

/-! ## A188974.P15307629951588975829

`record[n+1-A005187(n*A188973(n+1))]`
-/

namespace A188974.P15307629951588975829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A005187 ((n : ℤ) * A188973 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188974.P15307629951588975829

/-! ## A188974.P13527439398258930407

`record[A005408(n)-n-n*A188973(n+1)]`
-/

namespace A188974.P13527439398258930407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (n : ℤ) - (n : ℤ) * A188973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188974.P13527439398258930407

/-! ## A188974.P7094857566282458606

`record[A008619(A005843(n))-n*A188973(n+1)]`
-/

namespace A188974.P7094857566282458606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A005843 n).toNat - (n : ℤ) * A188973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188974.P7094857566282458606

/-! ## A188974.P1416630962041166455

`record[A028242(2*n)-n*A188973(n+1)]`
-/

namespace A188974.P1416630962041166455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * n) - (n : ℤ) * A188973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188974.P1416630962041166455

/-! ## A188974.P14244555743782694741

`record[A008619(A005408(n))-n*A188973(n+1)]`
-/

namespace A188974.P14244555743782694741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A005408 n).toNat - (n : ℤ) * A188973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188974.P14244555743782694741

/-! ## A188974.P5241361056355390733

`eq[A000007(n), A188973(A123108(2*n))]`
-/

namespace A188974.P5241361056355390733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188973 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188974.P5241361056355390733

/-! ## A188974.P8589570598619838231

`eq[A000038(n), A188973(A123108(2*n))]`
-/

namespace A188974.P8589570598619838231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188973 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188974.P8589570598619838231

/-! ## A188974.P897190879359037967

`record[A008620(A008585(n))-n*A188973(n+1)]`
-/

namespace A188974.P897190879359037967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A008585 n).toNat - (n : ℤ) * A188973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188974.P897190879359037967

/-!
# A188975: Positions of 1 in A188973; complement of A188974.

The programs for A188975, there is no canonical definition to state claims against.
-/

/-! ## A188975.P3211777092433743133

`filter[n+1, A188973(#)]`
-/

namespace A188975.P3211777092433743133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188973 (f1 j) = 1) n)

end

end A188975.P3211777092433743133

/-! ## A188975.P14481640344949527876

`eq[1, A188973(n+1)]+1`
-/

namespace A188975.P14481640344949527876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A188975.P14481640344949527876

/-! ## A188975.P13048404109844193386

`record[(n+2)*A188973(n+2)]`
-/

namespace A188975.P13048404109844193386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A188973 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188975.P13048404109844193386

/-! ## A188975.P4672975741395689677

`eq[1, A188973(A028310(n))]`
-/

namespace A188975.P4672975741395689677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188973 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188975.P4672975741395689677

/-! ## A188975.P9125001697088283296

`eq[1, A188973(A000007(n)+n)]`
-/

namespace A188975.P9125001697088283296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188973 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188975.P9125001697088283296

/-! ## A188975.P14710170350408845911

`eq[1, A188973(A065033(2*n))]`
-/

namespace A188975.P14710170350408845911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188973 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188975.P14710170350408845911

/-! ## A188975.P9550893345651189771

`eq[1, A188973(A123108(2*n))]`
-/

namespace A188975.P9550893345651189771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188973 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188975.P9550893345651189771

/-! ## A188975.P12341439614656136539

`record[A188973(A269225(n))*A269225(n)]`
-/

namespace A188975.P12341439614656136539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188973 (A269225 n).toNat * A269225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188975.P12341439614656136539

/-! ## A188975.P240704960986777088

`eq[1, A257024(n+1)%2]+2`
-/

namespace A188975.P240704960986777088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257024 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A188975.P240704960986777088

/-!
# A188976: Number of nX2 array permutations with each element moved but moved no more than a city block distance of two.

The programs for A188976, there is no canonical definition to state claims against.
-/

/-! ## A188976.P9914847112363145227

`A188981(∑[n+1]+2)`
-/

namespace A188976.P9914847112363145227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188981 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A188976.P9914847112363145227

/-! ## A188976.P14160233100398695901

`record[gcd(A188981(n+1), A259776(n))]`
-/

namespace A188976.P14160233100398695901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A188981 (n + 1)) (A259776 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188976.P14160233100398695901

/-! ## A188976.P3743944908406909237

`gcd(A100910(n), A188981(A133263(n+1)))`
-/

namespace A188976.P3743944908406909237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A100910 n) (A188981 (A133263 (n + 1)).toNat)

end

end A188976.P3743944908406909237

/-! ## A188976.P11684080947818332298

`A188981(A133263(n+1))+A100910(n+1)`
-/

namespace A188976.P11684080947818332298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188981 (A133263 (n + 1)).toNat + A100910 (n + 1)

end

end A188976.P11684080947818332298

/-! ## A188976.P16485732401748844214

`A188981(A133263(n+1))%A251661(n+1)`
-/

namespace A188976.P16485732401748844214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188981 (A133263 (n + 1)).toNat) (A251661 (n + 1))

end

end A188976.P16485732401748844214

/-!
# A188977: Number of nX3 array permutations with each element moved but moved no more than a city block distance of two.

The programs for A188977, there is no canonical definition to state claims against.
-/

/-! ## A188977.P8269395986979730860

`A188981(∑[n+2]+4)`
-/

namespace A188977.P8269395986979730860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188981 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A188977.P8269395986979730860

/-! ## A188977.P13633160812110869256

`A235943(n)+A188981(A167614(n+1))`
-/

namespace A188977.P13633160812110869256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235943 n + A188981 (A167614 (n + 1)).toNat

end

end A188977.P13633160812110869256

/-! ## A188977.P10046311794799498343

`A188981(A167614(n+1))*A219924(n)`
-/

namespace A188977.P10046311794799498343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188981 (A167614 (n + 1)).toNat * A219924 n

end

end A188977.P10046311794799498343

/-! ## A188977.P17413590761083146811

`A188981(A167614(n+1))+A004216(n+1)`
-/

namespace A188977.P17413590761083146811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188981 (A167614 (n + 1)).toNat + A004216 (n + 1)

end

end A188977.P17413590761083146811

/-! ## A188977.P10595944856570656531

`A188981(A167614(n+1))+A056457(n+1)`
-/

namespace A188977.P10595944856570656531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188981 (A167614 (n + 1)).toNat + A056457 (n + 1)

end

end A188977.P10595944856570656531

/-!
# A188978: Number of nX4 array permutations with each element moved but moved no more than a city block distance of two.

The programs for A188978, there is no canonical definition to state claims against.
-/

/-! ## A188978.P10040407625049614752

`A188981(∑[n+3]+7)`
-/

namespace A188978.P10040407625049614752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188981 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A188978.P10040407625049614752

/-!
# A188979: Number of nX5 array permutations with each element moved but moved no more than a city block distance of two.

The programs for A188979, there is no canonical definition to state claims against.
-/

/-! ## A188979.P11921476079266436635

`A188981(A374005(n+1))`
-/

namespace A188979.P11921476079266436635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188981 (A374005 (n + 1)).toNat

end

end A188979.P11921476079266436635

/-!
# A188981: T(n,k)=Number of nXk array permutations with each element moved but moved no more than a city block distance of two.

The programs for A188981, there is no canonical definition to state claims against.
-/

/-! ## A188981.P9825659083268597529

`A077882(A003506(n+1))%A290606(n+1)`
-/

namespace A188981.P9825659083268597529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077882 (A003506 (n + 1)).toNat) (A290606 (n + 1))

end

end A188981.P9825659083268597529

/-! ## A188981.P6886428428283075802

`A221192(n+1)%A019555(A078241(n+1)+2)`
-/

namespace A188981.P6886428428283075802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221192 (n + 1)) (A019555 (A078241 (n + 1) + 2).toNat)

end

end A188981.P6886428428283075802

/-!
# A188982: Even numbers x such that x^2 + y^2 = 13^n with x and y coprime.

The programs for A188982, there is no canonical definition to state claims against.
-/

/-! ## A188982.P6568621421835213183

`record[A038608(A158936(n))]`
-/

namespace A188982.P6568621421835213183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A158936 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188982.P6568621421835213183

/-! ## A188982.P17243973632494579137

`filter[A158936(n), A059841(#)]`
-/

namespace A188982.P17243973632494579137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A188982.P17243973632494579137

/-!
# A188983: Odd numbers y such that x^2 + y^2 = 13^n with x and y coprime.

The programs for A188983, there is no canonical definition to state claims against.
-/

/-! ## A188983.P12859289782414869040

`abs(A121622(n)/A121631(n))*A121631(n)`
-/

namespace A188983.P12859289782414869040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A121622 n : ℚ) / (A121631 n : ℚ)| * (A121631 n : ℚ)

end

end A188983.P12859289782414869040

/-! ## A188983.P3524016668826645779

`abs(A121622(n))%A121631(n+3)`
-/

namespace A188983.P3524016668826645779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A121622 n| (A121631 (n + 3))

end

end A188983.P3524016668826645779

/-! ## A188983.P9075854505331129827

`gcd(A121622(n)²², A121622(n))`
-/

namespace A188983.P9075854505331129827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((A121622 n ^ 2) ^ 2) (A121622 n)

end

end A188983.P9075854505331129827

/-! ## A188983.P8414199853617156595

`A015206(A115255(n))+abs(A121622(n))`
-/

namespace A188983.P8414199853617156595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015206 (A115255 n).toNat + |A121622 n|

end

end A188983.P8414199853617156595

/-!
# A188984: Numerators of coefficients R_n arising in a study of the stationary Maxwell-Born-Infeld field equations of electromagnetism.

The programs for A188984, there is no canonical definition to state claims against.
-/

/-! ## A188984.P16845935369807332541

`A188718(n)/A001316(n)`
-/

namespace A188984.P16845935369807332541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188718 n : ℚ) / (A001316 n : ℚ)

end

end A188984.P16845935369807332541

/-! ## A188984.P9220061990562870985

`A188718(n)/sqrt(A102376(n))`
-/

namespace A188984.P9220061990562870985
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A188718 n : ℝ) / Real.sqrt (A102376 n : ℝ)

end

end A188984.P9220061990562870985

/-! ## A188984.P1693804792215141603

`A188718(n)/(A038573(n)+1)`
-/

namespace A188984.P1693804792215141603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188718 n : ℚ) / (A038573 n + 1 : ℚ)

end

end A188984.P1693804792215141603

/-! ## A188984.P15507172213305182148

`A188718(n)/A199344(A038573(n))`
-/

namespace A188984.P15507172213305182148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188718 n : ℚ) / (A199344 (A038573 n).toNat : ℚ)

end

end A188984.P15507172213305182148

/-! ## A188984.P8323030373933662931

`A188718(n)/A290987(A000120(n))`
-/

namespace A188984.P8323030373933662931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188718 n : ℚ) / (A290987 (A000120 n).toNat : ℚ)

end

end A188984.P8323030373933662931

/-!
# A188985: Number of n X n binary arrays without the pattern 0 0 1 antidiagonally or horizontally.

The programs for A188985, there is no canonical definition to state claims against.
-/

/-! ## A188985.P14516356469724167870

`A188992((n+1)²+n²)`
-/

namespace A188985.P14516356469724167870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 ((n + 1) ^ 2 + n ^ 2)

end

end A188985.P14516356469724167870

/-! ## A188985.P13288988465911800217

`record[A003982(n)*A188992(n+1)]`
-/

namespace A188985.P13288988465911800217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A188992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188985.P13288988465911800217

/-! ## A188985.P11832802137525087764

`record[gcd(A114327(n), A188992(n+1))]`
-/

namespace A188985.P11832802137525087764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A188992 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188985.P11832802137525087764

/-! ## A188985.P15813047255862536999

`gcd(A000038(n), A188992(A001844(n)))`
-/

namespace A188985.P15813047255862536999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A188992 (A001844 n).toNat)

end

end A188985.P15813047255862536999

/-! ## A188985.P15937233907977725894

`lcm(A033999(n), A188992(A001844(n)))`
-/

namespace A188985.P15937233907977725894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A188992 (A001844 n).toNat)

end

end A188985.P15937233907977725894

/-!
# A188986: Number of n X 3 binary arrays without the pattern 0 0 1 antidiagonally or horizontally.

The programs for A188986, there is no canonical definition to state claims against.
-/

/-! ## A188986.P3462997664565532228

`A188992(∑[n+3]+1)`
-/

namespace A188986.P3462997664565532228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188986.P3462997664565532228

/-! ## A188986.P3468847920783702671

`A188992(A052905(n)+3)/A056624(A066060(n+1))`
-/

namespace A188986.P3468847920783702671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188992 (A052905 n + 3).toNat : ℚ) / (A056624 (A066060 (n + 1)).toNat : ℚ)

end

end A188986.P3468847920783702671

/-!
# A188987: Number of n X 4 binary arrays without the pattern 0 0 1 antidiagonally or horizontally.

The programs for A188987, there is no canonical definition to state claims against.
-/

/-! ## A188987.P14679281492844093792

`A188992(A055998(n+2))`
-/

namespace A188987.P14679281492844093792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (A055998 (n + 2)).toNat

end

end A188987.P14679281492844093792

/-! ## A188987.P10608375374571137418

`A188992(A155212(n)+5)`
-/

namespace A188987.P10608375374571137418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (A155212 n + 5).toNat

end

end A188987.P10608375374571137418

/-! ## A188987.P17593722135879424471

`A188992(A056000(n)+7)`
-/

namespace A188987.P17593722135879424471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (A056000 n + 7).toNat

end

end A188987.P17593722135879424471

/-! ## A188987.P3518416116097025649

`A188992(Δ[A034857(n+1)])`
-/

namespace A188987.P3518416116097025649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (f1 (n + 1) - f1 n).toNat

end

end A188987.P3518416116097025649

/-! ## A188987.P11989260336304633611

`A188992(A052905(n+1)+2)`
-/

namespace A188987.P11989260336304633611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (A052905 (n + 1) + 2).toNat

end

end A188987.P11989260336304633611

/-!
# A188988: Number of n X 5 binary arrays without the pattern 0 0 1 antidiagonally or horizontally.

The programs for A188988, there is no canonical definition to state claims against.
-/

/-! ## A188988.P4401178579123284959

`A188992(Δ[A264443(n)])`
-/

namespace A188988.P4401178579123284959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (f1 (n + 1) - f1 n).toNat

end

end A188988.P4401178579123284959

/-! ## A188988.P18326321219618623179

`A188992(A046691(n+3))`
-/

namespace A188988.P18326321219618623179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (A046691 (n + 3)).toNat

end

end A188988.P18326321219618623179

/-! ## A188988.P8020947694227534053

`A188992(eq[4, A193592(n)])`
-/

namespace A188988.P8020947694227534053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188988.P8020947694227534053

/-! ## A188988.P12452729221285734164

`A188992(Δ[A023545(n+1)])`
-/

namespace A188988.P12452729221285734164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (f1 (n + 1) - f1 n).toNat

end

end A188988.P12452729221285734164

/-! ## A188988.P5977053857280190094

`A188992(A246172(n+1)+10)`
-/

namespace A188988.P5977053857280190094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (A246172 (n + 1) + 10).toNat

end

end A188988.P5977053857280190094

/-!
# A188989: Number of nX6 binary arrays without the pattern 0 0 1 antidiagonally or horizontally.

The programs for A188989, there is no canonical definition to state claims against.
-/

/-! ## A188989.P7841804560346283725

`A188992(A052905(n+3))`
-/

namespace A188989.P7841804560346283725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (A052905 (n + 3)).toNat

end

end A188989.P7841804560346283725

/-! ## A188989.P17459987917628188544

`A188992(eq[3, A219347(n)])`
-/

namespace A188989.P17459987917628188544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188989.P17459987917628188544

/-! ## A188989.P10701648339288423064

`A188992(eq[5, A193592(n)])`
-/

namespace A188989.P10701648339288423064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188989.P10701648339288423064

/-! ## A188989.P8647891681463685398

`A188992(A055999(n+3)+1)`
-/

namespace A188989.P8647891681463685398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (A055999 (n + 3) + 1).toNat

end

end A188989.P8647891681463685398

/-! ## A188989.P5351353561537612748

`A188992(eq[8, A185782(n+1)])`
-/

namespace A188989.P5351353561537612748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188989.P5351353561537612748

/-!
# A188990: Number of nX7 binary arrays without the pattern 0 0 1 antidiagonally or horizontally.

The programs for A188990, there is no canonical definition to state claims against.
-/

/-! ## A188990.P7566781092096463766

`A188992(eq[4, A219347(n)])`
-/

namespace A188990.P7566781092096463766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188990.P7566781092096463766

/-! ## A188990.P7270409218584918579

`A188992(eq[6, A193592(n)])`
-/

namespace A188990.P7270409218584918579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188990.P7270409218584918579

/-! ## A188990.P218428978711193792

`A188992(Δ[A023551(n+2)])`
-/

namespace A188990.P218428978711193792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (f1 (n + 1) - f1 n).toNat

end

end A188990.P218428978711193792

/-! ## A188990.P14377346187890167544

`A188992(eq[32, A057728(n+1)])`
-/

namespace A188990.P14377346187890167544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188990.P14377346187890167544

/-! ## A188990.P6557818499529582936

`A188992(eq[7, A200370(n+1)])`
-/

namespace A188990.P6557818499529582936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188990.P6557818499529582936

/-!
# A188991: Number of nX8 binary arrays without the pattern 0 0 1 antidiagonally or horizontally.

The programs for A188991, there is no canonical definition to state claims against.
-/

/-! ## A188991.P3886043751102784917

`A188992(eq[5, A219347(n)])`
-/

namespace A188991.P3886043751102784917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188991.P3886043751102784917

/-! ## A188991.P1708951909602000309

`A188992(eq[7, A193592(n)])`
-/

namespace A188991.P1708951909602000309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188991.P1708951909602000309

/-! ## A188991.P12834002268813773246

`A188992(A052905(n+5)-2)`
-/

namespace A188991.P12834002268813773246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (A052905 (n + 5) - 2).toNat

end

end A188991.P12834002268813773246

/-! ## A188991.P11350061276307725824

`A188992(A055998(n+6)-4)`
-/

namespace A188991.P11350061276307725824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (A055998 (n + 6) - 4).toNat

end

end A188991.P11350061276307725824

/-! ## A188991.P11777286633738574420

`A188992(eq[12, A185782(n+1)])`
-/

namespace A188991.P11777286633738574420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188991.P11777286633738574420

/-!
# A188992: T(n,k)=Number of nXk binary arrays without the pattern 0 0 1 antidiagonally or horizontally.

The programs for A188992, there is no canonical definition to state claims against.
-/

/-! ## A188992.P14199078994407278549

`A332442(A299135(n+1))+A189264(n+1)`
-/

namespace A188992.P14199078994407278549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332442 (A299135 (n + 1)).toNat + A189264 (n + 1)

end

end A188992.P14199078994407278549

/-! ## A188992.P17778783245008656313

`∏{e}[3^(n+1), A189264(#)]`
-/

namespace A188992.P17778783245008656313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A189264 (Nat.factorization (f1 n) p)

end

end A188992.P17778783245008656313

/-! ## A188992.P219224461384796364

`A189264(A084193(∑[n]))`
-/

namespace A188992.P219224461384796364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A188992.P219224461384796364

/-! ## A188992.P377935228608930933

`A189264(A004896(n+2))`
-/

namespace A188992.P377935228608930933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A004896 (n + 2)).toNat

end

end A188992.P377935228608930933

/-! ## A188992.P6812050547937843800

`A189264(A004907(n+2))`
-/

namespace A188992.P6812050547937843800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189264 (A004907 (n + 2)).toNat

end

end A188992.P6812050547937843800

/-!
# A188993: Number of 3Xn binary arrays without the pattern 0 0 1 antidiagonally or horizontally.

The programs for A188993, there is no canonical definition to state claims against.
-/

/-! ## A188993.P1722897192335056603

`A188992(∑[n+2]+4)`
-/

namespace A188993.P1722897192335056603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A188993.P1722897192335056603

/-! ## A188993.P9451533509939107783

`A188992(C(n+3, 2)+3)%A188994(n+1)`
-/

namespace A188993.P9451533509939107783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188992 (Nat.choose (n + 3) 2 + 3)) (A188994 (n + 1))

end

end A188993.P9451533509939107783

/-! ## A188993.P13616913802248487376

`C(A000010(n+1), n)!*A188992(C(n+3, 2)+3)`
-/

namespace A188993.P13616913802248487376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.choose (A000010 (n + 1)).toNat n) : ℤ) * A188992 (Nat.choose (n + 3) 2 + 3)

end

end A188993.P13616913802248487376

/-! ## A188993.P2741180441484069174

`lcm(A000034(n), A188992(A167614(n+1)))`
-/

namespace A188993.P2741180441484069174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A188992 (A167614 (n + 1)).toNat)

end

end A188993.P2741180441484069174

/-! ## A188993.P17225040773839975530

`A188992(A167499(n)+n)+A000007(n+1)`
-/

namespace A188993.P17225040773839975530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (A167499 n + (n : ℤ)).toNat + A000007 (n + 1)

end

end A188993.P17225040773839975530

/-!
# A188994: Number of 4 X n binary arrays without the pattern 0 0 1 antidiagonally or horizontally.

The programs for A188994, there is no canonical definition to state claims against.
-/

/-! ## A188994.P2225908328118824900

`A188992(A145018(n+4))`
-/

namespace A188994.P2225908328118824900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (A145018 (n + 4)).toNat

end

end A188994.P2225908328118824900

/-! ## A188994.P11873240627545977016

`A188992(A052905(n)+9)`
-/

namespace A188994.P11873240627545977016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (A052905 n + 9).toNat

end

end A188994.P11873240627545977016

/-! ## A188994.P16719790198847415867

`A188992(A055999(n)+10)`
-/

namespace A188994.P16719790198847415867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (A055999 n + 10).toNat

end

end A188994.P16719790198847415867

/-! ## A188994.P9919225060163539636

`A188992(A167614(n+2)+1)`
-/

namespace A188994.P9919225060163539636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (A167614 (n + 2) + 1).toNat

end

end A188994.P9919225060163539636

/-! ## A188994.P4036712060683073074

`A188992(A166136(n+2)-2)`
-/

namespace A188994.P4036712060683073074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (A166136 (n + 2) - 2).toNat

end

end A188994.P4036712060683073074

/-!
# A188995: Number of 5Xn binary arrays without the pattern 0 0 1 antidiagonally or horizontally.

The programs for A188995, there is no canonical definition to state claims against.
-/

/-! ## A188995.P7303208684563226969

`A188992(A167499(n+3))`
-/

namespace A188995.P7303208684563226969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (A167499 (n + 3)).toNat

end

end A188995.P7303208684563226969

/-! ## A188995.P6629302257300921313

`A188992(A155212(n)+13)`
-/

namespace A188995.P6629302257300921313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (A155212 n + 13).toNat

end

end A188995.P6629302257300921313

/-! ## A188995.P15470979686968736401

`A188992(A056000(n)+15)`
-/

namespace A188995.P15470979686968736401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (A056000 n + 15).toNat

end

end A188995.P15470979686968736401

/-! ## A188995.P536743268387168852

`A188992(A166136(n+3)-1)`
-/

namespace A188995.P536743268387168852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (A166136 (n + 3) - 1).toNat

end

end A188995.P536743268387168852

/-! ## A188995.P1788524195247002917

`A188992(eq[6, A131818(n+1)])`
-/

namespace A188995.P1788524195247002917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188995.P1788524195247002917

/-!
# A188996: Number of 6Xn binary arrays without the pattern 0 0 1 antidiagonally or horizontally.

The programs for A188996, there is no canonical definition to state claims against.
-/

/-! ## A188996.P12286968929655910405

`A188992(A166136(n+4))`
-/

namespace A188996.P12286968929655910405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (A166136 (n + 4)).toNat

end

end A188996.P12286968929655910405

/-! ## A188996.P13430571522918146118

`A188992(A056115(n)+21)`
-/

namespace A188996.P13430571522918146118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (A056115 n + 21).toNat

end

end A188996.P13430571522918146118

/-! ## A188996.P2338754601552227007

`A188992(A167614(n+4)+3)`
-/

namespace A188996.P2338754601552227007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (A167614 (n + 4) + 3).toNat

end

end A188996.P2338754601552227007

/-! ## A188996.P6828287365333287778

`A188992(A046691(n+3)+10)`
-/

namespace A188996.P6828287365333287778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (A046691 (n + 3) + 10).toNat

end

end A188996.P6828287365333287778

/-! ## A188996.P501395184644437026

`A188992(A246172(n+1)+20)`
-/

namespace A188996.P501395184644437026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (A246172 (n + 1) + 20).toNat

end

end A188996.P501395184644437026

/-!
# A188997: Number of 7Xn binary arrays without the pattern 0 0 1 antidiagonally or horizontally.

The programs for A188997, there is no canonical definition to state claims against.
-/

/-! ## A188997.P12777324767947251412

`A188992(A056119(n)+28)`
-/

namespace A188997.P12777324767947251412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (A056119 n + 28).toNat

end

end A188997.P12777324767947251412

/-! ## A188997.P8121157353178531026

`A188992(eq[11, A066657(n)])`
-/

namespace A188997.P8121157353178531026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188997.P8121157353178531026

/-! ## A188997.P13771286731214615536

`A188992(A167499(n+5)+2)`
-/

namespace A188997.P13771286731214615536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (A167499 (n + 5) + 2).toNat

end

end A188997.P13771286731214615536

/-! ## A188997.P14507135036002360284

`A188992(A000124(n+6)+6)`
-/

namespace A188997.P14507135036002360284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (A000124 (n + 6) + 6).toNat

end

end A188997.P14507135036002360284

/-! ## A188997.P6441184692985416440

`A188992(eq[8, A131818(n+1)])`
-/

namespace A188997.P6441184692985416440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188997.P6441184692985416440

/-!
# A188998: Number of 8Xn binary arrays without the pattern 0 0 1 antidiagonally or horizontally.

The programs for A188998, there is no canonical definition to state claims against.
-/

/-! ## A188998.P14146270230427050527

`A188992(eq[13, A066657(n)])`
-/

namespace A188998.P14146270230427050527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188998.P14146270230427050527

/-! ## A188998.P16403335028096037603

`A188992(A000217(n+7)+8)`
-/

namespace A188998.P16403335028096037603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (A000217 (n + 7) + 8).toNat

end

end A188998.P16403335028096037603

/-! ## A188998.P11751224885325230821

`A188992(eq[7, A002262(n)]+1)`
-/

namespace A188998.P11751224885325230821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A188998.P11751224885325230821

/-! ## A188998.P5658014768008382898

`A188992(eq[9, A131818(n+1)])`
-/

namespace A188998.P5658014768008382898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188992 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188998.P5658014768008382898

/-!
# A188999: Bi-unitary sigma: sum of the bi-unitary divisors of n.

The programs for A188999, there is no canonical definition to state claims against.
-/

/-! ## A188999.P2735083118682725639

`A000203(n+1)-A319072(n+1)`
-/

namespace A188999.P2735083118682725639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A319072 (n + 1)

end

end A188999.P2735083118682725639

/-! ## A188999.P12393021811933300247

`A331970(n+1)+1+n`
-/

namespace A188999.P12393021811933300247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331970 (n + 1) + 1 + (n : ℤ)

end

end A188999.P12393021811933300247

/-! ## A188999.P15889869202505677366

`A331970(-xor(n, -1))-xor(n, -1)`
-/

namespace A188999.P15889869202505677366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331970 (-Int.xor (n : ℤ) (-1)).toNat - Int.xor (n : ℤ) (-1)

end

end A188999.P15889869202505677366

/-! ## A188999.P809290857714919555

`∑[Δ[A331970(A028310(n))]+1]`
-/

namespace A188999.P809290857714919555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331970 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188999.P809290857714919555

/-! ## A188999.P13636126989957826800

`Δ[A160664(n)]-A319072(n+1)`
-/

namespace A188999.P13636126989957826800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A319072 (n + 1)

end

end A188999.P13636126989957826800

/-! ## A188999.P17794902920453313408

`abs(Δ[A330725(n)])-A319072(n+1)`
-/

namespace A188999.P17794902920453313408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A319072 (n + 1)

end

end A188999.P17794902920453313408

/-! ## A188999.P8388370700804447744

`abs(A143348(n+1))-A319072(n+1)`
-/

namespace A188999.P8388370700804447744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (n + 1)| - A319072 (n + 1)

end

end A188999.P8388370700804447744

/-! ## A188999.P14221938943276161837

`sqrt(A072861(n+1))-A319072(n+1)`
-/

namespace A188999.P14221938943276161837
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) - (A319072 (n + 1) : ℝ)

end

end A188999.P14221938943276161837

/-! ## A188999.P4224029745768051938

`A074400(n+1)/2-A319072(n+1)`
-/

namespace A188999.P4224029745768051938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A319072 (n + 1) : ℚ)

end

end A188999.P4224029745768051938

/-! ## A188999.P15911132745535850840

`A001065(n+1)+n+1-A319072(n+1)`
-/

namespace A188999.P15911132745535850840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + ((n + 1 : ℤ) - A319072 (n + 1))

end

end A188999.P15911132745535850840

/-! ## A188999.P17860560385686669080

`A245092(A005408(n))-A319072(n+1)`
-/

namespace A188999.P17860560385686669080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A005408 n).toNat - A319072 (n + 1)

end

end A188999.P17860560385686669080

/-! ## A188999.P2632120090156012474

`A326065(A103517(n))-A319072(n+1)`
-/

namespace A188999.P2632120090156012474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (A103517 n).toNat - A319072 (n + 1)

end

end A188999.P2632120090156012474

/-! ## A188999.P15628633454127260214

`A331970(A008619(2*n))-xor(n, -1)`
-/

namespace A188999.P15628633454127260214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331970 (A008619 (2 * n)).toNat - Int.xor (n : ℤ) (-1)

end

end A188999.P15628633454127260214

/-! ## A188999.P8097543111431430036

`A004525(A074400(n+1))-A319072(n+1)`
-/

namespace A188999.P8097543111431430036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A074400 (n + 1)).toNat - A319072 (n + 1)

end

end A188999.P8097543111431430036

/-! ## A188999.P12682451416497722318

`A127057(A000124(n))-A319072(n+1)`
-/

namespace A188999.P12682451416497722318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (A000124 n).toNat - A319072 (n + 1)

end

end A188999.P12682451416497722318

