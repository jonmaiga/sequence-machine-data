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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A090100: Numbers n such that n and the four successive integers produce primes if substituted for x in the polynomial 5x^2+5x+1. See A090562, A090563. Terms show that longer similar chains also exist.

The programs for A090100, there is no canonical definition to state claims against.
-/

/-! ## A090100.P8327027028725726382

`∑[A293483(A092255(n)²)]`
-/

namespace A090100.P8327027028725726382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293483 (A092255 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090100.P8327027028725726382

/-! ## A090100.P6022222250731392077

`∑[A211007(A101845(∏{d}[n, #]))]`
-/

namespace A090100.P6022222250731392077
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211007 (A101845 (∏ d ∈ Nat.divisors (f2 n), d)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090100.P6022222250731392077

/-!
# A090101: Numbers n such that n and the 6 successive integers yield primes if substituted for x in polynomial 5x^2+5x+1.

The programs for A090101, there is no canonical definition to state claims against.
-/

/-! ## A090101.P9789459503340932097

`floor(sqrt(A090102(n+1)/5))`
-/

namespace A090101.P9789459503340932097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A090102 (n + 1) : ℚ) / 5 : ℝ)⌋

end

end A090101.P9789459503340932097

/-!
# A090103: n written in base equal to the number of distinct prime factors of n and a(1)=0.

The programs for A090103, there is no canonical definition to state claims against.
-/

/-! ## A090103.P5619898382220386893

`A363038(A276596(n+1)-A240328(3*n))`
-/

namespace A090103.P5619898382220386893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363038 (A276596 (n + 1) - A240328 (3 * n)).toNat

end

end A090103.P5619898382220386893

/-! ## A090103.P16349068115348718558

`A363038(A276596(n+1)%A077512(n+1))`
-/

namespace A090103.P16349068115348718558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363038 (Int.tmod (A276596 (n + 1)) (A077512 (n + 1))).toNat

end

end A090103.P16349068115348718558

/-!
# A090106: Values of k such that {P(k), P(k+1), ..., P(k+12)} are all prime numbers, where P(k) = k^2 + k + 41.

The programs for A090106, there is no canonical definition to state claims against.
-/

/-! ## A090106.P16030759723733132122

`∑[A003815(A291720(n))]`
-/

namespace A090106.P16030759723733132122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (A291720 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090106.P16030759723733132122

/-! ## A090106.P4575735289597743419

`∑[A008698(A369054(n))]`
-/

namespace A090106.P4575735289597743419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008698 (A369054 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090106.P4575735289597743419

/-! ## A090106.P5719948764078033520

`A045867(A243832(n))+n`
-/

namespace A090106.P5719948764078033520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045867 (A243832 n).toNat + (n : ℤ)

end

end A090106.P5719948764078033520

/-! ## A090106.P3840866947824328060

`A338029(A246674(n))+n`
-/

namespace A090106.P3840866947824328060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338029 (A246674 n).toNat + (n : ℤ)

end

end A090106.P3840866947824328060

/-! ## A090106.P6586633401581470245

`∑[A002866(A025427(n)²)]`
-/

namespace A090106.P6586633401581470245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002866 (A025427 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090106.P6586633401581470245

/-!
# A090107: Values of k such that {P(k), P(k+1), ..., P(k+9)} are all prime numbers, where P(k) = k^2 - 79*k + 1601.

The programs for A090107, there is no canonical definition to state claims against.
-/

/-! ## A090107.P12650198809333120246

`∩[A090108(n+1)-1, A090108(n+1)]`
-/

namespace A090107.P12650198809333120246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090108 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090107.P12650198809333120246

/-! ## A090107.P17753832390080110537

`∩[A090108(n+1), A023443(A090108(n+1))]`
-/

namespace A090107.P17753832390080110537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A090108 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090107.P17753832390080110537

/-!
# A090109: Values of k such that {P(k), P(k+1), ..., P(k+10)} are all prime numbers, where P(k) = k^2 - 79*k + 1601.

The programs for A090109, there is no canonical definition to state claims against.
-/

/-! ## A090109.P13749238074415966453

`∩[A090107(n+1)-1, A090107(n+1)]`
-/

namespace A090109.P13749238074415966453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090107 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090109.P13749238074415966453

/-!
# A090110: Values of k such that {P(k), P(k+1), ..., P(k+7)} are all prime numbers, where P(k) = 4*k^2 - 154*k + 1523.

The programs for A090110, there is no canonical definition to state claims against.
-/

/-! ## A090110.P11800485030962116150

`∩[A090111(n+1)-1, A090111(n+1)]`
-/

namespace A090110.P11800485030962116150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090111 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090110.P11800485030962116150

/-! ## A090110.P16668227187361693301

`A090111(lt[A090111(n+2)-A090111(n+1), 2]+1)`
-/

namespace A090110.P16668227187361693301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090111 (n + 2) - A090111 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090111 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A090110.P16668227187361693301

/-! ## A090110.P599135622586613145

`∩[A090111(n+1), A023443(A090111(n+1))]`
-/

namespace A090110.P599135622586613145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A090111 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090110.P599135622586613145

/-! ## A090110.P4027220140768930666

`(n+2)^C(2*n, 64)²+n`
-/

namespace A090110.P4027220140768930666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ Nat.choose (2 * n) 64 ^ 2 + n

end

end A090110.P4027220140768930666

/-!
# A090111: Values of k such that {P(k), P(k+1), ..., P(k+6)} are all prime numbers, where P(k) = 4*k^2 - 154*k + 1523.

The programs for A090111, there is no canonical definition to state claims against.
-/

/-! ## A090111.P11781615695069639293

`∑[A034932(A185238(n+2))]`
-/

namespace A090111.P11781615695069639293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034932 (A185238 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090111.P11781615695069639293

/-! ## A090111.P2207727800578305752

`∑[and(13, A141214(A034572(n+1)))]`
-/

namespace A090111.P2207727800578305752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 13 (A141214 (A034572 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090111.P2207727800578305752

/-! ## A090111.P16901140633429273931

`lt[A101048(n), A060632(A356413(n+1))]`
-/

namespace A090111.P16901140633429273931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101048 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (A356413 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090111.P16901140633429273931

/-! ## A090111.P11360327839926226611

`lt[A000041(n), A295901(A356194(3*n+1))]`
-/

namespace A090111.P11360327839926226611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295901 (A356194 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090111.P11360327839926226611

/-! ## A090111.P3133811805115197447

`12^C(A005843(n+1), 68)+n`
-/

namespace A090111.P3133811805115197447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 ^ Nat.choose (A005843 (n + 1)).toNat 68 + n

end

end A090111.P3133811805115197447

/-!
# A090112: a(n)=pi(n)*[pi(n)-pi(n-2)] where pi(n)=A000720(n).

The programs for A090112, the canonical program `A090112.P17101591952633820706` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090112 has offset 1).

The definition of A090112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090112.P17101591952633820706

`(A168141(n+1)-A010051(n+2))*A000720(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A090112

/-- `(A168141(n+1)-A010051(n+2))*A000720(n+1)` -/
def P17101591952633820706.Spec : Prop :=
  ∀ n, P17101591952633820706.a n = A090112 (n + 1)

theorem P17101591952633820706.correct : P17101591952633820706.Spec := by
  intro n
  simp only [A090112, Nat.add_sub_cancel]

end A090112

/-! ## A090112.P17767211741379300192

`(A010051(n+1)+char[A000040(n+1)])*A000720(n+1)`
-/

namespace A090112.P17767211741379300192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010051 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) * A000720 (n + 1)

end

end A090112.P17767211741379300192

namespace A090112

/-- `(A010051(n+1)+char[A000040(n+1)])*A000720(n+1)` -/
def P17767211741379300192.Spec : Prop :=
  ∀ n, P17767211741379300192.a n = A090112 (n + 1)

end A090112

/-! ## A090112.P5234433148423069735

`A049084(n+1)+char[A000040(n+1)]*A000720(n+1)`
-/

namespace A090112.P5234433148423069735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000720 (n + 1)

end

end A090112.P5234433148423069735

namespace A090112

/-- `A049084(n+1)+char[A000040(n+1)]*A000720(n+1)` -/
def P5234433148423069735.Spec : Prop :=
  ∀ n, P5234433148423069735.a n = A090112 (n + 1)

end A090112

/-! ## A090112.P12671349850362465883

`(A036234(n+1)-A000720(A007918(n)))*A000720(n+1)`
-/

namespace A090112.P12671349850362465883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036234 (n + 1) - A000720 (A007918 n).toNat) * A000720 (n + 1)

end

end A090112.P12671349850362465883

namespace A090112

/-- `(A036234(n+1)-A000720(A007918(n)))*A000720(n+1)` -/
def P12671349850362465883.Spec : Prop :=
  ∀ n, P12671349850362465883.a n = A090112 (n + 1)

end A090112

/-! ## A090112.P6085083922589267140

`(A168141(n+1)-A080545(n+2))*A000720(n+1)`
-/

namespace A090112.P6085083922589267140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168141 (n + 1) - A080545 (n + 2)) * A000720 (n + 1)

end

end A090112.P6085083922589267140

namespace A090112

/-- `(A168141(n+1)-A080545(n+2))*A000720(n+1)` -/
def P6085083922589267140.Spec : Prop :=
  ∀ n, P6085083922589267140.a n = A090112 (n + 1)

end A090112

/-! ## A090112.P3765998358767839809

`A049084(n+1)+A049084(A257143(n))`
-/

namespace A090112.P3765998358767839809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 1) + A049084 (A257143 n).toNat

end

end A090112.P3765998358767839809

namespace A090112

/-- `A049084(n+1)+A049084(A257143(n))` -/
def P3765998358767839809.Spec : Prop :=
  ∀ n, P3765998358767839809.a n = A090112 (n + 1)

end A090112

/-! ## A090112.P2666563046367090204

`A049084(n+1)+A049084(abs(A280167(n)))`
-/

namespace A090112.P2666563046367090204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 1) + A049084 |A280167 n|.toNat

end

end A090112.P2666563046367090204

namespace A090112

/-- `A049084(n+1)+A049084(abs(A280167(n)))` -/
def P2666563046367090204.Spec : Prop :=
  ∀ n, P2666563046367090204.a n = A090112 (n + 1)

end A090112

/-! ## A090112.P7513882571471003254

`A049084(n+1)+A049084(A032742(A008486(n)))`
-/

namespace A090112.P7513882571471003254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 1) + A049084 (A032742 (A008486 n).toNat).toNat

end

end A090112.P7513882571471003254

namespace A090112

/-- `A049084(n+1)+A049084(A032742(A008486(n)))` -/
def P7513882571471003254.Spec : Prop :=
  ∀ n, P7513882571471003254.a n = A090112 (n + 1)

end A090112

/-!
# A090113: a(n)=pi(n)*[pi(n)-pi(n-3)] where pi(n)=A000720(n).

The programs for A090113, the canonical program `A090113.P14649595053675925337` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090113 has offset 1).

The definition of A090113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090113.P4882924292955127554

`A000720(n+1)*A168141(round(sqrt(n²+1)))`
-/

namespace A090113.P4882924292955127554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A168141 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A090113.P4882924292955127554

namespace A090113

/-- `A000720(n+1)*A168141(round(sqrt(n²+1)))` -/
def P4882924292955127554.Spec : Prop :=
  ∀ n, P4882924292955127554.a n = A090113 (n + 1)

end A090113

/-! ## A090113.P14649595053675925337

`∑[A010051(n+1)]*A168141(A028310(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A090113

/-- `∑[A010051(n+1)]*A168141(A028310(n))` -/
def P14649595053675925337.Spec : Prop :=
  ∀ n, P14649595053675925337.a n = A090113 (n + 1)

theorem P14649595053675925337.correct : P14649595053675925337.Spec := by
  intro n
  simp only [A090113, Nat.add_sub_cancel]

end A090113

/-! ## A090113.P2781873220478530939

`A168141(round(sqrt(n²+1)))*A230980(n+1)`
-/

namespace A090113.P2781873220478530939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168141 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat * A230980 (n + 1)

end

end A090113.P2781873220478530939

namespace A090113

/-- `A168141(round(sqrt(n²+1)))*A230980(n+1)` -/
def P2781873220478530939.Spec : Prop :=
  ∀ n, P2781873220478530939.a n = A090113 (n + 1)

end A090113

/-!
# A090114: a(n) = Product_{j=1..n} (prime(n)-j).

The programs for A090114, there is no canonical definition to state claims against.
-/

/-! ## A090114.P1994148769477166321

`(n+1)!*A090115(n+1)`
-/

namespace A090114.P1994148769477166321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A090115 (n + 1)

end

end A090114.P1994148769477166321

/-! ## A090114.P13032328360180974577

`record[A098361(n)]*A090115(n+1)`
-/

namespace A090114.P13032328360180974577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A090115 (n + 1)

end

end A090114.P13032328360180974577

/-! ## A090114.P5243768829825081063

`record[A273730(n)]*A090115(n+1)`
-/

namespace A090114.P5243768829825081063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A090115 (n + 1)

end

end A090114.P5243768829825081063

/-! ## A090114.P15690020616209476472

`A000142(n+1)*A090115(n+1)`
-/

namespace A090114.P15690020616209476472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A090115 (n + 1)

end

end A090114.P15690020616209476472

/-! ## A090114.P8522994473943018001

`A008279(A072205(n+1)+n)`
-/

namespace A090114.P8522994473943018001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A072205 (n + 1) + (n : ℤ)).toNat

end

end A090114.P8522994473943018001

/-!
# A090115: a(n)=Product[p(n)-j, j=1..n]/n!=A090114(n)/n!.

The programs for A090115, there is no canonical definition to state claims against.
-/

/-! ## A090115.P8698192163467279300

`A090114(n+1)/(n+1)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A090115.P8698192163467279300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090114 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A090115.P8698192163467279300

/-! ## A090115.P5337003639657577850

`C(p?[comp[n²]]-1, n+1)`
-/

namespace A090115.P5337003639657577850
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1).toNat (n + 1)

end

end A090115.P5337003639657577850

/-! ## A090115.P7699515540201841468

`C(abs(p?[round(8*n/7)]-2)+1, n+1)`
-/

namespace A090115.P7699515540201841468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (|f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2| + 1).toNat (n + 1)

end

end A090115.P7699515540201841468

/-! ## A090115.P15097180904861279641

`C(A006093(n+1), n+1)`
-/

namespace A090115.P15097180904861279641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006093 (n + 1)).toNat (n + 1)

end

end A090115.P15097180904861279641

/-! ## A090115.P13765441624335636478

`C(Δ[A007504(n)]-1, n+1)`
-/

namespace A090115.P13765441624335636478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n - 1).toNat (n + 1)

end

end A090115.P13765441624335636478

/-! ## A090115.P15890846214938997893

`C(A000040(n+1)-1, n+1)`
-/

namespace A090115.P15890846214938997893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 1) - 1).toNat (n + 1)

end

end A090115.P15890846214938997893

/-! ## A090115.P10852474744807122246

`C(A066251(2*n+1), n+1)`
-/

namespace A090115.P10852474744807122246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A066251 (2 * n + 1)).toNat (n + 1)

end

end A090115.P10852474744807122246

/-!
# A090116: a(n)=x is the least number such that x^2 is "surrounded" by two closest primes, prevprime(x^2) and nextprime(x^2), whose difference nextprime - prevprime = 2n.

The programs for A090116, there is no canonical definition to state claims against.
-/

/-! ## A090116.P5084261506426777048

`sqrt(A090117(n+1))`
-/

namespace A090116.P5084261506426777048
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A090117 (n + 1) : ℝ)

end

end A090116.P5084261506426777048

/-! ## A090116.P7169983167036170995

`root(A090117(C(n+1, n)), 2)`
-/

namespace A090116.P7169983167036170995
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A090117 (Nat.choose (n + 1) n) : ℝ) ^ (1 / (2 : ℝ))

end

end A090116.P7169983167036170995

/-! ## A090116.P16973355529570489868

`root(A090117(Δ[n²]-n), 2)`
-/

namespace A090116.P16973355529570489868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A090117 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) ^ (1 / (2 : ℝ))

end

end A090116.P16973355529570489868

/-! ## A090116.P7735260928908195071

`floor(sqrt(A090117(ϕ²-(ϕ-n))))`
-/

namespace A090116.P7735260928908195071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A090117 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat)

end

end A090116.P7735260928908195071

/-! ## A090116.P4444865725028411048

`A000027(root(A090117(n+1), 2))`
-/

namespace A090116.P4444865725028411048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A090117 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A090116.P4444865725028411048

/-! ## A090116.P8670208289747492748

`gcd(root(A090117(n+1), 2), A000038(n))`
-/

namespace A090116.P8670208289747492748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A090117 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000038 n)

end

end A090116.P8670208289747492748

/-! ## A090116.P12728072367236792492

`∑{d}[root(A090117(n+1), 2), A000010(#)]`
-/

namespace A090116.P12728072367236792492
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A090117 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000010 d

end

end A090116.P12728072367236792492

/-! ## A090116.P178001698218950242

`root(A090117(n+1), 2)*A007318(∑[n])`
-/

namespace A090116.P178001698218950242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A090117 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A090116.P178001698218950242

/-! ## A090116.P15704251874176484583

`root(A090117(n+1), 2)%A000041(n+5)`
-/

namespace A090116.P15704251874176484583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A090117 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000041 (n + 5))

end

end A090116.P15704251874176484583

/-! ## A090116.P1583856169587239412

`A000720(A000040(root(A090117(n+1), 2)))`
-/

namespace A090116.P1583856169587239412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000040 (SequenceMachineLib.roundAway ((A090117 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat).toNat

end

end A090116.P1583856169587239412

/-!
# A090117: a(n) = x^2 = A090116(n)^2 is the least square that is "surrounded" by two closest primes, by prevprime(x^2) and nextprime(x^2) whose difference nextprime - prevprime = 2n.

The programs for A090117, there is no canonical definition to state claims against.
-/

/-! ## A090117.P4818224525999253867

`A090116(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A090117.P4818224525999253867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090116 (n + 1) ^ 2

end

end A090117.P4818224525999253867

/-! ## A090117.P11724088529942391406

`A090116(Δ[n²]-n)^2`
-/

namespace A090117.P11724088529942391406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090116 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2

end

end A090117.P11724088529942391406

/-! ## A090117.P8811616909635130796

`A000463(2*A090116(n+1))`
-/

namespace A090117.P8811616909635130796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * A090116 (n + 1)).toNat

end

end A090117.P8811616909635130796

/-! ## A090117.P12301367630512869426

`A002620(2*A090116(n+1))`
-/

namespace A090117.P12301367630512869426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A090116 (n + 1)).toNat

end

end A090117.P12301367630512869426

/-! ## A090117.P6030162318265593978

`A004652(2*A090116(n+1))`
-/

namespace A090117.P6030162318265593978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (2 * A090116 (n + 1)).toNat

end

end A090117.P6030162318265593978

/-! ## A090117.P4476925469734479853

`A182531(2*A090116(n+1))`
-/

namespace A090117.P4476925469734479853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182531 (2 * A090116 (n + 1)).toNat

end

end A090117.P4476925469734479853

/-! ## A090117.P17412668984000039528

`A000290(or(char[1], A090116(n+1)))`
-/

namespace A090117.P17412668984000039528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A090116 (n + 1))).toNat

end

end A090117.P17412668984000039528

/-!
# A090118: a(n) = prevprime(A090117(n)), the largest prime previous to squares given in A090117, being such that distance of a(n) to the following prime equals 2*n.

The programs for A090118, there is no canonical definition to state claims against.
-/

/-! ## A090118.P4382357518612251161

`A090119(n+1)-2*(n+1)`
-/

namespace A090118.P4382357518612251161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090119 (n + 1) - (2 * (n + 1) : ℤ)

end

end A090118.P4382357518612251161

/-! ## A090118.P964318534457387917

`A053001(A090116(n+1))`
-/

namespace A090118.P964318534457387917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (A090116 (n + 1)).toNat

end

end A090118.P964318534457387917

/-! ## A090118.P11465681243127359484

`A053001(sqrt(A090117(n+1)))`
-/

namespace A090118.P11465681243127359484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (SequenceMachineLib.roundAway (Real.sqrt (A090117 (n + 1) : ℝ))).toNat

end

end A090118.P11465681243127359484

/-! ## A090118.P6667846851898755810

`A053001(root(A090117(n+1), 2))`
-/

namespace A090118.P6667846851898755810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (SequenceMachineLib.roundAway ((A090117 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A090118.P6667846851898755810

/-! ## A090118.P5153744436893571568

`A053001(floor(sqrt(A090119(n+1))))`
-/

namespace A090118.P5153744436893571568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (Int.sqrt (A090119 (n + 1))).toNat

end

end A090118.P5153744436893571568

/-!
# A090119: a(n) = nextprime(A090117(n)), the smallest prime following squares listed in A090117 and also the distance of a(n) from the preceding prime is 2*n.

The programs for A090119, there is no canonical definition to state claims against.
-/

/-! ## A090119.P2453993030058194949

`A007918(A090117(n+1))`
-/

namespace A090119.P2453993030058194949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A090117 (n + 1)).toNat

end

end A090119.P2453993030058194949

/-! ## A090119.P822718481651592729

`A090118(n+1)+2*(n+1)`
-/

namespace A090119.P822718481651592729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090118 (n + 1) + (2 * (n + 1) : ℤ)

end

end A090119.P822718481651592729

/-! ## A090119.P9290519991766059846

`A007491(A090116(n+1))`
-/

namespace A090119.P9290519991766059846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (A090116 (n + 1)).toNat

end

end A090119.P9290519991766059846

/-! ## A090119.P8602634208531937427

`A007491(sqrt(A090117(n+1)))`
-/

namespace A090119.P8602634208531937427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (SequenceMachineLib.roundAway (Real.sqrt (A090117 (n + 1) : ℝ))).toNat

end

end A090119.P8602634208531937427

/-! ## A090119.P4653902482697202304

`A007491(root(A090117(n+1), 2))`
-/

namespace A090119.P4653902482697202304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (SequenceMachineLib.roundAway ((A090117 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A090119.P4653902482697202304

/-!
# A090120: Numbers k such that nextprime(k^2) - prevprime(k^2) = 4.

The programs for A090120, there is no canonical definition to state claims against.
-/

/-! ## A090120.P16028434727893259139

`∪[A108701(n+1), A114335(n+1)]`
-/

namespace A090120.P16028434727893259139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090120.P16028434727893259139

/-! ## A090120.P7518950302898446380

`eq[4, A058043(n+2)]+2`
-/

namespace A090120.P7518950302898446380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058043 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A090120.P7518950302898446380

/-! ## A090120.P10703914151855040190

`A009056(eq[4, A058043(n+2)])`
-/

namespace A090120.P10703914151855040190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058043 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090120.P10703914151855040190

/-! ## A090120.P8606266843151827860

`floor(sqrt(p?[A056928(n+2)+2]))`
-/

namespace A090120.P8606266843151827860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056928 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A090120.P8606266843151827860

/-! ## A090120.P11757696715636464188

`ceil(sqrt(p?[A007491(n+1)-4]))`
-/

namespace A090120.P11757696715636464188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ)⌉

end

end A090120.P11757696715636464188

/-!
# A090121: Numbers n such that nextprime(n^3)-prevprime(n^3) = 4.

The programs for A090121, there is no canonical definition to state claims against.
-/

/-! ## A090121.P6727002826924595395

`A178228(n%a(n-1))` with `a(0)=2`
-/

namespace A090121.P6727002826924595395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A178228 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A090121.P6727002826924595395

/-! ## A090121.P17991908820867598018

`A178228(n^and(1, 5*a(n-1)))` with `a(0)=2`
-/

namespace A090121.P17991908820867598018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A178228 (SequenceMachineLib.roundAway ((n : ℚ) ^ (Int.land 1 (5 * a (n - 1)) : ℤ))).toNat

end

end A090121.P17991908820867598018

/-! ## A090121.P5626790576950418952

`∪[A007352(n+1), A178228(n+1)]`
-/

namespace A090121.P5626790576950418952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090121.P5626790576950418952

/-! ## A090121.P7513681815059871870

`∪[A178228(n+1), A228556(n+1)]`
-/

namespace A090121.P7513681815059871870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228556 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090121.P7513681815059871870

/-! ## A090121.P16571314570176946053

`∪[A178228(n+1), A247214(n+1)]`
-/

namespace A090121.P16571314570176946053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090121.P16571314570176946053

/-! ## A090121.P12772258571659611097

`∪[A178228(n+1), A262729(n+1)]`
-/

namespace A090121.P12772258571659611097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090121.P12772258571659611097

/-! ## A090121.P6018875721148377621

`∪[A178228(n+1), A263645(n+1)]`
-/

namespace A090121.P6018875721148377621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090121.P6018875721148377621

/-! ## A090121.P4832302105297705764

`A178228(round(sqrt(n²+1)))%A132282(n+4)`
-/

namespace A090121.P4832302105297705764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178228 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (A132282 (n + 4))

end

end A090121.P4832302105297705764

/-!
# A090123: Integers k such that nextprime(k^5) - prevprime(k^5) = 4.

The programs for A090123, there is no canonical definition to state claims against.
-/

/-! ## A090123.P15799859708504393941

`∩[A075228(n+1), A154833(n+1)]`
-/

namespace A090123.P15799859708504393941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090123.P15799859708504393941

/-! ## A090123.P3763559430456099193

`∩[A075228(n+1), A216976(n+1)]`
-/

namespace A090123.P3763559430456099193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090123.P3763559430456099193

/-! ## A090123.P4299878868412899879

`∩[A154833(n+1), A216976(n+1)]`
-/

namespace A090123.P4299878868412899879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090123.P4299878868412899879

/-!
# A090125: a(n) is the least positive integer such that nextprime(a(n)^n) - prevprime(a(n)^n) = 4.

The programs for A090125, there is no canonical definition to state claims against.
-/

/-! ## A090125.P3416013356734726161

`A105476(2*(a(n-1)+a(n-2)))` with `a(0)=5, a(1)=3, a(2)=2, a(3)=2`
-/

namespace A090125.P3416013356734726161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 3, 2, 2] fun n a =>
  A105476 (2 * (a (n - 1) + a (n - 2))).toNat

end

end A090125.P3416013356734726161

/-!
# A090126: Distinct values of denominators of Bernoulli numbers B(2n) in order of their appearance as n grows.

The programs for A090126, there is no canonical definition to state claims against.
-/

/-! ## A090126.P12246797583427803427

`A027642(record[lcm(2, A346467(n+1))])`
-/

namespace A090126.P12246797583427803427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A346467 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A090126.P12246797583427803427

/-! ## A090126.P88666600909355864

`A002445(record[A346467(2*n+1)-n])`
-/

namespace A090126.P88666600909355864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346467 (2 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090126.P88666600909355864

/-! ## A090126.P15733695936916844529

`A002445(record[A004525(A346467(n+1))])`
-/

namespace A090126.P15733695936916844529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A346467 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090126.P15733695936916844529

/-! ## A090126.P10942044526184944114

`A027642(eq[A000034(n), A346468(n+1)])`
-/

namespace A090126.P10942044526184944114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A090126.P10942044526184944114

/-! ## A090126.P2751197260585906505

`A027642(eq[A059029(n), A346467(n+1)])`
-/

namespace A090126.P2751197260585906505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A090126.P2751197260585906505

/-! ## A090126.P15200213574841055322

`A027642(eq[A059841(n), A346468(n+1)])`
-/

namespace A090126.P15200213574841055322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A090126.P15200213574841055322

/-! ## A090126.P17868933160745963967

`A106458(eq[A000034(n), A346468(n+1)])`
-/

namespace A090126.P17868933160745963967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A090126.P17868933160745963967

/-! ## A090126.P7850804977357389203

`A106458(eq[A059029(n), A346467(n+1)])`
-/

namespace A090126.P7850804977357389203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A090126.P7850804977357389203

/-! ## A090126.P1353426523291847047

`A027642(eq[A165886(n), A346468(n+1)])`
-/

namespace A090126.P1353426523291847047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165886 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A090126.P1353426523291847047

/-! ## A090126.P7928463210413239665

`A027642(eq[A254667(n), A346467(n+1)])`
-/

namespace A090126.P7928463210413239665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A090126.P7928463210413239665

/-! ## A090126.P4403134301338065648

`A027760(eq[A006519(n+1), A346468(n+1)])`
-/

namespace A090126.P4403134301338065648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027760 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A090126.P4403134301338065648

/-! ## A090126.P10054890658790298346

`A027642(eq[A027642(n+1), A346468(n+1)])`
-/

namespace A090126.P10054890658790298346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A090126.P10054890658790298346

/-! ## A090126.P12877694820142781664

`A027760(eq[A038712(n+1), A346468(n+1)])`
-/

namespace A090126.P12877694820142781664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027760 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A090126.P12877694820142781664

/-!
# A090127: Distinct values of phi(n) in order of appearance as n increases.

The programs for A090127, there is no canonical definition to state claims against.
-/

/-! ## A090127.P9253809437755947315

`A000010(A210719(n+1))`
-/

namespace A090127.P9253809437755947315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A210719 (n + 1)).toNat

end

end A090127.P9253809437755947315

/-! ## A090127.P2070797139165100359

`A000010(record[(n+1)*(2-A081373(n+1))])`
-/

namespace A090127.P2070797139165100359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A081373 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090127.P2070797139165100359

/-! ## A090127.P1376463015410399027

`A000010(eq[1, A089374(A171934(n+1)+1)]+1)`
-/

namespace A090127.P1376463015410399027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (A171934 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A090127.P1376463015410399027

/-! ## A090127.P12586231684070352336

`A000010(record[A015126(n+1)])`
-/

namespace A090127.P12586231684070352336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090127.P12586231684070352336

/-! ## A090127.P16924430084113526793

`A000010(record[A049283(A000010(n+1))])`
-/

namespace A090127.P16924430084113526793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090127.P16924430084113526793

/-!
# A090128: Distinct values of sigma(k), the sum of divisors, in order of appearance as k grows.

The programs for A090128, there is no canonical definition to state claims against.
-/

/-! ## A090128.P4395385574788455608

`A000203(record[(n+1)/A263025(n+1)])`
-/

namespace A090128.P4395385574788455608
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A263025 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A090128.P4395385574788455608

/-! ## A090128.P15090868292456401465

`∑{d}[record[A275987(n+1)], #]`
-/

namespace A090128.P15090868292456401465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275987 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A090128.P15090868292456401465

/-! ## A090128.P9576972021556149175

`A000203(record[A275987(n+1)])`
-/

namespace A090128.P9576972021556149175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090128.P9576972021556149175

/-! ## A090128.P15919027686311224436

`A074400(record[A275987(n+1)])/2`
-/

namespace A090128.P15919027686311224436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275987 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A090128.P15919027686311224436

/-! ## A090128.P12442119204847635754

`A000203(lt[n, A275987(n+1)]+1)`
-/

namespace A090128.P12442119204847635754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A090128.P12442119204847635754

/-! ## A090128.P14495178065526770020

`A000203(record[A051444(A000203(n+1))])`
-/

namespace A090128.P14495178065526770020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A000203 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090128.P14495178065526770020

/-! ## A090128.P4006790373752567866

`∑{d}[record[A233929(A088580(n+1))], #]`
-/

namespace A090128.P4006790373752567866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233929 (A088580 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A090128.P4006790373752567866

/-! ## A090128.P16143755671530213419

`A000203(record[A097014(A000203(n+1))])`
-/

namespace A090128.P16143755671530213419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097014 (A000203 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090128.P16143755671530213419

/-!
# A090129: Smallest exponent such that -1 + 3^a(n) is divisible by 2^n.

The programs for A090129, the canonical program `A090129.P2495849977123060500` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090129 has offset 1).

The definition of A090129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090129.P7299183794616278914

`2^(n-floor(atan(n)))`
-/

namespace A090129.P7299183794616278914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - ⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A090129.P7299183794616278914

namespace A090129

/-- `2^(n-floor(atan(n)))` -/
def P7299183794616278914.Spec : Prop :=
  ∀ n, P7299183794616278914.a n = (A090129 (n + 1) : ℚ)

end A090129

/-! ## A090129.P1135347961398669296

`2^ceil(n-atan(n))`
-/

namespace A090129.P1135347961398669296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(n : ℝ) - Real.arctan (n : ℝ)⌉ : ℤ)

end

end A090129.P1135347961398669296

namespace A090129

/-- `2^ceil(n-atan(n))` -/
def P1135347961398669296.Spec : Prop :=
  ∀ n, P1135347961398669296.a n = (A090129 (n + 1) : ℚ)

end A090129

/-! ## A090129.P13041085805399403566

`ogf((1-2x^2)/(1-2x))`
-/

namespace A090129.P13041085805399403566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2] [1, -2] n

end

end A090129.P13041085805399403566

namespace A090129

/-- `ogf((1-2x^2)/(1-2x))` -/
def P13041085805399403566.Spec : Prop :=
  ∀ n, P13041085805399403566.a n = A090129 (n + 1)

end A090129

/-! ## A090129.P4332836823096011962

`2^(n-floor(acot(acot(n))))`
-/

namespace A090129.P4332836823096011962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - ⌊SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ))⌋ : ℤ)

end

end A090129.P4332836823096011962

namespace A090129

/-- `2^(n-floor(acot(acot(n))))` -/
def P4332836823096011962.Spec : Prop :=
  ∀ n, P4332836823096011962.a n = (A090129 (n + 1) : ℚ)

end A090129

/-! ## A090129.P2394722213713387633

`2^ceil(n-acot(acot(n)))`
-/

namespace A090129.P2394722213713387633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(n : ℝ) - SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ))⌉ : ℤ)

end

end A090129.P2394722213713387633

namespace A090129

/-- `2^ceil(n-acot(acot(n)))` -/
def P2394722213713387633.Spec : Prop :=
  ∀ n, P2394722213713387633.a n = (A090129 (n + 1) : ℚ)

end A090129

/-! ## A090129.P2495849977123060500

`2*a(n-1)` with `a(0)=1, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090129

/-- `2*a(n-1)` -/
def P2495849977123060500.Spec : Prop :=
  ∀ n, (P2495849977123060500.a n : ℤ) = A090129 (n + 1)

theorem P2495849977123060500.correct : P2495849977123060500.Spec := by
  intro n
  simp only [A090129, Nat.add_sub_cancel]

end A090129

/-! ## A090129.P11102058750652726349

`2^round(n²/(n+1))`
-/

namespace A090129.P11102058750652726349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / (n + 1 : ℚ)) : ℤ)

end

end A090129.P11102058750652726349

namespace A090129

/-- `2^round(n²/(n+1))` -/
def P11102058750652726349.Spec : Prop :=
  ∀ n, P11102058750652726349.a n = (A090129 (n + 1) : ℚ)

end A090129

/-! ## A090129.P2168254498708307848

`floor(2^(C(n, n²)+n-1))`
-/

namespace A090129.P2168254498708307848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((Nat.choose n (n ^ 2) : ℤ) + ((n : ℤ) - 1) : ℤ)⌋

end

end A090129.P2168254498708307848

namespace A090129

/-- `floor(2^(C(n, n²)+n-1))` -/
def P2168254498708307848.Spec : Prop :=
  ∀ n, P2168254498708307848.a n = A090129 (n + 1)

end A090129

/-! ## A090129.P1733077213990545493

`ceil(2^(C(n, n²)+n-1))`
-/

namespace A090129.P1733077213990545493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((Nat.choose n (n ^ 2) : ℤ) + ((n : ℤ) - 1) : ℤ)⌉

end

end A090129.P1733077213990545493

namespace A090129

/-- `ceil(2^(C(n, n²)+n-1))` -/
def P1733077213990545493.Spec : Prop :=
  ∀ n, P1733077213990545493.a n = A090129 (n + 1)

end A090129

/-! ## A090129.P3549273263492843257

`round(2^(C(n, n²)+n-1))`
-/

namespace A090129.P3549273263492843257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose n (n ^ 2) : ℤ) + ((n : ℤ) - 1) : ℤ))

end

end A090129.P3549273263492843257

namespace A090129

/-- `round(2^(C(n, n²)+n-1))` -/
def P3549273263492843257.Spec : Prop :=
  ∀ n, P3549273263492843257.a n = A090129 (n + 1)

end A090129

/-! ## A090129.P16271382082010132193

`lcm(2^(n-1), a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A090129.P16271382082010132193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A090129.P16271382082010132193

namespace A090129

/-- `lcm(2^(n-1), a(n-1))` -/
def P16271382082010132193.Spec : Prop :=
  ∀ n, (P16271382082010132193.a n : ℤ) = A090129 (n + 1)

end A090129

/-! ## A090129.P5466513784194867435

`a(n-1)+a(n-1)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A090129.P5466513784194867435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 1) + a (n - 1)

end

end A090129.P5466513784194867435

namespace A090129

/-- `a(n-1)+a(n-1)` -/
def P5466513784194867435.Spec : Prop :=
  ∀ n, (P5466513784194867435.a n : ℤ) = A090129 (n + 1)

theorem P5466513784194867435.correct : P5466513784194867435.Spec := by
  intro n
  simp only [A090129, Nat.add_sub_cancel, A090129.P5466513784194867435.a, A090129.P2495849977123060500.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A090129

/-! ## A090129.P10494902427749042685

`a(n-1)/(1-1/2)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A090129.P10494902427749042685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 1) / (1 - (1 : ℚ) / 2)

end

end A090129.P10494902427749042685

namespace A090129

/-- `a(n-1)/(1-1/2)` -/
def P10494902427749042685.Spec : Prop :=
  ∀ n, P10494902427749042685.a n = (A090129 (n + 1) : ℚ)

end A090129

/-! ## A090129.P3309936356662615348

`and(-a(n-1), 2^(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A090129.P3309936356662615348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.land (-a (n - 1)) (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))

end

end A090129.P3309936356662615348

namespace A090129

/-- `and(-a(n-1), 2^(n-1))` -/
def P3309936356662615348.Spec : Prop :=
  ∀ n, P3309936356662615348.a n = A090129 (n + 1)

end A090129

/-! ## A090129.P16269087355167464426

`∑{d}[2*n+1, round((2/#)^(n-1))]`
-/

namespace A090129.P16269087355167464426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway ((2 / (d : ℚ)) ^ ((n : ℤ) - 1 : ℤ))

end

end A090129.P16269087355167464426

namespace A090129

/-- `∑{d}[2*n+1, round((2/#)^(n-1))]` -/
def P16269087355167464426.Spec : Prop :=
  ∀ n, P16269087355167464426.a n = A090129 (n + 1)

end A090129

/-! ## A090129.P14091762994696529321

`ceil(2^(val(2*n+1, n+2)+n-1))`
-/

namespace A090129.P14091762994696529321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((SequenceMachineLib.valuation (2 * n + 1) (n + 2) : ℤ) + ((n : ℤ) - 1) : ℤ)⌉

end

end A090129.P14091762994696529321

namespace A090129

/-- `ceil(2^(val(2*n+1, n+2)+n-1))` -/
def P14091762994696529321.Spec : Prop :=
  ∀ n, P14091762994696529321.a n = A090129 (n + 1)

end A090129

/-! ## A090129.P4194851817015253560

`round(2^(val(2*n+1, n+2)+n-1))`
-/

namespace A090129.P4194851817015253560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.valuation (2 * n + 1) (n + 2) : ℤ) + ((n : ℤ) - 1) : ℤ))

end

end A090129.P4194851817015253560

namespace A090129

/-- `round(2^(val(2*n+1, n+2)+n-1))` -/
def P4194851817015253560.Spec : Prop :=
  ∀ n, P4194851817015253560.a n = A090129 (n + 1)

end A090129

/-! ## A090129.P234795513942260330

`1-floor(1-a(n-1)-a(n-1))` with `a(0)=1, a(1)=2, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A090129.P234795513942260330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  1 - (1 - a (n - 1) - a (n - 1))

end

end A090129.P234795513942260330

namespace A090129

/-- `1-floor(1-a(n-1)-a(n-1))` -/
def P234795513942260330.Spec : Prop :=
  ∀ n, P234795513942260330.a n = A090129 (n + 1)

end A090129

/-! ## A090129.P13922539320551465209

`1-((1-a(n-1))%a(n-1)-a(n-1))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A090129.P13922539320551465209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  1 - (Int.tmod (1 - a (n - 1)) (a (n - 1)) - a (n - 1))

end

end A090129.P13922539320551465209

namespace A090129

/-- `1-((1-a(n-1))%a(n-1)-a(n-1))` -/
def P13922539320551465209.Spec : Prop :=
  ∀ n, P13922539320551465209.a n = A090129 (n + 1)

end A090129

/-! ## A090129.P11384601743991551432

`A011782(char[1]+n)`
-/

namespace A090129.P11384601743991551432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A090129.P11384601743991551432

namespace A090129

/-- `A011782(char[1]+n)` -/
def P11384601743991551432.Spec : Prop :=
  ∀ n, P11384601743991551432.a n = A090129 (n + 1)

end A090129

/-!
# A090130: Number of groups of order 5^n.

The programs for A090130, there is no canonical definition to state claims against.
-/

/-! ## A090130.P5592043089497096686

`A319171(∑[n+2]+3)`
-/

namespace A090130.P5592043089497096686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319171 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A090130.P5592043089497096686

/-! ## A090130.P6949335603513891320

`A319171(A340266(n+1))+A025443(n)`
-/

namespace A090130.P6949335603513891320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319171 (A340266 (n + 1)).toNat + A025443 n

end

end A090130.P6949335603513891320

/-! ## A090130.P9325630269013775497

`A319171(A340266(n+1))+A079693(n)`
-/

namespace A090130.P9325630269013775497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319171 (A340266 (n + 1)).toNat + A079693 n

end

end A090130.P9325630269013775497

/-! ## A090130.P16310310104798698649

`A319171(A340266(n+1))+A185715(n+1)`
-/

namespace A090130.P16310310104798698649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319171 (A340266 (n + 1)).toNat + A185715 (n + 1)

end

end A090130.P16310310104798698649

/-!
# A090131: Expansion of (1+x)/(1 - 2*x + 2*x^2).

The programs for A090131, the canonical program `A090131.P6093648606587308196` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090131 has offset 0).

The definition of A090131 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-2x+2x^2))` (program `A090131.P6093648606587308196`, by `A090131.P6093648606587308196.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090131.P6093648606587308196

`ogf((1+x)/(1-2x+2x^2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090131

/-- `ogf((1+x)/(1-2x+2x^2))` -/
def P6093648606587308196.Spec : Prop :=
  ∀ n, P6093648606587308196.a n = A090131 n

theorem P6093648606587308196.correct : P6093648606587308196.Spec := by
  intro n
  simp only [A090131]

end A090131

/-! ## A090131.P16694782266976145924

`2*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A090131.P16694782266976145924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2)

end

end A090131.P16694782266976145924

namespace A090131

/-- `2*a(n-1)-2*a(n-2)` -/
def P16694782266976145924.Spec : Prop :=
  ∀ n, P16694782266976145924.a n = A090131 n

end A090131

/-! ## A090131.P1080210721186561880

`A009545(n)+A009545(n+1)`
-/

namespace A090131.P1080210721186561880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n + A009545 (n + 1)

end

end A090131.P1080210721186561880

namespace A090131

/-- `A009545(n)+A009545(n+1)` -/
def P1080210721186561880.Spec : Prop :=
  ∀ n, P1080210721186561880.a n = A090131 n

end A090131

/-! ## A090131.P18048348060457264402

`-(4*a(n-4))` with `a(0)=1, a(1)=3, a(2)=4, a(3)=2`
-/

namespace A090131.P18048348060457264402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4, 2] fun n a =>
  -(4 * a (n - 4))

