import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
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
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
# A323400: Lexicographically earliest sequence such that for all i, j, a(i) = a(j) => f(i) = f(j) where f(n) = [A000035(n), A003557(n), A323363(n)] for all other numbers, except f(n) = 0 for odd primes.

The programs for A323400, there is no canonical definition to state claims against.
-/

/-! ## A323400.P6148107334249527091

`A351030(n+1)+A014306(A351003(n))`
-/

namespace A323400.P6148107334249527091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351030 (n + 1) + A014306 (A351003 n).toNat

end

end A323400.P6148107334249527091

/-! ## A323400.P16195770620022897946

`A351030(n+1)+A157928(A230445(n))`
-/

namespace A323400.P16195770620022897946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351030 (n + 1) + A157928 (A230445 n).toNat

end

end A323400.P16195770620022897946

/-! ## A323400.P656739873842253948

`A351030(n+1)+A054522(A086079(n)^n+1)%A351003(n)`
-/

namespace A323400.P656739873842253948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351030 (n + 1) + Int.tmod (A054522 (A086079 n ^ n + 1).toNat) (A351003 n)

end

end A323400.P656739873842253948

/-! ## A323400.P17988708215988180803

`A351030(n+1)+A014306((A143207(n+1)/30)²)`
-/

namespace A323400.P17988708215988180803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351030 (n + 1) + A014306 (SequenceMachineLib.roundAway (((A143207 (n + 1) : ℚ) / 30) ^ 2)).toNat

end

end A323400.P17988708215988180803

/-! ## A323400.P7771890344477577815

`A351030(n+1)+A333003(A333785(n+1))%A351004(n)`
-/

namespace A323400.P7771890344477577815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351030 (n + 1) + Int.tmod (A333003 (A333785 (n + 1)).toNat) (A351004 n)

end

end A323400.P7771890344477577815

/-!
# A323402: a(n) = 1 if A023900(n) > 0 and A000010(A023900(n)) == A023900(A000010(n)), otherwise a(n) = 0. Here A000010 is Euler totient function phi, and A023900 is its Dirichlet inverse.

The programs for A323402, there is no canonical definition to state claims against.
-/

/-! ## A323402.P13751586250751077670

`char[A306146(n+1)-1]`
-/

namespace A323402.P13751586250751077670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306146 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A323402.P13751586250751077670

/-! ## A323402.P711072780794767255

`char[Δ[A306146(A100727(n))]]`
-/

namespace A323402.P711072780794767255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306146 (A100727 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A323402.P711072780794767255

/-! ## A323402.P5756271188636483704

`char[Δ[A306146(A152271(n))]]`
-/

namespace A323402.P5756271188636483704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306146 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A323402.P5756271188636483704

/-! ## A323402.P3466095536549827185

`char[A023443(A306146(n+1))]`
-/

namespace A323402.P3466095536549827185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A306146 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A323402.P3466095536549827185

/-! ## A323402.P2877178709229046390

`and(A004086(A061775(n+1)!), A323513(n+1))`
-/

namespace A323402.P2877178709229046390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004086 (Nat.factorial (A061775 (n + 1)).toNat)) (A323513 (n + 1))

end

end A323402.P2877178709229046390

/-! ## A323402.P7681436806353768419

`and(A190356(n+1), A323513(n+1))`
-/

namespace A323402.P7681436806353768419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A190356 (n + 1)) (A323513 (n + 1))

end

end A323402.P7681436806353768419

/-!
# A323403: Sum of sigma and its Dirichlet inverse: a(n) = A000203(n) + A046692(n).

The programs for A323403, the canonical program `A323403.P2905685922637902047` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323403 has offset 1).

The definition of A323403 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046692, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323403.P2905685922637902047

`A000203(n+1)+A046692(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A323403

/-- `A000203(n+1)+A046692(n+1)` -/
def P2905685922637902047.Spec : Prop :=
  ∀ n, P2905685922637902047.a n = A323403 (n + 1)

theorem P2905685922637902047.correct : P2905685922637902047.Spec := by
  intro n
  simp only [A323403, Nat.add_sub_cancel]

end A323403

/-! ## A323403.P18201933068341895704

`A046692(n+1)+abs(Δ[A330725(n)])`
-/

namespace A323403.P18201933068341895704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046692 (n + 1) + |f1 (n + 1) - f1 n|

end

end A323403.P18201933068341895704

namespace A323403

/-- `A046692(n+1)+abs(Δ[A330725(n)])` -/
def P18201933068341895704.Spec : Prop :=
  ∀ n, P18201933068341895704.a n = A323403 (n + 1)

end A323403

/-! ## A323403.P7548299683610050986

`A046692(n+1)+sqrt(A072861(n+1))`
-/

namespace A323403.P7548299683610050986
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A046692 (n + 1) : ℝ) + Real.sqrt (A072861 (n + 1) : ℝ)

end

end A323403.P7548299683610050986

namespace A323403

/-- `A046692(n+1)+sqrt(A072861(n+1))` -/
def P7548299683610050986.Spec : Prop :=
  ∀ n, P7548299683610050986.a n = (A323403 (n + 1) : ℝ)

end A323403

/-! ## A323403.P2658032834742434188

`A046692(n+1)+A039653(n+1)+1`
-/

namespace A323403.P2658032834742434188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046692 (n + 1) + (A039653 (n + 1) + 1)

end

end A323403.P2658032834742434188

namespace A323403

/-- `A046692(n+1)+A039653(n+1)+1` -/
def P2658032834742434188.Spec : Prop :=
  ∀ n, P2658032834742434188.a n = A323403 (n + 1)

end A323403

/-! ## A323403.P2757893103934224425

`A046692(n+1)+A088580(n+1)-1`
-/

namespace A323403.P2757893103934224425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046692 (n + 1) + (A088580 (n + 1) - 1)

end

end A323403.P2757893103934224425

namespace A323403

/-- `A046692(n+1)+A088580(n+1)-1` -/
def P2757893103934224425.Spec : Prop :=
  ∀ n, P2757893103934224425.a n = A323403 (n + 1)

end A323403

/-! ## A323403.P17806713576120887733

`A245092(2*n+1)+A046692(n+1)`
-/

namespace A323403.P17806713576120887733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) + A046692 (n + 1)

end

end A323403.P17806713576120887733

namespace A323403

/-- `A245092(2*n+1)+A046692(n+1)` -/
def P17806713576120887733.Spec : Prop :=
  ∀ n, P17806713576120887733.a n = A323403 (n + 1)

end A323403

/-! ## A323403.P9785972859636934998

`A046692(n+1)+A074400(n+1)/2`
-/

namespace A323403.P9785972859636934998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046692 (n + 1) : ℚ) + (A074400 (n + 1) : ℚ) / 2

end

end A323403.P9785972859636934998

namespace A323403

/-- `A046692(n+1)+A074400(n+1)/2` -/
def P9785972859636934998.Spec : Prop :=
  ∀ n, P9785972859636934998.a n = (A323403 (n + 1) : ℚ)

end A323403

/-! ## A323403.P3533730206320856134

`n+1+A046692(n+1)+A001065(n+1)`
-/

namespace A323403.P3533730206320856134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A046692 (n + 1) + A001065 (n + 1))

end

end A323403.P3533730206320856134

namespace A323403

/-- `n+1+A046692(n+1)+A001065(n+1)` -/
def P3533730206320856134.Spec : Prop :=
  ∀ n, P3533730206320856134.a n = A323403 (n + 1)

end A323403

/-! ## A323403.P3985050536404125320

`A005187(n+1)+A046692(n+1)-A294898(n+1)`
-/

namespace A323403.P3985050536404125320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) + (A046692 (n + 1) - A294898 (n + 1))

end

end A323403.P3985050536404125320

namespace A323403

/-- `A005187(n+1)+A046692(n+1)-A294898(n+1)` -/
def P3985050536404125320.Spec : Prop :=
  ∀ n, P3985050536404125320.a n = A323403 (n + 1)

end A323403

/-! ## A323403.P7370676858812958525

`(A378229(n+1)+A341529(n+1))/A003961(n+1)`
-/

namespace A323403.P7370676858812958525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378229 (n + 1) + A341529 (n + 1) : ℚ) / (A003961 (n + 1) : ℚ)

end

end A323403.P7370676858812958525

namespace A323403

/-- `(A378229(n+1)+A341529(n+1))/A003961(n+1)` -/
def P7370676858812958525.Spec : Prop :=
  ∀ n, P7370676858812958525.a n = (A323403 (n + 1) : ℚ)

end A323403

/-! ## A323403.P10028008551758467600

`A046692(n+1)+A006370(A074400(n+1))`
-/

namespace A323403.P10028008551758467600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046692 (n + 1) + A006370 (A074400 (n + 1)).toNat

end

end A323403.P10028008551758467600

namespace A323403

/-- `A046692(n+1)+A006370(A074400(n+1))` -/
def P10028008551758467600.Spec : Prop :=
  ∀ n, P10028008551758467600.a n = A323403 (n + 1)

end A323403

/-! ## A323403.P11459798172692991522

`A046692(n+1)+A002264(A272027(n+1))`
-/

namespace A323403.P11459798172692991522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046692 (n + 1) + A002264 (A272027 (n + 1)).toNat

end

end A323403.P11459798172692991522

namespace A323403

/-- `A046692(n+1)+A002264(A272027(n+1))` -/
def P11459798172692991522.Spec : Prop :=
  ∀ n, P11459798172692991522.a n = A323403 (n + 1)

end A323403

/-!
# A323404: Lexicographically earliest sequence such that for all i, j, a(i) = a(j) => f(i) = f(j) where f(n) = [A003557(n), A023900(n), A063994(n)].

The programs for A323404, there is no canonical definition to state claims against.
-/

/-! ## A323404.P6261176253414769094

`n+1-C(4, C(40, A239086(n+2)))`
-/

namespace A323404.P6261176253414769094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.choose 4 (Nat.choose 40 (A239086 (n + 2)).toNat) : ℤ)

end

end A323404.P6261176253414769094

/-! ## A323404.P8532503078036691524

`A318892(n+1)%(∑[A383508(n)+4]+11)`
-/

namespace A323404.P8532503078036691524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383508 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318892 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A323404.P8532503078036691524

/-! ## A323404.P11225401491738182066

`A318892(n+1)%A014574(A383508(n))`
-/

namespace A323404.P11225401491738182066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318892 (n + 1)) (A014574 (A383508 n).toNat)

end

end A323404.P11225401491738182066

/-! ## A323404.P8350038556850974066

`A318892(n+1)+A000007(A360098(n+1))`
-/

namespace A323404.P8350038556850974066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318892 (n + 1) + A000007 (A360098 (n + 1)).toNat

end

end A323404.P8350038556850974066

/-! ## A323404.P16905624891338732194

`A318892(n+1)+A000007(A142508(n+1))`
-/

namespace A323404.P16905624891338732194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318892 (n + 1) + A000007 (A142508 (n + 1)).toNat

end

end A323404.P16905624891338732194

/-! ## A323404.P15077669242357152452

`A001222(A146318(n+3))*A318892(n+1)`
-/

namespace A323404.P15077669242357152452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A146318 (n + 3)).toNat * A318892 (n + 1)

end

end A323404.P15077669242357152452

/-! ## A323404.P7690182034651281314

`A318892(n+1)+A010815(A073277(2*(n+2)))`
-/

namespace A323404.P7690182034651281314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318892 (n + 1) + A010815 (A073277 (2 * (n + 2))).toNat

end

end A323404.P7690182034651281314

/-! ## A323404.P3864976586262193451

`A318892(n+1)+A318889(A238713(2*n+5))`
-/

namespace A323404.P3864976586262193451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318892 (n + 1) + A318889 (A238713 (2 * n + 5)).toNat

end

end A323404.P3864976586262193451

/-!
# A323405: Lexicographically earliest sequence such that for all i, j, a(i) = a(j) => f(i) = f(j) where f(n) = [A003557(n), A023900(n), A063994(n)] for all other numbers, except f(n) = 0 for odd primes.

The programs for A323405, there is no canonical definition to state claims against.
-/

/-! ## A323405.P6820547403720518237

`A323370(n+1)%∑[A351045(n+3)]`
-/

namespace A323405.P6820547403720518237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351045 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323370 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A323405.P6820547403720518237

/-! ## A323405.P12666086522209575395

`A323370(n+1)+A000007(A294991(n))`
-/

namespace A323405.P12666086522209575395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323370 (n + 1) + A000007 (A294991 n).toNat

end

end A323405.P12666086522209575395

/-! ## A323405.P361275659358404488

`A323370(n+1)%A025518(A022304(n))`
-/

namespace A323405.P361275659358404488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323370 (n + 1)) (A025518 (A022304 n).toNat)

end

end A323405.P361275659358404488

/-! ## A323405.P8413361551688681472

`A323370(n+1)+A007949(A065267(n+1))`
-/

namespace A323405.P8413361551688681472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323370 (n + 1) + A007949 (A065267 (n + 1)).toNat

end

end A323405.P8413361551688681472

/-! ## A323405.P1374549310232358367

`lcm(A163810(A139847(n+1)), A323370(n+1))`
-/

namespace A323405.P1374549310232358367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A163810 (A139847 (n + 1)).toNat) (A323370 (n + 1))

end

end A323405.P1374549310232358367

/-! ## A323405.P18405887429913847613

`A323370(n+1)%A002189(n)`
-/

namespace A323405.P18405887429913847613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323370 (n + 1)) (A002189 n)

end

end A323405.P18405887429913847613

/-! ## A323405.P15600619293891629123

`A323370(n+1)/A323022(A235265(n+1))`
-/

namespace A323405.P15600619293891629123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323370 (n + 1) : ℚ) / (A323022 (A235265 (n + 1)).toNat : ℚ)

end

end A323405.P15600619293891629123

/-! ## A323405.P3864273736054242439

`A323370(n+1)+A010054(A055998(2*n+3))`
-/

namespace A323405.P3864273736054242439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323370 (n + 1) + A010054 (A055998 (2 * n + 3)).toNat

end

end A323405.P3864273736054242439

/-! ## A323405.P1183951006771023808

`A001051(A263008(n+1))*A323370(n+1)`
-/

namespace A323405.P1183951006771023808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001051 (A263008 (n + 1)).toNat * A323370 (n + 1)

end

end A323405.P1183951006771023808

/-!
# A323406: Greatest common divisor of Product (p_i^e_i)-1 and Product (p_i^e_i)+1, when n = Product (p_i^e_i): a(n) = gcd(A047994(n), A034448(n)).

The programs for A323406, the canonical program `A323406.P6021964609825623962` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323406 has offset 1).

The definition of A323406 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A047994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323406.P11415972862386932007

`gcd(A034448(n+1), A047994(n+1))`
-/

namespace A323406.P11415972862386932007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034448 (n + 1)) (A047994 (n + 1))

end

end A323406.P11415972862386932007

namespace A323406

/-- `gcd(A034448(n+1), A047994(n+1))` -/
def P11415972862386932007.Spec : Prop :=
  ∀ n, (P11415972862386932007.a n : ℤ) = A323406 (n + 1)

end A323406

/-! ## A323406.P6021964609825623962

`gcd(A047994(n+1), A034448(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A323406

/-- `gcd(A047994(n+1), A034448(n+1))` -/
def P6021964609825623962.Spec : Prop :=
  ∀ n, (P6021964609825623962.a n : ℤ) = A323406 (n + 1)

theorem P6021964609825623962.correct : P6021964609825623962.Spec := by
  intro n
  simp only [A323406, Nat.add_sub_cancel]

end A323406

/-! ## A323406.P9445067689984427334

`gcd(A345451(n+1)+1, A028310(A047994(n+1)))`
-/

namespace A323406.P9445067689984427334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A345451 (n + 1) + 1) (A028310 (A047994 (n + 1)).toNat)

end

end A323406.P9445067689984427334

namespace A323406

/-- `gcd(A345451(n+1)+1, A028310(A047994(n+1)))` -/
def P9445067689984427334.Spec : Prop :=
  ∀ n, (P9445067689984427334.a n : ℤ) = A323406 (n + 1)

end A323406

/-! ## A323406.P16004106602251761500

`gcd(A034460(n+1)+1+n, A047994(A000027(n+1)))`
-/

namespace A323406.P16004106602251761500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034460 (n + 1) + 1 + (n : ℤ)) (A047994 (A000027 (n + 1)).toNat)

end

end A323406.P16004106602251761500

namespace A323406

