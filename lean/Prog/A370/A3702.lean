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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
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
# A370200: a(n) = numerator((n!)^2/(2*(n-2)!*n^n)).

The programs for A370200, there is no canonical definition to state claims against.
-/

/-! ## A370200.P11327849968900455071

`(n+1)*A048996(A000400(n))`
-/

namespace A370200.P11327849968900455071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A048996 (A000400 n).toNat

end

end A370200.P11327849968900455071

/-!
# A370201: a(n) = denominator((n!)^2/(2*(n-2)!*n^n)).

The programs for A370201, there is no canonical definition to state claims against.
-/

/-! ## A370201.P9695382546909344467

`(n+2)*A263442(A379459(n))`
-/

namespace A370201.P9695382546909344467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A263442 (A379459 n).toNat

end

end A370201.P9695382546909344467

/-!
# A370202: a(n) = a(n-3) + a(n-2) + gcd(a(n-2), a(n-1)) with a(1) = a(2) = a(3) = 1.

The programs for A370202, the canonical program `A370202.P12763407552917264075` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370202 has offset 1).

The definition of A370202 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-3)+a(n-2)+gcd(a(n-2), a(n-1))` (program `A370202.P12763407552917264075`, by `A370202.P12763407552917264075.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A370202.P12763407552917264075

`a(n-3)+a(n-2)+gcd(a(n-2), a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A370202

/-- `a(n-3)+a(n-2)+gcd(a(n-2), a(n-1))` -/
def P12763407552917264075.Spec : Prop :=
  ∀ n, (P12763407552917264075.a n : ℤ) = A370202 (n + 1)

theorem P12763407552917264075.correct : P12763407552917264075.Spec := by
  intro n
  simp only [A370202, Nat.add_sub_cancel]

end A370202

/-!
# A370204: a(n) is the smallest number k for which the length of the central extent of width 0 in the symmetric representation of sigma, SRS(k), equals 2*n and is -1 if there is no such extent of length 2*n.

The programs for A370204, there is no canonical definition to state claims against.
-/

/-! ## A370204.P13464593234541694170

`A008619(A013632(2*(n+1)))*A151800(2*(n+1))`
-/

namespace A370204.P13464593234541694170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A013632 (2 * (n + 1))).toNat * A151800 (2 * (n + 1))

end

end A370204.P13464593234541694170

/-! ## A370204.P9766853254812615542

`A016014(A263875(n+1))*A123252(n+1)`
-/

namespace A370204.P9766853254812615542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (A263875 (n + 1)).toNat * A123252 (n + 1)

end

end A370204.P9766853254812615542

/-!
# A370205: Numbers j whose symmetric representation of sigma(j) consists of the single unimodal width pattern 121.

The programs for A370205, there is no canonical definition to state claims against.
-/

/-! ## A370205.P3313318109757771178

`eq[A098985(n), A163169(n)]`
-/

namespace A370205.P3313318109757771178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098985 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163169 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370205.P3313318109757771178

/-! ## A370205.P15223308544528837253

`filter[A038550(n+1), A179527(#)]`
-/

namespace A370205.P15223308544528837253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179527 (f1 j).toNat = 1) n)

end

end A370205.P15223308544528837253

/-! ## A370205.P13244909982380571023

`filter[A038550(n+1), A210455(#)]`
-/

namespace A370205.P13244909982380571023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A210455 (f1 j).toNat = 1) n)

end

end A370205.P13244909982380571023

/-! ## A370205.P1717133541891240015

`filter[A100368(n+1), A179527(#)]`
-/

namespace A370205.P1717133541891240015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179527 (f1 j).toNat = 1) n)

end

end A370205.P1717133541891240015

/-! ## A370205.P9883759576056751253

`filter[A100368(n+1), A210455(#)]`
-/

namespace A370205.P9883759576056751253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A210455 (f1 j).toNat = 1) n)

end

end A370205.P9883759576056751253

/-! ## A370205.P12444658051740535910

`filter[A038550(n+1), A294936(#)]`
-/

namespace A370205.P12444658051740535910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A370205.P12444658051740535910

/-! ## A370205.P6363298185769610776

`filter[A001284(n+1), A340371(#)]`
-/

namespace A370205.P6363298185769610776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A370205.P6363298185769610776

/-! ## A370205.P14070776913614842017

`filter[A005279(n+1), A340371(#)]`
-/

namespace A370205.P14070776913614842017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A370205.P14070776913614842017

/-! ## A370205.P14579003694175452467

`filter[A005835(n+1), A340371(#)]`
-/

namespace A370205.P14579003694175452467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A370205.P14579003694175452467

/-! ## A370205.P6620417592155355168

`filter[A001284(n+1), A353670(#)]`
-/

namespace A370205.P6620417592155355168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A370205.P6620417592155355168

/-!
# A370206: Numbers j whose symmetric representation of sigma(j) consists of two copies of unimodal width pattern 121 separated by 0.

The programs for A370206, there is no canonical definition to state claims against.
-/

/-! ## A370206.P7620427106411825019

`filter[A347063(n+1), A348327(#)]`
-/

namespace A370206.P7620427106411825019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A370206.P7620427106411825019

/-! ## A370206.P4597657294792002502

`filter[A349794(n+1), A379969(#)]`
-/

namespace A370206.P4597657294792002502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A370206.P4597657294792002502

/-! ## A370206.P15255127389962604643

`∩[A036349(n+1), A244894(n+1)]`
-/

namespace A370206.P15255127389962604643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370206.P15255127389962604643

/-! ## A370206.P4070016518092428926

`∩[A131651(n+1), A244894(n+1)]`
-/

namespace A370206.P4070016518092428926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370206.P4070016518092428926

/-! ## A370206.P12889742284130556058

`∩[A036349(n+1), A392096(n+1)]`
-/

namespace A370206.P12889742284130556058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370206.P12889742284130556058

/-! ## A370206.P17831381673408739661

`∩[A063762(n+1), A392096(n+1)]`
-/

namespace A370206.P17831381673408739661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370206.P17831381673408739661

/-! ## A370206.P10380582048368772634

`∩[A063763(n+1), A392096(n+1)]`
-/

namespace A370206.P10380582048368772634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370206.P10380582048368772634

/-! ## A370206.P9571382041353590925

`∩[A064052(n+1), A392096(n+1)]`
-/

namespace A370206.P9571382041353590925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370206.P9571382041353590925

/-! ## A370206.P12021871610562543222

`∩[A074946(n+1), A392096(n+1)]`
-/

namespace A370206.P12021871610562543222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370206.P12021871610562543222

/-! ## A370206.P75141741204173907

`∩[A078779(n+1), A392096(n+1)]`
-/

namespace A370206.P75141741204173907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370206.P75141741204173907

/-!
# A370210: Number of chordless cycles in the n X n black bishop graph.

The programs for A370210, there is no canonical definition to state claims against.
-/

/-! ## A370210.P2137718767786064962

`A006881(A317339(n))%A000142(n)`
-/

namespace A370210.P2137718767786064962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006881 (A317339 n).toNat) (A000142 n)

end

end A370210.P2137718767786064962

/-!
# A370212: Coefficient of x^n in the expansion of ( (1+x) / (1-x^3) )^n.

The programs for A370212, there is no canonical definition to state claims against.
-/

/-! ## A370212.P5298947614769502598

`A198295(∑[4*n])`
-/

namespace A370212.P5298947614769502598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198295 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A370212.P5298947614769502598

/-! ## A370212.P1943370397921524651

`A091703(A198295((n+1)*2*n))`
-/

namespace A370212.P1943370397921524651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091703 (A198295 ((n + 1) * (2 * n))).toNat

end

end A370212.P1943370397921524651

/-! ## A370212.P3915572972747137220

`A184402(A215340(n))`
-/

namespace A370212.P3915572972747137220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184402 (A215340 n).toNat

end

end A370212.P3915572972747137220

/-!
# A370215: Coefficient of x^n in the expansion of ( (1+x)^2 / (1-x^3)^2 )^n.

The programs for A370215, there is no canonical definition to state claims against.
-/

/-! ## A370215.P15082273747476203706

`A198295(A062728(n))`
-/

namespace A370215.P15082273747476203706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198295 (A062728 n).toNat

end

end A370215.P15082273747476203706

/-! ## A370215.P2295972889504487820

`A198295(A195162(2*n)-n*(n+1)/2)`
-/

namespace A370215.P2295972889504487820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198295 (SequenceMachineLib.roundAway ((A195162 (2 * n) : ℚ) - (n : ℚ) * ((n + 1 : ℚ) / 2))).toNat

end

end A370215.P2295972889504487820

/-! ## A370215.P16487837154162342111

`A198295(A062708(n+1)-A016789(n))`
-/

namespace A370215.P16487837154162342111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198295 (A062708 (n + 1) - A016789 n).toNat

end

end A370215.P16487837154162342111

/-!
# A370216: Coefficient of x^n in the expansion of ( (1+x) / (1-x^3)^3 )^n.

The programs for A370216, there is no canonical definition to state claims against.
-/

/-! ## A370216.P7990256886723909737

`A259273(n)-A032741(A110154(n))`
-/

namespace A370216.P7990256886723909737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259273 n - A032741 (A110154 n).toNat

end

end A370216.P7990256886723909737

/-!
# A370217: Coefficient of x^n in the expansion of ( (1+x)^2 / (1-x^3)^3 )^n.

The programs for A370217, there is no canonical definition to state claims against.
-/

/-! ## A370217.P899020898665465848

`A289496(A081188(n)+3)`
-/

namespace A370217.P899020898665465848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289496 (A081188 n + 3).toNat

end

end A370217.P899020898665465848

/-! ## A370217.P15500515311772324977

`A363226(A181391(n+1)+A003238(2*(n+2)))`
-/

namespace A370217.P15500515311772324977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363226 (A181391 (n + 1) + A003238 (2 * (n + 2))).toNat

end

end A370217.P15500515311772324977

/-!
# A370218: Coefficient of x^n in the expansion of ( (1+x)^3 / (1-x^3)^3 )^n.

The programs for A370218, there is no canonical definition to state claims against.
-/

/-! ## A370218.P13839374382633083910

`A198295(A139277(n))`
-/

namespace A370218.P13839374382633083910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198295 (A139277 n).toNat

end

end A370218.P13839374382633083910

/-! ## A370218.P15458390636848038341

`A198295(n*A016813(2*n+1))`
-/

namespace A370218.P15458390636848038341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198295 ((n : ℤ) * A016813 (2 * n + 1)).toNat

end

end A370218.P15458390636848038341

/-! ## A370218.P9600713805067845521

`A198295(A000384(2*n+1)-(n+1))`
-/

namespace A370218.P9600713805067845521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198295 (A000384 (2 * n + 1) - (n + 1 : ℤ)).toNat

end

end A370218.P9600713805067845521

/-!
# A370219: Irregular triangle T(n,k) read by rows: row n lists run-length encoding d_k values (see comments) for the properly nested string of parentheses encoded by A063171(n).

The programs for A370219, there is no canonical definition to state claims against.
-/

/-! ## A370219.P12322367090819009100

`1-Δ[A370222(n+1)]`
-/

namespace A370219.P12322367090819009100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A370219.P12322367090819009100

/-! ## A370219.P17539603724768482361

`1-Δ[A285738(A234741(n+1))%A120698(n+1)]`
-/

namespace A370219.P17539603724768482361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285738 (A234741 (n + 1)).toNat) (A120698 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A370219.P17539603724768482361

/-! ## A370219.P2879826746581215697

`1-Δ[A083911(A238550(3*(n+2))+A084089(n+1))]`
-/

namespace A370219.P2879826746581215697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083911 (A238550 (3 * (n + 2)) + A084089 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A370219.P2879826746581215697

/-! ## A370219.P12202198934284340881

`Δ[n-(A179801(A130761(n+1)-A339303(n+1))+1)]`
-/

namespace A370219.P12202198934284340881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A179801 (A130761 (n + 1) - A339303 (n + 1)).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370219.P12202198934284340881

/-! ## A370219.P319048229620996226

`Δ[n-(A281116(A100287(n+1)^A001221(n+1))+1)]`
-/

namespace A370219.P319048229620996226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A281116 (SequenceMachineLib.roundAway ((A100287 (n + 1) : ℚ) ^ (A001221 (n + 1) : ℤ))).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370219.P319048229620996226

/-!
# A370220: Irregular triangle T(n,k) read by rows: row n lists the positions of left parentheses for the properly nested string of parentheses encoded by A063171(n).

The programs for A370220, there is no canonical definition to state claims against.
-/

/-! ## A370220.P1235457111284163956

`A333627(A181666(n+2))`
-/

namespace A370220.P1235457111284163956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (A181666 (n + 2)).toNat

end

end A370220.P1235457111284163956

/-! ## A370220.P13129986872001908775

`A001222(A001197(2*(n+1))-A018804(n+1))`
-/

namespace A370220.P13129986872001908775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001197 (2 * (n + 1)) - A018804 (n + 1)).toNat

end

end A370220.P13129986872001908775

/-! ## A370220.P9137131828280512115

`A140061(A165416(n+1)%A270890(3*n+5))`
-/

namespace A370220.P9137131828280512115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140061 (Int.tmod (A165416 (n + 1)) (A270890 (3 * n + 5))).toNat

end

end A370220.P9137131828280512115

/-!
# A370221: Irregular triangle T(n,k) read by rows: row n lists the values encoding a permutation (see comments) related to the properly nested string of parentheses encoded by A063171(n).

The programs for A370221, there is no canonical definition to state claims against.
-/

/-! ## A370221.P9178837392242406815

`A030298(A358373(n+1))%A288179(n+1)`
-/

namespace A370221.P9178837392242406815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030298 (A358373 (n + 1)).toNat) (A288179 (n + 1))

end

end A370221.P9178837392242406815

/-! ## A370221.P9441564332283331503

`A185284(A000027(2*n+1))+A030298(n+1)`
-/

namespace A370221.P9441564332283331503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000027 (2 * n + 1)).toNat + A030298 (n + 1)

end

end A370221.P9441564332283331503

/-! ## A370221.P18204786629997432797

`A077051(A227256(2*(n+1)))+A030298(n+1)`
-/

namespace A370221.P18204786629997432797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077051 (A227256 (2 * (n + 1))).toNat + A030298 (n + 1)