end

end A090131.P18048348060457264402

namespace A090131

/-- `-(4*a(n-4))` -/
def P18048348060457264402.Spec : Prop :=
  ∀ n, P18048348060457264402.a n = A090131 n

end A090131

/-! ## A090131.P6201948079631449522

`∏[2-2/a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A090131.P6201948079631449522
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  2 - 2 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A090131.P6201948079631449522

namespace A090131

/-- `∏[2-2/a(n-1)]` -/
def P6201948079631449522.Spec : Prop :=
  ∀ n, P6201948079631449522.a n = (A090131 n : ℚ)

end A090131

/-! ## A090131.P6372833616358010178

`2*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A090131.P6372833616358010178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * (a (n - 1) - a (n - 2))

end

end A090131.P6372833616358010178

namespace A090131

/-- `2*(a(n-1)-a(n-2))` -/
def P6372833616358010178.Spec : Prop :=
  ∀ n, P6372833616358010178.a n = A090131 n

end A090131

/-! ## A090131.P9208686812553646933

`(a(n-1)-a(n-2))/(1-1/2)` with `a(0)=1, a(1)=3`
-/

namespace A090131.P9208686812553646933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (a (n - 1) - a (n - 2)) / (1 - (1 : ℚ) / 2)

end

end A090131.P9208686812553646933

namespace A090131

/-- `(a(n-1)-a(n-2))/(1-1/2)` -/
def P9208686812553646933.Spec : Prop :=
  ∀ n, P9208686812553646933.a n = (A090131 n : ℚ)

end A090131

/-! ## A090131.P9003973158686904718