/-- `gcd(A034460(n+1)+1+n, A047994(A000027(n+1)))` -/
def P16004106602251761500.Spec : Prop :=
  ∀ n, (P16004106602251761500.a n : ℤ) = A323406 (n + 1)

end A323406

/-! ## A323406.P2480289534135436006

`gcd(A333557(n+1), A343569(n+1))/A034444(n+1)`
-/

namespace A323406.P2480289534135436006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A333557 (n + 1)) (A343569 (n + 1)) : ℚ) / (A034444 (n + 1) : ℚ)

end

end A323406.P2480289534135436006

namespace A323406

/-- `gcd(A333557(n+1), A343569(n+1))/A034444(n+1)` -/
def P2480289534135436006.Spec : Prop :=
  ∀ n, P2480289534135436006.a n = (A323406 (n + 1) : ℚ)

end A323406

/-! ## A323406.P16032963810456561734

`A191414(n+1)/lcm(A034448(n+1), A047994(n+1))`
-/

namespace A323406.P16032963810456561734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191414 (n + 1) : ℚ) / (Int.lcm (A034448 (n + 1)) (A047994 (n + 1)) : ℚ)

end

end A323406.P16032963810456561734

namespace A323406

/-- `A191414(n+1)/lcm(A034448(n+1), A047994(n+1))` -/
def P16032963810456561734.Spec : Prop :=
  ∀ n, P16032963810456561734.a n = (A323406 (n + 1) : ℚ)

end A323406

/-! ## A323406.P2239187901653266227

`gcd(A129468(n+1)+2*(n+1), A191414(n+1)/A034448(n+1))`
-/

namespace A323406.P2239187901653266227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129468 (n + 1) + (2 * (n + 1) : ℤ)) (SequenceMachineLib.roundAway ((A191414 (n + 1) : ℚ) / (A034448 (n + 1) : ℚ)))

end

end A323406.P2239187901653266227

namespace A323406

/-- `gcd(A129468(n+1)+2*(n+1), A191414(n+1)/A034448(n+1))` -/
def P2239187901653266227.Spec : Prop :=
  ∀ n, (P2239187901653266227.a n : ℤ) = A323406 (n + 1)

end A323406

/-!
# A323407: Dirichlet inverse of A047994, unitary phi.

The programs for A323407, there is no canonical definition to state claims against.
-/

/-! ## A323407.P11734380286608250136

`A323408(n+1)-A047994(n+1)`
-/

namespace A323407.P11734380286608250136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323408 (n + 1) - A047994 (n + 1)

end

end A323407.P11734380286608250136

/-! ## A323407.P10946452142017942012

`A323408(n+1)+A323410(n+1)-(n+1)`
-/

namespace A323407.P10946452142017942012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323408 (n + 1) + (A323410 (n + 1) - (n + 1 : ℤ))

end

end A323407.P10946452142017942012

/-! ## A323407.P837873260057135071

`A323408(n+1)-A000203((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #-1]`
-/

namespace A323407.P837873260057135071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323408 (n + 1) - A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat * (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1))

end

end A323407.P837873260057135071

/-! ## A323407.P796508653608110994

`A323408(n+1)-A344875(A026741(n+1))`
-/

namespace A323407.P796508653608110994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323408 (n + 1) - A344875 (A026741 (n + 1)).toNat

end

end A323407.P796508653608110994

/-! ## A323407.P10511121524789190768

`A323408(n+1)-(A344874(n+1)+A011772(n+1))`
-/

namespace A323407.P10511121524789190768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323408 (n + 1) - (A344874 (n + 1) + A011772 (n + 1))

end

end A323407.P10511121524789190768

/-! ## A323407.P1445053718307910556

`A323408(n+1)-(A346607(n+1)+A344005(n+1))`
-/

namespace A323407.P1445053718307910556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323408 (n + 1) - (A346607 (n + 1) + A344005 (n + 1))

end

end A323407.P1445053718307910556

/-! ## A323407.P15983880612580544946

`A323408(n+1)-A173557(n+1)*A335341(n+1)`
-/

namespace A323407.P15983880612580544946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323408 (n + 1) - A173557 (n + 1) * A335341 (n + 1)

end

end A323407.P15983880612580544946

/-! ## A323407.P9925294710187666605

`A323408(n+1)-A345937(n+1)*A345938(n+1)`
-/

namespace A323407.P9925294710187666605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323408 (n + 1) - A345937 (n + 1) * A345938 (n + 1)

end

end A323407.P9925294710187666605

/-! ## A323407.P10682593135003138236

`A323408(n+1)-A191414(n+1)/A034448(n+1)`
-/

namespace A323407.P10682593135003138236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323408 (n + 1) : ℚ) - (A191414 (n + 1) : ℚ) / (A034448 (n + 1) : ℚ)

end

end A323407.P10682593135003138236

/-! ## A323407.P1115934125805233252

`A323408(n+1)-A000203(A003557(n+1))*A173557(n+1)`
-/

namespace A323407.P1115934125805233252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323408 (n + 1) - A000203 (A003557 (n + 1)).toNat * A173557 (n + 1)

end

end A323407.P1115934125805233252

/-! ## A323407.P11205106280912495685

`A323408(n+1)-A344875(Δ[A001318(n)])`
-/

namespace A323407.P11205106280912495685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323408 (n + 1) - A344875 (f1 (n + 1) - f1 n).toNat

end

end A323407.P11205106280912495685

/-!
# A323408: Sum of unitary phi and its Dirichlet inverse: a(n) = A047994(n) + A323407(n).

The programs for A323408, there is no canonical definition to state claims against.
-/

/-! ## A323408.P14177845615492541162

`A047994(n+1)+A323407(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323408.P14177845615492541162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1) + A323407 (n + 1)

end

end A323408.P14177845615492541162

/-! ## A323408.P15293280208661281839

`n+1+A323407(n+1)-A323410(n+1)`
-/

namespace A323408.P15293280208661281839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A323407 (n + 1) - A323410 (n + 1))

end

end A323408.P15293280208661281839

/-! ## A323408.P14641708951355756355

`A323407(n+1)+A000203((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #-1]`
-/

namespace A323408.P14641708951355756355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323407 (n + 1) + A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat * (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1))

end

end A323408.P14641708951355756355

/-! ## A323408.P7970930631063102292

`A344875(A026741(n+1))+A323407(n+1)`
-/

namespace A323408.P7970930631063102292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344875 (A026741 (n + 1)).toNat + A323407 (n + 1)

end

end A323408.P7970930631063102292

/-! ## A323408.P1643540987227870068

`A011772(n+1)+A344874(n+1)+A323407(n+1)`
-/

namespace A323408.P1643540987227870068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (n + 1) + (A344874 (n + 1) + A323407 (n + 1))

end

end A323408.P1643540987227870068

/-! ## A323408.P5326427974367791550

`A323407(n+1)+A346607(n+1)+A344005(n+1)`
-/

namespace A323408.P5326427974367791550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323407 (n + 1) + (A346607 (n + 1) + A344005 (n + 1))

end

end A323408.P5326427974367791550

/-! ## A323408.P9429559401221042336

`A323407(n+1)+A173557(n+1)*A335341(n+1)`
-/

namespace A323408.P9429559401221042336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323407 (n + 1) + A173557 (n + 1) * A335341 (n + 1)

end

end A323408.P9429559401221042336

/-! ## A323408.P14107379749219770337

`A323407(n+1)+A345937(n+1)*A345938(n+1)`
-/

namespace A323408.P14107379749219770337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323407 (n + 1) + A345937 (n + 1) * A345938 (n + 1)

end

end A323408.P14107379749219770337

/-! ## A323408.P13021829940350820895

`A323407(n+1)+A191414(n+1)/A034448(n+1)`
-/

namespace A323408.P13021829940350820895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323407 (n + 1) : ℚ) + (A191414 (n + 1) : ℚ) / (A034448 (n + 1) : ℚ)

end

end A323408.P13021829940350820895

/-! ## A323408.P14863730928507838230

`A323407(n+1)+A000203(A003557(n+1))*A173557(n+1)`
-/

namespace A323408.P14863730928507838230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323407 (n + 1) + A000203 (A003557 (n + 1)).toNat * A173557 (n + 1)

end

end A323408.P14863730928507838230

/-! ## A323408.P15123538097002830505

`A344875(Δ[A001318(n)])+A323407(n+1)`
-/

namespace A323408.P15123538097002830505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344875 (f1 (n + 1) - f1 n).toNat + A323407 (n + 1)

end

end A323408.P15123538097002830505

/-!
# A323409: Greatest common divisor of Product (p_i^e_i)-1 and n, when n = Product (p_i^e_i); a(n) = gcd(n, A047994(n)).

The programs for A323409, the canonical program `A323409.P15899352784078456227` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323409 has offset 1).

The definition of A323409 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323409.P15899352784078456227

`gcd(n+1, A047994(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A323409

/-- `gcd(n+1, A047994(n+1))` -/
def P15899352784078456227.Spec : Prop :=
  ∀ n, (P15899352784078456227.a n : ℤ) = A323409 (n + 1)

theorem P15899352784078456227.correct : P15899352784078456227.Spec := by
  intro n
  simp only [A323409, Nat.add_sub_cancel]

end A323409

/-! ## A323409.P8405991808026991886

`(n+1)/A319677(n+1)`
-/

namespace A323409.P8405991808026991886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A319677 (n + 1) : ℚ)

end

end A323409.P8405991808026991886

namespace A323409

/-- `(n+1)/A319677(n+1)` -/
def P8405991808026991886.Spec : Prop :=
  ∀ n, P8405991808026991886.a n = (A323409 (n + 1) : ℚ)

end A323409

/-! ## A323409.P10917681606476810215

`gcd(A047994(n+1), A131738(n))`
-/

namespace A323409.P10917681606476810215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047994 (n + 1)) (A131738 n)

end

end A323409.P10917681606476810215

namespace A323409

/-- `gcd(A047994(n+1), A131738(n))` -/
def P10917681606476810215.Spec : Prop :=
  ∀ n, (P10917681606476810215.a n : ℤ) = A323409 (n + 1)

end A323409

/-! ## A323409.P8137590725266493033

`gcd(A071262(n), A345938(n+1))`
-/

namespace A323409.P8137590725266493033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071262 n) (A345938 (n + 1))

end

end A323409.P8137590725266493033

namespace A323409

/-- `gcd(A071262(n), A345938(n+1))` -/
def P8137590725266493033.Spec : Prop :=
  ∀ n, (P8137590725266493033.a n : ℤ) = A323409 (n + 1)

end A323409

/-! ## A323409.P754923570316498779

`A047994(n+1)/A319676(n+1)`
-/

namespace A323409.P754923570316498779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (n + 1) : ℚ) / (A319676 (n + 1) : ℚ)

end

end A323409.P754923570316498779

namespace A323409

/-- `A047994(n+1)/A319676(n+1)` -/
def P754923570316498779.Spec : Prop :=
  ∀ n, P754923570316498779.a n = (A323409 (n + 1) : ℚ)

end A323409

/-! ## A323409.P15985915202205268435

`gcd(A014683(n+1), A323410(n+1))`
-/

namespace A323409.P15985915202205268435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014683 (n + 1)) (A323410 (n + 1))

end

end A323409.P15985915202205268435

namespace A323409

/-- `gcd(A014683(n+1), A323410(n+1))` -/
def P15985915202205268435.Spec : Prop :=
  ∀ n, (P15985915202205268435.a n : ℤ) = A323409 (n + 1)

end A323409

/-! ## A323409.P3529870159336226047

`gcd(A005451(n+1), A385195(n+1))`
-/

namespace A323409.P3529870159336226047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005451 (n + 1)) (A385195 (n + 1))

end

end A323409.P3529870159336226047

namespace A323409

/-- `gcd(A005451(n+1), A385195(n+1))` -/
def P3529870159336226047.Spec : Prop :=
  ∀ n, (P3529870159336226047.a n : ℤ) = A323409 (n + 1)

end A323409

/-! ## A323409.P5391170034889344164

`gcd(A345938(n+1)+A028253(n+1), A028253(n+1))`
-/

namespace A323409.P5391170034889344164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A345938 (n + 1) + A028253 (n + 1)) (A028253 (n + 1))

end

end A323409.P5391170034889344164

namespace A323409

/-- `gcd(A345938(n+1)+A028253(n+1), A028253(n+1))` -/
def P5391170034889344164.Spec : Prop :=
  ∀ n, (P5391170034889344164.a n : ℤ) = A323409 (n + 1)

end A323409

/-! ## A323409.P9462493983510837381

`lcm(A319676(n+1), A345938(n+1))/A319676(n+1)`
-/

namespace A323409.P9462493983510837381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A319676 (n + 1)) (A345938 (n + 1)) : ℚ) / (A319676 (n + 1) : ℚ)

end

end A323409.P9462493983510837381

namespace A323409

/-- `lcm(A319676(n+1), A345938(n+1))/A319676(n+1)` -/
def P9462493983510837381.Spec : Prop :=
  ∀ n, P9462493983510837381.a n = (A323409 (n + 1) : ℚ)

end A323409

/-! ## A323409.P6209954561672190868

`gcd(A233583(n+2), A344875(A026741(n+1)))`
-/

namespace A323409.P6209954561672190868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A233583 (n + 2)) (A344875 (A026741 (n + 1)).toNat)

end

end A323409.P6209954561672190868

namespace A323409

/-- `gcd(A233583(n+2), A344875(A026741(n+1)))` -/
def P6209954561672190868.Spec : Prop :=
  ∀ n, (P6209954561672190868.a n : ℤ) = A323409 (n + 1)

end A323409

/-! ## A323409.P12898494735700126167

`val(A000079(n), A000079(A319677(n+1)))+1`
-/

namespace A323409.P12898494735700126167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000079 n).toNat (A000079 (A319677 (n + 1)).toNat).toNat + 1

end

end A323409.P12898494735700126167

namespace A323409

/-- `val(A000079(n), A000079(A319677(n+1)))+1` -/
def P12898494735700126167.Spec : Prop :=
  ∀ n, (P12898494735700126167.a n : ℤ) = A323409 (n + 1)

end A323409

/-! ## A323409.P16394926891507973431

`A047994(n+1)/A164306(A047994(n+1)+A000217(n))`
-/

namespace A323409.P16394926891507973431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (n + 1) : ℚ) / (A164306 (A047994 (n + 1) + A000217 n).toNat : ℚ)

end

end A323409.P16394926891507973431

namespace A323409

/-- `A047994(n+1)/A164306(A047994(n+1)+A000217(n))` -/
def P16394926891507973431.Spec : Prop :=
  ∀ n, P16394926891507973431.a n = (A323409 (n + 1) : ℚ)

end A323409

/-!
# A323410: Unitary analog of cototient function A051953: a(n) = n - A047994(n).

The programs for A323410, the canonical program `A323410.P6927638298555409235` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323410 has offset 1).

The definition of A323410 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323410.P6927638298555409235

`n+1-A047994(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A323410

/-- `n+1-A047994(n+1)` -/
def P6927638298555409235.Spec : Prop :=
  ∀ n, P6927638298555409235.a n = A323410 (n + 1)

theorem P6927638298555409235.correct : P6927638298555409235.Spec := by
  intro n
  simp only [A323410, Nat.add_sub_cancel]

end A323410

/-! ## A323410.P7951543137460785773

`n+1-A000203((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #-1]`
-/

namespace A323410.P7951543137460785773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat * (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1))

end

end A323410.P7951543137460785773

namespace A323410

/-- `n+1-A000203((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #-1]` -/
def P7951543137460785773.Spec : Prop :=
  ∀ n, P7951543137460785773.a n = A323410 (n + 1)

end A323410

/-! ## A323410.P16951428284891250567

`A024000(A047994(n+1))+n`
-/

namespace A323410.P16951428284891250567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A047994 (n + 1)).toNat + (n : ℤ)

end

end A323410.P16951428284891250567

namespace A323410

/-- `A024000(A047994(n+1))+n` -/
def P16951428284891250567.Spec : Prop :=
  ∀ n, P16951428284891250567.a n = A323410 (n + 1)

end A323410

/-! ## A323410.P17035612087157611342

`1-A344875(A026741(n+1))+n`
-/

namespace A323410.P17035612087157611342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A344875 (A026741 (n + 1)).toNat + (n : ℤ)

end

end A323410.P17035612087157611342

namespace A323410

/-- `1-A344875(A026741(n+1))+n` -/
def P17035612087157611342.Spec : Prop :=
  ∀ n, P17035612087157611342.a n = A323410 (n + 1)

