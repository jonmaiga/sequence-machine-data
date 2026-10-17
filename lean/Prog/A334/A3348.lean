import SequenceMachineLib
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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
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
import Seq.B007.C001
import Seq.B008.C001
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
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A334800: a(n) is the number of values d*p less than n, where d is a divisor of n, p is a prime, and d*p is not a divisor of n.

The programs for A334800, the canonical program `A334800.P4513335297567322539` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334800 has offset 1).

The definition of A334800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334800.P8561201700090962597

`∑{d}[n+1, A048865(#)]`
-/

namespace A334800.P8561201700090962597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048865 d

end

end A334800.P8561201700090962597

namespace A334800

/-- `∑{d}[n+1, A048865(#)]` -/
def P8561201700090962597.Spec : Prop :=
  ∀ n, P8561201700090962597.a n = A334800 (n + 1)

end A334800

/-! ## A334800.P4513335297567322539

`A062774(n+1)-A062799(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A334800

/-- `A062774(n+1)-A062799(n+1)` -/
def P4513335297567322539.Spec : Prop :=
  ∀ n, P4513335297567322539.a n = A334800 (n + 1)

theorem P4513335297567322539.correct : P4513335297567322539.Spec := by
  intro n
  simp only [A334800, Nat.add_sub_cancel]

end A334800

/-! ## A334800.P10709598599494650350

`∑{d}[n+1, A000720(#)-A001221(#)]`
-/

namespace A334800.P10709598599494650350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000720 d - A001221 d)

end

end A334800.P10709598599494650350

namespace A334800

/-- `∑{d}[n+1, A000720(#)-A001221(#)]` -/
def P10709598599494650350.Spec : Prop :=
  ∀ n, P10709598599494650350.a n = A334800 (n + 1)

end A334800

/-! ## A334800.P3647880579986506017

`∑{d}[n+1, A000720(#)-A001222(A181819(#))]`
-/

namespace A334800.P3647880579986506017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000720 d - A001222 (A181819 d).toNat)

end

end A334800.P3647880579986506017

namespace A334800

/-- `∑{d}[n+1, A000720(#)-A001222(A181819(#))]` -/
def P3647880579986506017.Spec : Prop :=
  ∀ n, P3647880579986506017.a n = A334800 (n + 1)

end A334800

/-! ## A334800.P8282547492025530204

`A062774(n+1)+A330018(n+1)-A069264(n+1)`
-/

namespace A334800.P8282547492025530204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062774 (n + 1) + (A330018 (n + 1) - A069264 (n + 1))

end

end A334800.P8282547492025530204

namespace A334800

/-- `A062774(n+1)+A330018(n+1)-A069264(n+1)` -/
def P8282547492025530204.Spec : Prop :=
  ∀ n, P8282547492025530204.a n = A334800 (n + 1)

end A334800

/-! ## A334800.P6902010910260257870

`∑{d}[n+1, A230980(#)-A001221(#)]`
-/

namespace A334800.P6902010910260257870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A230980 d - A001221 d)

end

end A334800.P6902010910260257870

namespace A334800

/-- `∑{d}[n+1, A230980(#)-A001221(#)]` -/
def P6902010910260257870.Spec : Prop :=
  ∀ n, P6902010910260257870.a n = A334800 (n + 1)

end A334800

/-!
# A334801: Perimeters of Pythagorean triangles whose long leg divides its area.

The programs for A334801, there is no canonical definition to state claims against.
-/

/-! ## A334801.P2874950751806297384

`2*(lt[1, A067742((n+1)²)]+1)`
-/

namespace A334801.P2874950751806297384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A334801.P2874950751806297384

/-! ## A334801.P11991142845322327905

`∩[A253881(n+1), A299729(n+1)]`
-/

namespace A334801.P11991142845322327905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334801.P11991142845322327905

/-!
# A334802: Positive integers of the form x^4 - y^4 that have exactly 4 divisors.

The programs for A334802, there is no canonical definition to state claims against.
-/

/-! ## A334802.P2603656252300336239

`A048161(n+1)*A067756(n+1)`
-/

namespace A334802.P2603656252300336239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048161 (n + 1) * A067756 (n + 1)

end

end A334802.P2603656252300336239

/-! ## A334802.P795759478075832109

`(A067755(n+1)+1)*A048161(n+1)`
-/

namespace A334802.P795759478075832109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A067755 (n + 1) + 1) * A048161 (n + 1)

end

end A334802.P795759478075832109

/-! ## A334802.P3550217577738298233

`ceil(A263951(n+1)/2)*A048161(n+1)`
-/

namespace A334802.P3550217577738298233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A263951 (n + 1) : ℚ) / 2⌉ * A048161 (n + 1)

end

end A334802.P3550217577738298233

/-! ## A334802.P2642349201884593101

`(A178659(n+1)+A068501(n+1))*A067756(n+1)`
-/

namespace A334802.P2642349201884593101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A178659 (n + 1) + A068501 (n + 1)) * A067756 (n + 1)

end

end A334802.P2642349201884593101

/-! ## A334802.P14318647022597423290

`lcm(A048161(n+1), A067756((n+1)%A002731(n+1)))`
-/

namespace A334802.P14318647022597423290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048161 (n + 1)) (A067756 (Int.tmod (n + 1 : ℤ) (A002731 (n + 1))).toNat)

end

end A334802.P14318647022597423290

/-! ## A334802.P15357868859530393968

`∩[A066886(n+1), A398195(n+1)]`
-/

namespace A334802.P15357868859530393968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334802.P15357868859530393968

/-! ## A334802.P1768783508696703428

`A005917(A178659(n+1))`
-/

namespace A334802.P1768783508696703428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005917 (A178659 (n + 1)).toNat

end

end A334802.P1768783508696703428

/-! ## A334802.P14311862622608164836

`∩[A005917(n+1), A398195(n+1)]`
-/

namespace A334802.P14311862622608164836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334802.P14311862622608164836

/-! ## A334802.P17641689450882162162

`record[A000040(n+2)*A125256(A000040(n+2))]`
-/

namespace A334802.P17641689450882162162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A125256 (A000040 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334802.P17641689450882162162

/-! ## A334802.P11377063322003339101

`record[A060308(n+2)*A125256(A060308(n+2))]`
-/

namespace A334802.P11377063322003339101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (n + 2) * A125256 (A060308 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334802.P11377063322003339101

/-! ## A334802.P3878930889917506282

`∩[A005917(n+1), A278921(n+1)]`
-/

namespace A334802.P3878930889917506282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334802.P3878930889917506282

/-! ## A334802.P89042199222164681

`∩[A066886(n+1), A278921(n+1)]`
-/

namespace A334802.P89042199222164681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334802.P89042199222164681

/-! ## A334802.P11487616250341758074

`∩[A278921(n+1), A398195(n+1)]`
-/

namespace A334802.P11487616250341758074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334802.P11487616250341758074

/-! ## A334802.P1731358232571969764

`A006003(A048161(n+1))`
-/

namespace A334802.P1731358232571969764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (A048161 (n + 1)).toNat

end

end A334802.P1731358232571969764

/-! ## A334802.P8058414978117944091

`∩[A278921(n+1), A006003(n)]`
-/

namespace A334802.P8058414978117944091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334802.P8058414978117944091

/-! ## A334802.P11030642386407046427

`∩[A398195(n+1), A006003(n)]`
-/

namespace A334802.P11030642386407046427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334802.P11030642386407046427

/-! ## A334802.P15541414425639805080

`∩[A278921(n+1), A212975(n)]`
-/

namespace A334802.P15541414425639805080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212975 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334802.P15541414425639805080

/-! ## A334802.P1122856506515440914

`∩[A398195(n+1), A212975(n)]`
-/

namespace A334802.P1122856506515440914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212975 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334802.P1122856506515440914

/-! ## A334802.P10530262527479639313

`A034262(p?[A002731(n+1)])/2`
-/

namespace A334802.P10530262527479639313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034262 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 2

end

end A334802.P10530262527479639313

/-! ## A334802.P14508005342481848539

`∩[A074132(n+1), A278921(n+1)]`
-/

namespace A334802.P14508005342481848539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334802.P14508005342481848539

/-!
# A334804: Perimeters of Pythagorean triangles with prime hypotenuse.

The programs for A334804, there is no canonical definition to state claims against.
-/

/-! ## A334804.P11925650432017249008

`record[A024364(n+1)/A001222(A081804(n+1))]`
-/

namespace A334804.P11925650432017249008
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024364 (n + 1) : ℚ) / (A001222 (A081804 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334804.P11925650432017249008

/-! ## A334804.P2498034235036562453

`A093507(A355547(n+1))`
-/

namespace A334804.P2498034235036562453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093507 (A355547 (n + 1)).toNat

end

end A334804.P2498034235036562453

/-! ## A334804.P16337307738503188985

`filter[A024364(n+1), A357298(#)]`
-/

namespace A334804.P16337307738503188985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A357298 (f1 j).toNat = 1) n)

end

end A334804.P16337307738503188985

/-! ## A334804.P8200402902542387706

`filter[A093507(n+1), A357298(#)]`
-/

namespace A334804.P8200402902542387706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A357298 (f1 j).toNat = 1) n)

end

end A334804.P8200402902542387706

/-!
# A334805: a(n) = Product_{d|n} lcm(d, sigma(d)) where sigma(k) is the sum of divisors of k (A000203).

The programs for A334805, the canonical program `A334805.P16057716402093217901` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334805 has offset 1).

The definition of A334805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334805.P8437950440096177778

`∏{d}[n+1, A009242(#)]`
-/

namespace A334805.P8437950440096177778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A009242 d

end

end A334805.P8437950440096177778

namespace A334805

/-- `∏{d}[n+1, A009242(#)]` -/
def P8437950440096177778.Spec : Prop :=
  ∀ n, P8437950440096177778.a n = A334805 (n + 1)

end A334805

/-! ## A334805.P16057716402093217901

`∏{d}[n+1, lcm(#, A000203(#))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A334805

/-- `∏{d}[n+1, lcm(#, A000203(#))]` -/
def P16057716402093217901.Spec : Prop :=
  ∀ n, (P16057716402093217901.a n : ℤ) = A334805 (n + 1)

theorem P16057716402093217901.correct : P16057716402093217901.Spec := by
  intro n
  simp only [A334805, Nat.add_sub_cancel]

end A334805

/-! ## A334805.P250670839944976546

`∏{d}[n+1, A000203(#)*A017666(#)]`
-/

namespace A334805.P250670839944976546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000203 d * A017666 d

end

end A334805.P250670839944976546

namespace A334805

/-- `∏{d}[n+1, A000203(#)*A017666(#)]` -/
def P250670839944976546.Spec : Prop :=
  ∀ n, P250670839944976546.a n = A334805 (n + 1)

end A334805

/-! ## A334805.P8352832306638282976

`A324980(n+1)/A334491(n+1)`
-/

namespace A334805.P8352832306638282976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324980 (n + 1) : ℚ) / (A334491 (n + 1) : ℚ)

end

end A334805.P8352832306638282976

namespace A334805

/-- `A324980(n+1)/A334491(n+1)` -/
def P8352832306638282976.Spec : Prop :=
  ∀ n, P8352832306638282976.a n = (A334805 (n + 1) : ℚ)

end A334805

/-! ## A334805.P15558543286194237264

`A324980(n+1)/∏{d}[n+1, A009194(#)]`
-/

namespace A334805.P15558543286194237264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324980 (n + 1) : ℚ) / ((∏ d ∈ Nat.divisors (f1 n), A009194 d : ℤ) : ℚ)

end

end A334805.P15558543286194237264

namespace A334805

/-- `A324980(n+1)/∏{d}[n+1, A009194(#)]` -/
def P15558543286194237264.Spec : Prop :=
  ∀ n, P15558543286194237264.a n = (A334805 (n + 1) : ℚ)

end A334805

/-! ## A334805.P1365623553516560913

`A324980(n+1)/∏{d}[n+1, #/A017666(#)]`
-/

namespace A334805.P1365623553516560913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324980 (n + 1) : ℚ) / (∏ d ∈ Nat.divisors (f1 n), (d : ℚ) / (A017666 d : ℚ))

end

end A334805.P1365623553516560913

namespace A334805

/-- `A324980(n+1)/∏{d}[n+1, #/A017666(#)]` -/
def P1365623553516560913.Spec : Prop :=
  ∀ n, P1365623553516560913.a n = (A334805 (n + 1) : ℚ)

end A334805

/-! ## A334805.P17437814438454330376

`A324980(n+1)/∏{d}[n+1, gcd(#, A000203(#))]`
-/

namespace A334805.P17437814438454330376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324980 (n + 1) : ℚ) / ((∏ d ∈ Nat.divisors (f1 n), Int.gcd (d : ℤ) (A000203 d) : ℕ) : ℚ)

end

end A334805.P17437814438454330376

namespace A334805

/-- `A324980(n+1)/∏{d}[n+1, gcd(#, A000203(#))]` -/
def P17437814438454330376.Spec : Prop :=
  ∀ n, P17437814438454330376.a n = (A334805 (n + 1) : ℚ)

end A334805

/-!
# A334806: a(n) = Product_{d|n} lcm(tau(d), sigma(d)) where tau(k) is the number of divisors of k (A000005) and sigma(k) is the sum of divisors of k (A000203).

The programs for A334806, the canonical program `A334806.P16639427483834950340` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334806 has offset 1).

The definition of A334806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2519 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334806.P16639427483834950340

`∏{d}[n+1, A009278(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A334806

/-- `∏{d}[n+1, A009278(#)]` -/
def P16639427483834950340.Spec : Prop :=
  ∀ n, P16639427483834950340.a n = A334806 (n + 1)

theorem P16639427483834950340.correct : P16639427483834950340.Spec := by
  intro n
  simp only [A334806, Nat.add_sub_cancel]

end A334806

/-! ## A334806.P6376984255267617880

`∏{d}[n+1, lcm(A000005(#), A000203(#))]`
-/

namespace A334806.P6376984255267617880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Int.lcm (A000005 d) (A000203 d)

end

end A334806.P6376984255267617880

namespace A334806

/-- `∏{d}[n+1, lcm(A000005(#), A000203(#))]` -/
def P6376984255267617880.Spec : Prop :=
  ∀ n, (P6376984255267617880.a n : ℤ) = A334806 (n + 1)

end A334806

/-! ## A334806.P3174503834097844030

`A206032(n+1)/A334729(n+1)*A211776(n+1)`
-/

namespace A334806.P3174503834097844030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206032 (n + 1) : ℚ) / (A334729 (n + 1) : ℚ) * (A211776 (n + 1) : ℚ)

end

end A334806.P3174503834097844030

namespace A334806

/-- `A206032(n+1)/A334729(n+1)*A211776(n+1)` -/
def P3174503834097844030.Spec : Prop :=
  ∀ n, P3174503834097844030.a n = (A334806 (n + 1) : ℚ)

end A334806

/-! ## A334806.P4203491251741859500

`A324987(n+1)/A334729(n+1)`
-/

namespace A334806.P4203491251741859500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324987 (n + 1) : ℚ) / (A334729 (n + 1) : ℚ)