`a(n-1)-a(n-3)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A090131.P9003973158686904718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  a (n - 1) - a (n - 3) - a (n - 3)

end

end A090131.P9003973158686904718

namespace A090131

/-- `a(n-1)-a(n-3)-a(n-3)` -/
def P9003973158686904718.Spec : Prop :=
  ∀ n, P9003973158686904718.a n = A090131 n

end A090131

/-! ## A090131.P4560037895082682977

`A099087(n)+A009545(n)`
-/

namespace A090131.P4560037895082682977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 n + A009545 n

end

end A090131.P4560037895082682977

namespace A090131

/-- `A099087(n)+A009545(n)` -/
def P4560037895082682977.Spec : Prop :=
  ∀ n, P4560037895082682977.a n = A090131 n

end A090131

/-! ## A090131.P9219544334386848648

`A137444(n)-A009545(n)`
-/

namespace A090131.P9219544334386848648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137444 n - A009545 n

end

end A090131.P9219544334386848648

namespace A090131

/-- `A137444(n)-A009545(n)` -/
def P9219544334386848648.Spec : Prop :=
  ∀ n, P9219544334386848648.a n = A090131 n

end A090131

/-! ## A090131.P4565319638151723101

`A033999(n)*A078069(n)`
-/

namespace A090131.P4565319638151723101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A078069 n

end

end A090131.P4565319638151723101

namespace A090131

/-- `A033999(n)*A078069(n)` -/
def P4565319638151723101.Spec : Prop :=
  ∀ n, P4565319638151723101.a n = A090131 n

end A090131

/-! ## A090131.P9776752487553138725

`A099087(n)-Δ[A146559(n)]`
-/

namespace A090131.P9776752487553138725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 n - (f1 (n + 1) - f1 n)

end

end A090131.P9776752487553138725

namespace A090131

/-- `A099087(n)-Δ[A146559(n)]` -/
def P9776752487553138725.Spec : Prop :=
  ∀ n, P9776752487553138725.a n = A090131 n

end A090131

/-! ## A090131.P14201777376636864250

`A077860(n)+A146559(n)-1`
-/

namespace A090131.P14201777376636864250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077860 n + (A146559 n - 1)

end

end A090131.P14201777376636864250

namespace A090131

/-- `A077860(n)+A146559(n)-1` -/
def P14201777376636864250.Spec : Prop :=
  ∀ n, P14201777376636864250.a n = A090131 n

end A090131

/-! ## A090131.P14795266086031699098

`A146559(n+2)+A136258(n)`
-/

namespace A090131.P14795266086031699098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 (n + 2) + A136258 n

end

end A090131.P14795266086031699098

namespace A090131

/-- `A146559(n+2)+A136258(n)` -/
def P14795266086031699098.Spec : Prop :=
  ∀ n, P14795266086031699098.a n = A090131 n

end A090131

/-! ## A090131.P13787107920317102520

`A146559(n)-A146559(n+2)`
-/

namespace A090131.P13787107920317102520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 n - A146559 (n + 2)

end

end A090131.P13787107920317102520

namespace A090131

/-- `A146559(n)-A146559(n+2)` -/
def P13787107920317102520.Spec : Prop :=
  ∀ n, P13787107920317102520.a n = A090131 n

end A090131

/-! ## A090131.P17911007781361814053

`(1-A010673(n))*A078069(n)`
-/

namespace A090131.P17911007781361814053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010673 n) * A078069 n

end

end A090131.P17911007781361814053

namespace A090131

/-- `(1-A010673(n))*A078069(n)` -/
def P17911007781361814053.Spec : Prop :=
  ∀ n, P17911007781361814053.a n = A090131 n

end A090131

/-! ## A090131.P10200880963682626471

`A136258(n)-2*A009545(n)`
-/

namespace A090131.P10200880963682626471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136258 n - 2 * A009545 n

end

end A090131.P10200880963682626471

namespace A090131

/-- `A136258(n)-2*A009545(n)` -/
def P10200880963682626471.Spec : Prop :=
  ∀ n, P10200880963682626471.a n = A090131 n

end A090131

/-! ## A090131.P9942784211237506972

`2*A137444(n)-A136258(n)`
-/

namespace A090131.P9942784211237506972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137444 n - A136258 n

end

end A090131.P9942784211237506972

namespace A090131

/-- `2*A137444(n)-A136258(n)` -/
def P9942784211237506972.Spec : Prop :=
  ∀ n, P9942784211237506972.a n = A090131 n

end A090131

/-! ## A090131.P502171627469797457

`-(A146559(n+3)+A146559(n))`
-/

namespace A090131.P502171627469797457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A146559 (n + 3) + A146559 n)

end

end A090131.P502171627469797457

namespace A090131

/-- `-(A146559(n+3)+A146559(n))` -/
def P502171627469797457.Spec : Prop :=
  ∀ n, P502171627469797457.a n = A090131 n

end A090131

/-! ## A090131.P13630668022891772049

`(Δ[A014601(n)]-2)*A078069(n)`
-/

namespace A090131.P13630668022891772049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 2) * A078069 n

end

end A090131.P13630668022891772049

namespace A090131

/-- `(Δ[A014601(n)]-2)*A078069(n)` -/
def P13630668022891772049.Spec : Prop :=
  ∀ n, P13630668022891772049.a n = A090131 n

end A090131

/-!
# A090132: Expansion of (1+2*x)/(1+2*x+2*x^2).

The programs for A090132, the canonical program `A090132.P12173721879526071538` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090132 has offset 0).

The definition of A090132 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x)/(1+2x+2x^2))` (program `A090132.P12173721879526071538`, by `A090132.P12173721879526071538.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090132.P12173721879526071538

`ogf((1+2x)/(1+2x+2x^2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090132

/-- `ogf((1+2x)/(1+2x+2x^2))` -/
def P12173721879526071538.Spec : Prop :=
  ∀ n, P12173721879526071538.a n = A090132 n

theorem P12173721879526071538.correct : P12173721879526071538.Spec := by
  intro n
  simp only [A090132]

end A090132

/-! ## A090132.P4684544402446201898

`-(2*(a(n-1)+a(n-2)))` with `a(0)=1, a(1)=0`
-/

namespace A090132.P4684544402446201898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  -(2 * (a (n - 1) + a (n - 2)))

end

end A090132.P4684544402446201898

namespace A090132

/-- `-(2*(a(n-1)+a(n-2)))` -/
def P4684544402446201898.Spec : Prop :=
  ∀ n, P4684544402446201898.a n = A090132 n

end A090132

/-! ## A090132.P5432641480110824241

`2*a(n-3)-a(n-1)` with `a(0)=1, a(1)=0, a(2)=-2`
-/

namespace A090132.P5432641480110824241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2] fun n a =>
  2 * a (n - 3) - a (n - 1)

end

end A090132.P5432641480110824241

namespace A090132

/-- `2*a(n-3)-a(n-1)` -/
def P5432641480110824241.Spec : Prop :=
  ∀ n, P5432641480110824241.a n = A090132 n

end A090132

/-! ## A090132.P16695060831349931738

`(a(n-1)+a(n-2))/(1/2-1)` with `a(0)=1, a(1)=0`
-/

namespace A090132.P16695060831349931738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  (a (n - 1) + a (n - 2)) / ((1 : ℚ) / 2 - 1)

end

end A090132.P16695060831349931738

namespace A090132

/-- `(a(n-1)+a(n-2))/(1/2-1)` -/
def P16695060831349931738.Spec : Prop :=
  ∀ n, P16695060831349931738.a n = (A090132 n : ℚ)

end A090132

/-! ## A090132.P13234409622378601324

`a(n-3)+a(n-3)-a(n-1)` with `a(0)=1, a(1)=0, a(2)=-2`
-/

namespace A090132.P13234409622378601324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2] fun n a =>
  a (n - 3) + (a (n - 3) - a (n - 1))

end

end A090132.P13234409622378601324

namespace A090132

/-- `a(n-3)+a(n-3)-a(n-1)` -/
def P13234409622378601324.Spec : Prop :=
  ∀ n, P13234409622378601324.a n = A090132 n

end A090132

/-! ## A090132.P2281879746025291223

`floor(a(n-3)-(a(n-1)-a(n-3)))` with `a(0)=1, a(1)=0, a(2)=-2`

`floor` is left out, it is the identity on integers.
-/

namespace A090132.P2281879746025291223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2] fun n a =>
  a (n - 3) - (a (n - 1) - a (n - 3))

end

end A090132.P2281879746025291223

namespace A090132

/-- `floor(a(n-3)-(a(n-1)-a(n-3)))` -/
def P2281879746025291223.Spec : Prop :=
  ∀ n, P2281879746025291223.a n = A090132 n

end A090132

/-! ## A090132.P10363239523028240655

`-A009116(n+1)`
-/

namespace A090132.P10363239523028240655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A009116 (n + 1)

end

end A090132.P10363239523028240655

namespace A090132

/-- `-A009116(n+1)` -/
def P10363239523028240655.Spec : Prop :=
  ∀ n, P10363239523028240655.a n = A090132 n

end A090132

/-! ## A090132.P14325257245777628939

`Δ[-∑[A009116(n)]]`
-/

namespace A090132.P14325257245777628939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090132.P14325257245777628939

namespace A090132

/-- `Δ[-∑[A009116(n)]]` -/
def P14325257245777628939.Spec : Prop :=
  ∀ n, P14325257245777628939.a n = A090132 n

end A090132

/-! ## A090132.P12051212874215197431

`A108520(n+2)/2`
-/

namespace A090132.P12051212874215197431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108520 (n + 2) : ℚ) / 2

end

end A090132.P12051212874215197431

namespace A090132

/-- `A108520(n+2)/2` -/
def P12051212874215197431.Spec : Prop :=
  ∀ n, P12051212874215197431.a n = (A090132 n : ℚ)

end A090132

/-! ## A090132.P15420165465967431570

`A009116(n+5)/4`
-/

namespace A090132.P15420165465967431570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009116 (n + 5) : ℚ) / 4

end

end A090132.P15420165465967431570

namespace A090132

/-- `A009116(n+5)/4` -/
def P15420165465967431570.Spec : Prop :=
  ∀ n, P15420165465967431570.a n = (A090132 n : ℚ)

end A090132

/-! ## A090132.P8941834112579386815

`Δ[Δ[A077904(n)/2]]`
-/

namespace A090132.P8941834112579386815
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077904 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090132.P8941834112579386815

namespace A090132

/-- `Δ[Δ[A077904(n)/2]]` -/
def P8941834112579386815.Spec : Prop :=
  ∀ n, P8941834112579386815.a n = (A090132 n : ℚ)

end A090132

/-! ## A090132.P10512801509331794341

`Δ[A077973(n+1)/2]`
-/

namespace A090132.P10512801509331794341
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077973 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090132.P10512801509331794341

namespace A090132

/-- `Δ[A077973(n+1)/2]` -/
def P10512801509331794341.Spec : Prop :=
  ∀ n, P10512801509331794341.a n = (A090132 n : ℚ)

end A090132

/-! ## A090132.P1444222376742908599

`A108520(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A090132.P1444222376742908599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A108520 (n - 1) - a (n - 1)

end

end A090132.P1444222376742908599

namespace A090132

/-- `A108520(n-1)-a(n-1)` -/
def P1444222376742908599.Spec : Prop :=
  ∀ n, P1444222376742908599.a n = A090132 n

end A090132

/-! ## A090132.P8729839641284458001

`A084102(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A090132.P8729839641284458001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A084102 n - 2 * a (n - 1)

end

end A090132.P8729839641284458001

namespace A090132

/-- `A084102(n)-2*a(n-1)` -/
def P8729839641284458001.Spec : Prop :=
  ∀ n, P8729839641284458001.a n = A090132 n

end A090132

/-! ## A090132.P4439330805793492434

`A137426(n)+A077973(n)`
-/

namespace A090132.P4439330805793492434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137426 n + A077973 n

end

end A090132.P4439330805793492434

namespace A090132

/-- `A137426(n)+A077973(n)` -/
def P4439330805793492434.Spec : Prop :=
  ∀ n, P4439330805793492434.a n = A090132 n

end A090132

/-! ## A090132.P5891542079136900482

`A087960(n)*A118434(n)`
-/

namespace A090132.P5891542079136900482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A118434 n

end

end A090132.P5891542079136900482

namespace A090132

/-- `A087960(n)*A118434(n)` -/
def P5891542079136900482.Spec : Prop :=
  ∀ n, P5891542079136900482.a n = A090132 n

end A090132

/-! ## A090132.P1649824188159035685

`A118434(n)*A131379(n)`
-/

namespace A090132.P1649824188159035685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118434 n * A131379 n

end

end A090132.P1649824188159035685

namespace A090132

/-- `A118434(n)*A131379(n)` -/
def P1649824188159035685.Spec : Prop :=
  ∀ n, P1649824188159035685.a n = A090132 n

end A090132

/-! ## A090132.P16031380976633953100

`A108520(n)+A009116(n+2)`
-/

namespace A090132.P16031380976633953100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 n + A009116 (n + 2)

end

end A090132.P16031380976633953100

namespace A090132

/-- `A108520(n)+A009116(n+2)` -/
def P16031380976633953100.Spec : Prop :=
  ∀ n, P16031380976633953100.a n = A090132 n

end A090132

/-! ## A090132.P11438367009652256704

`A084102(n+1)-A108520(n)`
-/

namespace A090132.P11438367009652256704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084102 (n + 1) - A108520 n

end

end A090132.P11438367009652256704

namespace A090132

/-- `A084102(n+1)-A108520(n)` -/
def P11438367009652256704.Spec : Prop :=
  ∀ n, P11438367009652256704.a n = A090132 n

end A090132

/-! ## A090132.P3615766944633821702

`A033999(n)*A146559(n+1)`
-/

namespace A090132.P3615766944633821702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A146559 (n + 1)

end

end A090132.P3615766944633821702

namespace A090132

/-- `A033999(n)*A146559(n+1)` -/
def P3615766944633821702.Spec : Prop :=
  ∀ n, P3615766944633821702.a n = A090132 n

end A090132

/-!
# A090133: Expansion of (1+4x)/(1+4x+5x^2).

The programs for A090133, the canonical program `A090133.P16091043955986454927` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090133 has offset 0).

The definition of A090133 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x)/(1+4x+5x^2))` (program `A090133.P16091043955986454927`, by `A090133.P16091043955986454927.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090133.P16091043955986454927

`ogf((1+4x)/(1+4x+5x^2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090133

/-- `ogf((1+4x)/(1+4x+5x^2))` -/
def P16091043955986454927.Spec : Prop :=
  ∀ n, P16091043955986454927.a n = A090133 n

theorem P16091043955986454927.correct : P16091043955986454927.Spec := by
  intro n
  simp only [A090133]

end A090133

/-! ## A090133.P9635919246018225937

`-(4*a(n-1)+5*a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A090133.P9635919246018225937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  -(4 * a (n - 1) + 5 * a (n - 2))

end

end A090133.P9635919246018225937

namespace A090133

/-- `-(4*a(n-1)+5*a(n-2))` -/
def P9635919246018225937.Spec : Prop :=
  ∀ n, P9635919246018225937.a n = A090133 n

end A090133

/-! ## A090133.P16407303202616265901

`a(n-1)-5*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A090133.P16407303202616265901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) - 5 * (a (n - 1) + a (n - 2))

end

end A090133.P16407303202616265901

namespace A090133

/-- `a(n-1)-5*(a(n-1)+a(n-2))` -/
def P16407303202616265901.Spec : Prop :=
  ∀ n, P16407303202616265901.a n = A090133 n

end A090133

/-! ## A090133.P13796947767747744623

`a(n-1)-5*a(n-1)-5*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A090133.P13796947767747744623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) - 5 * a (n - 1) - 5 * a (n - 2)

end

end A090133.P13796947767747744623

namespace A090133

/-- `a(n-1)-5*a(n-1)-5*a(n-2)` -/
def P13796947767747744623.Spec : Prop :=
  ∀ n, P13796947767747744623.a n = A090133 n

end A090133

/-! ## A090133.P8848050346151992113

`Δ[A140290(n)-A165553(n)]`
-/

namespace A090133.P8848050346151992113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140290 n - A165553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090133.P8848050346151992113

namespace A090133

/-- `Δ[A140290(n)-A165553(n)]` -/
def P8848050346151992113.Spec : Prop :=
  ∀ n, P8848050346151992113.a n = A090133 n

end A090133

/-!
# A090134: a(n) = (6*n!/(n+5)) *binomial(n+5,n-1)* 6F6(-n+1, 1/5*n+1, 1/5*n+9/5, 1/5*n+8/5, 1/5*n+7/5, 1/5*n+6/5; 7/6, 4/3, 3/2, 5/3, 11/6, 2; -3125/46656), where 6F6(;;) is the generalized hypergeometric series.

The programs for A090134, there is no canonical definition to state claims against.
-/

/-! ## A090134.P11793086434913738537

`A293012(A056126(n)+29)`
-/

namespace A090134.P11793086434913738537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293012 (A056126 n + 29).toNat

end

end A090134.P11793086434913738537

/-! ## A090134.P4331713887682643132

`A293012(eq[5, A219347(n)])`
-/

namespace A090134.P4331713887682643132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090134.P4331713887682643132

/-! ## A090134.P11743111810867388562

`A293012(eq[7, A193592(n)])`
-/

namespace A090134.P11743111810867388562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090134.P11743111810867388562

/-! ## A090134.P11487414197159754140

`A293012(A155212(n+4)+1)`
-/

namespace A090134.P11487414197159754140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293012 (A155212 (n + 4) + 1).toNat

end

end A090134.P11487414197159754140

/-! ## A090134.P5044071628486674478

`A293012(eq[7, A025581(n)]+1)`
-/

namespace A090134.P5044071628486674478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A090134.P5044071628486674478

/-!
# A090135: E.g.f.: exp(1-(-1+2*(1-2*x)^(1/2))^(1/2)).

The programs for A090135, there is no canonical definition to state claims against.
-/

/-! ## A090135.P10363844533445976598

`A000201(round(sqrt(A296743(n))))`
-/

namespace A090135.P10363844533445976598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (SequenceMachineLib.roundAway (Real.sqrt (A296743 n : ℝ))).toNat

end

end A090135.P10363844533445976598

/-!
# A090136: E.g.f.: exp(1-(-2+3*(1-3*x)^(1/3))^(1/3)).

The programs for A090136, there is no canonical definition to state claims against.
-/

/-! ## A090136.P2444331861428009130

`A023443(A371997(n)+A007696(n+1))`
-/

namespace A090136.P2444331861428009130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A371997 n + A007696 (n + 1)).toNat

end

end A090136.P2444331861428009130

/-!
# A090137: Numerator of the probability that the sum of n uniform picks on [0,1] is first greater than 2 (i.e., the sum of n-1 is not).

The programs for A090137, there is no canonical definition to state claims against.
-/

/-! ## A090137.P10226033478091817121

`A093411(lcm(2, A000295(n)))`
-/

namespace A090137.P10226033478091817121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (Int.lcm 2 (A000295 n))

end

end A090137.P10226033478091817121

/-! ## A090137.P3391301517703860522

`A093411(2*A093411(A000295(n)))`
-/

namespace A090137.P3391301517703860522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (2 * A093411 (A000295 n).toNat).toNat

end

end A090137.P3391301517703860522

/-! ## A090137.P1103783765364071160

`A093411(A005803(n+1))`
-/

namespace A090137.P1103783765364071160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A005803 (n + 1)).toNat

end

end A090137.P1103783765364071160

/-! ## A090137.P5430773234867048463

`A093411(2*A000295(n))`
-/

namespace A090137.P5430773234867048463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (2 * A000295 n).toNat

end

end A090137.P5430773234867048463

/-! ## A090137.P3245163070620054181

`A093411(A302689(n+2))`
-/

namespace A090137.P3245163070620054181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A302689 (n + 2)).toNat

end

end A090137.P3245163070620054181

/-!
# A090139: a(n) = 10*a(n-1) - 20*a(n-2), a(0)=1,a(1)=5.

The programs for A090139, the canonical program `A090139.P5993491295510661191` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090139 has offset 0).

The definition of A090139 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-20*a(n-2)` (program `A090139.P5993491295510661191`, by `A090139.P5993491295510661191.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090139.P5993491295510661191

`10*a(n-1)-20*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090139

/-- `10*a(n-1)-20*a(n-2)` -/
def P5993491295510661191.Spec : Prop :=
  ∀ n, P5993491295510661191.a n = A090139 n

theorem P5993491295510661191.correct : P5993491295510661191.Spec := by
  intro n
  simp only [A090139]

end A090139

/-! ## A090139.P8512614671283707476

`((5-sqrt(5))^n+(5+sqrt(5))^n)/2`
-/

namespace A090139.P8512614671283707476
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 - Real.sqrt (5 : ℝ)) ^ n + (5 + Real.sqrt (5 : ℝ)) ^ n) / 2

end

end A090139.P8512614671283707476

namespace A090139

/-- `((5-sqrt(5))^n+(5+sqrt(5))^n)/2` -/
def P8512614671283707476.Spec : Prop :=
  ∀ n, P8512614671283707476.a n = (A090139 n : ℝ)

end A090139

/-! ## A090139.P16284054308544014277

`ogf((1-5x)/(1-10x+20x^2))`
-/

namespace A090139.P16284054308544014277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -10, 20] n

end

end A090139.P16284054308544014277

namespace A090139

/-- `ogf((1-5x)/(1-10x+20x^2))` -/
def P16284054308544014277.Spec : Prop :=
  ∀ n, P16284054308544014277.a n = A090139 n

end A090139

/-! ## A090139.P2678977665551435970

`2^(n-1)*A020876(n)`
-/

namespace A090139.P2678977665551435970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A020876 n : ℚ)

end

end A090139.P2678977665551435970

namespace A090139

/-- `2^(n-1)*A020876(n)` -/
def P2678977665551435970.Spec : Prop :=
  ∀ n, P2678977665551435970.a n = (A090139 n : ℚ)

end A090139

/-! ## A090139.P8276282466216019606

`2^(n-1)*A093129(n+1)`
-/

namespace A090139.P8276282466216019606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A093129 (n + 1) : ℚ)

end

end A090139.P8276282466216019606

namespace A090139

/-- `2^(n-1)*A093129(n+1)` -/
def P8276282466216019606.Spec : Prop :=
  ∀ n, P8276282466216019606.a n = (A090139 n : ℚ)

end A090139

/-! ## A090139.P13819831748023806399

`A093133(n)+A093130(n)`
-/

namespace A090139.P13819831748023806399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093133 n + A093130 n

end

end A090139.P13819831748023806399

namespace A090139

/-- `A093133(n)+A093130(n)` -/
def P13819831748023806399.Spec : Prop :=
  ∀ n, P13819831748023806399.a n = A090139 n

end A090139

/-! ## A090139.P3088855250075314161

`A093145(n)+A093123(n)`
-/

namespace A090139.P3088855250075314161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093145 n + A093123 n

end

end A090139.P3088855250075314161

namespace A090139

/-- `A093145(n)+A093123(n)` -/
def P3088855250075314161.Spec : Prop :=
  ∀ n, P3088855250075314161.a n = A090139 n

end A090139

/-! ## A090139.P14125405898698603139

`A080878(n)*A268100(n)`
-/

namespace A090139.P14125405898698603139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080878 n * A268100 n

end

end A090139.P14125405898698603139

namespace A090139

/-- `A080878(n)*A268100(n)` -/
def P14125405898698603139.Spec : Prop :=
  ∀ n, P14125405898698603139.a n = A090139 n

end A090139

/-! ## A090139.P16143311950613812160

`A093133(n)+2*A093145(n)`
-/

namespace A090139.P16143311950613812160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093133 n + 2 * A093145 n

end

end A090139.P16143311950613812160

namespace A090139

/-- `A093133(n)+2*A093145(n)` -/
def P16143311950613812160.Spec : Prop :=
  ∀ n, P16143311950613812160.a n = A090139 n

end A090139

/-! ## A090139.P18041387432670290839

`A093123(n)+A093130(n)/2`
-/

namespace A090139.P18041387432670290839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093123 n : ℚ) + (A093130 n : ℚ) / 2

end

end A090139.P18041387432670290839

namespace A090139

/-- `A093123(n)+A093130(n)/2` -/
def P18041387432670290839.Spec : Prop :=
  ∀ n, P18041387432670290839.a n = (A090139 n : ℚ)

end A090139

/-! ## A090139.P9420741698433956763

`A163065(n)-A162773(n)`
-/

namespace A090139.P9420741698433956763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163065 n - A162773 n

end

end A090139.P9420741698433956763

namespace A090139

/-- `A163065(n)-A162773(n)` -/
def P9420741698433956763.Spec : Prop :=
  ∀ n, P9420741698433956763.a n = A090139 n

end A090139

/-! ## A090139.P13258107186532571966

`A163072(n)-A163065(n)`
-/

namespace A090139.P13258107186532571966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163072 n - A163065 n

end

end A090139.P13258107186532571966

namespace A090139

/-- `A163072(n)-A163065(n)` -/
def P13258107186532571966.Spec : Prop :=
  ∀ n, P13258107186532571966.a n = A090139 n

end A090139

/-! ## A090139.P7684808209973746382

`A162773(n+1)%A162773(n)`
-/

namespace A090139.P7684808209973746382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162773 (n + 1)) (A162773 n)

end

end A090139.P7684808209973746382

namespace A090139

/-- `A162773(n+1)%A162773(n)` -/
def P7684808209973746382.Spec : Prop :=
  ∀ n, P7684808209973746382.a n = A090139 n

end A090139

/-! ## A090139.P13035663774409490324

`Δ[A163072(n)]%A163065(n+1)`
-/

namespace A090139.P13035663774409490324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163072 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A163065 (n + 1))

end

end A090139.P13035663774409490324

namespace A090139

/-- `Δ[A163072(n)]%A163065(n+1)` -/
def P13035663774409490324.Spec : Prop :=
  ∀ n, P13035663774409490324.a n = A090139 n

end A090139

/-! ## A090139.P2183560137780907867

`(A163065(n)%A162773(n))%A163066(n)`
-/

namespace A090139.P2183560137780907867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A163065 n) (A162773 n)) (A163066 n)

end

end A090139.P2183560137780907867

namespace A090139

/-- `(A163065(n)%A162773(n))%A163066(n)` -/
def P2183560137780907867.Spec : Prop :=
  ∀ n, P2183560137780907867.a n = A090139 n

end A090139

/-!
# A090140: Number of groups of order 7^n.

The programs for A090140, there is no canonical definition to state claims against.
-/

/-! ## A090140.P10223919535158207003

`A319171(eq[8, 2^(n-C(∑[char[∑[n]]], 2))])`
-/

namespace A090140.P10223919535158207003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319171 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A090140.P10223919535158207003

/-! ## A090140.P11064335286999699347

`A319171(A085931(n+1))`
-/

namespace A090140.P11064335286999699347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319171 (A085931 (n + 1)).toNat

end

end A090140.P11064335286999699347

/-! ## A090140.P3870239639108812678

`A319171(A167614(n+2))`
-/

namespace A090140.P3870239639108812678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319171 (A167614 (n + 2)).toNat

end

end A090140.P3870239639108812678

/-!
# A090141: a(n) = Mod[n,4+Sum[Mod[Floor[n/4^m],4],{m,1,10}]].

The programs for A090141, there is no canonical definition to state claims against.
-/

/-! ## A090141.P10393564690019439129

`(n+1)%(A329697(A101942(n+1))+4)`
-/

namespace A090141.P10393564690019439129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A329697 (A101942 (n + 1)).toNat + 4)

end

end A090141.P10393564690019439129

/-!
# A090144: Numbers n which when converted to some base between 2 and 9 yield a result with the same digits as n in a different order.

The programs for A090144, there is no canonical definition to state claims against.
-/

/-! ## A090144.P3039176385661809691

`A162572(∑[A089170(n)])`
-/

namespace A090144.P3039176385661809691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162572 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A090144.P3039176385661809691

/-! ## A090144.P13679123776509276448

`A162572(A061497(n+1))`
-/

namespace A090144.P13679123776509276448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162572 (A061497 (n + 1)).toNat

end

end A090144.P13679123776509276448

/-! ## A090144.P9794813015656216119

`A162572(A077741(n+1))`
-/

namespace A090144.P9794813015656216119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162572 (A077741 (n + 1)).toNat

end

end A090144.P9794813015656216119

/-! ## A090144.P3700376461621249144

`A162572(A106604(n)+1)`
-/

namespace A090144.P3700376461621249144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162572 (A106604 n + 1).toNat

end

end A090144.P3700376461621249144

/-! ## A090144.P6573157008325647673

`A118759(A162572(n+1))`
-/

namespace A090144.P6573157008325647673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A162572 (n + 1)).toNat

end

end A090144.P6573157008325647673

/-!
# A090145: Even-indexed terms of the binomial transform equal 1 and the odd-indexed terms of the second binomial transform equal 1.

The programs for A090145, there is no canonical definition to state claims against.
-/

/-! ## A090145.P11046862892897484088

`A122045(n)-A225883(n)`
-/

namespace A090145.P11046862892897484088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122045 n - A225883 n

end

end A090145.P11046862892897484088

/-! ## A090145.P1416212192734508369

`A119879(∑[n])-A225883(n)`
-/

namespace A090145.P1416212192734508369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119879 (∑ j ∈ Finset.range (n + 1), f1 j) - A225883 n

end

end A090145.P1416212192734508369

/-! ## A090145.P9044679460480620265

`Δ[A009390(n)]-A225883(n)`
-/

namespace A090145.P9044679460480620265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A225883 n

end

end A090145.P9044679460480620265

/-! ## A090145.P829428149992240615

`1-(A225883(n)+A009832(n))`
-/

namespace A090145.P829428149992240615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A225883 n + A009832 n)

end

end A090145.P829428149992240615

/-! ## A090145.P12884587530666138301

`A122045(n)+A000225(n)*A033999(n)`
-/

namespace A090145.P12884587530666138301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122045 n + A000225 n * A033999 n

end

end A090145.P12884587530666138301

/-!
# A090146: Primes of the form identical digits followed by a 3.

The programs for A090146, there is no canonical definition to state claims against.
-/

/-! ## A090146.P7333505061002294520

`p?[10*A010785(n)+3]`
-/

namespace A090146.P7333505061002294520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A010785 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090146.P7333505061002294520

/-! ## A090146.P16194792135632437402

`∩[A030431(n+1), A062353(n+1)]`
-/

namespace A090146.P16194792135632437402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090146.P16194792135632437402

/-! ## A090146.P6972650843236931457

`p?[A017305(A010785(n))]`
-/

namespace A090146.P6972650843236931457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (A010785 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090146.P6972650843236931457

/-! ## A090146.P7828993506004456442

`p?[record[A017305(A056967(n))]]`
-/

namespace A090146.P7828993506004456442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (A056967 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090146.P7828993506004456442

/-! ## A090146.P6633184857824565696

`p?[A043562(n)+A017293(n)]`
-/

namespace A090146.P6633184857824565696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 n + A017293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090146.P6633184857824565696

/-!
# A090147: Primes of the form identical digits followed by a 7.

The programs for A090147, there is no canonical definition to state claims against.
-/

/-! ## A090147.P2863034114931950783

`p?[10*A010785(n)+7]`
-/

namespace A090147.P2863034114931950783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A010785 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090147.P2863034114931950783

/-! ## A090147.P4457999321204057178

`∩[A030432(n+1), A062353(n+1)]`
-/

namespace A090147.P4457999321204057178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090147.P4457999321204057178

/-! ## A090147.P13388785909429212002

`p?[A017353(A010785(n))]`
-/

namespace A090147.P13388785909429212002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 (A010785 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090147.P13388785909429212002

/-! ## A090147.P15703272671495075240

`p?[A017353(record[A056967(n)])]`
-/

namespace A090147.P15703272671495075240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056967 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090147.P15703272671495075240

/-! ## A090147.P9238147028656142813

`filter[A062353(n+1), A185708(#)]`
-/

namespace A090147.P9238147028656142813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185708 (f1 j).toNat = 1) n)