end

end A370221.P18204786629997432797

/-!
# A370222: Irregular triangle T(n,k) read by rows: row n gives the inversion table (see comments) of the permutation encoded by row n of A370221.

The programs for A370222, there is no canonical definition to state claims against.
-/

/-! ## A370222.P14554958180158732754

`and(A120698(n+1)-1, A000043(n+1))`
-/

namespace A370222.P14554958180158732754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A120698 (n + 1) - 1) (A000043 (n + 1))

end

end A370222.P14554958180158732754

/-! ## A370222.P290251523678182453

`A120698(n+1)-A001492(A246147(n))`
-/

namespace A370222.P290251523678182453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120698 (n + 1) - A001492 (A246147 n).toNat

end

end A370222.P290251523678182453

/-! ## A370222.P14996030887889200021

`A120698(n+1)-A054977(A359497(n))`
-/

namespace A370222.P14996030887889200021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120698 (n + 1) - A054977 (A359497 n).toNat

end

end A370222.P14996030887889200021

/-! ## A370222.P12541987167661238151

`A129543(A002943(n))%A120698(n+1)`
-/

namespace A370222.P12541987167661238151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129543 (A002943 n).toNat) (A120698 (n + 1))

end

end A370222.P12541987167661238151

/-! ## A370222.P2253800879520122355

`A000040(A359681(n))%A120698(n+1)`
-/

namespace A370222.P2253800879520122355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A359681 n).toNat) (A120698 (n + 1))

end

end A370222.P2253800879520122355

/-! ## A370222.P2956881490346438299

`A120698(n+1)-A193267(A000960(n+1))`
-/

namespace A370222.P2956881490346438299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120698 (n + 1) - A193267 (A000960 (n + 1)).toNat

end

end A370222.P2956881490346438299

/-! ## A370222.P14177589069609906597

`A120698(n+1)-A001055(A195271(n+1))`
-/

namespace A370222.P14177589069609906597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120698 (n + 1) - A001055 (A195271 (n + 1)).toNat

end

end A370222.P14177589069609906597

/-! ## A370222.P1929201167847161849

`A285738(A234741(n+1))%A120698(n+1)`
-/

namespace A370222.P1929201167847161849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285738 (A234741 (n + 1)).toNat) (A120698 (n + 1))

end

end A370222.P1929201167847161849

/-! ## A370222.P3771089696910567089

`A316857(A364461(n+5))%A120698(n+1)`
-/

namespace A370222.P3771089696910567089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316857 (A364461 (n + 5)).toNat) (A120698 (n + 1))

end

end A370222.P3771089696910567089

/-!
# A370223: AGM transform of the positive Fibonacci numbers.

The programs for A370223, there is no canonical definition to state claims against.
-/

/-! ## A370223.P2953251006194372337

`A000071(n+3)^(n+1)-A000312(n+1)*A003266(n+1)`
-/

namespace A370223.P2953251006194372337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3) ^ (n + 1) - A000312 (n + 1) * A003266 (n + 1)

end

end A370223.P2953251006194372337

/-!
# A370224: Number of chordless cycles in the n X n bishop graph.

The programs for A370224, there is no canonical definition to state claims against.
-/

/-! ## A370224.P6562139965246352518

`floor(A306180(n+1)/(n+2)²)`
-/

namespace A370224.P6562139965246352518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A306180 (n + 1) : ℚ) / ((n + 2) ^ 2 : ℚ)⌋

end

end A370224.P6562139965246352518

/-! ## A370224.P17396885807039452430

`A165927(A216073(n+1))`
-/

namespace A370224.P17396885807039452430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165927 (A216073 (n + 1)).toNat

end

end A370224.P17396885807039452430

/-!
# A370225: a(n) = n!^2 * [x^n] polylog(2,x)^3.

The programs for A370225, there is no canonical definition to state claims against.
-/

/-! ## A370225.P4068066074559849693

`A369019(A099344(n+1)%A133140(n))`
-/

namespace A370225.P4068066074559849693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369019 (Int.tmod (A099344 (n + 1)) (A133140 n)).toNat

end

end A370225.P4068066074559849693

/-! ## A370225.P5474609186787919270

`A002182(n+4)*A111858(A006721(2*(n+1)))`
-/

namespace A370225.P5474609186787919270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 4) * A111858 (A006721 (2 * (n + 1))).toNat

end

end A370225.P5474609186787919270

/-!
# A370226: a(n) = n!^2 * [x^n] polylog(2,x)^4.

The programs for A370226, there is no canonical definition to state claims against.
-/

/-! ## A370226.P2453913540289870633

`A088440((24*C(n, 4))²)`
-/

namespace A370226.P2453913540289870633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 ((24 * Nat.choose n 4) ^ 2)

end

end A370226.P2453913540289870633

/-! ## A370226.P9259759109902130540

`C(n!, A370726(3*n+5))²`
-/

namespace A370226.P9259759109902130540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial n) (A370726 (3 * n + 5)).toNat ^ 2

end

end A370226.P9259759109902130540

/-!
# A370227: Number of chordless cycles in the n-triangular honeycomb acute knight graph.

The programs for A370227, there is no canonical definition to state claims against.
-/

/-! ## A370227.P14027750065905367557

`A105519(A364597(n)+A111808(n+1))`
-/

namespace A370227.P14027750065905367557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105519 (A364597 n + A111808 (n + 1)).toNat

end

end A370227.P14027750065905367557

/-! ## A370227.P4828998846234057533

`A105519(A364597(n)+A098006(n+2))`
-/

namespace A370227.P4828998846234057533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105519 (A364597 n + A098006 (n + 2)).toNat

end

end A370227.P4828998846234057533

/-! ## A370227.P15904574909658755159

`A130574(A164949(n+1))`
-/

namespace A370227.P15904574909658755159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130574 (A164949 (n + 1)).toNat

end

end A370227.P15904574909658755159

/-! ## A370227.P7932724635441819731

`A124790(A194082(n+2))`
-/

namespace A370227.P7932724635441819731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124790 (A194082 (n + 2)).toNat

end

end A370227.P7932724635441819731

/-! ## A370227.P11519453160528681149

`floor(A319558(n)/A351715(2*(n+1)))`
-/

namespace A370227.P11519453160528681149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A319558 n : ℚ) / (A351715 (2 * (n + 1)) : ℚ)⌋

end

end A370227.P11519453160528681149

/-!
# A370228: Number of chordless cycles in the n-triangular honeycomb bishop graph.

The programs for A370228, there is no canonical definition to state claims against.
-/

/-! ## A370228.P13966447855390267132

`A220520(A006684(n))`
-/

namespace A370228.P13966447855390267132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220520 (A006684 n).toNat

end

end A370228.P13966447855390267132

/-! ## A370228.P12951195534270980620

`A071840(A098982(n)+1)`
-/

namespace A370228.P12951195534270980620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071840 (A098982 n + 1).toNat

end

end A370228.P12951195534270980620

/-!
# A370231: a(1) = 1; for n >= 2, a(n) = a(GCD(n - 1, a(n - 1))) + floor((n - 1)/a(n - 1)) + 1.

The programs for A370231, the canonical program `A370231.P18214763944003470715` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370231 has offset 1).

The definition of A370231 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(gcd(n, a(n-1))-1)+floor(n/a(n-1))+1` (program `A370231.P18214763944003470715`, by `A370231.P18214763944003470715.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A370231.P18214763944003470715

`a(gcd(n, a(n-1))-1)+floor(n/a(n-1))+1` with `a(0)=1, a(1)=3, a(2)=2`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A370231

/-- `a(gcd(n, a(n-1))-1)+floor(n/a(n-1))+1` -/
def P18214763944003470715.Spec : Prop :=
  ∀ n, P18214763944003470715.a n = A370231 (n + 1)

theorem P18214763944003470715.correct : P18214763944003470715.Spec := by
  intro n
  simp only [A370231, Nat.add_sub_cancel]

end A370231

/-!
# A370232: Triangle read by rows. T(n, k) = binomial(n + k, 2*k)^2.

The programs for A370232, the canonical program `A370232.P4126793856563168239` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370232 has offset 0).

The definition of A370232 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n)+col(n), 2*col(n))²` (program `A370232.P4126793856563168239`, by `A370232.P4126793856563168239.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A370232.P4126793856563168239

`C(row(n)+col(n), 2*col(n))²`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A370232

/-- `C(row(n)+col(n), 2*col(n))²` -/
def P4126793856563168239.Spec : Prop :=
  ∀ n, (P4126793856563168239.a n : ℤ) = A370232 n

theorem P4126793856563168239.correct : P4126793856563168239.Spec := by
  intro n
  simp only [A370232]

end A370232

/-! ## A370232.P12782408000472018737

`A085478(n)²`
-/

namespace A370232.P12782408000472018737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n ^ 2

end

end A370232.P12782408000472018737

namespace A370232

/-- `A085478(n)²` -/
def P12782408000472018737.Spec : Prop :=
  ∀ n, P12782408000472018737.a n = A370232 n

theorem P12782408000472018737.correct : P12782408000472018737.Spec := by
  intro n
  simp only [A370232, Nat.add_sub_cancel, A370232.P12782408000472018737.a, A370232.P4126793856563168239.a, A085478, A085478.P11759972136797087667.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A370232

/-! ## A370232.P15411001160583901420

`A123970(n)²`
-/

namespace A370232.P15411001160583901420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123970 n ^ 2

end

end A370232.P15411001160583901420

namespace A370232

/-- `A123970(n)²` -/
def P15411001160583901420.Spec : Prop :=
  ∀ n, P15411001160583901420.a n = A370232 n

end A370232

/-! ## A370232.P10895381260408036421

`A129818(n)²`
-/

namespace A370232.P10895381260408036421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129818 n ^ 2

end

end A370232.P10895381260408036421

namespace A370232

/-- `A129818(n)²` -/
def P10895381260408036421.Spec : Prop :=
  ∀ n, P10895381260408036421.a n = A370232 n

end A370232

/-! ## A370232.P17085169285381458056

`A054142(A061579(n))²`
-/

namespace A370232.P17085169285381458056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 (A061579 n).toNat ^ 2

end

end A370232.P17085169285381458056

namespace A370232

/-- `A054142(A061579(n))²` -/
def P17085169285381458056.Spec : Prop :=
  ∀ n, P17085169285381458056.a n = A370232 n

end A370232

/-! ## A370232.P4792185081654622353

`A165253(A007401(n+1))²`
-/

namespace A370232.P4792185081654622353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165253 (A007401 (n + 1)).toNat ^ 2

end

end A370232.P4792185081654622353

namespace A370232

/-- `A165253(A007401(n+1))²` -/
def P4792185081654622353.Spec : Prop :=
  ∀ n, P4792185081654622353.a n = A370232 n

end A370232

/-! ## A370232.P16759113879454585442

`A258993(A122797(n+1))²`
-/

namespace A370232.P16759113879454585442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258993 (A122797 (n + 1)).toNat ^ 2

end

end A370232.P16759113879454585442

namespace A370232

/-- `A258993(A122797(n+1))²` -/
def P16759113879454585442.Spec : Prop :=
  ∀ n, P16759113879454585442.a n = A370232 n

end A370232

/-! ## A370232.P4562542076075152773

`A054142(A038722(n+2))²`
-/

namespace A370232.P4562542076075152773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 (A038722 (n + 2)).toNat ^ 2

end

end A370232.P4562542076075152773

namespace A370232

/-- `A054142(A038722(n+2))²` -/
def P4562542076075152773.Spec : Prop :=
  ∀ n, P4562542076075152773.a n = A370232 n

end A370232

/-! ## A370232.P5494347220554334944

`A054142(A114327(n)+n)²`
-/

namespace A370232.P5494347220554334944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 (A114327 n + (n : ℤ)).toNat ^ 2

end

end A370232.P5494347220554334944

namespace A370232

/-- `A054142(A114327(n)+n)²` -/
def P5494347220554334944.Spec : Prop :=
  ∀ n, P5494347220554334944.a n = A370232 n

end A370232

/-! ## A370232.P11763119756640668275

`A076756(A114327(n)+n)²`
-/

namespace A370232.P11763119756640668275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076756 (A114327 n + (n : ℤ)).toNat ^ 2

end

end A370232.P11763119756640668275

namespace A370232

/-- `A076756(A114327(n)+n)²` -/
def P11763119756640668275.Spec : Prop :=
  ∀ n, P11763119756640668275.a n = A370232 n

end A370232

/-! ## A370232.P2460727220277013001

`(A123519(n)/A059268(n))²`
-/

namespace A370232.P2460727220277013001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A123519 n : ℚ) / (A059268 n : ℚ)) ^ 2

end

end A370232.P2460727220277013001

namespace A370232

/-- `(A123519(n)/A059268(n))²` -/
def P2460727220277013001.Spec : Prop :=
  ∀ n, P2460727220277013001.a n = (A370232 n : ℚ)

end A370232

/-! ## A370232.P8547596370618013324

`C(A051162(n), A025581(n))²`
-/

namespace A370232.P8547596370618013324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051162 n).toNat (A025581 n).toNat ^ 2

end

end A370232.P8547596370618013324

namespace A370232

/-- `C(A051162(n), A025581(n))²` -/
def P8547596370618013324.Spec : Prop :=
  ∀ n, (P8547596370618013324.a n : ℤ) = A370232 n

end A370232

/-! ## A370232.P4925462423307023153

`A085478(n)/A054142(n)*A171822(n)`
-/

namespace A370232.P4925462423307023153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085478 n : ℚ) / (A054142 n : ℚ) * (A171822 n : ℚ)

end

end A370232.P4925462423307023153

namespace A370232

/-- `A085478(n)/A054142(n)*A171822(n)` -/
def P4925462423307023153.Spec : Prop :=
  ∀ n, P4925462423307023153.a n = (A370232 n : ℚ)

end A370232

/-! ## A370232.P9681549976557375141

`A000007(n+1)+A085478(n)*A085478(n)`
-/

namespace A370232.P9681549976557375141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + A085478 n * A085478 n

end

end A370232.P9681549976557375141

namespace A370232

/-- `A000007(n+1)+A085478(n)*A085478(n)` -/
def P9681549976557375141.Spec : Prop :=
  ∀ n, P9681549976557375141.a n = A370232 n