end

end A334806.P4203491251741859500

namespace A334806

/-- `A324987(n+1)/A334729(n+1)` -/
def P4203491251741859500.Spec : Prop :=
  ∀ n, P4203491251741859500.a n = (A334806 (n + 1) : ℚ)

end A334806

/-! ## A334806.P12636132693239323155

`∏{d}[n+1, A000005(#)*A000203(#)]/A334729(n+1)`
-/

namespace A334806.P12636132693239323155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), A000005 d * A000203 d : ℤ) : ℚ) / (A334729 (n + 1) : ℚ)

end

end A334806.P12636132693239323155

namespace A334806

/-- `∏{d}[n+1, A000005(#)*A000203(#)]/A334729(n+1)` -/
def P12636132693239323155.Spec : Prop :=
  ∀ n, P12636132693239323155.a n = (A334806 (n + 1) : ℚ)

end A334806

/-!
# A334807: a(n) = Product_{d|n} lcm(tau(d), pod(d)) where tau(k) is the number of divisors of k (A000005) and pod(k) is the product of divisors of k (A007955).

The programs for A334807, the canonical program `A334807.P16460342696752361550` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334807 has offset 1).

The definition of A334807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334807.P16460342696752361550

`∏{d}[n+1, A324528(#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A334807

/-- `∏{d}[n+1, A324528(#)]` -/
def P16460342696752361550.Spec : Prop :=
  ∀ n, P16460342696752361550.a n = A334807 (n + 1)

theorem P16460342696752361550.correct : P16460342696752361550.Spec := by
  intro n
  simp only [A334807, Nat.add_sub_cancel]

end A334807

/-! ## A334807.P16983542125993242917

`A307101(n+1)/A334730(n+1)`
-/

namespace A334807.P16983542125993242917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307101 (n + 1) : ℚ) / (A334730 (n + 1) : ℚ)

end

end A334807.P16983542125993242917

namespace A334807

/-- `A307101(n+1)/A334730(n+1)` -/
def P16983542125993242917.Spec : Prop :=
  ∀ n, P16983542125993242917.a n = (A334807 (n + 1) : ℚ)

end A334807

/-! ## A334807.P12129815007268044216

`A211776(n+1)*A266265(n+1)/A334730(n+1)`
-/

namespace A334807.P12129815007268044216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211776 (n + 1) * A266265 (n + 1) : ℚ) / (A334730 (n + 1) : ℚ)

end

end A334807.P12129815007268044216

namespace A334807

/-- `A211776(n+1)*A266265(n+1)/A334730(n+1)` -/
def P12129815007268044216.Spec : Prop :=
  ∀ n, P12129815007268044216.a n = (A334807 (n + 1) : ℚ)

end A334807

/-! ## A334807.P14489251403515915627

`A306705(n+1)*A322672(n+1)/A334730(n+1)`
-/

namespace A334807.P14489251403515915627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306705 (n + 1) * A322672 (n + 1) : ℚ) / (A334730 (n + 1) : ℚ)

end

end A334807.P14489251403515915627

namespace A334807

/-- `A306705(n+1)*A322672(n+1)/A334730(n+1)` -/
def P14489251403515915627.Spec : Prop :=
  ∀ n, P14489251403515915627.a n = (A334807 (n + 1) : ℚ)

end A334807

/-! ## A334807.P9876781808409899566

`∏{d}[n+1, sqrt(A062758(#))]*A211776(n+1)/A334730(n+1)`
-/

namespace A334807.P9876781808409899566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f1 n), Real.sqrt (A062758 d : ℝ)) * (A211776 (n + 1) : ℝ) / (A334730 (n + 1) : ℝ)

end

end A334807.P9876781808409899566

namespace A334807

/-- `∏{d}[n+1, sqrt(A062758(#))]*A211776(n+1)/A334730(n+1)` -/
def P9876781808409899566.Spec : Prop :=
  ∀ n, P9876781808409899566.a n = (A334807 (n + 1) : ℝ)

end A334807

/-!
# A334808: Consider all the Pythagorean triangles with perimeter A010814(n). Then a(n) is the sum of the areas of the squares on all of their sides.

The programs for A334808, there is no canonical definition to state claims against.
-/

/-! ## A334808.P14771930214635486398

`2*A134422(A032551(n+2))`
-/

namespace A334808.P14771930214635486398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134422 (A032551 (n + 2)).toNat

end

end A334808.P14771930214635486398

/-! ## A334808.P992208532158781035

`A106609(16*A134422(n+1))`
-/

namespace A334808.P992208532158781035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (16 * A134422 (n + 1)).toNat

end

end A334808.P992208532158781035

/-! ## A334808.P16703919588938112236

`A020639((n+2)!)*A198385(n+1)`
-/

namespace A334808.P16703919588938112236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.factorial (n + 2)) * A198385 (n + 1)

end

end A334808.P16703919588938112236

/-!
# A334809: a(n) = Product_{d|n} lcm(sigma(d), pod(d)) where sigma(k) is the sum of divisors of k (A000203) and pod(k) is the product of divisors of k (A007955).

The programs for A334809, the canonical program `A334809.P2350864058122881923` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334809 has offset 1).

The definition of A334809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334809.P2350864058122881923

`∏{d}[n+1, A324529(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A334809

/-- `∏{d}[n+1, A324529(#)]` -/
def P2350864058122881923.Spec : Prop :=
  ∀ n, P2350864058122881923.a n = A334809 (n + 1)

theorem P2350864058122881923.correct : P2350864058122881923.Spec := by
  intro n
  simp only [A334809, Nat.add_sub_cancel]

end A334809

/-! ## A334809.P15755283978643117686

`A325030(n+1)/A334731(n+1)`
-/

namespace A334809.P15755283978643117686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325030 (n + 1) : ℚ) / (A334731 (n + 1) : ℚ)

end

end A334809.P15755283978643117686

namespace A334809

/-- `A325030(n+1)/A334731(n+1)` -/
def P15755283978643117686.Spec : Prop :=
  ∀ n, P15755283978643117686.a n = (A334809 (n + 1) : ℚ)

end A334809

/-! ## A334809.P2025233899229465413

`A325030(n+1)/A306682(A077741(n+1))`
-/

namespace A334809.P2025233899229465413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325030 (n + 1) : ℚ) / (A306682 (A077741 (n + 1)).toNat : ℚ)

end

end A334809.P2025233899229465413

namespace A334809

/-- `A325030(n+1)/A306682(A077741(n+1))` -/
def P2025233899229465413.Spec : Prop :=
  ∀ n, P2025233899229465413.a n = (A334809 (n + 1) : ℚ)

end A334809

/-! ## A334809.P5515434653882148290

`A325030(n+1)/A126795(A061147(n+1)²)`
-/

namespace A334809.P5515434653882148290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325030 (n + 1) : ℚ) / (A126795 (A061147 (n + 1) ^ 2).toNat : ℚ)

end

end A334809.P5515434653882148290

namespace A334809

/-- `A325030(n+1)/A126795(A061147(n+1)²)` -/
def P5515434653882148290.Spec : Prop :=
  ∀ n, P5515434653882148290.a n = (A334809 (n + 1) : ℚ)

end A334809

/-! ## A334809.P10223475000753311037

`A325030(n+1)/gcd((n+1)², A174672(A174650(n)))`
-/

namespace A334809.P10223475000753311037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325030 (n + 1) : ℚ) / (Int.gcd ((n + 1) ^ 2 : ℤ) (A174672 (A174650 n).toNat) : ℚ)

end

end A334809.P10223475000753311037

namespace A334809

/-- `A325030(n+1)/gcd((n+1)², A174672(A174650(n)))` -/
def P10223475000753311037.Spec : Prop :=
  ∀ n, P10223475000753311037.a n = (A334809 (n + 1) : ℚ)

end A334809

/-!
# A334810: The number of even numbers between 4 and 2p that cannot be written as the sum of two primes less than or equal to the n-th prime number p.

The programs for A334810, there is no canonical definition to state claims against.
-/

/-! ## A334810.P13243151258567692864

`A006093(n+1)-∑[A105047(n+1)]`
-/

namespace A334810.P13243151258567692864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334810.P13243151258567692864

/-! ## A334810.P2505660046594361421

`Δ[A007504(n)]-(∑[A105047(n+1)]+1)`
-/

namespace A334810.P2505660046594361421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (∑ j ∈ Finset.range (n + 1), f2 j + 1)

end

end A334810.P2505660046594361421

/-! ## A334810.P7728448809300393253

`record[A000010(n+1)]-∑[A105047(n+1)]`
-/

namespace A334810.P7728448809300393253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A334810.P7728448809300393253

/-! ## A334810.P1793638030286515437

`A000040(n+1)%(∑[A105047(n+1)]+1)`
-/

namespace A334810.P1793638030286515437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A334810.P1793638030286515437

/-! ## A334810.P4246981372910994644

`A000010(A000040(n+1))-∑[A105047(n+1)]`
-/

namespace A334810.P4246981372910994644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000040 (n + 1)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334810.P4246981372910994644

/-!
# A334811: Length of shortest overlap-free binary word having n periods.

The programs for A334811, there is no canonical definition to state claims against.
-/

/-! ## A334811.P13142961082184434736

`4*a(n-1)-2` with `a(0)=1, a(1)=2, a(2)=5, a(3)=12`
-/

namespace A334811.P13142961082184434736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 12] fun n a =>
  4 * a (n - 1) - 2

end

end A334811.P13142961082184434736

/-! ## A334811.P1810989220232353921

`A149439(n)+Δ[A056563(n)]`
-/

namespace A334811.P1810989220232353921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149439 n + (f1 (n + 1) - f1 n)

end

end A334811.P1810989220232353921

/-!
# A334812: a(0) = 0; a(1) = 1; for n > 1, a(n) is the square spiral number obtained from the magnitude of the difference between adjacent horizontal and vertical previously visited square numbers. If only one such adjacent square exists then it takes on that square's number.

The programs for A334812, there is no canonical definition to state claims against.
-/

/-! ## A334812.P6707511502322459663

`A076182(A131050(n+1))`
-/

namespace A334812.P6707511502322459663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076182 (A131050 (n + 1)).toNat

end

end A334812.P6707511502322459663

/-! ## A334812.P5742138163863958482

`A010059(or(A006003(n), A121528(n+1)))`
-/

namespace A334812.P5742138163863958482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (Int.lor (A006003 n) (A121528 (n + 1))).toNat

end

end A334812.P5742138163863958482

/-! ## A334812.P4609566497989935445

`A015582(and(A090683(n), A333054(n+1)))`
-/

namespace A334812.P4609566497989935445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015582 (Int.land (A090683 n) (A333054 (n + 1))).toNat

end

end A334812.P4609566497989935445

/-! ## A334812.P5330672214324801413

`A000007(and(A130191(n), A333054(n+1)))`
-/

namespace A334812.P5330672214324801413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.land (A130191 n) (A333054 (n + 1))).toNat

end

end A334812.P5330672214324801413

/-! ## A334812.P12542827934893106877

`A034563(n+1)^and(A130191(n), A333054(n+1))`
-/

namespace A334812.P12542827934893106877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034563 (n + 1) : ℚ) ^ (Int.land (A130191 n) (A333054 (n + 1)) : ℤ)

end

end A334812.P12542827934893106877

/-!
# A334814: Least number that reaches 1 after n iterations of the map k -> sigma(k)/d(k) if d(k) | sigma(k), and k -> 1 otherwise, where d(k) is the number of divisors of k (A000005) and sigma(k) is their sum (A000203).

The programs for A334814, there is no canonical definition to state claims against.
-/

/-! ## A334814.P17688989532332782451

`A316968(a(n-1))` with `a(0)=1`
-/

namespace A334814.P17688989532332782451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A316968 (a (n - 1)).toNat

end

end A334814.P17688989532332782451

/-! ## A334814.P4574599849764768941

`A106317(a(n-1)+1)` with `a(0)=1`
-/

namespace A334814.P4574599849764768941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A106317 (a (n - 1) + 1).toNat

end

end A334814.P4574599849764768941

/-! ## A334814.P13045189050153650234

`A001462(n^(n-2%(n+1)))+n`
-/

namespace A334814.P13045189050153650234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (SequenceMachineLib.roundAway ((n : ℚ) ^ ((n : ℤ) - ((2 % (n + 1) : ℕ) : ℤ) : ℤ))).toNat + (n : ℤ)

end

end A334814.P13045189050153650234

/-!
# A334816: Least number that reaches 1 after n iterations of the map k -> usigma(k)/ud(k) if ud(k) | usigma(k), and k -> 1 otherwise, where ud(k) is the number of unitary divisors of k (A034444) and usigma(k) is their sum (A034448).

The programs for A334816, there is no canonical definition to state claims against.
-/

/-! ## A334816.P1507830968846681888

`A130446(A138314(n))+n`
-/

namespace A334816.P1507830968846681888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A138314 n).toNat + (n : ℤ)

end

end A334816.P1507830968846681888

/-! ## A334816.P3327361860619456828

`A261104(A177249(n))+n`
-/

namespace A334816.P3327361860619456828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A177249 n).toNat + (n : ℤ)

end

end A334816.P3327361860619456828

/-! ## A334816.P4393675712724808919

`∑[A006949(A134478(n!))]`
-/