end

end A090147.P9238147028656142813

/-!
# A090148: Primes of the form identical digits followed by a 9.

The programs for A090148, there is no canonical definition to state claims against.
-/

/-! ## A090148.P11140681366132502477

`∩[A030433(n+1), A062353(n+1)]`
-/

namespace A090148.P11140681366132502477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090148.P11140681366132502477

/-! ## A090148.P11454756747138378738

`∩[A030433(n+1), A241176(n+1)]`
-/

namespace A090148.P11454756747138378738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090148.P11454756747138378738

/-! ## A090148.P15031166875985072945

`∩[A045457(n+1), A241176(n+1)]`
-/

namespace A090148.P15031166875985072945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090148.P15031166875985072945

/-! ## A090148.P8926622093107413110

`∩[A062353(n+1), A327753(n+1)]`
-/

namespace A090148.P8926622093107413110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090148.P8926622093107413110

/-!
# A090149: Primes of the form identical digits preceded by a 1.

The programs for A090149, there is no canonical definition to state claims against.
-/

/-! ## A090149.P9543168313131492924

`p?[floor(A014181(n+2)/5)]`
-/

namespace A090149.P9543168313131492924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014181 (n + 2) : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090149.P9543168313131492924

/-! ## A090149.P5642086976023701328

`∩[A028864(n+1), A066985(n+1)]`
-/

namespace A090149.P5642086976023701328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090149.P5642086976023701328

/-! ## A090149.P12068809186396588629

`∩[A045707(n+1), A061022(n+1)]`
-/

namespace A090149.P12068809186396588629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090149.P12068809186396588629

/-! ## A090149.P826565895685949345

`∩[A052085(n+1), A066985(n+1)]`
-/

namespace A090149.P826565895685949345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090149.P826565895685949345

/-!
# A090150: Primes of the form a string of identical digits preceded by a 2.

The programs for A090150, there is no canonical definition to state claims against.
-/

/-! ## A090150.P15428043128055150932

`∩[A061022(n+1), A306086(n+1)]`
-/

namespace A090150.P15428043128055150932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090150.P15428043128055150932

/-! ## A090150.P18250483776019981551

`∩[A034843(n+1), A061022(n+1)]`
-/

namespace A090150.P18250483776019981551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090150.P18250483776019981551

/-! ## A090150.P10229203417445366093

`∩[A045708(n+1), A061022(n+1)]`
-/

namespace A090150.P10229203417445366093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090150.P10229203417445366093

/-! ## A090150.P9938186091223841218

`∩[A061022(n+1), A062653(n+1)]`
-/

namespace A090150.P9938186091223841218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090150.P9938186091223841218

/-! ## A090150.P4402005942509464988

`∩[A061022(n+1), A077678(n+1)]`
-/

namespace A090150.P4402005942509464988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090150.P4402005942509464988

/-!
# A090152: Primes of the form identical digits preceded by a 4.

The programs for A090152, there is no canonical definition to state claims against.
-/

/-! ## A090152.P17504115757818664640

`∩[A045710(n+1), A061022(n+1)]`
-/

namespace A090152.P17504115757818664640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090152.P17504115757818664640

/-! ## A090152.P12578036556451184773

`∩[A061022(n+1), A062669(n+1)]`
-/

namespace A090152.P12578036556451184773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090152.P12578036556451184773

/-! ## A090152.P10013295624934974742

`∩[A061022(n+1), A077680(n+1)]`
-/

namespace A090152.P10013295624934974742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090152.P10013295624934974742

/-! ## A090152.P9225516484065331958

`∩[A061022(n+1), A284290(n+1)]`
-/

namespace A090152.P9225516484065331958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090152.P9225516484065331958

/-!
# A090153: Primes of the form identical digits preceded by a 5.

The programs for A090153, there is no canonical definition to state claims against.
-/

/-! ## A090153.P7983425495619780094

`∩[A045711(n+1), A061022(n+1)]`
-/

namespace A090153.P7983425495619780094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090153.P7983425495619780094

/-! ## A090153.P9952979429932418861

`∩[A061022(n+1), A092454(n)]`
-/

namespace A090153.P9952979429932418861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092454 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090153.P9952979429932418861

/-!
# A090155: Primes of the form identical digits preceded by a 7.

The programs for A090155, there is no canonical definition to state claims against.
-/

/-! ## A090155.P12639963043923229307

`p?[A043086(n+1)-A287022(n)]`
-/

namespace A090155.P12639963043923229307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043086 (n + 1) - A287022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090155.P12639963043923229307

/-! ## A090155.P140759401998352282

`∩[A020633(n+1), A045713(n+1)]`
-/

namespace A090155.P140759401998352282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090155.P140759401998352282

/-!
# A090156: Primes of the form identical digits preceded by an 8.

The programs for A090156, there is no canonical definition to state claims against.
-/

/-! ## A090156.P13203569637863581986

`∩[A045714(n+1), A061022(n+1)]`
-/

namespace A090156.P13203569637863581986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090156.P13203569637863581986

/-! ## A090156.P11166525949274331431

`∩[A061022(n+1), A062677(n+1)]`
-/

namespace A090156.P11166525949274331431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090156.P11166525949274331431

/-!
# A090158: Odd-indexed terms of the binomial transform equals 1 and the even-indexed terms of the second binomial transform equals 1.

The programs for A090158, there is no canonical definition to state claims against.
-/

/-! ## A090158.P11560590620201906387

`A225883(n)+A004174(∑[n])`
-/

namespace A090158.P11560590620201906387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225883 n + A004174 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A090158.P11560590620201906387

/-! ## A090158.P7446526254777098169

`A225883(n)+A081733(∑[n])`
-/

namespace A090158.P7446526254777098169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225883 n + A081733 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A090158.P7446526254777098169

/-! ## A090158.P15036445087368174442

`A163747(n)-A090145(A028310(n))`
-/

namespace A090158.P15036445087368174442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163747 n - A090145 (A028310 n).toNat

end

end A090158.P15036445087368174442

/-! ## A090158.P11292375990100078145

`xor(A155585(n)-A000079(n), A033999(n))`
-/

namespace A090158.P11292375990100078145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A155585 n - A000079 n) (A033999 n)

end

end A090158.P11292375990100078145

/-! ## A090158.P14387572275029013131

`xor(1-2*A000035(n), A155585(n)-A000079(n))`
-/

namespace A090158.P14387572275029013131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (1 - 2 * A000035 n) (A155585 n - A000079 n)

end

end A090158.P14387572275029013131

/-!
# A090159: Semiprimes of the form m! + 1.

The programs for A090159, there is no canonical definition to state claims against.
-/

/-! ## A090159.P11460689386316119920

`A078778(n+1)!+1`
-/

namespace A090159.P11460689386316119920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A078778 (n + 1)).toNat + 1

end

end A090159.P11460689386316119920

/-! ## A090159.P5291944157007415295

`A038507(A078778(n+1))`
-/

namespace A090159.P5291944157007415295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038507 (A078778 (n + 1)).toNat

end

end A090159.P5291944157007415295

/-! ## A090159.P13105253430875327940

`A038507(eq[1, A114187(n)])`
-/

namespace A090159.P13105253430875327940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038507 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090159.P13105253430875327940

/-! ## A090159.P1157417200108536302

`A038507(eq[A002583(n), A056111(n)])`
-/

namespace A090159.P1157417200108536302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002583 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038507 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A090159.P1157417200108536302

/-! ## A090159.P4467087345000214531

`A082952(n+1)*A090160(n+1)`
-/

namespace A090159.P4467087345000214531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082952 (n + 1) * A090160 (n + 1)

end

end A090159.P4467087345000214531

/-!
# A090160: Greater prime factor of semiprimes in A090159.

The programs for A090160, there is no canonical definition to state claims against.
-/

/-! ## A090160.P9363533382260535925

`A002583(A078778(n+1))`
-/

namespace A090160.P9363533382260535925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002583 (A078778 (n + 1)).toNat

end

end A090160.P9363533382260535925

/-! ## A090160.P612424512215933739

`A002583(eq[1, A114187(n)])`
-/

namespace A090160.P612424512215933739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090160.P612424512215933739

/-! ## A090160.P9191715220953817384

`A056111(eq[1, A114187(n)])`
-/

namespace A090160.P9191715220953817384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056111 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090160.P9191715220953817384

/-! ## A090160.P17429107493638804246

`A090159(n+1)/A082952(n+1)`
-/

namespace A090160.P17429107493638804246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090159 (n + 1) : ℚ) / (A082952 (n + 1) : ℚ)

end

end A090160.P17429107493638804246

/-! ## A090160.P8990312313463198691

`A002583(eq[A002583(n), A056111(n)])`
-/

namespace A090160.P8990312313463198691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002583 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002583 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A090160.P8990312313463198691

/-!
# A090161: A023219 indexed by A000040.

The programs for A090161, the canonical program `A090161.P15352132429270474360` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090161 has offset 1).

The definition of A090161 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A023219, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A090161.P15352132429270474360

`A000720(A023219(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A090161

/-- `A000720(A023219(n+1))` -/
def P15352132429270474360.Spec : Prop :=
  ∀ n, P15352132429270474360.a n = A090161 (n + 1)

theorem P15352132429270474360.correct : P15352132429270474360.Spec := by
  intro n
  simp only [A090161, Nat.add_sub_cancel]

end A090161

/-! ## A090161.P17686290804405663721

`A061395(p?[5*A000040(n+1)+6]-6)`
-/

namespace A090161.P17686290804405663721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000040 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 6).toNat

end

end A090161.P17686290804405663721

namespace A090161

/-- `A061395(p?[5*A000040(n+1)+6]-6)` -/
def P17686290804405663721.Spec : Prop :=
  ∀ n, P17686290804405663721.a n = A090161 (n + 1)

end A090161

/-! ## A090161.P549338697149088205

`eq[1, A001222(5*A008864(n+1)+1)]+1`
-/

namespace A090161.P549338697149088205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * A008864 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A090161.P549338697149088205

namespace A090161

/-- `eq[1, A001222(5*A008864(n+1)+1)]+1` -/
def P549338697149088205.Spec : Prop :=
  ∀ n, (P549338697149088205.a n : ℤ) = A090161 (n + 1)

end A090161

/-! ## A090161.P3499305162807612861

`lt[A000005(5*A000040(n+1)+6), 3]+1`
-/

namespace A090161.P3499305162807612861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * A000040 (n + 1) + 6).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A090161.P3499305162807612861

namespace A090161

/-- `lt[A000005(5*A000040(n+1)+6), 3]+1` -/
def P3499305162807612861.Spec : Prop :=
  ∀ n, (P3499305162807612861.a n : ℤ) = A090161 (n + 1)

end A090161

/-! ## A090161.P14333644089049819782

`eq[1, A001222(5*(A000040(n+1)+1)+1)]+1`
-/

namespace A090161.P14333644089049819782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * (A000040 (n + 1) + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A090161.P14333644089049819782

namespace A090161

/-- `eq[1, A001222(5*(A000040(n+1)+1)+1)]+1` -/
def P14333644089049819782.Spec : Prop :=
  ∀ n, (P14333644089049819782.a n : ℤ) = A090161 (n + 1)

end A090161

/-! ## A090161.P14319872576851740600

`eq[2, A000005(5*(A000040(n+1)+1)+1)]+1`
-/

namespace A090161.P14319872576851740600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * (A000040 (n + 1) + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A090161.P14319872576851740600

namespace A090161

/-- `eq[2, A000005(5*(A000040(n+1)+1)+1)]+1` -/
def P14319872576851740600.Spec : Prop :=
  ∀ n, (P14319872576851740600.a n : ℤ) = A090161 (n + 1)

end A090161

/-! ## A090161.P6087357011635604310

`record[A061395(A227680(n+1))]`
-/

namespace A090161.P6087357011635604310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A227680 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090161.P6087357011635604310

namespace A090161

/-- `record[A061395(A227680(n+1))]` -/
def P6087357011635604310.Spec : Prop :=
  ∀ n, P6087357011635604310.a n = A090161 (n + 1)

end A090161

/-! ## A090161.P12152273945762758431

`A003963(p?[A023219(n+1)])`
-/

namespace A090161.P12152273945762758431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090161.P12152273945762758431

namespace A090161

/-- `A003963(p?[A023219(n+1)])` -/
def P12152273945762758431.Spec : Prop :=
  ∀ n, P12152273945762758431.a n = A090161 (n + 1)

end A090161

/-! ## A090161.P15720155812667893500

`A026233(p?[A023219(n+1)])`
-/

namespace A090161.P15720155812667893500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090161.P15720155812667893500

namespace A090161

/-- `A026233(p?[A023219(n+1)])` -/
def P15720155812667893500.Spec : Prop :=
  ∀ n, P15720155812667893500.a n = A090161 (n + 1)

end A090161

/-! ## A090161.P3655454674842851189

`record[A061395(A189759(n+1))]`
-/

namespace A090161.P3655454674842851189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A189759 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090161.P3655454674842851189

namespace A090161

/-- `record[A061395(A189759(n+1))]` -/
def P3655454674842851189.Spec : Prop :=
  ∀ n, P3655454674842851189.a n = A090161 (n + 1)

end A090161

/-!
# A090164: Number of configurations of Sam Loyd's sliding block 15-puzzle that require a minimum of n moves to be reached, starting with the empty square at one of the 4 central squares.

The programs for A090164, there is no canonical definition to state claims against.
-/

/-! ## A090164.P12941669695717682508

`A000267(A073976(n+1))+n`
-/

namespace A090164.P12941669695717682508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A073976 (n + 1)).toNat + (n : ℤ)

end

end A090164.P12941669695717682508

/-! ## A090164.P15698063568784793170

`∑[∑[A018387(A018393(n+1))]]`
-/

namespace A090164.P15698063568784793170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018387 (A018393 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090164.P15698063568784793170

/-!
# A090165: Number of configurations of Sam Loyd's sliding block 15-puzzle that require a minimum of n moves to be reached, starting with the empty square at one of the 8 non-corner boundary squares.

The programs for A090165, there is no canonical definition to state claims against.
-/

/-! ## A090165.P2588922321115199665

`A116939(floor(∑[3*2^(n-2)])²+1)`
-/

namespace A090165.P2588922321115199665
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ ^ 2 + 1).toNat

end

end A090165.P2588922321115199665

/-! ## A090165.P15264659761017701027

`A320055(∑[ceil(2^(n-2))])+2^n-1`
-/

namespace A090165.P15264659761017701027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320055 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + ((2 ^ n : ℤ) - 1)

end

end A090165.P15264659761017701027

/-! ## A090165.P15750367240800881083

`A096135(A035592(n))`
-/

namespace A090165.P15750367240800881083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096135 (A035592 n).toNat

end

end A090165.P15750367240800881083

/-!
# A090167: Number of configurations of the 6 X 2 variant of the so-called "Sam Loyd" sliding block 15-puzzle that require a minimum of n moves to be reached, starting with the empty square in one of the corners.

The programs for A090167, there is no canonical definition to state claims against.
-/

/-! ## A090167.P919708947489603826

`A234852(A078408(n)-A120040(n))`
-/

namespace A090167.P919708947489603826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234852 (A078408 n - A120040 n).toNat

end

end A090167.P919708947489603826

/-! ## A090167.P3411474736516898097

`A065362(A056300(n+2))`
-/

namespace A090167.P3411474736516898097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065362 (A056300 (n + 2)).toNat

end

end A090167.P3411474736516898097

/-! ## A090167.P17906966697339928427

`A002024((n+1)*A189590(n+1))`
-/

namespace A090167.P17906966697339928427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 ((n + 1 : ℤ) * A189590 (n + 1)).toNat

end

end A090167.P17906966697339928427

/-! ## A090167.P16735814584714735625

`A123578((n+1)*A189590(n+1))`
-/

namespace A090167.P16735814584714735625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 ((n + 1 : ℤ) * A189590 (n + 1)).toNat

end

end A090167.P16735814584714735625

/-! ## A090167.P16620670426146648962

`A101886(A034344(n+1)+∑[char[n²]])`
-/

namespace A090167.P16620670426146648962
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101886 (A034344 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A090167.P16620670426146648962

/-!
# A090168: Floor( 3n/2 ) - floor( 2n/3 ).

The programs for A090168, the canonical program `A090168.P7202605132090030345` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090168 has offset 0).

The definition of A090168 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3*n/2)-floor(2*n/3)` (program `A090168.P7202605132090030345`, by `A090168.P7202605132090030345.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090168.P7202605132090030345

`floor(3*n/2)-floor(2*n/3)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090168

/-- `floor(3*n/2)-floor(2*n/3)` -/
def P7202605132090030345.Spec : Prop :=
  ∀ n, P7202605132090030345.a n = A090168 n

theorem P7202605132090030345.correct : P7202605132090030345.Spec := by
  intro n
  simp only [A090168]

end A090168

/-! ## A090168.P4581425537974706654

`round(xor(1, 5*n)/6)`
-/

namespace A090168.P4581425537974706654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (5 * n) : ℚ) / 6)

end

end A090168.P4581425537974706654

namespace A090168

/-- `round(xor(1, 5*n)/6)` -/
def P4581425537974706654.Spec : Prop :=
  ∀ n, P4581425537974706654.a n = A090168 n

end A090168

/-! ## A090168.P698232288707854620

`floor((xor(1, 5*n)+3)/6)`
-/

namespace A090168.P698232288707854620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 (5 * n) + 3 : ℚ) / 6⌋

end

end A090168.P698232288707854620

namespace A090168

/-- `floor((xor(1, 5*n)+3)/6)` -/
def P698232288707854620.Spec : Prop :=
  ∀ n, P698232288707854620.a n = A090168 n

end A090168

/-! ## A090168.P15754455902025473988

`round(xor(1, n)/3+n/2)`
-/

namespace A090168.P15754455902025473988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 3 + (n : ℚ) / 2)

end

end A090168.P15754455902025473988

namespace A090168

/-- `round(xor(1, n)/3+n/2)` -/
def P15754455902025473988.Spec : Prop :=
  ∀ n, P15754455902025473988.a n = A090168 n

end A090168

/-! ## A090168.P9960655152870167058

`floor(n-xor(1, n-3)/6)`
-/

namespace A090168.P9960655152870167058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) - (Int.xor 1 ((n : ℤ) - 3) : ℚ) / 6⌋

end

end A090168.P9960655152870167058

namespace A090168

/-- `floor(n-xor(1, n-3)/6)` -/
def P9960655152870167058.Spec : Prop :=
  ∀ n, P9960655152870167058.a n = A090168 n

end A090168

/-! ## A090168.P9221739476070717941

`floor((or(5, 4*n)+n)/6)`
-/

namespace A090168.P9221739476070717941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 5 (4 * n) + n : ℚ) / 6⌋

end

end A090168.P9221739476070717941