theorem P9681549976557375141.correct : P9681549976557375141.Spec := by
  intro n
  simp only [A370232, Nat.add_sub_cancel, A370232.P9681549976557375141.a, A370232.P4126793856563168239.a, A000007, A000007.P6599383543502402472.a, A085478, A085478.P11759972136797087667.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A370232

/-! ## A370232.P1628134953013121237

`A092865(A061885(n))²`
-/

namespace A370232.P1628134953013121237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092865 (A061885 n).toNat ^ 2

end

end A370232.P1628134953013121237

namespace A370232

/-- `A092865(A061885(n))²` -/
def P1628134953013121237.Spec : Prop :=
  ∀ n, P1628134953013121237.a n = A370232 n

end A370232

/-! ## A370232.P15070387040546088390

`A102426(A061885(n+1))²`
-/

namespace A370232.P15070387040546088390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102426 (A061885 (n + 1)).toNat ^ 2

end

end A370232.P15070387040546088390

namespace A370232

/-- `A102426(A061885(n+1))²` -/
def P15070387040546088390.Spec : Prop :=
  ∀ n, P15070387040546088390.a n = A370232 n

end A370232

/-! ## A370232.P17244687966858482498

`A185331(A185869(n+1))²`
-/

namespace A370232.P17244687966858482498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185331 (A185869 (n + 1)).toNat ^ 2

end

end A370232.P17244687966858482498

namespace A370232

/-- `A185331(A185869(n+1))²` -/
def P17244687966858482498.Spec : Prop :=
  ∀ n, P17244687966858482498.a n = A370232 n

end A370232

/-!
# A370233: Triangle read by rows. T(n, k) = (n - k + 1) * binomial(n + k + 1, 2*k)^2 / (n + k + 1).

The programs for A370233, the canonical program `A370233.P17882754791269837909` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370233 has offset 0).

The definition of A370233 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370233.P17882754791269837909

`(row(n)-col(n)+1)*C(row(n)+col(n)+1, 2*col(n))²/(row(n)+col(n)+1)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A370233

/-- `(row(n)-col(n)+1)*C(row(n)+col(n)+1, 2*col(n))²/(row(n)+col(n)+1)` -/
def P17882754791269837909.Spec : Prop :=
  ∀ n, P17882754791269837909.a n = (A370233 n : ℚ)

end A370233

/-! ## A370233.P8684832600924414137

`A085478(n)*A258993(n+1)`
-/

namespace A370233.P8684832600924414137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n * A258993 (n + 1)

end

end A370233.P8684832600924414137

namespace A370233

/-- `A085478(n)*A258993(n+1)` -/
def P8684832600924414137.Spec : Prop :=
  ∀ n, P8684832600924414137.a n = A370233 n

end A370233

/-! ## A370233.P12994800126555480247

`A085478(comp[∑[n-1]])*A085478(n)`
-/

namespace A370233.P12994800126555480247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) * A085478 n

end

end A370233.P12994800126555480247

namespace A370233

/-- `A085478(comp[∑[n-1]])*A085478(n)` -/
def P12994800126555480247.Spec : Prop :=
  ∀ n, P12994800126555480247.a n = A370233 n

end A370233

/-! ## A370233.P4774570044712467709

`A123970(comp[∑[n-1]])*A123970(n)`
-/

namespace A370233.P4774570044712467709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123970 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) * A123970 n

end

end A370233.P4774570044712467709

namespace A370233

/-- `A123970(comp[∑[n-1]])*A123970(n)` -/
def P4774570044712467709.Spec : Prop :=
  ∀ n, P4774570044712467709.a n = A370233 n

end A370233

/-! ## A370233.P12127666343895027375

`A085478(n)*A143858((2*n)%(n+1)+1)`
-/

namespace A370233.P12127666343895027375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n * A143858 (2 * n % (n + 1) + 1)

end

end A370233.P12127666343895027375

namespace A370233

/-- `A085478(n)*A143858((2*n)%(n+1)+1)` -/
def P12127666343895027375.Spec : Prop :=
  ∀ n, P12127666343895027375.a n = A370233 n

end A370233

/-! ## A370233.P281920757813133809

`A085478(n)*A143858(A000007(n)+n)`
-/

namespace A370233.P281920757813133809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n * A143858 (A000007 n + (n : ℤ)).toNat

end

end A370233.P281920757813133809

namespace A370233

/-- `A085478(n)*A143858(A000007(n)+n)` -/
def P281920757813133809.Spec : Prop :=
  ∀ n, P281920757813133809.a n = A370233 n

end A370233

/-! ## A370233.P17139306910695372151

`A258993(A122797(n+1))*A258993(n+1)`
-/

namespace A370233.P17139306910695372151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258993 (A122797 (n + 1)).toNat * A258993 (n + 1)

end

end A370233.P17139306910695372151

namespace A370233

/-- `A258993(A122797(n+1))*A258993(n+1)` -/
def P17139306910695372151.Spec : Prop :=
  ∀ n, P17139306910695372151.a n = A370233 n

end A370233

/-! ## A370233.P9983301125878173842

`A085478(n)*A098925(A063657(n+1)-1)`
-/

namespace A370233.P9983301125878173842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n * A098925 (A063657 (n + 1) - 1).toNat

end

end A370233.P9983301125878173842

namespace A370233

/-- `A085478(n)*A098925(A063657(n+1)-1)` -/
def P9983301125878173842.Spec : Prop :=
  ∀ n, P9983301125878173842.a n = A370233 n

end A370233

/-! ## A370233.P233873422001317491

`A132813(A245300(n)+A002262(n))`
-/

namespace A370233.P233873422001317491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132813 (A245300 n + A002262 n).toNat

end

end A370233.P233873422001317491

namespace A370233

/-- `A132813(A245300(n)+A002262(n))` -/
def P233873422001317491.Spec : Prop :=
  ∀ n, P233873422001317491.a n = A370233 n

end A370233

/-! ## A370233.P5725525066970204245

`abs(A123970(n))*A030111(A185870(n+1)-2)`
-/

namespace A370233.P5725525066970204245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123970 n| * A030111 (A185870 (n + 1) - 2).toNat

end

end A370233.P5725525066970204245

namespace A370233

/-- `abs(A123970(n))*A030111(A185870(n+1)-2)` -/
def P5725525066970204245.Spec : Prop :=
  ∀ n, P5725525066970204245.a n = A370233 n

end A370233

/-!
# A370234: a(n) = hypergeom([-n, 1 + n, 2 + n, -1 - n], [1/2, 1/2, 1], 1/16). Row sums of A370233.

The programs for A370234, there is no canonical definition to state claims against.
-/

/-! ## A370234.P8117482160563114919

`A110236(Δ[n²])`
-/

namespace A370234.P8117482160563114919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110236 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A370234.P8117482160563114919

/-! ## A370234.P10518078221615403179

`A190169(2*n+1)+A190166(2*n+1)`
-/

namespace A370234.P10518078221615403179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190169 (2 * n + 1) + A190166 (2 * n + 1)

end

end A370234.P10518078221615403179

/-! ## A370234.P1175784914041983702

`A091964(2*n+1)-A051286(2*n+1)`
-/

namespace A370234.P1175784914041983702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091964 (2 * n + 1) - A051286 (2 * n + 1)

end

end A370234.P1175784914041983702

/-! ## A370234.P17722497031475803820

`A051286(2*n+1)-A166300(2*n+1)`
-/

namespace A370234.P17722497031475803820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 (2 * n + 1) - A166300 (2 * n + 1)

end

end A370234.P17722497031475803820

/-! ## A370234.P2795436315393395011

`A051291(2*n+1)-A203611(2*n+1)`
-/

namespace A370234.P2795436315393395011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051291 (2 * n + 1) - A203611 (2 * n + 1)

end

end A370234.P2795436315393395011

/-! ## A370234.P8332095195327948192

`A201631(2*(n+1))-A110198(2*n+1)`
-/

namespace A370234.P8332095195327948192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201631 (2 * (n + 1)) - A110198 (2 * n + 1)

end

end A370234.P8332095195327948192

/-! ## A370234.P6698308104038559450

`A097860(A087811(2*(n+1))+1)`
-/

namespace A370234.P6698308104038559450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097860 (A087811 (2 * (n + 1)) + 1).toNat

end

end A370234.P6698308104038559450

/-! ## A370234.P5375993603896991712

`record[A110236(A020986(2*n))]`
-/

namespace A370234.P5375993603896991712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110236 (A020986 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370234.P5375993603896991712

/-!
# A370238: a(n) = n*(3*n + 23)/2.

The programs for A370238, the canonical program `A370238.P9180117166049315748` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370238 has offset 0).

The definition of A370238 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370238.P17490853837927443577

`n*(3*n+23)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370238.P17490853837927443577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (3 * n + 23) : ℚ) / 2

end

end A370238.P17490853837927443577

namespace A370238

/-- `n*(3*n+23)/2` -/
def P17490853837927443577.Spec : Prop :=
  ∀ n, P17490853837927443577.a n = (A370238 n : ℚ)

end A370238

/-! ## A370238.P9180117166049315748

`A151542(n)+n`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A370238

/-- `A151542(n)+n` -/
def P9180117166049315748.Spec : Prop :=
  ∀ n, P9180117166049315748.a n = A370238 n

theorem P9180117166049315748.correct : P9180117166049315748.Spec := by
  intro n
  simp only [A370238]

end A370238

/-! ## A370238.P9591891382961962835

`A140675(n)+2*n`
-/

namespace A370238.P9591891382961962835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140675 n + (2 * n : ℤ)

end

end A370238.P9591891382961962835

namespace A370238

/-- `A140675(n)+2*n` -/
def P9591891382961962835.Spec : Prop :=
  ∀ n, P9591891382961962835.a n = A370238 n

end A370238

/-! ## A370238.P16388038484649047213

`A140674(n)+3*n`
-/

namespace A370238.P16388038484649047213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140674 n + (3 * n : ℤ)

end

end A370238.P16388038484649047213

namespace A370238

/-- `A140674(n)+3*n` -/
def P16388038484649047213.Spec : Prop :=
  ∀ n, P16388038484649047213.a n = A370238 n

end A370238

/-! ## A370238.P13149707926321776997

`A140673(n)+4*n`
-/

namespace A370238.P13149707926321776997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140673 n + (4 * n : ℤ)

end

end A370238.P13149707926321776997

namespace A370238

/-- `A140673(n)+4*n` -/
def P13149707926321776997.Spec : Prop :=
  ∀ n, P13149707926321776997.a n = A370238 n

end A370238

/-! ## A370238.P8343793024221735854

`A140672(n)+5*n`
-/

namespace A370238.P8343793024221735854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140672 n + (5 * n : ℤ)

end

end A370238.P8343793024221735854

namespace A370238

/-- `A140672(n)+5*n` -/
def P8343793024221735854.Spec : Prop :=
  ∀ n, P8343793024221735854.a n = A370238 n

end A370238

/-! ## A370238.P5620348745447744389

`A059845(n)+6*n`
-/

namespace A370238.P5620348745447744389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059845 n + (6 * n : ℤ)

end

end A370238.P5620348745447744389

namespace A370238

/-- `A059845(n)+6*n` -/
def P5620348745447744389.Spec : Prop :=
  ∀ n, P5620348745447744389.a n = A370238 n

end A370238

/-! ## A370238.P6378808596487372501

`A140091(n)+7*n`
-/

namespace A370238.P6378808596487372501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140091 n + (7 * n : ℤ)

end

end A370238.P6378808596487372501

namespace A370238

/-- `A140091(n)+7*n` -/
def P6378808596487372501.Spec : Prop :=
  ∀ n, P6378808596487372501.a n = A370238 n

end A370238

/-! ## A370238.P1977514347089620149

`A140090(n)+8*n`
-/

namespace A370238.P1977514347089620149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140090 n + (8 * n : ℤ)

end

end A370238.P1977514347089620149

namespace A370238

/-- `A140090(n)+8*n` -/
def P1977514347089620149.Spec : Prop :=
  ∀ n, P1977514347089620149.a n = A370238 n

end A370238

/-! ## A370238.P10806844180021738857

`A045943(n)+10*n`
-/

namespace A370238.P10806844180021738857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n + (10 * n : ℤ)

end

end A370238.P10806844180021738857

namespace A370238

/-- `A045943(n)+10*n` -/
def P10806844180021738857.Spec : Prop :=
  ∀ n, P10806844180021738857.a n = A370238 n

end A370238

/-! ## A370238.P17490635099208792428

`A005449(n)+11*n`
-/

namespace A370238.P17490635099208792428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n + (11 * n : ℤ)

end

end A370238.P17490635099208792428

namespace A370238

/-- `A005449(n)+11*n` -/
def P17490635099208792428.Spec : Prop :=
  ∀ n, P17490635099208792428.a n = A370238 n

end A370238

/-! ## A370238.P14655411690208376575

`A115067(n+1)+9*n`
-/

namespace A370238.P14655411690208376575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115067 (n + 1) + (9 * n : ℤ)

end

end A370238.P14655411690208376575

namespace A370238

/-- `A115067(n+1)+9*n` -/
def P14655411690208376575.Spec : Prop :=
  ∀ n, P14655411690208376575.a n = A370238 n

end A370238

/-! ## A370238.P18144314775906443571

`A000326(n)+A008594(n)`
-/

namespace A370238.P18144314775906443571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n + A008594 n

end

end A370238.P18144314775906443571

namespace A370238

/-- `A000326(n)+A008594(n)` -/
def P18144314775906443571.Spec : Prop :=
  ∀ n, P18144314775906443571.a n = A370238 n

end A370238

/-! ## A370238.P8152956539346042583

`∑[a(n-1)+3]` with `a(0)=0, a(1)=13`
-/

namespace A370238.P8152956539346042583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 13] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370238.P8152956539346042583

namespace A370238

/-- `∑[a(n-1)+3]` -/
def P8152956539346042583.Spec : Prop :=
  ∀ n, (P8152956539346042583.a n : ℤ) = A370238 n

end A370238

/-! ## A370238.P3088670370300190430

`3*(n+3)+a(n-1)+1` with `a(0)=0`
-/

namespace A370238.P3088670370300190430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  3 * (n + 3) + (a (n - 1) + 1)