namespace A334816.P4393675712724808919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 (A134478 (Nat.factorial n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334816.P4393675712724808919

/-! ## A334816.P10065864156506160387

`∑[A111439(∏[A046682(n)])]`
-/

namespace A334816.P10065864156506160387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334816.P10065864156506160387

/-!
# A334818: Integers whose square root is the longest side of a non-right triangle whose side lengths are also square roots of integers, and with integer area.

The programs for A334818, the canonical program `A334818.P9742911378252436579` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334818 has offset 1).

The definition of A334818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334818.P9742911378252436579

`lt[4, A086933(n+1)]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A334818

/-- `lt[4, A086933(n+1)]+1` -/
def P9742911378252436579.Spec : Prop :=
  ∀ n, (P9742911378252436579.a n : ℤ) = A334818 (n + 1)

theorem P9742911378252436579.correct : P9742911378252436579.Spec := by
  intro n
  simp only [A334818, Nat.add_sub_cancel]

end A334818

/-! ## A334818.P15903109214088677598

`lt[8, A229296(n+1)]+1`
-/

namespace A334818.P15903109214088677598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229296 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A334818.P15903109214088677598

namespace A334818

/-- `lt[8, A229296(n+1)]+1` -/
def P15903109214088677598.Spec : Prop :=
  ∀ n, (P15903109214088677598.a n : ℤ) = A334818 (n + 1)

end A334818

/-! ## A334818.P2991667409211658468

`lt[4, A086933(A028310(n))]`
-/

namespace A334818.P2991667409211658468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086933 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A334818.P2991667409211658468

namespace A334818

/-- `lt[4, A086933(A028310(n))]` -/
def P2991667409211658468.Spec : Prop :=
  ∀ n, (P2991667409211658468.a n : ℤ) = A334818 (n + 1)

end A334818

/-! ## A334818.P12468310930739188340

`lt[16, A086933(A008574(n))]`
-/

namespace A334818.P12468310930739188340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086933 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A334818.P12468310930739188340

namespace A334818

/-- `lt[16, A086933(A008574(n))]` -/
def P12468310930739188340.Spec : Prop :=
  ∀ n, (P12468310930739188340.a n : ℤ) = A334818 (n + 1)

end A334818

/-! ## A334818.P7812501226523137358

`lt[4, A086933(A233583(n+1))]`
-/

namespace A334818.P7812501226523137358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086933 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A334818.P7812501226523137358

namespace A334818

/-- `lt[4, A086933(A233583(n+1))]` -/
def P7812501226523137358.Spec : Prop :=
  ∀ n, (P7812501226523137358.a n : ℤ) = A334818 (n + 1)

end A334818

/-! ## A334818.P13969070801667609156

`comp[C(A072438(A000026(n+1)), n)]`
-/

namespace A334818.P13969070801667609156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A072438 (A000026 (n + 1)).toNat).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A334818.P13969070801667609156

namespace A334818

/-- `comp[C(A072438(A000026(n+1)), n)]` -/
def P13969070801667609156.Spec : Prop :=
  ∀ n, (P13969070801667609156.a n : ℤ) = A334818 (n + 1)

end A334818

/-! ## A334818.P2061180708392791055

`∪[A009003(n+1), A046790(n+1)]`
-/

namespace A334818.P2061180708392791055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A334818.P2061180708392791055

namespace A334818

/-- `∪[A009003(n+1), A046790(n+1)]` -/
def P2061180708392791055.Spec : Prop :=
  ∀ n, (P2061180708392791055.a n : ℤ) = A334818 (n + 1)

end A334818

/-! ## A334818.P14195101109913831566

`lt[8, A229296(n-A000007(a(n-1)))]` with `a(0)=1`
-/

namespace A334818.P14195101109913831566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A229296 ((n : ℤ) - A000007 (f2 (n - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A334818.P14195101109913831566

namespace A334818

/-- `lt[8, A229296(n-A000007(a(n-1)))]` -/
def P14195101109913831566.Spec : Prop :=
  ∀ n, (P14195101109913831566.a n : ℤ) = A334818 (n + 1)

end A334818

/-! ## A334818.P5185868376017871279

`lt[2*A302690(A245474(n)), n]`
-/

namespace A334818.P5185868376017871279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A302690 (A245474 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A334818.P5185868376017871279

namespace A334818

/-- `lt[2*A302690(A245474(n)), n]` -/
def P5185868376017871279.Spec : Prop :=
  ∀ n, (P5185868376017871279.a n : ℤ) = A334818 (n + 1)

end A334818

/-! ## A334818.P2895538303085941134

`lt[A302690(A245474(n)), A065033(n)]`
-/

namespace A334818.P2895538303085941134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302690 (A245474 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334818.P2895538303085941134

namespace A334818

/-- `lt[A302690(A245474(n)), A065033(n)]` -/
def P2895538303085941134.Spec : Prop :=
  ∀ n, (P2895538303085941134.a n : ℤ) = A334818 (n + 1)

end A334818

/-!
# A334819: Largest quadratic nonresidue modulo n (with n >= 3).

The programs for A334819, there is no canonical definition to state claims against.
-/

/-! ## A334819.P11196070944831075591

`3-A354974(n+3)+n`
-/

namespace A334819.P11196070944831075591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A354974 (n + 3) + (n : ℤ)

end

end A334819.P11196070944831075591

/-! ## A334819.P17217872280715740915

`A004736(A354974(n+3)+A000217(n+1))`
-/

namespace A334819.P17217872280715740915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A354974 (n + 3) + A000217 (n + 1)).toNat

end

end A334819.P17217872280715740915

/-! ## A334819.P13783339767979977942

`n+3-A299090(A005384(3*(n+1))*A086196(n+1))`
-/

namespace A334819.P13783339767979977942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A299090 (A005384 (3 * (n + 1)) * A086196 (n + 1)).toNat

end

end A334819.P13783339767979977942

/-! ## A334819.P2182032286784299953

`n+2-A286627((n+3)^3)`
-/

namespace A334819.P2182032286784299953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A286627 ((n + 3) ^ 3)

end

end A334819.P2182032286784299953

/-! ## A334819.P6498189626112720073

`A131729(A367355(n+1))+A013938(n+1)`
-/

namespace A334819.P6498189626112720073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131729 (A367355 (n + 1)).toNat + A013938 (n + 1)

end

end A334819.P6498189626112720073

/-!
# A334820: Sequence is limit_{t->oo} s_t, where s_k = s_{k-1},s_{k-1}[k-1..end] starting with s_0 = s_0[0..1] = 0,1.

The programs for A334820, the canonical program `A334820.P8539357548165734387` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334820 has offset 0).

The definition of A334820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334820.P8539357548165734387

`char[record[a(n-1)+2-val(n, 2)]]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A334820

/-- `char[record[a(n-1)+2-val(n, 2)]]` -/
def P8539357548165734387.Spec : Prop :=
  ∀ n, (P8539357548165734387.a n : ℤ) = A334820 n

theorem P8539357548165734387.correct : P8539357548165734387.Spec := by
  intro n
  simp only [A334820]

end A334820

/-! ## A334820.P2694505357408009757

`char[record[2-(val(n, 2)-a(n-1))]]` with `a(0)=1`
-/

namespace A334820.P2694505357408009757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  2 - ((SequenceMachineLib.valuation n 2 : ℤ) - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A334820.P2694505357408009757

namespace A334820

/-- `char[record[2-(val(n, 2)-a(n-1))]]` -/
def P2694505357408009757.Spec : Prop :=
  ∀ n, (P2694505357408009757.a n : ℤ) = A334820 n

end A334820

/-! ## A334820.P12367127123914994095

`1-A164364(n)`
-/

namespace A334820.P12367127123914994095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A164364 n

end

end A334820.P12367127123914994095

namespace A334820

/-- `1-A164364(n)` -/
def P12367127123914994095.Spec : Prop :=
  ∀ n, P12367127123914994095.a n = A334820 n

end A334820

/-! ## A334820.P14808639365938036656

`char[record[A092391(n)+1]]`
-/

namespace A334820.P14808639365938036656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A334820.P14808639365938036656

namespace A334820

/-- `char[record[A092391(n)+1]]` -/
def P14808639365938036656.Spec : Prop :=
  ∀ n, (P14808639365938036656.a n : ℤ) = A334820 n

end A334820

/-! ## A334820.P7211993549884056622

`char[record[A230300(n+1)]]`
-/

namespace A334820.P7211993549884056622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230300 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A334820.P7211993549884056622

namespace A334820

/-- `char[record[A230300(n+1)]]` -/
def P7211993549884056622.Spec : Prop :=
  ∀ n, (P7211993549884056622.a n : ℤ) = A334820 n

end A334820

/-! ## A334820.P17537012012053185105

`char[record[A000120(n)+1+n]]`
-/

namespace A334820.P17537012012053185105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A334820.P17537012012053185105

namespace A334820

/-- `char[record[A000120(n)+1+n]]` -/
def P17537012012053185105.Spec : Prop :=
  ∀ n, (P17537012012053185105.a n : ℤ) = A334820 n

end A334820

/-! ## A334820.P1465491375937552198

`char[record[A063787(n+1)+n]]`
-/

namespace A334820.P1465491375937552198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A334820.P1465491375937552198

namespace A334820

/-- `char[record[A063787(n+1)+n]]` -/
def P1465491375937552198.Spec : Prop :=
  ∀ n, (P1465491375937552198.a n : ℤ) = A334820 n

end A334820

/-! ## A334820.P6373920466866270734

`char[record[n-A011371(n)+n+1]]`
-/

namespace A334820.P6373920466866270734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011371 n + (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A334820.P6373920466866270734

namespace A334820

/-- `char[record[n-A011371(n)+n+1]]` -/
def P6373920466866270734.Spec : Prop :=
  ∀ n, (P6373920466866270734.a n : ℤ) = A334820 n

end A334820

/-! ## A334820.P8798618656159148103

`char[record[2*n-A005187(n)+n+1]]`
-/

namespace A334820.P8798618656159148103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A005187 n + (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A334820.P8798618656159148103

namespace A334820

/-- `char[record[2*n-A005187(n)+n+1]]` -/
def P8798618656159148103.Spec : Prop :=
  ∀ n, (P8798618656159148103.a n : ℤ) = A334820 n

end A334820

/-! ## A334820.P10300013354298230918

`A000045(Δ[A164364(n)]+1)`
-/

namespace A334820.P10300013354298230918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n + 1).toNat

end

end A334820.P10300013354298230918

namespace A334820

/-- `A000045(Δ[A164364(n)]+1)` -/
def P10300013354298230918.Spec : Prop :=
  ∀ n, P10300013354298230918.a n = A334820 n

end A334820

/-! ## A334820.P6826753224659715352

`A001221(Δ[A164364(n)]+2)`
-/

namespace A334820.P6826753224659715352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n + 2).toNat

end

end A334820.P6826753224659715352

namespace A334820

/-- `A001221(Δ[A164364(n)]+2)` -/
def P6826753224659715352.Spec : Prop :=
  ∀ n, P6826753224659715352.a n = A334820 n

end A334820

/-! ## A334820.P18291413091014500351

`A001222(Δ[A164364(n)]+2)`
-/

namespace A334820.P18291413091014500351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n + 2).toNat

end

end A334820.P18291413091014500351

namespace A334820

/-- `A001222(Δ[A164364(n)]+2)` -/
def P18291413091014500351.Spec : Prop :=
  ∀ n, P18291413091014500351.a n = A334820 n

end A334820

/-! ## A334820.P2958879943642301341

`A134014(and(2, Δ[A164364(n)]))`
-/

namespace A334820.P2958879943642301341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134014 (Int.land 2 (f1 (n + 1) - f1 n)).toNat

end

end A334820.P2958879943642301341

namespace A334820

/-- `A134014(and(2, Δ[A164364(n)]))` -/
def P2958879943642301341.Spec : Prop :=
  ∀ n, P2958879943642301341.a n = A334820 n

end A334820

/-! ## A334820.P12587414164709445610

`A164364((n+1)*A164364(n))`
-/

namespace A334820.P12587414164709445610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164364 ((n + 1 : ℤ) * A164364 n).toNat

end

end A334820.P12587414164709445610

namespace A334820

/-- `A164364((n+1)*A164364(n))` -/
def P12587414164709445610.Spec : Prop :=
  ∀ n, P12587414164709445610.a n = A334820 n

end A334820

/-! ## A334820.P16003487370609832283

`char[record[A000005(A001316(n))+n]]`
-/

namespace A334820.P16003487370609832283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001316 n).toNat + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A334820.P16003487370609832283

namespace A334820

/-- `char[record[A000005(A001316(n))+n]]` -/
def P16003487370609832283.Spec : Prop :=
  ∀ n, (P16003487370609832283.a n : ℤ) = A334820 n

end A334820

/-! ## A334820.P4999126793177364315

`A164349(A246439(n+1)+A164364(n))`
-/

namespace A334820.P4999126793177364315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 (A246439 (n + 1) + A164364 n).toNat

end

end A334820.P4999126793177364315

namespace A334820

/-- `A164349(A246439(n+1)+A164364(n))` -/
def P4999126793177364315.Spec : Prop :=
  ∀ n, P4999126793177364315.a n = A334820 n

end A334820

/-! ## A334820.P801019302320783738

`1-A164363(n+2)%2`
-/

namespace A334820.P801019302320783738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A164363 (n + 2)) 2

end

end A334820.P801019302320783738

namespace A334820

/-- `1-A164363(n+2)%2` -/
def P801019302320783738.Spec : Prop :=
  ∀ n, P801019302320783738.a n = A334820 n

end A334820

/-! ## A334820.P11749138251742050577

`A164362(n+2)%2`
-/

namespace A334820.P11749138251742050577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164362 (n + 2)) 2

end

end A334820.P11749138251742050577

namespace A334820

/-- `A164362(n+2)%2` -/
def P11749138251742050577.Spec : Prop :=
  ∀ n, P11749138251742050577.a n = A334820 n

end A334820

/-! ## A334820.P15158478836144973179

`A164362(n+1)+A164362(n+1)-A164362(n+2)`
-/

namespace A334820.P15158478836144973179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164362 (n + 1) + (A164362 (n + 1) - A164362 (n + 2))

end

end A334820.P15158478836144973179

namespace A334820

/-- `A164362(n+1)+A164362(n+1)-A164362(n+2)` -/
def P15158478836144973179.Spec : Prop :=
  ∀ n, P15158478836144973179.a n = A334820 n

end A334820

/-!
# A334821: Number of integers from 0 to the triangular number A000217(n) that can be represented as a difference of triangular numbers from 0 to n.

The programs for A334821, there is no canonical definition to state claims against.
-/

/-! ## A334821.P13956283095477655765

`A000217(n)-A333601(n)+1`
-/

namespace A334821.P13956283095477655765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A333601 n + 1

end

end A334821.P13956283095477655765

/-! ## A334821.P5551046546077727037

`A000124(n)-A333601(n)`
-/

namespace A334821.P5551046546077727037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A333601 n

end

end A334821.P5551046546077727037

/-! ## A334821.P11485625940348574453

`∑[A028310(n)]-A333601(n)`
-/

namespace A334821.P11485625940348574453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A333601 n

end

end A334821.P11485625940348574453

/-! ## A334821.P4340796467622260972

`Δ[A000125(n)]-A333601(n)`
-/