namespace A090168

/-- `floor((or(5, 4*n)+n)/6)` -/
def P9221739476070717941.Spec : Prop :=
  ∀ n, P9221739476070717941.a n = A090168 n

end A090168

/-! ## A090168.P17321744541521568329

`floor(∑[5-a(n-1)]/3)` with `a(0)=2, a(1)=1`
-/

namespace A090168.P17321744541521568329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A090168.P17321744541521568329

namespace A090168

/-- `floor(∑[5-a(n-1)]/3)` -/
def P17321744541521568329.Spec : Prop :=
  ∀ n, P17321744541521568329.a n = A090168 n

end A090168

/-! ## A090168.P10546899562686047228

`floor((∑[gcd(n+2, n-1)]-1)/2)`
-/

namespace A090168.P10546899562686047228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℚ) / 2⌋

end

end A090168.P10546899562686047228

namespace A090168

/-- `floor((∑[gcd(n+2, n-1)]-1)/2)` -/
def P10546899562686047228.Spec : Prop :=
  ∀ n, P10546899562686047228.a n = A090168 n

end A090168

/-! ## A090168.P2767087308246825957

`∑[a(n-3)+(-1)^n]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A090168.P2767087308246825957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 0] fun n f1 =>
  f1 (n - 3) + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090168.P2767087308246825957

namespace A090168

/-- `∑[a(n-3)+(-1)^n]` -/
def P2767087308246825957.Spec : Prop :=
  ∀ n, P2767087308246825957.a n = A090168 n

end A090168

/-! ## A090168.P17334081876684071943

`floor(A090773(n+1)/6)`
-/

namespace A090168.P17334081876684071943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A090773 (n + 1) : ℚ) / 6⌋

end

end A090168.P17334081876684071943

namespace A090168

/-- `floor(A090773(n+1)/6)` -/
def P17334081876684071943.Spec : Prop :=
  ∀ n, P17334081876684071943.a n = A090168 n

end A090168

/-! ## A090168.P7832346542053197251

`A213398(n)%A331943(n+1)`
-/

namespace A090168.P7832346542053197251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213398 n) (A331943 (n + 1))

end

end A090168.P7832346542053197251

namespace A090168

/-- `A213398(n)%A331943(n+1)` -/
def P7832346542053197251.Spec : Prop :=
  ∀ n, P7832346542053197251.a n = A090168 n

end A090168

/-! ## A090168.P213294609411992667

`A047219(n+1)%A032793(n+1)`
-/

namespace A090168.P213294609411992667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047219 (n + 1)) (A032793 (n + 1))

end

end A090168.P213294609411992667

namespace A090168

/-- `A047219(n+1)%A032793(n+1)` -/
def P213294609411992667.Spec : Prop :=
  ∀ n, P213294609411992667.a n = A090168 n

end A090168

/-! ## A090168.P9025469818140072953

`A047346(n+1)%A047400(n+1)`
-/

namespace A090168.P9025469818140072953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047346 (n + 1)) (A047400 (n + 1))

end

end A090168.P9025469818140072953

namespace A090168

/-- `A047346(n+1)%A047400(n+1)` -/
def P9025469818140072953.Spec : Prop :=
  ∀ n, P9025469818140072953.a n = A090168 n

end A090168

/-! ## A090168.P7061462310918621762

`A047385(n+1)%A047539(n+1)`
-/

namespace A090168.P7061462310918621762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047385 (n + 1)) (A047539 (n + 1))

end

end A090168.P7061462310918621762

namespace A090168

/-- `A047385(n+1)%A047539(n+1)` -/
def P7061462310918621762.Spec : Prop :=
  ∀ n, P7061462310918621762.a n = A090168 n

end A090168

/-! ## A090168.P1429950683866235271

`A047537(n+1)%A106252(n+1)`
-/

namespace A090168.P1429950683866235271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047537 (n + 1)) (A106252 (n + 1))

end

end A090168.P1429950683866235271

namespace A090168

/-- `A047537(n+1)%A106252(n+1)` -/
def P1429950683866235271.Spec : Prop :=
  ∀ n, P1429950683866235271.a n = A090168 n

end A090168

/-! ## A090168.P13719603863270149663

`A004526(A047205(n+1))`
-/

namespace A090168.P13719603863270149663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A047205 (n + 1)).toNat

end

end A090168.P13719603863270149663

namespace A090168

/-- `A004526(A047205(n+1))` -/
def P13719603863270149663.Spec : Prop :=
  ∀ n, P13719603863270149663.a n = A090168 n

end A090168

/-! ## A090168.P12407858092282222864

`A004526(A008611(2*n+1)+n)`
-/

namespace A090168.P12407858092282222864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008611 (2 * n + 1) + (n : ℤ)).toNat

end

end A090168.P12407858092282222864

namespace A090168

/-- `A004526(A008611(2*n+1)+n)` -/
def P12407858092282222864.Spec : Prop :=
  ∀ n, P12407858092282222864.a n = A090168 n

end A090168

/-! ## A090168.P3796803608118878533

`A002264(A047221(n+1))`
-/

namespace A090168.P3796803608118878533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A047221 (n + 1)).toNat

end

end A090168.P3796803608118878533

namespace A090168

/-- `A002264(A047221(n+1))` -/
def P3796803608118878533.Spec : Prop :=
  ∀ n, P3796803608118878533.a n = A090168 n

end A090168

/-! ## A090168.P5843062192060096837

`A002264(A071047(2*n+1)-2)`
-/

namespace A090168.P5843062192060096837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A071047 (2 * n + 1) - 2).toNat

end

end A090168.P5843062192060096837

namespace A090168

/-- `A002264(A071047(2*n+1)-2)` -/
def P5843062192060096837.Spec : Prop :=
  ∀ n, P5843062192060096837.a n = A090168 n

end A090168

/-!
# A090169: a(n) = floor( 3*n/2 ) + floor( 2*n/3 ).

The programs for A090169, the canonical program `A090169.P2225124337015601672` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090169 has offset 0).

The definition of A090169 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3*n/2)+floor(2*n/3)` (program `A090169.P2225124337015601672`, by `A090169.P2225124337015601672.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090169.P2225124337015601672

`floor(3*n/2)+floor(2*n/3)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090169

/-- `floor(3*n/2)+floor(2*n/3)` -/
def P2225124337015601672.Spec : Prop :=
  ∀ n, P2225124337015601672.a n = A090169 n

theorem P2225124337015601672.correct : P2225124337015601672.Spec := by
  intro n
  simp only [A090169]

end A090169

/-! ## A090169.P8519407029471911378

`floor(∑[floor(a(n-2))]/3)` with `a(0)=0, a(1)=5, a(2)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A090169.P8519407029471911378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 8] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A090169.P8519407029471911378

namespace A090169

/-- `floor(∑[floor(a(n-2))]/3)` -/
def P8519407029471911378.Spec : Prop :=
  ∀ n, P8519407029471911378.a n = A090169 n

end A090169

/-! ## A090169.P10186125994746795222

`∑[(a(n-2)+n)%3+1]` with `a(0)=0, a(1)=1`
-/

namespace A090169.P10186125994746795222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (f1 (n - 2) + n) % 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090169.P10186125994746795222

namespace A090169

/-- `∑[(a(n-2)+n)%3+1]` -/
def P10186125994746795222.Spec : Prop :=
  ∀ n, (P10186125994746795222.a n : ℤ) = A090169 n

end A090169

/-! ## A090169.P3873124114928374535

`∑[(∑[∑[char[2*n]]]-2)%3+1]`
-/

namespace A090169.P3873124114928374535
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2) 3 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090169.P3873124114928374535

namespace A090169

/-- `∑[(∑[∑[char[2*n]]]-2)%3+1]` -/
def P3873124114928374535.Spec : Prop :=
  ∀ n, P3873124114928374535.a n = A090169 n

end A090169

/-! ## A090169.P17360127649342400538

`∑[a(n-3)+(-1)^n]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A090169.P17360127649342400538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 2] fun n f1 =>
  f1 (n - 3) + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090169.P17360127649342400538

namespace A090169

/-- `∑[a(n-3)+(-1)^n]` -/
def P17360127649342400538.Spec : Prop :=
  ∀ n, P17360127649342400538.a n = A090169 n

end A090169

/-! ## A090169.P6359037790097289479

`A187323(2*n)`
-/

namespace A090169.P6359037790097289479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187323 (2 * n)

end

end A090169.P6359037790097289479

namespace A090169

/-- `A187323(2*n)` -/
def P6359037790097289479.Spec : Prop :=
  ∀ n, P6359037790097289479.a n = A090169 n

end A090169

/-! ## A090169.P16017094320097654310

`A057365(A047355(n+1))`
-/

namespace A090169.P16017094320097654310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057365 (A047355 (n + 1)).toNat

end

end A090169.P16017094320097654310

namespace A090169

/-- `A057365(A047355(n+1))` -/
def P16017094320097654310.Spec : Prop :=
  ∀ n, P16017094320097654310.a n = A090169 n

end A090169

/-! ## A090169.P17353205815090199433

`A057365(A057353(2*n)+2*n)`
-/

namespace A090169.P17353205815090199433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057365 (A057353 (2 * n) + (2 * n : ℤ)).toNat

end

end A090169.P17353205815090199433

namespace A090169

/-- `A057365(A057353(2*n)+2*n)` -/
def P17353205815090199433.Spec : Prop :=
  ∀ n, P17353205815090199433.a n = A090169 n

end A090169

/-!
# A090170: a(n) = floor(e^(n*g)), where g = Euler's Gamma constant, 0.57721566490153...

The programs for A090170, the canonical program `A090170.P12243963089805449193` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090170 has offset 0).

The definition of A090170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090170.P12243963089805449193

`floor(exp(n)^γ)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090170

/-- `floor(exp(n)^γ)` -/
def P12243963089805449193.Spec : Prop :=
  ∀ n, P12243963089805449193.a n = A090170 n

theorem P12243963089805449193.correct : P12243963089805449193.Spec := by
  intro n
  simp only [A090170]

end A090170

/-! ## A090170.P6773364811351451066

`A376635(A018169(n+1))`
-/

namespace A090170.P6773364811351451066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376635 (A018169 (n + 1)).toNat

end

end A090170.P6773364811351451066

namespace A090170

/-- `A376635(A018169(n+1))` -/
def P6773364811351451066.Spec : Prop :=
  ∀ n, P6773364811351451066.a n = A090170 n

end A090170

/-! ## A090170.P3856938766522144776

`A035936(A275863(n))`
-/

namespace A090170.P3856938766522144776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 (A275863 n).toNat

end

end A090170.P3856938766522144776

namespace A090170

/-- `A035936(A275863(n))` -/
def P3856938766522144776.Spec : Prop :=
  ∀ n, P3856938766522144776.a n = A090170 n

end A090170

/-!
# A090171: Triangle read by rows, related to Pascal's triangle read mod 2, starting with 0, 1, 0.

The programs for A090171, there is no canonical definition to state claims against.
-/

/-! ## A090171.P4620324557417838916

`∑[A228815(n)]%2`
-/

namespace A090171.P4620324557417838916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A090171.P4620324557417838916

/-! ## A090171.P17203222781824390247

`A023532(n*A090174(A083920(n)))`
-/

namespace A090171.P17203222781824390247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 ((n : ℤ) * A090174 (A083920 n).toNat).toNat

end

end A090171.P17203222781824390247

/-! ## A090171.P325846383240490538

`A090173(n+1)`
-/

namespace A090171.P325846383240490538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090173 (n + 1)

end

end A090171.P325846383240490538

/-! ## A090171.P1282238888416952568

`∑[Δ[A090173(n)]^3]`
-/

namespace A090171.P1282238888416952568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090173 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090171.P1282238888416952568

/-! ## A090171.P13871967022742771926

`∑[A007318(n)*A011972(n+1)]%2`
-/

namespace A090171.P13871967022742771926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A011972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A090171.P13871967022742771926

/-! ## A090171.P8044329895369744459

`A090172(A185869(n+1)-1)`
-/

namespace A090171.P8044329895369744459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090172 (A185869 (n + 1) - 1).toNat

end

end A090171.P8044329895369744459

/-! ## A090171.P11057024289687369571

`A090172(A185869(n+2))`
-/

namespace A090171.P11057024289687369571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090172 (A185869 (n + 2)).toNat

end

end A090171.P11057024289687369571

/-!
# A090172: Triangle read by rows, related to Pascal's triangle read mod 2.

The programs for A090172, there is no canonical definition to state claims against.
-/

/-! ## A090172.P8488524227162452276

`A091562(n)%2`
-/

namespace A090172.P8488524227162452276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091562 n) 2

end

end A090172.P8488524227162452276

/-! ## A090172.P1455274105689435599

`A209167(n+1)%2`
-/

namespace A090172.P1455274105689435599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209167 (n + 1)) 2

end

end A090172.P1455274105689435599

/-! ## A090172.P12380138064432756979

`and(A060576(n), A091562(n))`
-/

namespace A090172.P12380138064432756979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A091562 n)

end

end A090172.P12380138064432756979

/-! ## A090172.P14214803753231685734

`and(A091562(n), A158388(n))`
-/

namespace A090172.P14214803753231685734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091562 n) (A158388 n)

end

end A090172.P14214803753231685734

/-! ## A090172.P8029735362920675283

`and(A091562(n), A179184(n))`
-/

namespace A090172.P8029735362920675283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091562 n) (A179184 n)

end

end A090172.P8029735362920675283

/-! ## A090172.P8992389531602414042

`and(((-1)^A000201(n+1))², A091562(n))`
-/

namespace A090172.P8992389531602414042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (((-1 : ℚ) ^ (A000201 (n + 1) : ℤ)) ^ 2)) (A091562 n)

end

end A090172.P8992389531602414042

/-! ## A090172.P8393165406686905498

`and(1, (A076339(n+1)*A091562(n))²)`
-/

namespace A090172.P8393165406686905498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A076339 (n + 1) * A091562 n) ^ 2)

end

end A090172.P8393165406686905498

/-! ## A090172.P2343224103071470490

`and(A176895(A328579(12*n+5))-1, A091562(n))`
-/

namespace A090172.P2343224103071470490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176895 (A328579 (12 * n + 5)).toNat - 1) (A091562 n)

end

end A090172.P2343224103071470490

/-! ## A090172.P9702823481085039771

`and(∑{e}[A046120(n+1), #], A091562(n))`
-/

namespace A090172.P9702823481085039771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) (A091562 n)

end

end A090172.P9702823481085039771

/-! ## A090172.P12165289592403737629

`A091533(A185868(n+1)-1)%2`
-/

namespace A090172.P12165289592403737629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091533 (A185868 (n + 1) - 1).toNat) 2

end

end A090172.P12165289592403737629

/-! ## A090172.P8458325144813327741

`A090173(A185869(n+1))`
-/

namespace A090172.P8458325144813327741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090173 (A185869 (n + 1)).toNat

end

end A090172.P8458325144813327741

/-! ## A090172.P18336698372771953691

`and(A091562(n), A176410(n))`
-/

namespace A090172.P18336698372771953691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091562 n) (A176410 n)

end

end A090172.P18336698372771953691

/-! ## A090172.P8425957197973772850

`and(A001222(A091567(n+1)), A091562(n))`
-/

namespace A090172.P8425957197973772850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A091567 (n + 1)).toNat) (A091562 n)

end

end A090172.P8425957197973772850

/-! ## A090172.P5907838788634124334

`and(A077860(n), A091562(n))`
-/

namespace A090172.P5907838788634124334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077860 n) (A091562 n)

end

end A090172.P5907838788634124334

/-! ## A090172.P9551415624031608057

`and(A078621(n+1), A091562(n))`
-/

namespace A090172.P9551415624031608057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078621 (n + 1)) (A091562 n)

end

end A090172.P9551415624031608057

/-! ## A090172.P12393017345418823779

`and(A077924(n), A091562(n))`
-/

namespace A090172.P12393017345418823779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077924 n) (A091562 n)

end

end A090172.P12393017345418823779

/-! ## A090172.P4218647013782941631

`and(A077853(n), A091562(n))`
-/

namespace A090172.P4218647013782941631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077853 n) (A091562 n)

end

end A090172.P4218647013782941631

/-! ## A090172.P16917943715672964552

`and(A064386(n+1), A091562(n))`
-/

namespace A090172.P16917943715672964552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064386 (n + 1)) (A091562 n)

end

end A090172.P16917943715672964552

/-! ## A090172.P8780122898842896472

`and(A077891(n), A091562(n))`
-/

namespace A090172.P8780122898842896472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077891 n) (A091562 n)

end

end A090172.P8780122898842896472

/-! ## A090172.P8751724321660182565

`and(A077881(n), A091562(n))`
-/

namespace A090172.P8751724321660182565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077881 n) (A091562 n)

end

end A090172.P8751724321660182565

/-!
# A090173: Triangle read by rows, related to Pascal's triangle read mod 2, starting with 0, 0, 1.

The programs for A090173, there is no canonical definition to state claims against.
-/

/-! ## A090173.P11459950233959549674

`A090171((n-1)%(n+1))`
-/

namespace A090173.P11459950233959549674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090171 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A090173.P11459950233959549674

/-! ## A090173.P4183764498014950767

`A090171(A004273(n)-n)`
-/

namespace A090173.P4183764498014950767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090171 (A004273 n - (n : ℤ)).toNat

end

end A090173.P4183764498014950767

/-! ## A090173.P7612192608968495608

`A090171(n-A057427(n))`
-/

namespace A090173.P7612192608968495608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090171 ((n : ℤ) - A057427 n).toNat

end

end A090173.P7612192608968495608

/-! ## A090173.P16128887162561460167

`A090171(A000007(n)-1+n)`
-/

namespace A090173.P16128887162561460167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090171 (A000007 n - 1 + (n : ℤ)).toNat

end

end A090173.P16128887162561460167

/-! ## A090173.P3654362294074183552

`A090171(n-(1-A000007(n)))`
-/

namespace A090173.P3654362294074183552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090171 ((n : ℤ) - (1 - A000007 n)).toNat

end

end A090173.P3654362294074183552

/-! ## A090173.P412763300337526785

`A090171(n-A019432(2*n))`
-/

namespace A090173.P412763300337526785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090171 ((n : ℤ) - A019432 (2 * n)).toNat

end

end A090173.P412763300337526785

/-! ## A090173.P5984026254085753267

`char[eq[1, A090171(n)]+1]`
-/

namespace A090173.P5984026254085753267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090171 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A090173.P5984026254085753267

/-! ## A090173.P16929366487083540550

`A090171(A289207(n+1))`
-/

namespace A090173.P16929366487083540550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090171 (A289207 (n + 1)).toNat

end

end A090173.P16929366487083540550

/-! ## A090173.P12890680495516908059

`A090171(A061579(n))`
-/

namespace A090173.P12890680495516908059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090171 (A061579 n).toNat

end

end A090173.P12890680495516908059

/-! ## A090173.P6015973426925329125

`A090171(A114327(n)+n)`
-/

namespace A090173.P6015973426925329125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090171 (A114327 n + (n : ℤ)).toNat

end

end A090173.P6015973426925329125

/-! ## A090173.P1577931917352469842

`A090171(∑[A198954(n)-1])`
-/

namespace A090173.P1577931917352469842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090171 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A090173.P1577931917352469842

/-! ## A090173.P10946778265271780867

`A090171(A038722(n+1)-1)`
-/

namespace A090173.P10946778265271780867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090171 (A038722 (n + 1) - 1).toNat

end

end A090173.P10946778265271780867

/-! ## A090173.P17192038734061428673

`A090171(A049472(A001951(n)))`
-/

namespace A090173.P17192038734061428673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090171 (A049472 (A001951 n).toNat).toNat

end

end A090173.P17192038734061428673

/-! ## A090173.P12148706616728085538

`A090171(A004524(A004273(n)))`
-/

namespace A090173.P12148706616728085538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090171 (A004524 (A004273 n).toNat).toNat

end

end A090173.P12148706616728085538

/-! ## A090173.P7204898427168270100

`A090171(A004526(A004275(n)))`
-/

namespace A090173.P7204898427168270100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090171 (A004526 (A004275 n).toNat).toNat

end

end A090173.P7204898427168270100

/-! ## A090173.P3263358131771610330

`A090171(A289207(2*n)/2)`
-/

namespace A090173.P3263358131771610330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090171 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

end

end A090173.P3263358131771610330

/-! ## A090173.P8932877999715152730

`A090172(A185869(n+1))`
-/

namespace A090173.P8932877999715152730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090172 (A185869 (n + 1)).toNat

end

end A090173.P8932877999715152730

/-! ## A090173.P4054532594076332260

`A090171(A067138(A000124(n)))`
-/

namespace A090173.P4054532594076332260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090171 (A067138 (A000124 n).toNat).toNat

end

end A090173.P4054532594076332260

/-!
# A090174: Triangle read by rows, related to Pascal's triangle read mod 2.

The programs for A090174, there is no canonical definition to state claims against.
-/

/-! ## A090174.P18100176405371843000

`A091533(n)%2`
-/

namespace A090174.P18100176405371843000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091533 n) 2

end

end A090174.P18100176405371843000

/-! ## A090174.P12560162585733532345

`A123603(n)%2`
-/

namespace A090174.P12560162585733532345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123603 n) 2

end

end A090174.P12560162585733532345

/-! ## A090174.P4538660149049263159

`A000007(val(A091533(n), 2))`
-/

namespace A090174.P4538660149049263159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (SequenceMachineLib.valuation (A091533 n).toNat 2)

end

end A090174.P4538660149049263159

/-! ## A090174.P13113858188802302634

`A091536(val(A091533(n), 2))`
-/

namespace A090174.P13113858188802302634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091536 (SequenceMachineLib.valuation (A091533 n).toNat 2)

end

end A090174.P13113858188802302634

/-! ## A090174.P15055520260526780706

`A000038(val(A091533(n), 2))/2`
-/

namespace A090174.P15055520260526780706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (SequenceMachineLib.valuation (A091533 n).toNat 2) : ℚ) / 2

end

end A090174.P15055520260526780706

/-! ## A090174.P12169392986414856808

`and(1, A001316(val(A091533(n), 2)))`
-/

namespace A090174.P12169392986414856808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001316 (SequenceMachineLib.valuation (A091533 n).toNat 2))

end

end A090174.P12169392986414856808

/-! ## A090174.P9949354605731231656

`and(A000041(a(n-1)), A091533(n))` with `a(0)=1`
-/

namespace A090174.P9949354605731231656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (A000041 (a (n - 1)).toNat) (A091533 n)

end

end A090174.P9949354605731231656

/-! ## A090174.P18035416394511086007

`and(A000108(a(n-1)), A091533(n))` with `a(0)=1`
-/

namespace A090174.P18035416394511086007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (A000108 (a (n - 1)).toNat) (A091533 n)

end

end A090174.P18035416394511086007

/-! ## A090174.P10117735027890718987

`and(A007318(a(n-1)), A091533(n))` with `a(0)=1`
-/

namespace A090174.P10117735027890718987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (A007318 (a (n - 1)).toNat) (A091533 n)

end

end A090174.P10117735027890718987

/-! ## A090174.P12141150236888302600

`and(val(A005117(n+2), 3)!, A091533(n))`
-/

namespace A090174.P12141150236888302600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial (SequenceMachineLib.valuation (A005117 (n + 2)).toNat 3) : ℤ) (A091533 n)

end

end A090174.P12141150236888302600

/-! ## A090174.P11706528722730020069

`and(A091533(n), A135517(A000010(n+1)))`
-/

namespace A090174.P11706528722730020069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091533 n) (A135517 (A000010 (n + 1)).toNat)

end

end A090174.P11706528722730020069

/-! ## A090174.P4274306538400332675

`A090171(A007401(n+1))`
-/

namespace A090174.P4274306538400332675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090171 (A007401 (n + 1)).toNat

end

end A090174.P4274306538400332675

/-! ## A090174.P16961987135778014919

`A090173(A014132(n+1))`
-/

namespace A090174.P16961987135778014919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090173 (A014132 (n + 1)).toNat

end

end A090174.P16961987135778014919