end

end A370238.P3088670370300190430

namespace A370238

/-- `3*(n+3)+a(n-1)+1` -/
def P3088670370300190430.Spec : Prop :=
  ∀ n, (P3088670370300190430.a n : ℤ) = A370238 n

end A370238

/-! ## A370238.P660541281098734615

`a(n-1)+Δ[(n+3)²]+n+3` with `a(0)=0`
-/

namespace A370238.P660541281098734615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 3 : ℤ))

end

end A370238.P660541281098734615

namespace A370238

/-- `a(n-1)+Δ[(n+3)²]+n+3` -/
def P660541281098734615.Spec : Prop :=
  ∀ n, P660541281098734615.a n = A370238 n

end A370238

/-! ## A370238.P16556846986484129072

`A132754(n)+n²`
-/

namespace A370238.P16556846986484129072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132754 n + (n ^ 2 : ℤ)

end

end A370238.P16556846986484129072

namespace A370238

/-- `A132754(n)+n²` -/
def P16556846986484129072.Spec : Prop :=
  ∀ n, P16556846986484129072.a n = A370238 n

end A370238

/-! ## A370238.P2968740353587932450

`A119412(n)+∑[n]`
-/

namespace A370238.P2968740353587932450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119412 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A370238.P2968740353587932450

namespace A370238

/-- `A119412(n)+∑[n]` -/
def P2968740353587932450.Spec : Prop :=
  ∀ n, P2968740353587932450.a n = A370238 n

end A370238

/-! ## A370238.P6695815503349700869

`3*A055999(n)+n`
-/

namespace A370238.P6695815503349700869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A055999 n + (n : ℤ)

end

end A370238.P6695815503349700869

namespace A370238

/-- `3*A055999(n)+n` -/
def P6695815503349700869.Spec : Prop :=
  ∀ n, P6695815503349700869.a n = A370238 n

end A370238

/-! ## A370238.P5217021324776857385

`A212331(n)-(n²+n)`
-/

namespace A370238.P5217021324776857385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212331 n - (n ^ 2 + n : ℤ)

end

end A370238.P5217021324776857385

namespace A370238

/-- `A212331(n)-(n²+n)` -/
def P5217021324776857385.Spec : Prop :=
  ∀ n, P5217021324776857385.a n = A370238 n

end A370238

/-!
# A370239: The sum of divisors of n that are squares of squarefree numbers.

The programs for A370239, the canonical program `A370239.P6596085643419210641` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370239 has offset 1).

The definition of A370239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370239.P6596085643419210641

`∑{d}[A071773(n+1), #²]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A370239

/-- `∑{d}[A071773(n+1), #²]` -/
def P6596085643419210641.Spec : Prop :=
  ∀ n, (P6596085643419210641.a n : ℤ) = A370239 (n + 1)

theorem P6596085643419210641.correct : P6596085643419210641.Spec := by
  intro n
  simp only [A370239, Nat.add_sub_cancel]

end A370239

/-! ## A370239.P8594641349819471499

`∑{d}[n+1, #*A227291(#)]`
-/

namespace A370239.P8594641349819471499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A227291 d

end

end A370239.P8594641349819471499

namespace A370239

/-- `∑{d}[n+1, #*A227291(#)]` -/
def P8594641349819471499.Spec : Prop :=
  ∀ n, P8594641349819471499.a n = A370239 (n + 1)

end A370239

/-! ## A370239.P109734784668807727

`A035316(A007948(n+1))`
-/

namespace A370239.P109734784668807727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (A007948 (n + 1)).toNat

end

end A370239.P109734784668807727

namespace A370239

/-- `A035316(A007948(n+1))` -/
def P109734784668807727.Spec : Prop :=
  ∀ n, P109734784668807727.a n = A370239 (n + 1)

end A370239

/-! ## A370239.P4401417014734258170

`A001157(A071773(n+1))`
-/

namespace A370239.P4401417014734258170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A071773 (n + 1)).toNat

end

end A370239.P4401417014734258170

namespace A370239

/-- `A001157(A071773(n+1))` -/
def P4401417014734258170.Spec : Prop :=
  ∀ n, P4401417014734258170.a n = A370239 (n + 1)

end A370239

/-! ## A370239.P2434901033739708983

`A035316(A058035(n+1))`
-/

namespace A370239.P2434901033739708983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (A058035 (n + 1)).toNat

end

end A370239.P2434901033739708983

namespace A370239

/-- `A035316(A058035(n+1))` -/
def P2434901033739708983.Spec : Prop :=
  ∀ n, P2434901033739708983.a n = A370239 (n + 1)

end A370239

/-! ## A370239.P16127924127840007992

`A328639(A008833(n+1))`
-/

namespace A370239.P16127924127840007992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328639 (A008833 (n + 1)).toNat

end

end A370239.P16127924127840007992

namespace A370239

/-- `A328639(A008833(n+1))` -/
def P16127924127840007992.Spec : Prop :=
  ∀ n, P16127924127840007992.a n = A370239 (n + 1)

end A370239

/-! ## A370239.P9265895558856248431

`A351265(A000188(n+1))`
-/

namespace A370239.P9265895558856248431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351265 (A000188 (n + 1)).toNat

end

end A370239.P9265895558856248431

namespace A370239

/-- `A351265(A000188(n+1))` -/
def P9265895558856248431.Spec : Prop :=
  ∀ n, P9265895558856248431.a n = A370239 (n + 1)

end A370239

/-! ## A370239.P11070211009709898636

`A351265(A000189(n+1))`
-/

namespace A370239.P11070211009709898636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351265 (A000189 (n + 1)).toNat

end

end A370239.P11070211009709898636

namespace A370239

/-- `A351265(A000189(n+1))` -/
def P11070211009709898636.Spec : Prop :=
  ∀ n, P11070211009709898636.a n = A370239 (n + 1)

end A370239

/-! ## A370239.P15251019594813971745

`A351265(A000190(n+1))`
-/

namespace A370239.P15251019594813971745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351265 (A000190 (n + 1)).toNat

end

end A370239.P15251019594813971745

namespace A370239

/-- `A351265(A000190(n+1))` -/
def P15251019594813971745.Spec : Prop :=
  ∀ n, P15251019594813971745.a n = A370239 (n + 1)

end A370239

/-! ## A370239.P15346635513852983298

`A351265(A003557(n+1))`
-/

namespace A370239.P15346635513852983298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351265 (A003557 (n + 1)).toNat

end

end A370239.P15346635513852983298

namespace A370239

/-- `A351265(A003557(n+1))` -/
def P15346635513852983298.Spec : Prop :=
  ∀ n, P15346635513852983298.a n = A370239 (n + 1)

end A370239

/-! ## A370239.P13734117590190823354

`A351265(A057521(n+1))`
-/

namespace A370239.P13734117590190823354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351265 (A057521 (n + 1)).toNat

end

end A370239.P13734117590190823354

namespace A370239

/-- `A351265(A057521(n+1))` -/
def P13734117590190823354.Spec : Prop :=
  ∀ n, P13734117590190823354.a n = A370239 (n + 1)

end A370239

/-! ## A370239.P11479352430792560552

`A351265(A085731(n+1))`
-/

namespace A370239.P11479352430792560552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351265 (A085731 (n + 1)).toNat

end

end A370239.P11479352430792560552

namespace A370239

/-- `A351265(A085731(n+1))` -/
def P11479352430792560552.Spec : Prop :=
  ∀ n, P11479352430792560552.a n = A370239 (n + 1)

end A370239

/-! ## A370239.P12765475469620416961

`A351265(A308993(n+1))`
-/

namespace A370239.P12765475469620416961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351265 (A308993 (n + 1)).toNat

end

end A370239.P12765475469620416961

namespace A370239

/-- `A351265(A308993(n+1))` -/
def P12765475469620416961.Spec : Prop :=
  ∀ n, P12765475469620416961.a n = A370239 (n + 1)

end A370239

/-! ## A370239.P874659199542950398

`A351265(A366993(n+1))`
-/

namespace A370239.P874659199542950398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351265 (A366993 (n + 1)).toNat

end

end A370239.P874659199542950398

namespace A370239

/-- `A351265(A366993(n+1))` -/
def P874659199542950398.Spec : Prop :=
  ∀ n, P874659199542950398.a n = A370239 (n + 1)

end A370239

/-! ## A370239.P4440192211528466647

`∑{d}[A057521(n+1), A055615(#)²]`
-/

namespace A370239.P4440192211528466647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055615 d ^ 2

end

end A370239.P4440192211528466647

namespace A370239

/-- `∑{d}[A057521(n+1), A055615(#)²]` -/
def P4440192211528466647.Spec : Prop :=
  ∀ n, P4440192211528466647.a n = A370239 (n + 1)

end A370239

/-! ## A370239.P8861821148320546181

`∑{d}[A358272(n+1), A055615(#)²]`
-/

namespace A370239.P8861821148320546181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055615 d ^ 2

end

end A370239.P8861821148320546181

namespace A370239

/-- `∑{d}[A358272(n+1), A055615(#)²]` -/
def P8861821148320546181.Spec : Prop :=
  ∀ n, P8861821148320546181.a n = A370239 (n + 1)

end A370239

/-! ## A370239.P3668436162225142535

`A351265((n+1)/A007947(n+1))`
-/

namespace A370239.P3668436162225142535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351265 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A370239.P3668436162225142535

namespace A370239

/-- `A351265((n+1)/A007947(n+1))` -/
def P3668436162225142535.Spec : Prop :=
  ∀ n, P3668436162225142535.a n = A370239 (n + 1)

end A370239

/-! ## A370239.P6562629687942318692

`A351265(n+1)/A091306(n+1)`
-/

namespace A370239.P6562629687942318692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351265 (n + 1) : ℚ) / (A091306 (n + 1) : ℚ)

end

end A370239.P6562629687942318692

namespace A370239

/-- `A351265(n+1)/A091306(n+1)` -/
def P6562629687942318692.Spec : Prop :=
  ∀ n, P6562629687942318692.a n = (A370239 (n + 1) : ℚ)

end A370239

/-! ## A370239.P8468981487795816622

`∑{d}[n+1, A061019(#)*A385006((n+1)/#)]`
-/

namespace A370239.P8468981487795816622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061019 d * A385006 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A370239.P8468981487795816622

namespace A370239

/-- `∑{d}[n+1, A061019(#)*A385006((n+1)/#)]` -/
def P8468981487795816622.Spec : Prop :=
  ∀ n, P8468981487795816622.a n = A370239 (n + 1)

end A370239

/-! ## A370239.P7407254592874314969

`A001157(A007947(A000188(n+1)²))`
-/

namespace A370239.P7407254592874314969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A007947 (A000188 (n + 1) ^ 2).toNat).toNat

end

end A370239.P7407254592874314969

namespace A370239

/-- `A001157(A007947(A000188(n+1)²))` -/
def P7407254592874314969.Spec : Prop :=
  ∀ n, P7407254592874314969.a n = A370239 (n + 1)

end A370239

/-!
# A370240: The sum of divisors of n that are cubes of squarefree numbers.

The programs for A370240, the canonical program `A370240.P3441515446814905379` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370240 has offset 1).

The definition of A370240 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370240.P13958098123571644044

`A380396(∏{p}[n+1, gcd(n+1, #^3)])`
-/

namespace A370240.P13958098123571644044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380396 (∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (n + 1) (p ^ 3))

end

end A370240.P13958098123571644044

namespace A370240

/-- `A380396(∏{p}[n+1, gcd(n+1, #^3)])` -/
def P13958098123571644044.Spec : Prop :=
  ∀ n, P13958098123571644044.a n = A370240 (n + 1)

end A370240

/-! ## A370240.P3441515446814905379

`A351266(A053150(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A370240

/-- `A351266(A053150(n+1))` -/
def P3441515446814905379.Spec : Prop :=
  ∀ n, P3441515446814905379.a n = A370240 (n + 1)

theorem P3441515446814905379.correct : P3441515446814905379.Spec := by
  intro n
  simp only [A370240, Nat.add_sub_cancel]

end A370240

/-! ## A370240.P18024747395398815377

`A351266(A062378(n+1))`
-/

namespace A370240.P18024747395398815377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351266 (A062378 (n + 1)).toNat

end

end A370240.P18024747395398815377

namespace A370240

/-- `A351266(A062378(n+1))` -/
def P18024747395398815377.Spec : Prop :=
  ∀ n, P18024747395398815377.a n = A370240 (n + 1)

end A370240

/-! ## A370240.P7922950011949145085

`A366904(A058035(n+1))`
-/

namespace A370240.P7922950011949145085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366904 (A058035 (n + 1)).toNat

end

end A370240.P7922950011949145085

namespace A370240

/-- `A366904(A058035(n+1))` -/
def P7922950011949145085.Spec : Prop :=
  ∀ n, P7922950011949145085.a n = A370240 (n + 1)

end A370240

/-! ## A370240.P12954490793030291550

`A351266(A295657(n+1))`
-/

namespace A370240.P12954490793030291550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351266 (A295657 (n + 1)).toNat

end

end A370240.P12954490793030291550

namespace A370240

/-- `A351266(A295657(n+1))` -/
def P12954490793030291550.Spec : Prop :=
  ∀ n, P12954490793030291550.a n = A370240 (n + 1)

end A370240

/-! ## A370240.P615678951777396687

`A001158(∏{p}[A008834(n+1), #])`
-/

namespace A370240.P615678951777396687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A370240.P615678951777396687

namespace A370240

/-- `A001158(∏{p}[A008834(n+1), #])` -/
def P615678951777396687.Spec : Prop :=
  ∀ n, P615678951777396687.a n = A370240 (n + 1)

end A370240

/-! ## A370240.P7121052489615927934

`A113061(A350390(n+1)^A362852(3*n+5))`
-/

namespace A370240.P7121052489615927934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113061 (SequenceMachineLib.roundAway ((A350390 (n + 1) : ℚ) ^ (A362852 (3 * n + 5) : ℤ))).toNat

end

end A370240.P7121052489615927934

namespace A370240

/-- `A113061(A350390(n+1)^A362852(3*n+5))` -/
def P7121052489615927934.Spec : Prop :=
  ∀ n, P7121052489615927934.a n = A370240 (n + 1)

end A370240

/-! ## A370240.P1935884856249742070

`A113061(C(n+1, A178334(2*(n+2))))`
-/

namespace A370240.P1935884856249742070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113061 (Nat.choose (n + 1) (A178334 (2 * (n + 2))).toNat)

end

end A370240.P1935884856249742070

namespace A370240

/-- `A113061(C(n+1, A178334(2*(n+2))))` -/
def P1935884856249742070.Spec : Prop :=
  ∀ n, P1935884856249742070.a n = A370240 (n + 1)

end A370240

/-!
# A370241: Expansion of Sum_{n>=0} Product_{k=0..n} (x^k*(1+x)^(n-k) + x^(n-k)*(1+x)^k).

The programs for A370241, there is no canonical definition to state claims against.
-/

/-! ## A370241.P12777244867562618591

`A241920(A076035(n))+A000043(n+1)`
-/

namespace A370241.P12777244867562618591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241920 (A076035 n).toNat + A000043 (n + 1)

end

end A370241.P12777244867562618591

/-! ## A370241.P2014675110050773103

`A180224(n+1)+A152735(A063443(n))`
-/

namespace A370241.P2014675110050773103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180224 (n + 1) + A152735 (A063443 n).toNat

end

end A370241.P2014675110050773103

/-!
# A370242: Coefficient of x^n in the expansion of ( 1/(1-x)^2 * (1+x^2) )^n.

The programs for A370242, there is no canonical definition to state claims against.
-/

/-! ## A370242.P5721906934429627666

`A380817(A005566(n)*A011782(n))`
-/

namespace A370242.P5721906934429627666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A005566 n * A011782 n).toNat

end

end A370242.P5721906934429627666

/-!
# A370243: Coefficient of x^n in the expansion of ( 1/(1-x) * (1+x^2)^2 )^n.

The programs for A370243, there is no canonical definition to state claims against.
-/

/-! ## A370243.P14526072212537984822

`A087163(A018224(n))`
-/

namespace A370243.P14526072212537984822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087163 (A018224 n).toNat

end

end A370243.P14526072212537984822

/-!
# A370244: Coefficient of x^n in the expansion of ( 1/(1-x) * (1+x^2)^3 )^n.

The programs for A370244, there is no canonical definition to state claims against.
-/

/-! ## A370244.P7307650583413113940

`A030101(A147840(n))`
-/

namespace A370244.P7307650583413113940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A147840 n).toNat