namespace A334821.P4340796467622260972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A333601 n

end

end A334821.P4340796467622260972

/-! ## A334821.P6177478372485122778

`Δ[A004006(n)]-A333601(n)`
-/

namespace A334821.P6177478372485122778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A333601 n

end

end A334821.P6177478372485122778

/-! ## A334821.P12201435363961110952

`A014206(n)/2-A333601(n)`
-/

namespace A334821.P12201435363961110952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014206 n : ℚ) / 2 - (A333601 n : ℚ)

end

end A334821.P12201435363961110952

/-! ## A334821.P14685938468172987186

`(n+1)²-(A333601(n)+A000096(n))`
-/

namespace A334821.P14685938468172987186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (A333601 n + A000096 n)

end

end A334821.P14685938468172987186

/-! ## A334821.P8782605708819970188

`A008619(A002378(n))-A333601(n)`
-/

namespace A334821.P8782605708819970188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A002378 n).toNat - A333601 n

end

end A334821.P8782605708819970188

/-!
# A334823: Triangle, read by rows, of Lambert's denominator polynomials related to convergents of tan(x).

The programs for A334823, the canonical program `A334823.P8236848252117491370` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334823 has offset 0).

The definition of A334823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334823.P8236848252117491370

`A001497(n)*A056594(A002262(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A334823

/-- `A001497(n)*A056594(A002262(n))` -/
def P8236848252117491370.Spec : Prop :=
  ∀ n, P8236848252117491370.a n = A334823 n

theorem P8236848252117491370.correct : P8236848252117491370.Spec := by
  intro n
  simp only [A334823]

end A334823

/-! ## A334823.P15996565540762961067

`A001497(n)*A049310(A112367(n))`
-/

namespace A334823.P15996565540762961067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 n * A049310 (A112367 n).toNat

end

end A334823.P15996565540762961067

namespace A334823

/-- `A001497(n)*A049310(A112367(n))` -/
def P15996565540762961067.Spec : Prop :=
  ∀ n, P15996565540762961067.a n = A334823 n

end A334823

/-! ## A334823.P13461580306728972789

`A001497(n)*A117569(A002260(n+1))`
-/

namespace A334823.P13461580306728972789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 n * A117569 (A002260 (n + 1)).toNat

end

end A334823.P13461580306728972789

namespace A334823

/-- `A001497(n)*A117569(A002260(n+1))` -/
def P13461580306728972789.Spec : Prop :=
  ∀ n, P13461580306728972789.a n = A334823 n

end A334823

/-! ## A334823.P2401667619316727900

`A117569(A002260(n+1))*A193229(n)/A233543(n)`
-/

namespace A334823.P2401667619316727900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117569 (A002260 (n + 1)).toNat * A193229 n : ℚ) / (A233543 n : ℚ)

end

end A334823.P2401667619316727900

namespace A334823

/-- `A117569(A002260(n+1))*A193229(n)/A233543(n)` -/
def P2401667619316727900.Spec : Prop :=
  ∀ n, P2401667619316727900.a n = (A334823 n : ℚ)

end A334823

/-! ## A334823.P14709388505154351195

`A193229(n)/A002262(n)!*A117569(A002260(n+1))`
-/

namespace A334823.P14709388505154351195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193229 n : ℚ) / (Nat.factorial (A002262 n).toNat : ℚ) * (A117569 (A002260 (n + 1)).toNat : ℚ)

end

end A334823.P14709388505154351195

namespace A334823

/-- `A193229(n)/A002262(n)!*A117569(A002260(n+1))` -/
def P14709388505154351195.Spec : Prop :=
  ∀ n, P14709388505154351195.a n = (A334823 n : ℚ)

end A334823

/-! ## A334823.P13958698152494243287

`A001498(A038722(n+1)-1)*A117569(A002260(n+1))`
-/

namespace A334823.P13958698152494243287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001498 (A038722 (n + 1) - 1).toNat * A117569 (A002260 (n + 1)).toNat

end

end A334823.P13958698152494243287

namespace A334823

/-- `A001498(A038722(n+1)-1)*A117569(A002260(n+1))` -/
def P13958698152494243287.Spec : Prop :=
  ∀ n, P13958698152494243287.a n = A334823 n

end A334823

/-! ## A334823.P7586737380622006382

`A102625(n)/A002260(n+1)!*A117569(A002260(n+1))`
-/

namespace A334823.P7586737380622006382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102625 n : ℚ) / (Nat.factorial (A002260 (n + 1)).toNat : ℚ) * (A117569 (A002260 (n + 1)).toNat : ℚ)

end

end A334823.P7586737380622006382

namespace A334823

/-- `A102625(n)/A002260(n+1)!*A117569(A002260(n+1))` -/
def P7586737380622006382.Spec : Prop :=
  ∀ n, P7586737380622006382.a n = (A334823 n : ℚ)

end A334823

/-! ## A334823.P6033351298907921383

`A117569(A002260(n+1))/A137688(n)*A109767(n)`
-/

namespace A334823.P6033351298907921383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117569 (A002260 (n + 1)).toNat : ℚ) / (A137688 n : ℚ) * (A109767 n : ℚ)

end

end A334823.P6033351298907921383

namespace A334823

/-- `A117569(A002260(n+1))/A137688(n)*A109767(n)` -/
def P6033351298907921383.Spec : Prop :=
  ∀ n, P6033351298907921383.a n = (A334823 n : ℚ)

end A334823

/-! ## A334823.P8480795909036102547

`A001497(n)*A131851(A059268(n))`
-/

namespace A334823.P8480795909036102547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 n * A131851 (A059268 n).toNat

end

end A334823.P8480795909036102547

namespace A334823

/-- `A001497(n)*A131851(A059268(n))` -/
def P8480795909036102547.Spec : Prop :=
  ∀ n, P8480795909036102547.a n = A334823 n

end A334823

/-!
# A334824: Triangle, read by rows, of Lambert's numerator polynomials related to convergents of tan(x).

The programs for A334824, there is no canonical definition to state claims against.
-/

/-! ## A334824.P13989406014194594081

`Δ[A001221(A144895(n))]*A134146(n+1)`
-/

namespace A334824.P13989406014194594081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A144895 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A134146 (n + 1)

end

end A334824.P13989406014194594081

/-! ## A334824.P16090819000806212958

`(1-A002262(n))*A096895(A333829(n+1))`
-/

namespace A334824.P16090819000806212958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A002262 n) * A096895 (A333829 (n + 1)).toNat

end

end A334824.P16090819000806212958

/-! ## A334824.P2808332295714729998

`A117162(A144510(2*(n+2)))*A130757(n)`
-/

namespace A334824.P2808332295714729998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117162 (A144510 (2 * (n + 2))).toNat * A130757 n

end

end A334824.P2808332295714729998

/-!
# A334827: The number of oriented star-like and star trees with n arcs.

The programs for A334827, there is no canonical definition to state claims against.
-/

/-! ## A334827.P11331060741372034400

`A034899(n+3)-A178945(n+4)`
-/

namespace A334827.P11331060741372034400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034899 (n + 3) - A178945 (n + 4)

end

end A334827.P11331060741372034400

/-!
# A334828: Numbers that divide the multiplication of its digits raised to their own powers.

The programs for A334828, there is no canonical definition to state claims against.
-/

/-! ## A334828.P9587752415703220188

`A133059(A262524(n+1))`
-/

namespace A334828.P9587752415703220188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133059 (A262524 (n + 1)).toNat

end

end A334828.P9587752415703220188

/-! ## A334828.P5502656945490396069

`A132722(A262524(n+1)-1)`
-/

namespace A334828.P5502656945490396069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132722 (A262524 (n + 1) - 1).toNat

end

end A334828.P5502656945490396069

/-! ## A334828.P15678536899647789903

`filter[A132722(n+1), A385395(#)]`
-/

namespace A334828.P15678536899647789903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A385395 (f1 j).toNat = 1) n)

end

end A334828.P15678536899647789903

/-! ## A334828.P2533102484955997148

`filter[A133059(n+2), A385395(#)]`
-/

namespace A334828.P2533102484955997148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133059 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A385395 (f1 j).toNat = 1) n)

end

end A334828.P2533102484955997148

/-! ## A334828.P2797627156589476874

`∩[A132722(n+1), A005555(n)]`
-/

namespace A334828.P2797627156589476874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334828.P2797627156589476874

/-!
# A334830: a(n) is the number of permutations of length n that have the same number of fixed points whether forwards or backwards.

The programs for A334830, there is no canonical definition to state claims against.
-/

/-! ## A334830.P14123774956546647465

`A061264(A196881(n)+1)*A275313(n)`
-/

namespace A334830.P14123774956546647465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061264 (A196881 n + 1).toNat * A275313 n

end

end A334830.P14123774956546647465

/-!
# A334832: Numbers whose squarefree part is congruent to 1 (mod 24).

The programs for A334832, there is no canonical definition to state claims against.
-/

/-! ## A334832.P358167289637653691

`∩[A055047(n+1), A234000(n+1)]`
-/

namespace A334832.P358167289637653691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334832.P358167289637653691

/-! ## A334832.P12787948243407828513

`eq[sin(A028967(n)), A029681(n)]`
-/

namespace A334832.P12787948243407828513
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A028967 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029681 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A334832.P12787948243407828513

/-! ## A334832.P17315714842087750508

`eq[atan(A028963(n)), A028967(n)]`
-/

namespace A334832.P17315714842087750508
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A028963 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028967 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A334832.P17315714842087750508

/-! ## A334832.P7883239538523322834

`eq[1, A008574(A029681(n)+A028967(n))]`
-/

namespace A334832.P7883239538523322834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A029681 n + A028967 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334832.P7883239538523322834

/-! ## A334832.P7732869391807836266

`eq[1, A028963(A028967(n)+A028963(n))]`
-/

namespace A334832.P7732869391807836266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028963 (A028967 n + A028963 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334832.P7732869391807836266

/-! ## A334832.P2138168127185564845

`eq[1, A028967(A029681(n)+A028967(n))]`
-/

namespace A334832.P2138168127185564845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028967 (A029681 n + A028967 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334832.P2138168127185564845

/-! ## A334832.P7179285220611634614

`eq[A285253(n+1)+A029681(n), A026136(n+1)]`
-/

namespace A334832.P7179285220611634614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285253 (n + 1) + A029681 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026136 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334832.P7179285220611634614

/-! ## A334832.P16558810808454780516

`eq[A028967(A008574(n)), A029681(n)]`
-/

namespace A334832.P16558810808454780516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028967 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029681 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334832.P16558810808454780516

/-! ## A334832.P9510106163928382000

`eq[A028967(n), A261394(A008706(n))]`
-/

namespace A334832.P9510106163928382000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028967 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261394 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334832.P9510106163928382000

/-! ## A334832.P11012302569772870490

`eq[A014453(A008458(n))², A029681(n)]`
-/

namespace A334832.P11012302569772870490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014453 (A008458 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029681 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334832.P11012302569772870490

/-!
# A334833: Total length squared of longest runs of 1's in all bitstrings of length n.

The programs for A334833, there is no canonical definition to state claims against.
-/

/-! ## A334833.P5076963573575680141

`∑[∑[A184419(A127984(n+1))]]`
-/

namespace A334833.P5076963573575680141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184419 (A127984 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334833.P5076963573575680141

/-! ## A334833.P8568273482253917985

`A128553(n)+A047931(A002724(n))`
-/

namespace A334833.P8568273482253917985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128553 n + A047931 (A002724 n).toNat

end

end A334833.P8568273482253917985

/-!
# A334834: Composite numbers k such that the decimal expansion of ((1/2^(k-1))-1)/k is finite.

The programs for A334834, there is no canonical definition to state claims against.
-/

/-! ## A334834.P14255089406571209249

`A195918(A141214(n)+A036043(n))`
-/

namespace A334834.P14255089406571209249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195918 (A141214 n + A036043 n).toNat

end

end A334834.P14255089406571209249

/-! ## A334834.P16952214435920419165

`lt[A231163(A063691(n)), A032741(n)]`
-/

namespace A334834.P16952214435920419165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231163 (A063691 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334834.P16952214435920419165

/-! ## A334834.P8001488107410035160

`eq[A339579(n+1), A351043(A037215(n))]`
-/

namespace A334834.P8001488107410035160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351043 (A037215 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334834.P8001488107410035160

/-! ## A334834.P877267656532762823

`A340933(n+1)+A228351(A000228(n+1))`
-/

namespace A334834.P877267656532762823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340933 (n + 1) + A228351 (A000228 (n + 1)).toNat

end

end A334834.P877267656532762823

/-!
# A334839: Totients congruent to 2 mod 4 and that have multiplicity 4.

The programs for A334839, there is no canonical definition to state claims against.
-/

/-! ## A334839.P4812814519874755245

`4*A051479(n+1)+2`
-/

namespace A334839.P4812814519874755245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A051479 (n + 1) + 2

end

end A334839.P4812814519874755245

/-! ## A334839.P10677053004392544461

`A016825(A051479(n+1))`
-/

namespace A334839.P10677053004392544461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A051479 (n + 1)).toNat

end

end A334839.P10677053004392544461

/-! ## A334839.P2396380027787038482

`filter[A114874(n+2), A359374(#)]`
-/

namespace A334839.P2396380027787038482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114874 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A334839.P2396380027787038482

/-! ## A334839.P5720671548443761170

`filter[A114874(n+2), A359820(#)]`
-/

namespace A334839.P5720671548443761170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114874 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A334839.P5720671548443761170

/-! ## A334839.P13653309275660415001

`filter[A114874(n+2), A359832(#)]`
-/

namespace A334839.P13653309275660415001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114874 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359832 (f1 j).toNat = 1) n)

end

end A334839.P13653309275660415001

/-!
# A334840: a(1) = 1, a(n) = a(n-1)/gcd(a(n-1),n) if this gcd is > 1, else a(n) = 4*a(n-1).

The programs for A334840, the canonical program `A334840.P13982886850013945746` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334840 has offset 1).

The definition of A334840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334840.P13431542504201466977

`2^(n-∑[val(n+1, 2)])*dr(lcm(3*n+1, 1-3*n))`
-/

namespace A334840.P13431542504201466977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ) * (SequenceMachineLib.digitalRoot (Int.lcm (3 * n + 1 : ℤ) (1 - (3 * n : ℤ)) : ℤ) : ℚ)

end

end A334840.P13431542504201466977

namespace A334840

/-- `2^(n-∑[val(n+1, 2)])*dr(lcm(3*n+1, 1-3*n))` -/
def P13431542504201466977.Spec : Prop :=
  ∀ n, P13431542504201466977.a n = (A334840 (n + 1) : ℚ)

end A334840

/-! ## A334840.P13160508977672246748

`∏{d}[n, 2^C(2, #)]*A048896(n)`
-/

namespace A334840.P13160508977672246748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), 2 ^ Nat.choose 2 d : ℕ) : ℤ) * A048896 n