/-! ## A090174.P8567964699794305453

`A000035(gcd(2*n, A091533(n)))`
-/

namespace A090174.P8567964699794305453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.gcd (2 * n : ℤ) (A091533 n))

end

end A090174.P8567964699794305453

/-! ## A090174.P10113898899517227493

`and(A000034(2*n), A091533(n))`
-/

namespace A090174.P10113898899517227493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000034 (2 * n)) (A091533 n)

end

end A090174.P10113898899517227493

/-! ## A090174.P10739046817199015968

`and(A091533(n), A135517(A004277(n+1)))`
-/

namespace A090174.P10739046817199015968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091533 n) (A135517 (A004277 (n + 1)).toNat)

end

end A090174.P10739046817199015968

/-! ## A090174.P2878539645060534963

`A090173(A185871(n+1)-1)`
-/

namespace A090174.P2878539645060534963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090173 (A185871 (n + 1) - 1).toNat

end

end A090174.P2878539645060534963

/-! ## A090174.P18058234950825171042

`A090173(A185871(n+1))`
-/

namespace A090174.P18058234950825171042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090173 (A185871 (n + 1)).toNat

end

end A090174.P18058234950825171042

/-! ## A090174.P15085243474974446844

`and(A014963(10*(n+1)), A091533(n))`
-/

namespace A090174.P15085243474974446844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014963 (10 * (n + 1))) (A091533 n)

end

end A090174.P15085243474974446844

/-! ## A090174.P4664777779007060255

`and(A001222(A091567(n+1)), A091533(n))`
-/

namespace A090174.P4664777779007060255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A091567 (n + 1)).toNat) (A091533 n)

end

end A090174.P4664777779007060255

/-!
# A090176: Expansion of (1+x^9)/((1-x^4)*(1-x^6)*(1-x^12)).

The programs for A090176, the canonical program `A090176.P7978315847764977524` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090176 has offset 0).

The definition of A090176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090176.P7978315847764977524

`C(Δ[ceil(n²/24)]+1, 2)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090176

/-- `C(Δ[ceil(n²/24)]+1, 2)` -/
def P7978315847764977524.Spec : Prop :=
  ∀ n, (P7978315847764977524.a n : ℤ) = A090176 n

theorem P7978315847764977524.correct : P7978315847764977524.Spec := by
  intro n
  simp only [A090176]

end A090176

/-! ## A090176.P15992903715849185504

`A000217(Δ[ceil(n²/24)])`
-/

namespace A090176.P15992903715849185504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 24⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (n + 1) - f1 n).toNat

end

end A090176.P15992903715849185504

namespace A090176

/-- `A000217(Δ[ceil(n²/24)])` -/
def P15992903715849185504.Spec : Prop :=
  ∀ n, P15992903715849185504.a n = A090176 n

end A090176

/-! ## A090176.P7955050481508605771

`A000124(Δ[ceil(n²/24)])-1`
-/

namespace A090176.P7955050481508605771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 24⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (f1 (n + 1) - f1 n).toNat - 1

end

end A090176.P7955050481508605771

namespace A090176

/-- `A000124(Δ[ceil(n²/24)])-1` -/
def P7955050481508605771.Spec : Prop :=
  ∀ n, P7955050481508605771.a n = A090176 n

end A090176

/-! ## A090176.P9609418019952710248

`A161680(A008647(n)+1)`
-/

namespace A090176.P9609418019952710248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A008647 n + 1).toNat

end

end A090176.P9609418019952710248

namespace A090176

/-- `A161680(A008647(n)+1)` -/
def P9609418019952710248.Spec : Prop :=
  ∀ n, P9609418019952710248.a n = A090176 n

end A090176

/-! ## A090176.P12032960557012782344

`∑{d}[A008647(n), A007438(#)]`
-/

namespace A090176.P12032960557012782344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007438 d

end

end A090176.P12032960557012782344

namespace A090176

/-- `∑{d}[A008647(n), A007438(#)]` -/
def P12032960557012782344.Spec : Prop :=
  ∀ n, P12032960557012782344.a n = A090176 n

end A090176

/-! ## A090176.P13085858268219395031

`A004525(A008647(n)+A008647(n)²)`
-/

namespace A090176.P13085858268219395031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A008647 n + A008647 n ^ 2).toNat

end

end A090176.P13085858268219395031

namespace A090176

/-- `A004525(A008647(n)+A008647(n)²)` -/
def P13085858268219395031.Spec : Prop :=
  ∀ n, P13085858268219395031.a n = A090176 n

end A090176

/-! ## A090176.P6498897740269148445

`A004526(A008647(n)+A008647(n)²)`
-/

namespace A090176.P6498897740269148445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008647 n + A008647 n ^ 2).toNat

end

end A090176.P6498897740269148445

namespace A090176

/-- `A004526(A008647(n)+A008647(n)²)` -/
def P6498897740269148445.Spec : Prop :=
  ∀ n, P6498897740269148445.a n = A090176 n

end A090176

/-! ## A090176.P15221674818263530737

`A025480(A008647(n)+A008647(n)²)`
-/

namespace A090176.P15221674818263530737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A008647 n + A008647 n ^ 2).toNat

end

end A090176.P15221674818263530737

namespace A090176

/-- `A025480(A008647(n)+A008647(n)²)` -/
def P15221674818263530737.Spec : Prop :=
  ∀ n, P15221674818263530737.a n = A090176 n

end A090176

/-! ## A090176.P8165914598882595165

`A004525((A008647(n)+1)*A008647(n))`
-/

namespace A090176.P8165914598882595165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((A008647 n + 1) * A008647 n).toNat

end

end A090176.P8165914598882595165

namespace A090176

/-- `A004525((A008647(n)+1)*A008647(n))` -/
def P8165914598882595165.Spec : Prop :=
  ∀ n, P8165914598882595165.a n = A090176 n

end A090176

/-! ## A090176.P10124771043620802692

`A004526((A008647(n)+1)*A008647(n))`
-/

namespace A090176.P10124771043620802692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((A008647 n + 1) * A008647 n).toNat

end

end A090176.P10124771043620802692

namespace A090176

/-- `A004526((A008647(n)+1)*A008647(n))` -/
def P10124771043620802692.Spec : Prop :=
  ∀ n, P10124771043620802692.a n = A090176 n

end A090176

/-! ## A090176.P15739773066420581655

`A025480((A008647(n)+1)*A008647(n))`
-/

namespace A090176.P15739773066420581655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 ((A008647 n + 1) * A008647 n).toNat

end

end A090176.P15739773066420581655

namespace A090176

/-- `A025480((A008647(n)+1)*A008647(n))` -/
def P15739773066420581655.Spec : Prop :=
  ∀ n, P15739773066420581655.a n = A090176 n

end A090176

/-! ## A090176.P10175633893461125564

`A066446(2^A008647(n))`
-/

namespace A090176.P10175633893461125564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066446 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A008647 n : ℤ))).toNat

end

end A090176.P10175633893461125564

namespace A090176

/-- `A066446(2^A008647(n))` -/
def P10175633893461125564.Spec : Prop :=
  ∀ n, P10175633893461125564.a n = A090176 n

end A090176

/-!
# A090178: a(1) = 2; for n > 1, a(n) = n + prime(n-1).

The programs for A090178, the canonical program `A090178.P3922482968985292774` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090178 has offset 1).

The definition of A090178 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A090178.P3922482968985292774