end

end A370244.P7307650583413113940

/-!
# A370245: Coefficient of x^n in the expansion of ( 1/(1-x)^2 * (1+x^2)^3 )^n.

The programs for A370245, there is no canonical definition to state claims against.
-/

/-! ## A370245.P11006918297300184309

`A069754(record[(3/n-1)*4*a(n-2)])` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A370245.P11006918297300184309
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1, 2] fun n f1 =>
  (3 / (n : ℚ) - 1) * (4 * f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069754 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A370245.P11006918297300184309

/-!
# A370246: Coefficient of x^n in the expansion of ( 1/(1-x) * (1+x^3) )^n.

The programs for A370246, there is no canonical definition to state claims against.
-/

/-! ## A370246.P10593196181391079551

`A336119(A148797(n))`
-/

namespace A370246.P10593196181391079551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336119 (A148797 n).toNat

end

end A370246.P10593196181391079551

/-! ## A370246.P16454518704190343267

`or(A007690(n), A248565(A002212(n)))`
-/

namespace A370246.P16454518704190343267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007690 n) (A248565 (A002212 n).toNat)

end

end A370246.P16454518704190343267

/-! ## A370246.P1200321195459969890

`or(A059995(A171476(n)), A085478(n))`
-/

namespace A370246.P1200321195459969890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059995 (A171476 n).toNat) (A085478 n)

end

end A370246.P1200321195459969890

/-!
# A370247: Coefficient of x^n in the expansion of ( 1/(1-x)^2 * (1+x^3) )^n.

The programs for A370247, there is no canonical definition to state claims against.
-/

/-! ## A370247.P16460229084497793176

`A373188(A370273(n))`
-/

namespace A370247.P16460229084497793176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373188 (A370273 n).toNat

end

end A370247.P16460229084497793176

/-! ## A370247.P12397908506390325965

`A004526(2*A370273(n))`
-/

namespace A370247.P12397908506390325965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A370273 n).toNat

end

end A370247.P12397908506390325965

/-!
# A370248: Coefficient of x^n in the expansion of ( 1/(1-x) * (1+x^3)^2 )^n.

The programs for A370248, there is no canonical definition to state claims against.
-/

/-! ## A370248.P2645197310057193472

`A370274(A001096(n))`
-/

namespace A370248.P2645197310057193472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370274 (A001096 n).toNat

end

end A370248.P2645197310057193472

/-! ## A370248.P11492421261585259439

`A370274(n^A068038(n))`
-/

namespace A370248.P11492421261585259439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370274 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A068038 n : ℤ))).toNat

end

end A370248.P11492421261585259439

/-!
# A370249: Coefficient of x^n in the expansion of ( 1/(1-x)^2 * (1+x^3)^2 )^n.

The programs for A370249, there is no canonical definition to state claims against.
-/

/-! ## A370249.P1374798870958904232

`record[A000122(2*n)*A071944(n)]`
-/

namespace A370249.P1374798870958904232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (2 * n) * A071944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370249.P1374798870958904232

/-! ## A370249.P11601759797473729931

`A038502(A370275(n))`
-/

namespace A370249.P11601759797473729931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A370275 n).toNat

end

end A370249.P11601759797473729931

/-!
# A370252: a(n) is the smallest positive integer k for which there is an identity of the form k*x = Sum_{i=1..m} k_i*g_i(x)^n where k_1, ..., k_m are in Z and g_1(x), ..., g_m(x) are in Z[x].

The programs for A370252, there is no canonical definition to state claims against.
-/

/-! ## A370252.P14085408284817532140

`(n+1)*A005729(n+1)`
-/

namespace A370252.P14085408284817532140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005729 (n + 1)

end

end A370252.P14085408284817532140

/-! ## A370252.P2380771894037730542

`(n+1)*A005730(n+1)*A005731(n+1)`
-/

namespace A370252.P2380771894037730542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A005730 (n + 1) * A005731 (n + 1))

end

end A370252.P2380771894037730542

/-! ## A370252.P8639775089184109012

`A005729(A008619(2*n))*A008619(2*n)`
-/

namespace A370252.P8639775089184109012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005729 (A008619 (2 * n)).toNat * A008619 (2 * n)

end

end A370252.P8639775089184109012

/-!
# A370253: Number of deranged matchings of 2n people with partners (of either sex) such that at least one person is matched with their spouse.

The programs for A370253, the canonical program `A370253.P12966461108388290693` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370253 has offset 0).

The definition of A370253 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370253.P12966461108388290693

`A001147(n)-A053871(n)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A370253

/-- `A001147(n)-A053871(n)` -/
def P12966461108388290693.Spec : Prop :=
  ∀ n, P12966461108388290693.a n = A370253 n

theorem P12966461108388290693.correct : P12966461108388290693.Spec := by
  intro n
  simp only [A370253]

end A370253

/-! ## A370253.P13300400110108733866

`A001497(∑[n])-A053871(n)`
-/

namespace A370253.P13300400110108733866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 (∑ j ∈ Finset.range (n + 1), f1 j) - A053871 n

end

end A370253.P13300400110108733866

namespace A370253

/-- `A001497(∑[n])-A053871(n)` -/
def P13300400110108733866.Spec : Prop :=
  ∀ n, P13300400110108733866.a n = A370253 n

end A370253

/-! ## A370253.P13194383356198872721

`A176230(∑[n])-A053871(n)`
-/

namespace A370253.P13194383356198872721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176230 (∑ j ∈ Finset.range (n + 1), f1 j) - A053871 n

end

end A370253.P13194383356198872721

namespace A370253

/-- `A176230(∑[n])-A053871(n)` -/
def P13194383356198872721.Spec : Prop :=
  ∀ n, P13194383356198872721.a n = A370253 n

end A370253

/-! ## A370253.P13464364001625957237

`A085881(∑[n])-A053871(n)`
-/

namespace A370253.P13464364001625957237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085881 (∑ j ∈ Finset.range (n + 1), f1 j) - A053871 n

end

end A370253.P13464364001625957237

namespace A370253

/-- `A085881(∑[n])-A053871(n)` -/
def P13464364001625957237.Spec : Prop :=
  ∀ n, P13464364001625957237.a n = A370253 n

end A370253

/-! ## A370253.P5795918306352223457

`sqrt(A001818(n))-A053871(n)`
-/

namespace A370253.P5795918306352223457
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001818 n : ℝ) - (A053871 n : ℝ)

end

end A370253.P5795918306352223457

namespace A370253

/-- `sqrt(A001818(n))-A053871(n)` -/
def P5795918306352223457.Spec : Prop :=
  ∀ n, P5795918306352223457.a n = (A370253 n : ℝ)

end A370253

/-!
# A370256: The number of ways in which n can be expressed as b^2 * c^3, with b and c >= 1.

The programs for A370256, the canonical program `A370256.P13192202875511445713` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370256 has offset 1).

The definition of A370256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370256.P13192202875511445713

`∑{d}[n+1, A307420(#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A370256

/-- `∑{d}[n+1, A307420(#)]` -/
def P13192202875511445713.Spec : Prop :=
  ∀ n, P13192202875511445713.a n = A370256 (n + 1)

theorem P13192202875511445713.correct : P13192202875511445713.Spec := by
  intro n
  simp only [A370256, Nat.add_sub_cancel]

end A370256

/-! ## A370256.P10865987985560198628

`∑{d}[n+1, A008836(#)*A061704((n+1)/#)]`
-/

namespace A370256.P10865987985560198628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A061704 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A370256.P10865987985560198628

namespace A370256

/-- `∑{d}[n+1, A008836(#)*A061704((n+1)/#)]` -/
def P10865987985560198628.Spec : Prop :=
  ∀ n, P10865987985560198628.a n = A370256 (n + 1)

end A370256

/-! ## A370256.P18072109685193556988

`∑{d}[n+1, A046951(#)*A210826((n+1)/#)]`
-/

namespace A370256.P18072109685193556988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A210826 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A370256.P18072109685193556988

namespace A370256

/-- `∑{d}[n+1, A046951(#)*A210826((n+1)/#)]` -/
def P18072109685193556988.Spec : Prop :=
  ∀ n, P18072109685193556988.a n = A370256 (n + 1)

end A370256

/-! ## A370256.P2366305232393624217

`∑{d}[n+1, A008683(#)*A322885((n+1)/#)]`
-/

namespace A370256.P2366305232393624217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A322885 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A370256.P2366305232393624217

namespace A370256

/-- `∑{d}[n+1, A008683(#)*A322885((n+1)/#)]` -/
def P2366305232393624217.Spec : Prop :=
  ∀ n, P2366305232393624217.a n = A370256 (n + 1)

end A370256

/-! ## A370256.P241707088935964291

`∑{d}[n+1, A307424(#)*A369308((n+1)/#)]`
-/

namespace A370256.P241707088935964291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307424 d * A369308 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A370256.P241707088935964291

namespace A370256

/-- `∑{d}[n+1, A307424(#)*A369308((n+1)/#)]` -/
def P241707088935964291.Spec : Prop :=
  ∀ n, P241707088935964291.a n = A370256 (n + 1)

end A370256

/-! ## A370256.P5086078879597619252

`∑{d}[n+1, A307427(#)*A388067((n+1)/#)]`
-/

namespace A370256.P5086078879597619252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307427 d * A388067 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A370256.P5086078879597619252

namespace A370256

/-- `∑{d}[n+1, A307427(#)*A388067((n+1)/#)]` -/
def P5086078879597619252.Spec : Prop :=
  ∀ n, P5086078879597619252.a n = A370256 (n + 1)

end A370256

/-! ## A370256.P14288891565754301735

`A393491(n+1)/A266685(n)`
-/

namespace A370256.P14288891565754301735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A393491 (n + 1) : ℚ) / (A266685 n : ℚ)

end

end A370256.P14288891565754301735

namespace A370256

/-- `A393491(n+1)/A266685(n)` -/
def P14288891565754301735.Spec : Prop :=
  ∀ n, P14288891565754301735.a n = (A370256 (n + 1) : ℚ)

end A370256

/-!
# A370258: Triangle read by rows: T(n, k) = binomial(n, k)*binomial(2*n+k, k), 0 <= k <= n.

The programs for A370258, the canonical program `A370258.P13532621966261686491` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370258 has offset 0).

The definition of A370258 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n), col(n))*C(2*row(n)+col(n), col(n))` (program `A370258.P13532621966261686491`, by `A370258.P13532621966261686491.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A370258.P13532621966261686491