end A323410

/-! ## A323410.P14062771945992868327

`A182665(n+1)-A346607(n+1)`
-/

namespace A323410.P14062771945992868327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182665 (n + 1) - A346607 (n + 1)

end

end A323410.P14062771945992868327

namespace A323410

/-- `A182665(n+1)-A346607(n+1)` -/
def P14062771945992868327.Spec : Prop :=
  ∀ n, P14062771945992868327.a n = A323410 (n + 1)

end A323410

/-! ## A323410.P401021240851986149

`A344763(n+1)-A344874(n+1)`
-/

namespace A323410.P401021240851986149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344763 (n + 1) - A344874 (n + 1)

end

end A323410.P401021240851986149

namespace A323410

/-- `A344763(n+1)-A344874(n+1)` -/
def P401021240851986149.Spec : Prop :=
  ∀ n, P401021240851986149.a n = A323410 (n + 1)

end A323410

/-! ## A323410.P3316788910763178208

`Δ[A000290(n)]%(A047994(n+1)+n)`
-/

namespace A323410.P3316788910763178208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A047994 (n + 1) + (n : ℤ))

end

end A323410.P3316788910763178208

namespace A323410

/-- `Δ[A000290(n)]%(A047994(n+1)+n)` -/
def P3316788910763178208.Spec : Prop :=
  ∀ n, P3316788910763178208.a n = A323410 (n + 1)

end A323410

/-! ## A323410.P11050320583628819389

`n+1-(A323408(n+1)-A323407(n+1))`
-/

namespace A323410.P11050320583628819389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A323408 (n + 1) - A323407 (n + 1))

end

end A323410.P11050320583628819389

namespace A323410

/-- `n+1-(A323408(n+1)-A323407(n+1))` -/
def P11050320583628819389.Spec : Prop :=
  ∀ n, P11050320583628819389.a n = A323410 (n + 1)

end A323410

/-! ## A323410.P12311484580145145890

`n+1-A000203(A003557(n+1))*A173557(n+1)`
-/

namespace A323410.P12311484580145145890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000203 (A003557 (n + 1)).toNat * A173557 (n + 1)

end

end A323410.P12311484580145145890

namespace A323410

/-- `n+1-A000203(A003557(n+1))*A173557(n+1)` -/
def P12311484580145145890.Spec : Prop :=
  ∀ n, P12311484580145145890.a n = A323410 (n + 1)

end A323410

/-! ## A323410.P2686132044157683648

`(A319677(n+1)-A319676(n+1))*A323409(n+1)`
-/

namespace A323410.P2686132044157683648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A319677 (n + 1) - A319676 (n + 1)) * A323409 (n + 1)

end

end A323410.P2686132044157683648

namespace A323410

/-- `(A319677(n+1)-A319676(n+1))*A323409(n+1)` -/
def P2686132044157683648.Spec : Prop :=
  ∀ n, P2686132044157683648.a n = A323410 (n + 1)

end A323410

/-! ## A323410.P8874163046505813611

`n+1-A392085(A102631(n+1))`
-/

namespace A323410.P8874163046505813611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A392085 (A102631 (n + 1)).toNat

end

end A323410.P8874163046505813611

namespace A323410

/-- `n+1-A392085(A102631(n+1))` -/
def P8874163046505813611.Spec : Prop :=
  ∀ n, P8874163046505813611.a n = A323410 (n + 1)

end A323410

/-! ## A323410.P14932056546521970678

`n+1-A392085((n+1)²)`
-/

namespace A323410.P14932056546521970678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A392085 ((n + 1) ^ 2)

end

end A323410.P14932056546521970678

namespace A323410

/-- `n+1-A392085((n+1)²)` -/
def P14932056546521970678.Spec : Prop :=
  ∀ n, P14932056546521970678.a n = A323410 (n + 1)

end A323410

/-!
# A323411: Dirichlet inverse of A064664, the inverse permutation of EKG-sequence.

The programs for A323411, there is no canonical definition to state claims against.
-/

/-! ## A323411.P9756098733303220117

`A323412(n+1)-A064664(n+1)`
-/

namespace A323411.P9756098733303220117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323412 (n + 1) - A064664 (n + 1)

end

end A323411.P9756098733303220117

/-! ## A323411.P14602364661269494904

`A323412(n+1)-(A064421(n+1)+1)`
-/

namespace A323411.P14602364661269494904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323412 (n + 1) - (A064421 (n + 1) + 1)

end

end A323411.P14602364661269494904

/-! ## A323411.P1744881999835800794

`∑{d}[n+1, A055615(#)*A349616((n+1)/#)]`
-/

namespace A323411.P1744881999835800794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A349616 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323411.P1744881999835800794

/-! ## A323411.P10077265316142085222

`∑{d}[n+1, A349400(#)*A349613((n+1)/#)]`
-/

namespace A323411.P10077265316142085222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349400 d * A349613 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323411.P10077265316142085222

/-! ## A323411.P15898947434523037898

`A323412(n+1)-(A255482(n+1)+A255479(n+1))`
-/

namespace A323411.P15898947434523037898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323412 (n + 1) - (A255482 (n + 1) + A255479 (n + 1))

end

end A323411.P15898947434523037898

/-! ## A323411.P900565138875211052

`A323412(n+1)-(A304527(n+1)+A304526(n+1))`
-/

namespace A323411.P900565138875211052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323412 (n + 1) - (A304527 (n + 1) + A304526 (n + 1))

end

end A323411.P900565138875211052

/-!
# A323412: Sum of the inverse permutation of EKG-sequence, A064664, and its Dirichlet inverse, A323411.

The programs for A323412, there is no canonical definition to state claims against.
-/

/-! ## A323412.P8850572645508102610

`A064664(n+1)+A323411(n+1)`
-/

namespace A323412.P8850572645508102610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (n + 1) + A323411 (n + 1)

end

end A323412.P8850572645508102610

/-! ## A323412.P14062245952005383750

`A064421(n+1)+A323411(n+1)+1`
-/

namespace A323412.P14062245952005383750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064421 (n + 1) + (A323411 (n + 1) + 1)

end

end A323412.P14062245952005383750

/-! ## A323412.P12000452480785252948

`A323411(n+1)+∑{d}[n+1, A304526(#)]`
-/

namespace A323412.P12000452480785252948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323411 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A304526 d

end

end A323412.P12000452480785252948

/-! ## A323412.P2547895266428205305

`A323411(n+1)+∑{d}[n+1, #*A349617((n+1)/#)]`
-/

namespace A323412.P2547895266428205305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323411 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349617 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323412.P2547895266428205305

/-! ## A323412.P9781245437950299806

`A255479(n+1)+A323411(n+1)+A255482(n+1)`
-/

namespace A323412.P9781245437950299806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255479 (n + 1) + (A323411 (n + 1) + A255482 (n + 1))

end

end A323412.P9781245437950299806

/-! ## A323412.P4705337555267455027

`A304526(n+1)+A323411(n+1)+A304527(n+1)`
-/

namespace A323412.P4705337555267455027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304526 (n + 1) + (A323411 (n + 1) + A304527 (n + 1))

end

end A323412.P4705337555267455027

/-! ## A323412.P15290467542647531303

`A323411(n+1)+∑{d}[n+1, A064413(#)*A349614((n+1)/#)]`
-/

namespace A323412.P15290467542647531303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323411 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A064413 d * A349614 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323412.P15290467542647531303

/-!
# A323413: Infinitary analog of cototient function A051953: a(n) = n - A091732(n).

The programs for A323413, there is no canonical definition to state claims against.
-/

/-! ## A323413.P11533357592376952482

`n+1-A091732(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323413.P11533357592376952482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A091732 (n + 1)

end

end A323413.P11533357592376952482

/-! ## A323413.P15985025864483032832

`A005843(n+1)%(A091732(n+1)+n+1)`
-/

namespace A323413.P15985025864483032832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (n + 1)) (A091732 (n + 1) + (n + 1 : ℤ))

end

end A323413.P15985025864483032832

/-! ## A323413.P5280652365130550244

`A091732(n+1)/A064179(A000028(n+1))+n+1`
-/

namespace A323413.P5280652365130550244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091732 (n + 1) : ℚ) / (A064179 (A000028 (n + 1)).toNat : ℚ) + (n + 1 : ℚ)

end

end A323413.P5280652365130550244

/-! ## A323413.P3793406230508363613

`(A061579(A061579(n))*A091732(n+1))%(n+1)`
-/

namespace A323413.P3793406230508363613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061579 (A061579 n).toNat * A091732 (n + 1)) (n + 1 : ℤ)

end

end A323413.P3793406230508363613

/-! ## A323413.P8546026216271295049

`A064179(A050376(n+1))*A091732(n+1)+n+1`
-/

namespace A323413.P8546026216271295049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (A050376 (n + 1)).toNat * A091732 (n + 1) + (n + 1 : ℤ)

end

end A323413.P8546026216271295049

/-! ## A323413.P8580643577529086930

`(n*A091732(n+1))%A008619(A005843(n))`
-/

namespace A323413.P8580643577529086930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A091732 (n + 1)) (A008619 (A005843 n).toNat)

end

end A323413.P8580643577529086930

/-!
# A323414: Numbers whose carryless sum of divisors is zero.

The programs for A323414, there is no canonical definition to state claims against.
-/

/-! ## A323414.P15421108926209892278

`eq[0, A323394(A233583(n+1))]`
-/

namespace A323414.P15421108926209892278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323394 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323414.P15421108926209892278

/-!
# A323416: a(n) = (n-1)! * (10^n - 1) / 9.

The programs for A323416, the canonical program `A323416.P13129628002392901990` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323416 has offset 1).

The definition of A323416 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323416.P13129628002392901990

`(10^(n+1)-1)/9*n!`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A323416

/-- `(10^(n+1)-1)/9*n!` -/
def P13129628002392901990.Spec : Prop :=
  ∀ n, P13129628002392901990.a n = (A323416 (n + 1) : ℚ)

end A323416

/-! ## A323416.P18391136238738970258

`n!*(10^(n+1)-1)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323416.P18391136238738970258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) * ((10 ^ (n + 1) : ℤ) - 1) : ℚ) / 9

end

end A323416.P18391136238738970258

namespace A323416

/-- `n!*(10^(n+1)-1)/9` -/
def P18391136238738970258.Spec : Prop :=
  ∀ n, P18391136238738970258.a n = (A323416 (n + 1) : ℚ)

end A323416

/-! ## A323416.P10079028780170470517

`n!*∑[10^n]`
-/

namespace A323416.P10079028780170470517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A323416.P10079028780170470517

namespace A323416

/-- `n!*∑[10^n]` -/
def P10079028780170470517.Spec : Prop :=
  ∀ n, (P10079028780170470517.a n : ℤ) = A323416 (n + 1)

end A323416

/-! ## A323416.P12124213145408416280

`∑[10^n]*∏[round(1/acot(n))]`
-/

namespace A323416.P12124213145408416280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A323416.P12124213145408416280

namespace A323416

/-- `∑[10^n]*∏[round(1/acot(n))]` -/
def P12124213145408416280.Spec : Prop :=
  ∀ n, P12124213145408416280.a n = A323416 (n + 1)

end A323416

/-! ## A323416.P6407410267297014145

`∑[10^n]*∏[round(sqrt(n²+1))]`
-/

namespace A323416.P6407410267297014145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A323416.P6407410267297014145

namespace A323416

/-- `∑[10^n]*∏[round(sqrt(n²+1))]` -/
def P6407410267297014145.Spec : Prop :=
  ∀ n, P6407410267297014145.a n = A323416 (n + 1)

end A323416

/-!
# A323418: The third greedy 3-free sequence on nonnegative integers.

The programs for A323418, there is no canonical definition to state claims against.
-/

/-! ## A323418.P17671250198170562469

`eq[2, A006997(n)]`
-/

namespace A323418.P17671250198170562469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006997 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323418.P17671250198170562469

/-! ## A323418.P14123310876886022913

`eq[3, A100480(n+1)]`
-/

namespace A323418.P14123310876886022913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323418.P14123310876886022913

/-! ## A323418.P17534659028692434158

`eq[3, A268811(n+1)]`
-/

namespace A323418.P17534659028692434158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268811 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323418.P17534659028692434158

/-! ## A323418.P6813462396132864376

`eq[4, A309890(n+1)]`
-/

namespace A323418.P6813462396132864376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309890 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323418.P6813462396132864376

/-! ## A323418.P3591021970903916426

`A262057(∑[n+3]+1)`
-/

namespace A323418.P3591021970903916426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262057 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A323418.P3591021970903916426

/-! ## A323418.P13804219721492210204

`eq[1, (n-A353824(n))²]`
-/

namespace A323418.P13804219721492210204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A353824 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323418.P13804219721492210204

/-! ## A323418.P5297325916093241847

`eq[1, (n-A353825(n))²]`
-/

namespace A323418.P5297325916093241847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A353825 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323418.P5297325916093241847

/-! ## A323418.P11060909079788192222

`eq[2, A100480(A016777(n))-2]`
-/

namespace A323418.P11060909079788192222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100480 (A016777 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323418.P11060909079788192222

/-! ## A323418.P3874641186001562670

`lt[(2-A006997(n))², A057427(n)]`
-/

namespace A323418.P3874641186001562670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A006997 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A323418.P3874641186001562670

/-! ## A323418.P3847856905261870902

`lt[A006997(n)!, A006997(3*n)]`
-/

namespace A323418.P3847856905261870902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A006997 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006997 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A323418.P3847856905261870902

/-!
# A323419: The fourth greedy 3-free sequence on nonnegative integers.

The programs for A323419, there is no canonical definition to state claims against.
-/

/-! ## A323419.P3784378838764373382

`eq[3, A006997(n)]`
-/

namespace A323419.P3784378838764373382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006997 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323419.P3784378838764373382

/-! ## A323419.P12040913905143961340

`eq[4, A100480(n+1)]`
-/

namespace A323419.P12040913905143961340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323419.P12040913905143961340

/-! ## A323419.P15780841841160188192

`eq[5, A268811(n+1)]`
-/

namespace A323419.P15780841841160188192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268811 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323419.P15780841841160188192

/-! ## A323419.P9663946426741350531

`eq[5, A309890(n+1)]`
-/

namespace A323419.P9663946426741350531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309890 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323419.P9663946426741350531

/-! ## A323419.P18060414060141065336

`A262057(∑[n+4]+3)`
-/

namespace A323419.P18060414060141065336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262057 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A323419.P18060414060141065336

/-!
# A323420: Lexicographically earliest sequence of positive integers such that for any n > 0, a(n + a(n)) > a(n).

The programs for A323420, there is no canonical definition to state claims against.
-/

/-! ## A323420.P12797300300643336338

`xor(A130517(n+1), A359150(A174266(n+1)))`
-/

namespace A323420.P12797300300643336338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A130517 (n + 1)) (A359150 (A174266 (n + 1)).toNat)

end

end A323420.P12797300300643336338

/-! ## A323420.P17025995746247348331

`A210535(lt[A037291(n+4), A060027(n+3)])`
-/

namespace A323420.P17025995746247348331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037291 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060027 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210535 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A323420.P17025995746247348331

/-! ## A323420.P7608281091044998676

`A194987(∑[A212382(A085147(n+1))])`
-/