end

end A334840.P13160508977672246748

namespace A334840

/-- `∏{d}[n, 2^C(2, #)]*A048896(n)` -/
def P13160508977672246748.Spec : Prop :=
  ∀ n, P13160508977672246748.a n = A334840 (n + 1)

end A334840

/-! ## A334840.P2325055613386182116

`4*gcd(a(n-1), A233775(n+1))` with `a(0)=1`
-/

namespace A334840.P2325055613386182116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 * Int.gcd (a (n - 1) : ℤ) (A233775 (n + 1))

end

end A334840.P2325055613386182116

namespace A334840

/-- `4*gcd(a(n-1), A233775(n+1))` -/
def P2325055613386182116.Spec : Prop :=
  ∀ n, (P2325055613386182116.a n : ℤ) = A334840 (n + 1)

end A334840

/-! ## A334840.P13982886850013945746

`A001316(record[A199398(n+4)])`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A334840

/-- `A001316(record[A199398(n+4)])` -/
def P13982886850013945746.Spec : Prop :=
  ∀ n, P13982886850013945746.a n = A334840 (n + 1)

theorem P13982886850013945746.correct : P13982886850013945746.Spec := by
  intro n
  simp only [A334840, Nat.add_sub_cancel]

end A334840

/-! ## A334840.P6878911752810614217

`dr(A282284(n))*A048896(n)`
-/

namespace A334840.P6878911752810614217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A282284 n) : ℤ) * A048896 n

end

end A334840.P6878911752810614217

namespace A334840

/-- `dr(A282284(n))*A048896(n)` -/
def P6878911752810614217.Spec : Prop :=
  ∀ n, P6878911752810614217.a n = A334840 (n + 1)

end A334840

/-! ## A334840.P18303305730743988640

`gcd(8, A008574(n))*A048896(n)`
-/

namespace A334840.P18303305730743988640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 8 (A008574 n) : ℤ) * A048896 n

end

end A334840.P18303305730743988640

namespace A334840

/-- `gcd(8, A008574(n))*A048896(n)` -/
def P18303305730743988640.Spec : Prop :=
  ∀ n, P18303305730743988640.a n = A334840 (n + 1)

end A334840

/-! ## A334840.P12740889954977027583

`A001316(∑[A289742(a(n-1))])` with `a(0)=0, a(1)=10, a(2)=5`
-/

namespace A334840.P12740889954977027583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 10, 5] fun n f1 =>
  A289742 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A334840.P12740889954977027583

namespace A334840

/-- `A001316(∑[A289742(a(n-1))])` -/
def P12740889954977027583.Spec : Prop :=
  ∀ n, P12740889954977027583.a n = A334840 (n + 1)

end A334840

/-! ## A334840.P15132786587369605968

`A007401(∏{d}[n, ceil(3/#)])*A048896(n)`
-/

namespace A334840.P15132786587369605968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (∏ d ∈ Nat.divisors (f1 n), ⌈3 / (d : ℚ)⌉).toNat * A048896 n

end

end A334840.P15132786587369605968

namespace A334840

/-- `A007401(∏{d}[n, ceil(3/#)])*A048896(n)` -/
def P15132786587369605968.Spec : Prop :=
  ∀ n, P15132786587369605968.a n = A334840 (n + 1)

end A334840

/-! ## A334840.P305108215671725731

`A283998(3*A071044(n+1))`
-/

namespace A334840.P305108215671725731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283998 (3 * A071044 (n + 1)).toNat

end

end A334840.P305108215671725731

namespace A334840

/-- `A283998(3*A071044(n+1))` -/
def P305108215671725731.Spec : Prop :=
  ∀ n, P305108215671725731.a n = A334840 (n + 1)

end A334840

/-!
# A334841: a(0) = 0; for n > 0, a(n) = (number of 1's and 3's in base 4 representation of n) - (number of 0's and 2's in base 4 representation of n).

The programs for A334841, there is no canonical definition to state claims against.
-/

/-! ## A334841.P2369246600342338916

`a(floor(n/4))-(-1)^n` with `a(0)=0`
-/

namespace A334841.P2369246600342338916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 4⌋.toNat - (-1) ^ n

end

end A334841.P2369246600342338916

/-! ## A334841.P14879797317336100181

`a(floor(n/4))+n-xor(1, n)` with `a(0)=0`
-/

namespace A334841.P14879797317336100181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 4⌋.toNat + (n : ℤ) - (Nat.xor 1 n : ℤ)

end

end A334841.P14879797317336100181

/-! ## A334841.P6981541166100370948

`n-(xor(1, n)-a(floor(n/4)))` with `a(0)=0`
-/

namespace A334841.P6981541166100370948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - ((Nat.xor 1 n : ℤ) - a ⌊(n : ℚ) / 4⌋.toNat)

end

end A334841.P6981541166100370948

/-! ## A334841.P3367555383075014981

`a(floor(n/4))+n%2-log2(gcd(2, n))` with `a(0)=0`
-/

namespace A334841.P3367555383075014981
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 4⌋.toNat + ((n % 2 : ℕ) : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A334841.P3367555383075014981

/-! ## A334841.P7825162770534341700

`A145037(n)-a(floor(n/2))` with `a(0)=0`
-/

namespace A334841.P7825162770534341700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A145037 n - a ⌊(n : ℚ) / 2⌋.toNat

end

end A334841.P7825162770534341700

/-! ## A334841.P5712667893999684468

`A165326(n)+a(floor(n/4))` with `a(0)=0`
-/

namespace A334841.P5712667893999684468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A165326 n + a ⌊(n : ℚ) / 4⌋.toNat

end

end A334841.P5712667893999684468

/-! ## A334841.P11192191719911278769

`floor(a(floor(n/4))-A033999(n))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A334841.P11192191719911278769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 4⌋.toNat - A033999 n

end

end A334841.P11192191719911278769

/-! ## A334841.P7909262405807830198

`floor(a(floor(n/4))-A009001(2*n))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A334841.P7909262405807830198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 4⌋.toNat - A009001 (2 * n)

end

end A334841.P7909262405807830198

/-! ## A334841.P11729570928541083777

`a(floor(n/4))%4-(A004442(n)-n)` with `a(0)=0`
-/

namespace A334841.P11729570928541083777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (a ⌊(n : ℚ) / 4⌋.toNat) 4 - (A004442 n - (n : ℤ))

end

end A334841.P11729570928541083777

/-!
# A334852: a(1) = 1, a(n) = a(n-1) / gcd(a(n-1),n) if this gcd is > 1, else a(n) = a(n-1) + 2.

The programs for A334852, the canonical program `A334852.P11104740392602156657` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334852 has offset 1).

The definition of A334852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334852.P11104740392602156657

`floor((a(n-1)+2)/gcd(n+1, a(n-1)))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A334852

/-- `floor((a(n-1)+2)/gcd(n+1, a(n-1)))` -/
def P11104740392602156657.Spec : Prop :=
  ∀ n, P11104740392602156657.a n = A334852 (n + 1)

theorem P11104740392602156657.correct : P11104740392602156657.Spec := by
  intro n
  simp only [A334852, Nat.add_sub_cancel]

end A334852

/-! ## A334852.P7157838837914171475

`A020705(2*n)-A352962(A352962(2*(n+1)))`
-/

namespace A334852.P7157838837914171475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (2 * n) - A352962 (A352962 (2 * (n + 1))).toNat

end

end A334852.P7157838837914171475

namespace A334852

/-- `A020705(2*n)-A352962(A352962(2*(n+1)))` -/
def P7157838837914171475.Spec : Prop :=
  ∀ n, P7157838837914171475.a n = A334852 (n + 1)

end A334852

/-! ## A334852.P12545417633319365719

`A020705(n)-A352962(2*n+3)+n`
-/

namespace A334852.P12545417633319365719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n - A352962 (2 * n + 3) + (n : ℤ)

end

end A334852.P12545417633319365719

namespace A334852

/-- `A020705(n)-A352962(2*n+3)+n` -/
def P12545417633319365719.Spec : Prop :=
  ∀ n, P12545417633319365719.a n = A334852 (n + 1)

end A334852

/-!
# A334853: a(n) is the least number with exactly n odd divisors that are <= sqrt(n).

The programs for A334853, there is no canonical definition to state claims against.
-/

/-! ## A334853.P9518101291245141934

`C(n+2, 2)*A357434(A061954(n+1))`
-/

namespace A334853.P9518101291245141934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) * A357434 (A061954 (n + 1)).toNat

end

end A334853.P9518101291245141934

/-! ## A334853.P15460389595668148920

`(∑[n+1]*A103578(n+1))%A103548(n+2)`
-/

namespace A334853.P15460389595668148920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A103578 (n + 1)) (A103548 (n + 2))

end

end A334853.P15460389595668148920

/-!
# A334854: E.g.f. A(x) satisfies: A(x) = arctan(x * exp(A(x))).

The programs for A334854, there is no canonical definition to state claims against.
-/

/-! ## A334854.P4547296869705162300

`A293192(n+1)/(n+1)`
-/

namespace A334854.P4547296869705162300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293192 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A334854.P4547296869705162300

/-! ## A334854.P15379515403393276790

`A226994(n)-A299905(A110110(n))`
-/

namespace A334854.P15379515403393276790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226994 n - A299905 (A110110 n).toNat

end

end A334854.P15379515403393276790

/-!
# A334855: E.g.f. A(x) satisfies: A(x) = tanh(x * exp(A(x))).

The programs for A334855, there is no canonical definition to state claims against.
-/

/-! ## A334855.P18018942310439407791

`A327478(ceil(cosh(n)))`
-/

namespace A334855.P18018942310439407791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327478 ⌈Real.cosh (n : ℝ)⌉.toNat

end

end A334855.P18018942310439407791

/-!
# A334856: E.g.f. A(x) satisfies: A(x) = sin(x * exp(A(x))).

The programs for A334856, there is no canonical definition to state claims against.
-/

/-! ## A334856.P181171889382173623

`A293021(n+1)/(n+1)`
-/

namespace A334856.P181171889382173623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293021 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A334856.P181171889382173623

/-! ## A334856.P7525774629283783712

`(n+1)^A008683(A020483(n))*A293021(n+1)`
-/

namespace A334856.P7525774629283783712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ) * (A293021 (n + 1) : ℚ)

end

end A334856.P7525774629283783712

/-! ## A334856.P14876933043986146211

`(n+1)^A321804(A007318(n))*A293021(n+1)`
-/

namespace A334856.P14876933043986146211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A321804 (A007318 n).toNat : ℤ) * (A293021 (n + 1) : ℚ)

end

end A334856.P14876933043986146211

/-!
# A334857: Lexicographically earliest sequence of integers > 1 such that for any distinct m and n, a(m)^a(m+1) <> a(n)^a(n+1).

The programs for A334857, there is no canonical definition to state claims against.
-/

/-! ## A334857.P6559683774060450733

`val(A334858(n), a(n-1))` with `a(0)=2`
-/

namespace A334857.P6559683774060450733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.valuation (A334858 n).toNat (a (n - 1))

end

end A334857.P6559683774060450733

/-! ## A334857.P8580976677212687915

`A270572(n+2)+A057237(2^n)`
-/

namespace A334857.P8580976677212687915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270572 (n + 2) + A057237 (2 ^ n)

end

end A334857.P8580976677212687915

/-! ## A334857.P14230332199502198365

`A330524(n+1)+A127254(A192886(n))`
-/

namespace A334857.P14230332199502198365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330524 (n + 1) + A127254 (A192886 n).toNat

end

end A334857.P14230332199502198365

/-! ## A334857.P6937259917491223079

`A336037(n+1)+A127254(A192886(n))`
-/

namespace A334857.P6937259917491223079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336037 (n + 1) + A127254 (A192886 n).toNat

end

end A334857.P6937259917491223079

/-! ## A334857.P17600715283930906486

`A330524(n+1)+A079617(A079594(3*n+4))`
-/

namespace A334857.P17600715283930906486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330524 (n + 1) + A079617 (A079594 (3 * n + 4)).toNat

end

end A334857.P17600715283930906486

/-!
# A334858: a(n) = A334857(n)^A334857(n+1).

The programs for A334858, there is no canonical definition to state claims against.
-/

/-! ## A334858.P4968405408891742180

`A334857(n+1)^A334857(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334858.P4968405408891742180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334857 (n + 1) : ℚ) ^ (A334857 (n + 2) : ℤ)

end

end A334858.P4968405408891742180

/-!
# A334859: a(n) = A243071(A225546(n)).

The programs for A334859, there is no canonical definition to state claims against.
-/

/-! ## A334859.P16707664283299372775

`A253566(A336321(n+1))`
-/

namespace A334859.P16707664283299372775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253566 (A336321 (n + 1)).toNat

end

end A334859.P16707664283299372775

/-! ## A334859.P11419023508757317314

`floor(A225546((n+1)²/∏{p}[n+1, #])/2)`
-/

namespace A334859.P11419023508757317314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A225546 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat : ℚ) / 2⌋

end

end A334859.P11419023508757317314

/-! ## A334859.P4844192000685355501

`∑{e}[n+1, val((2*#)!, 2)]*A331312((n+1)²/∏{p}[n+1, #])`
-/

namespace A334859.P4844192000685355501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorial (2 * Nat.factorization (f1 n) p)) 2 : ℕ) : ℤ) * A331312 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A334859.P4844192000685355501

/-!
# A334860: a(0) = 1, a(1) = 2, after which, a(2n) = A334747(a(n)), a(2n+1) = a(n)^2.

The programs for A334860, there is no canonical definition to state claims against.
-/

/-! ## A334860.P2205363009709504284

`a(2^2^n)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=6, a(5)=9, a(6)=8, a(7)=16, a(8)=5, a(9)=36`
-/

namespace A334860.P2205363009709504284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4, 6, 9, 8, 16, 5, 36] fun n a =>
  a (2 ^ 2 ^ n)

end

end A334860.P2205363009709504284

/-! ## A334860.P1323755642942196826

`A334866(A337909(n+1)-1)`
-/

namespace A334860.P1323755642942196826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334866 (A337909 (n + 1) - 1).toNat

end

end A334860.P1323755642942196826

/-! ## A334860.P4070056547722413650

`A334866(A286548(n)+A180201(n))`
-/