`C(row(n), col(n))*C(2*row(n)+col(n), col(n))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A370258

/-- `C(row(n), col(n))*C(2*row(n)+col(n), col(n))` -/
def P13532621966261686491.Spec : Prop :=
  ∀ n, (P13532621966261686491.a n : ℤ) = A370258 n

theorem P13532621966261686491.correct : P13532621966261686491.Spec := by
  intro n
  simp only [A370258]

end A370258

/-! ## A370258.P11747683275732235057

`C(A141419(n+1), A136480(A117762(n+1)))`
-/

namespace A370258.P11747683275732235057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A141419 (n + 1)).toNat (A136480 (A117762 (n + 1)).toNat).toNat

end

end A370258.P11747683275732235057

namespace A370258

/-- `C(A141419(n+1), A136480(A117762(n+1)))` -/
def P11747683275732235057.Spec : Prop :=
  ∀ n, (P11747683275732235057.a n : ℤ) = A370258 n

end A370258

/-!
# A370259: a(n) = (T(n,n+1) - 1)/n^3 for n >= 1, where T(n,x) is the n-th Chebyshev polynomial of the first kind.

The programs for A370259, there is no canonical definition to state claims against.
-/

/-! ## A370259.P17491280891708912290

`(A342205(n+1)-1)/(n+1)^3`
-/

namespace A370259.P17491280891708912290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342205 (n + 1) - 1 : ℚ) / ((n + 1) ^ 3 : ℚ)

end

end A370259.P17491280891708912290

/-!
# A370260: a(n) = sqrt(A370259(2*n+1)).

The programs for A370260, there is no canonical definition to state claims against.
-/

/-! ## A370260.P2655469417599400838

`sqrt(A370259(2*n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370260.P2655469417599400838
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A370259 (2 * n + 1) : ℝ)

end

end A370260.P2655469417599400838

/-!
# A370261: a(n) = sqrt(A370259(2*n)/(n+1)) for n >= 1.

The programs for A370261, there is no canonical definition to state claims against.
-/

/-! ## A370261.P16390234154194502520

`sqrt(A370259(2*(n+1))/(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370261.P16390234154194502520
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A370259 (2 * (n + 1)) : ℚ) / (n + 2 : ℚ) : ℝ)

end

end A370261.P16390234154194502520

/-!
# A370262: Triangle read by rows: T(n, k) = binomial(n+k, n-k)/(2*k + 1) * (2*n + 1)^k.

The programs for A370262, the canonical program `A370262.P13094819634425913327` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370262 has offset 0).

The definition of A370262 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370262.P13094819634425913327

`C(row(n)+col(n), row(n)-col(n))/(2*col(n)+1)*(2*row(n)+1)^col(n)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A370262

/-- `C(row(n)+col(n), row(n)-col(n))/(2*col(n)+1)*(2*row(n)+1)^col(n)` -/
def P13094819634425913327.Spec : Prop :=
  ∀ n, P13094819634425913327.a n = (A370262 n : ℚ)

end A370262

/-! ## A370262.P12889588797558091428

`A335944(A107742((xor(n, floor(n/2))-n)²))`
-/

namespace A370262.P12889588797558091428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335944 (A107742 ((Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ - (n : ℤ)) ^ 2).toNat).toNat

end

end A370262.P12889588797558091428

namespace A370262

/-- `A335944(A107742((xor(n, floor(n/2))-n)²))` -/
def P12889588797558091428.Spec : Prop :=
  ∀ n, P12889588797558091428.a n = A370262 n

end A370262

/-! ## A370262.P14647465387681142331

`A008955(A115172(2*(n+2))%A083044(n))`
-/

namespace A370262.P14647465387681142331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008955 (Int.tmod (A115172 (2 * (n + 2))) (A083044 n)).toNat

end

end A370262.P14647465387681142331

namespace A370262

/-- `A008955(A115172(2*(n+2))%A083044(n))` -/
def P14647465387681142331.Spec : Prop :=
  ∀ n, P14647465387681142331.a n = A370262 n

end A370262

/-! ## A370262.P11650029662361113752

`A300362(lcm(floor((n²-n)/11), A270890(2*(n+1))))`
-/

namespace A370262.P11650029662361113752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300362 (Int.lcm ⌊((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 11⌋ (A270890 (2 * (n + 1))))

end

end A370262.P11650029662361113752

namespace A370262

/-- `A300362(lcm(floor((n²-n)/11), A270890(2*(n+1))))` -/
def P11650029662361113752.Spec : Prop :=
  ∀ n, P11650029662361113752.a n = A370262 n

end A370262

/-! ## A370262.P11311180694143628993

`A378036(A000302(n))+A008955(n)`
-/

namespace A370262.P11311180694143628993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378036 (A000302 n).toNat + A008955 n

end

end A370262.P11311180694143628993

namespace A370262

/-- `A378036(A000302(n))+A008955(n)` -/
def P11311180694143628993.Spec : Prop :=
  ∀ n, P11311180694143628993.a n = A370262 n

end A370262

/-!
# A370263: Lexicographically earliest sequence such that each subsequence enclosed by a pair of equal values, excluding the endpoints, has a unique sum.

The programs for A370263, there is no canonical definition to state claims against.
-/

/-! ## A370263.P534284520712859032

`A383845(A334828(n+1))`
-/

namespace A370263.P534284520712859032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383845 (A334828 (n + 1)).toNat

end

end A370263.P534284520712859032

/-! ## A370263.P16985301686807370624

`A218604(A307573(n)+n)+1`
-/

namespace A370263.P16985301686807370624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218604 (A307573 n + (n : ℤ)).toNat + 1

end

end A370263.P16985301686807370624

/-! ## A370263.P4818599758190459994

`A366625(A343036(n+1))`
-/

namespace A370263.P4818599758190459994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366625 (A343036 (n + 1)).toNat

end

end A370263.P4818599758190459994

/-! ## A370263.P3530158078041778410

`A078770(A097979(n+2))`
-/

namespace A370263.P3530158078041778410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078770 (A097979 (n + 2)).toNat

end

end A370263.P3530158078041778410

/-! ## A370263.P17287165790253870391

`A240837(A139250(n)+7)`
-/

namespace A370263.P17287165790253870391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240837 (A139250 n + 7).toNat

end

end A370263.P17287165790253870391

/-!
# A370264: Lexicographically earliest sequence such that each subsequence enclosed by a pair of equal values, including the endpoints, has a unique sum.

The programs for A370264, there is no canonical definition to state claims against.
-/

/-! ## A370264.P15913434295325012876

`A055640(5^A272464(n+1))`
-/

namespace A370264.P15913434295325012876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A272464 (n + 1) : ℤ))).toNat

end

end A370264.P15913434295325012876

/-! ## A370264.P14989313054461394227

`A342789(n+1)+A341256(A035985(n))`
-/

namespace A370264.P14989313054461394227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342789 (n + 1) + A341256 (A035985 n).toNat

end

end A370264.P14989313054461394227

/-! ## A370264.P9392555604368228309

`A113787(n+1)-A010815(A288334(n))`
-/

namespace A370264.P9392555604368228309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113787 (n + 1) - A010815 (A288334 n).toNat

end

end A370264.P9392555604368228309

/-! ## A370264.P3154133175242178454

`A293435(A323184(n+2)+A102116(n+2))`
-/

namespace A370264.P3154133175242178454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293435 (A323184 (n + 2) + A102116 (n + 2)).toNat

end

end A370264.P3154133175242178454

/-! ## A370264.P9553029760781517113

`A368414(lt[A368414(3*n+1), A109671(n+1)])`
-/

namespace A370264.P9553029760781517113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368414 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368414 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A370264.P9553029760781517113

/-!
# A370265: Rectangular array, read by antidiagonals: T(n,k) = greatest m such that 2^m divides prime(n+k+1)-prime(n+1).

The programs for A370265, there is no canonical definition to state claims against.
-/

/-! ## A370265.P3671627968945725543

`val(A204898(n+1), 2)`
-/

namespace A370265.P3671627968945725543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A204898 (n + 1)).toNat 2

end

end A370265.P3671627968945725543

/-! ## A370265.P4691678608366940004

`val(A205558(n+1), 2)+1`
-/

namespace A370265.P4691678608366940004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A205558 (n + 1)).toNat 2 + 1

end

end A370265.P4691678608366940004

/-! ## A370265.P16157192408713232384

`A001511(A205558(n+1))`
-/

namespace A370265.P16157192408713232384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A205558 (n + 1)).toNat

end

end A370265.P16157192408713232384

/-! ## A370265.P16409580244064901437

`A007814(A204898(n+1))`
-/

namespace A370265.P16409580244064901437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A204898 (n + 1)).toNat

end

end A370265.P16409580244064901437

/-! ## A370265.P8176709114477210701

`A089309(A204898(n+1)-1)`
-/

namespace A370265.P8176709114477210701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A204898 (n + 1) - 1).toNat

end

end A370265.P8176709114477210701

/-! ## A370265.P17728137156653893395

`A007814(2*A205558(n+1))`
-/

namespace A370265.P17728137156653893395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * A205558 (n + 1)).toNat

end

end A370265.P17728137156653893395

/-!
# A370266: Numbers k that are not prime powers, such that k/rad(k) >= rad(k), where rad(k) = A007947(k).

The programs for A370266, there is no canonical definition to state claims against.
-/

/-! ## A370266.P1060046301057993201

`∪[A177492(n+1), A389528(n+1)]`
-/

namespace A370266.P1060046301057993201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A370266.P1060046301057993201

/-! ## A370266.P6424585575418594889

`∪[A286708(n+1), A366250(n+1)]`
-/

namespace A370266.P6424585575418594889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A370266.P6424585575418594889

/-! ## A370266.P1090435164968430546

`∪[A286708(n+1), A389528(n+1)]`
-/

namespace A370266.P1090435164968430546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A370266.P1090435164968430546

/-! ## A370266.P16205666429197740056

`∪[A286708(n+1), A389752(n+1)]`
-/

namespace A370266.P16205666429197740056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A370266.P16205666429197740056

/-! ## A370266.P10460649144088601821

`∪[A286708(n+1), A389753(n+1)]`
-/

namespace A370266.P10460649144088601821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A370266.P10460649144088601821

/-! ## A370266.P3946581876216215578

`∪[A303606(n+1), A389528(n+1)]`
-/

namespace A370266.P3946581876216215578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A370266.P3946581876216215578

/-! ## A370266.P6099183371857223033

`∪[A303606(n+1), A389752(n+1)]`
-/

namespace A370266.P6099183371857223033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A370266.P6099183371857223033

/-! ## A370266.P5222058401732428581

`∪[A387254(n+1), A389528(n+1)]`
-/

namespace A370266.P5222058401732428581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A370266.P5222058401732428581

/-! ## A370266.P8974369924140781876

`∪[A387256(n+1), A389528(n+1)]`
-/

namespace A370266.P8974369924140781876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A370266.P8974369924140781876

/-! ## A370266.P5791595068902059212

`∪[A389528(n+1), A390126(n+1)]`
-/

namespace A370266.P5791595068902059212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A370266.P5791595068902059212

/-! ## A370266.P7527170890857474718

`∪[A389528(n+1), A390823(n+1)]`
-/

namespace A370266.P7527170890857474718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A370266.P7527170890857474718

/-! ## A370266.P11680938854576076186

`∪[A389752(n+1), A390823(n+1)]`
-/

namespace A370266.P11680938854576076186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A370266.P11680938854576076186

/-! ## A370266.P12412137165587606441

`∩[A341645(n+1), A361098(n+1)]`
-/

namespace A370266.P12412137165587606441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370266.P12412137165587606441

/-! ## A370266.P16281685214724963354

`filter[A341645(n+1), A355447(#)]`
-/

namespace A370266.P16281685214724963354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A370266.P16281685214724963354

/-! ## A370266.P1204973164264269170

`filter[A361098(n+1), A380440(#)]`
-/

namespace A370266.P1204973164264269170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380440 (f1 j).toNat = 1) n)

end

end A370266.P1204973164264269170

/-! ## A370266.P10741413777533859159

`filter[A360768(n+1), A380440(#)]`
-/

namespace A370266.P10741413777533859159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380440 (f1 j).toNat = 1) n)

end

end A370266.P10741413777533859159

/-! ## A370266.P17290953957279444204

`∩[A341645(n+1), A360768(n+1)]`
-/

namespace A370266.P17290953957279444204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370266.P17290953957279444204

/-! ## A370266.P15051683080634570321

`filter[A378878(n+1), A380440(#)]`
-/

namespace A370266.P15051683080634570321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380440 (f1 j).toNat = 1) n)

end

end A370266.P15051683080634570321

/-! ## A370266.P15250543912981538389

`∩[A341645(n+1), A378878(n+1)]`
-/

namespace A370266.P15250543912981538389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370266.P15250543912981538389

/-! ## A370266.P13582971990695259020

`filter[A284342(n+1), A380440(#)]`
-/

namespace A370266.P13582971990695259020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380440 (f1 j).toNat = 1) n)

end

end A370266.P13582971990695259020

/-!
# A370267: Numbers with an even number of prime factors not of the form 8m+-1 (counting repetitions).

The programs for A370267, there is no canonical definition to state claims against.
-/

/-! ## A370267.P14883683184653792041

`eq[1, char[A322469(2*(n+1))]]`
-/

namespace A370267.P14883683184653792041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322469 (2 * (n + 1))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370267.P14883683184653792041

/-!
# A370268: Intersection of A189715 and A370267.

The programs for A370268, there is no canonical definition to state claims against.
-/

/-! ## A370268.P14446938549290062561

`lt[A321731(3^val(n+1, 3)), A046113(n)]`
-/