namespace A323420.P7608281091044998676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212382 (A085147 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194987 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A323420.P7608281091044998676

/-! ## A323420.P14266471475808761337

`A100002(A187829(n+1)+A004524(n))`
-/

namespace A323420.P14266471475808761337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100002 (A187829 (n + 1) + A004524 n).toNat

end

end A323420.P14266471475808761337

/-! ## A323420.P8580712015412091119

`A194976(A187829(n+1)+A052374(n))`
-/

namespace A323420.P8580712015412091119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194976 (A187829 (n + 1) + A052374 n).toNat

end

end A323420.P8580712015412091119

/-!
# A323422: Multiples of three whose sum of digits is not divisible by 3 until the final digit.

The programs for A323422, there is no canonical definition to state claims against.
-/

/-! ## A323422.P14246535180461993634

`record[xor(A128834(n), A329424(n))]`
-/

namespace A323422.P14246535180461993634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A128834 n) (A329424 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323422.P14246535180461993634

/-! ## A323422.P17847760841913537387

`record[3*A118766(A118766(n))]`
-/

namespace A323422.P17847760841913537387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A118766 (A118766 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323422.P17847760841913537387

/-! ## A323422.P12235489307419965556

`A008585(record[A118766(A118766(n))])`
-/

namespace A323422.P12235489307419965556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118766 (A118766 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A323422.P12235489307419965556

/-!
# A323423: Number of tilings of a 12 X n rectangle using 2*n copies of the disconnected shape [ooo___ooo].

The programs for A323423, there is no canonical definition to state claims against.
-/

/-! ## A323423.P3663047807824417558

`A236577(A024684(n+1)%A036432(n))`
-/

namespace A323423.P3663047807824417558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236577 (Int.tmod (A024684 (n + 1)) (A036432 n)).toNat

end

end A323423.P3663047807824417558

/-! ## A323423.P7323506129567675750

`A236577(A049007(n)²*A024684(n+1))`
-/

namespace A323423.P7323506129567675750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236577 (A049007 n ^ 2 * A024684 (n + 1)).toNat

end

end A323423.P7323506129567675750

/-!
# A323424: Number of cycles (mod n) under Collatz map.

The programs for A323424, there is no canonical definition to state claims against.
-/

/-! ## A323424.P16673604668719110692

`A263765(A010005(n)%A190995(2*n))`
-/

namespace A323424.P16673604668719110692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263765 (Int.tmod (A010005 n) (A190995 (2 * n))).toNat

end

end A323424.P16673604668719110692

/-! ## A323424.P2835121428219027813

`A284948(3*n+5)+A246793(A209863(n))`
-/

namespace A323424.P2835121428219027813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284948 (3 * n + 5) + A246793 (A209863 n).toNat

end

end A323424.P2835121428219027813

/-! ## A323424.P9690121013227743423

`A001221(∑[A167105(A322630(n+1))])`
-/

namespace A323424.P9690121013227743423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167105 (A322630 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A323424.P9690121013227743423

/-! ## A323424.P13700851653479244088

`ceil(ratio[A007092(A088518(n))])`
-/

namespace A323424.P13700851653479244088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A088518 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A323424.P13700851653479244088

/-! ## A323424.P2989855276944274854

`∑{e}[A161831(n+2), #]`
-/

namespace A323424.P2989855276944274854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161831 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A323424.P2989855276944274854

/-!
# A323425: Number of ways n people in a line can each choose two others both on the same side of them.

The programs for A323425, there is no canonical definition to state claims against.
-/

/-! ## A323425.P6853186593650800100

`A347360(a(n-1))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=9`
-/

namespace A323425.P6853186593650800100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 9] fun n a =>
  A347360 (a (n - 1)).toNat

end

end A323425.P6853186593650800100

/-! ## A323425.P18116737387444863459

`A004247(((n-2)^abs(1-n))²)`
-/

namespace A323425.P18116737387444863459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 (SequenceMachineLib.roundAway ((((n : ℤ) - 2 : ℚ) ^ (|1 - (n : ℤ)| : ℤ)) ^ 2)).toNat

end

end A323425.P18116737387444863459

/-!
# A323427: Primes p such that the concatenation of p^2, p and 1 is prime.

The programs for A323427, there is no canonical definition to state claims against.
-/

/-! ## A323427.P11068185628422310315

`p?[A068702(n+1)]`
-/

namespace A323427.P11068185628422310315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A323427.P11068185628422310315

/-! ## A323427.P1900715697902959020

`filter[A068702(n+1), A010051(#)]`
-/

namespace A323427.P1900715697902959020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A323427.P1900715697902959020

/-! ## A323427.P1208735177733592789

`∩[A000040(n+1), A068702(n+1)]`
-/

namespace A323427.P1208735177733592789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323427.P1208735177733592789

/-! ## A323427.P2609977104021124331

`∩[A003627(n+1), A068702(n+1)]`
-/

namespace A323427.P2609977104021124331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323427.P2609977104021124331

/-! ## A323427.P17473226305880511768

`∩[A008578(n+1), A068702(n+1)]`
-/

namespace A323427.P17473226305880511768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323427.P17473226305880511768

/-! ## A323427.P8474387050840438210

`∩[A040028(n+1), A068702(n+1)]`
-/

namespace A323427.P8474387050840438210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323427.P8474387050840438210

/-! ## A323427.P11982682906067427170

`∩[A040036(n+1), A068702(n+1)]`
-/

namespace A323427.P11982682906067427170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323427.P11982682906067427170

/-! ## A323427.P15507943802792877110

`∩[A040044(n+1), A068702(n+1)]`
-/

namespace A323427.P15507943802792877110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323427.P15507943802792877110

/-! ## A323427.P8331070611850502499

`∩[A040046(n+1), A068702(n+1)]`
-/

namespace A323427.P8331070611850502499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323427.P8331070611850502499

/-! ## A323427.P4716495613975685040

`∩[A040049(n+1), A068702(n+1)]`
-/

namespace A323427.P4716495613975685040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323427.P4716495613975685040

/-! ## A323427.P6929962681689056104

`∩[A040054(n+1), A068702(n+1)]`
-/

namespace A323427.P6929962681689056104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323427.P6929962681689056104

/-! ## A323427.P621734065156198020

`∩[A040060(n+1), A068702(n+1)]`
-/

namespace A323427.P621734065156198020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323427.P621734065156198020

/-! ## A323427.P5854123575110172261

`∩[A040062(n+1), A068702(n+1)]`
-/

namespace A323427.P5854123575110172261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323427.P5854123575110172261

/-! ## A323427.P4230070991077928941

`∩[A040065(n+1), A068702(n+1)]`
-/

namespace A323427.P4230070991077928941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323427.P4230070991077928941

/-! ## A323427.P18412762627479155591

`∩[A040078(n+1), A068702(n+1)]`
-/

namespace A323427.P18412762627479155591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323427.P18412762627479155591

/-! ## A323427.P4376250730557090182

`∩[A040083(n+1), A068702(n+1)]`
-/

namespace A323427.P4376250730557090182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323427.P4376250730557090182

/-! ## A323427.P1775693560229388623

`∩[A040085(n+1), A068702(n+1)]`
-/

namespace A323427.P1775693560229388623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323427.P1775693560229388623

/-! ## A323427.P270578969371020655

`∩[A040087(n+1), A068702(n+1)]`
-/

namespace A323427.P270578969371020655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323427.P270578969371020655

/-! ## A323427.P138700726327578849

`∩[A040089(n+1), A068702(n+1)]`
-/

namespace A323427.P138700726327578849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323427.P138700726327578849

/-! ## A323427.P15811243076141794757

`∩[A040095(n+1), A068702(n+1)]`
-/

namespace A323427.P15811243076141794757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323427.P15811243076141794757

/-!
# A323428: Primes p such that the concatenation of p^3, p^2, p and 1 is prime.

The programs for A323428, there is no canonical definition to state claims against.
-/

/-! ## A323428.P4198537302219987499

`p?[A192610(n+1)]`
-/

namespace A323428.P4198537302219987499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A323428.P4198537302219987499

/-! ## A323428.P3929565299408411187

`∩[A002476(n+1), A192610(n+1)]`
-/

namespace A323428.P3929565299408411187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323428.P3929565299408411187

/-!
# A323429: Number of rectangular plane partitions of n.

The programs for A323429, there is no canonical definition to state claims against.
-/

/-! ## A323429.P1348861514832334570

`A319066(n)-A011717(A000111(n))`
-/

namespace A323429.P1348861514832334570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319066 n - A011717 (A000111 n).toNat

end

end A323429.P1348861514832334570

/-! ## A323429.P14483526217423580049

`A319066(n)-A057427(A130661(n))`
-/

namespace A323429.P14483526217423580049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319066 n - A057427 (A130661 n).toNat

end

end A323429.P14483526217423580049

/-! ## A323429.P13212698147209593392

`A319066(n)-A037860(A180064(n))`
-/

namespace A323429.P13212698147209593392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319066 n - A037860 (A180064 n).toNat

end

end A323429.P13212698147209593392

/-! ## A323429.P10281573955773708505

`A319066(n)-A055641(A294804(n))`
-/

namespace A323429.P10281573955773708505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319066 n - A055641 (A294804 n).toNat

end

end A323429.P10281573955773708505

/-! ## A323429.P11212493361944635538

`A325400(A323433(n))`
-/

namespace A323429.P11212493361944635538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325400 (A323433 n).toNat

end

end A323429.P11212493361944635538

/-!
# A323431: Number of strict rectangular plane partitions of n.

The programs for A323431, there is no canonical definition to state claims against.
-/

/-! ## A323431.P9063841016860696614

`2*(A323434(n)-A111133(n))-A053866(A140303(n)²)`
-/

namespace A323431.P9063841016860696614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A323434 n - A111133 n) - A053866 (A140303 n ^ 2).toNat

end

end A323431.P9063841016860696614

/-! ## A323431.P6007273145059262069

`2*(A323434(n)-A111133(n))-A025469(A000016(n))!`
-/

namespace A323431.P6007273145059262069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A323434 n - A111133 n) - (Nat.factorial (A025469 (A000016 n).toNat).toNat : ℤ)

end

end A323431.P6007273145059262069

/-! ## A323431.P13756767645408687722

`2*(A323434(n)-A111133(n))-A023532(A050228(n+1))`
-/

namespace A323431.P13756767645408687722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A323434 n - A111133 n) - A023532 (A050228 (n + 1)).toNat

end

end A323431.P13756767645408687722

/-! ## A323431.P8163857294960290988

`2*(A323434(n)-A111133(n))-A056926(A036378(n+1))`
-/

namespace A323431.P8163857294960290988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A323434 n - A111133 n) - A056926 (A036378 (n + 1)).toNat

end

end A323431.P8163857294960290988

/-! ## A323431.P13790418741141297190

`or(1, A259899(A089259(n)))`
-/

namespace A323431.P13790418741141297190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259899 (A089259 n).toNat)

end

end A323431.P13790418741141297190

/-!
# A323432: Number of semistandard rectangular plane partitions of n.

The programs for A323432, there is no canonical definition to state claims against.
-/

/-! ## A323432.P6667286735268519148

`A376953(A241728(n))`
-/

namespace A323432.P6667286735268519148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376953 (A241728 (n + 55)).toNat

end

end A323432.P6667286735268519148

/-! ## A323432.P5382089892179565059

`A064817(A102822(n+3))`
-/

namespace A323432.P5382089892179565059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064817 (A102822 (n + 3)).toNat

end

end A323432.P5382089892179565059

/-! ## A323432.P8245078731913565532

`A376953(A000041(n)^A354986(n+1))`
-/

namespace A323432.P8245078731913565532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376953 (SequenceMachineLib.roundAway ((A000041 n : ℚ) ^ (A354986 (n + 1) : ℤ))).toNat

end

end A323432.P8245078731913565532

/-! ## A323432.P15718161950426418763

`A376953(A000041(n)%A092637(n+1))`
-/

namespace A323432.P15718161950426418763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376953 (Int.tmod (A000041 n) (A092637 (n + 1))).toNat

end

end A323432.P15718161950426418763

/-! ## A323432.P16161342501393403310

`A376953(A000041(n))%A056654(n+3)`
-/

namespace A323432.P16161342501393403310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376953 (A000041 n).toNat) (A056654 (n + 3))

end

end A323432.P16161342501393403310

/-!
# A323433: Number of ways to split an integer partition of n into consecutive subsequences of equal length.

The programs for A323433, there is no canonical definition to state claims against.
-/

/-! ## A323433.P6274184427935872651

`A329974(A024786(n+2))`
-/

namespace A323433.P6274184427935872651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329974 (A024786 (n + 2)).toNat

end

end A323433.P6274184427935872651

/-! ## A323433.P5219468652830839325

`A329974(∑[A182712(n+2)])`
-/

namespace A323433.P5219468652830839325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329974 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A323433.P5219468652830839325

/-! ## A323433.P3481731283821151902

`A118759(A326981(n)+A001993(n))`
-/

namespace A323433.P3481731283821151902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A326981 n + A001993 n).toNat

end

end A323433.P3481731283821151902

/-! ## A323433.P1554029014955637362

`A320927(A130223(n))+A320886(n)`
-/

namespace A323433.P1554029014955637362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320927 (A130223 n).toNat + A320886 n

end

end A323433.P1554029014955637362

/-! ## A323433.P10634940167525665844

`A239086(A320886(n))`
-/

namespace A323433.P10634940167525665844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239086 (A320886 n).toNat

end

end A323433.P10634940167525665844

/-!
# A323434: Number of ways to split a strict integer partition of n into consecutive subsequences of equal length.

The programs for A323434, there is no canonical definition to state claims against.
-/

/-! ## A323434.P11367422133424713932

`A218074(n)+A038548(A011782(n))`
-/

namespace A323434.P11367422133424713932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218074 n + A038548 (A011782 n).toNat

end

end A323434.P11367422133424713932

/-! ## A323434.P6037779045859113936

`A323431(A055646(n))-A026816(n)`
-/

namespace A323434.P6037779045859113936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323431 (A055646 n).toNat - A026816 n

end

end A323434.P6037779045859113936

/-! ## A323434.P13331272967838672916

`A323431(A055646(n))-A326592(n)`
-/

namespace A323434.P13331272967838672916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323431 (A055646 n).toNat - A326592 n

end

end A323434.P13331272967838672916

/-!
# A323436: Number of plane partitions whose parts are the prime indices of n.

The programs for A323436, there is no canonical definition to state claims against.
-/

/-! ## A323436.P7007113347421232758

`A328855(A153151(n)+1+n)`
-/

namespace A323436.P7007113347421232758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328855 (A153151 n + 1 + (n : ℤ)).toNat

end

end A323436.P7007113347421232758

/-! ## A323436.P10633061555860750143

`A328855(A048298(n)+A004277(n))`
-/

namespace A323436.P10633061555860750143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328855 (A048298 n + A004277 n).toNat

end

end A323436.P10633061555860750143

/-! ## A323436.P716526851630080707

`A328855(or(A004277(n), A048298(n)))`
-/

namespace A323436.P716526851630080707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328855 (Int.lor (A004277 n) (A048298 n)).toNat

end

end A323436.P716526851630080707

/-! ## A323436.P6260672009598738597

`A328855(xor(A004277(n), A048298(n)))`
-/

namespace A323436.P6260672009598738597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328855 (Int.xor (A004277 n) (A048298 n)).toNat

end

end A323436.P6260672009598738597

/-! ## A323436.P15357116065448908289

`A328855(A028310(n*A323437(n)))`
-/

namespace A323436.P15357116065448908289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328855 (A028310 ((n : ℤ) * A323437 n).toNat).toNat

end

end A323436.P15357116065448908289

/-!
# A323437: Number of semistandard Young tableaux whose entries are the prime indices of n.

The programs for A323437, there is no canonical definition to state claims against.
-/

/-! ## A323437.P6706988129691426556

`A339887(C(2, n)+n)`
-/

namespace A323437.P6706988129691426556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339887 (Nat.choose 2 n + n)

end

end A323437.P6706988129691426556

/-! ## A323437.P10119354474822493535

`A339887(gcd(n, C(2, n)))`
-/

namespace A323437.P10119354474822493535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339887 (Nat.gcd n (Nat.choose 2 n))

end

end A323437.P10119354474822493535

/-! ## A323437.P7777919407626052136

`A339887(or(n, C(2, n)))`
-/

namespace A323437.P7777919407626052136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339887 (Nat.lor n (Nat.choose 2 n))

end

end A323437.P7777919407626052136

/-! ## A323437.P1737463956852307311

`A339887(floor(acot(n)+n))`
-/

namespace A323437.P1737463956852307311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339887 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A323437.P1737463956852307311

/-! ## A323437.P5255744318665114597

`A339887(round(acot(n)+n))`
-/

namespace A323437.P5255744318665114597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339887 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A323437.P5255744318665114597

/-! ## A323437.P4272566085336906588

`A339887(or(n, floor(acot(n))))`
-/

namespace A323437.P4272566085336906588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339887 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A323437.P4272566085336906588

/-! ## A323437.P9932105368511524694

`A339887(xor(n, floor(acot(n))))`
-/

namespace A323437.P9932105368511524694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339887 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A323437.P9932105368511524694

/-! ## A323437.P1913911265470562144

`A339887(abs(1-n)+1)`
-/

namespace A323437.P1913911265470562144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339887 (|1 - (n : ℤ)| + 1).toNat

end

end A323437.P1913911265470562144

/-! ## A323437.P1856723202785758905

`∑{d}[round(acot(n)+n), A320656(#)]`
-/

namespace A323437.P1856723202785758905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A320656 d