`n+1+A008578(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A090178

/-- `n+1+A008578(n+1)` -/
def P3922482968985292774.Spec : Prop :=
  ∀ n, P3922482968985292774.a n = A090178 (n + 1)

theorem P3922482968985292774.correct : P3922482968985292774.Spec := by
  intro n
  simp only [A090178, Nat.add_sub_cancel]

end A090178

/-! ## A090178.P2252615346164895312

`A028815(n)+n`
-/

namespace A090178.P2252615346164895312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n + (n : ℤ)

end

end A090178.P2252615346164895312

namespace A090178

/-- `A028815(n)+n` -/
def P2252615346164895312.Spec : Prop :=
  ∀ n, P2252615346164895312.a n = A090178 (n + 1)

end A090178

/-! ## A090178.P410380997197838594

`A167136(n+1)+1`
-/

namespace A090178.P410380997197838594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167136 (n + 1) + 1

end

end A090178.P410380997197838594

namespace A090178

/-- `A167136(n+1)+1` -/
def P410380997197838594.Spec : Prop :=
  ∀ n, P410380997197838594.a n = A090178 (n + 1)

end A090178

/-! ## A090178.P17519492214173429552

`A230846(n)+a(n-1)` with `a(0)=2`
-/

namespace A090178.P17519492214173429552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A230846 n + a (n - 1)

end

end A090178.P17519492214173429552

namespace A090178

/-- `A230846(n)+a(n-1)` -/
def P17519492214173429552.Spec : Prop :=
  ∀ n, P17519492214173429552.a n = A090178 (n + 1)

end A090178

/-! ## A090178.P5950621714487819918

`sqrt(A280076(n+1))+1+n`
-/

namespace A090178.P5950621714487819918
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A280076 (n + 1) : ℝ) + 1 + (n : ℝ)

end

end A090178.P5950621714487819918

namespace A090178

/-- `sqrt(A280076(n+1))+1+n` -/
def P5950621714487819918.Spec : Prop :=
  ∀ n, P5950621714487819918.a n = (A090178 (n + 1) : ℝ)

end A090178

/-! ## A090178.P3347006742968409272

`record[A259153(n+1)+1]+n`
-/

namespace A090178.P3347006742968409272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A090178.P3347006742968409272

namespace A090178

/-- `record[A259153(n+1)+1]+n` -/
def P3347006742968409272.Spec : Prop :=
  ∀ n, P3347006742968409272.a n = A090178 (n + 1)

end A090178

/-! ## A090178.P8264445946502248242

`A162177(n+1)+2*(n+1)`
-/

namespace A090178.P8264445946502248242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162177 (n + 1) + (2 * (n + 1) : ℤ)

end

end A090178.P8264445946502248242

namespace A090178

/-- `A162177(n+1)+2*(n+1)` -/
def P8264445946502248242.Spec : Prop :=
  ∀ n, P8264445946502248242.a n = A090178 (n + 1)

end A090178

/-! ## A090178.P9194997154346200239

`A001747(n+1)/2+n+1`
-/

namespace A090178.P9194997154346200239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (n + 1) : ℚ) / 2 + (n + 1 : ℚ)

end

end A090178.P9194997154346200239

namespace A090178

/-- `A001747(n+1)/2+n+1` -/
def P9194997154346200239.Spec : Prop :=
  ∀ n, P9194997154346200239.a n = (A090178 (n + 1) : ℚ)

end A090178

/-! ## A090178.P12797410527978467113

`A112773(n+1)/3+n+1`
-/

namespace A090178.P12797410527978467113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112773 (n + 1) : ℚ) / 3 + (n + 1 : ℚ)

end

end A090178.P12797410527978467113

namespace A090178

/-- `A112773(n+1)/3+n+1` -/
def P12797410527978467113.Spec : Prop :=
  ∀ n, P12797410527978467113.a n = (A090178 (n + 1) : ℚ)

end A090178

/-! ## A090178.P12881740330681539255

`A164931(n+1)/(n+1)+n+1`
-/

namespace A090178.P12881740330681539255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164931 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)

end

end A090178.P12881740330681539255

namespace A090178

/-- `A164931(n+1)/(n+1)+n+1` -/
def P12881740330681539255.Spec : Prop :=
  ∀ n, P12881740330681539255.a n = (A090178 (n + 1) : ℚ)

end A090178

/-! ## A090178.P13820832381306663161

`A000040(n%a(n-1))+n+1` with `a(0)=2`
-/

namespace A090178.P13820832381306663161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (Int.tmod (n : ℤ) (a (n - 1))).toNat + (n + 1 : ℤ)

end

end A090178.P13820832381306663161

namespace A090178

/-- `A000040(n%a(n-1))+n+1` -/
def P13820832381306663161.Spec : Prop :=
  ∀ n, P13820832381306663161.a n = A090178 (n + 1)

end A090178

/-! ## A090178.P6993265512901214601

`Δ[a(n-1)+A000040(n-1)+n]` with `a(0)=0, a(1)=2`
-/

namespace A090178.P6993265512901214601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + (A000040 (n - 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090178.P6993265512901214601

namespace A090178

/-- `Δ[a(n-1)+A000040(n-1)+n]` -/
def P6993265512901214601.Spec : Prop :=
  ∀ n, P6993265512901214601.a n = A090178 (n + 1)

end A090178

/-! ## A090178.P6861534277328978389

`A000040(gcd(n, n*a(n-1)))+n+1` with `a(0)=2`
-/

namespace A090178.P6861534277328978389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (Int.gcd (n : ℤ) ((n : ℤ) * a (n - 1))) + (n + 1 : ℤ)

end

end A090178.P6861534277328978389

namespace A090178

/-- `A000040(gcd(n, n*a(n-1)))+n+1` -/
def P6861534277328978389.Spec : Prop :=
  ∀ n, P6861534277328978389.a n = A090178 (n + 1)

end A090178

/-! ## A090178.P17053322017276766157

`n+1+A000040(n)+C(n, a(n-1))` with `a(0)=2`
-/

namespace A090178.P17053322017276766157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n + 1 : ℤ) + (A000040 n + (Nat.choose n (a (n - 1)).toNat : ℤ))

end

end A090178.P17053322017276766157

namespace A090178

/-- `n+1+A000040(n)+C(n, a(n-1))` -/
def P17053322017276766157.Spec : Prop :=
  ∀ n, P17053322017276766157.a n = A090178 (n + 1)

end A090178

/-! ## A090178.P14174472601405050788

`A093515(A004280(n+1))+n`
-/

namespace A090178.P14174472601405050788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (A004280 (n + 1)).toNat + (n : ℤ)

end

end A090178.P14174472601405050788

namespace A090178

/-- `A093515(A004280(n+1))+n` -/
def P14174472601405050788.Spec : Prop :=
  ∀ n, P14174472601405050788.a n = A090178 (n + 1)

end A090178

/-! ## A090178.P4171542859498013543

`A082454(n)+A065164(n+1)`
-/

namespace A090178.P4171542859498013543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082454 n + A065164 (n + 1)

end

end A090178.P4171542859498013543

namespace A090178

/-- `A082454(n)+A065164(n+1)` -/
def P4171542859498013543.Spec : Prop :=
  ∀ n, P4171542859498013543.a n = A090178 (n + 1)

end A090178

/-! ## A090178.P6322410746174246024

`A014688(n+1)-A075526(n)`
-/

namespace A090178.P6322410746174246024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - A075526 n

end

end A090178.P6322410746174246024

namespace A090178

/-- `A014688(n+1)-A075526(n)` -/
def P6322410746174246024.Spec : Prop :=
  ∀ n, P6322410746174246024.a n = A090178 (n + 1)

end A090178

/-! ## A090178.P7431395143218431595

`A182986(n+1)+A028310(n)+1`
-/

namespace A090178.P7431395143218431595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) + (A028310 n + 1)

end

end A090178.P7431395143218431595

namespace A090178

/-- `A182986(n+1)+A028310(n)+1` -/
def P7431395143218431595.Spec : Prop :=
  ∀ n, P7431395143218431595.a n = A090178 (n + 1)

end A090178

/-! ## A090178.P63589882536394515

`A173137(n+2)-1`
-/

namespace A090178.P63589882536394515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173137 (n + 2) - 1

end

end A090178.P63589882536394515

namespace A090178

/-- `A173137(n+2)-1` -/
def P63589882536394515.Spec : Prop :=
  ∀ n, P63589882536394515.a n = A090178 (n + 1)

end A090178

/-! ## A090178.P6009862891997459172

`n+1+A158611(n+2)`
-/

namespace A090178.P6009862891997459172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A158611 (n + 2)

end

end A090178.P6009862891997459172

namespace A090178

/-- `n+1+A158611(n+2)` -/
def P6009862891997459172.Spec : Prop :=
  ∀ n, P6009862891997459172.a n = A090178 (n + 1)

end A090178

/-!
# A090179: Ratio of numerator(Bernoulli(2*n)/(2*n)) to numerator(Bernoulli(2*n)/(2*n*(2*n+1))) for n's for which they are different.

The programs for A090179, there is no canonical definition to state claims against.
-/

/-! ## A090179.P15693877785876311419

`A090496(A136462(n²))`
-/

namespace A090179.P15693877785876311419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090496 (A136462 (n ^ 2)).toNat

end

end A090179.P15693877785876311419

/-!
# A090180: Primes p = prime(n) such that p + sum-of-digits(p) +- 1 = prime(n+1).

The programs for A090180, there is no canonical definition to state claims against.
-/

/-! ## A090180.P7570378507409306182

`p?[∑[A046564(A256136(n))]]`
-/

namespace A090180.P7570378507409306182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (A256136 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090180.P7570378507409306182

/-! ## A090180.P15885669753806778240

`∑{p}[A380956(A352134(n+1)), #]`
-/

namespace A090180.P15885669753806778240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380956 (A352134 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A090180.P15885669753806778240

/-!
# A090181: Triangle of Narayana (A001263) with 0 <= k <= n, read by rows.

The programs for A090181, the canonical program `A090181.P13882170627177889434` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090181 has offset 0).

The definition of A090181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090181.P13882170627177889434

`A131198(abs(2-n)+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A090181

/-- `A131198(abs(2-n)+1)` -/
def P13882170627177889434.Spec : Prop :=
  ∀ n, P13882170627177889434.a n = A090181 n

theorem P13882170627177889434.correct : P13882170627177889434.Spec := by
  intro n
  simp only [A090181]

end A090181

/-! ## A090181.P7602165985138870626

`gcd(A000038(n), A131198(A061579(n)))`
-/

namespace A090181.P7602165985138870626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A131198 (A061579 n).toNat)

end

end A090181.P7602165985138870626

namespace A090181

/-- `gcd(A000038(n), A131198(A061579(n)))` -/
def P7602165985138870626.Spec : Prop :=
  ∀ n, (P7602165985138870626.a n : ℤ) = A090181 n

end A090181

/-! ## A090181.P5348657050814714627

`or(A000007(n), A131198(A061579(n)))`
-/

namespace A090181.P5348657050814714627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A131198 (A061579 n).toNat)

end

end A090181.P5348657050814714627

namespace A090181

/-- `or(A000007(n), A131198(A061579(n)))` -/
def P5348657050814714627.Spec : Prop :=
  ∀ n, P5348657050814714627.a n = A090181 n

end A090181

/-! ## A090181.P15418915380346563532

`A001263(n+1)/A088617(n)*A086810(n)`
-/

namespace A090181.P15418915380346563532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A088617 n : ℚ) * (A086810 n : ℚ)

end

end A090181.P15418915380346563532

namespace A090181

/-- `A001263(n+1)/A088617(n)*A086810(n)` -/
def P15418915380346563532.Spec : Prop :=
  ∀ n, P15418915380346563532.a n = (A090181 n : ℚ)

end A090181

/-! ## A090181.P5030160362690578455

`A271703(n)/A004736(n+1)!`
-/

namespace A090181.P5030160362690578455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271703 n : ℚ) / (Nat.factorial (A004736 (n + 1)).toNat : ℚ)

end

end A090181.P5030160362690578455

namespace A090181

/-- `A271703(n)/A004736(n+1)!` -/
def P5030160362690578455.Spec : Prop :=
  ∀ n, P5030160362690578455.a n = (A090181 n : ℚ)

end A090181

/-! ## A090181.P5290465021070900271

`A271703(n)/A166350(A038722(n+1))`
-/

namespace A090181.P5290465021070900271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271703 n : ℚ) / (A166350 (A038722 (n + 1)).toNat : ℚ)

end

end A090181.P5290465021070900271

namespace A090181

/-- `A271703(n)/A166350(A038722(n+1))` -/
def P5290465021070900271.Spec : Prop :=
  ∀ n, P5290465021070900271.a n = (A090181 n : ℚ)

end A090181

/-! ## A090181.P7941619336950280087

`A001263(n+1)/A105278(n+1)*A271703(n)`
-/

namespace A090181.P7941619336950280087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A105278 (n + 1) : ℚ) * (A271703 n : ℚ)

end

end A090181.P7941619336950280087

namespace A090181

/-- `A001263(n+1)/A105278(n+1)*A271703(n)` -/
def P7941619336950280087.Spec : Prop :=
  ∀ n, P7941619336950280087.a n = (A090181 n : ℚ)

end A090181

/-! ## A090181.P9224474006664347276

`and(A052955(n), A131198(A028310(n)-1))`
-/

namespace A090181.P9224474006664347276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052955 n) (A131198 (A028310 n - 1).toNat)

end

end A090181.P9224474006664347276

namespace A090181

/-- `and(A052955(n), A131198(A028310(n)-1))` -/
def P9224474006664347276.Spec : Prop :=
  ∀ n, P9224474006664347276.a n = A090181 n

end A090181

/-! ## A090181.P2037550724745593792

`A367267(n)/A193592(n)`
-/

namespace A090181.P2037550724745593792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367267 n : ℚ) / (A193592 n : ℚ)

end

end A090181.P2037550724745593792

namespace A090181

/-- `A367267(n)/A193592(n)` -/
def P2037550724745593792.Spec : Prop :=
  ∀ n, P2037550724745593792.a n = (A090181 n : ℚ)

end A090181

/-! ## A090181.P10541554390312407325

`A367267(n)/A193739(n)`
-/

namespace A090181.P10541554390312407325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367267 n : ℚ) / (A193739 n : ℚ)

end

end A090181.P10541554390312407325

namespace A090181

/-- `A367267(n)/A193739(n)` -/
def P10541554390312407325.Spec : Prop :=
  ∀ n, P10541554390312407325.a n = (A090181 n : ℚ)

end A090181

/-!
# A090182: Triangle T(n,k), 0 <= k <= n, composed of k-Catalan numbers.

The programs for A090182, there is no canonical definition to state claims against.
-/

/-! ## A090182.P6266824277840374105

`A290759(∑[char[∑[n]]]²-(n+1))`
-/

namespace A090182.P6266824277840374105
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290759 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A090182.P6266824277840374105

/-! ## A090182.P9578677349337582600

`A353481(2*(n+2))+A290759(A061579(n))`
-/

namespace A090182.P9578677349337582600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353481 (2 * (n + 2)) + A290759 (A061579 n).toNat

end

end A090182.P9578677349337582600

/-! ## A090182.P3513060246163723255

`A290759(A061579(n))+A003982(2*n+3)`
-/

namespace A090182.P3513060246163723255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290759 (A061579 n).toNat + A003982 (2 * n + 3)

end

end A090182.P3513060246163723255

/-! ## A090182.P18394169821579235758

`A266303(2*(n+2))*A290759(A061579(n))`
-/

namespace A090182.P18394169821579235758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 (2 * (n + 2)) * A290759 (A061579 n).toNat

end

end A090182.P18394169821579235758

/-! ## A090182.P11496317441808493462

`A290759(A061579(n))%(A290759(A061579(n))+1)`
-/

namespace A090182.P11496317441808493462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290759 (A061579 n).toNat) (A290759 (A061579 n).toNat + 1)

end

end A090182.P11496317441808493462

/-! ## A090182.P15698435915309722046

`A290759(A061579(n))+A121373(A260679(n+1))`
-/

namespace A090182.P15698435915309722046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290759 (A061579 n).toNat + A121373 (A260679 (n + 1)).toNat

end

end A090182.P15698435915309722046

/-!
# A090183: a(n) = (10 - (prime(n+3) mod 10) mod 4) - (n mod 4) + 3.

The programs for A090183, there is no canonical definition to state claims against.
-/

/-! ## A090183.P18257360674259696351

`or(1, A090724(n+4)+n)-n`
-/

namespace A090183.P18257360674259696351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A090724 (n + 4) + (n : ℤ)) - (n : ℤ)

end

end A090183.P18257360674259696351

/-!
# A090184: Number of partitions of the n-th 3-smooth number into parts 2 and 3.

The programs for A090184, there is no canonical definition to state claims against.
-/

/-! ## A090184.P386997422315751432

`A103221(A003586(n+1))`
-/

namespace A090184.P386997422315751432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A003586 (n + 1)).toNat

end

end A090184.P386997422315751432

/-! ## A090184.P3251633879755164557

`A091954(A137688(n))+floor(A003586(n+1)/6)`
-/

namespace A090184.P3251633879755164557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (A137688 n).toNat + ⌊(A003586 (n + 1) : ℚ) / 6⌋

end

end A090184.P3251633879755164557

/-! ## A090184.P7750807887393133752

`floor(A323161(A003586(n+1)+1)/3)`
-/

namespace A090184.P7750807887393133752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A323161 (A003586 (n + 1) + 1).toNat : ℚ) / 3⌋

end

end A090184.P7750807887393133752

/-! ## A090184.P9233126535180870262

`A001221(A174354(n))+floor(A003586(n+1)/6)`
-/

namespace A090184.P9233126535180870262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A174354 n).toNat + ⌊(A003586 (n + 1) : ℚ) / 6⌋

end

end A090184.P9233126535180870262

/-! ## A090184.P14495717237183220570

`A117220(n+1)-A001399(A069353(n+1))`
-/

namespace A090184.P14495717237183220570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117220 (n + 1) - A001399 (A069353 (n + 1)).toNat

end

end A090184.P14495717237183220570

/-! ## A090184.P4274647753886663420

`A117220(n+1)-A001399(A003586(n+1)-1)`
-/

namespace A090184.P4274647753886663420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117220 (n + 1) - A001399 (A003586 (n + 1) - 1).toNat

end

end A090184.P4274647753886663420

/-! ## A090184.P12331523920225500130

`A001399(A003586(n+1))-A001399(A069353(n+1))`
-/

namespace A090184.P12331523920225500130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A003586 (n + 1)).toNat - A001399 (A069353 (n + 1)).toNat

end

end A090184.P12331523920225500130

/-! ## A090184.P9930467036293988123

`A001399(A007694(n+2)/2)-A001399(A069353(n+1))`
-/

namespace A090184.P9930467036293988123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (SequenceMachineLib.roundAway ((A007694 (n + 2) : ℚ) / 2)).toNat - A001399 (A069353 (n + 1)).toNat

end

end A090184.P9930467036293988123

/-! ## A090184.P15490247145763466601

`A103221(∑[A061987(n)])`
-/

namespace A090184.P15490247145763466601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A090184.P15490247145763466601

/-! ## A090184.P13005001193093467163

`A008615(A003586(n+1)+2)`
-/

namespace A090184.P13005001193093467163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A003586 (n + 1) + 2).toNat

end

end A090184.P13005001193093467163

/-!
# A090186: a(n) is the least prime of the form prime(n)# * k + prime(n+1).

The programs for A090186, there is no canonical definition to state claims against.
-/

/-! ## A090186.P14411598589707970570

`A000040(n+2)+A002110(n+1)*A090185(n+1)`
-/

namespace A090186.P14411598589707970570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + A002110 (n + 1) * A090185 (n + 1)

end

end A090186.P14411598589707970570

/-!
# A090187: Primes of the form 11*n+2.

The programs for A090187, the canonical program `A090187.P17998606559123912834` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090187 has offset 1).

The definition of A090187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090187.P17998606559123912834

`∪[A142050(n+1), A142056(n+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A090187

/-- `∪[A142050(n+1), A142056(n+1)]` -/
def P17998606559123912834.Spec : Prop :=
  ∀ n, (P17998606559123912834.a n : ℤ) = A090187 (n + 1)

theorem P17998606559123912834.correct : P17998606559123912834.Spec := by
  intro n
  simp only [A090187, Nat.add_sub_cancel]

end A090187

/-! ## A090187.P879502983761456969

`p?[11*n+2]`
-/

namespace A090187.P879502983761456969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A090187.P879502983761456969

namespace A090187

/-- `p?[11*n+2]` -/
def P879502983761456969.Spec : Prop :=
  ∀ n, (P879502983761456969.a n : ℤ) = A090187 (n + 1)

end A090187

/-! ## A090187.P5673815479837439733

`∏{d}[p?[a(n-1)+11], #]` with `a(0)=2`
-/

namespace A090187.P5673815479837439733
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A090187.P5673815479837439733

namespace A090187

/-- `∏{d}[p?[a(n-1)+11], #]` -/
def P5673815479837439733.Spec : Prop :=
  ∀ n, (P5673815479837439733.a n : ℤ) = A090187 (n + 1)

end A090187

/-! ## A090187.P3555363638506992467

`∑{p}[p?[a(n-1)+11], #]` with `a(0)=2`
-/

namespace A090187.P3555363638506992467
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A090187.P3555363638506992467

namespace A090187

/-- `∑{p}[p?[a(n-1)+11], #]` -/
def P3555363638506992467.Spec : Prop :=
  ∀ n, (P3555363638506992467.a n : ℤ) = A090187 (n + 1)

end A090187

/-! ## A090187.P10302479408676348568

`∩[A214888(n+1), A215167(n+1)]`
-/

namespace A090187.P10302479408676348568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090187.P10302479408676348568

namespace A090187

/-- `∩[A214888(n+1), A215167(n+1)]` -/
def P10302479408676348568.Spec : Prop :=
  ∀ n, (P10302479408676348568.a n : ℤ) = A090187 (n + 1)

end A090187

/-! ## A090187.P14484753258810787377

`record[p?[a(n-2)+11]]` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A090187.P14484753258810787377
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0] fun n f2 =>
  f2 (n - 2) + 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090187.P14484753258810787377

namespace A090187

/-- `record[p?[a(n-2)+11]]` -/
def P14484753258810787377.Spec : Prop :=
  ∀ n, (P14484753258810787377.a n : ℤ) = A090187 (n + 1)

end A090187

/-! ## A090187.P2626279366606675841

`∩[A215214(n+1), A214888(n+1)]`
-/

namespace A090187.P2626279366606675841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090187.P2626279366606675841

namespace A090187

/-- `∩[A215214(n+1), A214888(n+1)]` -/
def P2626279366606675841.Spec : Prop :=
  ∀ n, (P2626279366606675841.a n : ℤ) = A090187 (n + 1)

end A090187

/-! ## A090187.P596489096416758790

`∩[A214888(n+1), A215210(n+1)]`
-/

namespace A090187.P596489096416758790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090187.P596489096416758790

namespace A090187

/-- `∩[A214888(n+1), A215210(n+1)]` -/
def P596489096416758790.Spec : Prop :=
  ∀ n, (P596489096416758790.a n : ℤ) = A090187 (n + 1)

end A090187

/-! ## A090187.P18316207515466231972

`∩[A215134(n+1), A215210(n+1)]`
-/

namespace A090187.P18316207515466231972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090187.P18316207515466231972

namespace A090187

/-- `∩[A215134(n+1), A215210(n+1)]` -/
def P18316207515466231972.Spec : Prop :=
  ∀ n, (P18316207515466231972.a n : ℤ) = A090187 (n + 1)

end A090187

/-! ## A090187.P6069487404483302787

`∩[A215302(n+1), A215167(n+1)]`
-/

namespace A090187.P6069487404483302787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090187.P6069487404483302787

namespace A090187

/-- `∩[A215302(n+1), A215167(n+1)]` -/
def P6069487404483302787.Spec : Prop :=
  ∀ n, (P6069487404483302787.a n : ℤ) = A090187 (n + 1)

end A090187

/-! ## A090187.P868513813090686531

`∩[A167134(n+1), A215390(n+1)]`
-/

namespace A090187.P868513813090686531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090187.P868513813090686531

namespace A090187

/-- `∩[A167134(n+1), A215390(n+1)]` -/
def P868513813090686531.Spec : Prop :=
  ∀ n, (P868513813090686531.a n : ℤ) = A090187 (n + 1)

end A090187

/-! ## A090187.P14028387832486093491

`∩[A191060(n+1), A214888(n+1)]`
-/

namespace A090187.P14028387832486093491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090187.P14028387832486093491

namespace A090187

/-- `∩[A191060(n+1), A214888(n+1)]` -/
def P14028387832486093491.Spec : Prop :=
  ∀ n, (P14028387832486093491.a n : ℤ) = A090187 (n + 1)

end A090187

/-! ## A090187.P8411162460543932809

`∩[A191060(n+1), A215102(n+1)]`
-/

namespace A090187.P8411162460543932809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090187.P8411162460543932809

namespace A090187

/-- `∩[A191060(n+1), A215102(n+1)]` -/
def P8411162460543932809.Spec : Prop :=
  ∀ n, (P8411162460543932809.a n : ℤ) = A090187 (n + 1)

end A090187

/-! ## A090187.P2540420851229050345

`∩[A191060(n+1), A215134(n+1)]`
-/

namespace A090187.P2540420851229050345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090187.P2540420851229050345

namespace A090187

/-- `∩[A191060(n+1), A215134(n+1)]` -/
def P2540420851229050345.Spec : Prop :=
  ∀ n, (P2540420851229050345.a n : ℤ) = A090187 (n + 1)

end A090187

/-! ## A090187.P620666651598890421

`∩[A191060(n+1), A215167(n+1)]`
-/

namespace A090187.P620666651598890421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090187.P620666651598890421

namespace A090187

/-- `∩[A191060(n+1), A215167(n+1)]` -/
def P620666651598890421.Spec : Prop :=
  ∀ n, (P620666651598890421.a n : ℤ) = A090187 (n + 1)

end A090187

/-! ## A090187.P10032449426546934972

`∩[A191060(n+1), A215214(n+1)]`
-/

namespace A090187.P10032449426546934972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090187.P10032449426546934972

namespace A090187

/-- `∩[A191060(n+1), A215214(n+1)]` -/
def P10032449426546934972.Spec : Prop :=
  ∀ n, (P10032449426546934972.a n : ℤ) = A090187 (n + 1)

end A090187

/-! ## A090187.P11163892192458272681

`∩[A191060(n+1), A215279(n+1)]`
-/

namespace A090187.P11163892192458272681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090187.P11163892192458272681

namespace A090187

/-- `∩[A191060(n+1), A215279(n+1)]` -/
def P11163892192458272681.Spec : Prop :=
  ∀ n, (P11163892192458272681.a n : ℤ) = A090187 (n + 1)

end A090187

/-! ## A090187.P5910443613349048449

`∩[A191060(n+1), A215302(n+1)]`
-/

namespace A090187.P5910443613349048449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090187.P5910443613349048449

namespace A090187

/-- `∩[A191060(n+1), A215302(n+1)]` -/
def P5910443613349048449.Spec : Prop :=
  ∀ n, (P5910443613349048449.a n : ℤ) = A090187 (n + 1)

end A090187

/-! ## A090187.P3716332514337178975

`∩[A191060(n+1), A215306(n+1)]`
-/

namespace A090187.P3716332514337178975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090187.P3716332514337178975

namespace A090187

/-- `∩[A191060(n+1), A215306(n+1)]` -/
def P3716332514337178975.Spec : Prop :=
  ∀ n, (P3716332514337178975.a n : ℤ) = A090187 (n + 1)

end A090187

/-! ## A090187.P1249324648463695709

`∩[A191060(n+1), A215314(n+1)]`
-/

namespace A090187.P1249324648463695709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090187.P1249324648463695709

namespace A090187

/-- `∩[A191060(n+1), A215314(n+1)]` -/
def P1249324648463695709.Spec : Prop :=
  ∀ n, (P1249324648463695709.a n : ℤ) = A090187 (n + 1)

end A090187

/-!
# A090188: Primes P such that P=k*p(n)#-p(n+1) is prime for least k. Here p(i)# denotes the i-th primorial and p(i) denotes the i-th prime.

The programs for A090188, there is no canonical definition to state claims against.
-/

/-! ## A090188.P2384379491246948304

`p?[record[A331188(n+1)-A327656(n+1)]]`
-/

namespace A090188.P2384379491246948304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (n + 1) - A327656 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090188.P2384379491246948304

/-!
# A090190: Symmetric primes: an odd prime p is symmetric if there exists an odd prime q such that |p-q| = gcd(p-1,q-1).

The programs for A090190, there is no canonical definition to state claims against.
-/

/-! ## A090190.P1192370375586466872

`p?[A232803(comp[A249547(n)])]`
-/

namespace A090190.P1192370375586466872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249547 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232803 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090190.P1192370375586466872

/-! ## A090190.P5426556771639951850

`p?[A023532(A349000(n))+2*n]`
-/

namespace A090190.P5426556771639951850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (A349000 n).toNat + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090190.P5426556771639951850

/-! ## A090190.P2085792459555600493

`p?[A103517(n)-A023532(A349000(n))]`
-/

namespace A090190.P2085792459555600493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n - A023532 (A349000 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090190.P2085792459555600493

/-! ## A090190.P14607761225280567746

`p?[A005408(n)*A023532(A349000(n))]`
-/

namespace A090190.P14607761225280567746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A023532 (A349000 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090190.P14607761225280567746

/-! ## A090190.P15598986936926105469

`p?[A003159(A331995(n+1)+1)]`
-/

namespace A090190.P15598986936926105469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (A331995 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090190.P15598986936926105469

/-!
# A090192: Carlitz-Riordan q-Catalan numbers (recurrence version) for q = -1.

The programs for A090192, the canonical program `A090192.P1518387728064855857` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090192 has offset 0).

The definition of A090192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090192.P18270802315183029724

`A182492(n%2+2*n)`
-/

namespace A090192.P18270802315183029724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 (n % 2 + 2 * n)

end

end A090192.P18270802315183029724

namespace A090192

/-- `A182492(n%2+2*n)` -/
def P18270802315183029724.Spec : Prop :=
  ∀ n, P18270802315183029724.a n = A090192 n

end A090192

/-! ## A090192.P9306450718736203889

`A182492(and(1, n)+n+n)`
-/

namespace A090192.P9306450718736203889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 (Nat.land 1 n + n + n)

end

end A090192.P9306450718736203889

namespace A090192

/-- `A182492(and(1, n)+n+n)` -/
def P9306450718736203889.Spec : Prop :=
  ∀ n, P9306450718736203889.a n = A090192 n

end A090192

/-! ## A090192.P6042811234161415590

`A182492(A014601(n))`
-/

namespace A090192.P6042811234161415590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 (A014601 n).toNat

end

end A090192.P6042811234161415590

namespace A090192

/-- `A182492(A014601(n))` -/
def P6042811234161415590.Spec : Prop :=
  ∀ n, P6042811234161415590.a n = A090192 n

end A090192

/-! ## A090192.P2815513278194368880

`A182492(A059029(n))`
-/

namespace A090192.P2815513278194368880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 (A059029 n).toNat

end

end A090192.P2815513278194368880

namespace A090192

/-- `A182492(A059029(n))` -/
def P2815513278194368880.Spec : Prop :=
  ∀ n, P2815513278194368880.a n = A090192 n

end A090192

/-! ## A090192.P11998184514814792338

`A182492(comp[A004277(n)])`
-/

namespace A090192.P11998184514814792338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A090192.P11998184514814792338

namespace A090192

/-- `A182492(comp[A004277(n)])` -/
def P11998184514814792338.Spec : Prop :=
  ∀ n, P11998184514814792338.a n = A090192 n

end A090192

/-! ## A090192.P11204971330450769865

`A182492(A047485(n+1))`
-/

namespace A090192.P11204971330450769865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 (A047485 (n + 1)).toNat

end

end A090192.P11204971330450769865

namespace A090192

/-- `A182492(A047485(n+1))` -/
def P11204971330450769865.Spec : Prop :=
  ∀ n, P11204971330450769865.a n = A090192 n

end A090192

/-! ## A090192.P15271953144413267141

`A182492(A047557(n+1))`
-/

namespace A090192.P15271953144413267141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 (A047557 (n + 1)).toNat

end

end A090192.P15271953144413267141

namespace A090192

/-- `A182492(A047557(n+1))` -/
def P15271953144413267141.Spec : Prop :=
  ∀ n, P15271953144413267141.a n = A090192 n

end A090192

/-! ## A090192.P17999638590438915011

`A182492(A266256(n)+2)`
-/

namespace A090192.P17999638590438915011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 (A266256 n + 2).toNat

end

end A090192.P17999638590438915011

namespace A090192

/-- `A182492(A266256(n)+2)` -/
def P17999638590438915011.Spec : Prop :=
  ∀ n, P17999638590438915011.a n = A090192 n

end A090192

/-! ## A090192.P13477179323916106910

`A182492(xor(1, A004277(n)))`
-/

namespace A090192.P13477179323916106910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 (Int.xor 1 (A004277 n)).toNat

end

end A090192.P13477179323916106910

namespace A090192

/-- `A182492(xor(1, A004277(n)))` -/
def P13477179323916106910.Spec : Prop :=
  ∀ n, P13477179323916106910.a n = A090192 n

end A090192

/-! ## A090192.P1518387728064855857

`A000038(n)-A105523(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A090192

/-- `A000038(n)-A105523(n)` -/
def P1518387728064855857.Spec : Prop :=
  ∀ n, P1518387728064855857.a n = A090192 n

theorem P1518387728064855857.correct : P1518387728064855857.Spec := by
  intro n
  simp only [A090192]

end A090192

/-! ## A090192.P12332915121841716576

`A033999(n)*A105523(n)`
-/

namespace A090192.P12332915121841716576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A105523 n

end

end A090192.P12332915121841716576

namespace A090192

/-- `A033999(n)*A105523(n)` -/
def P12332915121841716576.Spec : Prop :=
  ∀ n, P12332915121841716576.a n = A090192 n

end A090192

/-! ## A090192.P18175293905605115093

`A057077(n)*A097331(n)`
-/

namespace A090192.P18175293905605115093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A097331 n

end

end A090192.P18175293905605115093

namespace A090192

/-- `A057077(n)*A097331(n)` -/
def P18175293905605115093.Spec : Prop :=
  ∀ n, P18175293905605115093.a n = A090192 n

end A090192

/-! ## A090192.P1480260503751180150

`A097331(n)*A117569(n)`
-/

namespace A090192.P1480260503751180150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n * A117569 n

end

end A090192.P1480260503751180150

namespace A090192

/-- `A097331(n)*A117569(n)` -/
def P1480260503751180150.Spec : Prop :=
  ∀ n, P1480260503751180150.a n = A090192 n

end A090192

/-! ## A090192.P8147890544568082247

`A097331(n)*A121238(n)`
-/

namespace A090192.P8147890544568082247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n * A121238 n

end

end A090192.P8147890544568082247

namespace A090192

/-- `A097331(n)*A121238(n)` -/
def P8147890544568082247.Spec : Prop :=
  ∀ n, P8147890544568082247.a n = A090192 n

end A090192

/-! ## A090192.P6951123113578597794

`A105523(n)*A115638(n)`
-/

namespace A090192.P6951123113578597794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 n * A115638 n

end

end A090192.P6951123113578597794

namespace A090192

/-- `A105523(n)*A115638(n)` -/
def P6951123113578597794.Spec : Prop :=
  ∀ n, P6951123113578597794.a n = A090192 n

end A090192

/-! ## A090192.P13767100929148361013

`A105523(n)*A164117(n)`
-/

namespace A090192.P13767100929148361013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 n * A164117 n

end

end A090192.P13767100929148361013

namespace A090192

/-- `A105523(n)*A164117(n)` -/
def P13767100929148361013.Spec : Prop :=
  ∀ n, P13767100929148361013.a n = A090192 n

end A090192

/-! ## A090192.P9701776485725812655

`A087960(n)*A210628(n)`
-/

namespace A090192.P9701776485725812655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A210628 n

end

end A090192.P9701776485725812655

namespace A090192

/-- `A087960(n)*A210628(n)` -/
def P9701776485725812655.Spec : Prop :=
  ∀ n, P9701776485725812655.a n = A090192 n

end A090192

/-! ## A090192.P56822291544410978

`A097331(n)*A257196(n)`
-/

namespace A090192.P56822291544410978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n * A257196 n

end

end A090192.P56822291544410978

namespace A090192

/-- `A097331(n)*A257196(n)` -/
def P56822291544410978.Spec : Prop :=
  ∀ n, P56822291544410978.a n = A090192 n

end A090192

/-! ## A090192.P14251170544282938297

`A145063(n)*A210628(n)`
-/

namespace A090192.P14251170544282938297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145063 n * A210628 n

end

end A090192.P14251170544282938297

namespace A090192

/-- `A145063(n)*A210628(n)` -/
def P14251170544282938297.Spec : Prop :=
  ∀ n, P14251170544282938297.a n = A090192 n

end A090192

/-! ## A090192.P5265410962649804500

`A163805(n)*A210628(n)`
-/

namespace A090192.P5265410962649804500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 n * A210628 n

end

end A090192.P5265410962649804500

namespace A090192

/-- `A163805(n)*A210628(n)` -/
def P5265410962649804500.Spec : Prop :=
  ∀ n, P5265410962649804500.a n = A090192 n

end A090192

/-!
# A090193: a(n) = A053838(n) + 1 modulo 3.

The programs for A090193, the canonical program `A090193.P15358128269312827508` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090193 has offset 0).

The definition of A090193 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090193.P15358128269312827508

`(a(floor(n/3))+n)%3` with `a(0)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090193

/-- `(a(floor(n/3))+n)%3` -/
def P15358128269312827508.Spec : Prop :=
  ∀ n, (P15358128269312827508.a n : ℤ) = A090193 n

theorem P15358128269312827508.correct : P15358128269312827508.Spec := by
  intro n
  simp only [A090193]

end A090193

/-! ## A090193.P9016001059511273295

`(val(n, 3)+a(n-1)+1)%3` with `a(0)=1`
-/

namespace A090193.P9016001059511273295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.valuation n 3 + (a (n - 1) + 1)) % 3

end

end A090193.P9016001059511273295

namespace A090193

/-- `(val(n, 3)+a(n-1)+1)%3` -/
def P9016001059511273295.Spec : Prop :=
  ∀ n, (P9016001059511273295.a n : ℤ) = A090193 n

end A090193

/-! ## A090193.P752147425212079611

`A092296(n)%3`
-/

namespace A090193.P752147425212079611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092296 n) 3

end

end A090193.P752147425212079611

namespace A090193

/-- `A092296(n)%3` -/
def P752147425212079611.Spec : Prop :=
  ∀ n, P752147425212079611.a n = A090193 n

end A090193

/-! ## A090193.P459967154888225686

`C(2, A053838(n)²)`
-/

namespace A090193.P459967154888225686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A053838 n ^ 2).toNat

end

end A090193.P459967154888225686

namespace A090193

/-- `C(2, A053838(n)²)` -/
def P459967154888225686.Spec : Prop :=
  ∀ n, (P459967154888225686.a n : ℤ) = A090193 n

end A090193

/-! ## A090193.P5736784602649220970

`(A004128(n)+1)%3`
-/

namespace A090193.P5736784602649220970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004128 n + 1) 3

end

end A090193.P5736784602649220970

namespace A090193

/-- `(A004128(n)+1)%3` -/
def P5736784602649220970.Spec : Prop :=
  ∀ n, P5736784602649220970.a n = A090193 n

end A090193

/-! ## A090193.P17458012682925670811

`(A007089(n)+1)%3`
-/

namespace A090193.P17458012682925670811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007089 n + 1) 3

end

end A090193.P17458012682925670811

namespace A090193

/-- `(A007089(n)+1)%3` -/
def P17458012682925670811.Spec : Prop :=
  ∀ n, P17458012682925670811.a n = A090193 n

end A090193

/-! ## A090193.P9343967943119419400

`A026600(n+1)%3`
-/

namespace A090193.P9343967943119419400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026600 (n + 1)) 3

end

end A090193.P9343967943119419400

namespace A090193

/-- `A026600(n+1)%3` -/
def P9343967943119419400.Spec : Prop :=
  ∀ n, P9343967943119419400.a n = A090193 n

end A090193

/-! ## A090193.P5880065885216409223

`A120514(n+1)%3`
-/

namespace A090193.P5880065885216409223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120514 (n + 1)) 3

end

end A090193.P5880065885216409223

namespace A090193

/-- `A120514(n+1)%3` -/
def P5880065885216409223.Spec : Prop :=
  ∀ n, P5880065885216409223.a n = A090193 n