namespace A370268.P14446938549290062561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321731 (3 ^ SequenceMachineLib.valuation (n + 1) 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370268.P14446938549290062561

/-! ## A370268.P5291968439671953811

`lt[A001055(A375552(n+1)), A046113(n)]`
-/

namespace A370268.P5291968439671953811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A375552 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370268.P5291968439671953811

/-! ## A370268.P12131648908118019832

`lt[A301456(A037213(3*n)), A046113(n)]`
-/

namespace A370268.P12131648908118019832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301456 (A037213 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370268.P12131648908118019832

/-! ## A370268.P13499017080747683774

`lt[A010054(A362615(n)), A263577(3*n)]`
-/

namespace A370268.P13499017080747683774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A362615 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263577 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370268.P13499017080747683774

/-! ## A370268.P12742535447530649439

`A002481(n+2)+A000122(A127578(n+1))`
-/

namespace A370268.P12742535447530649439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002481 (n + 2) + A000122 (A127578 (n + 1)).toNat

end

end A370268.P12742535447530649439

/-! ## A370268.P11842971996528233139

`A086075(A130805(n+1))+A002481(n+2)`
-/

namespace A370268.P11842971996528233139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086075 (A130805 (n + 1)).toNat + A002481 (n + 2)

end

end A370268.P11842971996528233139

/-! ## A370268.P10026518293413950095

`A002481(n+2)%A232391(2*n+3)`
-/

namespace A370268.P10026518293413950095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002481 (n + 2)) (A232391 (2 * n + 3))

end

end A370268.P10026518293413950095

/-! ## A370268.P13852005460547500074

`lt[A359595(A047000(n)), A046113(n)]`
-/

namespace A370268.P13852005460547500074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359595 (A047000 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370268.P13852005460547500074

/-! ## A370268.P12268384097300911230

`lt[A049419(A078330(n+1)), A046113(n)]`
-/

namespace A370268.P12268384097300911230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A078330 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370268.P12268384097300911230

/-! ## A370268.P4665623209023404985

`A002481(n+2)/A325169(A027746(3*n+4))`
-/

namespace A370268.P4665623209023404985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002481 (n + 2) : ℚ) / (A325169 (A027746 (3 * n + 4)).toNat : ℚ)

end

end A370268.P4665623209023404985

/-!
# A370269: Coefficient of x^n in the expansion of 1/( (1-x) * (1-x^2)^3 )^n.

The programs for A370269, there is no canonical definition to state claims against.
-/

/-! ## A370269.P17112176330210079420

`A256881(n+2)-A256478(A361553(n))`
-/

namespace A370269.P17112176330210079420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256881 (n + 2) - A256478 (A361553 n).toNat

end

end A370269.P17112176330210079420

/-!
# A370270: Coefficient of x^n in the expansion of 1/( (1-x)^2 * (1-x^2)^3 )^n.

The programs for A370270, there is no canonical definition to state claims against.
-/

/-! ## A370270.P10350983959791310159

`A371972(A094982(n))`
-/

namespace A370270.P10350983959791310159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371972 (A094982 n).toNat

end

end A370270.P10350983959791310159

/-!
# A370271: Coefficient of x^n in the expansion of 1/( (1-x)^3 * (1-x^2)^3 )^n.

The programs for A370271, there is no canonical definition to state claims against.
-/

/-! ## A370271.P5546340344813011608

`A060086(A139277(n))`
-/

namespace A370271.P5546340344813011608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (A139277 n).toNat

end

end A370271.P5546340344813011608

/-!
# A370276: Self-convolution of A138020.

The programs for A370276, there is no canonical definition to state claims against.
-/

/-! ## A370276.P17346701985835765612

`A395776(A150835(n+1))`
-/

namespace A370276.P17346701985835765612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395776 (A150835 (n + 1)).toNat

end

end A370276.P17346701985835765612

/-!
# A370277: Numbers k with the property that Dirichlet's Simultaneous Approximation Theorem applied to Z_k is tight (for d = 3).

The programs for A370277, there is no canonical definition to state claims against.
-/

/-! ## A370277.P2378877291198562649

`eq[A070563(3*n+5), A370278(n+2)]+2`
-/

namespace A370277.P2378877291198562649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070563 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370278 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A370277.P2378877291198562649

/-!
# A370278: Difference between the bound provided by Dirichlet's Simultaneous Approximation Theorem applied to Z_n (for d=3) and the best possible bound.

The programs for A370278, there is no canonical definition to state claims against.
-/

/-! ## A370278.P16119849041080323496

`A123506(A184792(n+1))`
-/

namespace A370278.P16119849041080323496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123506 (A184792 (n + 1)).toNat

end

end A370278.P16119849041080323496

/-! ## A370278.P1613497343795213277

`A265695(A142831(n+1))`
-/

namespace A370278.P1613497343795213277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265695 (A142831 (n + 1)).toNat

end

end A370278.P1613497343795213277

/-! ## A370278.P1088061351347078593

`A101825(A101318(n+1))-1`
-/

namespace A370278.P1088061351347078593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 (A101318 (n + 1)).toNat - 1

end

end A370278.P1088061351347078593

/-! ## A370278.P2051626157230927580

`A343082(A211018(2*n+5))%2`
-/

namespace A370278.P2051626157230927580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343082 (A211018 (2 * n + 5)).toNat) 2

end

end A370278.P2051626157230927580

/-! ## A370278.P8113192688149056228

`A097325(and(ceil(3*n/2), A325170(3*n+2)))`
-/

namespace A370278.P8113192688149056228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (Int.land ⌈3 * ((n : ℚ) / 2)⌉ (A325170 (3 * n + 2))).toNat

end

end A370278.P8113192688149056228

/-!
# A370279: Indices of record high values in A370278.

The programs for A370279, there is no canonical definition to state claims against.
-/

/-! ## A370279.P10236337877523834184

`A261494(2*(n+1))+A126313(A163632(n+1))`
-/

namespace A370279.P10236337877523834184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (2 * (n + 1)) + A126313 (A163632 (n + 1)).toNat

end

end A370279.P10236337877523834184

/-!
# A370280: Coefficient of x^n in the expansion of 1/( (1-x)^2 - x )^n.

The programs for A370280, there is no canonical definition to state claims against.
-/

/-! ## A370280.P14236915364247917363

`A172249(A062708(n))`
-/

namespace A370280.P14236915364247917363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172249 (A062708 n).toNat

end

end A370280.P14236915364247917363

/-!
# A370281: Coefficient of x^n in the expansion of 1/( (1-x)^2 - x^3 )^n.

The programs for A370281, there is no canonical definition to state claims against.
-/

/-! ## A370281.P10751562912923045310

`A086871(n*(n*(n-5)+5)²)+and(n, floor(n/2))`
-/

namespace A370281.P10751562912923045310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086871 ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 5) + 5) ^ 2).toNat + Int.land (n : ℤ) ⌊(n : ℚ) / 2⌋

end

end A370281.P10751562912923045310

/-!
# A370283: Coefficient of x^n in the expansion of 1/( (1-x)^3 - x^2 )^n.

The programs for A370283, there is no canonical definition to state claims against.
-/

/-! ## A370283.P18180723662563050852

`A140263(A244627(n))+A005590(n)`
-/

namespace A370283.P18180723662563050852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140263 (A244627 n).toNat + A005590 n

end

end A370283.P18180723662563050852

/-!
# A370284: Coefficient of x^n in the expansion of 1/( (1-x)^3 - x^3 )^n.

The programs for A370284, there is no canonical definition to state claims against.
-/

/-! ## A370284.P11970956620349545958

`A382369(n)+A184964(n²)`
-/

namespace A370284.P11970956620349545958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382369 n + A184964 (n ^ 2)

end

end A370284.P11970956620349545958

/-!
# A370285: Coefficient of x^n in the expansion of ( (1+x)^2 + x^3 )^n.

The programs for A370285, there is no canonical definition to state claims against.
-/

/-! ## A370285.P2328244409538106871

`A247781(A292485(n))`
-/

namespace A370285.P2328244409538106871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247781 (A292485 n).toNat

end

end A370285.P2328244409538106871

/-!
# A370286: Coefficient of x^n in the expansion of ( (1+x)^3 + x^2 )^n.

The programs for A370286, there is no canonical definition to state claims against.
-/

/-! ## A370286.P4625697340985904660

`A036537(A121586(comp[a(n-2)+7]))` with `a(0)=1, a(1)=1, a(2)=6`
-/

namespace A370286.P4625697340985904660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 6] fun n f1 =>
  f1 (n - 2) + 7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036537 (A121586 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A370286.P4625697340985904660

/-!
# A370287: Coefficient of x^n in the expansion of ( (1+x)^3 + x^3 )^n.

The programs for A370287, there is no canonical definition to state claims against.
-/

/-! ## A370287.P710106066317132070

`A278392(n)+A122180(A006125(n))`
-/

namespace A370287.P710106066317132070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278392 n + A122180 (A006125 n).toNat

end

end A370287.P710106066317132070

/-! ## A370287.P10395445954686816317

`or(A006530(A001142(n)), A278392(n))`
-/

namespace A370287.P10395445954686816317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006530 (A001142 n).toNat) (A278392 n)

end

end A370287.P10395445954686816317

/-!
# A370288: G.f.: exp( Sum_{k>=1} (3*k)! / (2 * k!^3) * x^k/k ).

The programs for A370288, there is no canonical definition to state claims against.
-/

/-! ## A370288.P3914359243467405424

`A085390(n+2)+A085341(A085356(n))`
-/

namespace A370288.P3914359243467405424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085390 (n + 2) + A085341 (A085356 n).toNat

end

end A370288.P3914359243467405424

/-!
# A370289: G.f.: exp( Sum_{k>=1} (3*k)! / (3 * k!^3) * x^k/k ).

The programs for A370289, there is no canonical definition to state claims against.
-/

/-! ## A370289.P5945324404709289520

`A124540(A045846(n))+A016185(n)`
-/

namespace A370289.P5945324404709289520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124540 (A045846 n).toNat + A016185 n

end

end A370289.P5945324404709289520

/-!
# A370290: Row sums of A370220.

The programs for A370290, there is no canonical definition to state claims against.
-/

/-! ## A370290.P16355611972464655600

`A072643(n+1)*A072643(n+1)-A370292(n+1)`
-/

namespace A370290.P16355611972464655600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (n + 1) * A072643 (n + 1) - A370292 (n + 1)

end

end A370290.P16355611972464655600

/-! ## A370290.P5127762919007426076

`A029931(A072800(n+1))`
-/

namespace A370290.P5127762919007426076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A072800 (n + 1)).toNat

end

end A370290.P5127762919007426076

/-! ## A370290.P17834481326285378735

`A230877(A057520(n+1))`
-/

namespace A370290.P17834481326285378735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 (A057520 (n + 1)).toNat

end

end A370290.P17834481326285378735

/-! ## A370290.P4499199457909873496

`A230877(A014486(n+1)/2)`
-/

namespace A370290.P4499199457909873496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 (SequenceMachineLib.roundAway ((A014486 (n + 1) : ℚ) / 2)).toNat

end

end A370290.P4499199457909873496

/-! ## A370290.P15537852389535494267

`A230877(A014486(n+1))`
-/

namespace A370290.P15537852389535494267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 (A014486 (n + 1)).toNat

end

end A370290.P15537852389535494267

/-! ## A370290.P13561118681622062129

`A230877(A194045(n+1))`
-/

namespace A370290.P13561118681622062129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 (A194045 (n + 1)).toNat

end

end A370290.P13561118681622062129

/-! ## A370290.P15323665672846617042

`A231204(A057547(n+1)/2)`
-/

namespace A370290.P15323665672846617042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 (SequenceMachineLib.roundAway ((A057547 (n + 1) : ℚ) / 2)).toNat

end

end A370290.P15323665672846617042

/-! ## A370290.P15449354651880834524

`A231204(A057547(n+1))`
-/

namespace A370290.P15449354651880834524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 (A057547 (n + 1)).toNat

end

end A370290.P15449354651880834524

/-!
# A370291: Triangular number T(n) = A000217(n) occurs C(n) = A000108(n) times.

The programs for A370291, the canonical program `A370291.P34793369321355740` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370291 has offset 0).

The definition of A370291 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072643, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A370291.P34793369321355740