end

end A323437.P1856723202785758905

/-! ## A323437.P11636956803326817322

`a(a(n-1))*A339887(n)` with `a(0)=1, a(1)=1`
-/

namespace A323437.P11636956803326817322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (a (n - 1)).toNat * A339887 n

end

end A323437.P11636956803326817322

/-!
# A323438: Number of ways to fill a Young diagram with the prime indices of n such that all rows and columns are weakly increasing.

The programs for A323438, there is no canonical definition to state claims against.
-/

/-! ## A323438.P5844358867775251450

`A001055(n+1)-A386584(A331188(n+1))`
-/

namespace A323438.P5844358867775251450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A386584 (A331188 (n + 1)).toNat

end

end A323438.P5844358867775251450

/-! ## A323438.P16044430938876682820

`A323436(A331580(n+1))`
-/

namespace A323438.P16044430938876682820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323436 (A331580 (n + 1)).toNat

end

end A323438.P16044430938876682820

/-! ## A323438.P13128835035323408100

`A326334(n+1)-A025469(A346426(n))`
-/

namespace A323438.P13128835035323408100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326334 (n + 1) - A025469 (A346426 n).toNat

end

end A323438.P13128835035323408100

/-! ## A323438.P16040809499109128016

`A001055(n+1)-A243055(A331732(n+1))`
-/

namespace A323438.P16040809499109128016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A243055 (A331732 (n + 1)).toNat

end

end A323438.P16040809499109128016

/-! ## A323438.P13529243036014499636

`A252665(n+1)-A243055(A331732(n+1))`
-/

namespace A323438.P13529243036014499636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252665 (n + 1) - A243055 (A331732 (n + 1)).toNat

end

end A323438.P13529243036014499636

/-!
# A323439: Number of ways to fill a Young diagram with the prime indices of n such that all rows and columns are strictly increasing.

The programs for A323439, there is no canonical definition to state claims against.
-/

/-! ## A323439.P1534856816962391332

`C(A339742(n+1), A067029(n+1)²)`
-/

namespace A323439.P1534856816962391332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A339742 (n + 1)).toNat (A067029 (n + 1) ^ 2).toNat

end

end A323439.P1534856816962391332

/-! ## A323439.P9979607881078422035

`C(A341592(n+1), A067029(n+1)²)`
-/

namespace A323439.P9979607881078422035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A341592 (n + 1)).toNat (A067029 (n + 1) ^ 2).toNat

end

end A323439.P9979607881078422035

/-! ## A323439.P14073361290464144439

`A003982(A066503(n+1))*A345164(n+1)`
-/

namespace A323439.P14073361290464144439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A066503 (n + 1)).toNat * A345164 (n + 1)

end

end A323439.P14073361290464144439

/-! ## A323439.P4797275787930084755

`lcm(A008683(A028233(n+1)), A341592(n+1))`
-/

namespace A323439.P4797275787930084755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A028233 (n + 1)).toNat) (A341592 (n + 1))

end

end A323439.P4797275787930084755

/-! ## A323439.P10681989730955664446

`and(A000005(A032742(n+1)), A050326(n+1))`
-/

namespace A323439.P10681989730955664446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (A032742 (n + 1)).toNat) (A050326 (n + 1))

end

end A323439.P10681989730955664446

/-! ## A323439.P12114509526934873850

`A341592(A028233((n+1)²))*A341592(n+1)`
-/

namespace A323439.P12114509526934873850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341592 (A028233 ((n + 1) ^ 2)).toNat * A341592 (n + 1)

end

end A323439.P12114509526934873850

/-!
# A323440: Numbers divisible by exactly one of their distinct prime indices.

The programs for A323440, the canonical program `A323440.P16881956477857398071` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323440 has offset 1).

The definition of A323440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323440.P16881956477857398071

`eq[1, A324852(n+1)]+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A323440

/-- `eq[1, A324852(n+1)]+1` -/
def P16881956477857398071.Spec : Prop :=
  ∀ n, (P16881956477857398071.a n : ℤ) = A323440 (n + 1)

theorem P16881956477857398071.correct : P16881956477857398071.Spec := by
  intro n
  simp only [A323440, Nat.add_sub_cancel]

end A323440

/-! ## A323440.P2496314710674982905

`eq[n, n-a(A324852(n))]` with `a(0)=1`
-/

namespace A323440.P2496314710674982905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℤ) - f2 (A324852 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323440.P2496314710674982905

namespace A323440

/-- `eq[n, n-a(A324852(n))]` -/
def P2496314710674982905.Spec : Prop :=
  ∀ n, (P2496314710674982905.a n : ℤ) = A323440 (n + 1)

end A323440

/-! ## A323440.P15820087357689349693

`record[A324847(n+1)/A324852(A324847(n+1))]`
-/

namespace A323440.P15820087357689349693
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324847 (n + 1) : ℚ) / (A324852 (A324847 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323440.P15820087357689349693

namespace A323440

/-- `record[A324847(n+1)/A324852(A324847(n+1))]` -/
def P15820087357689349693.Spec : Prop :=
  ∀ n, P15820087357689349693.a n = (A323440 (n + 1) : ℚ)

end A323440

/-! ## A323440.P17832605564684493226

`eq[1, A324852(A028310(n))]`
-/

namespace A323440.P17832605564684493226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324852 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323440.P17832605564684493226

namespace A323440

/-- `eq[1, A324852(A028310(n))]` -/
def P17832605564684493226.Spec : Prop :=
  ∀ n, (P17832605564684493226.a n : ℤ) = A323440 (n + 1)

end A323440

/-! ## A323440.P1500470885402001423

`A000720(p?[A000040(n+1)*A324852(n+1)])`
-/

namespace A323440.P1500470885402001423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A324852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A323440.P1500470885402001423

namespace A323440

/-- `A000720(p?[A000040(n+1)*A324852(n+1)])` -/
def P1500470885402001423.Spec : Prop :=
  ∀ n, P1500470885402001423.a n = A323440 (n + 1)

end A323440

/-! ## A323440.P16341303056857357216

`A003963(p?[A000040(n+1)*A324852(n+1)])`
-/

namespace A323440.P16341303056857357216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A324852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A323440.P16341303056857357216

namespace A323440

/-- `A003963(p?[A000040(n+1)*A324852(n+1)])` -/
def P16341303056857357216.Spec : Prop :=
  ∀ n, P16341303056857357216.a n = A323440 (n + 1)

end A323440

/-! ## A323440.P570546167838546789

`A056239(p?[A000040(n+1)*A324852(n+1)])`
-/

namespace A323440.P570546167838546789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A324852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A323440.P570546167838546789

namespace A323440

/-- `A056239(p?[A000040(n+1)*A324852(n+1)])` -/
def P570546167838546789.Spec : Prop :=
  ∀ n, P570546167838546789.a n = A323440 (n + 1)

end A323440

/-!
# A323441: Numbers equal to the sum of the numbers between two of their divisors.

The programs for A323441, there is no canonical definition to state claims against.
-/

/-! ## A323441.P3755621553146649488

`lt[A051724(n), 2*A062329(n)]`
-/

namespace A323441.P3755621553146649488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A323441.P3755621553146649488

/-! ## A323441.P1194562977746798011

`lt[A004526(A051724(n)), A062329(n)]`
-/

namespace A323441.P1194562977746798011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A051724 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A323441.P1194562977746798011

/-!
# A323442: Number of length-n binary strings that neither begin nor end with a square.

The programs for A323442, there is no canonical definition to state claims against.
-/

/-! ## A323442.P7665726613347639991

`A350657(A000018(n))`
-/

namespace A323442.P7665726613347639991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350657 (A000018 n).toNat

end

end A323442.P7665726613347639991

/-! ## A323442.P7604714602012054351

`A244363(A307677(n))`
-/

namespace A323442.P7604714602012054351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244363 (A307677 n).toNat

end

end A323442.P7604714602012054351

/-! ## A323442.P5137147832862582556

`A350657(A263292(n))`
-/

namespace A323442.P5137147832862582556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350657 (A263292 n).toNat

end

end A323442.P5137147832862582556

/-! ## A323442.P15621615834830396459

`A350657(A049903(n+1))`
-/

namespace A323442.P15621615834830396459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350657 (A049903 (n + 1)).toNat

end

end A323442.P15621615834830396459

/-! ## A323442.P8901785636418584445

`A244363(A191633(n+1))`
-/

namespace A323442.P8901785636418584445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244363 (A191633 (n + 1)).toNat

end

end A323442.P8901785636418584445

/-!
# A323443: Number of binary squares of length 2n that neither begin nor end with a shorter square.

The programs for A323443, there is no canonical definition to state claims against.
-/

/-! ## A323443.P7536928366956172755

`A167904(2*A147372(n+4))`
-/

namespace A323443.P7536928366956172755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167904 (2 * A147372 (n + 4)).toNat

end

end A323443.P7536928366956172755

/-! ## A323443.P12816585208588124751

`A013632(A179040(n))+A000322(n)`
-/

namespace A323443.P12816585208588124751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A179040 n).toNat + A000322 n

end

end A323443.P12816585208588124751

/-! ## A323443.P3593079416970855378

`A018239(A147450(n+1))*A147487(n+2)`
-/

namespace A323443.P3593079416970855378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018239 (A147450 (n + 1)).toNat * A147487 (n + 2)

end

end A323443.P3593079416970855378

/-! ## A323443.P10583803698459091383

`A018239(A147454(n+2))*A147487(n+2)`
-/

namespace A323443.P10583803698459091383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018239 (A147454 (n + 2)).toNat * A147487 (n + 2)

end

end A323443.P10583803698459091383

/-!
# A323444: Sum of exponents in prime-power factorization of Product_{k=0..n} binomial(n,k) (A001142).

The programs for A323444, the canonical program `A323444.P7662913552164662023` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323444 has offset 0).

The definition of A323444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323444.P7662913552164662023

`∑[A066959(A028310(n))-A022559(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A323444

/-- `∑[A066959(A028310(n))-A022559(n)]` -/
def P7662913552164662023.Spec : Prop :=
  ∀ n, P7662913552164662023.a n = A323444 n

theorem P7662913552164662023.correct : P7662913552164662023.Spec := by
  intro n
  simp only [A323444]

end A323444

/-! ## A323444.P14116048296738519105

`∑[A066959(A000007(n)+n)-A022559(n)]`
-/

namespace A323444.P14116048296738519105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066959 (A000007 n + (n : ℤ)).toNat - A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323444.P14116048296738519105

namespace A323444

/-- `∑[A066959(A000007(n)+n)-A022559(n)]` -/
def P14116048296738519105.Spec : Prop :=
  ∀ n, P14116048296738519105.a n = A323444 n

end A323444

/-! ## A323444.P17200496657364186196

`∑[A066959(A004273(n)+1-n)-A022559(n)]`
-/

namespace A323444.P17200496657364186196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066959 (A004273 n + (1 - (n : ℤ))).toNat - A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323444.P17200496657364186196

namespace A323444

/-- `∑[A066959(A004273(n)+1-n)-A022559(n)]` -/
def P17200496657364186196.Spec : Prop :=
  ∀ n, P17200496657364186196.a n = A323444 n

end A323444

/-! ## A323444.P13530992187736526378

`∑[A066959(n+1)-A022559(n)]-A066959(n+1)`
-/

namespace A323444.P13530992187736526378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066959 (n + 1) - A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A066959 (n + 1)

end

end A323444.P13530992187736526378

namespace A323444

/-- `∑[A066959(n+1)-A022559(n)]-A066959(n+1)` -/
def P13530992187736526378.Spec : Prop :=
  ∀ n, P13530992187736526378.a n = A323444 n

end A323444

/-!
# A323445: Number of length-n binary strings where some nonempty proper prefix is the reverse of a cyclic shift (conjugate) of a suffix.

The programs for A323445, there is no canonical definition to state claims against.
-/

/-! ## A323445.P6050403011848919168

`A094536(∑[(n-∑{digits}[n, #])!])`
-/

namespace A323445.P6050403011848919168
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094536 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A323445.P6050403011848919168

/-! ## A323445.P10144982364525086870

`A094536(A062399(n+1))`
-/

namespace A323445.P10144982364525086870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094536 (A062399 (n + 1)).toNat

end

end A323445.P10144982364525086870

/-! ## A323445.P13634613069460778414

`A094536(A120126(n+1))`
-/

namespace A323445.P13634613069460778414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094536 (A120126 (n + 1)).toNat

end

end A323445.P13634613069460778414

/-! ## A323445.P15697571623855679794

`A130891(A094536(n+1))`
-/

namespace A323445.P15697571623855679794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130891 (A094536 (n + 1)).toNat

end

end A323445.P15697571623855679794

/-! ## A323445.P13963782474032501348

`A094536(A306593(n)+1)`
-/

namespace A323445.P13963782474032501348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094536 (A306593 n + 1).toNat

end

end A323445.P13963782474032501348

/-!
# A323446: Number of binary strings w of length n that cannot be written in the form xyz, with x,z both nonempty and xz a square.

The programs for A323446, there is no canonical definition to state claims against.
-/

/-! ## A323446.P8361314213308012427

`2*ceil(∑[A286885(A189598(n+2))/2])`
-/

namespace A323446.P8361314213308012427
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286885 (A189598 (n + 2)).toNat : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A323446.P8361314213308012427

/-! ## A323446.P12628667399479441607

`A096491(A337347(n+1))`
-/

namespace A323446.P12628667399479441607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096491 (A337347 (n + 1)).toNat

end

end A323446.P12628667399479441607

/-! ## A323446.P6078469059296261830

`A254764(A017985(n))-1`
-/

namespace A323446.P6078469059296261830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254764 (A017985 n).toNat - 1

end

end A323446.P6078469059296261830

/-! ## A323446.P569376782704140699

`2*A091401(A236912(n))`
-/

namespace A323446.P569376782704140699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091401 (A236912 n).toNat

end

end A323446.P569376782704140699

/-! ## A323446.P974754055239877626

`2*A309077(A274199(n))`
-/

namespace A323446.P974754055239877626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A309077 (A274199 n).toNat

end

end A323446.P974754055239877626

/-!
# A323449: Number of minimum total dominating sets in the n-halved cube graph.

The programs for A323449, there is no canonical definition to state claims against.
-/

/-! ## A323449.P5358752810573520228

`A001222(A052595(n))*A052586(n)`
-/

namespace A323449.P5358752810573520228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A052595 n).toNat * A052586 n

end

end A323449.P5358752810573520228

/-!
# A323450: Number of ways to fill a Young diagram with positive integers summing to n such that all rows and columns are weakly increasing.

The programs for A323450, there is no canonical definition to state claims against.
-/

/-! ## A323450.P9879633452361124928

`A358831(n)+A345415(A274174(n))`
-/

namespace A323450.P9879633452361124928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358831 n + A345415 (A274174 n).toNat

end

end A323450.P9879633452361124928

/-! ## A323450.P14562230540049598643

`A280951(∑[n²%(or(1, n)+n)+1+n])`
-/

namespace A323450.P14562230540049598643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % (Nat.lor 1 n + n) + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280951 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A323450.P14562230540049598643

/-! ## A323450.P2054640938379331063

`A280951(floor(3*(n²-1)/4)+∑[lcm(2, n+3)/2]-1)`
-/

namespace A323450.P2054640938379331063
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 3) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280951 (SequenceMachineLib.roundAway ((⌊3 * (((n ^ 2 : ℤ) - 1 : ℚ) / 4)⌋ : ℚ) + (∑ j ∈ Finset.range (n + 1), f1 j - 1))).toNat

end

end A323450.P2054640938379331063

/-! ## A323450.P2058060246195740168

`A280951(A213479(n))`
-/

namespace A323450.P2058060246195740168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280951 (A213479 n).toNat

end

end A323450.P2058060246195740168

/-!
# A323451: Number of ways to fill a Young diagram with positive integers summing to n such that all rows and columns are strictly increasing.

The programs for A323451, there is no canonical definition to state claims against.
-/

/-! ## A323451.P2006350012251605105

`A260456(A068971(n+1))+A001524(n)`
-/

namespace A323451.P2006350012251605105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260456 (A068971 (n + 1)).toNat + A001524 n

end

end A323451.P2006350012251605105

/-! ## A323451.P3404464590022322757

`A356944(A001522(n+3)-n)+A066247(A335471(n+4))`
-/

namespace A323451.P3404464590022322757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356944 (A001522 (n + 3) - (n : ℤ)).toNat + A066247 (A335471 (n + 4)).toNat