end A090193

/-! ## A090193.P12784335433189553429

`A120517(n+1)%3`
-/

namespace A090193.P12784335433189553429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120517 (n + 1)) 3

end

end A090193.P12784335433189553429

namespace A090193

/-- `A120517(n+1)%3` -/
def P12784335433189553429.Spec : Prop :=
  ∀ n, P12784335433189553429.a n = A090193 n

end A090193

/-! ## A090193.P13635525513428487996

`A173523(n+1)%3`
-/

namespace A090193.P13635525513428487996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173523 (n + 1)) 3

end

end A090193.P13635525513428487996

namespace A090193

/-- `A173523(n+1)%3` -/
def P13635525513428487996.Spec : Prop :=
  ∀ n, P13635525513428487996.a n = A090193 n

end A090193

/-! ## A090193.P18026522729146022195

`a(a(A090239(n)))` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A090193.P18026522729146022195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0] fun n a =>
  a (a (A090239 n).toNat)

end

end A090193.P18026522729146022195

namespace A090193

/-- `a(a(A090239(n)))` -/
def P18026522729146022195.Spec : Prop :=
  ∀ n, (P18026522729146022195.a n : ℤ) = A090193 n

end A090193

/-! ## A090193.P7843963577608185774

`(A054861(n)+1+n)%3`
-/

namespace A090193.P7843963577608185774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054861 n + 1 + (n : ℤ)) 3

end

end A090193.P7843963577608185774

namespace A090193

/-- `(A054861(n)+1+n)%3` -/
def P7843963577608185774.Spec : Prop :=
  ∀ n, P7843963577608185774.a n = A090193 n

end A090193

/-! ## A090193.P16634571208314709243

`((A037455(n)+2)%3+2)%3`
-/

namespace A090193.P16634571208314709243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A037455 n + 2) 3 + 2) 3

end

end A090193.P16634571208314709243

namespace A090193

/-- `((A037455(n)+2)%3+2)%3` -/
def P16634571208314709243.Spec : Prop :=
  ∀ n, P16634571208314709243.a n = A090193 n

end A090193

/-! ## A090193.P10658754505931294055

`3*(n+1)-A026602(n+1)`
-/

namespace A090193.P10658754505931294055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A026602 (n + 1)

end

end A090193.P10658754505931294055

namespace A090193

/-- `3*(n+1)-A026602(n+1)` -/
def P10658754505931294055.Spec : Prop :=
  ∀ n, P10658754505931294055.a n = A090193 n

end A090193

/-! ## A090193.P15157522376966790082

`(∑[val(A028310(n), 3)]+1+n)%3`
-/

namespace A090193.P15157522376966790082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028310 n).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1 + n) % 3

end

end A090193.P15157522376966790082

namespace A090193

/-- `(∑[val(A028310(n), 3)]+1+n)%3` -/
def P15157522376966790082.Spec : Prop :=
  ∀ n, (P15157522376966790082.a n : ℤ) = A090193 n

end A090193

/-! ## A090193.P17961729248451142055

`A090239(A004483(n))`
-/

namespace A090193.P17961729248451142055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090239 (A004483 n).toNat

end

end A090193.P17961729248451142055

namespace A090193

/-- `A090239(A004483(n))` -/
def P17961729248451142055.Spec : Prop :=
  ∀ n, P17961729248451142055.a n = A090193 n

end A090193

/-! ## A090193.P14353822118059700246

`A090239(A004499(n))`
-/

namespace A090193.P14353822118059700246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090239 (A004499 n).toNat

end

end A090193.P14353822118059700246

namespace A090193

/-- `A090239(A004499(n))` -/
def P14353822118059700246.Spec : Prop :=
  ∀ n, P14353822118059700246.a n = A090193 n

end A090193

/-! ## A090193.P12980923000666976568

`A090239(A004506(n))`
-/

namespace A090193.P12980923000666976568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090239 (A004506 n).toNat

end

end A090193.P12980923000666976568

namespace A090193

/-- `A090239(A004506(n))` -/
def P12980923000666976568.Spec : Prop :=
  ∀ n, P12980923000666976568.a n = A090193 n

end A090193

/-! ## A090193.P8988481447379328161

`A010872(A053735(n)+1)`
-/

namespace A090193.P8988481447379328161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A053735 n + 1).toNat

end

end A090193.P8988481447379328161

namespace A090193

/-- `A010872(A053735(n)+1)` -/
def P8988481447379328161.Spec : Prop :=
  ∀ n, P8988481447379328161.a n = A090193 n

end A090193

/-!
# A090194: Primes which when multiplied by their largest digit and 1 is added form another prime.

The programs for A090194, there is no canonical definition to state claims against.
-/

/-! ## A090194.P534757633389232432

`p?[A055938(A008965(n+1))+A000217(n)]`
-/

namespace A090194.P534757633389232432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (A008965 (n + 1)).toNat + A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090194.P534757633389232432

/-!
# A090195: Primes which when multiplied by their largest digit and 1 is subtracted form another prime.

The programs for A090195, there is no canonical definition to state claims against.
-/

/-! ## A090195.P14806828193265169539

`record[gcd(A154767(n+1), A351978(2*(n+2)))]`
-/

namespace A090195.P14806828193265169539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A154767 (n + 1)) (A351978 (2 * (n + 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090195.P14806828193265169539

/-!
# A090196: Odd integers with two divisors a, b such that a < b <= 2a.

The programs for A090196, there is no canonical definition to state claims against.
-/

/-! ## A090196.P15872607212477277265

`record[lcm(2, A060700(n+1))/2]`
-/

namespace A090196.P15872607212477277265
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A060700 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090196.P15872607212477277265

/-! ## A090196.P10209421249377464936

`∩[2*n+1, A005279(n+1)]`
-/

namespace A090196.P10209421249377464936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090196.P10209421249377464936

/-! ## A090196.P2950911256852399091

`record[A000265(A005279(n+3))]`
-/

namespace A090196.P2950911256852399091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A005279 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090196.P2950911256852399091

/-! ## A090196.P11870035456079665514

`∩[A005279(n+1), A014076(n+1)]`
-/

namespace A090196.P11870035456079665514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090196.P11870035456079665514

/-! ## A090196.P16163658828527203630

`∩[A005279(n+1), A061346(n+1)]`
-/

namespace A090196.P16163658828527203630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090196.P16163658828527203630

/-! ## A090196.P8101840992998836657

`∩[A005279(n+1), A071904(n+1)]`
-/

namespace A090196.P8101840992998836657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090196.P8101840992998836657

/-! ## A090196.P17632593548213493870

`∩[A005279(n+1), A226025(n+1)]`
-/

namespace A090196.P17632593548213493870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090196.P17632593548213493870

/-! ## A090196.P8820067295334926223

`∩[A005279(n+1), A257521(n+1)]`
-/

namespace A090196.P8820067295334926223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090196.P8820067295334926223

/-! ## A090196.P15274300523747617727

`A005279(eq[1, A005279(n+1)%2]+1)`
-/

namespace A090196.P15274300523747617727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005279 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A090196.P15274300523747617727

/-! ## A090196.P2914334371105614633

`A005279(eq[1, and(1, A005279(n+1))]+1)`
-/

namespace A090196.P2914334371105614633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A005279 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A090196.P2914334371105614633

/-! ## A090196.P5636664990692367694

`∩[A005279(n+1), A193071(n+1)]`
-/

namespace A090196.P5636664990692367694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090196.P5636664990692367694

/-! ## A090196.P12357289347874145208

`∩[A005279(n+1), A020742(n)]`
-/

namespace A090196.P12357289347874145208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090196.P12357289347874145208

/-! ## A090196.P11497480422561141999

`∩[A005279(n+1), A062545(n)]`
-/

namespace A090196.P11497480422561141999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090196.P11497480422561141999

/-! ## A090196.P17053953233680198224

`∩[A060700(n+1), A020742(n)]`
-/

namespace A090196.P17053953233680198224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090196.P17053953233680198224

/-! ## A090196.P10082828465069019030

`∩[A060700(n+1), A062545(n)]`
-/

namespace A090196.P10082828465069019030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090196.P10082828465069019030

/-! ## A090196.P14539413547966683260

`∩[A005279(n+1), A005818(n+1)]`
-/

namespace A090196.P14539413547966683260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090196.P14539413547966683260

/-! ## A090196.P12005251448190760174

`∩[A005279(n+1), A020735(n+1)]`
-/

namespace A090196.P12005251448190760174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090196.P12005251448190760174

/-! ## A090196.P2843642045470092040

`∩[A005279(n+1), A144396(n+1)]`
-/

namespace A090196.P2843642045470092040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090196.P2843642045470092040

/-! ## A090196.P12917370773243676183

`∩[A005279(n+1), A004273(n)]`
-/

namespace A090196.P12917370773243676183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090196.P12917370773243676183

/-! ## A090196.P6814048950386479518

`∩[A005279(n+1), A004274(n)]`
-/

namespace A090196.P6814048950386479518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090196.P6814048950386479518

/-!
# A090197: a(n) = n^3 + 6*n^2 + 6*n + 1.

The programs for A090197, the canonical program `A090197.P16054348597824220922` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090197 has offset 0).

The definition of A090197 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+6*n²+6*n+1` (program `A090197.P16054348597824220922`, by `A090197.P16054348597824220922.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090197.P10251603626051274633

`(n+1)*(n²+5*n+1)`
-/

namespace A090197.P10251603626051274633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n ^ 2 + 5 * n + 1)

end

end A090197.P10251603626051274633

namespace A090197

/-- `(n+1)*(n²+5*n+1)` -/
def P10251603626051274633.Spec : Prop :=
  ∀ n, (P10251603626051274633.a n : ℤ) = A090197 n

theorem P10251603626051274633.correct : P10251603626051274633.Spec := by
  intro n
  simp only [A090197, Nat.add_sub_cancel, A090197.P10251603626051274633.a, A090197.P16054348597824220922.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A090197

/-! ## A090197.P16054348597824220922

`n^3+6*n²+6*n+1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090197

/-- `n^3+6*n²+6*n+1` -/
def P16054348597824220922.Spec : Prop :=
  ∀ n, (P16054348597824220922.a n : ℤ) = A090197 n

theorem P16054348597824220922.correct : P16054348597824220922.Spec := by
  intro n
  simp only [A090197]

end A090197

/-! ## A090197.P1558124517919153921

`∑[or(1, 3*n*(n+3))]`
-/

namespace A090197.P1558124517919153921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * (n * (n + 3)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090197.P1558124517919153921

namespace A090197

/-- `∑[or(1, 3*n*(n+3))]` -/
def P1558124517919153921.Spec : Prop :=
  ∀ n, (P1558124517919153921.a n : ℤ) = A090197 n

end A090197

/-! ## A090197.P11026050073360360773

`∑[xor(1, 3*n*(n+3))]`
-/

namespace A090197.P11026050073360360773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * (n * (n + 3)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090197.P11026050073360360773

namespace A090197

/-- `∑[xor(1, 3*n*(n+3))]` -/
def P11026050073360360773.Spec : Prop :=
  ∀ n, (P11026050073360360773.a n : ℤ) = A090197 n

end A090197

/-! ## A090197.P8828507551008506976

`∑[∑[a(n-1)+6]-5]` with `a(0)=6`
-/

namespace A090197.P8828507551008506976
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090197.P8828507551008506976

namespace A090197

/-- `∑[∑[a(n-1)+6]-5]` -/
def P8828507551008506976.Spec : Prop :=
  ∀ n, P8828507551008506976.a n = A090197 n

end A090197

/-! ## A090197.P14063211755270347096

`∑[3*lcm(n+1, n+2)-5]`
-/

namespace A090197.P14063211755270347096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.lcm (n + 1) (n + 2) : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090197.P14063211755270347096

namespace A090197

/-- `∑[3*lcm(n+1, n+2)-5]` -/
def P14063211755270347096.Spec : Prop :=
  ∀ n, P14063211755270347096.a n = A090197 n

end A090197

/-! ## A090197.P15367078653771896236

`∑[A166143(n+1)]`
-/

namespace A090197.P15367078653771896236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090197.P15367078653771896236

namespace A090197

/-- `∑[A166143(n+1)]` -/
def P15367078653771896236.Spec : Prop :=
  ∀ n, P15367078653771896236.a n = A090197 n

end A090197

/-! ## A090197.P9823204785794498568

`∑[A277978(n)+1]`
-/

namespace A090197.P9823204785794498568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277978 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090197.P9823204785794498568

namespace A090197

/-- `∑[A277978(n)+1]` -/
def P9823204785794498568.Spec : Prop :=
  ∀ n, P9823204785794498568.a n = A090197 n

end A090197

/-! ## A090197.P12868676756477064177

`A192845(n+1)/4`
-/

namespace A090197.P12868676756477064177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192845 (n + 1) : ℚ) / 4

end

end A090197.P12868676756477064177

namespace A090197

/-- `A192845(n+1)/4` -/
def P12868676756477064177.Spec : Prop :=
  ∀ n, P12868676756477064177.a n = (A090197 n : ℚ)

end A090197

/-! ## A090197.P7594900098548499390

`∑[A211441(n+1)-2]`
-/

namespace A090197.P7594900098548499390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211441 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090197.P7594900098548499390

namespace A090197

/-- `∑[A211441(n+1)-2]` -/
def P7594900098548499390.Spec : Prop :=
  ∀ n, P7594900098548499390.a n = A090197 n

end A090197

/-! ## A090197.P5699138947953822639

`∑[3*A028387(n)-2]`
-/

namespace A090197.P5699138947953822639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A028387 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090197.P5699138947953822639

namespace A090197

/-- `∑[3*A028387(n)-2]` -/
def P5699138947953822639.Spec : Prop :=
  ∀ n, P5699138947953822639.a n = A090197 n

end A090197

/-! ## A090197.P4280046577682116315

`∑[A140677(n)+n+1]`
-/

namespace A090197.P4280046577682116315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140677 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090197.P4280046577682116315

namespace A090197

/-- `∑[A140677(n)+n+1]` -/
def P4280046577682116315.Spec : Prop :=
  ∀ n, P4280046577682116315.a n = A090197 n

end A090197

/-! ## A090197.P14819002156877570731

`lcm(A082111(n), A203648(n+1))`
-/

namespace A090197.P14819002156877570731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A082111 n) (A203648 (n + 1))

end

end A090197.P14819002156877570731

namespace A090197

/-- `lcm(A082111(n), A203648(n+1))` -/
def P14819002156877570731.Spec : Prop :=
  ∀ n, (P14819002156877570731.a n : ℤ) = A090197 n

end A090197

/-! ## A090197.P102823888701450466

`xor(A176040(n), A229013(n+1))`
-/

namespace A090197.P102823888701450466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A176040 n) (A229013 (n + 1))

end

end A090197.P102823888701450466

namespace A090197

/-- `xor(A176040(n), A229013(n+1))` -/
def P102823888701450466.Spec : Prop :=
  ∀ n, P102823888701450466.a n = A090197 n

end A090197

/-! ## A090197.P9627290676306414168

`∑[A004538(n+1)-4]`
-/

namespace A090197.P9627290676306414168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004538 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090197.P9627290676306414168

namespace A090197

/-- `∑[A004538(n+1)-4]` -/
def P9627290676306414168.Spec : Prop :=
  ∀ n, P9627290676306414168.a n = A090197 n

end A090197

/-! ## A090197.P9320847112347162447

`∑[A028896(n+1)-5]`
-/

namespace A090197.P9320847112347162447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090197.P9320847112347162447

namespace A090197

/-- `∑[A028896(n+1)-5]` -/
def P9320847112347162447.Spec : Prop :=
  ∀ n, P9320847112347162447.a n = A090197 n

end A090197

/-! ## A090197.P15067316077367640770

`∑[A131065(∑[n+3])]`
-/

namespace A090197.P15067316077367640770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131065 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090197.P15067316077367640770

namespace A090197

/-- `∑[A131065(∑[n+3])]` -/
def P15067316077367640770.Spec : Prop :=
  ∀ n, P15067316077367640770.a n = A090197 n

end A090197

/-!
# A090198: a(n) = N(5,n), where N(5,x) is the 5th Narayana polynomial.

The programs for A090198, the canonical program `A090198.P8261757999435454601` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090198 has offset 0).

The definition of A090198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090198.P8261757999435454601

`n^4+10*n^3+20*n²+10*n+1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090198

/-- `n^4+10*n^3+20*n²+10*n+1` -/
def P8261757999435454601.Spec : Prop :=
  ∀ n, (P8261757999435454601.a n : ℤ) = A090198 n

theorem P8261757999435454601.correct : P8261757999435454601.Spec := by
  intro n
  simp only [A090198]

end A090198

/-! ## A090198.P13669010970663304834

`A204057(A167499(n+3))`
-/

namespace A090198.P13669010970663304834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204057 (A167499 (n + 3)).toNat

end

end A090198.P13669010970663304834

namespace A090198

/-- `A204057(A167499(n+3))` -/
def P13669010970663304834.Spec : Prop :=
  ∀ n, P13669010970663304834.a n = A090198 n

end A090198

/-! ## A090198.P8711154067962997138

`A243631(A167499(n+4))`
-/

namespace A090198.P8711154067962997138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 (A167499 (n + 4)).toNat

end

end A090198.P8711154067962997138

namespace A090198

/-- `A243631(A167499(n+4))` -/
def P8711154067962997138.Spec : Prop :=
  ∀ n, P8711154067962997138.a n = A090198 n

end A090198

/-! ## A090198.P8010532395127290584

`A204057(A167614(n+3)+2)`
-/

namespace A090198.P8010532395127290584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204057 (A167614 (n + 3) + 2).toNat

end

end A090198.P8010532395127290584

namespace A090198

/-- `A204057(A167614(n+3)+2)` -/
def P8010532395127290584.Spec : Prop :=
  ∀ n, P8010532395127290584.a n = A090198 n

end A090198

/-! ## A090198.P12704675948229211056

`A204057(A052905(n+3)-(2*n+1))`
-/

namespace A090198.P12704675948229211056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204057 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A090198.P12704675948229211056

namespace A090198

/-- `A204057(A052905(n+3)-(2*n+1))` -/
def P12704675948229211056.Spec : Prop :=
  ∀ n, P12704675948229211056.a n = A090198 n

end A090198

/-! ## A090198.P4201665259629709526

`A008550(A055999(n+3))`
-/

namespace A090198.P4201665259629709526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A055999 (n + 3)).toNat

end

end A090198.P4201665259629709526

namespace A090198

/-- `A008550(A055999(n+3))` -/
def P4201665259629709526.Spec : Prop :=
  ∀ n, P4201665259629709526.a n = A090198 n

end A090198

/-! ## A090198.P16906153592784398978

`A008550(A052905(n+3)-1)`
-/

namespace A090198.P16906153592784398978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A052905 (n + 3) - 1).toNat

end

end A090198.P16906153592784398978

namespace A090198

/-- `A008550(A052905(n+3)-1)` -/
def P16906153592784398978.Spec : Prop :=
  ∀ n, P16906153592784398978.a n = A090198 n

end A090198

/-! ## A090198.P2640375150487928536

`A008550(A000124(n+5)+n-1)`
-/

namespace A090198.P2640375150487928536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A000124 (n + 5) + ((n : ℤ) - 1)).toNat

end

end A090198.P2640375150487928536

namespace A090198

/-- `A008550(A000124(n+5)+n-1)` -/
def P2640375150487928536.Spec : Prop :=
  ∀ n, P2640375150487928536.a n = A090198 n

end A090198

/-! ## A090198.P9119590831415955899

`A008550(2*n+A000217(n+4)+5)`
-/

namespace A090198.P9119590831415955899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 ((2 * n : ℤ) + (A000217 (n + 4) + 5)).toNat

end

end A090198.P9119590831415955899

namespace A090198

/-- `A008550(2*n+A000217(n+4)+5)` -/
def P9119590831415955899.Spec : Prop :=
  ∀ n, P9119590831415955899.a n = A090198 n

end A090198

/-!
# A090199: a(n) = N(6,n), where N(6,x) is the 6th Narayana polynomial.

The programs for A090199, the canonical program `A090199.P11983814238188661416` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090199 has offset 0).

The definition of A090199 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090199.P11983814238188661416

`(n+1)*(n^4+14*n^3+36*n²+14*n+1)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090199

/-- `(n+1)*(n^4+14*n^3+36*n²+14*n+1)` -/
def P11983814238188661416.Spec : Prop :=
  ∀ n, (P11983814238188661416.a n : ℤ) = A090199 n

theorem P11983814238188661416.correct : P11983814238188661416.Spec := by
  intro n
  simp only [A090199]

end A090199

/-! ## A090199.P784834863208794345

`A204057(A000217(n+5)+6)`
-/

namespace A090199.P784834863208794345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204057 (A000217 (n + 5) + 6).toNat

end

end A090199.P784834863208794345

namespace A090199

/-- `A204057(A000217(n+5)+6)` -/
def P784834863208794345.Spec : Prop :=
  ∀ n, P784834863208794345.a n = A090199 n

end A090199

/-! ## A090199.P953462815235694300

`A243631(A000217(n+6)+6)`
-/

namespace A090199.P953462815235694300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 (A000217 (n + 6) + 6).toNat

end

end A090199.P953462815235694300

namespace A090199

/-- `A243631(A000217(n+6)+6)` -/
def P953462815235694300.Spec : Prop :=
  ∀ n, P953462815235694300.a n = A090199 n

end A090199

/-! ## A090199.P6840636913123403199

`A243631(n+12+A253145(n+4))`
-/

namespace A090199.P6840636913123403199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 ((n + 12 : ℤ) + A253145 (n + 4)).toNat

end

end A090199.P6840636913123403199

namespace A090199

/-- `A243631(n+12+A253145(n+4))` -/
def P6840636913123403199.Spec : Prop :=
  ∀ n, P6840636913123403199.a n = A090199 n

end A090199

/-! ## A090199.P5493935122311180415

`A243631(A055999(n+5)-A005408(n+1))`
-/

namespace A090199.P5493935122311180415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 (A055999 (n + 5) - A005408 (n + 1)).toNat

end

end A090199.P5493935122311180415

namespace A090199

/-- `A243631(A055999(n+5)-A005408(n+1))` -/
def P5493935122311180415.Spec : Prop :=
  ∀ n, P5493935122311180415.a n = A090199 n

end A090199

/-! ## A090199.P5592147888466227446

`A008550(A052905(n+4)-2)`
-/

namespace A090199.P5592147888466227446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A052905 (n + 4) - 2).toNat

end

end A090199.P5592147888466227446

namespace A090199

/-- `A008550(A052905(n+4)-2)` -/
def P5592147888466227446.Spec : Prop :=
  ∀ n, P5592147888466227446.a n = A090199 n

end A090199

/-! ## A090199.P9680230037536233274

`A008550(A000217(n+7)-7)`
-/

namespace A090199.P9680230037536233274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A000217 (n + 7) - 7).toNat

end

end A090199.P9680230037536233274

namespace A090199

/-- `A008550(A000217(n+7)-7)` -/
def P9680230037536233274.Spec : Prop :=
  ∀ n, P9680230037536233274.a n = A090199 n

end A090199

/-! ## A090199.P554111634098060177

`A008550(A077169(n+6)+A005408(n))`
-/

namespace A090199.P554111634098060177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A077169 (n + 6) + A005408 n).toNat

end

end A090199.P554111634098060177

namespace A090199

/-- `A008550(A077169(n+6)+A005408(n))` -/
def P554111634098060177.Spec : Prop :=
  ∀ n, P554111634098060177.a n = A090199 n

end A090199

/-! ## A090199.P2474909992347374802

`A008550(A004280(n+5)+A000096(n+4))`
-/

namespace A090199.P2474909992347374802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A004280 (n + 5) + A000096 (n + 4)).toNat

end

end A090199.P2474909992347374802

namespace A090199

/-- `A008550(A004280(n+5)+A000096(n+4))` -/
def P2474909992347374802.Spec : Prop :=
  ∀ n, P2474909992347374802.a n = A090199 n

end A090199