namespace A334860.P4070056547722413650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334866 (A286548 n + A180201 n).toNat

end

end A334860.P4070056547722413650

/-! ## A334860.P5856853262698219250

`A336322(A253565(n))`
-/

namespace A334860.P5856853262698219250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336322 (A253565 n).toNat

end

end A334860.P5856853262698219250

/-! ## A334860.P13968310055126959514

`A225546(A163511(n))`
-/

namespace A334860.P13968310055126959514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225546 (A163511 n).toNat

end

end A334860.P13968310055126959514

/-!
# A334861: a(n) = A329697(n) + A331410(n).

The programs for A334861, there is no canonical definition to state claims against.
-/

/-! ## A334861.P8338568547344458298

`A329697(n+1)+A331410(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334861.P8338568547344458298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1) + A331410 (n + 1)

end

end A334861.P8338568547344458298

/-! ## A334861.P17355170352672294875

`A335881(n+1)+A335875(n+1)`
-/

namespace A334861.P17355170352672294875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335881 (n + 1) + A335875 (n + 1)

end

end A334861.P17355170352672294875

/-! ## A334861.P5588308863287739238

`A335877(n+1)+2*A329697(n+1)`
-/

namespace A334861.P5588308863287739238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335877 (n + 1) + 2 * A329697 (n + 1)

end

end A334861.P5588308863287739238

/-! ## A334861.P2072233484719026899

`2*A331410(n+1)-A335877(n+1)`
-/

namespace A334861.P2072233484719026899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331410 (n + 1) - A335877 (n + 1)

end

end A334861.P2072233484719026899

/-! ## A334861.P15529794505104748810

`abs(A335877(n+1))+2*A335875(n+1)`
-/

namespace A334861.P15529794505104748810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A335877 (n + 1)| + 2 * A335875 (n + 1)

end

end A334861.P15529794505104748810

/-! ## A334861.P18350227164025889766

`2*A335881(n+1)-abs(A335877(n+1))`
-/

namespace A334861.P18350227164025889766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A335881 (n + 1) - |A335877 (n + 1)|

end

end A334861.P18350227164025889766

/-! ## A334861.P8772930609838954163

`A005087(n+1)+A336922(n+1)+A329697(n+1)`
-/

namespace A334861.P8772930609838954163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (n + 1) + (A336922 (n + 1) + A329697 (n + 1))

end

end A334861.P8772930609838954163

/-! ## A334861.P14944405612231396331

`A005087(n+1)+A336469(n+1)+A331410(n+1)`
-/

namespace A334861.P14944405612231396331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (n + 1) + (A336469 (n + 1) + A331410 (n + 1))

end

end A334861.P14944405612231396331

/-! ## A334861.P11190139224149755909

`A087436(n+1)+A336921(n+1)+A329697(n+1)`
-/

namespace A334861.P11190139224149755909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (n + 1) + (A336921 (n + 1) + A329697 (n + 1))

end

end A334861.P11190139224149755909

/-! ## A334861.P778880151221826634

`A087436(n+1)+A336396(n+1)+A331410(n+1)`
-/

namespace A334861.P778880151221826634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (n + 1) + (A336396 (n + 1) + A331410 (n + 1))

end

end A334861.P778880151221826634

/-! ## A334861.P11559818257318879393

`A329697(n+1)+A334097(n+1)-A334098(n+1)`
-/

namespace A334861.P11559818257318879393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1) + (A334097 (n + 1) - A334098 (n + 1))

end

end A334861.P11559818257318879393

/-! ## A334861.P5407464406509205995

`A335877(n+1)+A329697((n+1)²)`
-/

namespace A334861.P5407464406509205995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335877 (n + 1) + A329697 ((n + 1) ^ 2)

end

end A334861.P5407464406509205995

/-! ## A334861.P110105595930557475

`A331410((n+1)²)-A335877(n+1)`
-/

namespace A334861.P110105595930557475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 ((n + 1) ^ 2) - A335877 (n + 1)

end

end A334861.P110105595930557475

/-! ## A334861.P6512658877192862100

`abs(A335877(n+1))+A335875((n+1)²)`
-/

namespace A334861.P6512658877192862100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A335877 (n + 1)| + A335875 ((n + 1) ^ 2)

end

end A334861.P6512658877192862100

/-! ## A334861.P5279357924642211202

`A335881((n+1)²)-abs(A335877(n+1))`
-/

namespace A334861.P5279357924642211202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335881 ((n + 1) ^ 2) - |A335877 (n + 1)|

end

end A334861.P5279357924642211202

/-!
# A334862: a(n) = A334097(n) - A064415(n).

The programs for A334862, there is no canonical definition to state claims against.
-/

/-! ## A334862.P3844558165305347707

`A334097(n+1)-A064415(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334862.P3844558165305347707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (n + 1) - A064415 (n + 1)

end

end A334862.P3844558165305347707

/-! ## A334862.P17168667117448642130

`A334097(n+1)-∑[A334195(n+1)]`
-/

namespace A334862.P17168667117448642130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334862.P17168667117448642130

/-! ## A334862.P16861330949716490452

`A331410(n+1)+A334098(n+1)-A064415(n+1)`
-/

namespace A334862.P16861330949716490452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) + (A334098 (n + 1) - A064415 (n + 1))

end

end A334862.P16861330949716490452

/-! ## A334862.P12077930850437356107

`A334098(n+1)+A334861(n+1)-A329697(n+1)-A064415(n+1)`
-/

namespace A334862.P12077930850437356107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334098 (n + 1) + (A334861 (n + 1) - A329697 (n + 1)) - A064415 (n + 1)

end

end A334862.P12077930850437356107

/-! ## A334862.P16386365989758760650

`A334097(n+1)+1-A003434(2*(n+1))`
-/

namespace A334862.P16386365989758760650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (n + 1) + 1 - A003434 (2 * (n + 1))

end

end A334862.P16386365989758760650

/-! ## A334862.P14125480411927078889

`A334097(2*(n+1))%A003434(2*(n+1))`
-/

namespace A334862.P14125480411927078889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334097 (2 * (n + 1))) (A003434 (2 * (n + 1)))

end

end A334862.P14125480411927078889

/-!
# A334863: a(n) = A064097(A003961(n)).

The programs for A334863, there is no canonical definition to state claims against.
-/

/-! ## A334863.P7167573372632597343

`A334864(n+1)+A064097(n+1)`
-/

namespace A334863.P7167573372632597343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334864 (n + 1) + A064097 (n + 1)

end

end A334863.P7167573372632597343

/-! ## A334863.P3131694747496020932

`A064415(n+1)+A334864(n+1)+A329697(n+1)`
-/

namespace A334863.P3131694747496020932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (n + 1) + (A334864 (n + 1) + A329697 (n + 1))

end

end A334863.P3131694747496020932

/-! ## A334863.P11946680494908977085

`A334203(A249734(n+1))`
-/

namespace A334863.P11946680494908977085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334203 (A249734 (n + 1)).toNat

end

end A334863.P11946680494908977085

/-! ## A334863.P6008080877412869291

`A334203(A003961(2*(n+1)))`
-/

namespace A334863.P6008080877412869291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334203 (A003961 (2 * (n + 1))).toNat

end

end A334863.P6008080877412869291

/-! ## A334863.P12851084202647309414

`A334203(A003961(n+1)+A003961(n+1))`
-/

namespace A334863.P12851084202647309414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334203 (A003961 (n + 1) + A003961 (n + 1)).toNat

end

end A334863.P12851084202647309414

/-! ## A334863.P12100679385437782938

`A064097(A003961(n+1))`
-/

namespace A334863.P12100679385437782938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A003961 (n + 1)).toNat

end

end A334863.P12100679385437782938

/-! ## A334863.P13778497375414726261

`A064097(A253885(n)+1)`
-/

namespace A334863.P13778497375414726261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A253885 n + 1).toNat

end

end A334863.P13778497375414726261

/-! ## A334863.P3120628653239959109

`A064097(2*A048673(n+1)-1)`
-/

namespace A334863.P3120628653239959109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (2 * A048673 (n + 1) - 1).toNat

end

end A334863.P3120628653239959109

/-! ## A334863.P7833553034089464647

`A064097(A048673(n+1)+A048673(n+1)-1)`
-/

namespace A334863.P7833553034089464647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A048673 (n + 1) + (A048673 (n + 1) - 1)).toNat

end

end A334863.P7833553034089464647

/-!
# A334864: a(n) = A064097(A003961(n)) - A064097(n).

The programs for A334864, there is no canonical definition to state claims against.
-/

/-! ## A334864.P10789798952505867774

`A334863(n+1)-A064097(n+1)`
-/

namespace A334864.P10789798952505867774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334863 (n + 1) - A064097 (n + 1)

end

end A334864.P10789798952505867774

/-! ## A334864.P5820869182524919745

`A334863(n+1)+1-A073933(n+1)`
-/

namespace A334864.P5820869182524919745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334863 (n + 1) + (1 - A073933 (n + 1))

end

end A334864.P5820869182524919745

/-! ## A334864.P5648361552118855375

`A334203(A003961(2*(n+1)))-A334203(2*(n+1))`
-/

namespace A334864.P5648361552118855375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334203 (A003961 (2 * (n + 1))).toNat - A334203 (2 * (n + 1))

end

end A334864.P5648361552118855375

/-! ## A334864.P1367221112009939634

`A064097(A003961(n+1))-A064097(n+1)`
-/

namespace A334864.P1367221112009939634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A003961 (n + 1)).toNat - A064097 (n + 1)

end

end A334864.P1367221112009939634

/-! ## A334864.P16775750892196214603

`A073933(A003961(n+1))-A073933(n+1)`
-/

namespace A334864.P16775750892196214603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073933 (A003961 (n + 1)).toNat - A073933 (n + 1)

end

end A334864.P16775750892196214603

/-! ## A334864.P14975371459323806828

`A064097(A253885(n)+1)-A064097(n+1)`
-/

namespace A334864.P14975371459323806828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A253885 n + 1).toNat - A064097 (n + 1)

end

end A334864.P14975371459323806828

/-!
# A334865: a(n) = A156552(A225546(n)).

The programs for A334865, there is no canonical definition to state claims against.
-/

/-! ## A334865.P7524017311659309290

`A253564(A336321(n+1))`
-/

namespace A334865.P7524017311659309290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253564 (A336321 (n + 1)).toNat

end

end A334865.P7524017311659309290

/-! ## A334865.P9132265685918533605

`A225546(n+1)-A125781(A230049(n))`
-/

namespace A334865.P9132265685918533605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225546 (n + 1) - A125781 (A230049 n).toNat

end

end A334865.P9132265685918533605

/-! ## A334865.P5108757157522157866

`A225546(n+1)-A165430(A349209(n))`
-/

namespace A334865.P5108757157522157866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225546 (n + 1) - A165430 (A349209 (n + 21)).toNat

end

end A334865.P5108757157522157866

/-! ## A334865.P251939593938562596

`A225546(n+1)-A095691(A066827(n+1))`
-/

namespace A334865.P251939593938562596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225546 (n + 1) - A095691 (A066827 (n + 1)).toNat

end

end A334865.P251939593938562596

/-! ## A334865.P16976285240135707055

`A334866(A156552(n+1))-A336651(n+1)`
-/

namespace A334865.P16976285240135707055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334866 (A156552 (n + 1)).toNat - A336651 (n + 1)

end

end A334865.P16976285240135707055

/-!
# A334866: a(0) = 1, and then after, a(2n) = a(n)^2, a(2n+1) = A334747(a(n)).

The programs for A334866, there is no canonical definition to state claims against.
-/

/-! ## A334866.P13144568546283357582

`A225546(A005940(1+n))`
-/

namespace A334866.P13144568546283357582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225546 (A005940 (1 + n)).toNat

end

end A334866.P13144568546283357582

/-! ## A334866.P657562512637972657

`A334860(A337909(n+1)-1)`
-/

namespace A334866.P657562512637972657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334860 (A337909 (n + 1) - 1).toNat

end

end A334866.P657562512637972657

/-! ## A334866.P5087524958150836670

`A334860(A286548(n)+A180201(n))`
-/

namespace A334866.P5087524958150836670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334860 (A286548 n + A180201 n).toNat

end

end A334866.P5087524958150836670

/-! ## A334866.P9636978715193963895

`A334860(A234025(xor(n, A280507(n))))`
-/

namespace A334866.P9636978715193963895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334860 (A234025 (Int.xor (n : ℤ) (A280507 n)).toNat).toNat

end

end A334866.P9636978715193963895

/-! ## A334866.P12572804909466566268

`A336322(A253563(n))`
-/

namespace A334866.P12572804909466566268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336322 (A253563 n).toNat

end

end A334866.P12572804909466566268

/-!
# A334867: Lexicographically earliest infinite sequence such that a(i) = a(j) => A329697(i) = A329697(j) and A334204(i) = A334204(j) for all i, j >= 1.

The programs for A334867, there is no canonical definition to state claims against.
-/

/-! ## A334867.P16971811825736554884

`A206915(A153733(n))%p?[A102363(n)]`
-/

namespace A334867.P16971811825736554884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206915 (A153733 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A334867.P16971811825736554884

/-! ## A334867.P10358078235532263096

`A044941(A302119(n))+A003963(n+1)`
-/

namespace A334867.P10358078235532263096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A302119 n).toNat + A003963 (n + 1)

end

end A334867.P10358078235532263096

/-! ## A334867.P11209689369704247557

`A022169(A000096(n))*A206915(A153733(n))`
-/

namespace A334867.P11209689369704247557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022169 (A000096 n).toNat * A206915 (A153733 n).toNat

end

end A334867.P11209689369704247557

/-! ## A334867.P5546786626199107181

`A033273(A089948(n+1))*A206915(A153733(n))`
-/

namespace A334867.P5546786626199107181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A089948 (n + 1)).toNat * A206915 (A153733 n).toNat

end

end A334867.P5546786626199107181

/-! ## A334867.P3883210994967416195

`A104488(A007629(n+1))+A003963(n+1)`
-/

namespace A334867.P3883210994967416195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104488 (A007629 (n + 1)).toNat + A003963 (n + 1)

end

end A334867.P3883210994967416195

/-!
# A334871: Number of steps needed to reach 1 when starting from n and iterating with A334870.

The programs for A334871, the canonical program `A334871.P12161263468435973650` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334871 has offset 1).

The definition of A334871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334871.P12161263468435973650