end

end A323451.P3404464590022322757

/-! ## A323451.P717925628811268006

`Δ[A003056(floor((n+4)*2^(n-2))+4)]`
-/

namespace A323451.P717925628811268006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (⌊(n + 4 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋ + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323451.P717925628811268006

/-! ## A323451.P13832205552703116123

`Δ[A002024(floor((n+4)*2^(n-2))+5)]`
-/

namespace A323451.P13832205552703116123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (⌊(n + 4 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋ + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323451.P13832205552703116123

/-! ## A323451.P8538501418939430932

`Δ[A003057(A131352(n)+6)]`
-/

namespace A323451.P8538501418939430932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A131352 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323451.P8538501418939430932

/-!
# A323452: First differences of A323289.

The programs for A323452, there is no canonical definition to state claims against.
-/

/-! ## A323452.P14257049794237941628

`Δ[A323289(n)]`
-/

namespace A323452.P14257049794237941628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323452.P14257049794237941628

/-! ## A323452.P14676658629169511934

`A323289(n+1)-A323289(n)`
-/

namespace A323452.P14676658629169511934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323289 (n + 1) - A323289 n

end

end A323452.P14676658629169511934

/-! ## A323452.P9669978686650814951

`record[A323289(abs(1-n))]-A323289(n)`
-/

namespace A323452.P9669978686650814951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323289 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A323289 n

end

end A323452.P9669978686650814951

/-!
# A323453: Largest number that can be obtained by starting with 1 and applying "Choix de Bruxelles (version 2)" (see A323460) n times.

The programs for A323453, there is no canonical definition to state claims against.
-/

/-! ## A323453.P12903429747744237821

`ceil(2^(n-1))*A350223(A000244(n))`
-/

namespace A323453.P12903429747744237821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A350223 (A000244 n).toNat

end

end A323453.P12903429747744237821

/-! ## A323453.P15888716474462377041

`A206427(A092269(n+1)-A308806(n))`
-/

namespace A323453.P15888716474462377041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206427 (A092269 (n + 1) - A308806 n).toNat

end

end A323453.P15888716474462377041

/-! ## A323453.P15072228568550389481

`and(A099144(n+1), A107742(A253647(n+1)))`
-/

namespace A323453.P15072228568550389481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099144 (n + 1)) (A107742 (A253647 (n + 1)).toNat)

end

end A323453.P15072228568550389481

/-!
# A323460: Choix de Bruxelles, version 2: irregular table read by rows in which row n lists all the legal numbers that can be reached by halving or doubling some substring of the decimal expansion of n (including the empty string).

The programs for A323460, there is no canonical definition to state claims against.
-/

/-! ## A323460.P9162240510453756374

`A003602(A047518(n+1))+A000038(A000792(n))`
-/

namespace A323460.P9162240510453756374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A047518 (n + 1)).toNat + A000038 (A000792 n).toNat

end

end A323460.P9162240510453756374

/-! ## A323460.P8219782989066998787

`A003602(A047518(n+1))+A000038(A094069(n+1))`
-/

namespace A323460.P8219782989066998787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A047518 (n + 1)).toNat + A000038 (A094069 (n + 1)).toNat

end

end A323460.P8219782989066998787

/-! ## A323460.P2806536156830788324

`A003602(A047518(n+1))+A000038(A094097(n+1))`
-/

namespace A323460.P2806536156830788324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A047518 (n + 1)).toNat + A000038 (A094097 (n + 1)).toNat

end

end A323460.P2806536156830788324

/-! ## A323460.P12267007695079678754

`A003602(A047518(n+1))%A000043(2*n+1)`
-/

namespace A323460.P12267007695079678754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003602 (A047518 (n + 1)).toNat) (A000043 (2 * n + 1))

end

end A323460.P12267007695079678754

/-! ## A323460.P11507501410984140107

`A003602(A047518(n+1)%A276871(2*n+5))`
-/

namespace A323460.P11507501410984140107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (Int.tmod (A047518 (n + 1)) (A276871 (2 * n + 5))).toNat

end

end A323460.P11507501410984140107

/-!
# A323462: Smallest number that can be obtained from the "Choix de Bruxelles", version 2 (A323460) operation applied to n.

The programs for A323462, there is no canonical definition to state claims against.
-/

/-! ## A323462.P14451693691031991029

`A107128(A141310(n))*A152271(n)`
-/

namespace A323462.P14451693691031991029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 (A141310 n).toNat * A152271 n

end

end A323462.P14451693691031991029

/-! ## A323462.P6731760472276222748

`A107128(A141310(n))-A130507(2*n+1)`
-/

namespace A323462.P6731760472276222748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 (A141310 n).toNat - A130507 (2 * n + 1)

end

end A323462.P6731760472276222748

/-! ## A323462.P9094734810583121695

`gcd(n+1, ∑[n])-A198318(A198316(n))`
-/

namespace A323462.P9094734810583121695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - A198318 (A198316 n).toNat

end

end A323462.P9094734810583121695

/-! ## A323462.P1062472608944877825

`gcd(A286688(A153901(n))+n+1, ∑[n+1])`
-/

namespace A323462.P1062472608944877825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A286688 (A153901 n).toNat + (n + 1 : ℤ)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A323462.P1062472608944877825

/-! ## A323462.P16450035174304165536

`∑{e}[abs(sqrt(2)^lcm(2, n+1)-1)+1, #]`
-/

namespace A323462.P16450035174304165536
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.sqrt (2 : ℝ) ^ Nat.lcm 2 (n + 1) - 1| + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A323462.P16450035174304165536

/-!
# A323463: Values of n at which A323454 reaches a new record.

The programs for A323463, there is no canonical definition to state claims against.
-/

/-! ## A323463.P12199097525512457484

`A334629(sqrt(record[A323484(n+1)²]))`
-/

namespace A323463.P12199097525512457484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323484 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334629 (SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))).toNat

end

end A323463.P12199097525512457484

/-! ## A323463.P12928253869887926988

`A334629(A323484(A323464(n+1)))`
-/

namespace A323463.P12928253869887926988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334629 (A323484 (A323464 (n + 1)).toNat).toNat

end

end A323463.P12928253869887926988

/-! ## A323463.P7723139341746892269

`A334629(A307560(n)%A296275(n))`
-/

namespace A323463.P7723139341746892269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334629 (Int.tmod (A307560 n) (A296275 n)).toNat

end

end A323463.P7723139341746892269

/-! ## A323463.P2860223392190398837

`A334629(sqrt(record[A323454(n+1)²]))`
-/

namespace A323463.P2860223392190398837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323454 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334629 (SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))).toNat

end

end A323463.P2860223392190398837

/-!
# A323466: Number of terms in row n of A323465.

The programs for A323466, the canonical program `A323466.P8596251984879986670` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323466 has offset 1).

The definition of A323466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323466.P13956110284639542725

`log2(A001316(or(n+1, 2*n+3)))`
-/

namespace A323466.P13956110284639542725
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (Nat.lor (n + 1) (2 * n + 3)) : ℝ)

end

end A323466.P13956110284639542725

namespace A323466

/-- `log2(A001316(or(n+1, 2*n+3)))` -/
def P13956110284639542725.Spec : Prop :=
  ∀ n, P13956110284639542725.a n = (A323466 (n + 1) : ℝ)

end A323466

/-! ## A323466.P6591322846828486162

`A070941(A090078(n+1))`
-/

namespace A323466.P6591322846828486162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 (A090078 (n + 1)).toNat

end

end A323466.P6591322846828486162

namespace A323466

/-- `A070941(A090078(n+1))` -/
def P6591322846828486162.Spec : Prop :=
  ∀ n, P6591322846828486162.a n = A323466 (n + 1)

end A323466

/-! ## A323466.P8596251984879986670

`A005811(n+1)+A014081(n+1)+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A323466

/-- `A005811(n+1)+A014081(n+1)+1` -/
def P8596251984879986670.Spec : Prop :=
  ∀ n, P8596251984879986670.a n = A323466 (n + 1)

theorem P8596251984879986670.correct : P8596251984879986670.Spec := by
  intro n
  simp only [A323466, Nat.add_sub_cancel]

end A323466

/-! ## A323466.P16097038059688253469

`A000120(n+1)+A033264(n+1)+1`
-/

namespace A323466.P16097038059688253469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) + (A033264 (n + 1) + 1)

end

end A323466.P16097038059688253469

namespace A323466

/-- `A000120(n+1)+A033264(n+1)+1` -/
def P16097038059688253469.Spec : Prop :=
  ∀ n, P16097038059688253469.a n = A323466 (n + 1)

end A323466

/-! ## A323466.P7850814201191687301

`A000120(n+1)+A087116(n+1)+1`
-/

namespace A323466.P7850814201191687301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) + (A087116 (n + 1) + 1)

end

end A323466.P7850814201191687301

namespace A323466

/-- `A000120(n+1)+A087116(n+1)+1` -/
def P7850814201191687301.Spec : Prop :=
  ∀ n, P7850814201191687301.a n = A323466 (n + 1)

end A323466

/-! ## A323466.P7708113014897580751

`A000120(n+1)+A069010(n+1)+A000035(n)`
-/

namespace A323466.P7708113014897580751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) + (A069010 (n + 1) + A000035 n)

end

end A323466.P7708113014897580751

namespace A323466

/-- `A000120(n+1)+A069010(n+1)+A000035(n)` -/
def P7708113014897580751.Spec : Prop :=
  ∀ n, P7708113014897580751.a n = A323466 (n + 1)

end A323466

/-! ## A323466.P11172283007376643288

`A005811(n+1)+A227185(n+1)-A056973(n+1)`
-/

namespace A323466.P11172283007376643288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (n + 1) + (A227185 (n + 1) - A056973 (n + 1))

end

end A323466.P11172283007376643288

namespace A323466

/-- `A005811(n+1)+A227185(n+1)-A056973(n+1)` -/
def P11172283007376643288.Spec : Prop :=
  ∀ n, P11172283007376643288.a n = A323466 (n + 1)

end A323466

/-! ## A323466.P1367083273861363687

`A069010(2*n+3)+A000120(n+1)`
-/

namespace A323466.P1367083273861363687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (2 * n + 3) + A000120 (n + 1)

end

end A323466.P1367083273861363687

namespace A323466

/-- `A069010(2*n+3)+A000120(n+1)` -/
def P1367083273861363687.Spec : Prop :=
  ∀ n, P1367083273861363687.a n = A323466 (n + 1)

end A323466

/-! ## A323466.P4175779371585359617

`A061313(A209639(n+1)+1)`
-/

namespace A323466.P4175779371585359617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061313 (A209639 (n + 1) + 1).toNat

end

end A323466.P4175779371585359617

namespace A323466

/-- `A061313(A209639(n+1)+1)` -/
def P4175779371585359617.Spec : Prop :=
  ∀ n, P4175779371585359617.a n = A323466 (n + 1)

end A323466

/-! ## A323466.P1645873151799910807

`A160385(2*n+3)+A160385(n+1)`
-/

namespace A323466.P1645873151799910807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (2 * n + 3) + A160385 (n + 1)

end

end A323466.P1645873151799910807

namespace A323466

/-- `A160385(2*n+3)+A160385(n+1)` -/
def P1645873151799910807.Spec : Prop :=
  ∀ n, P1645873151799910807.a n = A323466 (n + 1)

end A323466

/-! ## A323466.P2253584427076224925

`A000120(or(2*n+3, n+1))`
-/

namespace A323466.P2253584427076224925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.lor (2 * n + 3) (n + 1))

end

end A323466.P2253584427076224925

namespace A323466

/-- `A000120(or(2*n+3, n+1))` -/
def P2253584427076224925.Spec : Prop :=
  ∀ n, P2253584427076224925.a n = A323466 (n + 1)

end A323466

/-! ## A323466.P11634392119605342871

`A081743(A163617(n+1))`
-/

namespace A323466.P11634392119605342871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081743 (A163617 (n + 1)).toNat

end

end A323466.P11634392119605342871

namespace A323466

/-- `A081743(A163617(n+1))` -/
def P11634392119605342871.Spec : Prop :=
  ∀ n, P11634392119605342871.a n = A323466 (n + 1)

end A323466

/-! ## A323466.P9039830399703517822

`A081743(A175048(n+1))`
-/

namespace A323466.P9039830399703517822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081743 (A175048 (n + 1)).toNat

end

end A323466.P9039830399703517822

namespace A323466

/-- `A081743(A175048(n+1))` -/
def P9039830399703517822.Spec : Prop :=
  ∀ n, P9039830399703517822.a n = A323466 (n + 1)

end A323466

/-! ## A323466.P8990442737721369721

`A160384(A191108(n+2))`
-/

namespace A323466.P8990442737721369721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160384 (A191108 (n + 2)).toNat

end

end A323466.P8990442737721369721

namespace A323466

/-- `A160384(A191108(n+2))` -/
def P8990442737721369721.Spec : Prop :=
  ∀ n, P8990442737721369721.a n = A323466 (n + 1)

end A323466

/-! ## A323466.P708061795713994387

`A046821(A048678(n+1))`
-/

namespace A323466.P708061795713994387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046821 (A048678 (n + 1)).toNat

end

end A323466.P708061795713994387

namespace A323466

/-- `A046821(A048678(n+1))` -/
def P708061795713994387.Spec : Prop :=
  ∀ n, P708061795713994387.a n = A323466 (n + 1)

end A323466

/-! ## A323466.P18353740735011783815

`A046821(A212591(n+2))`
-/

namespace A323466.P18353740735011783815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046821 (A212591 (n + 2)).toNat

end

end A323466.P18353740735011783815

namespace A323466

/-- `A046821(A212591(n+2))` -/
def P18353740735011783815.Spec : Prop :=
  ∀ n, P18353740735011783815.a n = A323466 (n + 1)

end A323466

/-! ## A323466.P6730511003200549642

`A046821(A000695(n+1))`
-/

namespace A323466.P6730511003200549642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046821 (A000695 (n + 1)).toNat

end

end A323466.P6730511003200549642

namespace A323466

/-- `A046821(A000695(n+1))` -/
def P6730511003200549642.Spec : Prop :=
  ∀ n, P6730511003200549642.a n = A323466 (n + 1)

end A323466

/-! ## A323466.P2737513382309893234

`A046822(A124108(n+1))`
-/

namespace A323466.P2737513382309893234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046822 (A124108 (n + 1)).toNat

end

end A323466.P2737513382309893234

namespace A323466

/-- `A046822(A124108(n+1))` -/
def P2737513382309893234.Spec : Prop :=
  ∀ n, P2737513382309893234.a n = A323466 (n + 1)

end A323466

/-!
# A323467: Smallest number in row n of A323465.

The programs for A323467, the canonical program `A323467.P10344582823700220232` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323467 has offset 1).

The definition of A323467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323467.P8017434034720802678

`∑[Δ[or(n, n+1)]/2]`
-/

namespace A323467.P8017434034720802678
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323467.P8017434034720802678

namespace A323467

/-- `∑[Δ[or(n, n+1)]/2]` -/
def P8017434034720802678.Spec : Prop :=
  ∀ n, P8017434034720802678.a n = (A323467 (n + 1) : ℚ)

end A323467

/-! ## A323467.P10344582823700220232

`floor(or(n+1, n+2)/2)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A323467

/-- `floor(or(n+1, n+2)/2)` -/
def P10344582823700220232.Spec : Prop :=
  ∀ n, P10344582823700220232.a n = A323467 (n + 1)

theorem P10344582823700220232.correct : P10344582823700220232.Spec := by
  intro n
  simp only [A323467, Nat.add_sub_cancel]

end A323467

/-! ## A323467.P14508468437723431402

`floor(cosh(log(or(n+1, n+2))))`
-/

namespace A323467.P14508468437723431402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (Nat.lor (n + 1) (n + 2) : ℝ))⌋

end

end A323467.P14508468437723431402

namespace A323467

/-- `floor(cosh(log(or(n+1, n+2))))` -/
def P14508468437723431402.Spec : Prop :=
  ∀ n, P14508468437723431402.a n = A323467 (n + 1)

end A323467

/-! ## A323467.P11537057593736243368

`floor(sinh(log(or(n+1, n+2))))`
-/

namespace A323467.P11537057593736243368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (Nat.lor (n + 1) (n + 2) : ℝ))⌋

end

end A323467.P11537057593736243368

namespace A323467

/-- `floor(sinh(log(or(n+1, n+2))))` -/
def P11537057593736243368.Spec : Prop :=
  ∀ n, P11537057593736243368.a n = A323467 (n + 1)