`A000217(A072643(n))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A370291

/-- `A000217(A072643(n))` -/
def P34793369321355740.Spec : Prop :=
  ∀ n, P34793369321355740.a n = A370291 n

theorem P34793369321355740.correct : P34793369321355740.Spec := by
  intro n
  simp only [A370291]

end A370291

/-! ## A370291.P17268981827694687971

`C(A358551(n+1), 2)`
-/

namespace A370291.P17268981827694687971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A358551 (n + 1)).toNat 2

end

end A370291.P17268981827694687971

namespace A370291

/-- `C(A358551(n+1), 2)` -/
def P17268981827694687971.Spec : Prop :=
  ∀ n, (P17268981827694687971.a n : ℤ) = A370291 n

end A370291

/-! ## A370291.P971894157835024470

`A161680(A072643(n)+1)`
-/

namespace A370291.P971894157835024470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A072643 n + 1).toNat

end

end A370291.P971894157835024470

namespace A370291

/-- `A161680(A072643(n)+1)` -/
def P971894157835024470.Spec : Prop :=
  ∀ n, P971894157835024470.a n = A370291 n

end A370291

/-! ## A370291.P17654342363553056900

`A304818(2^A072643(n))`
-/

namespace A370291.P17654342363553056900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A072643 n : ℤ))).toNat

end

end A370291.P17654342363553056900

namespace A370291

/-- `A304818(2^A072643(n))` -/
def P17654342363553056900.Spec : Prop :=
  ∀ n, P17654342363553056900.a n = A370291 n

end A370291

/-! ## A370291.P17562098329188063487

`A000217(∑{digits}[A063171(n), #])`
-/

namespace A370291.P17562098329188063487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A370291.P17562098329188063487

namespace A370291

/-- `A000217(∑{digits}[A063171(n), #])` -/
def P17562098329188063487.Spec : Prop :=
  ∀ n, P17562098329188063487.a n = A370291 n

end A370291

/-! ## A370291.P9102237828060439136

`A000217(∑[char[A014137(n)]])`
-/

namespace A370291.P9102237828060439136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A370291.P9102237828060439136

namespace A370291

/-- `A000217(∑[char[A014137(n)]])` -/
def P9102237828060439136.Spec : Prop :=
  ∀ n, P9102237828060439136.a n = A370291 n

end A370291

/-! ## A370291.P11772869305169331941

`∑[char[A014137(n)]*A057514(n)]`
-/

namespace A370291.P11772869305169331941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A057514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370291.P11772869305169331941

namespace A370291

/-- `∑[char[A014137(n)]*A057514(n)]` -/
def P11772869305169331941.Spec : Prop :=
  ∀ n, P11772869305169331941.a n = A370291 n

end A370291

/-! ## A370291.P18398702336708866269

`A379777(A000217(A072768(A000217(n+1))))`
-/

namespace A370291.P18398702336708866269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379777 (A000217 (A072768 (A000217 (n + 1)).toNat).toNat).toNat

end

end A370291.P18398702336708866269

namespace A370291

/-- `A379777(A000217(A072768(A000217(n+1))))` -/
def P18398702336708866269.Spec : Prop :=
  ∀ n, P18398702336708866269.a n = A370291 n

end A370291

/-!
# A370292: Row sums of A370222.

The programs for A370292, there is no canonical definition to state claims against.
-/

/-! ## A370292.P99703868206845551

`A072643(n+1)*A072643(n+1)-A370290(n+1)`
-/

namespace A370292.P99703868206845551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (n + 1) * A072643 (n + 1) - A370290 (n + 1)

end

end A370292.P99703868206845551

/-! ## A370292.P11030874457071717151

`A236855(A082853(n+1))`
-/

namespace A370292.P11030874457071717151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236855 (A082853 (n + 1)).toNat

end

end A370292.P11030874457071717151

/-! ## A370292.P11452395794410334707

`A236855(n+1-A082852(n+1))`
-/

namespace A370292.P11452395794410334707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236855 ((n + 1 : ℤ) - A082852 (n + 1)).toNat

end

end A370292.P11452395794410334707

/-! ## A370292.P10284558784229756357

`A321999(A071157(n+1))`
-/

namespace A370292.P10284558784229756357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321999 (A071157 (n + 1)).toNat

end

end A370292.P10284558784229756357

/-! ## A370292.P11733024695192924679

`A321999(A071158(n+1))`
-/

namespace A370292.P11733024695192924679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321999 (A071158 (n + 1)).toNat

end

end A370292.P11733024695192924679

/-!
# A370296: Inverse Moebius transform of A322327.

The programs for A370296, the canonical program `A370296.P10818159386704283469` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370296 has offset 1).

The definition of A370296 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370296.P10818159386704283469

`∏{e}[n+1, #²+1+#]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A370296

/-- `∏{e}[n+1, #²+1+#]` -/
def P10818159386704283469.Spec : Prop :=
  ∀ n, (P10818159386704283469.a n : ℤ) = A370296 (n + 1)

theorem P10818159386704283469.correct : P10818159386704283469.Spec := by
  intro n
  simp only [A370296, Nat.add_sub_cancel]

end A370296

/-! ## A370296.P1899126354674797249

`∑{d}[n+1, A322327(#)]`
-/

namespace A370296.P1899126354674797249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A322327 d

end

end A370296.P1899126354674797249

namespace A370296

/-- `∑{d}[n+1, A322327(#)]` -/
def P1899126354674797249.Spec : Prop :=
  ∀ n, P1899126354674797249.a n = A370296 (n + 1)

end A370296

/-! ## A370296.P1706076477384960032

`∑{d}[n+1, A007425(#)*A227291((n+1)/#)]`
-/

namespace A370296.P1706076477384960032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A227291 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A370296.P1706076477384960032

namespace A370296

/-- `∑{d}[n+1, A007425(#)*A227291((n+1)/#)]` -/
def P1706076477384960032.Spec : Prop :=
  ∀ n, P1706076477384960032.a n = A370296 (n + 1)

end A370296

/-! ## A370296.P2281060649680411730

`∑{d}[n+1, A008836(#)*A286779((n+1)/#)]`
-/

namespace A370296.P2281060649680411730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A286779 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A370296.P2281060649680411730

namespace A370296

/-- `∑{d}[n+1, A008836(#)*A286779((n+1)/#)]` -/
def P2281060649680411730.Spec : Prop :=
  ∀ n, P2281060649680411730.a n = A370296 (n + 1)

end A370296

/-! ## A370296.P16682856335907523094

`∑{d}[n+1, A046951(#)*A252505((n+1)/#)]`
-/

namespace A370296.P16682856335907523094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A252505 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A370296.P16682856335907523094

namespace A370296

/-- `∑{d}[n+1, A046951(#)*A252505((n+1)/#)]` -/
def P16682856335907523094.Spec : Prop :=
  ∀ n, P16682856335907523094.a n = A370296 (n + 1)

end A370296

/-! ## A370296.P18155817106296598151

`∑{d}[n+1, A000005(#)*A323308((n+1)/#)]`
-/

namespace A370296.P18155817106296598151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A323308 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A370296.P18155817106296598151

namespace A370296

/-- `∑{d}[n+1, A000005(#)*A323308((n+1)/#)]` -/
def P18155817106296598151.Spec : Prop :=
  ∀ n, P18155817106296598151.a n = A370296 (n + 1)

end A370296

/-! ## A370296.P641829255386964287

`∑{d}[n+1, A007426(#)*A363552((n+1)/#)]`
-/

namespace A370296.P641829255386964287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d * A363552 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A370296.P641829255386964287

namespace A370296

/-- `∑{d}[n+1, A007426(#)*A363552((n+1)/#)]` -/
def P641829255386964287.Spec : Prop :=
  ∀ n, P641829255386964287.a n = A370296 (n + 1)

end A370296

/-! ## A370296.P13725600908480663578

`∑{d}[n+1, A034444(#)*A365331((n+1)/#)]`
-/

namespace A370296.P13725600908480663578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A365331 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A370296.P13725600908480663578

namespace A370296

/-- `∑{d}[n+1, A034444(#)*A365331((n+1)/#)]` -/
def P13725600908480663578.Spec : Prop :=
  ∀ n, P13725600908480663578.a n = A370296 (n + 1)

end A370296

/-! ## A370296.P2968022768438735493

`∑{d}[n+1, A035116(#)*A390490((n+1)/#)]`
-/

namespace A370296.P2968022768438735493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035116 d * A390490 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A370296.P2968022768438735493

namespace A370296

/-- `∑{d}[n+1, A035116(#)*A390490((n+1)/#)]` -/
def P2968022768438735493.Spec : Prop :=
  ∀ n, P2968022768438735493.a n = A370296 (n + 1)

end A370296

/-! ## A370296.P11620882598015608574

`∑{d}[n+1, A124315(#)*A307430((n+1)/#)]`
-/

namespace A370296.P11620882598015608574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A124315 d * A307430 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A370296.P11620882598015608574

namespace A370296

/-- `∑{d}[n+1, A124315(#)*A307430((n+1)/#)]` -/
def P11620882598015608574.Spec : Prop :=
  ∀ n, P11620882598015608574.a n = A370296 (n + 1)

end A370296

/-!
# A370297: Inverse Moebius transform of A322328.

The programs for A370297, the canonical program `A370297.P5303154117409437181` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370297 has offset 1).

The definition of A370297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370297.P14562057256673231953

`∑{d}[n+1, A322328(#)]`
-/

namespace A370297.P14562057256673231953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A322328 d

end

end A370297.P14562057256673231953

namespace A370297

/-- `∑{d}[n+1, A322328(#)]` -/
def P14562057256673231953.Spec : Prop :=
  ∀ n, P14562057256673231953.a n = A370297 (n + 1)

end A370297

/-! ## A370297.P5303154117409437181

`∏{e}[n+1, A001844(#)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A370297

/-- `∏{e}[n+1, A001844(#)]` -/
def P5303154117409437181.Spec : Prop :=
  ∀ n, P5303154117409437181.a n = A370297 (n + 1)

theorem P5303154117409437181.correct : P5303154117409437181.Spec := by
  intro n
  simp only [A370297, Nat.add_sub_cancel]

end A370297

/-! ## A370297.P16747693511606176666

`∏{e}[n+1, A099776(#)]`
-/

namespace A370297.P16747693511606176666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A099776 (Nat.factorization (f1 n) p)

end

end A370297.P16747693511606176666

namespace A370297

/-- `∏{e}[n+1, A099776(#)]` -/
def P16747693511606176666.Spec : Prop :=
  ∀ n, P16747693511606176666.a n = A370297 (n + 1)

end A370297

/-! ## A370297.P6280316193021671953

`A070920(n+1)/A048691(n+1)`
-/

namespace A370297.P6280316193021671953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070920 (n + 1) : ℚ) / (A048691 (n + 1) : ℚ)

end

end A370297.P6280316193021671953

namespace A370297

/-- `A070920(n+1)/A048691(n+1)` -/
def P6280316193021671953.Spec : Prop :=
  ∀ n, P6280316193021671953.a n = (A370297 (n + 1) : ℚ)

end A370297

/-! ## A370297.P7904717868628437664

`∑{d}[n+1, A008966(#)*A035116((n+1)/#)]`
-/

namespace A370297.P7904717868628437664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A035116 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A370297.P7904717868628437664

namespace A370297

/-- `∑{d}[n+1, A008966(#)*A035116((n+1)/#)]` -/
def P7904717868628437664.Spec : Prop :=
  ∀ n, P7904717868628437664.a n = A370297 (n + 1)

end A370297

/-! ## A370297.P1803537981419007742

`∑{d}[n+1, A034444(#)*A048691((n+1)/#)]`
-/

namespace A370297.P1803537981419007742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A048691 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A370297.P1803537981419007742

namespace A370297

/-- `∑{d}[n+1, A034444(#)*A048691((n+1)/#)]` -/
def P1803537981419007742.Spec : Prop :=
  ∀ n, P1803537981419007742.a n = A370297 (n + 1)

end A370297

/-! ## A370297.P12875155326325192131

`∑{d}[n+1, A062367(#)*A271102((n+1)/#)]`
-/

namespace A370297.P12875155326325192131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062367 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A370297.P12875155326325192131

namespace A370297

/-- `∑{d}[n+1, A062367(#)*A271102((n+1)/#)]` -/
def P12875155326325192131.Spec : Prop :=
  ∀ n, P12875155326325192131.a n = A370297 (n + 1)

end A370297

/-! ## A370297.P10058113622912903807

`∑{d}[n+1, A078644(#)*A304182((n+1)/#)]`
-/

namespace A370297.P10058113622912903807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078644 d * A304182 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A370297.P10058113622912903807

namespace A370297

/-- `∑{d}[n+1, A078644(#)*A304182((n+1)/#)]` -/
def P10058113622912903807.Spec : Prop :=
  ∀ n, P10058113622912903807.a n = A370297 (n + 1)

end A370297

/-! ## A370297.P17382035586263875641

`∑{d}[n+1, A062369(#)*A328729((n+1)/#)]`
-/

namespace A370297.P17382035586263875641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062369 d * A328729 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A370297.P17382035586263875641

namespace A370297

/-- `∑{d}[n+1, A062369(#)*A328729((n+1)/#)]` -/
def P17382035586263875641.Spec : Prop :=
  ∀ n, P17382035586263875641.a n = A370297 (n + 1)

end A370297

/-! ## A370297.P10106980295388918252

`∑{d}[n+1, A008836(#)*A389698((n+1)/#)]`
-/

namespace A370297.P10106980295388918252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A389698 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A370297.P10106980295388918252

namespace A370297

/-- `∑{d}[n+1, A008836(#)*A389698((n+1)/#)]` -/
def P10106980295388918252.Spec : Prop :=
  ∀ n, P10106980295388918252.a n = A370297 (n + 1)

end A370297

/-! ## A370297.P9763399180652204681

`∑{d}[n+1, A130054(#)*A390317((n+1)/#)]`
-/

namespace A370297.P9763399180652204681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A390317 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A370297.P9763399180652204681

namespace A370297

/-- `∑{d}[n+1, A130054(#)*A390317((n+1)/#)]` -/
def P9763399180652204681.Spec : Prop :=
  ∀ n, P9763399180652204681.a n = A370297 (n + 1)

end A370297

/-! ## A370297.P17487562923940348871

`∑{d}[n+1, A322327(#)*A386278((n+1)/#)]`
-/

namespace A370297.P17487562923940348871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A322327 d * A386278 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A370297.P17487562923940348871

namespace A370297

/-- `∑{d}[n+1, A322327(#)*A386278((n+1)/#)]` -/
def P17487562923940348871.Spec : Prop :=
  ∀ n, P17487562923940348871.a n = A370297 (n + 1)

end A370297

/-! ## A370297.P14801355016204174815

`A070920(n+1)/(A086222(n+1)-A086165(n+1))`
-/

namespace A370297.P14801355016204174815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070920 (n + 1) : ℚ) / (A086222 (n + 1) - A086165 (n + 1) : ℚ)

end

end A370297.P14801355016204174815

namespace A370297

/-- `A070920(n+1)/(A086222(n+1)-A086165(n+1))` -/
def P14801355016204174815.Spec : Prop :=
  ∀ n, P14801355016204174815.a n = (A370297 (n + 1) : ℚ)

end A370297

/-! ## A370297.P2544456358729810146

`A070920(n+1)/(A146564(n+1)-A063647(n+1))`
-/

namespace A370297.P2544456358729810146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070920 (n + 1) : ℚ) / (A146564 (n + 1) - A063647 (n + 1) : ℚ)

end

end A370297.P2544456358729810146

namespace A370297

/-- `A070920(n+1)/(A146564(n+1)-A063647(n+1))` -/
def P2544456358729810146.Spec : Prop :=
  ∀ n, P2544456358729810146.a n = (A370297 (n + 1) : ℚ)

end A370297

/-!
# A370299: Number of chordless cycles in the complement of the n-Sierpinski gasket graph.

The programs for A370299, the canonical program `A370299.P15785426155661098065` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370299 has offset 1).

The definition of A370299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370299.P15785426155661098065

`C(∑[(2*3^n)%A001653(n+1)], 2)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A370299

/-- `C(∑[(2*3^n)%A001653(n+1)], 2)` -/
def P15785426155661098065.Spec : Prop :=
  ∀ n, (P15785426155661098065.a n : ℤ) = A370299 (n + 1)

theorem P15785426155661098065.correct : P15785426155661098065.Spec := by
  intro n
  simp only [A370299, Nat.add_sub_cancel]

end A370299

/-! ## A370299.P16159527083525590257

`C(∑[A008776(n)%A000105(3*n+1)], 2)`
-/

namespace A370299.P16159527083525590257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008776 n) (A000105 (3 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A370299.P16159527083525590257

namespace A370299

/-- `C(∑[A008776(n)%A000105(3*n+1)], 2)` -/
def P16159527083525590257.Spec : Prop :=
  ∀ n, (P16159527083525590257.a n : ℤ) = A370299 (n + 1)

end A370299

/-! ## A370299.P17584566690906939923

`A000217(3*(abs(2-3^n)-1))`
-/

namespace A370299.P17584566690906939923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (3 * (|2 - (3 ^ n : ℤ)| - 1)).toNat

end

end A370299.P17584566690906939923

namespace A370299

/-- `A000217(3*(abs(2-3^n)-1))` -/
def P17584566690906939923.Spec : Prop :=
  ∀ n, P17584566690906939923.a n = A370299 (n + 1)

end A370299

/-! ## A370299.P10403434546973841199

`A081266(A058809(n))`
-/

namespace A370299.P10403434546973841199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081266 (A058809 n).toNat

end

end A370299.P10403434546973841199

namespace A370299

/-- `A081266(A058809(n))` -/
def P10403434546973841199.Spec : Prop :=
  ∀ n, P10403434546973841199.a n = A370299 (n + 1)

end A370299

/-! ## A370299.P5165331237652757287

`C(A054966(A103453(n)), 2)`
-/

namespace A370299.P5165331237652757287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A054966 (A103453 n).toNat).toNat 2

end

end A370299.P5165331237652757287

namespace A370299

/-- `C(A054966(A103453(n)), 2)` -/
def P5165331237652757287.Spec : Prop :=
  ∀ n, (P5165331237652757287.a n : ℤ) = A370299 (n + 1)

end A370299