`A331740(n+1)+A299090(A000188(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A334871

/-- `A331740(n+1)+A299090(A000188(n+1))` -/
def P12161263468435973650.Spec : Prop :=
  ∀ n, P12161263468435973650.a n = A334871 (n + 1)

theorem P12161263468435973650.correct : P12161263468435973650.Spec := by
  intro n
  simp only [A334871, Nat.add_sub_cancel]

end A334871

/-! ## A334871.P6623590711030527971

`A331740(n+1)+A252735(A293442(n+1))`
-/

namespace A334871.P6623590711030527971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331740 (n + 1) + A252735 (A293442 (n + 1)).toNat

end

end A334871.P6623590711030527971

namespace A334871

/-- `A331740(n+1)+A252735(A293442(n+1))` -/
def P6623590711030527971.Spec : Prop :=
  ∀ n, P6623590711030527971.a n = A334871 (n + 1)

end A334871

/-! ## A334871.P16533575869770417645

`A061395(A046951(n+1))+A061395(A336321(n+1))`
-/

namespace A334871.P16533575869770417645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A046951 (n + 1)).toNat + A061395 (A336321 (n + 1)).toNat

end

end A334871.P16533575869770417645

namespace A334871

/-- `A061395(A046951(n+1))+A061395(A336321(n+1))` -/
def P16533575869770417645.Spec : Prop :=
  ∀ n, P16533575869770417645.a n = A334871 (n + 1)

end A334871

/-! ## A334871.P6047985666424533293

`A267116(A000188(n+1))+A061395(A336321(n+1))`
-/

namespace A334871.P6047985666424533293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267116 (A000188 (n + 1)).toNat + A061395 (A336321 (n + 1)).toNat

end

end A334871.P6047985666424533293

namespace A334871

/-- `A267116(A000188(n+1))+A061395(A336321(n+1))` -/
def P6047985666424533293.Spec : Prop :=
  ∀ n, P6047985666424533293.a n = A334871 (n + 1)

end A334871

/-! ## A334871.P13246313099796040673

`A075167(A336321(n+1))`
-/

namespace A334871.P13246313099796040673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075167 (A336321 (n + 1)).toNat

end

end A334871.P13246313099796040673

namespace A334871

/-- `A075167(A336321(n+1))` -/
def P13246313099796040673.Spec : Prop :=
  ∀ n, P13246313099796040673.a n = A334871 (n + 1)

end A334871

/-!
# A334872: Number of steps needed to reach either 1 or one of the "Fermi-Dirac primes" (A050376) when starting from n and iterating with A334870.

The programs for A334872, there is no canonical definition to state claims against.
-/

/-! ## A334872.P16148758252256293009

`A052331(A302776(n+1)%A108702(2*(n+1)))`
-/

namespace A334872.P16148758252256293009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052331 (Int.tmod (A302776 (n + 1)) (A108702 (2 * (n + 1)))).toNat

end

end A334872.P16148758252256293009

/-! ## A334872.P6370844229983021519

`A038554(A082586(n+1)*A302029(n+1))`
-/

namespace A334872.P6370844229983021519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (A082586 (n + 1) * A302029 (n + 1)).toNat

end

end A334872.P6370844229983021519

/-! ## A334872.P17012939414762114292

`A038554(lcm(A082586(n+1), A302029(n+1)))`
-/

namespace A334872.P17012939414762114292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (Int.lcm (A082586 (n + 1)) (A302029 (n + 1)))

end

end A334872.P17012939414762114292

/-! ## A334872.P1354482808002551577

`A363622(3^A346089(n+1))`
-/

namespace A334872.P1354482808002551577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363622 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A346089 (n + 1) : ℤ))).toNat

end

end A334872.P1354482808002551577

/-! ## A334872.P7437939447850695027

`A258851(A302789(n+1)%A372591(3*n+2))`
-/

namespace A334872.P7437939447850695027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (Int.tmod (A302789 (n + 1)) (A372591 (3 * n + 2))).toNat

end

end A334872.P7437939447850695027

/-!
# A334873: a(n) = A329697(n) * A334204(n).

The programs for A334873, the canonical program `A334873.P3733060278836501554` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334873 has offset 1).

The definition of A334873 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334873.P3733060278836501554

`A329697(n+1)*A334204(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A334873

/-- `A329697(n+1)*A334204(n+1)` -/
def P3733060278836501554.Spec : Prop :=
  ∀ n, P3733060278836501554.a n = A334873 (n + 1)

theorem P3733060278836501554.correct : P3733060278836501554.Spec := by
  intro n
  simp only [A334873, Nat.add_sub_cancel]

end A334873

/-! ## A334873.P18205063977180533792

`(A334861(n+1)-A331410(n+1))*A334204(n+1)`
-/

namespace A334873.P18205063977180533792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A334861 (n + 1) - A331410 (n + 1)) * A334204 (n + 1)

end

end A334873.P18205063977180533792

namespace A334873

/-- `(A334861(n+1)-A331410(n+1))*A334204(n+1)` -/
def P18205063977180533792.Spec : Prop :=
  ∀ n, P18205063977180533792.a n = A334873 (n + 1)

end A334873

/-! ## A334873.P3916579162611048984

`(A331410(n+1)-A335877(n+1))*A334204(n+1)`
-/

namespace A334873.P3916579162611048984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A331410 (n + 1) - A335877 (n + 1)) * A334204 (n + 1)

end

end A334873.P3916579162611048984

namespace A334873

/-- `(A331410(n+1)-A335877(n+1))*A334204(n+1)` -/
def P3916579162611048984.Spec : Prop :=
  ∀ n, P3916579162611048984.a n = A334873 (n + 1)

end A334873

/-! ## A334873.P10118036681014923366

`A329697(A163511(n+1))*A329697(n+1)`
-/

namespace A334873.P10118036681014923366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A163511 (n + 1)).toNat * A329697 (n + 1)

end

end A334873.P10118036681014923366

namespace A334873

/-- `A329697(A163511(n+1))*A329697(n+1)` -/
def P10118036681014923366.Spec : Prop :=
  ∀ n, P10118036681014923366.a n = A334873 (n + 1)

end A334873

/-! ## A334873.P1838812768071307141

`A329697(n+1)*A329697(A332817(n+1))`
-/

namespace A334873.P1838812768071307141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1) * A329697 (A332817 (n + 1)).toNat

end

end A334873.P1838812768071307141

namespace A334873

/-- `A329697(n+1)*A329697(A332817(n+1))` -/
def P1838812768071307141.Spec : Prop :=
  ∀ n, P1838812768071307141.a n = A334873 (n + 1)

end A334873

/-! ## A334873.P4772495639593242393

`A334204(A243071(n+1))*A334204(n+1)`
-/

namespace A334873.P4772495639593242393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334204 (A243071 (n + 1)).toNat * A334204 (n + 1)

end

end A334873.P4772495639593242393

namespace A334873

/-- `A334204(A243071(n+1))*A334204(n+1)` -/
def P4772495639593242393.Spec : Prop :=
  ∀ n, P4772495639593242393.a n = A334873 (n + 1)

end A334873

/-!
# A334874: a(n) = sigma(1) - tau(2) + sigma(3) - tau(4) + sigma(5) - tau(6) + ... - (up to n).

The programs for A334874, the canonical program `A334874.P16238831933716783394` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334874 has offset 1).

The definition of A334874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334874.P16238831933716783394

`∑[∑{d}[n+1, or(#, (-1)^n)]]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A334874

/-- `∑[∑{d}[n+1, or(#, (-1)^n)]]` -/
def P16238831933716783394.Spec : Prop :=
  ∀ n, P16238831933716783394.a n = A334874 (n + 1)

theorem P16238831933716783394.correct : P16238831933716783394.Spec := by
  intro n
  simp only [A334874, Nat.add_sub_cancel]

end A334874

/-!
# A334876: Numbers m with the property that sigma(2^m+1)/(2^m+1) > sigma(2^k+1)/(2^k+1) for all k < m, where sigma is the sum of divisors function, A000203.

The programs for A334876, there is no canonical definition to state claims against.
-/

/-! ## A334876.P4824571469313610599

`A003961(A363670(n+1))`
-/

namespace A334876.P4824571469313610599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A363670 (n + 1)).toNat

end

end A334876.P4824571469313610599

/-! ## A334876.P16897913117505628625

`record[gcd(A046201(n+1), A133314(n))]`
-/

namespace A334876.P16897913117505628625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046201 (n + 1)) (A133314 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334876.P16897913117505628625

/-! ## A334876.P13686777785339058374

`record[gcd(A075082(n+1), A349169(n+1))]`
-/

namespace A334876.P13686777785339058374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075082 (n + 1)) (A349169 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334876.P13686777785339058374

/-! ## A334876.P4876104412995727643

`A049606(n)*A305611(A007969(2*n+1))`
-/

namespace A334876.P4876104412995727643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049606 n * A305611 (A007969 (2 * n + 1)).toNat

end

end A334876.P4876104412995727643

/-!
# A334877: Number of self-avoiding walks on a 2-dimensional square lattice where the walk consists of steps with incrementing length from 1 to n.

The programs for A334877, there is no canonical definition to state claims against.
-/

/-! ## A334877.P10005954145292999371

`A003119(or(n, C(n, 5)))`
-/

namespace A334877.P10005954145292999371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003119 (Nat.lor n (Nat.choose n 5))

end

end A334877.P10005954145292999371

/-! ## A334877.P13900269669057515763

`A003119(gcd(7*n, n²))`
-/

namespace A334877.P13900269669057515763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003119 (Nat.gcd (7 * n) (n ^ 2))

end

end A334877.P13900269669057515763

/-! ## A334877.P3295223402552454173

`A001394(C(n, (n+1)/∏{p}[n+1, #]))`
-/

namespace A334877.P3295223402552454173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001394 (Nat.choose n (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat)

end

end A334877.P3295223402552454173

/-!
# A334878: For any n > 0 with prime factorization Product_{k > 0} prime(k)^e_k (where prime(k) denotes the k-th prime number), let b_k = 1 + max_{k > 0} e_k; a(n) = Sum_{k > 0} e_k * b_k^(k-1).

The programs for A334878, there is no canonical definition to state claims against.
-/

/-! ## A334878.P4927649431507299210

`or(A048675(n+1), A212619(A341784(n+1)))`
-/

namespace A334878.P4927649431507299210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048675 (n + 1)) (A212619 (A341784 (n + 1)).toNat)

end

end A334878.P4927649431507299210

/-! ## A334878.P4469814609222884706

`or(A048675(n+1), A293895(A319990(n+1)²))`
-/

namespace A334878.P4469814609222884706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048675 (n + 1)) (A293895 (A319990 (n + 1) ^ 2).toNat)

end

end A334878.P4469814609222884706

/-! ## A334878.P6205486549088696555

`A048675(A000005(A000079(n))*A331311(n+1))`
-/

namespace A334878.P6205486549088696555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A000005 (A000079 n).toNat * A331311 (n + 1)).toNat

end

end A334878.P6205486549088696555

/-! ## A334878.P5823529239318542873

`A100820(A214398(A214398(n+1)))+A048675(n+1)`
-/

namespace A334878.P5823529239318542873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100820 (A214398 (A214398 (n + 1)).toNat).toNat + A048675 (n + 1)

end

end A334878.P5823529239318542873

/-! ## A334878.P15137928763742206374

`A048675(n+1)+A331311(n+1)-A331311(A000079(n))`
-/

namespace A334878.P15137928763742206374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 1) + (A331311 (n + 1) - A331311 (A000079 n).toNat)

end

end A334878.P15137928763742206374

/-!
# A334880: Numbers k such that gcd(k, k-th composite number) > 1.

The programs for A334880, the canonical program `A334880.P11930168278696587315` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334880 has offset 1).

The definition of A334880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334880.P11930168278696587315