end A323467

/-! ## A323467.P1354087922161147052

`round(sinh(log(or(n+1, n+2))))`
-/

namespace A323467.P1354087922161147052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log (Nat.lor (n + 1) (n + 2) : ℝ)))

end

end A323467.P1354087922161147052

namespace A323467

/-- `round(sinh(log(or(n+1, n+2))))` -/
def P1354087922161147052.Spec : Prop :=
  ∀ n, P1354087922161147052.a n = A323467 (n + 1)

end A323467

/-! ## A323467.P62330524435286129

`or(∑[char[2*n]], ∑[n%2])`
-/

namespace A323467.P62330524435286129
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A323467.P62330524435286129

namespace A323467

/-- `or(∑[char[2*n]], ∑[n%2])` -/
def P62330524435286129.Spec : Prop :=
  ∀ n, (P62330524435286129.a n : ℤ) = A323467 (n + 1)

end A323467

/-! ## A323467.P8824860590646803858

`(or(n+1, n+2)-1)/2`
-/

namespace A323467.P8824860590646803858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor (n + 1) (n + 2) : ℤ) - 1 : ℚ) / 2

end

end A323467.P8824860590646803858

namespace A323467

/-- `(or(n+1, n+2)-1)/2` -/
def P8824860590646803858.Spec : Prop :=
  ∀ n, P8824860590646803858.a n = (A323467 (n + 1) : ℚ)

end A323467

/-! ## A323467.P6127479735391793081

`xor(1, or(n+1, n+2))/2`
-/

namespace A323467.P6127479735391793081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (Nat.lor (n + 1) (n + 2)) : ℚ) / 2

end

end A323467.P6127479735391793081

namespace A323467

/-- `xor(1, or(n+1, n+2))/2` -/
def P6127479735391793081.Spec : Prop :=
  ∀ n, P6127479735391793081.a n = (A323467 (n + 1) : ℚ)

end A323467

/-! ## A323467.P7356881593083921281

`∑[1-Δ[and(n, n+1)/2]]`
-/

namespace A323467.P7356881593083921281
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land n (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323467.P7356881593083921281

namespace A323467

/-- `∑[1-Δ[and(n, n+1)/2]]` -/
def P7356881593083921281.Spec : Prop :=
  ∀ n, P7356881593083921281.a n = (A323467 (n + 1) : ℚ)

end A323467

/-! ## A323467.P5062828206641492168

`and(-2, or(n+1, n+2))/2`
-/

namespace A323467.P5062828206641492168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (Nat.lor (n + 1) (n + 2) : ℤ) : ℚ) / 2

end

end A323467.P5062828206641492168

namespace A323467

/-- `and(-2, or(n+1, n+2))/2` -/
def P5062828206641492168.Spec : Prop :=
  ∀ n, P5062828206641492168.a n = (A323467 (n + 1) : ℚ)

end A323467

/-! ## A323467.P8830849939330872484

`(and(n+2, -(n+2))+n)/2`
-/

namespace A323467.P8830849939330872484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n + 2 : ℤ) (-(n + 2 : ℤ)) + (n : ℤ) : ℚ) / 2

end

end A323467.P8830849939330872484

namespace A323467

/-- `(and(n+2, -(n+2))+n)/2` -/
def P8830849939330872484.Spec : Prop :=
  ∀ n, P8830849939330872484.a n = (A323467 (n + 1) : ℚ)

end A323467

/-! ## A323467.P8624725275816492920

`1-and(n+1, n+2)/2+n`
-/

namespace A323467.P8624725275816492920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land (n + 1) (n + 2) : ℚ) / 2 + (n : ℚ)

end

end A323467.P8624725275816492920

namespace A323467

/-- `1-and(n+1, n+2)/2+n` -/
def P8624725275816492920.Spec : Prop :=
  ∀ n, P8624725275816492920.a n = (A323467 (n + 1) : ℚ)

end A323467

/-! ## A323467.P12508948286576412857

`(2*n-xor(n+1, -(n+3)))/4`
-/

namespace A323467.P12508948286576412857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - Int.xor (n + 1 : ℤ) (-(n + 3 : ℤ)) : ℚ) / 4

end

end A323467.P12508948286576412857

namespace A323467

/-- `(2*n-xor(n+1, -(n+3)))/4` -/
def P12508948286576412857.Spec : Prop :=
  ∀ n, P12508948286576412857.a n = (A323467 (n + 1) : ℚ)

end A323467

/-! ## A323467.P8855001715814172015

`ceil((xor(n+1, n+2)+2*n)/4)`
-/

namespace A323467.P8855001715814172015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor (n + 1) (n + 2) + 2 * n : ℚ) / 4⌉

end

end A323467.P8855001715814172015

namespace A323467

/-- `ceil((xor(n+1, n+2)+2*n)/4)` -/
def P8855001715814172015.Spec : Prop :=
  ∀ n, P8855001715814172015.a n = A323467 (n + 1)

end A323467

/-! ## A323467.P4614303129316299959

`round((xor(n+1, n+2)+2*n)/4)`
-/

namespace A323467.P4614303129316299959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor (n + 1) (n + 2) + 2 * n : ℚ) / 4)

end

end A323467.P4614303129316299959

namespace A323467

/-- `round((xor(n+1, n+2)+2*n)/4)` -/
def P4614303129316299959.Spec : Prop :=
  ∀ n, P4614303129316299959.a n = A323467 (n + 1)

end A323467

/-! ## A323467.P17010345323782706926

`(xor(n+1, n+2)+2*n+1)/4`
-/

namespace A323467.P17010345323782706926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor (n + 1) (n + 2) + (2 * n + 1) : ℚ) / 4

end

end A323467.P17010345323782706926

namespace A323467

/-- `(xor(n+1, n+2)+2*n+1)/4` -/
def P17010345323782706926.Spec : Prop :=
  ∀ n, P17010345323782706926.a n = (A323467 (n + 1) : ℚ)

end A323467

/-! ## A323467.P6066067356021203482

`∑[A214546(n+1)]`
-/

namespace A323467.P6066067356021203482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323467.P6066067356021203482

namespace A323467

/-- `∑[A214546(n+1)]` -/
def P6066067356021203482.Spec : Prop :=
  ∀ n, P6066067356021203482.a n = A323467 (n + 1)

end A323467

/-! ## A323467.P3169479967174510490

`A109168(n+2)-1`
-/

namespace A323467.P3169479967174510490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (n + 2) - 1

end

end A323467.P3169479967174510490

namespace A323467

/-- `A109168(n+2)-1` -/
def P3169479967174510490.Spec : Prop :=
  ∀ n, P3169479967174510490.a n = A323467 (n + 1)

end A323467

/-! ## A323467.P7013225822299264338

`A140472(n+2)-1`
-/

namespace A323467.P7013225822299264338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (n + 2) - 1

end

end A323467.P7013225822299264338

namespace A323467

/-- `A140472(n+2)-1` -/
def P7013225822299264338.Spec : Prop :=
  ∀ n, P7013225822299264338.a n = A323467 (n + 1)

end A323467

/-! ## A323467.P13962388173957737299

`or(round(n/2), A008619(n))`
-/

namespace A323467.P13962388173957737299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((n : ℚ) / 2)) (A008619 n)

end

end A323467.P13962388173957737299

namespace A323467

/-- `or(round(n/2), A008619(n))` -/
def P13962388173957737299.Spec : Prop :=
  ∀ n, P13962388173957737299.a n = A323467 (n + 1)

end A323467

/-!
# A323469: On a spirally numbered square grid, with labels starting at 1, this is the number of steps that a (1,n) leaper makes before getting trapped, or -1 if it never gets trapped.

The programs for A323469, there is no canonical definition to state claims against.
-/

/-! ## A323469.P11755175287217477817

`A323470(n+1)+A057427(n)`
-/

namespace A323469.P11755175287217477817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323470 (n + 1) + A057427 n

end

end A323469.P11755175287217477817

/-! ## A323469.P13140413582673795943

`A323470(n+1)-A057428(n)`
-/

namespace A323469.P13140413582673795943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323470 (n + 1) - A057428 n

end

end A323469.P13140413582673795943

/-! ## A323469.P16828079753958182854

`A323470(n+1)+char[A316669(n+1)]`
-/

namespace A323469.P16828079753958182854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316669 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323470 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A323469.P16828079753958182854

/-! ## A323469.P3471496654101073910

`A323470(n+1)+char[A317416(n+1)]`
-/

namespace A323469.P3471496654101073910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317416 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323470 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A323469.P3471496654101073910

/-! ## A323469.P10196051380125699725

`A323470(n+1)+and(1, A000040(n+1))`
-/

namespace A323469.P10196051380125699725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323470 (n + 1) + Int.land 1 (A000040 (n + 1))

end

end A323469.P10196051380125699725

/-! ## A323469.P1748615576366252387

`A323470(n+1)+p?[A079880(n+1)]%2`
-/

namespace A323469.P1748615576366252387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323470 (n + 1) + Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 2

end

end A323469.P1748615576366252387

/-! ## A323469.P3249571922490825346

`A323470(n+1)+Δ[A005563(n)]%(n+1)`
-/

namespace A323469.P3249571922490825346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323470 (n + 1) + Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A323469.P3249571922490825346

/-! ## A323469.P16342694202681256842

`A323470(n+1)+A323471(n+1)-A323472(n+1)`
-/

namespace A323469.P16342694202681256842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323470 (n + 1) + (A323471 (n + 1) - A323472 (n + 1))

end

end A323469.P16342694202681256842

/-! ## A323469.P10386154484098323458

`A323470(n+1)+A106609(A080335(n+1)%(n+1))`
-/

namespace A323469.P10386154484098323458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323470 (n + 1) + A106609 (Int.tmod (A080335 (n + 1)) (n + 1 : ℤ)).toNat

end

end A323469.P10386154484098323458

/-! ## A323469.P3001984507862164265

`A323470(n+1)-A259829(gcd(n, A105877(n+1))+1)`
-/

namespace A323469.P3001984507862164265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323470 (n + 1) - A259829 (Int.gcd (n : ℤ) (A105877 (n + 1)) + 1)

end

end A323469.P3001984507862164265

/-! ## A323469.P6243149959287457914

`A323470(n+1)+char[A329127(n+1)]`
-/

namespace A323469.P6243149959287457914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329127 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323470 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A323469.P6243149959287457914

/-! ## A323469.P11173300052683165048

`A323470(n+1)+char[A087465(n)]`
-/

namespace A323469.P11173300052683165048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087465 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323470 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A323469.P11173300052683165048

/-!
# A323470: On a spirally numbered square grid, with labels starting at 0, this is the number of the final step that a (1,n) leaper makes before getting trapped, or -1 if it never gets trapped.

The programs for A323470, there is no canonical definition to state claims against.
-/

/-! ## A323470.P17072984823287179643

`A323469(n+1)+A057428(n)`
-/

namespace A323470.P17072984823287179643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323469 (n + 1) + A057428 n

end

end A323470.P17072984823287179643

/-! ## A323470.P12603896730994016656

`A323469(n+1)-A057427(n)`
-/

namespace A323470.P12603896730994016656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323469 (n + 1) - A057427 n

end

end A323470.P12603896730994016656

/-! ## A323470.P8382262599675234446

`A323469(n+1)-A157928(n+1)`
-/

namespace A323470.P8382262599675234446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323469 (n + 1) - A157928 (n + 1)

end

end A323470.P8382262599675234446

/-! ## A323470.P15134408643653073514

`A323469(n+1)-char[A316669(n+1)]`
-/

namespace A323470.P15134408643653073514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316669 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323469 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A323470.P15134408643653073514

/-! ## A323470.P1191869608818818082

`A323469(n+1)-char[A317415(n+1)]`
-/

namespace A323470.P1191869608818818082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317415 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323469 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A323470.P1191869608818818082

/-! ## A323470.P12901498284065403412

`A323469(n+1)-char[A317416(n+1)]`
-/

namespace A323470.P12901498284065403412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317416 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323469 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A323470.P12901498284065403412

/-! ## A323470.P795098312672609571

`A323469(n+1)-and(1, A000040(n+1))`
-/

namespace A323470.P795098312672609571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323469 (n + 1) - Int.land 1 (A000040 (n + 1))

end

end A323470.P795098312672609571

/-! ## A323470.P11174649800659835233

`A323469(n+1)-ceil(n/A025396(n+1))`
-/

namespace A323470.P11174649800659835233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323469 (n + 1) - ⌈(n : ℚ) / (A025396 (n + 1) : ℚ)⌉

end

end A323470.P11174649800659835233

/-! ## A323470.P15527290262964617995

`A323469(n+1)-ceil(n/A179027(n+1))`
-/

namespace A323470.P15527290262964617995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323469 (n + 1) - ⌈(n : ℚ) / (A179027 (n + 1) : ℚ)⌉

end

end A323470.P15527290262964617995

/-! ## A323470.P12067156980389521679

`A323469(n+1)+A323472(n+1)-A323471(n+1)`
-/

namespace A323470.P12067156980389521679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323469 (n + 1) + (A323472 (n + 1) - A323471 (n + 1))

end

end A323470.P12067156980389521679

/-! ## A323470.P9122478914484975822

`A323469(n+1)-char[A329127(n+1)]`
-/

namespace A323470.P9122478914484975822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329127 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323469 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A323470.P9122478914484975822

/-!
# A323471: On a spirally numbered square grid, with labels starting at 1, this is the number of the last cell that a (1,n) leaper reaches before getting trapped, or -1 if it never gets trapped.

The programs for A323471, there is no canonical definition to state claims against.
-/

/-! ## A323471.P8305905276076689722

`A323472(n+1)+A057427(n)`
-/

namespace A323471.P8305905276076689722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323472 (n + 1) + A057427 n

end

end A323471.P8305905276076689722

/-! ## A323471.P17828533983179612552

`A323472(n+1)-A057428(n)`
-/

namespace A323471.P17828533983179612552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323472 (n + 1) - A057428 n

end

end A323471.P17828533983179612552

/-! ## A323471.P5431694613853425322

`A323472(n+1)+char[A052938(n)]`
-/

namespace A323471.P5431694613853425322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323472 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A323471.P5431694613853425322

/-! ## A323471.P8996700329661225154

`A323472(n+1)+char[A003602(n+1)]`
-/

namespace A323471.P8996700329661225154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323472 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A323471.P8996700329661225154

/-! ## A323471.P15285488909924451505

`A323472(n+1)+char[A317416(n+1)]`
-/

namespace A323471.P15285488909924451505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317416 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323472 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A323471.P15285488909924451505

/-! ## A323471.P12915176165514710953

`A323472(n+1)+char[A026238(n+2)]`
-/

namespace A323471.P12915176165514710953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323472 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A323471.P12915176165514710953

/-! ## A323471.P8410897111160434581

`A323472(n+1)+A059841(A008574(n))`
-/

namespace A323471.P8410897111160434581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323472 (n + 1) + A059841 (A008574 n).toNat

end

end A323471.P8410897111160434581

/-! ## A323471.P12931600423985918237

`A323472(n+1)+A072721(A063918(n+1))`
-/

namespace A323471.P12931600423985918237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323472 (n + 1) + A072721 (A063918 (n + 1)).toNat

end

end A323471.P12931600423985918237

/-! ## A323471.P17193808173236609388

`A323472(n+1)+A211261(A098058(n+1))`
-/

namespace A323471.P17193808173236609388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323472 (n + 1) + A211261 (A098058 (n + 1)).toNat

end

end A323471.P17193808173236609388

/-! ## A323471.P12311553407192299012

`A323472(n+1)+A211261(A215311(n+1))`
-/

namespace A323471.P12311553407192299012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323472 (n + 1) + A211261 (A215311 (n + 1)).toNat

end

end A323471.P12311553407192299012

/-! ## A323471.P1503536654610482006

`A323469(n+1)+A323472(n+1)-A323470(n+1)`
-/

namespace A323471.P1503536654610482006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323469 (n + 1) + (A323472 (n + 1) - A323470 (n + 1))

end

end A323471.P1503536654610482006

/-!
# A323472: On a spirally numbered square grid, with labels starting at 0, this is the number of the last cell that a (1,n) leaper reaches before getting trapped, or -1 if it never gets trapped.

The programs for A323472, there is no canonical definition to state claims against.
-/

/-! ## A323472.P1427249289059911081

`A323471(n+1)+A057428(n)`
-/