`lt[1, gcd(n, A018252(n+1))]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A334880

/-- `lt[1, gcd(n, A018252(n+1))]` -/
def P11930168278696587315.Spec : Prop :=
  ∀ n, (P11930168278696587315.a n : ℤ) = A334880 (n + 1)

theorem P11930168278696587315.correct : P11930168278696587315.Spec := by
  intro n
  simp only [A334880, Nat.add_sub_cancel]

end A334880

/-! ## A334880.P14976314305063530595

`lt[A171527(n+1)-1, n+2]+1`
-/

namespace A334880.P14976314305063530595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171527 (n + 1) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A334880.P14976314305063530595

namespace A334880

/-- `lt[A171527(n+1)-1, n+2]+1` -/
def P14976314305063530595.Spec : Prop :=
  ∀ n, (P14976314305063530595.a n : ℤ) = A334880 (n + 1)

end A334880

/-! ## A334880.P9321763343782478860

`lt[1, gcd(n+1, A002808(n+1))]+1`
-/

namespace A334880.P9321763343782478860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A002808 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A334880.P9321763343782478860

namespace A334880

/-- `lt[1, gcd(n+1, A002808(n+1))]+1` -/
def P9321763343782478860.Spec : Prop :=
  ∀ n, (P9321763343782478860.a n : ℤ) = A334880 (n + 1)

end A334880

/-! ## A334880.P11062234012248516052

`A026238(A336323(n+1))`
-/

namespace A334880.P11062234012248516052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A336323 (n + 1)).toNat

end

end A334880.P11062234012248516052

namespace A334880

/-- `A026238(A336323(n+1))` -/
def P11062234012248516052.Spec : Prop :=
  ∀ n, P11062234012248516052.a n = A334880 (n + 1)

end A334880

/-! ## A334880.P7825367917481455657

`lcm(A066246(A336323(n+1)), A158388(n))`
-/

namespace A334880.P7825367917481455657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A066246 (A336323 (n + 1)).toNat) (A158388 n)

end

end A334880.P7825367917481455657

namespace A334880

/-- `lcm(A066246(A336323(n+1)), A158388(n))` -/
def P7825367917481455657.Spec : Prop :=
  ∀ n, (P7825367917481455657.a n : ℤ) = A334880 (n + 1)

end A334880

/-! ## A334880.P9380377279530940473

`A066246(A336323(n+1))%A006753(n+1)`
-/

namespace A334880.P9380377279530940473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066246 (A336323 (n + 1)).toNat) (A006753 (n + 1))

end

end A334880.P9380377279530940473

namespace A334880

/-- `A066246(A336323(n+1))%A006753(n+1)` -/
def P9380377279530940473.Spec : Prop :=
  ∀ n, P9380377279530940473.a n = A334880 (n + 1)

end A334880

/-! ## A334880.P3519999059701664129

`A066246(A336323(n+1)%A014613(n+1))`
-/

namespace A334880.P3519999059701664129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (Int.tmod (A336323 (n + 1)) (A014613 (n + 1))).toNat

end

end A334880.P3519999059701664129

namespace A334880

/-- `A066246(A336323(n+1)%A014613(n+1))` -/
def P3519999059701664129.Spec : Prop :=
  ∀ n, P3519999059701664129.a n = A334880 (n + 1)

end A334880

/-!
# A334881: Number of squares in 3-dimensional space whose four vertices have coordinates (x,y,z) in the set {1,...,n}.

The programs for A334881, there is no canonical definition to state claims against.
-/

/-! ## A334881.P14795719110719146895

`A114061(A000501(n))`
-/

namespace A334881.P14795719110719146895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114061 (A000501 n).toNat

end

end A334881.P14795719110719146895

/-!
# A334882: Numbers k such that k and k+2 are both primitive practical numbers (A267124).

The programs for A334882, there is no canonical definition to state claims against.
-/

/-! ## A334882.P12818504735347897297

`∩[A267124(n+1)-2, A267124(n+1)]`
-/

namespace A334882.P12818504735347897297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267124 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334882.P12818504735347897297

/-! ## A334882.P13931807062841874623

`∩[A267124(n+1), A023444(A267124(n+1))]`
-/

namespace A334882.P13931807062841874623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A267124 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334882.P13931807062841874623

/-! ## A334882.P11877312414673459124

`∩[A267124(n+1), A289207(A267124(n+4))]`
-/

namespace A334882.P11877312414673459124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A267124 (n + 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334882.P11877312414673459124

/-!
# A334883: Primitive practical numbers (A267124) with a record gap to the next primitive practical number.

The programs for A334883, there is no canonical definition to state claims against.
-/

/-! ## A334883.P11798077636742716957

`record[A055089(n)*A275723(A275725(n))]`
-/

namespace A334883.P11798077636742716957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055089 n * A275723 (A275725 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334883.P11798077636742716957

/-! ## A334883.P14515651162623177241

`A370802(A045763(n+1)+A002778(n+2))`
-/

namespace A334883.P14515651162623177241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370802 (A045763 (n + 1) + A002778 (n + 2)).toNat

end

end A334883.P14515651162623177241

/-!
# A334884: Order of the non-isomorphic groups PSL(m,q) [or PSL_m(q)] in increasing order as q runs through the prime powers.

The programs for A334884, there is no canonical definition to state claims against.
-/

/-! ## A334884.P14653199133443122436

`A334994(∑[char[A079680(2*n+1)]])`
-/

namespace A334884.P14653199133443122436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079680 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334994 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A334884.P14653199133443122436

/-! ## A334884.P2948423967545735870

`A334994(∑[A294935(A158322(n+1))])`
-/

namespace A334884.P2948423967545735870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294935 (A158322 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334994 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A334884.P2948423967545735870

/-! ## A334884.P2166838768301932392

`A334994(∑[A008683(A005180(n+1))²])`
-/

namespace A334884.P2166838768301932392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005180 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334994 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A334884.P2166838768301932392

/-! ## A334884.P8144514109895414474

`A335000(lt[A008966(2*n+1), A366286(n)])`
-/

namespace A334884.P8144514109895414474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335000 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A334884.P8144514109895414474

/-! ## A334884.P9756320888974956918

`A335000(comp[A062068(2*n+1)-A089148(n)])`
-/

namespace A334884.P9756320888974956918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (2 * n + 1) - A089148 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335000 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A334884.P9756320888974956918

/-!
# A334888: a(n) = Sum_{k >= 0} f(d_k) * 3^k where Sum_{k >= 0} d_k * 8^k is the base 8 representation of n and f(k) = 0, 1, 2, 2, 2, 1, 0, 0 for k = 0..7, respectively.

The programs for A334888, there is no canonical definition to state claims against.
-/

/-! ## A334888.P7953667323326001566

`A334889(A055118(n))`
-/

namespace A334888.P7953667323326001566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334889 (A055118 n).toNat

end

end A334888.P7953667323326001566

/-!
# A334889: a(n) = Sum_{k >= 0} f(d_k) * 3^k where Sum_{k >= 0} d_k * 8^k is the base 8 representation of n and f(k) = 0, 0, 0, 1, 2, 2, 2, 1 for k = 0..7, respectively.

The programs for A334889, there is no canonical definition to state claims against.
-/

/-! ## A334889.P5584970521005334067

`A334888(A055118(n))`
-/

namespace A334889.P5584970521005334067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334888 (A055118 n).toNat

end

end A334889.P5584970521005334067

/-! ## A334889.P259008077260977780

`A211985(A205497(n))-A046978(n+1)`
-/

namespace A334889.P259008077260977780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211985 (A205497 n).toNat - A046978 (n + 1)

end

end A334889.P259008077260977780

/-! ## A334889.P12986952031305602884

`∑[A258665(n+1)]%4`
-/

namespace A334889.P12986952031305602884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 4

end

end A334889.P12986952031305602884

/-! ## A334889.P12642598277723124452

`(A022163(n+1)-(n+1))%4`
-/

namespace A334889.P12642598277723124452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022163 (n + 1) - (n + 1 : ℤ)) 4

end

end A334889.P12642598277723124452

/-! ## A334889.P2424005291838750344

`1-A046978(∑[∑[4*n]+3])`
-/

namespace A334889.P2424005291838750344
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A046978 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A334889.P2424005291838750344

/-!
# A334890: a(1) = 1; a(n) = -Sum_{d|n, d > 1} (sigma(d) - d) * a(n/d).

The programs for A334890, there is no canonical definition to state claims against.
-/

/-! ## A334890.P17894119251169769177

`A140254(n+1)-A020500(A161951(n+1))`
-/

namespace A334890.P17894119251169769177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140254 (n + 1) - A020500 (A161951 (n + 1)).toNat

end

end A334890.P17894119251169769177

/-! ## A334890.P3716940377979874006

`A140254(n+1)-A020500(A187829(n+1))`
-/

namespace A334890.P3716940377979874006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140254 (n + 1) - A020500 (A187829 (n + 1)).toNat

end

end A334890.P3716940377979874006

/-! ## A334890.P17690741093176909729

`A140254(n+1)-A020500(A077168(n))`
-/

namespace A334890.P17690741093176909729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140254 (n + 1) - A020500 (A077168 n).toNat

end

end A334890.P17690741093176909729

/-! ## A334890.P15658040774367866453

`A153011(n+1)-(A300722(n+1)+A300705(A300702(n)))`
-/

namespace A334890.P15658040774367866453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153011 (n + 1) - (A300722 (n + 1) + A300705 (A300702 n).toNat)

end

end A334890.P15658040774367866453

/-! ## A334890.P15444295521657422030

`A140254(A077741(n+1))-A020500(n+1)`
-/

namespace A334890.P15444295521657422030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140254 (A077741 (n + 1)).toNat - A020500 (n + 1)

end

end A334890.P15444295521657422030

/-!
# A334891: Number of ways to choose 4 points that form a square from the A000292(n) points in a regular tetrahedral grid where each side has n vertices.

The programs for A334891, there is no canonical definition to state claims against.
-/

/-! ## A334891.P15937651332189124002

`A053604(A007055(n)²)`
-/

namespace A334891.P15937651332189124002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053604 (A007055 n ^ 2).toNat

end

end A334891.P15937651332189124002

/-! ## A334891.P3299917495880043241

`A053604(∑[A027423(n)]²)`
-/

namespace A334891.P3299917495880043241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053604 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A334891.P3299917495880043241

/-!
# A334892: Number T(n,k) of k-element subsets of [n] avoiding 3-term arithmetic progressions and containing n if n>0; triangle T(n,k), n>=0, 0<=k<=A003002(n), read by rows.

The programs for A334892, there is no canonical definition to state claims against.
-/

/-! ## A334892.P17068625533253084321

`A335964(lt[A001359(n+4), A173825(2*(n+1))])`
-/

namespace A334892.P17068625533253084321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173825 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335964 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A334892.P17068625533253084321

/-! ## A334892.P9572097686620055189

`A332670(lt[A076105(n+1), 17])`
-/

namespace A334892.P9572097686620055189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076105 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332670 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A334892.P9572097686620055189

/-! ## A334892.P458746139736558370

`A332670(lt[A317245(n+1), A099774(3*n+2)])`
-/

namespace A334892.P458746139736558370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332670 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A334892.P458746139736558370

/-! ## A334892.P11222777194795421192

`A332670(comp[A285793(3*n+4)-A294956(n+2)])`
-/

namespace A334892.P11222777194795421192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285793 (3 * n + 4) - A294956 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332670 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A334892.P11222777194795421192

/-! ## A334892.P10225255924549121813

`gcd(A280317(n+1), A374276(A092047(n+3)))`
-/

namespace A334892.P10225255924549121813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A280317 (n + 1)) (A374276 (A092047 (n + 3)).toNat)

end

end A334892.P10225255924549121813

/-!
# A334893: Number of subsets of [n] avoiding 3-term arithmetic progressions and containing n if n>0.

The programs for A334893, there is no canonical definition to state claims against.
-/

/-! ## A334893.P16418798873237289552

`abs(Δ[A051013(abs(1-n))])`
-/

namespace A334893.P16418798873237289552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051013 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A334893.P16418798873237289552

/-! ## A334893.P5325440967855862834

`abs(A051013(abs(1-n))-A051013(n))`
-/

namespace A334893.P5325440967855862834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A051013 |1 - (n : ℤ)|.toNat - A051013 n)|

end

end A334893.P5325440967855862834

/-! ## A334893.P11534435755938027018

`A129989(A018135(n))`
-/

namespace A334893.P11534435755938027018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129989 (A018135 n).toNat

end

end A334893.P11534435755938027018

/-! ## A334893.P12044814014940120335

`A138374(A104103(n+1)+A078157(n+1))`
-/

namespace A334893.P12044814014940120335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138374 (A104103 (n + 1) + A078157 (n + 1)).toNat

end

end A334893.P12044814014940120335

/-! ## A334893.P32801401656116866

`A248560(A241726(n))`
-/

namespace A334893.P32801401656116866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248560 (A241726 (n + 36)).toNat

end

end A334893.P32801401656116866

/-!
# A334894: Number of maximum subsets of [n] avoiding 3-term arithmetic progressions and containing n if n>0.

The programs for A334894, there is no canonical definition to state claims against.
-/

/-! ## A334894.P18164902288795066870

`A334892(∑[A003002(n)]+n)`
-/

namespace A334894.P18164902288795066870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334892 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A334894.P18164902288795066870

/-! ## A334894.P11473643866095767164

`A334892(eq[0, A334892(n+1)])`
-/

namespace A334894.P11473643866095767164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334892 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A334894.P11473643866095767164

/-! ## A334894.P13121493441853562680

`A334892(lt[A334892(n+1), 1])`
-/

namespace A334894.P13121493441853562680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334892 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334892 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A334894.P13121493441853562680

/-! ## A334894.P12607342139293021793

`A334892(lt[A334892(n), 1]-1)`
-/

namespace A334894.P12607342139293021793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334892 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334892 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n - 1)

end

end A334894.P12607342139293021793

/-! ## A334894.P7775065822972008700

`A334892(A233583(eq[0, A334892(n)]))`
-/

namespace A334894.P7775065822972008700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334892 (A233583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A334894.P7775065822972008700

/-!
# A334897: a(n) is the number of positive integers less than or equal to n that can be written as the geometric mean of two different positive integers less than or equal to n.

The programs for A334897, there is no canonical definition to state claims against.
-/

/-! ## A334897.P16435847534371371090

`1-A064047(n+1)+n`
-/

namespace A334897.P16435847534371371090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A064047 (n + 1) + (n : ℤ)

end

end A334897.P16435847534371371090

/-! ## A334897.P3614229143727197366

`n-A023443(A064047(n+1))`
-/

namespace A334897.P3614229143727197366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A064047 (n + 1)).toNat

end

end A334897.P3614229143727197366

/-! ## A334897.P10659113906328707405

`n-A023443(∑[A062854(n+1)]+1-A027427(n+1))`
-/

namespace A334897.P10659113906328707405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (∑ j ∈ Finset.range (n + 1), f1 j + (1 - A027427 (n + 1))).toNat

end

end A334897.P10659113906328707405

/-! ## A334897.P2008826981164867850

`A008620(3*n)-A064047(A008620(3*n))`
-/

namespace A334897.P2008826981164867850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * n) - A064047 (A008620 (3 * n)).toNat

end

end A334897.P2008826981164867850

/-! ## A334897.P3455021187987177945

`A056239(A000040(n+1))%A064047(n+1)`
-/

namespace A334897.P3455021187987177945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A000040 (n + 1)).toNat) (A064047 (n + 1))

end

end A334897.P3455021187987177945

/-! ## A334897.P10002564926396378715

`A060401(n+1)%A064047(n+1)`
-/

namespace A334897.P10002564926396378715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060401 (n + 1)) (A064047 (n + 1))

end

end A334897.P10002564926396378715

/-! ## A334897.P7938533597402527995

`n+1-lcm(A033999(A053727(n+1)), A335152(n+1))`
-/

namespace A334897.P7938533597402527995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Int.lcm (A033999 (A053727 (n + 1)).toNat) (A335152 (n + 1)) : ℤ)

end

end A334897.P7938533597402527995

/-!
# A334898: Bi-unitary practical numbers: numbers m such that every number 1 <= k <= bsigma(m) is a sum of distinct bi-unitary divisors of m, where bsigma is A188999.

The programs for A334898, there is no canonical definition to state claims against.
-/

/-! ## A334898.P6216035852067863703

`A000005(A110038(n))*A194507(n+1)`
-/

namespace A334898.P6216035852067863703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A110038 n).toNat * A194507 (n + 1)

end

end A334898.P6216035852067863703

/-! ## A334898.P14810977510947219761

`record[gcd(A333426(n+1), A333445(2*n+5))]`
-/

namespace A334898.P14810977510947219761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A333426 (n + 1)) (A333445 (2 * n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334898.P14810977510947219761

/-!
# A334899: Bi-unitary practical numbers (A334898) that are not exponentially odd numbers (A268335).

The programs for A334899, there is no canonical definition to state claims against.
-/

/-! ## A334899.P18044589923299827819

`∩[A334898(n+1), A335938(n+1)]`
-/

namespace A334899.P18044589923299827819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334899.P18044589923299827819

/-! ## A334899.P16116713071832892125

`∩[A072587(n+1), A334898(n+1)]`
-/

namespace A334899.P16116713071832892125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334899.P16116713071832892125

/-! ## A334899.P14158497944273831129

`∩[A334898(n+1), A335216(n+1)]`
-/

namespace A334899.P14158497944273831129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334899.P14158497944273831129