namespace A323472.P1427249289059911081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323471 (n + 1) + A057428 n

end

end A323472.P1427249289059911081

/-! ## A323472.P10492547600760275252

`A323471(n+1)-A057427(n)`
-/

namespace A323472.P10492547600760275252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323471 (n + 1) - A057427 n

end

end A323472.P10492547600760275252

/-! ## A323472.P18342181468593747850

`A323471(n+1)-char[A064664(n+1)]`
-/

namespace A323472.P18342181468593747850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323471 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A323472.P18342181468593747850

/-! ## A323472.P9624196431682872258

`A323471(n+1)-char[A108548(n+1)]`
-/

namespace A323472.P9624196431682872258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323471 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A323472.P9624196431682872258

/-! ## A323472.P17109042027456701965

`A323471(n+1)-char[A316669(n+1)]`
-/

namespace A323472.P17109042027456701965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316669 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323471 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A323472.P17109042027456701965

/-! ## A323472.P6034310052431016012

`A323471(n+1)-char[A317416(n+1)]`
-/

namespace A323472.P6034310052431016012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317416 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323471 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A323472.P6034310052431016012

/-! ## A323472.P17682332078389346533

`A323471(n+1)-A087436(A060264(n))`
-/

namespace A323472.P17682332078389346533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323471 (n + 1) - A087436 (A060264 n).toNat

end

end A323472.P17682332078389346533

/-! ## A323472.P12076708666008652492

`A323471(n+1)-A056594(A175368(n))`
-/

namespace A323472.P12076708666008652492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323471 (n + 1) - A056594 (A175368 n).toNat

end

end A323472.P12076708666008652492

/-! ## A323472.P12975010264052898470

`A323471(n+1)-A001221(A028233(n+1))`
-/

namespace A323472.P12975010264052898470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323471 (n + 1) - A001221 (A028233 (n + 1)).toNat

end

end A323472.P12975010264052898470

/-! ## A323472.P2195334982201986982

`A323471(n+1)-A062799(A008578(n+1))`
-/

namespace A323472.P2195334982201986982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323471 (n + 1) - A062799 (A008578 (n + 1)).toNat

end

end A323472.P2195334982201986982

/-! ## A323472.P912075478475920763

`A323471(n+1)-A001222(A139421(n+1))`
-/

namespace A323472.P912075478475920763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323471 (n + 1) - A001222 (A139421 (n + 1)).toNat

end

end A323472.P912075478475920763

/-! ## A323472.P6120653955841947798

`A323471(n+1)+A056594(A175368(n)+2)`
-/

namespace A323472.P6120653955841947798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323471 (n + 1) + A056594 (A175368 n + 2).toNat

end

end A323472.P6120653955841947798

/-! ## A323472.P8350386014817376370

`A323470(n+1)+A323471(n+1)-A323469(n+1)`
-/

namespace A323472.P8350386014817376370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323470 (n + 1) + (A323471 (n + 1) - A323469 (n + 1))

end

end A323472.P8350386014817376370

/-! ## A323472.P15151686998555228706

`A323471(n+1)-char[A329127(n+1)]`
-/

namespace A323472.P15151686998555228706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329127 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323471 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A323472.P15151686998555228706

/-! ## A323472.P5488470431687555440

`A323471(n+1)-char[A265110(n+1)]`
-/

namespace A323472.P5488470431687555440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265110 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323471 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A323472.P5488470431687555440

/-! ## A323472.P4094903654183822755

`A323471(n+1)-A000225(n)%2`
-/

namespace A323472.P4094903654183822755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323471 (n + 1) - Int.tmod (A000225 n) 2

end

end A323472.P4094903654183822755

/-!
# A323473: Array read by antidiagonals: Sprague-Grundy values G(n,k) (n>=0, k>=0) for the game of Euclid.

The programs for A323473, there is no canonical definition to state claims against.
-/

/-! ## A323473.P14357048537653296073

`A345927(A227074(n)-1)`
-/

namespace A323473.P14357048537653296073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345927 (A227074 n - 1).toNat

end

end A323473.P14357048537653296073

/-! ## A323473.P17420090520714040692

`floor(A008288(n)/2)%A186189(3*n+5)`
-/

namespace A323473.P17420090520714040692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A008288 n : ℚ) / 2⌋ (A186189 (3 * n + 5))

end

end A323473.P17420090520714040692

/-! ## A323473.P13120519927109189035

`A002113(A059922(n)%A141261(3*n+2))`
-/

namespace A323473.P13120519927109189035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (Int.tmod (A059922 n) (A141261 (3 * n + 2))).toNat

end

end A323473.P13120519927109189035

/-! ## A323473.P14803430485428719578

`A070615(A167040(n))`
-/

namespace A323473.P14803430485428719578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070615 ((A167040 n).toNat + 10)

end

end A323473.P14803430485428719578

/-! ## A323473.P6969660492704050294

`A014473(n)%A186412(A086620(n))`
-/

namespace A323473.P6969660492704050294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014473 n) (A186412 (A086620 n).toNat)

end

end A323473.P6969660492704050294

/-!
# A323474: Array read by antidiagonals: Sprague-Grundy values G_G(n,k) (n>=1, k>=1) for Grossman's game.

The programs for A323474, there is no canonical definition to state claims against.
-/

/-! ## A323474.P13057269902483344614

`A003984(A135381(n))-A227177(A004247(n))`
-/

namespace A323474.P13057269902483344614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (A135381 n).toNat - A227177 (A004247 n).toNat

end

end A323474.P13057269902483344614

/-! ## A323474.P8315267996713933721

`A003984(A135381(n))-A227177(A048720(n))`
-/

namespace A323474.P8315267996713933721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (A135381 n).toNat - A227177 (A048720 n).toNat

end

end A323474.P8315267996713933721

/-! ## A323474.P3093265585209176866

`A087061(n)-A064547(A202988(n+1))`
-/

namespace A323474.P3093265585209176866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 n - A064547 (A202988 (n + 1)).toNat

end

end A323474.P3093265585209176866

/-! ## A323474.P12967631776347281446

`A204143(n+1)-A323308(A240706(n+1))`
-/

namespace A323474.P12967631776347281446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204143 (n + 1) - A323308 (A240706 (n + 1)).toNat

end

end A323474.P12967631776347281446

/-! ## A323474.P13755778639405183578

`A330240(n)-A124762(A008292(n+1))`
-/

namespace A323474.P13755778639405183578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330240 n - A124762 (A008292 (n + 1)).toNat

end

end A323474.P13755778639405183578

/-!
# A323475: Number of new terms added at n-th generation of A306211.

The programs for A323475, there is no canonical definition to state claims against.
-/

/-! ## A323475.P10423547765892310071

`Δ[A306215(A028310(n))]+C(2, n+2)`
-/

namespace A323475.P10423547765892310071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306215 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A323475.P10423547765892310071

/-! ## A323475.P13287487710154778973

`A000007(n)+Δ[A306215(A028310(n))]`
-/

namespace A323475.P13287487710154778973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306215 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A323475.P13287487710154778973

/-! ## A323475.P1089668161675783964

`Δ[A306215(A028310(n))+A057427(n)]`
-/

namespace A323475.P1089668161675783964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306215 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323475.P1089668161675783964

/-! ## A323475.P3522910131642806420

`A151909(n)+Δ[A306215(A028310(n))]`
-/

namespace A323475.P3522910131642806420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306215 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n + (f1 (n + 1) - f1 n)

end

end A323475.P3522910131642806420

/-! ## A323475.P714893213933454827

`Δ[A306215(A028310(n))%A000079(n)]`
-/

namespace A323475.P714893213933454827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306215 (A028310 n).toNat) (A000079 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323475.P714893213933454827

/-! ## A323475.P12125816472649406332

`Δ[A306215(A028310(n))]^A002828(n²)`
-/

namespace A323475.P12125816472649406332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306215 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A002828 (n ^ 2) : ℤ)

end

end A323475.P12125816472649406332

/-! ## A323475.P13009031833024735730

`Δ[A306215(A028310(n))]^A019431(2*n)`
-/

namespace A323475.P13009031833024735730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306215 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A019431 (2 * n) : ℤ)

end

end A323475.P13009031833024735730

/-! ## A323475.P1944648736698937582

`Δ[A306215(A028310(n))]+A001316(n)%2`
-/

namespace A323475.P1944648736698937582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306215 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A001316 n) 2

end

end A323475.P1944648736698937582

/-! ## A323475.P3754356851373855491

`Δ[A306215(A028310(n))]+A004018(n)%2`
-/

namespace A323475.P3754356851373855491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306215 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A004018 n) 2

end

end A323475.P3754356851373855491

/-! ## A323475.P13751859243107665269

`Δ[A306215(A028310(n))+A000040(n+1)%2]`
-/

namespace A323475.P13751859243107665269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306215 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323475.P13751859243107665269

/-!
# A323476: Positions of 3's in A306211.

The programs for A323476, there is no canonical definition to state claims against.
-/

/-! ## A323476.P16812592389872021450

`eq[3, A306211(n+1)]+1`
-/

namespace A323476.P16812592389872021450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306211 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A323476.P16812592389872021450

/-! ## A323476.P13683771651480541452

`eq[3, A306211(A028310(n))]`
-/

namespace A323476.P13683771651480541452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306211 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323476.P13683771651480541452

/-! ## A323476.P4293402631846715072

`A063660(eq[3, A306211(n+1)])`
-/

namespace A323476.P4293402631846715072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A323476.P4293402631846715072

/-! ## A323476.P17967895524490323281

`eq[3, A306211(A138153(n+1))]`
-/

namespace A323476.P17967895524490323281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306211 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323476.P17967895524490323281

/-! ## A323476.P18285746102882567386

`eq[3, A306211(A233583(n+1))]`
-/

namespace A323476.P18285746102882567386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306211 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323476.P18285746102882567386

/-!
# A323478: a(1)=1; thereafter, a(n) = string appended to (n-1)-st generation of A306211 to get the n-th generation.

The programs for A323478, there is no canonical definition to state claims against.
-/

/-! ## A323478.P7050138141056699945

`A329318(A107475(n))`
-/

namespace A323478.P7050138141056699945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329318 (A107475 n).toNat

end

end A323478.P7050138141056699945

/-! ## A323478.P16507221897541323718

`A329318(A020085(n)+n)`
-/

namespace A323478.P16507221897541323718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329318 (A020085 n + (n : ℤ)).toNat

end

end A323478.P16507221897541323718

/-!
# A323481: Number of 1's in n-th generation of A306211.

The programs for A323481, there is no canonical definition to state claims against.
-/

/-! ## A323481.P3196008935744682545

`A003056(∑[A380268(n)+A380256(n)]+2)`
-/

namespace A323481.P3196008935744682545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380268 n + A380256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A323481.P3196008935744682545

/-! ## A323481.P9920558308275466145

`A137735(A188492(n)+1+n)`
-/

namespace A323481.P9920558308275466145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A188492 n + 1 + (n : ℤ)).toNat

end

end A323481.P9920558308275466145

/-! ## A323481.P14225133567969026671

`A000194(A188492(n)+A109199(n))`
-/

namespace A323481.P14225133567969026671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A188492 n + A109199 n).toNat

end

end A323481.P14225133567969026671

/-! ## A323481.P7593007366264884549

`A137735(A188492(n)+A001611(n))`
-/

namespace A323481.P7593007366264884549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A188492 n + A001611 n).toNat

end

end A323481.P7593007366264884549

/-! ## A323481.P15875942434096773297

`A137735(A188492(n)+A077168(n))`
-/

namespace A323481.P15875942434096773297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A188492 n + A077168 n).toNat

end

end A323481.P15875942434096773297

/-!
# A323491: Denominators of the sequence c(n) satisfying Sum_{k=0..n} c(k)/(n+k+1) = 0 with c(0)=1.

The programs for A323491, there is no canonical definition to state claims against.
-/

/-! ## A323491.P3396082834070469258

`A081123(4*n)/A200370(A231746(n+1))`
-/

namespace A323491.P3396082834070469258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081123 (4 * n) : ℚ) / (A200370 (A231746 (n + 1)).toNat : ℚ)

end

end A323491.P3396082834070469258

/-! ## A323491.P5760281648328445062

`A343206(∑{e}[10^n, #])`
-/

namespace A323491.P5760281648328445062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343206 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A323491.P5760281648328445062

/-!
# A323495: Irregular table read by rows: T(n,k) = (2*k+1)^(-1) mod 2^n, 0 <= k <= 2^(n-1) - 1.

The programs for A323495, there is no canonical definition to state claims against.
-/

/-! ## A323495.P4540439959670540123

`and(∑[A099894(n)], A195279(n+1))`
-/

namespace A323495.P4540439959670540123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A195279 (n + 1))

end

end A323495.P4540439959670540123

/-! ## A323495.P5764219275064402515

`A195279(n+1)%A053644(2*(n+1))`
-/

namespace A323495.P5764219275064402515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195279 (n + 1)) (A053644 (2 * (n + 1)))

end

end A323495.P5764219275064402515

/-! ## A323495.P18070883967043437582

`and(A126646(A000523(n+1)), A195279(n+1))`
-/

namespace A323495.P18070883967043437582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 (A000523 (n + 1)).toNat) (A195279 (n + 1))

end

end A323495.P18070883967043437582

/-! ## A323495.P641756642351278598

`A323554(n+1)%A366962(A202924(n+5))`
-/

namespace A323495.P641756642351278598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323554 (n + 1)) (A366962 (A202924 (n + 5)).toNat)

end

end A323495.P641756642351278598

/-! ## A323495.P5188984871907158275

`A144396(A135301(2*(n+1)))%A053644(2*(n+1))`
-/

namespace A323495.P5188984871907158275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144396 (A135301 (2 * (n + 1))).toNat) (A053644 (2 * (n + 1)))

end

end A323495.P5188984871907158275

/-!
# A323496: a(n) = Product_{k=1..n} (binomial(k-1,3) + binomial(n-k,3)).

The programs for A323496, there is no canonical definition to state claims against.
-/

/-! ## A323496.P13461538883180338588

`4*20^(a(n-1)+2)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0`
-/

namespace A323496.P13461538883180338588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 0, 0] fun n a =>
  4 * 20 ^ (a (n - 1) + 2)

end

end A323496.P13461538883180338588

/-! ## A323496.P11333380580835616284

`and(41, A064493(n))²`
-/

namespace A323496.P11333380580835616284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 41 (A064493 n) ^ 2

end

end A323496.P11333380580835616284

/-! ## A323496.P3396859418462721773

`A267391(a(n-1)+n)²` with `a(0)=1`
-/

namespace A323496.P3396859418462721773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267391 (a (n - 1) + (n : ℤ)).toNat ^ 2

end

end A323496.P3396859418462721773

/-!
# A323497: a(n) = Product_{k=1..n} (binomial(k-1,4) + binomial(n-k,4)).

The programs for A323497, there is no canonical definition to state claims against.
-/

/-! ## A323497.P7346195403869483366

`A084110(A008932(n))*A353557(n+1)`
-/

namespace A323497.P7346195403869483366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084110 (A008932 n).toNat * A353557 (n + 1)

end

end A323497.P7346195403869483366

/-! ## A323497.P18407628642409464354

`A002620(A225386(n+1)*A353882(n))`
-/

namespace A323497.P18407628642409464354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A225386 (n + 1) * A353882 n).toNat

end

end A323497.P18407628642409464354

/-! ## A323497.P17269064508608304407

`A002620(A033547(3*n+1)*A263363(n))`
-/

namespace A323497.P17269064508608304407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A033547 (3 * n + 1) * A263363 n).toNat

end

end A323497.P17269064508608304407

/-! ## A323497.P12617134793266058283

`A002620(A033547(3*n+1)*A243743(n+8))`
-/

namespace A323497.P12617134793266058283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A033547 (3 * n + 1) * A243743 (n + 8)).toNat

end

end A323497.P12617134793266058283

/-!
# A323499: Number of minimum dominating sets in the n-triangular (Johnson) graph.

The programs for A323499, there is no canonical definition to state claims against.
-/

/-! ## A323499.P6812272599737648395

`A332961(A028980(n+1))`
-/

namespace A323499.P6812272599737648395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332961 (A028980 (n + 1)).toNat

end

end A323499.P6812272599737648395

/-! ## A323499.P11098644775401485458

`filter[A332961(n+1), A030308(#)]`
-/

namespace A323499.P11098644775401485458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030308 (f1 j).toNat = 1) n)

end

end A323499.P11098644775401485458

