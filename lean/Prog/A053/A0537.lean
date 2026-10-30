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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
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
import Seq.B004.C004
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
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A053700: a(n) = 111111 in base n.

The programs for A053700, the canonical program `A053700.P8220208722035167033` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053700 has offset 1).

The definition of A053700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053700.P18163905037204365605

`ogf((6+27x+76x^2+6x^3+6x^4-x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A053700.P18163905037204365605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 27, 76, 6, 6, -1] [1, -6, 15, -20, 15, -6, 1] n

end

end A053700.P18163905037204365605

namespace A053700

/-- `ogf((6+27x+76x^2+6x^3+6x^4-x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P18163905037204365605.Spec : Prop :=
  ∀ n, P18163905037204365605.a n = A053700 (n + 1)

end A053700

/-! ## A053700.P8220208722035167033

`(n+1)^5+(n+1)^4+(n+1)^3+(n+1)²+n+1+1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A053700

/-- `(n+1)^5+(n+1)^4+(n+1)^3+(n+1)²+n+1+1` -/
def P8220208722035167033.Spec : Prop :=
  ∀ n, (P8220208722035167033.a n : ℤ) = A053700 (n + 1)

theorem P8220208722035167033.correct : P8220208722035167033.Spec := by
  intro n
  simp only [A053700, Nat.add_sub_cancel]

end A053700

/-! ## A053700.P11070915533305282210

`∑{#}[5, (n+1)^#]`
-/

namespace A053700.P11070915533305282210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (n + 1) ^ k

end

end A053700.P11070915533305282210

namespace A053700

/-- `∑{#}[5, (n+1)^#]` -/
def P11070915533305282210.Spec : Prop :=
  ∀ n, (P11070915533305282210.a n : ℤ) = A053700 (n + 1)

end A053700

/-! ## A053700.P12255196498054106311

`(A053716(n+1)-1)/(n+1)`
-/

namespace A053700.P12255196498054106311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053716 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

end

end A053700.P12255196498054106311

namespace A053700

/-- `(A053716(n+1)-1)/(n+1)` -/
def P12255196498054106311.Spec : Prop :=
  ∀ n, P12255196498054106311.a n = (A053700 (n + 1) : ℚ)

theorem P12255196498054106311.correct : P12255196498054106311.Spec := by
  intro n
  simp only [A053700, Nat.add_sub_cancel, A053700.P12255196498054106311.a, A053700.P8220208722035167033.a, A053716, A053716.P6668910890302128601.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053700

/-! ## A053700.P13600133549330012204

`lcm(A000578(n+1)+1, A069778(n+1))`
-/

namespace A053700.P13600133549330012204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000578 (n + 1) + 1) (A069778 (n + 1))

end

end A053700.P13600133549330012204

namespace A053700

/-- `lcm(A000578(n+1)+1, A069778(n+1))` -/
def P13600133549330012204.Spec : Prop :=
  ∀ n, (P13600133549330012204.a n : ℤ) = A053700 (n + 1)

end A053700

/-! ## A053700.P1267754334798508515

`(A069778(n)-A027444(n))*A069778(n+1)`
-/

namespace A053700.P1267754334798508515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A069778 n - A027444 n) * A069778 (n + 1)

end

end A053700.P1267754334798508515

namespace A053700

/-- `(A069778(n)-A027444(n))*A069778(n+1)` -/
def P1267754334798508515.Spec : Prop :=
  ∀ n, P1267754334798508515.a n = A053700 (n + 1)

theorem P1267754334798508515.correct : P1267754334798508515.Spec := by
  intro n
  simp only [A053700, Nat.add_sub_cancel, A053700.P1267754334798508515.a, A053700.P8220208722035167033.a, A027444, A027444.P13486811862535796769.a, A069778, A069778.P902300681639061686.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053700

/-! ## A053700.P4174867325674579540

`(n+2)*A059826(n+1)`
-/

namespace A053700.P4174867325674579540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A059826 (n + 1)

end

end A053700.P4174867325674579540

namespace A053700

/-- `(n+2)*A059826(n+1)` -/
def P4174867325674579540.Spec : Prop :=
  ∀ n, P4174867325674579540.a n = A053700 (n + 1)

theorem P4174867325674579540.correct : P4174867325674579540.Spec := by
  intro n
  simp only [A053700, Nat.add_sub_cancel, A053700.P4174867325674579540.a, A053700.P8220208722035167033.a, A059826, A059826.P10107357562865888263.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053700

/-! ## A053700.P6534685253915687731

`A228290(n+1)/(n+1)`
-/

namespace A053700.P6534685253915687731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228290 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A053700.P6534685253915687731

namespace A053700

/-- `A228290(n+1)/(n+1)` -/
def P6534685253915687731.Spec : Prop :=
  ∀ n, P6534685253915687731.a n = (A053700 (n + 1) : ℚ)

end A053700

/-! ## A053700.P255285698059031694

`A105067(n+1)/(A001014(n+1)+1)`
-/

namespace A053700.P255285698059031694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105067 (n + 1) : ℚ) / (A001014 (n + 1) + 1 : ℚ)

end

end A053700.P255285698059031694

namespace A053700

/-- `A105067(n+1)/(A001014(n+1)+1)` -/
def P255285698059031694.Spec : Prop :=
  ∀ n, P255285698059031694.a n = (A053700 (n + 1) : ℚ)

end A053700

/-! ## A053700.P12161197317490397127

`(n+2)*A002061(A002522(n+1))`
-/

namespace A053700.P12161197317490397127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A002061 (A002522 (n + 1)).toNat

end

end A053700.P12161197317490397127

namespace A053700

/-- `(n+2)*A002061(A002522(n+1))` -/
def P12161197317490397127.Spec : Prop :=
  ∀ n, P12161197317490397127.a n = A053700 (n + 1)

end A053700

/-!
# A053701: Vertically symmetric numbers.

The programs for A053701, there is no canonical definition to state claims against.
-/

/-! ## A053701.P14635229803039383044

`record[gcd(A321310(2*n+1), A321310(2*n))]`
-/

namespace A053701.P14635229803039383044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A321310 (2 * n + 1)) (A321310 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053701.P14635229803039383044

/-!
# A053702: Odd prime powers p^w (w>1) such that p^w+2 is prime.

The programs for A053702, there is no canonical definition to state claims against.
-/

/-! ## A053702.P17705689940343216289

`A053703(1+n)-2`
-/

namespace A053702.P17705689940343216289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053703 (1 + n) - 2

end

end A053702.P17705689940343216289

/-! ## A053702.P17557606893155930375

`A074852(ceil(n/(n+1)+n+1))`
-/

namespace A053702.P17557606893155930375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074852 ⌈(n : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)⌉.toNat

end

end A053702.P17557606893155930375

/-! ## A053702.P14778121957242550393

`record[A074852(A026272(n+3))]`
-/

namespace A053702.P14778121957242550393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074852 (A026272 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053702.P14778121957242550393

/-! ## A053702.P18443604130776028874

`or(1, A074852(A181440(n+2)))`
-/

namespace A053702.P18443604130776028874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074852 (A181440 (n + 2)).toNat)

end

end A053702.P18443604130776028874

/-! ## A053702.P8603468305799371494

`lcm(A033999(n), A074852(A181440(n+2)))`
-/

namespace A053702.P8603468305799371494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A074852 (A181440 (n + 2)).toNat)

end

end A053702.P8603468305799371494

/-! ## A053702.P12433442139677810202

`record[A074852(A164306(n+6))]`
-/

namespace A053702.P12433442139677810202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074852 (A164306 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053702.P12433442139677810202

/-!
# A053703: Primes q of form q=p^w+2 where p is odd prime, w>=2.

The programs for A053703, there is no canonical definition to state claims against.
-/

/-! ## A053703.P10219863873383247579

`A053702(n+1)+2`
-/

namespace A053703.P10219863873383247579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053702 (n + 1) + 2

end

end A053703.P10219863873383247579

/-! ## A053703.P9378410209622247836

`A074852(A065475(n+1))+2`
-/

namespace A053703.P9378410209622247836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074852 (A065475 (n + 1)).toNat + 2

end

end A053703.P9378410209622247836

/-! ## A053703.P9373851804418652065

`A074852(A181440(n+2))+2`
-/

namespace A053703.P9373851804418652065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074852 (A181440 (n + 2)).toNat + 2

end

end A053703.P9373851804418652065

/-! ## A053703.P14009177673398347358

`A074852(A184985(n+2))+2`
-/

namespace A053703.P14009177673398347358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074852 (A184985 (n + 2)).toNat + 2

end

end A053703.P14009177673398347358

/-! ## A053703.P16447566322998066418

`A074852(n+1-A057428(n))+2`
-/

namespace A053703.P16447566322998066418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074852 ((n + 1 : ℤ) - A057428 n).toNat + 2

end

end A053703.P16447566322998066418

/-! ## A053703.P2370619745296694232

`A074852(char[A264985(n+1)]+n+1)+2`
-/

namespace A053703.P2370619745296694232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074852 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n + 1) + 2

end

end A053703.P2370619745296694232

/-! ## A053703.P3725842885898330549

`A074852(A008619(A163300(n+1)))+2`
-/

namespace A053703.P3725842885898330549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074852 (A008619 (A163300 (n + 1)).toNat).toNat + 2

end

end A053703.P3725842885898330549

/-!
# A053704: Prime powers p^w (w >= 2) such that p^w-2 is prime.

The programs for A053704, there is no canonical definition to state claims against.
-/

/-! ## A053704.P4874203154925321555

`A053705(n+1)+2`
-/

namespace A053704.P4874203154925321555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053705 (n + 1) + 2

end

end A053704.P4874203154925321555

/-! ## A053704.P18378254432502646551

`p?[A088072(n+1)-1]+2`
-/

namespace A053704.P18378254432502646551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088072 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A053704.P18378254432502646551

/-! ## A053704.P1181398131041858628

`p?[A249435(n+1)-1]+2`
-/

namespace A053704.P1181398131041858628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249435 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A053704.P1181398131041858628

/-! ## A053704.P3380659553929870855

`p?[A025475(n+1)-2]+2`
-/

namespace A053704.P3380659553929870855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A053704.P3380659553929870855

/-! ## A053704.P12903468012711546553

`p?[A073540(n+1)-2]+2`
-/

namespace A053704.P12903468012711546553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A053704.P12903468012711546553

/-! ## A053704.P5531787683197697402

`p?[A134611(n+1)-2]+2`
-/

namespace A053704.P5531787683197697402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134611 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A053704.P5531787683197697402

/-! ## A053704.P13716477075982874339

`p?[A134612(n+1)-2]+2`
-/

namespace A053704.P13716477075982874339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A053704.P13716477075982874339

/-! ## A053704.P13695798304979220864

`p?[A246547(n+1)-2]+2`
-/

namespace A053704.P13695798304979220864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246547 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A053704.P13695798304979220864

/-! ## A053704.P5661737266965455859

`∩[A049232(n+1), A120431(n+1)]+2`
-/

namespace A053704.P5661737266965455859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A053704.P5661737266965455859

/-! ## A053704.P1115262721844764778

`∩[A049232(n+1), A267944(n+1)]+2`
-/

namespace A053704.P1115262721844764778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A053704.P1115262721844764778

/-!
# A053705: Primes p of form q^k-2 where q is also a prime and k > 1.

The programs for A053705, there is no canonical definition to state claims against.
-/

/-! ## A053705.P3492825030118743864

`A053704(n+1)-2`
-/

namespace A053705.P3492825030118743864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053704 (n + 1) - 2

end

end A053705.P3492825030118743864

/-! ## A053705.P5882983042499177917

`∪[A347032(n+1), A389431(n+1)]`
-/

namespace A053705.P5882983042499177917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A053705.P5882983042499177917

/-! ## A053705.P15705365033950457444

`A118824(A000265(n+1))+A053704(n+1)`
-/

namespace A053705.P15705365033950457444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (A000265 (n + 1)).toNat + A053704 (n + 1)

end

end A053705.P15705365033950457444

/-! ## A053705.P5117641349818209977

`A118824(A069040(n+1))+A053704(n+1)`
-/

namespace A053705.P5117641349818209977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (A069040 (n + 1)).toNat + A053704 (n + 1)

end

end A053705.P5117641349818209977

/-! ## A053705.P11021427988894011591

`(A053704(n+1)+A053702(n+1))%A053703(n+1)`
-/

namespace A053705.P11021427988894011591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053704 (n + 1) + A053702 (n + 1)) (A053703 (n + 1))

end

end A053705.P11021427988894011591

/-! ## A053705.P8135965991244103748

`A280560(Δ[(3*n)²])+A053704(n+1)`
-/

namespace A053705.P8135965991244103748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A053704 (n + 1)

end

end A053705.P8135965991244103748

/-! ## A053705.P560906673816820409

`record[A053704(A134478(n))-2]`
-/

namespace A053705.P560906673816820409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053704 (A134478 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053705.P560906673816820409

/-! ## A053705.P7490456030342262304

`∩[A094786(n+1), A120431(n+1)]`
-/

namespace A053705.P7490456030342262304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053705.P7490456030342262304

/-! ## A053705.P2925023384389638153

`∩[A094786(n+1), A267944(n+1)]`
-/

namespace A053705.P2925023384389638153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053705.P2925023384389638153

/-! ## A053705.P4841202126093073903

`∩[A094786(n+1), A289995(n+1)]`
-/

namespace A053705.P4841202126093073903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053705.P4841202126093073903

/-!
# A053706: Primes p such that between p and the next prime, 2 prime powers (A025475) occur.

The programs for A053706, there is no canonical definition to state claims against.
-/

/-! ## A053706.P14522620521325945514

`A151799(A068315(n+1))`
-/

namespace A053706.P14522620521325945514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A068315 (n + 1)).toNat

end

end A053706.P14522620521325945514

/-!
# A053707: First differences of A025475, powers of a prime but not prime.

The programs for A053707, there is no canonical definition to state claims against.
-/

/-! ## A053707.P14493050146101872509

`A025475(n+2)-A025475(n+1)`
-/

namespace A053707.P14493050146101872509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 2) - A025475 (n + 1)

end

end A053707.P14493050146101872509

/-! ## A053707.P5631797783182646157

`A246547(n+1)-A025475(n+1)`
-/

namespace A053707.P5631797783182646157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246547 (n + 1) - A025475 (n + 1)

end

end A053707.P5631797783182646157

/-! ## A053707.P5476660191445652068

`A246547(n+1)-(A249435(n+1)+1)`
-/

namespace A053707.P5476660191445652068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246547 (n + 1) - (A249435 (n + 1) + 1)

end

end A053707.P5476660191445652068

/-! ## A053707.P14537463853316908985

`Δ[A025475(1+n)]`
-/

namespace A053707.P14537463853316908985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053707.P14537463853316908985

/-! ## A053707.P1556300386220578329

`Δ[A249435(n+1)]`
-/

namespace A053707.P1556300386220578329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053707.P1556300386220578329

/-! ## A053707.P13735373507234189014

`A249435(n+2)-A249435(n+1)`
-/

namespace A053707.P13735373507234189014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249435 (n + 2) - A249435 (n + 1)

end

end A053707.P13735373507234189014

/-! ## A053707.P1060042039790952373

`Δ[record[A163813(n+1)]]`
-/

namespace A053707.P1060042039790952373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163813 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053707.P1060042039790952373

/-! ## A053707.P10570060615670264293

`Δ[A000961(A024621(n+1))]`
-/

namespace A053707.P10570060615670264293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A024621 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053707.P10570060615670264293

/-! ## A053707.P11617338129060012443

`runs[A069637(n+1)]`
-/

namespace A053707.P11617338129060012443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069637 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A053707.P11617338129060012443

/-! ## A053707.P1601555718220717054

`runs[A045948(n+1)]`
-/

namespace A053707.P1601555718220717054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045948 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A053707.P1601555718220717054

/-!
# A053708: Nearest prime to n! (but not equal to n!).

The programs for A053708, there is no canonical definition to state claims against.
-/

/-! ## A053708.P8571079234159284215

`A151800((n+1)!-A328846(n))`
-/

namespace A053708.P8571079234159284215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((Nat.factorial (n + 1) : ℤ) - A328846 n).toNat

end

end A053708.P8571079234159284215

/-! ## A053708.P12882642035984309836

`A151800((n+1)!-A265227(or(1, n)))`
-/

namespace A053708.P12882642035984309836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((Nat.factorial (n + 1) : ℤ) - A265227 (Nat.lor 1 n)).toNat

end

end A053708.P12882642035984309836

/-! ## A053708.P6778867952689810543

`A151800(A037152(n+1)-record[A160433(n)])`
-/

namespace A053708.P6778867952689810543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A037152 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053708.P6778867952689810543

/-! ## A053708.P11322539871119995532

`A151799(A027948(3*n+4)+A000142(n+1))`
-/

namespace A053708.P11322539871119995532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A027948 (3 * n + 4) + A000142 (n + 1)).toNat

end

end A053708.P11322539871119995532

/-!
# A053709: Prime balanced factorials: numbers k such that k! is the mean of its 2 closest primes.

The programs for A053709, there is no canonical definition to state claims against.
-/

/-! ## A053709.P11852168775092472687

`eq[A033932(n+2), A033933(n+2)]+2`
-/

namespace A053709.P11852168775092472687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033932 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033933 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A053709.P11852168775092472687

/-! ## A053709.P4225893145726728157

`eq[A033932(n), A033933(A233583(n+1))]`
-/

namespace A053709.P4225893145726728157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033932 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033933 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053709.P4225893145726728157

/-!
# A053711: Numbers d such that, for some k, the upper and lower primes closest to k! are k! + d and k! - d.

The programs for A053711, there is no canonical definition to state claims against.
-/

/-! ## A053711.P14575726514642552340

`A033932(A053709(n+1))`
-/

namespace A053711.P14575726514642552340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033932 (A053709 (n + 1)).toNat

end

end A053711.P14575726514642552340

/-! ## A053711.P17426383010704319891

`A037153(A053709(n+1))^A178489(n)`
-/

namespace A053711.P17426383010704319891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037153 (A053709 (n + 1)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A053711.P17426383010704319891

/-! ## A053711.P16503006356318080218

`A037153(A053709(n+1))%A087421(2*(n+1))`
-/

namespace A053711.P16503006356318080218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037153 (A053709 (n + 1)).toNat) (A087421 (2 * (n + 1)))

end

end A053711.P16503006356318080218

/-! ## A053711.P7711623889709584237

`A053714(A053709(-xor(n, -1)))`
-/

namespace A053711.P7711623889709584237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053714 (A053709 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A053711.P7711623889709584237

/-!
# A053715: a(n) = n-th triangular number (the sum of the first n integers) in base n.

The programs for A053715, the canonical program `A053715.P11055994685338526000` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053715 has offset 0).

The definition of A053715 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053715.P16663184494113372879

`ogf((x+11x^2+18x^3-9x^5)/(1-2x^2+x^4))`
-/

namespace A053715.P16663184494113372879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 11, 18, 0, -9] [1, 0, -2, 0, 1] n

end

end A053715.P16663184494113372879

namespace A053715

/-- `ogf((x+11x^2+18x^3-9x^5)/(1-2x^2+x^4))` -/
def P16663184494113372879.Spec : Prop :=
  ∀ n, P16663184494113372879.a n = A053715 n

end A053715

/-! ## A053715.P11055994685338526000

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=11, a(3)=20, a(4)=22, a(5)=30`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A053715

/-- `2*a(n-2)-a(n-4)` -/
def P11055994685338526000.Spec : Prop :=
  ∀ n, P11055994685338526000.a n = A053715 n

theorem P11055994685338526000.correct : P11055994685338526000.Spec := by
  intro n
  simp only [A053715]

end A053715

/-! ## A053715.P11492258623037046074

`A243520(A059029(n))%A016945(n)`
-/

namespace A053715.P11492258623037046074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243520 (A059029 n).toNat) (A016945 n)

end

end A053715.P11492258623037046074

namespace A053715

/-- `A243520(A059029(n))%A016945(n)` -/
def P11492258623037046074.Spec : Prop :=
  ∀ n, P11492258623037046074.a n = A053715 n

end A053715

/-! ## A053715.P17914189233893027846

`eq[1, A017887(n)]%∑[n+4]`
-/

namespace A053715.P17914189233893027846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A053715.P17914189233893027846

namespace A053715

/-- `eq[1, A017887(n)]%∑[n+4]` -/
def P17914189233893027846.Spec : Prop :=
  ∀ n, (P17914189233893027846.a n : ℤ) = A053715 n

end A053715

/-! ## A053715.P7523428455617869201

`lt[A004086(A045918(n)), A005237(n+1)]`
-/

namespace A053715.P7523428455617869201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A045918 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053715.P7523428455617869201

namespace A053715

/-- `lt[A004086(A045918(n)), A005237(n+1)]` -/
def P7523428455617869201.Spec : Prop :=
  ∀ n, (P7523428455617869201.a n : ℤ) = A053715 n

end A053715

/-!
# A053716: a(n) = 1111111 in base n.

The programs for A053716, the canonical program `A053716.P6668910890302128601` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053716 has offset 1).

The definition of A053716 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053716.P8896286091582852654

`ogf((7+78x+351x^2+232x^3+57x^4-6x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A053716.P8896286091582852654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 78, 351, 232, 57, -6, 1] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A053716.P8896286091582852654

namespace A053716

/-- `ogf((7+78x+351x^2+232x^3+57x^4-6x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P8896286091582852654.Spec : Prop :=
  ∀ n, P8896286091582852654.a n = A053716 (n + 1)

end A053716

/-! ## A053716.P6668910890302128601

`(n+1)^6+(n+1)^5+(n+1)^4+(n+1)^3+(n+1)²+n+1+1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A053716

/-- `(n+1)^6+(n+1)^5+(n+1)^4+(n+1)^3+(n+1)²+n+1+1` -/
def P6668910890302128601.Spec : Prop :=
  ∀ n, (P6668910890302128601.a n : ℤ) = A053716 (n + 1)

theorem P6668910890302128601.correct : P6668910890302128601.Spec := by
  intro n
  simp only [A053716, Nat.add_sub_cancel]

end A053716

/-! ## A053716.P17981006027366665337

`∑{#}[6, (1+n)^#]`
-/

namespace A053716.P17981006027366665337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (1 + n) ^ k

end

end A053716.P17981006027366665337

namespace A053716

/-- `∑{#}[6, (1+n)^#]` -/
def P17981006027366665337.Spec : Prop :=
  ∀ n, (P17981006027366665337.a n : ℤ) = A053716 (n + 1)

end A053716

/-! ## A053716.P14634713838576591735

`A228291(n+1)/(n+1)`
-/

namespace A053716.P14634713838576591735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228291 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A053716.P14634713838576591735

namespace A053716

/-- `A228291(n+1)/(n+1)` -/
def P14634713838576591735.Spec : Prop :=
  ∀ n, P14634713838576591735.a n = (A053716 (n + 1) : ℚ)

end A053716

/-! ## A053716.P16861408316691380749

`(A053717(n+1)-1)/(n+1)`
-/

namespace A053716.P16861408316691380749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053717 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

end

end A053716.P16861408316691380749

namespace A053716

/-- `(A053717(n+1)-1)/(n+1)` -/
def P16861408316691380749.Spec : Prop :=
  ∀ n, P16861408316691380749.a n = (A053716 (n + 1) : ℚ)

theorem P16861408316691380749.correct : P16861408316691380749.Spec := by
  intro n
  simp only [A053716, Nat.add_sub_cancel, A053716.P16861408316691380749.a, A053716.P6668910890302128601.a, A053717, A053717.P5334508227328252156.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053716

/-!
# A053717: a(n) = n^7 + n^6 + n^5 + n^4 + n^3 + n^2 + n + 1.

The programs for A053717, the canonical program `A053717.P5334508227328252156` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053717 has offset 0).

The definition of A053717 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^7+n^6+n^5+n^4+n^3+n²+n+1` (program `A053717.P5334508227328252156`, by `A053717.P5334508227328252156.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053717.P5334508227328252156

`n^7+n^6+n^5+n^4+n^3+n²+n+1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A053717

/-- `n^7+n^6+n^5+n^4+n^3+n²+n+1` -/
def P5334508227328252156.Spec : Prop :=
  ∀ n, (P5334508227328252156.a n : ℤ) = A053717 n

theorem P5334508227328252156.correct : P5334508227328252156.Spec := by
  intro n
  simp only [A053717]

end A053717

/-! ## A053717.P7825293044063012164

`(n+1)*A059830(n)`
-/

namespace A053717.P7825293044063012164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A059830 n

end

end A053717.P7825293044063012164

namespace A053717

/-- `(n+1)*A059830(n)` -/
def P7825293044063012164.Spec : Prop :=
  ∀ n, P7825293044063012164.a n = A053717 n

theorem P7825293044063012164.correct : P7825293044063012164.Spec := by
  intro n
  simp only [A053717, Nat.add_sub_cancel, A053717.P7825293044063012164.a, A053717.P5334508227328252156.a, A059830, A059830.P6751440411654911174.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053717

/-! ## A053717.P1364639600199782296

`A002523(n)*A053698(n)`
-/

namespace A053717.P1364639600199782296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n * A053698 n

end

end A053717.P1364639600199782296

namespace A053717

/-- `A002523(n)*A053698(n)` -/
def P1364639600199782296.Spec : Prop :=
  ∀ n, P1364639600199782296.a n = A053717 n

theorem P1364639600199782296.correct : P1364639600199782296.Spec := by
  intro n
  simp only [A053717, Nat.add_sub_cancel, A053717.P1364639600199782296.a, A053717.P5334508227328252156.a, A002523, A002523.P178649398705969946.a, A053698, A053698.P17380684271159484773.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053717

/-! ## A053717.P1029707354227214073

`A105312(n)/A060890(n)`
-/

namespace A053717.P1029707354227214073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105312 n : ℚ) / (A060890 n : ℚ)

end

end A053717.P1029707354227214073

namespace A053717

/-- `A105312(n)/A060890(n)` -/
def P1029707354227214073.Spec : Prop :=
  ∀ n, P1029707354227214073.a n = (A053717 n : ℚ)

end A053717

/-! ## A053717.P15793549120565598865

`gcd(A024006(n), A228292(n))`
-/

namespace A053717.P15793549120565598865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024006 n) (A228292 n)

end

end A053717.P15793549120565598865

namespace A053717

/-- `gcd(A024006(n), A228292(n))` -/
def P15793549120565598865.Spec : Prop :=
  ∀ n, (P15793549120565598865.a n : ℤ) = A053717 n

end A053717

/-! ## A053717.P14148166327310990560

`(A228291(n)+1)%A024007(n+3)`
-/

namespace A053717.P14148166327310990560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228291 n + 1) (A024007 (n + 3))

end

end A053717.P14148166327310990560

namespace A053717

/-- `(A228291(n)+1)%A024007(n+3)` -/
def P14148166327310990560.Spec : Prop :=
  ∀ n, P14148166327310990560.a n = A053717 n

end A053717

/-! ## A053717.P9559672576732546804

`(n+1)*A053698(n²)`
-/

namespace A053717.P9559672576732546804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A053698 (n ^ 2)

end

end A053717.P9559672576732546804

namespace A053717

/-- `(n+1)*A053698(n²)` -/
def P9559672576732546804.Spec : Prop :=
  ∀ n, P9559672576732546804.a n = A053717 n

theorem P9559672576732546804.correct : P9559672576732546804.Spec := by
  intro n
  simp only [A053717, Nat.add_sub_cancel, A053717.P9559672576732546804.a, A053717.P5334508227328252156.a, A053698, A053698.P17380684271159484773.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053717

/-!
# A053718: Number of n X n binary matrices of order dividing 4 (also number of solutions to X^4=I in GL(n,2)).

The programs for A053718, there is no canonical definition to state claims against.
-/

/-! ## A053718.P2100301578428884762

`A053875(n+1)+A053722(n+1)`
-/

namespace A053718.P2100301578428884762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053875 (n + 1) + A053722 (n + 1)

end

end A053718.P2100301578428884762

/-! ## A053718.P1752306967776137710

`A053875(n+1)+A346214(A133263(n))+A057427(n)`
-/

namespace A053718.P1752306967776137710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053875 (n + 1) + (A346214 (A133263 n).toNat + A057427 n)

end

end A053718.P1752306967776137710

/-! ## A053718.P15651706704070717304

`A053875(n+1)+A346214(A133263(n))-A057428(n)`
-/

namespace A053718.P15651706704070717304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053875 (n + 1) + (A346214 (A133263 n).toNat - A057428 n)

end

end A053718.P15651706704070717304

/-!
# A053722: Number of n X n binary matrices of order dividing 2 (also number of solutions to X^2=I in GL(n,2)).

The programs for A053722, there is no canonical definition to state claims against.
-/

/-! ## A053722.P15911867410520171196

`A053718(n+1)-A053875(n+1)`
-/

namespace A053722.P15911867410520171196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053718 (n + 1) - A053875 (n + 1)

end

end A053722.P15911867410520171196

/-! ## A053722.P14821757873023936133

`A053718(n+1)+A053875(n+1)*A057428(n)`
-/

namespace A053722.P14821757873023936133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053718 (n + 1) + A053875 (n + 1) * A057428 n

end

end A053722.P14821757873023936133

/-! ## A053722.P2453939215268523264

`A346214(A133263(n))+A057427(n)`
-/

namespace A053722.P2453939215268523264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346214 (A133263 n).toNat + A057427 n

end

end A053722.P2453939215268523264

/-! ## A053722.P3520220505833314254

`A346214(A133263(n))-A057428(n)`
-/

namespace A053722.P3520220505833314254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346214 (A133263 n).toNat - A057428 n

end

end A053722.P3520220505833314254

/-!
# A053723: Number of 5-core partitions of n.

The programs for A053723, the canonical program `A053723.P17641291077866751382` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053723 has offset 0).

The definition of A053723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053723.P7044723628781934093

`(-1)^n*A138512(n+1)`
-/

namespace A053723.P7044723628781934093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A138512 (n + 1)

end

end A053723.P7044723628781934093

namespace A053723

/-- `(-1)^n*A138512(n+1)` -/
def P7044723628781934093.Spec : Prop :=
  ∀ n, P7044723628781934093.a n = A053723 n

end A053723

/-! ## A053723.P1358797609969593443

`abs(A138512(n+1))`
-/

namespace A053723.P1358797609969593443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138512 (n + 1)|

end

end A053723.P1358797609969593443

namespace A053723

/-- `abs(A138512(n+1))` -/
def P1358797609969593443.Spec : Prop :=
  ∀ n, P1358797609969593443.a n = A053723 n

end A053723

/-! ## A053723.P1443657344670047

`gcd(A000038(n), A138512(n+1))`
-/

namespace A053723.P1443657344670047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A138512 (n + 1))

end

end A053723.P1443657344670047

namespace A053723

/-- `gcd(A000038(n), A138512(n+1))` -/
def P1443657344670047.Spec : Prop :=
  ∀ n, (P1443657344670047.a n : ℤ) = A053723 n

end A053723

/-! ## A053723.P9837072836237106463

`lcm(A014709(n), A138512(n+1))`
-/

namespace A053723.P9837072836237106463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014709 n) (A138512 (n + 1))

end

end A053723.P9837072836237106463

namespace A053723

/-- `lcm(A014709(n), A138512(n+1))` -/
def P9837072836237106463.Spec : Prop :=
  ∀ n, (P9837072836237106463.a n : ℤ) = A053723 n

end A053723

/-! ## A053723.P6580384138442534541

`∑{d}[n+1, A000010(#)*A035187((n+1)/#)]`
-/

namespace A053723.P6580384138442534541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A035187 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053723.P6580384138442534541

namespace A053723

/-- `∑{d}[n+1, A000010(#)*A035187((n+1)/#)]` -/
def P6580384138442534541.Spec : Prop :=
  ∀ n, P6580384138442534541.a n = A053723 n

end A053723

/-! ## A053723.P17641291077866751382

`∑{d}[n+1, A129303(#)*A154269((n+1)/#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A053723

/-- `∑{d}[n+1, A129303(#)*A154269((n+1)/#)]` -/
def P17641291077866751382.Spec : Prop :=
  ∀ n, P17641291077866751382.a n = A053723 n

theorem P17641291077866751382.correct : P17641291077866751382.Spec := by
  intro n
  simp only [A053723]

end A053723

/-! ## A053723.P12605919359990925258

`∑{d}[n+1, A087781(#)*A206369((n+1)/#)]`
-/

namespace A053723.P12605919359990925258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087781 d * A206369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053723.P12605919359990925258

namespace A053723

/-- `∑{d}[n+1, A087781(#)*A206369((n+1)/#)]` -/
def P12605919359990925258.Spec : Prop :=
  ∀ n, P12605919359990925258.a n = A053723 n

end A053723

/-! ## A053723.P17615180484612649086

`∑{d}[n+1, A106406(#)*A227128((n+1)/#)]`
-/

namespace A053723.P17615180484612649086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A106406 d * A227128 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053723.P17615180484612649086

namespace A053723

/-- `∑{d}[n+1, A106406(#)*A227128((n+1)/#)]` -/
def P17615180484612649086.Spec : Prop :=
  ∀ n, P17615180484612649086.a n = A053723 n

end A053723

/-! ## A053723.P9820502951045456310

`∑{d}[n+1, A111949(#)*A395768((n+1)/#)]`
-/

namespace A053723.P9820502951045456310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A111949 d * A395768 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053723.P9820502951045456310

namespace A053723

/-- `∑{d}[n+1, A111949(#)*A395768((n+1)/#)]` -/
def P9820502951045456310.Spec : Prop :=
  ∀ n, P9820502951045456310.a n = A053723 n

end A053723

/-! ## A053723.P1972525659190415286

`∑{d}[n+1, A163819(#)*A395769((n+1)/#)]`
-/

namespace A053723.P1972525659190415286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A163819 d * A395769 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053723.P1972525659190415286

namespace A053723

/-- `∑{d}[n+1, A163819(#)*A395769((n+1)/#)]` -/
def P1972525659190415286.Spec : Prop :=
  ∀ n, P1972525659190415286.a n = A053723 n

end A053723

/-! ## A053723.P9376086886540384552

`A138512(n+1)/A113185(n)*A132069(n)`
-/

namespace A053723.P9376086886540384552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138512 (n + 1) : ℚ) / (A113185 n : ℚ) * (A132069 n : ℚ)

end

end A053723.P9376086886540384552

namespace A053723

/-- `A138512(n+1)/A113185(n)*A132069(n)` -/
def P9376086886540384552.Spec : Prop :=
  ∀ n, P9376086886540384552.a n = (A053723 n : ℚ)

end A053723

/-! ## A053723.P1840702003203383928

`A138512(n+1)/A109064(n)*A138506(n)`
-/

namespace A053723.P1840702003203383928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138512 (n + 1) : ℚ) / (A109064 n : ℚ) * (A138506 n : ℚ)

end

end A053723.P1840702003203383928

namespace A053723

/-- `A138512(n+1)/A109064(n)*A138506(n)` -/
def P1840702003203383928.Spec : Prop :=
  ∀ n, P1840702003203383928.a n = (A053723 n : ℚ)

end A053723

/-! ## A053723.P17246116394033112235

`A110712(n+1)+A138483(n+1)-A138512(n+1)`
-/

namespace A053723.P17246116394033112235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110712 (n + 1) + (A138483 (n + 1) - A138512 (n + 1))

end

end A053723.P17246116394033112235

namespace A053723

/-- `A110712(n+1)+A138483(n+1)-A138512(n+1)` -/
def P17246116394033112235.Spec : Prop :=
  ∀ n, P17246116394033112235.a n = A053723 n

end A053723

/-! ## A053723.P7630018526557484418

`A129303(n+1)+A138557(n+1)-A138512(n+1)`
-/

namespace A053723.P7630018526557484418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129303 (n + 1) + (A138557 (n + 1) - A138512 (n + 1))

end

end A053723.P7630018526557484418

namespace A053723

/-- `A129303(n+1)+A138557(n+1)-A138512(n+1)` -/
def P7630018526557484418.Spec : Prop :=
  ∀ n, P7630018526557484418.a n = A053723 n

end A053723

/-! ## A053723.P18307250218639530308

`A111580(n+1)*A138512(n+1)/A138558(n+1)`
-/

namespace A053723.P18307250218639530308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111580 (n + 1) * A138512 (n + 1) : ℚ) / (A138558 (n + 1) : ℚ)

end

end A053723.P18307250218639530308

namespace A053723

/-- `A111580(n+1)*A138512(n+1)/A138558(n+1)` -/
def P18307250218639530308.Spec : Prop :=
  ∀ n, P18307250218639530308.a n = (A053723 n : ℚ)

end A053723

/-! ## A053723.P10783728127236931538

`∑{d}[n+1, #*A080891((n+1)/#)]`
-/

namespace A053723.P10783728127236931538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A080891 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053723.P10783728127236931538

namespace A053723

/-- `∑{d}[n+1, #*A080891((n+1)/#)]` -/
def P10783728127236931538.Spec : Prop :=
  ∀ n, P10783728127236931538.a n = A053723 n

end A053723

/-! ## A053723.P13369033338943184023

`A138512(2*(n+1))+A129303(2*(n+1))`
-/

namespace A053723.P13369033338943184023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138512 (2 * (n + 1)) + A129303 (2 * (n + 1))

end

end A053723.P13369033338943184023

namespace A053723

/-- `A138512(2*(n+1))+A129303(2*(n+1))` -/
def P13369033338943184023.Spec : Prop :=
  ∀ n, P13369033338943184023.a n = A053723 n

end A053723

/-! ## A053723.P1221051016918450136

`A138512(2*(n+1))-A138557(2*(n+1))`
-/

namespace A053723.P1221051016918450136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138512 (2 * (n + 1)) - A138557 (2 * (n + 1))

end

end A053723.P1221051016918450136

namespace A053723

/-- `A138512(2*(n+1))-A138557(2*(n+1))` -/
def P1221051016918450136.Spec : Prop :=
  ∀ n, P1221051016918450136.a n = A053723 n

end A053723

/-! ## A053723.P11813167097835400130

`A175595(Δ[A023551(n+1)])`
-/

namespace A053723.P11813167097835400130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (f1 (n + 1) - f1 n).toNat

end

end A053723.P11813167097835400130

namespace A053723

/-- `A175595(Δ[A023551(n+1)])` -/
def P11813167097835400130.Spec : Prop :=
  ∀ n, P11813167097835400130.a n = A053723 n

end A053723

/-!
# A053724: Number of 7-core partitions of n.

The programs for A053724, there is no canonical definition to state claims against.
-/

/-! ## A053724.P16548175328534539272

`A175595(A155212(n+4))`
-/

namespace A053724.P16548175328534539272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A155212 (n + 4)).toNat

end

end A053724.P16548175328534539272

/-! ## A053724.P18365154152922831718

`A175595(A056000(n+4)+2)`
-/

namespace A053724.P18365154152922831718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A056000 (n + 4) + 2).toNat

end

end A053724.P18365154152922831718

/-! ## A053724.P15706626012078030984

`A175595(A055999(n+5)-2)`
-/

namespace A053724.P15706626012078030984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A055999 (n + 5) - 2).toNat

end

end A053724.P15706626012078030984

/-! ## A053724.P16660713056872726276

`A175595(A052905(n+5)-3)`
-/

namespace A053724.P16660713056872726276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A052905 (n + 5) - 3).toNat

end

end A053724.P16660713056872726276

/-! ## A053724.P13000977890898707076

`A175595(A055998(n+6)-5)`
-/

namespace A053724.P13000977890898707076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A055998 (n + 6) - 5).toNat

end

end A053724.P13000977890898707076

/-! ## A053724.P17082752739989761988

`A175595(A000217(n+8)-8)`
-/

namespace A053724.P17082752739989761988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A000217 (n + 8) - 8).toNat

end

end A053724.P17082752739989761988

/-! ## A053724.P9988853308118451920

`A175595(A000096(n+6)+n+1)`
-/

namespace A053724.P9988853308118451920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A000096 (n + 6) + (n + 1 : ℤ)).toNat

end

end A053724.P9988853308118451920

/-! ## A053724.P6190170741091294168

`A175595(2*n+A056119(n)+28)`
-/

namespace A053724.P6190170741091294168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 ((2 * n : ℤ) + (A056119 n + 28)).toNat

end

end A053724.P6190170741091294168

/-! ## A053724.P5664766956837130405

`A175595(A166136(n+5)+2*n+1)`
-/

namespace A053724.P5664766956837130405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A166136 (n + 5) + (2 * n + 1 : ℤ)).toNat

end

end A053724.P5664766956837130405

/-! ## A053724.P4711382730528067282

`A175595(2*n+A167499(n+5)+2)`
-/

namespace A053724.P4711382730528067282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 ((2 * n : ℤ) + (A167499 (n + 5) + 2)).toNat

end

end A053724.P4711382730528067282

/-! ## A053724.P9370476641951295022

`A175595(2*n+A000124(n+6)+6)`
-/

namespace A053724.P9370476641951295022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 ((2 * n : ℤ) + (A000124 (n + 6) + 6)).toNat

end

end A053724.P9370476641951295022

/-! ## A053724.P17746283237574796013

`A175595(2*n+A000217(n+6)+7)`
-/

namespace A053724.P17746283237574796013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 ((2 * n : ℤ) + (A000217 (n + 6) + 7)).toNat

end

end A053724.P17746283237574796013

/-! ## A053724.P15139393559847888438

`A175595(2*n+A055998(n+4)+10)`
-/

namespace A053724.P15139393559847888438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 ((2 * n : ℤ) + (A055998 (n + 4) + 10)).toNat

end

end A053724.P15139393559847888438

/-! ## A053724.P12792449480865487658

`A175595(2*n+A161680(n+7)+7)`
-/

namespace A053724.P12792449480865487658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 ((2 * n : ℤ) + (A161680 (n + 7) + 7)).toNat

end

end A053724.P12792449480865487658

/-! ## A053724.P1727874953949455802

`A175595(2*n+A052905(n+3)+12)`
-/

namespace A053724.P1727874953949455802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 ((2 * n : ℤ) + (A052905 (n + 3) + 12)).toNat

end

end A053724.P1727874953949455802

/-! ## A053724.P2629336342535408166

`A175595(A317107(n+1)+A166136(n+5))`
-/

namespace A053724.P2629336342535408166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A317107 (n + 1) + A166136 (n + 5)).toNat

end

end A053724.P2629336342535408166

/-! ## A053724.P12757998987584124477

`A175595(eq[7, A025581(n)])`
-/

namespace A053724.P12757998987584124477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053724.P12757998987584124477

/-!
# A053725: Number of n X n binary matrices of order dividing 3 (also number of solutions to X^3=I in GL(n,2)).

The programs for A053725, there is no canonical definition to state claims against.
-/

/-! ## A053725.P9630969271137211019

`A053774(∑[A385846(n)])`
-/

namespace A053725.P9630969271137211019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053774 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A053725.P9630969271137211019

/-!
# A053726: "Flag numbers": number of dots that can be arranged in successive rows of K, K-1, K, K-1, K, ..., K-1, K (assuming there is a total of L > 1 rows of size K > 1).

The programs for A053726, the canonical program `A053726.P6824905761757210776` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053726 has offset 1).

The definition of A053726 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047845, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053726.P12299765316329720765

`A104275(n+2)`
-/

namespace A053726.P12299765316329720765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 2)

end

end A053726.P12299765316329720765

namespace A053726

/-- `A104275(n+2)` -/
def P12299765316329720765.Spec : Prop :=
  ∀ n, P12299765316329720765.a n = A053726 (n + 1)

end A053726

/-! ## A053726.P11482007101019749156

`A008508(n+1)+n+1+1`
-/

namespace A053726.P11482007101019749156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008508 (n + 1) + (n + 1 : ℤ) + 1

end

end A053726.P11482007101019749156

namespace A053726

/-- `A008508(n+1)+n+1+1` -/
def P11482007101019749156.Spec : Prop :=
  ∀ n, P11482007101019749156.a n = A053726 (n + 1)

end A053726

/-! ## A053726.P6824905761757210776

`A047845(n+2)+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A053726

/-- `A047845(n+2)+1` -/
def P6824905761757210776.Spec : Prop :=
  ∀ n, P6824905761757210776.a n = A053726 (n + 1)

theorem P6824905761757210776.correct : P6824905761757210776.Spec := by
  intro n
  simp only [A053726, Nat.add_sub_cancel]

end A053726

/-! ## A053726.P3997351483652675463

`A116922(A071904(n+1))`
-/

namespace A053726.P3997351483652675463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116922 (A071904 (n + 1)).toNat

end

end A053726.P3997351483652675463

namespace A053726

/-- `A116922(A071904(n+1))` -/
def P3997351483652675463.Spec : Prop :=
  ∀ n, P3997351483652675463.a n = A053726 (n + 1)

end A053726

/-! ## A053726.P2923349742077413076

`A153238(n+1)+2`
-/

namespace A053726.P2923349742077413076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 1) + 2

end

end A053726.P2923349742077413076

namespace A053726

/-- `A153238(n+1)+2` -/
def P2923349742077413076.Spec : Prop :=
  ∀ n, P2923349742077413076.a n = A053726 (n + 1)

end A053726

/-! ## A053726.P13399541121109708338

`A153040(n+1)-2`
-/

namespace A053726.P13399541121109708338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153040 (n + 1) - 2

end

end A053726.P13399541121109708338

namespace A053726

/-- `A153040(n+1)-2` -/
def P13399541121109708338.Spec : Prop :=
  ∀ n, P13399541121109708338.a n = A053726 (n + 1)

theorem P13399541121109708338.correct : P13399541121109708338.Spec := by
  intro n
  simp only [A053726, Nat.add_sub_cancel, A053726.P13399541121109708338.a, A053726.P6824905761757210776.a, A047845, A047845.P10472410554983521945.f1, A047845.P10472410554983521945.f2, A047845.P10472410554983521945.a, A153040, A153040.P8115147575926402282.a, A101264, A101264.P9977125953316836564.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053726

/-! ## A053726.P6392767249744173587

`A153052(n+1)+3`
-/

namespace A053726.P6392767249744173587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153052 (n + 1) + 3

end

end A053726.P6392767249744173587

namespace A053726

/-- `A153052(n+1)+3` -/
def P6392767249744173587.Spec : Prop :=
  ∀ n, P6392767249744173587.a n = A053726 (n + 1)

end A053726

/-! ## A053726.P9245016484296102004

`A153039(n+1)-3`
-/

namespace A053726.P9245016484296102004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153039 (n + 1) - 3

end

end A053726.P9245016484296102004

namespace A053726

/-- `A153039(n+1)-3` -/
def P9245016484296102004.Spec : Prop :=
  ∀ n, P9245016484296102004.a n = A053726 (n + 1)

end A053726

/-! ## A053726.P12383626140250819642

`A153053(n+1)+4`
-/

namespace A053726.P12383626140250819642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153053 (n + 1) + 4

end

end A053726.P12383626140250819642

namespace A053726

/-- `A153053(n+1)+4` -/
def P12383626140250819642.Spec : Prop :=
  ∀ n, P12383626140250819642.a n = A053726 (n + 1)

end A053726

/-! ## A053726.P16634983377255068950

`A155723(n+1)+5`
-/

namespace A053726.P16634983377255068950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155723 (n + 1) + 5

end

end A053726.P16634983377255068950

namespace A053726

/-- `A155723(n+1)+5` -/
def P16634983377255068950.Spec : Prop :=
  ∀ n, P16634983377255068950.a n = A053726 (n + 1)

end A053726

/-! ## A053726.P7918065919083200735

`A153045(n+1)-5`
-/

namespace A053726.P7918065919083200735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153045 (n + 1) - 5

end

end A053726.P7918065919083200735

namespace A053726

/-- `A153045(n+1)-5` -/
def P7918065919083200735.Spec : Prop :=
  ∀ n, P7918065919083200735.a n = A053726 (n + 1)

end A053726

/-! ## A053726.P16483050634231285179

`A153047(n+1)-7`
-/

namespace A053726.P16483050634231285179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153047 (n + 1) - 7

end

end A053726.P16483050634231285179

namespace A053726

/-- `A153047(n+1)-7` -/
def P16483050634231285179.Spec : Prop :=
  ∀ n, P16483050634231285179.a n = A053726 (n + 1)

end A053726

/-! ## A053726.P13059388472102430005

`lt[1, A340101(n)]+1`
-/

namespace A053726.P13059388472102430005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340101 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A053726.P13059388472102430005

namespace A053726

/-- `lt[1, A340101(n)]+1` -/
def P13059388472102430005.Spec : Prop :=
  ∀ n, (P13059388472102430005.a n : ℤ) = A053726 (n + 1)

end A053726

/-! ## A053726.P439922633490336424

`lt[1, A352063(n)]+1`
-/

namespace A053726.P439922633490336424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352063 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A053726.P439922633490336424

namespace A053726

/-- `lt[1, A352063(n)]+1` -/
def P439922633490336424.Spec : Prop :=
  ∀ n, (P439922633490336424.a n : ℤ) = A053726 (n + 1)

end A053726

/-! ## A053726.P3743842378667973296

`lt[1, A067760(n)]+2`
-/

namespace A053726.P3743842378667973296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A053726.P3743842378667973296

namespace A053726

/-- `lt[1, A067760(n)]+2` -/
def P3743842378667973296.Spec : Prop :=
  ∀ n, (P3743842378667973296.a n : ℤ) = A053726 (n + 1)

end A053726

/-! ## A053726.P6979860482788498126

`comp[ceil(A351078(n)/2)]`
-/

namespace A053726.P6979860482788498126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A351078 n : ℚ) / 2⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A053726.P6979860482788498126

namespace A053726

/-- `comp[ceil(A351078(n)/2)]` -/
def P6979860482788498126.Spec : Prop :=
  ∀ n, (P6979860482788498126.a n : ℤ) = A053726 (n + 1)

end A053726

/-! ## A053726.P2905482270346420958

`∑[A196274(n+1)]+1`
-/

namespace A053726.P2905482270346420958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A053726.P2905482270346420958

namespace A053726

/-- `∑[A196274(n+1)]+1` -/
def P2905482270346420958.Spec : Prop :=
  ∀ n, P2905482270346420958.a n = A053726 (n + 1)

end A053726

/-! ## A053726.P1955809450152528437

`comp[A102781(n+1)]+1`
-/

namespace A053726.P1955809450152528437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A053726.P1955809450152528437

namespace A053726

/-- `comp[A102781(n+1)]+1` -/
def P1955809450152528437.Spec : Prop :=
  ∀ n, (P1955809450152528437.a n : ℤ) = A053726 (n + 1)

end A053726

/-! ## A053726.P1519995874488498482

`comp[A067076(n+1)]+2`
-/

namespace A053726.P1519995874488498482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A053726.P1519995874488498482

namespace A053726

/-- `comp[A067076(n+1)]+2` -/
def P1519995874488498482.Spec : Prop :=
  ∀ n, (P1519995874488498482.a n : ℤ) = A053726 (n + 1)

end A053726

/-! ## A053726.P11880161078275285873

`(A071904(n+1)+1)/2`
-/

namespace A053726.P11880161078275285873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071904 (n + 1) + 1 : ℚ) / 2

end

end A053726.P11880161078275285873

namespace A053726

/-- `(A071904(n+1)+1)/2` -/
def P11880161078275285873.Spec : Prop :=
  ∀ n, P11880161078275285873.a n = (A053726 (n + 1) : ℚ)

end A053726

/-! ## A053726.P16912764515610697824

`lt[1, ∑{e}[2*n+1, #]]+1`
-/

namespace A053726.P16912764515610697824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A053726.P16912764515610697824

namespace A053726

/-- `lt[1, ∑{e}[2*n+1, #]]+1` -/
def P16912764515610697824.Spec : Prop :=
  ∀ n, (P16912764515610697824.a n : ℤ) = A053726 (n + 1)

end A053726

/-!
# A053727: Triangle T(n,k) = Sum_{d|gcd(n,k)} mu(d)*C(n/d,k/d) (n >= 1, 1 <= k <= n).

The programs for A053727, there is no canonical definition to state claims against.
-/

/-! ## A053727.P11315084560627546538

`A050186(comp[∑[n]])`
-/

namespace A053727.P11315084560627546538
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A053727.P11315084560627546538

/-! ## A053727.P18095391358710251392

`A135278(n)-A050870(A014132(n+1))`
-/

namespace A053727.P18095391358710251392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n - A050870 (A014132 (n + 1)).toNat

end

end A053727.P18095391358710251392

/-! ## A053727.P10298589885654442860

`A050186(A014132(n+1))*A051340(n)`
-/

namespace A053727.P10298589885654442860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (A014132 (n + 1)).toNat * A051340 n

end

end A053727.P10298589885654442860

/-! ## A053727.P900578314879421873

`gcd(A000038(n), A050186(A014132(n+1)))`
-/

namespace A053727.P900578314879421873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A050186 (A014132 (n + 1)).toNat)

end

end A053727.P900578314879421873

/-! ## A053727.P11142046980741446094

`or(A000007(n), A050186(A014132(n+1)))`
-/

namespace A053727.P11142046980741446094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A050186 (A014132 (n + 1)).toNat)

end

end A053727.P11142046980741446094

/-! ## A053727.P6811976195410978760

`A002024(n+1)*A051168(A014132(n+1))`
-/

namespace A053727.P6811976195410978760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A051168 (A014132 (n + 1)).toNat

end

end A053727.P6811976195410978760

/-! ## A053727.P14383117290539079915

`A050186(A014132(n+1)+A000007(n))+A000007(n)`
-/

namespace A053727.P14383117290539079915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (A014132 (n + 1) + A000007 n).toNat + A000007 n

end

end A053727.P14383117290539079915

/-! ## A053727.P17080197126752023887

`A002024(n+1)*A051168(A061579(n)+A002024(n+1))`
-/

namespace A053727.P17080197126752023887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A051168 (A061579 n + A002024 (n + 1)).toNat

end

end A053727.P17080197126752023887

/-! ## A053727.P16667918936391971897

`∑[char[∑[n]]]*A185700(n+1)`
-/

namespace A053727.P16667918936391971897
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A185700 (n + 1)

end

end A053727.P16667918936391971897

/-! ## A053727.P16119974927082861547

`A185700(n+1)*A002024(n+1)`
-/

namespace A053727.P16119974927082861547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185700 (n + 1) * A002024 (n + 1)

end

end A053727.P16119974927082861547

/-!
# A053728: For n=1,2,3,..., compute sum of aliquot divisors of n; if result is prime append this prime to sequence.

The programs for A053728, the canonical program `A053728.P11736248218383441495` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053728 has offset 1).

The definition of A053728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8801 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053728.P11736248218383441495

`p?[A000203(n+2)-(n+2)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053728

/-- `p?[A000203(n+2)-(n+2)]` -/
def P11736248218383441495.Spec : Prop :=
  ∀ n, P11736248218383441495.a n = A053728 (n + 1)

theorem P11736248218383441495.correct : P11736248218383441495.Spec := by
  intro n
  simp only [A053728, Nat.add_sub_cancel]

end A053728

/-! ## A053728.P13468836468535626396

`A000203(A037020(n+1))-A037020(n+1)`
-/

namespace A053728.P13468836468535626396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A037020 (n + 1)).toNat - A037020 (n + 1)

end

end A053728.P13468836468535626396

namespace A053728

/-- `A000203(A037020(n+1))-A037020(n+1)` -/
def P13468836468535626396.Spec : Prop :=
  ∀ n, P13468836468535626396.a n = A053728 (n + 1)

end A053728

/-! ## A053728.P4775866217599131417

`p?[A318508(n+1)+A318506(n+1)]`
-/

namespace A053728.P4775866217599131417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318508 (n + 1) + A318506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053728.P4775866217599131417

namespace A053728

/-- `p?[A318508(n+1)+A318506(n+1)]` -/
def P4775866217599131417.Spec : Prop :=
  ∀ n, P4775866217599131417.a n = A053728 (n + 1)

end A053728

/-! ## A053728.P16039274237467385466

`p?[1-A033879(n+1)+n]`
-/

namespace A053728.P16039274237467385466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A033879 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053728.P16039274237467385466

namespace A053728

/-- `p?[1-A033879(n+1)+n]` -/
def P16039274237467385466.Spec : Prop :=
  ∀ n, P16039274237467385466.a n = A053728 (n + 1)

end A053728

/-! ## A053728.P4204057134643874122

`p?[A326126(n+1)-A326128(n+1)]`
-/

namespace A053728.P4204057134643874122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326126 (n + 1) - A326128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053728.P4204057134643874122

namespace A053728

/-- `p?[A326126(n+1)-A326128(n+1)]` -/
def P4204057134643874122.Spec : Prop :=
  ∀ n, P4204057134643874122.a n = A053728 (n + 1)

end A053728

/-! ## A053728.P3305456498316087503

`p?[A162195(n+1)]`
-/

namespace A053728.P3305456498316087503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053728.P3305456498316087503

namespace A053728

/-- `p?[A162195(n+1)]` -/
def P3305456498316087503.Spec : Prop :=
  ∀ n, P3305456498316087503.a n = A053728 (n + 1)

end A053728

/-! ## A053728.P14114443253611586668

`filter[A162195(n+2), A010051(#)]`
-/

namespace A053728.P14114443253611586668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162195 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A053728.P14114443253611586668

namespace A053728

/-- `filter[A162195(n+2), A010051(#)]` -/
def P14114443253611586668.Spec : Prop :=
  ∀ n, P14114443253611586668.a n = A053728 (n + 1)

end A053728

/-! ## A053728.P7718417543805424512

`p?[A001065(n+1)]`
-/

namespace A053728.P7718417543805424512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053728.P7718417543805424512

namespace A053728

/-- `p?[A001065(n+1)]` -/
def P7718417543805424512.Spec : Prop :=
  ∀ n, P7718417543805424512.a n = A053728 (n + 1)

end A053728

/-! ## A053728.P15697587395746002368

`p?[A173455(n+1)]`
-/

namespace A053728.P15697587395746002368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053728.P15697587395746002368

namespace A053728

/-- `p?[A173455(n+1)]` -/
def P15697587395746002368.Spec : Prop :=
  ∀ n, P15697587395746002368.a n = A053728 (n + 1)

end A053728

/-! ## A053728.P4749946921988069802

`p?[A048050(n+1)+1]`
-/

namespace A053728.P4749946921988069802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053728.P4749946921988069802

namespace A053728

/-- `p?[A048050(n+1)+1]` -/
def P4749946921988069802.Spec : Prop :=
  ∀ n, P4749946921988069802.a n = A053728 (n + 1)

end A053728

/-! ## A053728.P18319870978082351865

`p?[A237588(n+1)+n]`
-/

namespace A053728.P18319870978082351865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053728.P18319870978082351865

namespace A053728

/-- `p?[A237588(n+1)+n]` -/
def P18319870978082351865.Spec : Prop :=
  ∀ n, P18319870978082351865.a n = A053728 (n + 1)

end A053728

/-! ## A053728.P10116465517569086514

`p?[A039653(n+1)-n]`
-/

namespace A053728.P10116465517569086514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053728.P10116465517569086514

namespace A053728

/-- `p?[A039653(n+1)-n]` -/
def P10116465517569086514.Spec : Prop :=
  ∀ n, P10116465517569086514.a n = A053728 (n + 1)

end A053728

/-! ## A053728.P18261056501697652932

`p?[n-A235796(n+1)]`
-/

namespace A053728.P18261056501697652932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A235796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053728.P18261056501697652932

namespace A053728

/-- `p?[n-A235796(n+1)]` -/
def P18261056501697652932.Spec : Prop :=
  ∀ n, P18261056501697652932.a n = A053728 (n + 1)

end A053728

/-! ## A053728.P3931742841924807378

`p?[A033880(n+1)+1+n]`
-/

namespace A053728.P3931742841924807378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053728.P3931742841924807378

namespace A053728

/-- `p?[A033880(n+1)+1+n]` -/
def P3931742841924807378.Spec : Prop :=
  ∀ n, P3931742841924807378.a n = A053728 (n + 1)

end A053728

/-! ## A053728.P1584176611642486133

`p?[A088580(n+1)-(n+2)]`
-/

namespace A053728.P1584176611642486133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053728.P1584176611642486133

namespace A053728

/-- `p?[A088580(n+1)-(n+2)]` -/
def P1584176611642486133.Spec : Prop :=
  ∀ n, P1584176611642486133.a n = A053728 (n + 1)

end A053728

/-! ## A053728.P12582100052104910633

`A001065(A037020(n+1))`
-/

namespace A053728.P12582100052104910633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A037020 (n + 1)).toNat

end

end A053728.P12582100052104910633

namespace A053728

/-- `A001065(A037020(n+1))` -/
def P12582100052104910633.Spec : Prop :=
  ∀ n, P12582100052104910633.a n = A053728 (n + 1)

end A053728

/-! ## A053728.P4378027245895667533

`filter[A173455(n+1), A010051(#)]`
-/

namespace A053728.P4378027245895667533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A053728.P4378027245895667533

namespace A053728

/-- `filter[A173455(n+1), A010051(#)]` -/
def P4378027245895667533.Spec : Prop :=
  ∀ n, P4378027245895667533.a n = A053728 (n + 1)

end A053728

/-! ## A053728.P3266119529875471190

`filter[A001065(n+2), A010051(#)]`
-/

namespace A053728.P3266119529875471190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A053728.P3266119529875471190

namespace A053728

/-- `filter[A001065(n+2), A010051(#)]` -/
def P3266119529875471190.Spec : Prop :=
  ∀ n, P3266119529875471190.a n = A053728 (n + 1)

end A053728

/-! ## A053728.P875111508687223939

`p?[A007503(n+1)-A062249(n+1)]`
-/

namespace A053728.P875111508687223939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - A062249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053728.P875111508687223939

namespace A053728

/-- `p?[A007503(n+1)-A062249(n+1)]` -/
def P875111508687223939.Spec : Prop :=
  ∀ n, P875111508687223939.a n = A053728 (n + 1)

end A053728

/-! ## A053728.P2812543182650550390

`p?[A079535(n+1)-A079536(n+1)]`
-/

namespace A053728.P2812543182650550390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079535 (n + 1) - A079536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053728.P2812543182650550390

namespace A053728

/-- `p?[A079535(n+1)-A079536(n+1)]` -/
def P2812543182650550390.Spec : Prop :=
  ∀ n, P2812543182650550390.a n = A053728 (n + 1)

end A053728

/-!
# A053729: Self-convolution of 1,4,27,256,3125,46656,... (cf. A000312).

The programs for A053729, there is no canonical definition to state claims against.
-/

/-! ## A053729.P4681313789041817853

`A100262(n+2)%A000312(n+2)`
-/

namespace A053729.P4681313789041817853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100262 (n + 2)) (A000312 (n + 2))

end

end A053729.P4681313789041817853

/-!
# A053730: a(n) = 2^(n-2)*(n^2 - n + 4).

The programs for A053730, the canonical program `A053730.P1963473934426172818` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053730 has offset 0).

The definition of A053730 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n-2)*(n²-n+4)` (program `A053730.P17825523743204834396`, by `A053730.P17825523743204834396.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053730.P17825523743204834396

`2^(n-2)*(n²-n+4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053730.P17825523743204834396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * ((n ^ 2 : ℤ) - (n : ℤ) + 4 : ℚ)

end

end A053730.P17825523743204834396

namespace A053730

/-- `2^(n-2)*(n²-n+4)` -/
def P17825523743204834396.Spec : Prop :=
  ∀ n, P17825523743204834396.a n = (A053730 n : ℚ)

theorem P17825523743204834396.correct : P17825523743204834396.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A053730, Nat.add_sub_cancel, A053730.P17825523743204834396.a, A053730.P1963473934426172818.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A053730, Nat.add_sub_cancel, A053730.P17825523743204834396.a, A053730.P1963473934426172818.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A053730

/-! ## A053730.P11611848599729874305

`ogf((1-4x+6x^2)/(1-6x+12x^2-8x^3))`
-/

namespace A053730.P11611848599729874305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 6] [1, -6, 12, -8] n

end

end A053730.P11611848599729874305

namespace A053730

/-- `ogf((1-4x+6x^2)/(1-6x+12x^2-8x^3))` -/
def P11611848599729874305.Spec : Prop :=
  ∀ n, P11611848599729874305.a n = A053730 n

end A053730

/-! ## A053730.P1963473934426172818

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A053730

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P1963473934426172818.Spec : Prop :=
  ∀ n, P1963473934426172818.a n = A053730 n

theorem P1963473934426172818.correct : P1963473934426172818.Spec := by
  intro n
  simp only [A053730]

end A053730

/-! ## A053730.P3414850459059439282

`∑{#}[n, C(n, #)*A077028(C(n+1, 2)+#)]`
-/

namespace A053730.P3414850459059439282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A077028 (Nat.choose (n + 1) 2 + k)

end

end A053730.P3414850459059439282

namespace A053730

/-- `∑{#}[n, C(n, #)*A077028(C(n+1, 2)+#)]` -/
def P3414850459059439282.Spec : Prop :=
  ∀ n, P3414850459059439282.a n = A053730 n

end A053730

/-! ## A053730.P3673040880058070303

`A053545(n)+1`
-/

namespace A053730.P3673040880058070303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053545 n + 1

end

end A053730.P3673040880058070303

namespace A053730

/-- `A053545(n)+1` -/
def P3673040880058070303.Spec : Prop :=
  ∀ n, P3673040880058070303.a n = A053730 n

end A053730

/-! ## A053730.P8018968812941273254

`A001815(n)+2^n`
-/

namespace A053730.P8018968812941273254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n + (2 ^ n : ℤ)

end

end A053730.P8018968812941273254

namespace A053730

/-- `A001815(n)+2^n` -/
def P8018968812941273254.Spec : Prop :=
  ∀ n, P8018968812941273254.a n = A053730 n

end A053730

/-! ## A053730.P7814754750643220040

`A007466(n)+a(n-1)` with `a(0)=1`
-/

namespace A053730.P7814754750643220040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007466 n + a (n - 1)

end

end A053730.P7814754750643220040

namespace A053730

/-- `A007466(n)+a(n-1)` -/
def P7814754750643220040.Spec : Prop :=
  ∀ n, P7814754750643220040.a n = A053730 n

end A053730

/-! ## A053730.P508533375092832944

`A097064(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A053730.P508533375092832944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A097064 n + 2 * a (n - 1)

end

end A053730.P508533375092832944

namespace A053730

/-- `A097064(n)+2*a(n-1)` -/
def P508533375092832944.Spec : Prop :=
  ∀ n, P508533375092832944.a n = A053730 n

end A053730

/-! ## A053730.P15831697124214802349

`floor((C(n, 2)+2)*A000079(n)/2)`
-/

namespace A053730.P15831697124214802349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 2 + 2 : ℚ) * ((A000079 n : ℚ) / 2)⌋

end

end A053730.P15831697124214802349

namespace A053730

/-- `floor((C(n, 2)+2)*A000079(n)/2)` -/
def P15831697124214802349.Spec : Prop :=
  ∀ n, P15831697124214802349.a n = A053730 n

end A053730

/-! ## A053730.P9664993156198780553

`A000079(n)+A001815(n)`
-/

namespace A053730.P9664993156198780553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + A001815 n

end

end A053730.P9664993156198780553

namespace A053730

/-- `A000079(n)+A001815(n)` -/
def P9664993156198780553.Spec : Prop :=
  ∀ n, P9664993156198780553.a n = A053730 n

end A053730

/-! ## A053730.P1005766195589340293

`A178987(n)+A001792(n)`
-/

namespace A053730.P1005766195589340293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178987 n + A001792 n

end

end A053730.P1005766195589340293

namespace A053730

/-- `A178987(n)+A001792(n)` -/
def P1005766195589340293.Spec : Prop :=
  ∀ n, P1005766195589340293.a n = A053730 n

end A053730

/-! ## A053730.P17440119297601779750

`A181407(n)+A053565(n)`
-/

namespace A053730.P17440119297601779750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181407 n + A053565 n

end

end A053730.P17440119297601779750

namespace A053730

/-- `A181407(n)+A053565(n)` -/
def P17440119297601779750.Spec : Prop :=
  ∀ n, P17440119297601779750.a n = A053730 n

end A053730

/-! ## A053730.P6234708654776735899

`A000225(n)+A001815(n)+1`
-/

namespace A053730.P6234708654776735899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A001815 n + 1)

end

end A053730.P6234708654776735899

namespace A053730

/-- `A000225(n)+A001815(n)+1` -/
def P6234708654776735899.Spec : Prop :=
  ∀ n, P6234708654776735899.a n = A053730 n

end A053730

/-! ## A053730.P7442501195856422015

`A011782(n+1)+A001815(n)`
-/

namespace A053730.P7442501195856422015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) + A001815 n

end

end A053730.P7442501195856422015

namespace A053730

/-- `A011782(n+1)+A001815(n)` -/
def P7442501195856422015.Spec : Prop :=
  ∀ n, P7442501195856422015.a n = A053730 n

end A053730

/-! ## A053730.P11010269741899761306

`A131577(n+1)+A001815(n)`
-/

namespace A053730.P11010269741899761306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 1) + A001815 n

end

end A053730.P11010269741899761306

namespace A053730

/-- `A131577(n+1)+A001815(n)` -/
def P11010269741899761306.Spec : Prop :=
  ∀ n, P11010269741899761306.a n = A053730 n

end A053730

/-! ## A053730.P11071249601228184464

`A000051(n)+A001815(n)-1`
-/

namespace A053730.P11071249601228184464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A001815 n - 1)

end

end A053730.P11071249601228184464

namespace A053730

/-- `A000051(n)+A001815(n)-1` -/
def P11071249601228184464.Spec : Prop :=
  ∀ n, P11071249601228184464.a n = A053730 n

end A053730

/-! ## A053730.P9194178255714469998

`A000918(n)+A001815(n)+2`
-/

namespace A053730.P9194178255714469998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n + (A001815 n + 2)

end

end A053730.P9194178255714469998

namespace A053730

/-- `A000918(n)+A001815(n)+2` -/
def P9194178255714469998.Spec : Prop :=
  ∀ n, P9194178255714469998.a n = A053730 n

end A053730

/-! ## A053730.P3932570722421729914

`A034008(n+2)+A001815(n)`
-/

namespace A053730.P3932570722421729914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (n + 2) + A001815 n

end

end A053730.P3932570722421729914

namespace A053730

/-- `A034008(n+2)+A001815(n)` -/
def P3932570722421729914.Spec : Prop :=
  ∀ n, P3932570722421729914.a n = A053730 n

end A053730

/-! ## A053730.P4336374911024990955

`A007466(n+1)-A036289(n)`
-/

namespace A053730.P4336374911024990955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007466 (n + 1) - A036289 n

end

end A053730.P4336374911024990955

namespace A053730

/-- `A007466(n+1)-A036289(n)` -/
def P4336374911024990955.Spec : Prop :=
  ∀ n, P4336374911024990955.a n = A053730 n

end A053730

/-! ## A053730.P7971003764753421826

`A104270(n+1)-A001787(n)`
-/

namespace A053730.P7971003764753421826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104270 (n + 1) - A001787 n

end

end A053730.P7971003764753421826

namespace A053730

/-- `A104270(n+1)-A001787(n)` -/
def P7971003764753421826.Spec : Prop :=
  ∀ n, P7971003764753421826.a n = A053730 n

end A053730

/-!
# A053731: a(n) = ceiling(binomial(n,8)/n).

The programs for A053731, the canonical program `A053731.P15324121886066364577` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053731 has offset 1).

The definition of A053731 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(C(n+1, 8)/(n+1))` (program `A053731.P15324121886066364577`, by `A053731.P15324121886066364577.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053731.P15324121886066364577

`ceil(C(n+1, 8)/(n+1))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A053731

/-- `ceil(C(n+1, 8)/(n+1))` -/
def P15324121886066364577.Spec : Prop :=
  ∀ n, P15324121886066364577.a n = A053731 (n + 1)

theorem P15324121886066364577.correct : P15324121886066364577.Spec := by
  intro n
  simp only [A053731, Nat.add_sub_cancel]

end A053731

/-! ## A053731.P5611654337428032014

`floor((C(n, 7)+7)/8)`
-/

namespace A053731.P5611654337428032014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 7 + 7 : ℚ) / 8⌋

end

end A053731.P5611654337428032014

namespace A053731

/-- `floor((C(n, 7)+7)/8)` -/
def P5611654337428032014.Spec : Prop :=
  ∀ n, P5611654337428032014.a n = A053731 (n + 1)

end A053731

/-! ## A053731.P5563283257376971042

`round(Δ[C(n, 8)+3*n]/8)`
-/

namespace A053731.P5563283257376971042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 8 + 3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 8)

end

end A053731.P5563283257376971042

namespace A053731

/-- `round(Δ[C(n, 8)+3*n]/8)` -/
def P5563283257376971042.Spec : Prop :=
  ∀ n, P5563283257376971042.a n = A053731 (n + 1)

end A053731

/-! ## A053731.P3991638127022325902

`ceil((A008860(n)-Δ[A008860(n)])/8)`
-/

namespace A053731.P3991638127022325902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008860 n - (f1 (n + 1) - f1 n) : ℚ) / 8⌉

end

end A053731.P3991638127022325902

namespace A053731

/-- `ceil((A008860(n)-Δ[A008860(n)])/8)` -/
def P3991638127022325902.Spec : Prop :=
  ∀ n, P3991638127022325902.a n = A053731 (n + 1)

end A053731

/-! ## A053731.P9964233038904234211

`ceil(Δ[Δ[A115205(n)/8]])`
-/

namespace A053731.P9964233038904234211
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115205 n : ℚ) / 8

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A053731.P9964233038904234211

namespace A053731

/-- `ceil(Δ[Δ[A115205(n)/8]])` -/
def P9964233038904234211.Spec : Prop :=
  ∀ n, P9964233038904234211.a n = A053731 (n + 1)

end A053731

/-! ## A053731.P1231433442653576148

`ceil((Δ[A035040(n)]-A035040(n))/8)`
-/

namespace A053731.P1231433442653576148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n - A035040 n : ℚ) / 8⌉

end

end A053731.P1231433442653576148

namespace A053731

/-- `ceil((Δ[A035040(n)]-A035040(n))/8)` -/
def P1231433442653576148.Spec : Prop :=
  ∀ n, P1231433442653576148.a n = A053731 (n + 1)

end A053731

/-!
# A053732: Number of ways to partition {1,...,n} into arithmetic progressions of length >= 1.

The programs for A053732, there is no canonical definition to state claims against.
-/

/-! ## A053732.P13052830155749502442

`A255072(A086611(n))`
-/

namespace A053732.P13052830155749502442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A086611 n).toNat

end

end A053732.P13052830155749502442

/-! ## A053732.P11994405364943391306

`A333382(A000994(n))+A000994(n+2)`
-/

namespace A053732.P11994405364943391306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A000994 n).toNat + A000994 (n + 2)

end

end A053732.P11994405364943391306

/-! ## A053732.P10920530561981967644

`or(A000994(A039723(n+2)), A000996(n))`
-/

namespace A053732.P10920530561981967644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000994 (A039723 (n + 2)).toNat) (A000996 n)

end

end A053732.P10920530561981967644

/-! ## A053732.P16062570105858391649

`or(A000034(A050258(n+1)), A000994(n+2))`
-/

namespace A053732.P16062570105858391649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000034 (A050258 (n + 1)).toNat) (A000994 (n + 2))

end

end A053732.P16062570105858391649

/-!
# A053733: a(n) = ceiling(binomial(n,9)/n).

The programs for A053733, the canonical program `A053733.P13188693350867170473` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053733 has offset 1).

The definition of A053733 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(C(n+1, 9)/(n+1))` (program `A053733.P13188693350867170473`, by `A053733.P13188693350867170473.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053733.P13188693350867170473

`ceil(C(n+1, 9)/(n+1))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A053733

/-- `ceil(C(n+1, 9)/(n+1))` -/
def P13188693350867170473.Spec : Prop :=
  ∀ n, P13188693350867170473.a n = A053733 (n + 1)

theorem P13188693350867170473.correct : P13188693350867170473.Spec := by
  intro n
  simp only [A053733, Nat.add_sub_cancel]

end A053733

/-! ## A053733.P1627429477713728742

`ceil(Δ[A115205(n)]/9)`
-/

namespace A053733.P1627429477713728742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / 9⌉

end

end A053733.P1627429477713728742

namespace A053733

/-- `ceil(Δ[A115205(n)]/9)` -/
def P1627429477713728742.Spec : Prop :=
  ∀ n, P1627429477713728742.a n = A053733 (n + 1)

end A053733

/-! ## A053733.P7655854911091239227

`ceil((A115205(n+1)-1)/(n+1))`
-/

namespace A053733.P7655854911091239227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A115205 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)⌉

end

end A053733.P7655854911091239227

namespace A053733

/-- `ceil((A115205(n+1)-1)/(n+1))` -/
def P7655854911091239227.Spec : Prop :=
  ∀ n, P7655854911091239227.a n = A053733 (n + 1)

theorem P7655854911091239227.correct : P7655854911091239227.Spec := by
  intro n
  simp only [A053733, Nat.add_sub_cancel, A053733.P7655854911091239227.a, A053733.P13188693350867170473.a, A115205, A115205.P18109322668786232172.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053733

/-! ## A053733.P7884167207382554474

`ceil((A008861(n)-A008860(n))/9)`
-/

namespace A053733.P7884167207382554474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008861 n - A008860 n : ℚ) / 9⌉

end

end A053733.P7884167207382554474

namespace A053733

/-- `ceil((A008861(n)-A008860(n))/9)` -/
def P7884167207382554474.Spec : Prop :=
  ∀ n, P7884167207382554474.a n = A053733 (n + 1)

end A053733

/-! ## A053733.P13795660376820904087

`ceil(A026729(A055999(n+6)-3)/9)`
-/

namespace A053733.P13795660376820904087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026729 (A055999 (n + 6) - 3).toNat : ℚ) / 9⌉

end

end A053733.P13795660376820904087

namespace A053733

/-- `ceil(A026729(A055999(n+6)-3)/9)` -/
def P13795660376820904087.Spec : Prop :=
  ∀ n, P13795660376820904087.a n = A053733 (n + 1)

end A053733

/-!
# A053734: A000016-A000048 (when they are lined up so that the two 16's match).

The programs for A053734, the canonical program `A053734.P15416020590875462354` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053734 has offset 1).

The definition of A053734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053734.P9184045212686151304

`A115118(n+1)%A000013(A008619(n))`
-/

namespace A053734.P9184045212686151304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115118 (n + 1)) (A000013 (A008619 n).toNat)

end

end A053734.P9184045212686151304

namespace A053734

/-- `A115118(n+1)%A000013(A008619(n))` -/
def P9184045212686151304.Spec : Prop :=
  ∀ n, P9184045212686151304.a n = A053734 (n + 1)

end A053734

/-! ## A053734.P15416020590875462354

`A000016(n+1)-A000048(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A053734

/-- `A000016(n+1)-A000048(n+1)` -/
def P15416020590875462354.Spec : Prop :=
  ∀ n, P15416020590875462354.a n = A053734 (n + 1)

theorem P15416020590875462354.correct : P15416020590875462354.Spec := by
  intro n
  simp only [A053734, Nat.add_sub_cancel]

end A053734

/-! ## A053734.P16878416821483620726

`∑{d}[n+1, A043545(#-1)*A051841((n+1)/#)]`
-/

namespace A053734.P16878416821483620726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A043545 (d - 1) * A051841 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053734.P16878416821483620726

namespace A053734

/-- `∑{d}[n+1, A043545(#-1)*A051841((n+1)/#)]` -/
def P16878416821483620726.Spec : Prop :=
  ∀ n, P16878416821483620726.a n = A053734 (n + 1)

end A053734

/-! ## A053734.P18025855171297585931

`A000016(n+1)-(A042982(n+1)+A042981(n+1))`
-/

namespace A053734.P18025855171297585931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 (n + 1) - (A042982 (n + 1) + A042981 (n + 1))

end

end A053734.P18025855171297585931

namespace A053734

/-- `A000016(n+1)-(A042982(n+1)+A042981(n+1))` -/
def P18025855171297585931.Spec : Prop :=
  ∀ n, P18025855171297585931.a n = A053734 (n + 1)

end A053734

/-! ## A053734.P14431379319573816297

`A000016(n+1)-(A045686(n+1)+A045683(n+1))`
-/

namespace A053734.P14431379319573816297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 (n + 1) - (A045686 (n + 1) + A045683 (n + 1))

end

end A053734.P14431379319573816297

namespace A053734

/-- `A000016(n+1)-(A045686(n+1)+A045683(n+1))` -/
def P14431379319573816297.Spec : Prop :=
  ∀ n, P14431379319573816297.a n = A053734 (n + 1)

theorem P14431379319573816297.correct : P14431379319573816297.Spec := by
  intro n
  simp only [A053734, Nat.add_sub_cancel, A053734.P14431379319573816297.a, A053734.P15416020590875462354.a, A000016, A000016.P8500875009608658723.a, A000048, A000048.P10866876033942874226.a, A045683, A045683.P14787099194818843150.a, A045686, A045686.P11325912773679884789.a, A011782, A011782.P7461078519819856082.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A056476, A056476.P12632563156965169968.a, A233583, A233583.P15026547221992958741.a, A327477, A327477.P17478202587199191785.f1, A327477.P17478202587199191785.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A056295, A056295.P9438402425658344231.a, A056481, A056481.P6036497099892352670.a, A327471, A327471.P11969612927539878657.a, A000051, A000051.P14067217022188782580.a, A008965, A008965.P16924218572130557635.a, A028310, A028310.P18130301328277559831.a, A056463, A056463.P6786534809649954337.f1, A056463.P6786534809649954337.a, A133670, A133670.P186027561368392954.f1, A133670.P186027561368392954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053734

/-! ## A053734.P17664993322940959321

`A000016(n+1)+A115118(n+1)-A000013(n+1)`
-/

namespace A053734.P17664993322940959321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 (n + 1) + (A115118 (n + 1) - A000013 (n + 1))

end

end A053734.P17664993322940959321

namespace A053734

/-- `A000016(n+1)+A115118(n+1)-A000013(n+1)` -/
def P17664993322940959321.Spec : Prop :=
  ∀ n, P17664993322940959321.a n = A053734 (n + 1)

theorem P17664993322940959321.correct : P17664993322940959321.Spec := by
  intro n
  simp only [A053734, Nat.add_sub_cancel, A053734.P17664993322940959321.a, A053734.P15416020590875462354.a, A000013, A000013.P13330308426199228881.f1, A000013.P13330308426199228881.a, A000016, A000016.P8500875009608658723.a, A000048, A000048.P10866876033942874226.a, A115118, A115118.P6546194884082821130.a, A011782, A011782.P7461078519819856082.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A233583, A233583.P15026547221992958741.a, A327477, A327477.P17478202587199191785.f1, A327477.P17478202587199191785.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A056295, A056295.P9438402425658344231.a, A327471, A327471.P11969612927539878657.a, A000051, A000051.P14067217022188782580.a, A008965, A008965.P16924218572130557635.a, A133670, A133670.P186027561368392954.f1, A133670.P186027561368392954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053734

/-! ## A053734.P863295666394614159

`A133670(n+1)-(A133670(n)+A000048(n+1))`
-/

namespace A053734.P863295666394614159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133670 (n + 1) - (A133670 n + A000048 (n + 1))

end

end A053734.P863295666394614159

namespace A053734

/-- `A133670(n+1)-(A133670(n)+A000048(n+1))` -/
def P863295666394614159.Spec : Prop :=
  ∀ n, P863295666394614159.a n = A053734 (n + 1)

end A053734

/-! ## A053734.P8604333365336649297

`A000016(n+1)+A173278(n)-A173278(n+1)`
-/

namespace A053734.P8604333365336649297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 (n + 1) + (A173278 n - A173278 (n + 1))

end

end A053734.P8604333365336649297

namespace A053734

/-- `A000016(n+1)+A173278(n)-A173278(n+1)` -/
def P8604333365336649297.Spec : Prop :=
  ∀ n, P8604333365336649297.a n = A053734 (n + 1)

end A053734

/-! ## A053734.P17826628512186358121

`A000031(n+1)-(A000048(n+1)+A000013(n+1))`
-/

namespace A053734.P17826628512186358121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (n + 1) - (A000048 (n + 1) + A000013 (n + 1))

end

end A053734.P17826628512186358121

namespace A053734

/-- `A000031(n+1)-(A000048(n+1)+A000013(n+1))` -/
def P17826628512186358121.Spec : Prop :=
  ∀ n, P17826628512186358121.a n = A053734 (n + 1)

end A053734

/-! ## A053734.P13878512142193522807

`A063776(n+1)%(A000048(n+1)+A000016(n+1))`
-/

namespace A053734.P13878512142193522807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063776 (n + 1)) (A000048 (n + 1) + A000016 (n + 1))

end

end A053734.P13878512142193522807

namespace A053734

/-- `A063776(n+1)%(A000048(n+1)+A000016(n+1))` -/
def P13878512142193522807.Spec : Prop :=
  ∀ n, P13878512142193522807.a n = A053734 (n + 1)

end A053734

/-! ## A053734.P14381423351841648452

`A053633(∑[n])-A000048(n+1)`
-/

namespace A053734.P14381423351841648452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (∑ j ∈ Finset.range (n + 1), f1 j) - A000048 (n + 1)

end

end A053734.P14381423351841648452

namespace A053734

/-- `A053633(∑[n])-A000048(n+1)` -/
def P14381423351841648452.Spec : Prop :=
  ∀ n, P14381423351841648452.a n = A053734 (n + 1)

end A053734

/-! ## A053734.P8579924404532444800

`A000016(n+1)-A053633(∑[n]+1)`
-/

namespace A053734.P8579924404532444800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 (n + 1) - A053633 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A053734.P8579924404532444800

namespace A053734

/-- `A000016(n+1)-A053633(∑[n]+1)` -/
def P8579924404532444800.Spec : Prop :=
  ∀ n, P8579924404532444800.a n = A053734 (n + 1)

end A053734

/-! ## A053734.P13355492096775032714

`A053633(∑[n])-A053633(A000124(n))`
-/

namespace A053734.P13355492096775032714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (∑ j ∈ Finset.range (n + 1), f1 j) - A053633 (A000124 n).toNat

end

end A053734.P13355492096775032714

namespace A053734

/-- `A053633(∑[n])-A053633(A000124(n))` -/
def P13355492096775032714.Spec : Prop :=
  ∀ n, P13355492096775032714.a n = A053734 (n + 1)

end A053734

/-!
# A053735: Sum of digits of (n written in base 3).

The programs for A053735, the canonical program `A053735.P3640341592284089632` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053735 has offset 0).

The definition of A053735 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053735.P3640341592284089632

`n-2*A054861(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053735

/-- `n-2*A054861(n)` -/
def P3640341592284089632.Spec : Prop :=
  ∀ n, P3640341592284089632.a n = A053735 n

theorem P3640341592284089632.correct : P3640341592284089632.Spec := by
  intro n
  simp only [A053735]

end A053735

/-! ## A053735.P14788899083910638578

`A056239(A006047(n))`
-/

namespace A053735.P14788899083910638578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A006047 n).toNat

end

end A053735.P14788899083910638578

namespace A053735

/-- `A056239(A006047(n))` -/
def P14788899083910638578.Spec : Prop :=
  ∀ n, P14788899083910638578.a n = A053735 n

end A053735

/-! ## A053735.P11080113325773050765

`A062756(n)+2*A081603(n)`
-/

namespace A053735.P11080113325773050765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n + 2 * A081603 n

end

end A053735.P11080113325773050765

namespace A053735

/-- `A062756(n)+2*A081603(n)` -/
def P11080113325773050765.Spec : Prop :=
  ∀ n, P11080113325773050765.a n = A053735 n

end A053735

/-! ## A053735.P11374687226753814985

`A000120(A289813(n))+2*A000120(A289814(n))`
-/

namespace A053735.P11374687226753814985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A289813 n).toNat + 2 * A000120 (A289814 n).toNat

end

end A053735.P11374687226753814985

namespace A053735

/-- `A000120(A289813(n))+2*A000120(A289814(n))` -/
def P11374687226753814985.Spec : Prop :=
  ∀ n, P11374687226753814985.a n = A053735 n

end A053735

/-! ## A053735.P4195579680188506636

`a(floor(n/3))+n%3` with `a(0)=0`
-/

namespace A053735.P4195579680188506636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 3⌋.toNat + n % 3

end

end A053735.P4195579680188506636

namespace A053735

/-- `a(floor(n/3))+n%3` -/
def P4195579680188506636.Spec : Prop :=
  ∀ n, (P4195579680188506636.a n : ℤ) = A053735 n

end A053735

/-! ## A053735.P4450637968054017623

`a(n-1)+1-val(n², 3)` with `a(0)=0, a(1)=1`
-/

namespace A053735.P4450637968054017623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (1 - (SequenceMachineLib.valuation (n ^ 2) 3 : ℤ))

end

end A053735.P4450637968054017623

namespace A053735

/-- `a(n-1)+1-val(n², 3)` -/
def P4450637968054017623.Spec : Prop :=
  ∀ n, P4450637968054017623.a n = A053735 n

end A053735

/-! ## A053735.P14685139051654565071

`a(floor(n/3))+n-3*floor(n/3)` with `a(0)=0`
-/

namespace A053735.P14685139051654565071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 3⌋.toNat + ((n : ℤ) - 3 * ⌊(n : ℚ) / 3⌋)

end

end A053735.P14685139051654565071

namespace A053735

/-- `a(floor(n/3))+n-3*floor(n/3)` -/
def P14685139051654565071.Spec : Prop :=
  ∀ n, P14685139051654565071.a n = A053735 n

end A053735

/-! ## A053735.P12315972923493405100

`A365722(3*n)`
-/

namespace A053735.P12315972923493405100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365722 (3 * n)

end

end A053735.P12315972923493405100

namespace A053735

/-- `A365722(3*n)` -/
def P12315972923493405100.Spec : Prop :=
  ∀ n, P12315972923493405100.a n = A053735 n

end A053735

/-! ## A053735.P12777301775817159687

`A230641(n)-n`
-/

namespace A053735.P12777301775817159687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230641 n - (n : ℤ)

end

end A053735.P12777301775817159687

namespace A053735

/-- `A230641(n)-n` -/
def P12777301775817159687.Spec : Prop :=
  ∀ n, P12777301775817159687.a n = A053735 n

theorem P12777301775817159687.correct : P12777301775817159687.Spec := by
  intro n
  simp only [A053735, Nat.add_sub_cancel, A053735.P12777301775817159687.a, A053735.P3640341592284089632.a, A054861, A054861.P6137810495506521191.a, A230641, A230641.P12572480448472300178.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053735

/-! ## A053735.P12702126012709795753

`n-A344853(n)`
-/

namespace A053735.P12702126012709795753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A344853 n

end

end A053735.P12702126012709795753

namespace A053735

/-- `n-A344853(n)` -/
def P12702126012709795753.Spec : Prop :=
  ∀ n, P12702126012709795753.a n = A053735 n

end A053735

/-! ## A053735.P3959336503229700080

`∑{digits}[A007089(n), #]`
-/

namespace A053735.P3959336503229700080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A053735.P3959336503229700080

namespace A053735

/-- `∑{digits}[A007089(n), #]` -/
def P3959336503229700080.Spec : Prop :=
  ∀ n, (P3959336503229700080.a n : ℤ) = A053735 n

end A053735

/-! ## A053735.P4510245223910995436

`∑{digits}[A305877(n), #]`
-/

namespace A053735.P4510245223910995436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A053735.P4510245223910995436

namespace A053735

/-- `∑{digits}[A305877(n), #]` -/
def P4510245223910995436.Spec : Prop :=
  ∀ n, (P4510245223910995436.a n : ℤ) = A053735 n

end A053735

/-! ## A053735.P17009572326873553509

`A173523(n+1)-1`
-/

namespace A053735.P17009572326873553509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173523 (n + 1) - 1

end

end A053735.P17009572326873553509

namespace A053735

/-- `A173523(n+1)-1` -/
def P17009572326873553509.Spec : Prop :=
  ∀ n, P17009572326873553509.a n = A053735 n

theorem P17009572326873553509.correct : P17009572326873553509.Spec := by
  intro n
  simp only [A053735, Nat.add_sub_cancel, A053735.P17009572326873553509.a, A053735.P3640341592284089632.a, A054861, A054861.P6137810495506521191.a, A173523, A173523.P2383759421144788857.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053735

/-! ## A053735.P7462973124241538559

`2*A089792(n)-n`
-/

namespace A053735.P7462973124241538559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089792 n - (n : ℤ)

end

end A053735.P7462973124241538559

namespace A053735

/-- `2*A089792(n)-n` -/
def P7462973124241538559.Spec : Prop :=
  ∀ n, P7462973124241538559.a n = A053735 n

theorem P7462973124241538559.correct : P7462973124241538559.Spec := by
  intro n
  simp only [A053735, Nat.add_sub_cancel, A053735.P7462973124241538559.a, A053735.P3640341592284089632.a, A054861, A054861.P6137810495506521191.a, A089792, A089792.P9464686631977204043.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053735

/-! ## A053735.P9245504100650033507

`3*n-A346502(n)`
-/

namespace A053735.P9245504100650033507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A346502 n

end

end A053735.P9245504100650033507

namespace A053735

/-- `3*n-A346502(n)` -/
def P9245504100650033507.Spec : Prop :=
  ∀ n, P9245504100650033507.a n = A053735 n

end A053735

/-! ## A053735.P12694947688643864755

`A003313(A006047(n))`
-/

namespace A053735.P12694947688643864755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (A006047 n).toNat

end

end A053735.P12694947688643864755

namespace A053735

/-- `A003313(A006047(n))` -/
def P12694947688643864755.Spec : Prop :=
  ∀ n, P12694947688643864755.a n = A053735 n

end A053735

/-! ## A053735.P828853163739582351

`A056239(A331279(n))`
-/

namespace A053735.P828853163739582351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A331279 n).toNat

end

end A053735.P828853163739582351

namespace A053735

/-- `A056239(A331279(n))` -/
def P828853163739582351.Spec : Prop :=
  ∀ n, P828853163739582351.a n = A053735 n

end A053735

/-! ## A053735.P7006721030427160352

`A023443(A173523(n+1))`
-/

namespace A053735.P7006721030427160352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A173523 (n + 1)).toNat

end

end A053735.P7006721030427160352

namespace A053735

/-- `A023443(A173523(n+1))` -/
def P7006721030427160352.Spec : Prop :=
  ∀ n, P7006721030427160352.a n = A053735 n

end A053735

/-! ## A053735.P4633361072027625395

`A089643(n)+A000989(n)`
-/

namespace A053735.P4633361072027625395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 n + A000989 n

end

end A053735.P4633361072027625395

namespace A053735

/-- `A089643(n)+A000989(n)` -/
def P4633361072027625395.Spec : Prop :=
  ∀ n, P4633361072027625395.a n = A053735 n

end A053735

/-! ## A053735.P3908673841740950882

`A180017(n)+A000120(n)`
-/

namespace A053735.P3908673841740950882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 n + A000120 n

end

end A053735.P3908673841740950882

namespace A053735

/-- `A180017(n)+A000120(n)` -/
def P3908673841740950882.Spec : Prop :=
  ∀ n, P3908673841740950882.a n = A053735 n

theorem P3908673841740950882.correct : P3908673841740950882.Spec := by
  intro n
  simp only [A053735, Nat.add_sub_cancel, A053735.P3908673841740950882.a, A053735.P3640341592284089632.a, A000120, A000120.P2816527436160941581.a, A054861, A054861.P6137810495506521191.a, A180017, A180017.P1955405444060819929.a, A005187, A005187.P3874015513960485494.a, A011371, A011371.P12398255777927387864.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053735

/-!
# A053737: Sum of digits of (n written in base 4).

The programs for A053737, the canonical program `A053737.P2884229603739038868` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053737 has offset 0).

The definition of A053737 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053737.P2884229603739038868

`n-3*A054893(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053737

/-- `n-3*A054893(n)` -/
def P2884229603739038868.Spec : Prop :=
  ∀ n, P2884229603739038868.a n = A053737 n

theorem P2884229603739038868.correct : P2884229603739038868.Spec := by
  intro n
  simp only [A053737]

end A053737

/-! ## A053737.P5888412850556247738

`A007953(A007090(n))`
-/

namespace A053737.P5888412850556247738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007090 n).toNat

end

end A053737.P5888412850556247738

namespace A053737

/-- `A007953(A007090(n))` -/
def P5888412850556247738.Spec : Prop :=
  ∀ n, P5888412850556247738.a n = A053737 n

end A053737

/-! ## A053737.P3975265415810915683

`a(floor(n/4))+n%4` with `a(0)=0`
-/

namespace A053737.P3975265415810915683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 4⌋.toNat + n % 4

end

end A053737.P3975265415810915683

namespace A053737

/-- `a(floor(n/4))+n%4` -/
def P3975265415810915683.Spec : Prop :=
  ∀ n, (P3975265415810915683.a n : ℤ) = A053737 n

end A053737

/-! ## A053737.P9465228058720122029

`a(floor(n/4))+and(3, n)` with `a(0)=0`
-/

namespace A053737.P9465228058720122029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 4⌋.toNat + Nat.land 3 n

end

end A053737.P9465228058720122029

namespace A053737

/-- `a(floor(n/4))+and(3, n)` -/
def P9465228058720122029.Spec : Prop :=
  ∀ n, (P9465228058720122029.a n : ℤ) = A053737 n

end A053737

/-! ## A053737.P526263755562297958

`A230631(n)-n`
-/

namespace A053737.P526263755562297958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230631 n - (n : ℤ)

end

end A053737.P526263755562297958

namespace A053737

/-- `A230631(n)-n` -/
def P526263755562297958.Spec : Prop :=
  ∀ n, P526263755562297958.a n = A053737 n

theorem P526263755562297958.correct : P526263755562297958.Spec := by
  intro n
  simp only [A053737, Nat.add_sub_cancel, A053737.P526263755562297958.a, A053737.P2884229603739038868.a, A054893, A054893.P4971289715501713883.a, A230631, A230631.P4210711857821606968.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053737

/-! ## A053737.P6802968650583701751

`∑{digits}[A046030(n+1), sqrt(#)]`
-/

namespace A053737.P6802968650583701751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Real.sqrt (x : ℝ)).sum

end

end A053737.P6802968650583701751

namespace A053737

/-- `∑{digits}[A046030(n+1), sqrt(#)]` -/
def P6802968650583701751.Spec : Prop :=
  ∀ n, P6802968650583701751.a n = (A053737 n : ℝ)

end A053737

/-! ## A053737.P17918790813521573274

`A139352(n)+A000120(n)`
-/

namespace A053737.P17918790813521573274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n + A000120 n

end

end A053737.P17918790813521573274

namespace A053737

/-- `A139352(n)+A000120(n)` -/
def P17918790813521573274.Spec : Prop :=
  ∀ n, P17918790813521573274.a n = A053737 n

theorem P17918790813521573274.correct : P17918790813521573274.Spec := by
  intro n
  simp only [A053737, Nat.add_sub_cancel, A053737.P17918790813521573274.a, A053737.P2884229603739038868.a, A000120, A000120.P2816527436160941581.a, A054893, A054893.P4971289715501713883.a, A139352, A139352.P2034447244462371406.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053737

/-! ## A053737.P12224673713648319553

`A139352(n)+∑[A088705(n)]`
-/

namespace A053737.P12224673713648319553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053737.P12224673713648319553

namespace A053737

/-- `A139352(n)+∑[A088705(n)]` -/
def P12224673713648319553.Spec : Prop :=
  ∀ n, P12224673713648319553.a n = A053737 n

end A053737

/-! ## A053737.P10809823031289567362

`A139351(n)+2*A139352(n)`
-/

namespace A053737.P10809823031289567362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n + 2 * A139352 n

end

end A053737.P10809823031289567362

namespace A053737

/-- `A139351(n)+2*A139352(n)` -/
def P10809823031289567362.Spec : Prop :=
  ∀ n, P10809823031289567362.a n = A053737 n

end A053737

/-! ## A053737.P17668714249605115507

`2*A000120(n)-A139351(n)`
-/

namespace A053737.P17668714249605115507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000120 n - A139351 n

end

end A053737.P17668714249605115507

namespace A053737

/-- `2*A000120(n)-A139351(n)` -/
def P17668714249605115507.Spec : Prop :=
  ∀ n, P17668714249605115507.a n = A053737 n

end A053737

/-! ## A053737.P7564942434681141791

`A092391(n)+A139352(n)-n`
-/

namespace A053737.P7564942434681141791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n + (A139352 n - (n : ℤ))

end

end A053737.P7564942434681141791

namespace A053737

/-- `A092391(n)+A139352(n)-n` -/
def P7564942434681141791.Spec : Prop :=
  ∀ n, P7564942434681141791.a n = A053737 n

theorem P7564942434681141791.correct : P7564942434681141791.Spec := by
  intro n
  simp only [A053737, Nat.add_sub_cancel, A053737.P7564942434681141791.a, A053737.P2884229603739038868.a, A054893, A054893.P4971289715501713883.a, A092391, A092391.P1831081500129819331.a, A139352, A139352.P2034447244462371406.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053737

/-! ## A053737.P516419226344049971

`A000120(n)+A000120(A059906(n))`
-/

namespace A053737.P516419226344049971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + A000120 (A059906 n).toNat

end

end A053737.P516419226344049971

namespace A053737

/-- `A000120(n)+A000120(A059906(n))` -/
def P516419226344049971.Spec : Prop :=
  ∀ n, P516419226344049971.a n = A053737 n

end A053737

/-! ## A053737.P10482921286535210141

`A000120(n)+A000120(A063695(n))`
-/

namespace A053737.P10482921286535210141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + A000120 (A063695 n).toNat

end

end A053737.P10482921286535210141

namespace A053737

/-- `A000120(n)+A000120(A063695(n))` -/
def P10482921286535210141.Spec : Prop :=
  ∀ n, P10482921286535210141.a n = A053737 n

end A053737

/-! ## A053737.P1596460613509101849

`A139352(n)+A001222(A001316(n))`
-/

namespace A053737.P1596460613509101849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n + A001222 (A001316 n).toNat

end

end A053737.P1596460613509101849

namespace A053737

/-- `A139352(n)+A001222(A001316(n))` -/
def P1596460613509101849.Spec : Prop :=
  ∀ n, P1596460613509101849.a n = A053737 n

end A053737

/-! ## A053737.P11038439533834028077

`A000120(n)+A001222(A338854(n))`
-/

namespace A053737.P11038439533834028077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + A001222 (A338854 n).toNat

end

end A053737.P11038439533834028077

namespace A053737

/-- `A000120(n)+A001222(A338854(n))` -/
def P11038439533834028077.Spec : Prop :=
  ∀ n, P11038439533834028077.a n = A053737 n

end A053737

/-! ## A053737.P9550552309730942011

`2*A000120(n)-A000120(A059905(n))`
-/

namespace A053737.P9550552309730942011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000120 n - A000120 (A059905 n).toNat

end

end A053737.P9550552309730942011

namespace A053737

/-- `2*A000120(n)-A000120(A059905(n))` -/
def P9550552309730942011.Spec : Prop :=
  ∀ n, P9550552309730942011.a n = A053737 n

end A053737

/-! ## A053737.P10071864725217422189

`2*A000120(n)-A000120(A063694(n))`
-/

namespace A053737.P10071864725217422189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000120 n - A000120 (A063694 n).toNat

end

end A053737.P10071864725217422189

namespace A053737

/-- `2*A000120(n)-A000120(A063694(n))` -/
def P10071864725217422189.Spec : Prop :=
  ∀ n, P10071864725217422189.a n = A053737 n

end A053737

/-! ## A053737.P13773694021471274150

`A139352(n)+A139355(n)+A139354(n)`
-/

namespace A053737.P13773694021471274150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n + (A139355 n + A139354 n)

end

end A053737.P13773694021471274150

namespace A053737

/-- `A139352(n)+A139355(n)+A139354(n)` -/
def P13773694021471274150.Spec : Prop :=
  ∀ n, P13773694021471274150.a n = A053737 n

end A053737

/-! ## A053737.P1020278022776893063

`A016777(n)+n-A016777(A087069(n))`
-/

namespace A053737.P1020278022776893063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + ((n : ℤ) - A016777 (A087069 n).toNat)

end

end A053737.P1020278022776893063

namespace A053737

/-- `A016777(n)+n-A016777(A087069(n))` -/
def P1020278022776893063.Spec : Prop :=
  ∀ n, P1020278022776893063.a n = A053737 n

end A053737

/-! ## A053737.P6888067108757340216

`A139351(2*n)+A000120(n)`
-/

namespace A053737.P6888067108757340216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (2 * n) + A000120 n

end

end A053737.P6888067108757340216

namespace A053737

/-- `A139351(2*n)+A000120(n)` -/
def P6888067108757340216.Spec : Prop :=
  ∀ n, P6888067108757340216.a n = A053737 n

end A053737

/-!
# A053738: If k is in sequence then 2*k and 2*k+1 are not (and 1 is in the sequence); numbers with an odd number of digits in binary.

The programs for A053738, the canonical program `A053738.P11111590962444765032` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053738 has offset 1).

The definition of A053738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053738.P11969439864591422274

`eq[0, and(1, ceil(log2(acot(n))))]`
-/

namespace A053738.P11969439864591422274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈Real.logb 2 (SequenceMachineLib.acot (n : ℝ))⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053738.P11969439864591422274

namespace A053738

/-- `eq[0, and(1, ceil(log2(acot(n))))]` -/
def P11969439864591422274.Spec : Prop :=
  ∀ n, (P11969439864591422274.a n : ℤ) = A053738 (n + 1)

end A053738

/-! ## A053738.P16348610470118571669

`eq[1, ceil(log2(n+1))%2]`
-/

namespace A053738.P16348610470118571669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.logb 2 (n + 1 : ℝ)⌉ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053738.P16348610470118571669

namespace A053738

/-- `eq[1, ceil(log2(n+1))%2]` -/
def P16348610470118571669.Spec : Prop :=
  ∀ n, (P16348610470118571669.a n : ℤ) = A053738 (n + 1)

end A053738

/-! ## A053738.P15160334385879248370

`eq[1, and(1, ceil(log2(n+1)))]`
-/

namespace A053738.P15160334385879248370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈Real.logb 2 (n + 1 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053738.P15160334385879248370

namespace A053738

/-- `eq[1, and(1, ceil(log2(n+1)))]` -/
def P15160334385879248370.Spec : Prop :=
  ∀ n, (P15160334385879248370.a n : ℤ) = A053738 (n + 1)

end A053738

/-! ## A053738.P11111590962444765032

`lt[0, -a(floor(n/2))]` with `a(0)=-5`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A053738

/-- `lt[0, -a(floor(n/2))]` -/
def P11111590962444765032.Spec : Prop :=
  ∀ n, (P11111590962444765032.a n : ℤ) = A053738 (n + 1)

theorem P11111590962444765032.correct : P11111590962444765032.Spec := by
  intro n
  simp only [A053738, Nat.add_sub_cancel]

end A053738

/-! ## A053738.P4092053610205063189

`eq[0, 1-a(floor(n/2))]` with `a(0)=1`
-/

namespace A053738.P4092053610205063189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053738.P4092053610205063189

namespace A053738

/-- `eq[0, 1-a(floor(n/2))]` -/
def P4092053610205063189.Spec : Prop :=
  ∀ n, (P4092053610205063189.a n : ℤ) = A053738 (n + 1)

end A053738

/-! ## A053738.P14539189332943202048

`eq[2, 2/a(floor(n/2))]` with `a(0)=1`
-/

namespace A053738.P14539189332943202048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  2 / f2 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A053738.P14539189332943202048

namespace A053738

/-- `eq[2, 2/a(floor(n/2))]` -/
def P14539189332943202048.Spec : Prop :=
  ∀ n, (P14539189332943202048.a n : ℤ) = A053738 (n + 1)

end A053738

/-! ## A053738.P6719607504423019908

`lt[0, 1-2*a(floor(n/2))]` with `a(0)=0`
-/

namespace A053738.P6719607504423019908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  1 - 2 * f2 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A053738.P6719607504423019908

namespace A053738

/-- `lt[0, 1-2*a(floor(n/2))]` -/
def P6719607504423019908.Spec : Prop :=
  ∀ n, (P6719607504423019908.a n : ℤ) = A053738 (n + 1)

end A053738

/-! ## A053738.P10193614253849744028

`floor(A059011(n+1)/2)`
-/

namespace A053738.P10193614253849744028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059011 (n + 1) : ℚ) / 2⌋

end

end A053738.P10193614253849744028

namespace A053738

/-- `floor(A059011(n+1)/2)` -/
def P10193614253849744028.Spec : Prop :=
  ∀ n, P10193614253849744028.a n = A053738 (n + 1)

end A053738

/-! ## A053738.P9568809306299935642

`floor(A059012(n+1)/2)`
-/

namespace A053738.P9568809306299935642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059012 (n + 1) : ℚ) / 2⌋

end

end A053738.P9568809306299935642

namespace A053738

/-- `floor(A059012(n+1)/2)` -/
def P9568809306299935642.Spec : Prop :=
  ∀ n, P9568809306299935642.a n = A053738 (n + 1)

end A053738

/-! ## A053738.P13328081918243744035

`lt[A292371(2*n)², n]`
-/

namespace A053738.P13328081918243744035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (2 * n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A053738.P13328081918243744035

namespace A053738

/-- `lt[A292371(2*n)², n]` -/
def P13328081918243744035.Spec : Prop :=
  ∀ n, (P13328081918243744035.a n : ℤ) = A053738 (n + 1)

end A053738

/-! ## A053738.P7975423863454678713

`lt[n/2, A292371(n)²]`
-/

namespace A053738.P7975423863454678713
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A053738.P7975423863454678713

namespace A053738

/-- `lt[n/2, A292371(n)²]` -/
def P7975423863454678713.Spec : Prop :=
  ∀ n, (P7975423863454678713.a n : ℤ) = A053738 (n + 1)

end A053738

/-! ## A053738.P11295842911238452388

`eq[1, A030300(n+1)]+1`
-/

namespace A053738.P11295842911238452388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030300 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053738.P11295842911238452388

namespace A053738

/-- `eq[1, A030300(n+1)]+1` -/
def P11295842911238452388.Spec : Prop :=
  ∀ n, (P11295842911238452388.a n : ℤ) = A053738 (n + 1)

end A053738

/-! ## A053738.P14096037477951953764

`eq[1, A030301(2*n+1)]`
-/

namespace A053738.P14096037477951953764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030301 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053738.P14096037477951953764

namespace A053738

/-- `eq[1, A030301(2*n+1)]` -/
def P14096037477951953764.Spec : Prop :=
  ∀ n, (P14096037477951953764.a n : ℤ) = A053738 (n + 1)

end A053738

/-! ## A053738.P13548348825946614398

`lt[A030300(2*n+1), 1]`
-/

namespace A053738.P13548348825946614398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030300 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A053738.P13548348825946614398

namespace A053738

/-- `lt[A030300(2*n+1), 1]` -/
def P13548348825946614398.Spec : Prop :=
  ∀ n, (P13548348825946614398.a n : ℤ) = A053738 (n + 1)

end A053738

/-! ## A053738.P3771977473490908412

`lt[2, A176895(ceil(log2(n+1)))]`
-/

namespace A053738.P3771977473490908412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 ⌈Real.logb 2 (n + 1 : ℝ)⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A053738.P3771977473490908412

namespace A053738

/-- `lt[2, A176895(ceil(log2(n+1)))]` -/
def P3771977473490908412.Spec : Prop :=
  ∀ n, (P3771977473490908412.a n : ℤ) = A053738 (n + 1)

end A053738

/-! ## A053738.P16549794465963462571

`lt[12, A160413(ceil(log2(8*n+1))+1)]`
-/

namespace A053738.P16549794465963462571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160413 (⌈Real.logb 2 (8 * n + 1 : ℝ)⌉ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A053738.P16549794465963462571

namespace A053738

/-- `lt[12, A160413(ceil(log2(8*n+1))+1)]` -/
def P16549794465963462571.Spec : Prop :=
  ∀ n, (P16549794465963462571.a n : ℤ) = A053738 (n + 1)

end A053738

/-! ## A053738.P3428446740162043248

`eq[A030301(n+1), A036987(n)]`
-/

namespace A053738.P3428446740162043248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053738.P3428446740162043248

namespace A053738

/-- `eq[A030301(n+1), A036987(n)]` -/
def P3428446740162043248.Spec : Prop :=
  ∀ n, (P3428446740162043248.a n : ℤ) = A053738 (n + 1)

end A053738

/-! ## A053738.P3602285831773493896

`eq[4, A176895(log2(2*n+1-A006257(n)))]`
-/

namespace A053738.P3602285831773493896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (SequenceMachineLib.roundAway (Real.logb 2 ((2 * n + 1 : ℤ) - A006257 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053738.P3602285831773493896

namespace A053738

/-- `eq[4, A176895(log2(2*n+1-A006257(n)))]` -/
def P3602285831773493896.Spec : Prop :=
  ∀ n, (P3602285831773493896.a n : ℤ) = A053738 (n + 1)

end A053738

/-! ## A053738.P11083805501273151296

`eq[0, A275973(n+1)]`
-/

namespace A053738.P11083805501273151296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053738.P11083805501273151296

namespace A053738

/-- `eq[0, A275973(n+1)]` -/
def P11083805501273151296.Spec : Prop :=
  ∀ n, (P11083805501273151296.a n : ℤ) = A053738 (n + 1)

end A053738

/-!
# A053739: Partial sums of A014166.

The programs for A053739, the canonical program `A053739.P8318056533890650712` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053739 has offset 0).

The definition of A053739 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053739.P8318056533890650712

`a(n-1)+a(n-2)+C(n+4, 4)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A053739

/-- `a(n-1)+a(n-2)+C(n+4, 4)` -/
def P8318056533890650712.Spec : Prop :=
  ∀ n, (P8318056533890650712.a n : ℤ) = A053739 n

theorem P8318056533890650712.correct : P8318056533890650712.Spec := by
  intro n
  simp only [A053739]

end A053739

/-! ## A053739.P6502459731196321939

`ogf(1/(1-6x+14x^2-15x^3+5x^4+4x^5-4x^6+x^7))`
-/

namespace A053739.P6502459731196321939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, 14, -15, 5, 4, -4, 1] n

end

end A053739.P6502459731196321939

namespace A053739

/-- `ogf(1/(1-6x+14x^2-15x^3+5x^4+4x^5-4x^6+x^7))` -/
def P6502459731196321939.Spec : Prop :=
  ∀ n, P6502459731196321939.a n = A053739 n

end A053739

/-! ## A053739.P17951898625331801992

`∑{#}[floor(n/2), C(n+5-#, n-2*#)]`
-/

namespace A053739.P17951898625331801992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose ((n + 5 : ℤ) - (k : ℤ)).toNat ((n : ℤ) - (2 * k : ℤ)).toNat

end

end A053739.P17951898625331801992

namespace A053739

/-- `∑{#}[floor(n/2), C(n+5-#, n-2*#)]` -/
def P17951898625331801992.Spec : Prop :=
  ∀ n, (P17951898625331801992.a n : ℤ) = A053739 n

end A053739

/-! ## A053739.P9826907701746361528

`∑[∑[∑[∑[∑[a(n-1)+a(n-2)]]]]]` with `a(0)=1, a(1)=1`
-/

namespace A053739.P9826907701746361528
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f5 =>
  f5 (n - 1) + f5 (n - 2)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053739.P9826907701746361528

namespace A053739

/-- `∑[∑[∑[∑[∑[a(n-1)+a(n-2)]]]]]` -/
def P9826907701746361528.Spec : Prop :=
  ∀ n, (P9826907701746361528.a n : ℤ) = A053739 n

end A053739

/-! ## A053739.P1161095711095716018

`∑[A014166(n+1)]`
-/

namespace A053739.P1161095711095716018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053739.P1161095711095716018

namespace A053739

/-- `∑[A014166(n+1)]` -/
def P1161095711095716018.Spec : Prop :=
  ∀ n, P1161095711095716018.a n = A053739 n

end A053739

/-! ## A053739.P1391186278135352385

`∑[∑[A014162(n+1)]]`
-/

namespace A053739.P1391186278135352385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053739.P1391186278135352385

namespace A053739

/-- `∑[∑[A014162(n+1)]]` -/
def P1391186278135352385.Spec : Prop :=
  ∀ n, P1391186278135352385.a n = A053739 n

end A053739

/-! ## A053739.P3277430122678067017

`∑[∑[∑[A001924(n+1)]]]`
-/

namespace A053739.P3277430122678067017
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053739.P3277430122678067017

namespace A053739

/-- `∑[∑[∑[A001924(n+1)]]]` -/
def P3277430122678067017.Spec : Prop :=
  ∀ n, P3277430122678067017.a n = A053739 n

end A053739

/-! ## A053739.P18091188886873464811

`∑[∑[A116717(n+2)-1]]`
-/

namespace A053739.P18091188886873464811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116717 (n + 2) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053739.P18091188886873464811

namespace A053739

/-- `∑[∑[A116717(n+2)-1]]` -/
def P18091188886873464811.Spec : Prop :=
  ∀ n, P18091188886873464811.a n = A053739 n

end A053739

/-! ## A053739.P210989248856189051

`A053809(n)+a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A053739.P210989248856189051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  A053809 n + a (n - 2)

end

end A053739.P210989248856189051

namespace A053739

/-- `A053809(n)+a(n-2)` -/
def P210989248856189051.Spec : Prop :=
  ∀ n, P210989248856189051.a n = A053739 n

end A053739

/-! ## A053739.P17453435010313268944

`∑[∑[∑[∑[∑[A000045(n+1)]]]]]`
-/

namespace A053739.P17453435010313268944
noncomputable section

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053739.P17453435010313268944

namespace A053739

/-- `∑[∑[∑[∑[∑[A000045(n+1)]]]]]` -/
def P17453435010313268944.Spec : Prop :=
  ∀ n, P17453435010313268944.a n = A053739 n

end A053739

/-! ## A053739.P16250392138846305261

`record[A000332(n+1)+a(n-2)+a(n-1)]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A053739.P16250392138846305261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  A000332 (n + 1) + (f1 (n - 2) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053739.P16250392138846305261

namespace A053739

/-- `record[A000332(n+1)+a(n-2)+a(n-1)]` -/
def P16250392138846305261.Spec : Prop :=
  ∀ n, P16250392138846305261.a n = A053739 n

end A053739

/-! ## A053739.P18130410357976812360

`A054469(n)-a(n-1)` with `a(0)=1`
-/

namespace A053739.P18130410357976812360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054469 n - a (n - 1)

end

end A053739.P18130410357976812360

namespace A053739

/-- `A054469(n)-a(n-1)` -/
def P18130410357976812360.Spec : Prop :=
  ∀ n, P18130410357976812360.a n = A053739 n

end A053739

/-! ## A053739.P7375143013704375717

`∑[∑[A053808(n)]]-a(n-1)` with `a(0)=1`
-/

namespace A053739.P7375143013704375717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053808 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A053739.P7375143013704375717

namespace A053739

/-- `∑[∑[A053808(n)]]-a(n-1)` -/
def P7375143013704375717.Spec : Prop :=
  ∀ n, P7375143013704375717.a n = A053739 n

end A053739

/-! ## A053739.P12886807964509523578

`∪[A027943(n+2), A027950(n+2)]`
-/

namespace A053739.P12886807964509523578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027943 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027950 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A053739.P12886807964509523578

namespace A053739

/-- `∪[A027943(n+2), A027950(n+2)]` -/
def P12886807964509523578.Spec : Prop :=
  ∀ n, (P12886807964509523578.a n : ℤ) = A053739 n

end A053739

/-! ## A053739.P7975729806500655923

`A053298(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A053739.P7975729806500655923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053298 n - (a (n - 1) + a (n - 1))

end

end A053739.P7975729806500655923

namespace A053739

/-- `A053298(n)-(a(n-1)+a(n-1))` -/
def P7975729806500655923.Spec : Prop :=
  ∀ n, P7975729806500655923.a n = A053739 n

end A053739

/-!
# A053740: Number of prime triangle partitions of order n.

The programs for A053740, there is no canonical definition to state claims against.
-/

/-! ## A053740.P7234074234079488153

`A196146(A163905(n!))`
-/

namespace A053740.P7234074234079488153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196146 (A163905 (Nat.factorial n)).toNat

end

end A053740.P7234074234079488153

/-! ## A053740.P16237684538932422943

`A096216(2*A324418(n+5))`
-/

namespace A053740.P16237684538932422943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096216 (2 * A324418 (n + 5)).toNat

end

end A053740.P16237684538932422943

/-!
# A053741: Sum of even numbers in range 10*n to 10*n+9.

The programs for A053741, the canonical program `A053741.P12866060918244914131` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053741 has offset 0).

The definition of A053741 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053741.P12866060918244914131

`20+50*n`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A053741

/-- `20+50*n` -/
def P12866060918244914131.Spec : Prop :=
  ∀ n, (P12866060918244914131.a n : ℤ) = A053741 n

theorem P12866060918244914131.correct : P12866060918244914131.Spec := by
  intro n
  simp only [A053741]

end A053741

/-!
# A053742: Sum of odd numbers in range 10*n to 10*n+9.

The programs for A053742, the canonical program `A053742.P14573697314274550349` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053742 has offset 0).

The definition of A053742 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053742.P14573697314274550349

`25+50*n`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A053742

/-- `25+50*n` -/
def P14573697314274550349.Spec : Prop :=
  ∀ n, (P14573697314274550349.a n : ℤ) = A053742 n

theorem P14573697314274550349.correct : P14573697314274550349.Spec := by
  intro n
  simp only [A053742]

end A053742

/-!
# A053743: Sum of numbers in range 10*n to 10*n+9.

The programs for A053743, the canonical program `A053743.P1433997258938577713` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053743 has offset 0).

The definition of A053743 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053743.P1433997258938577713

`100*n+45`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A053743

/-- `100*n+45` -/
def P1433997258938577713.Spec : Prop :=
  ∀ n, (P1433997258938577713.a n : ℤ) = A053743 n

theorem P1433997258938577713.correct : P1433997258938577713.Spec := by
  intro n
  simp only [A053743]

end A053743

/-!
# A053744: Sum of 3 consecutive digits of Pi.

The programs for A053744, there is no canonical definition to state claims against.
-/

/-! ## A053744.P3045037002836864169

`A110883(n+1)+A000796(n+2)`
-/

namespace A053744.P3045037002836864169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110883 (n + 1) + A000796 (n + 2 + 1)

end

end A053744.P3045037002836864169

/-! ## A053744.P15896042028826379931

`Δ[A227844(n+4)-A227844(n+1)]`
-/

namespace A053744.P15896042028826379931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227844 (n + 4) - A227844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053744.P15896042028826379931

/-! ## A053744.P6887245737716260296

`A000796(n+1)+A000796(n+2)+A000796(n)`
-/

namespace A053744.P6887245737716260296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1) + (A000796 (n + 2 + 1) + A000796 (n + 1))

end

end A053744.P6887245737716260296

/-! ## A053744.P3023363860645454704

`A110883(n+2)+A187747(n)+A001113(n)`
-/

namespace A053744.P3023363860645454704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110883 (n + 2) + (A187747 n + A001113 (n + 1))

end

end A053744.P3023363860645454704

/-! ## A053744.P2430424390211470617

`A110883(n+2)+A062157(n+1)+A054249(n+1)`
-/

namespace A053744.P2430424390211470617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110883 (n + 2) + (A062157 (n + 1) + A054249 (n + 1))

end

end A053744.P2430424390211470617

/-! ## A053744.P15138670275926269833

`A110883(n+2)+A054249(n+1)+1-A010673(n)`
-/

namespace A053744.P15138670275926269833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110883 (n + 2) + (A054249 (n + 1) + (1 - A010673 n))

end

end A053744.P15138670275926269833

/-! ## A053744.P5190033413025062126

`A110883(n+2)+A054249(n+1)+2-A010684(n)`
-/

namespace A053744.P5190033413025062126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110883 (n + 2) + (A054249 (n + 1) + (2 - A010684 n))

end

end A053744.P5190033413025062126

/-! ## A053744.P7325245063025365650

`A046974(n+2)+A000796(n)-A046974(n)`
-/

namespace A053744.P7325245063025365650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 (n + 2) + (A000796 (n + 1) - A046974 n)

end

end A053744.P7325245063025365650

/-! ## A053744.P1387012659904370546

`A110883(n+2)+A110766(2*n+1)`
-/

namespace A053744.P1387012659904370546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110883 (n + 2) + A110766 (2 * n + 1)

end

end A053744.P1387012659904370546

/-! ## A053744.P1440262334620647292

`Δ[A227844(n+4)]-A059582(n)`
-/

namespace A053744.P1440262334620647292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227844 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A059582 n

end

end A053744.P1440262334620647292

/-! ## A053744.P1180139977759675643

`A046974(n+2)+1-A059582(n)`
-/

namespace A053744.P1180139977759675643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 (n + 2) + 1 - A059582 n

end

end A053744.P1180139977759675643

/-! ## A053744.P10763588579032415898

`A059582(n+3)-A059582(n)`
-/

namespace A053744.P10763588579032415898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 (n + 3) - A059582 n

end

end A053744.P10763588579032415898

/-! ## A053744.P15400016018275801501

`A110883(n+1)+Δ[A059582(n+2)]`
-/

namespace A053744.P15400016018275801501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110883 (n + 1) + (f1 (n + 1) - f1 n)

end

end A053744.P15400016018275801501

/-!
# A053745: Positions of '1's in the decimal expansion of Pi (where positions 1,2,3,... refer to the digits 3,1,4,...).

The programs for A053745, there is no canonical definition to state claims against.
-/

/-! ## A053745.P18423807186506741069

`1+A037000(n+1)`
-/

namespace A053745.P18423807186506741069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A037000 (n + 1)

end

end A053745.P18423807186506741069

/-! ## A053745.P2243248391320038131

`a(n-1)+A135088(n)+1` with `a(0)=2`
-/

namespace A053745.P2243248391320038131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A135088 n + 1)

end

end A053745.P2243248391320038131

/-! ## A053745.P4035017127439914521

`eq[1, A000796(n)]+1`
-/

namespace A053745.P4035017127439914521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053745.P4035017127439914521

/-! ## A053745.P5081233672060823884

`eq[2, A123152(n+1)]+1`
-/

namespace A053745.P5081233672060823884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053745.P5081233672060823884

/-! ## A053745.P15683766597510413960

`eq[1, A086994(n)]+1`
-/

namespace A053745.P15683766597510413960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053745.P15683766597510413960

/-! ## A053745.P16536976515640181649

`eq[1, A072448(n+1)]+1`
-/

namespace A053745.P16536976515640181649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072448 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053745.P16536976515640181649

/-! ## A053745.P11866948391630779468

`eq[1, A261197(n+1)]+1`
-/

namespace A053745.P11866948391630779468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261197 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053745.P11866948391630779468

/-! ## A053745.P11970877634395459364

`eq[2, A059833(n+1)]+1`
-/

namespace A053745.P11970877634395459364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053745.P11970877634395459364

/-! ## A053745.P9955997165022318856

`A020725(A037000(n+1))`
-/

namespace A053745.P9955997165022318856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A037000 (n + 1)).toNat

end

end A053745.P9955997165022318856

/-! ## A053745.P17158174996239412259

`A020725(eq[1, A000796(n)])`
-/

namespace A053745.P17158174996239412259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053745.P17158174996239412259

/-! ## A053745.P1595960542143770318

`eq[2, A123152(A028310(n))]`
-/

namespace A053745.P1595960542143770318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053745.P1595960542143770318

/-! ## A053745.P15061209389422074658

`1-A001478(eq[1, A000796(n)])`
-/

namespace A053745.P15061209389422074658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001478 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053745.P15061209389422074658

/-! ## A053745.P3350030152987832330

`eq[A010673(n), A054249(n+1)]+1`
-/

namespace A053745.P3350030152987832330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053745.P3350030152987832330

/-! ## A053745.P16150230449888017694

`A065254(10*n+1)`
-/

namespace A053745.P16150230449888017694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (10 * n + 1)

end

end A053745.P16150230449888017694

/-! ## A053745.P5524503058895969479

`eq[1, A010879(A065253(n+1))]+1`
-/

namespace A053745.P5524503058895969479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A065253 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053745.P5524503058895969479

/-! ## A053745.P13831814160295801614

`A008619(2*eq[1, A000796(n)])`
-/

namespace A053745.P13831814160295801614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053745.P13831814160295801614

/-! ## A053745.P7918071859837097869

`eq[2, sqrt(A179104(n+1))]+1`
-/

namespace A053745.P7918071859837097869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A179104 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n + 1

end

end A053745.P7918071859837097869

/-! ## A053745.P8944025868681650952

`eq[1, A001355(2*n+1)]+1`
-/

namespace A053745.P8944025868681650952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053745.P8944025868681650952

/-! ## A053745.P16012253307091090556

`eq[1, A110766(2*n+1)]+1`
-/

namespace A053745.P16012253307091090556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053745.P16012253307091090556

/-! ## A053745.P10422305555030746323

`eq[1, A001355(A004280(n+1))]`
-/

namespace A053745.P10422305555030746323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A004280 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053745.P10422305555030746323

/-!
# A053746: Positions of '2's in the decimal expansion of Pi, where positions 1, 2, 3, ... correspond to digits 3, 1, 4, ...

The programs for A053746, there is no canonical definition to state claims against.
-/

/-! ## A053746.P4487337480676237644

`A037001(n+1)+1`
-/

namespace A053746.P4487337480676237644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037001 (n + 1) + 1

end

end A053746.P4487337480676237644

/-! ## A053746.P4252024786115798806

`∩[A153030(n+1), A153031(n+1)]`
-/

namespace A053746.P4252024786115798806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053746.P4252024786115798806

/-! ## A053746.P7310252512387413773

`eq[2, A000796(n)]+1`
-/

namespace A053746.P7310252512387413773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053746.P7310252512387413773

/-! ## A053746.P1229278271586203028

`eq[2, A000796(abs(1-n))]`
-/

namespace A053746.P1229278271586203028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (|1 - (n : ℤ)|.toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053746.P1229278271586203028

/-! ## A053746.P844760414790102186

`A020725(A037001(n+1))`
-/

namespace A053746.P844760414790102186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A037001 (n + 1)).toNat

end

end A053746.P844760414790102186

/-! ## A053746.P3983402838529022875

`A020725(eq[2, A000796(n)])`
-/

namespace A053746.P3983402838529022875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053746.P3983402838529022875

/-! ## A053746.P11692582263303059695

`A065475(eq[2, A000796(n)])`
-/

namespace A053746.P11692582263303059695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053746.P11692582263303059695

/-! ## A053746.P8086421863870174006

`1-A001478(eq[2, A000796(n)])`
-/

namespace A053746.P8086421863870174006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001478 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053746.P8086421863870174006

/-! ## A053746.P2736221704781642510

`eq[1, A123152(A028310(n))-2]`
-/

namespace A053746.P2736221704781642510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053746.P2736221704781642510

/-! ## A053746.P10802576964644283129

`eq[A010684(n), A054249(n+1)]+1`
-/

namespace A053746.P10802576964644283129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053746.P10802576964644283129

/-! ## A053746.P2275296861264392374

`A065254(10*n+2)`
-/

namespace A053746.P2275296861264392374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (10 * n + 2)

end

end A053746.P2275296861264392374

/-! ## A053746.P10614944184589095870

`eq[2, A010879(A065253(n+1))]+1`
-/

namespace A053746.P10614944184589095870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A065253 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053746.P10614944184589095870

/-! ## A053746.P5130788557413994056

`eq[2, A001355(2*n+1)]+1`
-/

namespace A053746.P5130788557413994056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053746.P5130788557413994056

/-! ## A053746.P17767259059233790852

`eq[2, A110766(2*n+1)]+1`
-/

namespace A053746.P17767259059233790852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053746.P17767259059233790852

/-! ## A053746.P1914326819166801466

`lt[37, A179103(abs(1-n)+1)²]`
-/

namespace A053746.P1914326819166801466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179103 (|1 - (n : ℤ)| + 1).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A053746.P1914326819166801466

/-! ## A053746.P4533484842863730082

`A008619(2*eq[2, A000796(n)])`
-/

namespace A053746.P4533484842863730082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053746.P4533484842863730082

/-! ## A053746.P5469673740582747788

`A028242(2*eq[2, A000796(n)])`
-/

namespace A053746.P5469673740582747788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053746.P5469673740582747788

/-! ## A053746.P7988035290080167682

`A131732(2*eq[2, A000796(n)])`
-/

namespace A053746.P7988035290080167682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053746.P7988035290080167682

/-! ## A053746.P7561623526603906059

`eq[1, A046974(n)-A059582(n)]+1`
-/

namespace A053746.P7561623526603906059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n - A059582 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053746.P7561623526603906059

/-! ## A053746.P5898127111350099211

`eq[2, A110766(A113127(n))]`
-/

namespace A053746.P5898127111350099211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (A113127 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053746.P5898127111350099211

/-!
# A053747: Positions of 3's in the decimal expansion of Pi.

The programs for A053747, there is no canonical definition to state claims against.
-/

/-! ## A053747.P18247020153315052353

`∩[A153031(n+1), A153032(n+1)]`
-/

namespace A053747.P18247020153315052353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053747.P18247020153315052353

/-! ## A053747.P10430717578031317311

`eq[3, A000796(n)]+1`
-/

namespace A053747.P10430717578031317311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053747.P10430717578031317311

/-! ## A053747.P17061886328812118980

`eq[3, A000796(abs(1-n))]`
-/

namespace A053747.P17061886328812118980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (|1 - (n : ℤ)|.toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053747.P17061886328812118980

/-! ## A053747.P14424426438906703909

`A065254(10*n+3)`
-/

namespace A053747.P14424426438906703909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (10 * n + 3)

end

end A053747.P14424426438906703909

/-! ## A053747.P9784972455203780631

`eq[4, A119505(n+1)]+1`
-/

namespace A053747.P9784972455203780631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119505 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053747.P9784972455203780631

/-! ## A053747.P6608957313972749611

`eq[3, A001355(2*n+1)]+1`
-/

namespace A053747.P6608957313972749611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053747.P6608957313972749611

/-! ## A053747.P5735102928013601201

`eq[A086995(n+1)², A179103(n+1)]+1`
-/

namespace A053747.P5735102928013601201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086995 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053747.P5735102928013601201

/-! ## A053747.P8488062870985828799

`eq[3, Δ[A059582(n)]]+1`
-/

namespace A053747.P8488062870985828799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053747.P8488062870985828799

/-! ## A053747.P12438995784855016121

`eq[2, A046974(n)-A059582(n)]+1`
-/

namespace A053747.P12438995784855016121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n - A059582 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053747.P12438995784855016121

/-! ## A053747.P16325761692571365108

`lt[2, A343229(Δ[A059582(n)]+2)]+1`
-/

namespace A053747.P16325761692571365108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343229 (f3 (n + 1) - f3 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A053747.P16325761692571365108

/-!
# A053748: Positions of 4's in the decimal expansion of Pi.

The programs for A053748, there is no canonical definition to state claims against.
-/

/-! ## A053748.P9167535759822616443

`A037003(n+1)+1`
-/

namespace A053748.P9167535759822616443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037003 (n + 1) + 1

end

end A053748.P9167535759822616443

/-! ## A053748.P14631994113681092788

`eq[4, A000796(n)]+1`
-/

namespace A053748.P14631994113681092788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053748.P14631994113681092788

/-! ## A053748.P4143027146484259003

`eq[4, A000796(abs(1-n))]`
-/

namespace A053748.P4143027146484259003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (|1 - (n : ℤ)|.toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053748.P4143027146484259003

/-! ## A053748.P11787412971447704708

`A020725(A037003(n+1))`
-/

namespace A053748.P11787412971447704708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A037003 (n + 1)).toNat

end

end A053748.P11787412971447704708

/-! ## A053748.P9153721877885519164

`A020725(eq[4, A000796(n)])`
-/

namespace A053748.P9153721877885519164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053748.P9153721877885519164

/-! ## A053748.P6433518101360848998

`A065475(eq[4, A000796(n)])`
-/

namespace A053748.P6433518101360848998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053748.P6433518101360848998

/-! ## A053748.P9669851973811068993

`eq[A010703(n), A054249(n+1)]+1`
-/

namespace A053748.P9669851973811068993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010703 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053748.P9669851973811068993

/-! ## A053748.P6448624728751988860

`eq[A040056(n), A072448(n+1)]+1`
-/

namespace A053748.P6448624728751988860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072448 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053748.P6448624728751988860

/-! ## A053748.P5966723981944597908

`A065254(10*n+4)`
-/

namespace A053748.P5966723981944597908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (10 * n + 4)

end

end A053748.P5966723981944597908

/-! ## A053748.P10626974310622042687

`eq[4, A001355(2*n+1)]+1`
-/

namespace A053748.P10626974310622042687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053748.P10626974310622042687

/-! ## A053748.P4356947515112311200

`eq[4, A110766(2*n+1)]+1`
-/

namespace A053748.P4356947515112311200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053748.P4356947515112311200

/-! ## A053748.P17844839864525632566

`eq[2, A001355(A004280(n+1))-2]`
-/

namespace A053748.P17844839864525632566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A004280 (n + 1)).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053748.P17844839864525632566

/-! ## A053748.P470036543140886883

`eq[3, A046974(n)-A059582(n)]+1`
-/

namespace A053748.P470036543140886883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n - A059582 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053748.P470036543140886883

/-! ## A053748.P10494818111293002834

`eq[2, A110766(A113127(n))-2]`
-/

namespace A053748.P10494818111293002834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (A113127 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053748.P10494818111293002834

/-!
# A053749: Positions of 5's in the decimal expansion of Pi.

The programs for A053749, there is no canonical definition to state claims against.
-/

/-! ## A053749.P8457238740924200025

`A037004(n+1)+1`
-/

namespace A053749.P8457238740924200025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037004 (n + 1) + 1

end

end A053749.P8457238740924200025

/-! ## A053749.P15980777941318133228

`eq[5, A000796(n)]+1`
-/

namespace A053749.P15980777941318133228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053749.P15980777941318133228

/-! ## A053749.P17377609905212405648

`eq[5, A000796(abs(1-n))]`
-/

namespace A053749.P17377609905212405648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (|1 - (n : ℤ)|.toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053749.P17377609905212405648

/-! ## A053749.P17368518767833656212

`eq[4, A030644(n)]+1`
-/

namespace A053749.P17368518767833656212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053749.P17368518767833656212

/-! ## A053749.P14926172329944580404

`A020725(A037004(n+1))`
-/

namespace A053749.P14926172329944580404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A037004 (n + 1)).toNat

end

end A053749.P14926172329944580404

/-! ## A053749.P5411841481207171282

`A020725(eq[4, A030644(n)])`
-/

namespace A053749.P5411841481207171282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053749.P5411841481207171282

/-! ## A053749.P7769518215219924993

`eq[A010711(n), A054249(n+1)]+1`
-/

namespace A053749.P7769518215219924993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010711 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053749.P7769518215219924993

/-! ## A053749.P10299657070728843076

`eq[A054249(n+1), A101432(n)]+1`
-/

namespace A053749.P10299657070728843076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101432 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053749.P10299657070728843076

/-! ## A053749.P4064293778696194930

`A065254(10*n+5)`
-/

namespace A053749.P4064293778696194930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (10 * n + 5)

end

end A053749.P4064293778696194930

/-! ## A053749.P9896959002136065725

`eq[2, A179102(n+1)]+1`
-/

namespace A053749.P9896959002136065725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179102 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053749.P9896959002136065725

/-! ## A053749.P17424920394611419271

`eq[5, A001355(A004280(n+1))]`
-/

namespace A053749.P17424920394611419271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A004280 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053749.P17424920394611419271

/-! ## A053749.P16654817303014733372

`eq[A086995(n+1), A179103(n+1)]+1`
-/

namespace A053749.P16654817303014733372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053749.P16654817303014733372

/-! ## A053749.P64086503894838216

`lt[A179102(n+1)², A119505(n+1)]+1`
-/

namespace A053749.P64086503894838216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179102 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119505 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A053749.P64086503894838216

/-! ## A053749.P15494687323066820380

`lt[A179103(n+1)², A119505(n+1)]+1`
-/

namespace A053749.P15494687323066820380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179103 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119505 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A053749.P15494687323066820380

/-! ## A053749.P15672209968949552396

`eq[4, A046974(n)-A059582(n)]+1`
-/

namespace A053749.P15672209968949552396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n - A059582 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053749.P15672209968949552396

/-!
# A053750: Positions of 6's in the decimal expansion of Pi.

The programs for A053750, there is no canonical definition to state claims against.
-/

/-! ## A053750.P2058484483500054309

`A037005(n+1)+1`
-/

namespace A053750.P2058484483500054309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037005 (n + 1) + 1

end

end A053750.P2058484483500054309

/-! ## A053750.P11714580226465445976

`eq[6, A000796(n)]+1`
-/

namespace A053750.P11714580226465445976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053750.P11714580226465445976

/-! ## A053750.P4876241649714882349

`eq[6, A000796(abs(1-n))]`
-/

namespace A053750.P4876241649714882349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (|1 - (n : ℤ)|.toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053750.P4876241649714882349

/-! ## A053750.P6562093841548798005

`eq[3, A030644(n)]+1`
-/

namespace A053750.P6562093841548798005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053750.P6562093841548798005

/-! ## A053750.P8476445770530564456

`A020725(A037005(n+1))`
-/

namespace A053750.P8476445770530564456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A037005 (n + 1)).toNat

end

end A053750.P8476445770530564456

/-! ## A053750.P12833190006568312559

`A020725(eq[3, A030644(n)])`
-/

namespace A053750.P12833190006568312559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053750.P12833190006568312559

/-! ## A053750.P3296723814865707232

`eq[A010718(n), A054249(n+1)]+1`
-/

namespace A053750.P3296723814865707232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010718 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053750.P3296723814865707232

/-! ## A053750.P12680076459461487012

`eq[A040306(n), A072448(n+1)]+1`
-/

namespace A053750.P12680076459461487012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040306 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072448 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053750.P12680076459461487012

/-! ## A053750.P12514816057494541163

`A065254(10*n+6)`
-/

namespace A053750.P12514816057494541163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (10 * n + 6)

end

end A053750.P12514816057494541163

/-! ## A053750.P17788960635601279370

`A108782(A004186(n))+A065254(A017341(n))`
-/

namespace A053750.P17788960635601279370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 (A004186 n).toNat + A065254 (A017341 n).toNat

end

end A053750.P17788960635601279370

/-! ## A053750.P17781245918057400257

`A108782(A151950(n))+A065254(A017341(n))`
-/

namespace A053750.P17781245918057400257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 (A151950 n).toNat + A065254 (A017341 n).toNat

end

end A053750.P17781245918057400257

/-! ## A053750.P2519071370564349446

`A108782(A227362(n))+A065254(A017341(n))`
-/

namespace A053750.P2519071370564349446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 (A227362 n).toNat + A065254 (A017341 n).toNat

end

end A053750.P2519071370564349446

/-! ## A053750.P6856357679528564886

`A001511(A016969(n))*A065254(A017341(n))`
-/

namespace A053750.P6856357679528564886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A016969 n).toNat * A065254 (A017341 n).toNat

end

end A053750.P6856357679528564886

/-! ## A053750.P4345136401834821189

`A065254(A017341(n))%A016969(A008574(2*n))`
-/

namespace A053750.P4345136401834821189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065254 (A017341 n).toNat) (A016969 (A008574 (2 * n)).toNat)

end

end A053750.P4345136401834821189

/-! ## A053750.P7383278007137007582

`eq[2, A179104(n+1)]+1`
-/

namespace A053750.P7383278007137007582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053750.P7383278007137007582

/-! ## A053750.P135371910410748402

`eq[6, A001355(A004280(n+1))]`
-/

namespace A053750.P135371910410748402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A004280 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053750.P135371910410748402

/-! ## A053750.P11984188214077878951

`eq[A086358(n), A119505(n+1)]+1`
-/

namespace A053750.P11984188214077878951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086358 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119505 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053750.P11984188214077878951

/-! ## A053750.P3021370245882609243

`eq[A119505(n+1), A180599(n)]+1`
-/

namespace A053750.P3021370245882609243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180599 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053750.P3021370245882609243

/-! ## A053750.P7616126785495059028

`eq[A179102(n+1)², A119505(n+1)]+1`
-/

namespace A053750.P7616126785495059028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179102 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119505 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053750.P7616126785495059028

/-! ## A053750.P17841920256039423118

`lt[A179104(n+1)², A179103(n+1)]+1`
-/

namespace A053750.P17841920256039423118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179104 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A053750.P17841920256039423118

/-!
# A053751: Positions of 7's in the decimal expansion of Pi.

The programs for A053751, there is no canonical definition to state claims against.
-/

/-! ## A053751.P3986699113230461842

`A036974(n+1)+1`
-/

namespace A053751.P3986699113230461842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036974 (n + 1) + 1

end

end A053751.P3986699113230461842

/-! ## A053751.P11227206610043458824

`eq[7, A000796(n)]+1`
-/

namespace A053751.P11227206610043458824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053751.P11227206610043458824

/-! ## A053751.P4557541305123241

`A065254(10*n+7)`
-/

namespace A053751.P4557541305123241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (10 * n + 7)

end

end A053751.P4557541305123241

/-! ## A053751.P16907759927718810102

`A065254(A017353(n))%A017451(n)`
-/

namespace A053751.P16907759927718810102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065254 (A017353 n).toNat) (A017451 n)

end

end A053751.P16907759927718810102

/-! ## A053751.P350721732341205156

`A065254(A017281(n)+6)%A018252(n+2)²`
-/

namespace A053751.P350721732341205156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065254 (A017281 n + 6).toNat) (A018252 (n + 2) ^ 2)

end

end A053751.P350721732341205156

/-! ## A053751.P450367230795202705

`A191558(A000040(n+1))+A065254(A017281(n)+6)`
-/

namespace A053751.P450367230795202705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A000040 (n + 1)).toNat + A065254 (A017281 n + 6).toNat

end

end A053751.P450367230795202705

/-! ## A053751.P9427001351717054633

`A065254(A017281(n)+6)/A001222(A273283(n+2))`
-/

namespace A053751.P9427001351717054633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065254 (A017281 n + 6).toNat : ℚ) / (A001222 (A273283 (n + 2)).toNat : ℚ)

end

end A053751.P9427001351717054633

/-! ## A053751.P842969527494991940

`eq[2, A030644(n)]+1`
-/

namespace A053751.P842969527494991940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053751.P842969527494991940

/-! ## A053751.P793222481570180919

`eq[2, A153799(n)]+2`
-/

namespace A053751.P793222481570180919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153799 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A053751.P793222481570180919

/-! ## A053751.P6661151382181233762

`lt[2, A086995(n+1)]+1`
-/

namespace A053751.P6661151382181233762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086995 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A053751.P6661151382181233762

/-! ## A053751.P17702762919377451095

`A011760(A036974(n+1))`
-/

namespace A053751.P17702762919377451095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A036974 (n + 1)).toNat

end

end A053751.P17702762919377451095

/-! ## A053751.P15951731612415945058

`A020725(eq[2, A030644(n)])`
-/

namespace A053751.P15951731612415945058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053751.P15951731612415945058

/-! ## A053751.P2350099534869468499

`eq[A010724(n), A054249(n+1)]+1`
-/

namespace A053751.P2350099534869468499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010724 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053751.P2350099534869468499

/-! ## A053751.P11933766896738734381

`eq[A086995(n+1), A122553(n)]+1`
-/

namespace A053751.P11933766896738734381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053751.P11933766896738734381

/-! ## A053751.P3054090590139112897

`eq[A086995(n+1), A156752(n)]+1`
-/

namespace A053751.P3054090590139112897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156752 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053751.P3054090590139112897

/-! ## A053751.P3104554229628353337

`eq[A086995(n+1), A158799(n)]+1`
-/

namespace A053751.P3104554229628353337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158799 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053751.P3104554229628353337

/-! ## A053751.P5325361719633719771

`A065254(A017353(n))^A001222(A098414(n+1))`
-/

namespace A053751.P5325361719633719771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065254 (A017353 n).toNat : ℚ) ^ (A001222 (A098414 (n + 1)).toNat : ℤ)

end

end A053751.P5325361719633719771

/-! ## A053751.P9460875182013789798

`eq[2, A119505(n+1)]+1`
-/

namespace A053751.P9460875182013789798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119505 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053751.P9460875182013789798

/-! ## A053751.P11819541816764487510

`eq[7, A001355(A004280(n+1))]`
-/

namespace A053751.P11819541816764487510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A004280 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053751.P11819541816764487510

/-!
# A053752: Positions of 8's in the decimal expansion of Pi.

The programs for A053752, there is no canonical definition to state claims against.
-/

/-! ## A053752.P13608094568210052555

`A037006(n+1)+1`
-/

namespace A053752.P13608094568210052555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037006 (n + 1) + 1

end

end A053752.P13608094568210052555

/-! ## A053752.P9098582027270806742

`eq[8, A000796(n)]+1`
-/

namespace A053752.P9098582027270806742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053752.P9098582027270806742

/-! ## A053752.P15816039070662270587

`A065254(10*n+8)`
-/

namespace A053752.P15816039070662270587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (10 * n + 8)

end

end A053752.P15816039070662270587

/-! ## A053752.P9782031706543175228

`eq[1, A153799(n)]+2`
-/

namespace A053752.P9782031706543175228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153799 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A053752.P9782031706543175228

/-! ## A053752.P15422624592073355431

`A020725(A037006(n+1))`
-/

namespace A053752.P15422624592073355431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A037006 (n + 1)).toNat

end

end A053752.P15422624592073355431

/-! ## A053752.P14617200885397281624

`eq[1, A030644(n)]+1`
-/

namespace A053752.P14617200885397281624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053752.P14617200885397281624

/-! ## A053752.P5294575470189683266

`A020725(eq[1, A030644(n)])`
-/

namespace A053752.P5294575470189683266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053752.P5294575470189683266

/-! ## A053752.P17257603404970157604

`eq[A010729(n), A054249(n+1)]+1`
-/

namespace A053752.P17257603404970157604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010729 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053752.P17257603404970157604

/-! ## A053752.P1158783540778653637

`eq[A072448(n+1), A171441(n)]+1`
-/

namespace A053752.P1158783540778653637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053752.P1158783540778653637

/-! ## A053752.P12018995650149939077

`eq[A120700(n+1), A123153(n+1)]+1`
-/

namespace A053752.P12018995650149939077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123153 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053752.P12018995650149939077

/-! ## A053752.P13977143189187377107

`eq[4, A179102(n+1)]+1`
-/

namespace A053752.P13977143189187377107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179102 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053752.P13977143189187377107

/-! ## A053752.P14322640480546268524

`eq[6, A119505(n+1)]+1`
-/

namespace A053752.P14322640480546268524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119505 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053752.P14322640480546268524

/-! ## A053752.P3521834340315278982

`lt[8, A179104(n+1)]+1`
-/

namespace A053752.P3521834340315278982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A053752.P3521834340315278982

/-! ## A053752.P2902912867860781454

`eq[A086358(n), A179104(n+1)]+1`
-/

namespace A053752.P2902912867860781454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086358 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053752.P2902912867860781454

/-! ## A053752.P7169741497466081463

`eq[A179103(n+1)², A179104(n+1)]+1`
-/

namespace A053752.P7169741497466081463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179103 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053752.P7169741497466081463

/-!
# A053753: Positions of 9's in the decimal expansion of Pi.

The programs for A053753, there is no canonical definition to state claims against.
-/

/-! ## A053753.P1940661825335848919

`∑[A108664(n+1)]`
-/

namespace A053753.P1940661825335848919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053753.P1940661825335848919

/-! ## A053753.P11211941197511105017

`A037007(1+n)+1`
-/

namespace A053753.P11211941197511105017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037007 (1 + n) + 1

end

end A053753.P11211941197511105017

/-! ## A053753.P10114099948745612777

`lt[8, A000796(n)]+1`
-/

namespace A053753.P10114099948745612777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A053753.P10114099948745612777

/-! ## A053753.P5874794450204009218

`lt[2, floor(A000796(abs(2-n))/3)]-1`
-/

namespace A053753.P5874794450204009218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000796 (|2 - (n : ℤ)|.toNat + 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A053753.P5874794450204009218

/-! ## A053753.P1622584930904785854

`eq[A040020(n), A123152(n+1)]+1`
-/

namespace A053753.P1622584930904785854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040020 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053753.P1622584930904785854

/-! ## A053753.P8379601281317765429

`a(n-1)+A139727(n)+1` with `a(0)=6`
-/

namespace A053753.P8379601281317765429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + (A139727 n + 1)

end

end A053753.P8379601281317765429

/-! ## A053753.P14267234316208490745

`∑[A139727(A028310(n))]+n`
-/

namespace A053753.P14267234316208490745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139727 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A053753.P14267234316208490745

/-! ## A053753.P12982694571012013384

`∑[A139727(A123108(2*n))]+n`
-/

namespace A053753.P12982694571012013384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139727 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A053753.P12982694571012013384

/-! ## A053753.P3983887589698193869

`eq[0, A030644(n)]+1`
-/

namespace A053753.P3983887589698193869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053753.P3983887589698193869

/-! ## A053753.P14301015392201842455

`A020725(A037007(n+1))`
-/

namespace A053753.P14301015392201842455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A037007 (n + 1)).toNat

end

end A053753.P14301015392201842455

/-! ## A053753.P947884415022168333

`A020725(eq[0, A030644(n)])`
-/

namespace A053753.P947884415022168333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053753.P947884415022168333

/-! ## A053753.P15996493609182785165

`eq[A010733(n), A054249(n+1)]+1`
-/

namespace A053753.P15996493609182785165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010733 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053753.P15996493609182785165

/-! ## A053753.P4965441128022543575

`eq[A123152(n+1), A329503(n)]+1`
-/

namespace A053753.P4965441128022543575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329503 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053753.P4965441128022543575

/-! ## A053753.P9893513380816106223

`A065254(10*n+9)`
-/

namespace A053753.P9893513380816106223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (10 * n + 9)

end

end A053753.P9893513380816106223

/-! ## A053753.P11988567568056026299

`or(char[1], A065254(A017329(n)+4))`
-/

namespace A053753.P11988567568056026299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A065254 (A017329 n + 4).toNat)

end

end A053753.P11988567568056026299

/-! ## A053753.P12737219660239692843

`eq[5, A179104(n+1)]+1`
-/

namespace A053753.P12737219660239692843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053753.P12737219660239692843

/-! ## A053753.P683822923861903580

`eq[6, A179102(n+1)]+1`
-/

namespace A053753.P683822923861903580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179102 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053753.P683822923861903580

/-!
# A053754: If k is in the sequence then 2*k and 2*k+1 are not (and 0 is in the sequence); when written in binary k has an even number of bits (0 has 0 digits).

The programs for A053754, the canonical program `A053754.P12990596201667746147` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053754 has offset 1).

The definition of A053754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053754.P9366781620846761741

`eq[1, and(1, ceil(log2(acot(n))))]`
-/

namespace A053754.P9366781620846761741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈Real.logb 2 (SequenceMachineLib.acot (n : ℝ))⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053754.P9366781620846761741

namespace A053754

/-- `eq[1, and(1, ceil(log2(acot(n))))]` -/
def P9366781620846761741.Spec : Prop :=
  ∀ n, (P9366781620846761741.a n : ℤ) = A053754 (n + 1)

end A053754

/-! ## A053754.P5770852270801450763

`eq[0, ceil(log2(n+1))%2]`
-/

namespace A053754.P5770852270801450763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.logb 2 (n + 1 : ℝ)⌉ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053754.P5770852270801450763

namespace A053754

/-- `eq[0, ceil(log2(n+1))%2]` -/
def P5770852270801450763.Spec : Prop :=
  ∀ n, (P5770852270801450763.a n : ℤ) = A053754 (n + 1)

end A053754

/-! ## A053754.P9117465171347375898

`lt[1, gcd(2, ceil(log2(n+1)))]`
-/

namespace A053754.P9117465171347375898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 ⌈Real.logb 2 (n + 1 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053754.P9117465171347375898

namespace A053754

/-- `lt[1, gcd(2, ceil(log2(n+1)))]` -/
def P9117465171347375898.Spec : Prop :=
  ∀ n, (P9117465171347375898.a n : ℤ) = A053754 (n + 1)

end A053754

/-! ## A053754.P6178957573927766406

`lt[and(1, ceil(log2(n+1))), 1]`
-/

namespace A053754.P6178957573927766406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈Real.logb 2 (n + 1 : ℝ)⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A053754.P6178957573927766406

namespace A053754

/-- `lt[and(1, ceil(log2(n+1))), 1]` -/
def P6178957573927766406.Spec : Prop :=
  ∀ n, (P6178957573927766406.a n : ℤ) = A053754 (n + 1)

end A053754

/-! ## A053754.P1294420258693271848

`eq[1, -a(floor(n/2))]` with `a(0)=1`
-/

namespace A053754.P1294420258693271848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  -f2 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053754.P1294420258693271848

namespace A053754

/-- `eq[1, -a(floor(n/2))]` -/
def P1294420258693271848.Spec : Prop :=
  ∀ n, (P1294420258693271848.a n : ℤ) = A053754 (n + 1)

end A053754

/-! ## A053754.P12990596201667746147

`lt[1, -a(floor(n/2))]` with `a(0)=3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A053754

/-- `lt[1, -a(floor(n/2))]` -/
def P12990596201667746147.Spec : Prop :=
  ∀ n, (P12990596201667746147.a n : ℤ) = A053754 (n + 1)

theorem P12990596201667746147.correct : P12990596201667746147.Spec := by
  intro n
  simp only [A053754, Nat.add_sub_cancel]

end A053754

/-! ## A053754.P8890729779468753988

`lt[1-a(floor(n/2)), 1]` with `a(0)=0`
-/

namespace A053754.P8890729779468753988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 ⌊(n : ℚ) / 2⌋.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A053754.P8890729779468753988

namespace A053754

/-- `lt[1-a(floor(n/2)), 1]` -/
def P8890729779468753988.Spec : Prop :=
  ∀ n, (P8890729779468753988.a n : ℤ) = A053754 (n + 1)

end A053754

/-! ## A053754.P7547385189788097863

`eq[1, 1-a(floor(n/2))]` with `a(0)=1`
-/

namespace A053754.P7547385189788097863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053754.P7547385189788097863

namespace A053754

/-- `eq[1, 1-a(floor(n/2))]` -/
def P7547385189788097863.Spec : Prop :=
  ∀ n, (P7547385189788097863.a n : ℤ) = A053754 (n + 1)

end A053754

/-! ## A053754.P15417036575909317801

`eq[3, dr(2*a(floor(n/2)))]` with `a(0)=3`
-/

namespace A053754.P15417036575909317801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  SequenceMachineLib.digitalRoot (2 * f2 ⌊(n : ℚ) / 2⌋.toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053754.P15417036575909317801

namespace A053754

/-- `eq[3, dr(2*a(floor(n/2)))]` -/
def P15417036575909317801.Spec : Prop :=
  ∀ n, (P15417036575909317801.a n : ℤ) = A053754 (n + 1)

end A053754

/-! ## A053754.P15536698630488692604

`comp[A053738(n+1)]`
-/

namespace A053754.P15536698630488692604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A053754.P15536698630488692604

namespace A053754

/-- `comp[A053738(n+1)]` -/
def P15536698630488692604.Spec : Prop :=
  ∀ n, (P15536698630488692604.a n : ℤ) = A053754 (n + 1)

end A053754

/-! ## A053754.P13035262805580492701

`eq[1, A275973(n+1)]`
-/

namespace A053754.P13035262805580492701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053754.P13035262805580492701

namespace A053754

/-- `eq[1, A275973(n+1)]` -/
def P13035262805580492701.Spec : Prop :=
  ∀ n, (P13035262805580492701.a n : ℤ) = A053754 (n + 1)

end A053754

/-! ## A053754.P5946444809997591600

`eq[2, gcd(2, A124754(n))]`
-/

namespace A053754.P5946444809997591600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A124754 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053754.P5946444809997591600

namespace A053754

/-- `eq[2, gcd(2, A124754(n))]` -/
def P5946444809997591600.Spec : Prop :=
  ∀ n, (P5946444809997591600.a n : ℤ) = A053754 (n + 1)

end A053754

/-! ## A053754.P4109764221715622466

`lt[A004468(n), n+1]`
-/

namespace A053754.P4109764221715622466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A053754.P4109764221715622466

namespace A053754

/-- `lt[A004468(n), n+1]` -/
def P4109764221715622466.Spec : Prop :=
  ∀ n, (P4109764221715622466.a n : ℤ) = A053754 (n + 1)

end A053754

/-! ## A053754.P5320408676467684727

`lt[A300839(n), n+1]`
-/

namespace A053754.P5320408676467684727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300839 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A053754.P5320408676467684727

namespace A053754

/-- `lt[A300839(n), n+1]` -/
def P5320408676467684727.Spec : Prop :=
  ∀ n, (P5320408676467684727.a n : ℤ) = A053754 (n + 1)

end A053754

/-! ## A053754.P18212309699209361643

`floor(A059013(n+1)/2)`
-/

namespace A053754.P18212309699209361643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059013 (n + 1) : ℚ) / 2⌋

end

end A053754.P18212309699209361643

namespace A053754

/-- `floor(A059013(n+1)/2)` -/
def P18212309699209361643.Spec : Prop :=
  ∀ n, P18212309699209361643.a n = A053754 (n + 1)

end A053754

/-! ## A053754.P12292346401446964625

`floor(A059014(n+1)/2)`
-/

namespace A053754.P12292346401446964625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059014 (n + 1) : ℚ) / 2⌋

end

end A053754.P12292346401446964625

namespace A053754

/-- `floor(A059014(n+1)/2)` -/
def P12292346401446964625.Spec : Prop :=
  ∀ n, P12292346401446964625.a n = A053754 (n + 1)

end A053754

/-! ## A053754.P15122925153403475144

`eq[0, A030301(2*n+1)]`
-/

namespace A053754.P15122925153403475144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030301 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053754.P15122925153403475144

namespace A053754

/-- `eq[0, A030301(2*n+1)]` -/
def P15122925153403475144.Spec : Prop :=
  ∀ n, (P15122925153403475144.a n : ℤ) = A053754 (n + 1)

end A053754

/-! ## A053754.P11982787146848254997

`eq[1, A030300(2*n+1)]`
-/

namespace A053754.P11982787146848254997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030300 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053754.P11982787146848254997

namespace A053754

/-- `eq[1, A030300(2*n+1)]` -/
def P11982787146848254997.Spec : Prop :=
  ∀ n, (P11982787146848254997.a n : ℤ) = A053754 (n + 1)

end A053754

/-! ## A053754.P16742259086238298095

`lt[A176895(ceil(log2(n+1))), 3]`
-/

namespace A053754.P16742259086238298095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 ⌈Real.logb 2 (n + 1 : ℝ)⌉.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A053754.P16742259086238298095

namespace A053754

/-- `lt[A176895(ceil(log2(n+1))), 3]` -/
def P16742259086238298095.Spec : Prop :=
  ∀ n, (P16742259086238298095.a n : ℤ) = A053754 (n + 1)

end A053754

/-! ## A053754.P2487807691726284379

`eq[A030300(n+1), A036987(n)]`
-/

namespace A053754.P2487807691726284379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053754.P2487807691726284379

namespace A053754

/-- `eq[A030300(n+1), A036987(n)]` -/
def P2487807691726284379.Spec : Prop :=
  ∀ n, (P2487807691726284379.a n : ℤ) = A053754 (n + 1)

end A053754

/-!
# A053755: a(n) = 4*n^2 + 1.

The programs for A053755, the canonical program `A053755.P11748163540145338459` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053755 has offset 0).

The definition of A053755 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n²+1` (program `A053755.P11748163540145338459`, by `A053755.P11748163540145338459.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053755.P11748163540145338459

`4*n²+1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A053755

/-- `4*n²+1` -/
def P11748163540145338459.Spec : Prop :=
  ∀ n, (P11748163540145338459.a n : ℤ) = A053755 n

theorem P11748163540145338459.correct : P11748163540145338459.Spec := by
  intro n
  simp only [A053755]

end A053755

/-! ## A053755.P10605136731725076302

`ogf((1+2x+5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A053755.P10605136731725076302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 5] [1, -3, 3, -1] n

end

end A053755.P10605136731725076302

namespace A053755

/-- `ogf((1+2x+5x^2)/(1-3x+3x^2-x^3))` -/
def P10605136731725076302.Spec : Prop :=
  ∀ n, P10605136731725076302.a n = A053755 n

end A053755

/-! ## A053755.P5620261341541090310

`A156701(n)/A087475(n)`
-/

namespace A053755.P5620261341541090310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156701 n : ℚ) / (A087475 n : ℚ)

end

end A053755.P5620261341541090310

namespace A053755

/-- `A156701(n)/A087475(n)` -/
def P5620261341541090310.Spec : Prop :=
  ∀ n, P5620261341541090310.a n = (A053755 n : ℚ)

theorem P5620261341541090310.correct : P5620261341541090310.Spec := by
  intro n
  simp only [A053755, Nat.add_sub_cancel, A053755.P5620261341541090310.a, A053755.P11748163540145338459.a, A087475, A087475.P4372105407425732933.a, A156701, A156701.P9914790661993607378.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053755

/-! ## A053755.P3091168102626275528

`A176271(C(2*n, 2)+n+1)`
-/

namespace A053755.P3091168102626275528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176271 (Nat.choose (2 * n) 2 + (n + 1))

end

end A053755.P3091168102626275528

namespace A053755

/-- `A176271(C(2*n, 2)+n+1)` -/
def P3091168102626275528.Spec : Prop :=
  ∀ n, P3091168102626275528.a n = A053755 n

end A053755

/-! ## A053755.P6087429794008932164

`or(1, (2*n)²)`
-/

namespace A053755.P6087429794008932164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((2 * n) ^ 2)

end

end A053755.P6087429794008932164

namespace A053755

/-- `or(1, (2*n)²)` -/
def P6087429794008932164.Spec : Prop :=
  ∀ n, (P6087429794008932164.a n : ℤ) = A053755 n

end A053755

/-! ## A053755.P10146766123120684176

`xor(1, (2*n)²)`
-/

namespace A053755.P10146766123120684176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((2 * n) ^ 2)

end

end A053755.P10146766123120684176

namespace A053755

/-- `xor(1, (2*n)²)` -/
def P10146766123120684176.Spec : Prop :=
  ∀ n, (P10146766123120684176.a n : ℤ) = A053755 n

end A053755

/-! ## A053755.P3887871835432600610

`record[or(n², (-1)^n)]`
-/

namespace A053755.P3887871835432600610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n ^ 2 : ℤ) ((-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053755.P3887871835432600610

namespace A053755

/-- `record[or(n², (-1)^n)]` -/
def P3887871835432600610.Spec : Prop :=
  ∀ n, P3887871835432600610.a n = A053755 n

end A053755

/-! ## A053755.P14850658791286406193

`record[xor(n², (-1)^n)]`
-/

namespace A053755.P14850658791286406193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n ^ 2 : ℤ) ((-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053755.P14850658791286406193

namespace A053755

/-- `record[xor(n², (-1)^n)]` -/
def P14850658791286406193.Spec : Prop :=
  ∀ n, P14850658791286406193.a n = A053755 n

end A053755

/-! ## A053755.P5977800517116981370

`filter[n²+1, #%2]`
-/

namespace A053755.P5977800517116981370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => f1 j % 2 = 1) n)

end

end A053755.P5977800517116981370

namespace A053755

/-- `filter[n²+1, #%2]` -/
def P5977800517116981370.Spec : Prop :=
  ∀ n, (P5977800517116981370.a n : ℤ) = A053755 n

end A053755

/-! ## A053755.P72801522432065925

`filter[n²+1, gcd(2, #)]`
-/

namespace A053755.P72801522432065925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Nat.gcd 2 (f1 j) = 1) n)

end

end A053755.P72801522432065925

namespace A053755

/-- `filter[n²+1, gcd(2, #)]` -/
def P72801522432065925.Spec : Prop :=
  ∀ n, (P72801522432065925.a n : ℤ) = A053755 n

end A053755

/-! ## A053755.P13416345768481307578

`Δ[C(2*n, 3)+n]`
-/

namespace A053755.P13416345768481307578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A053755.P13416345768481307578

namespace A053755

/-- `Δ[C(2*n, 3)+n]` -/
def P13416345768481307578.Spec : Prop :=
  ∀ n, P13416345768481307578.a n = A053755 n

theorem P13416345768481307578.correct : P13416345768481307578.Spec := by
  intro n
  simp only [A053755, Nat.add_sub_cancel, A053755.P13416345768481307578.f1, A053755.P13416345768481307578.a, A053755.P11748163540145338459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053755

/-! ## A053755.P10229517254826020776

`filter[n²+1, and(1, #)]`
-/

namespace A053755.P10229517254826020776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Nat.land 1 (f1 j) = 1) n)

end

end A053755.P10229517254826020776

namespace A053755

/-- `filter[n²+1, and(1, #)]` -/
def P10229517254826020776.Spec : Prop :=
  ∀ n, (P10229517254826020776.a n : ℤ) = A053755 n

end A053755

/-! ## A053755.P12859210403266847756

`ceil(1/acot((2*n)²))`
-/

namespace A053755.P12859210403266847756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / SequenceMachineLib.acot ((2 * n) ^ 2 : ℝ)⌉

end

end A053755.P12859210403266847756

namespace A053755

/-- `ceil(1/acot((2*n)²))` -/
def P12859210403266847756.Spec : Prop :=
  ∀ n, P12859210403266847756.a n = A053755 n

end A053755

/-! ## A053755.P16193369204300494671

`ceil(acot(2*n)^-2)`
-/

namespace A053755.P16193369204300494671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (2 * n : ℝ) ^ (-2 : ℤ)⌉

end

end A053755.P16193369204300494671

namespace A053755

/-- `ceil(acot(2*n)^-2)` -/
def P16193369204300494671.Spec : Prop :=
  ∀ n, P16193369204300494671.a n = A053755 n

end A053755

/-! ## A053755.P7696456454750296110

`(1/sin(acot(2*n)))²`
-/

namespace A053755.P7696456454750296110
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 / Real.sin (SequenceMachineLib.acot (2 * n : ℝ))) ^ 2

end

end A053755.P7696456454750296110

namespace A053755

/-- `(1/sin(acot(2*n)))²` -/
def P7696456454750296110.Spec : Prop :=
  ∀ n, P7696456454750296110.a n = (A053755 n : ℝ)

end A053755

/-! ## A053755.P1619142822835267195

`sin(acot(2*n))^-2`
-/

namespace A053755.P1619142822835267195
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (SequenceMachineLib.acot (2 * n : ℝ)) ^ (-2 : ℤ)

end

end A053755.P1619142822835267195

namespace A053755

/-- `sin(acot(2*n))^-2` -/
def P1619142822835267195.Spec : Prop :=
  ∀ n, P1619142822835267195.a n = (A053755 n : ℝ)

end A053755

/-! ## A053755.P1441864168793487266

`abs(ceil(cot(acot(2*n)²)))`
-/

namespace A053755.P1441864168793487266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈Real.cot (SequenceMachineLib.acot (2 * n : ℝ) ^ 2)⌉|

end

end A053755.P1441864168793487266

namespace A053755

/-- `abs(ceil(cot(acot(2*n)²)))` -/
def P1441864168793487266.Spec : Prop :=
  ∀ n, P1441864168793487266.a n = A053755 n

end A053755

/-! ## A053755.P17815876398147571059

`round(abs(cot(acot(2*n)²)))`
-/

namespace A053755.P17815876398147571059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway |Real.cot (SequenceMachineLib.acot (2 * n : ℝ) ^ 2)|

end

end A053755.P17815876398147571059

namespace A053755

/-- `round(abs(cot(acot(2*n)²)))` -/
def P17815876398147571059.Spec : Prop :=
  ∀ n, P17815876398147571059.a n = A053755 n

end A053755

/-! ## A053755.P18253626935188818466

`ceil(cot(cos(atan((2*n)²))))`
-/

namespace A053755.P18253626935188818466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (Real.cos (Real.arctan ((2 * n) ^ 2 : ℝ)))⌉

end

end A053755.P18253626935188818466

namespace A053755

/-- `ceil(cot(cos(atan((2*n)²))))` -/
def P18253626935188818466.Spec : Prop :=
  ∀ n, P18253626935188818466.a n = A053755 n

end A053755

/-! ## A053755.P16934038982012266461

`round(cot(cos(atan(2*n))²))`
-/

namespace A053755.P16934038982012266461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.cos (Real.arctan (2 * n : ℝ)) ^ 2))

end

end A053755.P16934038982012266461

namespace A053755

/-- `round(cot(cos(atan(2*n))²))` -/
def P16934038982012266461.Spec : Prop :=
  ∀ n, P16934038982012266461.a n = A053755 n

end A053755

/-!
# A053756: a(n)=a(a(n-3))+a(n-a(n-3)) if n>2 otherwise a(n)=1.

The programs for A053756, the canonical program `A053756.P11836168339049306794` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053756 has offset 0).

The definition of A053756 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-3))+a(n-a(n-3))` (program `A053756.P11836168339049306794`, by `A053756.P11836168339049306794.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053756.P11836168339049306794

`a(a(n-3))+a(n-a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A053756

/-- `a(a(n-3))+a(n-a(n-3))` -/
def P11836168339049306794.Spec : Prop :=
  ∀ n, (P11836168339049306794.a n : ℤ) = A053756 n

theorem P11836168339049306794.correct : P11836168339049306794.Spec := by
  intro n
  simp only [A053756]

end A053756

/-! ## A053756.P11062973610733485474

`ceil(A105224(A223578(n+1)²)/2)`
-/

namespace A053756.P11062973610733485474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A105224 (A223578 (n + 1) ^ 2).toNat : ℚ) / 2⌉

end

end A053756.P11062973610733485474

namespace A053756

/-- `ceil(A105224(A223578(n+1)²)/2)` -/
def P11062973610733485474.Spec : Prop :=
  ∀ n, P11062973610733485474.a n = A053756 n

end A053756

/-! ## A053756.P17593220278636257970

`A110654(A105224(A223578(n+1)²))`
-/

namespace A053756.P17593220278636257970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A105224 (A223578 (n + 1) ^ 2).toNat).toNat

end

end A053756.P17593220278636257970

namespace A053756

/-- `A110654(A105224(A223578(n+1)²))` -/
def P17593220278636257970.Spec : Prop :=
  ∀ n, P17593220278636257970.a n = A053756 n

end A053756

/-! ## A053756.P7208123632084160632

`A048766((A165453(n)+A055641(n))²)`
-/

namespace A053756.P7208123632084160632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 ((A165453 n + A055641 n) ^ 2).toNat

end

end A053756.P7208123632084160632

namespace A053756

/-- `A048766((A165453(n)+A055641(n))²)` -/
def P7208123632084160632.Spec : Prop :=
  ∀ n, P7208123632084160632.a n = A053756 n

end A053756

/-! ## A053756.P14908369314687559869

`A065033(floor(sqrt(A308918(2*n+3))))`
-/

namespace A053756.P14908369314687559869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.sqrt (A308918 (2 * n + 3))).toNat

end

end A053756.P14908369314687559869

namespace A053756

/-- `A065033(floor(sqrt(A308918(2*n+3))))` -/
def P14908369314687559869.Spec : Prop :=
  ∀ n, P14908369314687559869.a n = A053756 n

end A053756

/-!
# A053757: a(n) = a(a(n-4))+a(n-a(n-4)) if n>2 otherwise a(n)=1.

The programs for A053757, there is no canonical definition to state claims against.
-/

/-! ## A053757.P17960256130124318527

`a(a(n-4)+1)+a(n-a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053757.P17960256130124318527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  a (a (n - 4) + 1) + a (n - a (n - 4))

end

end A053757.P17960256130124318527

/-! ## A053757.P15333103977396459218

`∑[((A065621(n+1)^(A139445(n+5)%2))%5)%2]`
-/

namespace A053757.P15333103977396459218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (SequenceMachineLib.roundAway ((A065621 (n + 1) : ℚ) ^ (Int.tmod (A139445 (n + 5)) 2 : ℤ))) 5) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053757.P15333103977396459218

/-! ## A053757.P3479243484685961206

`A095791(A303362(A028815(n)))`
-/

namespace A053757.P3479243484685961206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095791 (A303362 (A028815 n).toNat).toNat

end

end A053757.P3479243484685961206

/-!
# A053758: a(n) = a(a(n-5))+a(n-a(n-5)) if n>2 otherwise a(n)=1.

The programs for A053758, there is no canonical definition to state claims against.
-/

/-! ## A053758.P11403832039162573846

`a(a(n-5)+2)+a(n-a(n-5))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053758.P11403832039162573846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  a (a (n - 5) + 2) + a (n - a (n - 5))

end

end A053758.P11403832039162573846

/-! ## A053758.P11735920345170088093

`A048766(record[lcm(n+2, A064989(n+1))])`
-/

namespace A053758.P11735920345170088093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 2 : ℤ) (A064989 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A053758.P11735920345170088093

/-!
# A053759: a(n) = a(a(n-6))+a(n-a(n-6)) if n>2 otherwise a(n)=1.

The programs for A053759, there is no canonical definition to state claims against.
-/

/-! ## A053759.P5628352429288619792

`a(a(n-6)+3)+a(n-a(n-6))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053759.P5628352429288619792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 1] fun n a =>
  a (a (n - 6) + 3) + a (n - a (n - 6))

end

end A053759.P5628352429288619792

/-!
# A053760: Smallest positive quadratic nonresidue modulo p, where p is the n-th prime.

The programs for A053760, there is no canonical definition to state claims against.
-/

/-! ## A053760.P709152934483738239

`A007918(A091382(n+1))`
-/

namespace A053760.P709152934483738239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A091382 (n + 1)).toNat

end

end A053760.P709152934483738239

/-! ## A053760.P7187675052712306086

`A091382(A028310(n)+1)`
-/

namespace A053760.P7187675052712306086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091382 (A028310 n + 1).toNat

end

end A053760.P7187675052712306086

/-! ## A053760.P7078348454087787728

`A091382(A348776(n+1))`
-/

namespace A053760.P7078348454087787728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091382 (A348776 (n + 1)).toNat

end

end A053760.P7078348454087787728

/-! ## A053760.P12411353147574150998

`A091382(A054977(n)+n)`
-/

namespace A053760.P12411353147574150998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091382 (A054977 n + (n : ℤ)).toNat

end

end A053760.P12411353147574150998

/-! ## A053760.P16220816461811816190

`A233583(A091382(n+1)+1)`
-/

namespace A053760.P16220816461811816190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A091382 (n + 1) + 1).toNat

end

end A053760.P16220816461811816190

/-! ## A053760.P6144147245972044808

`A151800(A091382(n+1)-1)`
-/

namespace A053760.P6144147245972044808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A091382 (n + 1) - 1).toNat

end

end A053760.P6144147245972044808

/-! ## A053760.P14657708071666732670

`A091382(n+1)+A000007(n)`
-/

namespace A053760.P14657708071666732670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091382 (n + 1) + A000007 n

end

end A053760.P14657708071666732670

/-! ## A053760.P11541018663149951845

`A091382(A254667(n+1))`
-/

namespace A053760.P11541018663149951845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091382 (A254667 (n + 1)).toNat

end

end A053760.P11541018663149951845

/-! ## A053760.P16511064269719102770

`A112046(A130290(n+1))`
-/

namespace A053760.P16511064269719102770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112046 (A130290 (n + 1)).toNat

end

end A053760.P16511064269719102770

/-! ## A053760.P7115921484905265503

`A227196(A000040(n+1))`
-/

namespace A053760.P7115921484905265503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (A000040 (n + 1)).toNat

end

end A053760.P7115921484905265503

/-! ## A053760.P10175528820461574396

`A227196(A008578(n+2))`
-/

namespace A053760.P10175528820461574396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (A008578 (n + 2)).toNat

end

end A053760.P10175528820461574396

/-! ## A053760.P18173242278713439326

`A227196(record[A006530(n+2)])`
-/

namespace A053760.P18173242278713439326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053760.P18173242278713439326

/-! ## A053760.P1793164517816233107

`A227196(record[A020639(n+2)])`
-/

namespace A053760.P1793164517816233107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053760.P1793164517816233107

/-! ## A053760.P4683177553842562191

`A227196(A014688(n+1)-(n+1))`
-/

namespace A053760.P4683177553842562191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (A014688 (n + 1) - (n + 1 : ℤ)).toNat

end

end A053760.P4683177553842562191

/-! ## A053760.P9843885415446904330

`p?[A033879(n+1)+A227196(n+1)-n]`
-/

namespace A053760.P9843885415446904330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + (A227196 (n + 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053760.P9843885415446904330

/-! ## A053760.P9936574628911537402

`p?[A057237(n+1)+A227196(n+1)-n]`
-/

namespace A053760.P9936574628911537402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1) + (A227196 (n + 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053760.P9936574628911537402

/-! ## A053760.P12356781377541939694

`A053761(A130291(n+1))`
-/

namespace A053760.P12356781377541939694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053761 (A130291 (n + 1)).toNat

end

end A053760.P12356781377541939694

/-! ## A053760.P8310446295457431104

`A020649(A116974(n+2))`
-/

namespace A053760.P8310446295457431104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020649 (A116974 (n + 2)).toNat

end

end A053760.P8310446295457431104

/-! ## A053760.P10441474790854445933

`A020649(A175787(n+2))`
-/

namespace A053760.P10441474790854445933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020649 (A175787 (n + 2)).toNat

end

end A053760.P10441474790854445933

/-! ## A053760.P3861158905655774537

`A227196(record[A014963(n+2)])`
-/

namespace A053760.P3861158905655774537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053760.P3861158905655774537

/-!
# A053761: Least positive integer k for which the Jacobi symbol (k|2*n-1) is less than 1, where 2*n-1 is a nonsquare; a(n)=0 if 2*n-1 is a square.

The programs for A053761, there is no canonical definition to state claims against.
-/

/-! ## A053761.P9581287091480620879

`A227196(2*n+1)%A007913(2*n+1)`
-/

namespace A053761.P9581287091480620879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227196 (2 * n + 1)) (A007913 (2 * n + 1))

end

end A053761.P9581287091480620879

/-! ## A053761.P9613287084413089509

`lcm(A062157(A003987(n)), A227196(2*n+1))`
-/

namespace A053761.P9613287084413089509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062157 (A003987 n).toNat) (A227196 (2 * n + 1))

end

end A053761.P9613287084413089509

/-! ## A053761.P10896733968134492735

`A227196(2*n+1)*A267866(2*n)`
-/

namespace A053761.P10896733968134492735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (2 * n + 1) * A267866 (2 * n)

end

end A053761.P10896733968134492735

/-! ## A053761.P12240798149833780069

`A227196(A007913(2*n+1))%A112070(n+1)`
-/

namespace A053761.P12240798149833780069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227196 (A007913 (2 * n + 1)).toNat) (A112070 (n + 1))

end

end A053761.P12240798149833780069

/-! ## A053761.P16299827588076757265

`A227196(A007913(2*n+1)%A112072(n+1))`
-/

namespace A053761.P16299827588076757265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (Int.tmod (A007913 (2 * n + 1)) (A112072 (n + 1))).toNat

end

end A053761.P16299827588076757265

/-!
# A053762: Number of 3-colored generalized Frobenius partitions of n.

The programs for A053762, there is no canonical definition to state claims against.
-/

/-! ## A053762.P6164212546690136940

`A187429(3*n)`
-/

namespace A053762.P6164212546690136940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187429 (3 * n)

end

end A053762.P6164212546690136940

/-! ## A053762.P7104176316329287500

`record[A187429(n)/A131713(n)]`
-/

namespace A053762.P7104176316329287500
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187429 n : ℚ) / (A131713 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053762.P7104176316329287500

/-! ## A053762.P1386309728513645488

`record[A187429(A102283(n)²+n)]`
-/

namespace A053762.P1386309728513645488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187429 (A102283 n ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053762.P1386309728513645488

/-! ## A053762.P436996998060899219

`record[A187429(record[A102283(n)+n])]`
-/

namespace A053762.P436996998060899219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187429 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053762.P436996998060899219

/-! ## A053762.P10058157063191829295

`record[A187427(n)]`
-/

namespace A053762.P10058157063191829295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053762.P10058157063191829295

/-! ## A053762.P6680644113433125794

`A187427(3*n)`
-/

namespace A053762.P6680644113433125794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187427 (3 * n)

end

end A053762.P6680644113433125794

/-! ## A053762.P10090176808581588640

`abs(A187427(A008585(n)))`
-/

namespace A053762.P10090176808581588640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187427 (A008585 n).toNat|

end

end A053762.P10090176808581588640

/-! ## A053762.P6406114229726595646

`abs(A187427(A016789(n)-2))`
-/

namespace A053762.P6406114229726595646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187427 (A016789 n - 2).toNat|

end

end A053762.P6406114229726595646

/-! ## A053762.P5299222973879075074

`abs(A187427(A005843(n)+n))`
-/

namespace A053762.P5299222973879075074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187427 (A005843 n + (n : ℤ)).toNat|

end

end A053762.P5299222973879075074

/-! ## A053762.P16492998730833438134

`A001489(n)+A187427(A016789(n)-2)+n`
-/

namespace A053762.P16492998730833438134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (A187427 (A016789 n - 2).toNat + (n : ℤ))

end

end A053762.P16492998730833438134

/-! ## A053762.P6707000135076963177

`A187427(A016789(n)-2)/A001221(A155767(n))`
-/

namespace A053762.P6707000135076963177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187427 (A016789 n - 2).toNat : ℚ) / (A001221 (A155767 n).toNat : ℚ)

end

end A053762.P6707000135076963177

/-!
# A053763: a(n) = 2^(n^2 - n).

The programs for A053763, the canonical program `A053763.P5108017109472184215` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053763 has offset 0).

The definition of A053763 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053763.P5108017109472184215

`2^(n²-n)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A053763

/-- `2^(n²-n)` -/
def P5108017109472184215.Spec : Prop :=
  ∀ n, P5108017109472184215.a n = (A053763 n : ℚ)

end A053763

/-! ## A053763.P9994793578916925186

`∑{#}[n²-n, C(n²-n, #)]`
-/

namespace A053763.P9994793578916925186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose ((n ^ 2 : ℤ) - (n : ℤ)).toNat k

end

end A053763.P9994793578916925186

namespace A053763

/-- `∑{#}[n²-n, C(n²-n, #)]` -/
def P9994793578916925186.Spec : Prop :=
  ∀ n, (P9994793578916925186.a n : ℤ) = A053763 n

end A053763

/-! ## A053763.P1041089609821765397

`4^C(n, 2)`
-/

namespace A053763.P1041089609821765397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ Nat.choose n 2

end

end A053763.P1041089609821765397

namespace A053763

/-- `4^C(n, 2)` -/
def P1041089609821765397.Spec : Prop :=
  ∀ n, (P1041089609821765397.a n : ℤ) = A053763 n

end A053763

/-! ## A053763.P1829982111953872370

`∏[floor(cosh(n*log(2)))]²`
-/

namespace A053763.P1829982111953872370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh ((n : ℝ) * Real.log (2 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A053763.P1829982111953872370

namespace A053763

/-- `∏[floor(cosh(n*log(2)))]²` -/
def P1829982111953872370.Spec : Prop :=
  ∀ n, P1829982111953872370.a n = A053763 n

end A053763

/-! ## A053763.P18213621152012186237

`(2^∑[floor(∑[tanh(n)])])²`
-/

namespace A053763.P18213621152012186237
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)) ^ 2

end

end A053763.P18213621152012186237

namespace A053763

/-- `(2^∑[floor(∑[tanh(n)])])²` -/
def P18213621152012186237.Spec : Prop :=
  ∀ n, P18213621152012186237.a n = (A053763 n : ℚ)

end A053763

/-!
# A053764: a(n) = 3^(n^2 - n).

The programs for A053764, the canonical program `A053764.P13219864971666079460` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053764 has offset 0).

The definition of A053764 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053764.P13219864971666079460

`3^(n²-n)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A053764

/-- `3^(n²-n)` -/
def P13219864971666079460.Spec : Prop :=
  ∀ n, P13219864971666079460.a n = (A053764 n : ℚ)

end A053764

/-! ## A053764.P551902595138282191

`9^C(n, 2)`
-/

namespace A053764.P551902595138282191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ Nat.choose n 2

end

end A053764.P551902595138282191

namespace A053764

/-- `9^C(n, 2)` -/
def P551902595138282191.Spec : Prop :=
  ∀ n, (P551902595138282191.a n : ℤ) = A053764 n

end A053764

/-! ## A053764.P8162639072312436207

`(3^∑[floor(∑[tanh(n)])])²`
-/

namespace A053764.P8162639072312436207
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)) ^ 2

end

end A053764.P8162639072312436207

namespace A053764

/-- `(3^∑[floor(∑[tanh(n)])])²` -/
def P8162639072312436207.Spec : Prop :=
  ∀ n, P8162639072312436207.a n = (A053764 n : ℚ)

end A053764

/-! ## A053764.P7567259720304444589

`∏[9*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A053764.P7567259720304444589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A053764.P7567259720304444589

namespace A053764

/-- `∏[9*a(n-1)]` -/
def P7567259720304444589.Spec : Prop :=
  ∀ n, (P7567259720304444589.a n : ℤ) = A053764 n

end A053764

/-! ## A053764.P2146140911342610821

`or(1, 3^((n-1)*n))`
-/

namespace A053764.P2146140911342610821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (((n : ℤ) - 1) * (n : ℤ) : ℤ)))

end

end A053764.P2146140911342610821

namespace A053764

/-- `or(1, 3^((n-1)*n))` -/
def P2146140911342610821.Spec : Prop :=
  ∀ n, P2146140911342610821.a n = A053764 n

end A053764

/-!
# A053765: a(n) = 4^(n^2 - n).

The programs for A053765, the canonical program `A053765.P6216357074586200018` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053765 has offset 0).

The definition of A053765 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053765.P6216357074586200018

`4^(n²-n)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A053765

/-- `4^(n²-n)` -/
def P6216357074586200018.Spec : Prop :=
  ∀ n, P6216357074586200018.a n = (A053765 n : ℚ)

end A053765

/-! ## A053765.P1396608777467771988

`16^C(n, 2)`
-/

namespace A053765.P1396608777467771988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 ^ Nat.choose n 2

end

end A053765.P1396608777467771988

namespace A053765

/-- `16^C(n, 2)` -/
def P1396608777467771988.Spec : Prop :=
  ∀ n, (P1396608777467771988.a n : ℤ) = A053765 n

end A053765

/-! ## A053765.P13309335314766869813

`(lt[∑{p}[n, #], 3]^n)²`
-/

namespace A053765.P13309335314766869813
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f3 j) n ^ n) ^ 2

end

end A053765.P13309335314766869813

namespace A053765

/-- `(lt[∑{p}[n, #], 3]^n)²` -/
def P13309335314766869813.Spec : Prop :=
  ∀ n, (P13309335314766869813.a n : ℤ) = A053765 n

end A053765

/-! ## A053765.P3025188086500849557

`A053763(n)²`
-/

namespace A053765.P3025188086500849557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053763 n ^ 2

end

end A053765.P3025188086500849557

namespace A053765

/-- `A053763(n)²` -/
def P3025188086500849557.Spec : Prop :=
  ∀ n, P3025188086500849557.a n = A053765 n

end A053765

/-! ## A053765.P14627889085720167013

`A006125(n)²²`
-/

namespace A053765.P14627889085720167013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006125 n ^ 2) ^ 2

end

end A053765.P14627889085720167013

namespace A053765

/-- `A006125(n)²²` -/
def P14627889085720167013.Spec : Prop :=
  ∀ n, P14627889085720167013.a n = A053765 n

end A053765

/-!
# A053766: a(n) = 5^(n^2 - n).

The programs for A053766, the canonical program `A053766.P12117091817789847808` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053766 has offset 0).

The definition of A053766 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053766.P12117091817789847808

`5^(n²-n)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A053766

/-- `5^(n²-n)` -/
def P12117091817789847808.Spec : Prop :=
  ∀ n, P12117091817789847808.a n = (A053766 n : ℚ)

end A053766

/-! ## A053766.P1070102441263466724

`25^C(n, 2)`
-/

namespace A053766.P1070102441263466724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 ^ Nat.choose n 2

end

end A053766.P1070102441263466724

namespace A053766

/-- `25^C(n, 2)` -/
def P1070102441263466724.Spec : Prop :=
  ∀ n, (P1070102441263466724.a n : ℤ) = A053766 n

end A053766

/-! ## A053766.P17874219608597243221

`∏[25*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A053766.P17874219608597243221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  25 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A053766.P17874219608597243221

namespace A053766

/-- `∏[25*a(n-1)]` -/
def P17874219608597243221.Spec : Prop :=
  ∀ n, (P17874219608597243221.a n : ℤ) = A053766 n

end A053766

/-! ## A053766.P8504614773822010202

`or(1, (5^(n-1))^n)`
-/

namespace A053766.P8504614773822010202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway (((5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ n))

end

end A053766.P8504614773822010202

namespace A053766

/-- `or(1, (5^(n-1))^n)` -/
def P8504614773822010202.Spec : Prop :=
  ∀ n, P8504614773822010202.a n = A053766 n

end A053766

/-! ## A053766.P2709157899024348395

`(5^∑[floor(n²*acot(n))])²`
-/

namespace A053766.P2709157899024348395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℝ) * SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)) ^ 2

end

end A053766.P2709157899024348395

namespace A053766

/-- `(5^∑[floor(n²*acot(n))])²` -/
def P2709157899024348395.Spec : Prop :=
  ∀ n, P2709157899024348395.a n = (A053766 n : ℚ)

end A053766

/-!
# A053767: Sum of first n composite numbers.

The programs for A053767, the canonical program `A053767.P11805917997260904903` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053767 has offset 0).

The definition of A053767 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051349, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053767.P11805917997260904903

`A051349(n+1)-1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A053767

/-- `A051349(n+1)-1` -/
def P11805917997260904903.Spec : Prop :=
  ∀ n, P11805917997260904903.a n = A053767 n

theorem P11805917997260904903.correct : P11805917997260904903.Spec := by
  intro n
  simp only [A053767]

end A053767

/-! ## A053767.P14173032586377999834

`∑[comp[A006530(1+n)]]`
-/

namespace A053767.P14173032586377999834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (1 + n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053767.P14173032586377999834

namespace A053767

/-- `∑[comp[A006530(1+n)]]` -/
def P14173032586377999834.Spec : Prop :=
  ∀ n, (P14173032586377999834.a n : ℤ) = A053767 n

end A053767

/-! ## A053767.P14351285011229099233

`∑[comp[A008578(n+1)]]`
-/

namespace A053767.P14351285011229099233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053767.P14351285011229099233

namespace A053767

/-- `∑[comp[A008578(n+1)]]` -/
def P14351285011229099233.Spec : Prop :=
  ∀ n, (P14351285011229099233.a n : ℤ) = A053767 n

end A053767

/-! ## A053767.P3490778279668557051

`∑[comp[A020639(n+1)]]`
-/

namespace A053767.P3490778279668557051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053767.P3490778279668557051

namespace A053767

/-- `∑[comp[A020639(n+1)]]` -/
def P3490778279668557051.Spec : Prop :=
  ∀ n, (P3490778279668557051.a n : ℤ) = A053767 n

end A053767

/-! ## A053767.P9937053402351267968

`∑[comp[A025473(n+1)]]`
-/

namespace A053767.P9937053402351267968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053767.P9937053402351267968

namespace A053767

/-- `∑[comp[A025473(n+1)]]` -/
def P9937053402351267968.Spec : Prop :=
  ∀ n, (P9937053402351267968.a n : ℤ) = A053767 n

end A053767

/-! ## A053767.P15895615081427261528

`∑[comp[A028815(n)-1]]`
-/

namespace A053767.P15895615081427261528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053767.P15895615081427261528

namespace A053767

/-- `∑[comp[A028815(n)-1]]` -/
def P15895615081427261528.Spec : Prop :=
  ∀ n, (P15895615081427261528.a n : ℤ) = A053767 n

end A053767

/-! ## A053767.P16144428923804169542

`∑[comp[A158611(n+2)]]`
-/

namespace A053767.P16144428923804169542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053767.P16144428923804169542

namespace A053767

/-- `∑[comp[A158611(n+2)]]` -/
def P16144428923804169542.Spec : Prop :=
  ∀ n, (P16144428923804169542.a n : ℤ) = A053767 n

end A053767

/-! ## A053767.P9900111414524290756

`∑[A018252(n+1)]-1`
-/

namespace A053767.P9900111414524290756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A053767.P9900111414524290756

namespace A053767

/-- `∑[A018252(n+1)]-1` -/
def P9900111414524290756.Spec : Prop :=
  ∀ n, P9900111414524290756.a n = A053767 n

end A053767

/-! ## A053767.P17997528291598587890

`∑[A141468(n+2)]-1`
-/

namespace A053767.P17997528291598587890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A053767.P17997528291598587890

namespace A053767

/-- `∑[A141468(n+2)]-1` -/
def P17997528291598587890.Spec : Prop :=
  ∀ n, P17997528291598587890.a n = A053767 n

end A053767

/-! ## A053767.P14454772087722039763

`∑[A073425(n)+n]+n`
-/

namespace A053767.P14454772087722039763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073425 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A053767.P14454772087722039763

namespace A053767

/-- `∑[A073425(n)+n]+n` -/
def P14454772087722039763.Spec : Prop :=
  ∀ n, P14454772087722039763.a n = A053767 n

end A053767

/-! ## A053767.P15190630831408542083

`∑[∑[A054546(n+1)]]-1`
-/

namespace A053767.P15190630831408542083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A053767.P15190630831408542083

namespace A053767

/-- `∑[∑[A054546(n+1)]]-1` -/
def P15190630831408542083.Spec : Prop :=
  ∀ n, P15190630831408542083.a n = A053767 n

end A053767

/-! ## A053767.P17400425924985767127

`∑[comp[A006093(n+1)]]+n`
-/

namespace A053767.P17400425924985767127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A053767.P17400425924985767127

namespace A053767

/-- `∑[comp[A006093(n+1)]]+n` -/
def P17400425924985767127.Spec : Prop :=
  ∀ n, (P17400425924985767127.a n : ℤ) = A053767 n

end A053767

/-! ## A053767.P18078529564316256129

`∑[A222307(2*n+1)]-1`
-/

namespace A053767.P18078529564316256129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A053767.P18078529564316256129

namespace A053767

/-- `∑[A222307(2*n+1)]-1` -/
def P18078529564316256129.Spec : Prop :=
  ∀ n, P18078529564316256129.a n = A053767 n

end A053767

/-! ## A053767.P13301634934547470566

`∑[eq[1, A005171(n+1)]]+n`
-/

namespace A053767.P13301634934547470566
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A053767.P13301634934547470566

namespace A053767

/-- `∑[eq[1, A005171(n+1)]]+n` -/
def P13301634934547470566.Spec : Prop :=
  ∀ n, (P13301634934547470566.a n : ℤ) = A053767 n

end A053767

/-! ## A053767.P8266977500995873816

`∑[comp[A000040(n+1)-1]]+n`
-/

namespace A053767.P8266977500995873816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A053767.P8266977500995873816

namespace A053767

/-- `∑[comp[A000040(n+1)-1]]+n` -/
def P8266977500995873816.Spec : Prop :=
  ∀ n, (P8266977500995873816.a n : ℤ) = A053767 n

end A053767

/-! ## A053767.P8741370972506677249

`∑[∪[(2*n)², A018252(n+2)]]`
-/

namespace A053767.P8741370972506677249
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053767.P8741370972506677249

namespace A053767

/-- `∑[∪[(2*n)², A018252(n+2)]]` -/
def P8741370972506677249.Spec : Prop :=
  ∀ n, (P8741370972506677249.a n : ℤ) = A053767 n

end A053767

/-! ## A053767.P15110741435099117162

`A018252(2*n+1-n)+a(n-1)` with `a(0)=0`
-/

namespace A053767.P15110741435099117162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A018252 (2 * n + 1 - n) + a (n - 1)

end

end A053767.P15110741435099117162

namespace A053767

/-- `A018252(2*n+1-n)+a(n-1)` -/
def P15110741435099117162.Spec : Prop :=
  ∀ n, P15110741435099117162.a n = A053767 n

end A053767

/-! ## A053767.P9718343239294422641

`A161569(n+1)+A000096(n)`
-/

namespace A053767.P9718343239294422641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161569 (n + 1) + A000096 n

end

end A053767.P9718343239294422641

namespace A053767

/-- `A161569(n+1)+A000096(n)` -/
def P9718343239294422641.Spec : Prop :=
  ∀ n, P9718343239294422641.a n = A053767 n

end A053767

/-! ## A053767.P1793902474847367420

`A237589(n+1)-A071411(n+1)`
-/

namespace A053767.P1793902474847367420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1) - A071411 (n + 1)

end

end A053767.P1793902474847367420

namespace A053767

/-- `A237589(n+1)-A071411(n+1)` -/
def P1793902474847367420.Spec : Prop :=
  ∀ n, P1793902474847367420.a n = A053767 n

theorem P1793902474847367420.correct : P1793902474847367420.Spec := by
  intro n
  simp only [A053767, Nat.add_sub_cancel, A053767.P1793902474847367420.a, A053767.P11805917997260904903.a, A051349, A051349.P2414547720400107792.a, A071411, A071411.P1894007710603126055.a, A237589, A237589.P15064465826932885110.a, A007504, A007504.P14310834286015847203.a, A014284, A014284.P18183547548072881472.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053767

/-! ## A053767.P5982507110817354673

`A175967(n+2)-2`
-/

namespace A053767.P5982507110817354673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175967 (n + 2) - 2

end

end A053767.P5982507110817354673

namespace A053767

/-- `A175967(n+2)-2` -/
def P5982507110817354673.Spec : Prop :=
  ∀ n, P5982507110817354673.a n = A053767 n

theorem P5982507110817354673.correct : P5982507110817354673.Spec := by
  intro n
  simp only [A053767, Nat.add_sub_cancel, A053767.P5982507110817354673.a, A053767.P11805917997260904903.a, A051349, A051349.P2414547720400107792.a, A175967, A175967.P17254181130027743458.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053767

/-! ## A053767.P3255740156228559696

`∑[lt[∑{p}[n+1, #], n+1]]+n`
-/

namespace A053767.P3255740156228559696
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A053767.P3255740156228559696

namespace A053767

/-- `∑[lt[∑{p}[n+1, #], n+1]]+n` -/
def P3255740156228559696.Spec : Prop :=
  ∀ n, (P3255740156228559696.a n : ℤ) = A053767 n

end A053767

/-!
# A053768: Numbers n such that sum of the first n composite numbers is a perfect square.

The programs for A053768, there is no canonical definition to state claims against.
-/

/-! ## A053768.P16756846128185087290

`A227249(∑[runs[A229820(n)]])`
-/

namespace A053768.P16756846128185087290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229820 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227249 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053768.P16756846128185087290

/-! ## A053768.P18214848596235226482

`A227249(A258198(n)+1+n)`
-/

namespace A053768.P18214848596235226482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227249 (A258198 n + 1 + (n : ℤ)).toNat

end

end A053768.P18214848596235226482

/-! ## A053768.P4911700049521792134

`A227249(∑[char[A046090(n)]+1])`
-/

namespace A053768.P4911700049521792134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046090 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227249 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053768.P4911700049521792134

/-! ## A053768.P7088313881994317619

`A227249(comp[A047909(n+1)]+1)`
-/

namespace A053768.P7088313881994317619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047909 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227249 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A053768.P7088313881994317619

/-!
# A053769: Squares arising in A053768.

The programs for A053769, there is no canonical definition to state claims against.
-/

/-! ## A053769.P10269212567215331837

`A053767(A053768(n+1))`
-/

namespace A053769.P10269212567215331837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (A053768 (n + 1)).toNat

end

end A053769.P10269212567215331837

/-!
# A053770: Number of n X n binary matrices of order dividing 5 (i.e., number of solutions of X^5=I in GL(n,2)).

The programs for A053770, there is no canonical definition to state claims against.
-/

/-! ## A053770.P16554263880590860379

`A053775(n+1)-A023443(A053722(n+1))`
-/

namespace A053770.P16554263880590860379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053775 (n + 1) - A023443 (A053722 (n + 1)).toNat

end

end A053770.P16554263880590860379

/-!
# A053775: Number of n X n binary matrices of order dividing 10 (i.e., number of solutions of X^10=I in GL(n,2)).

The programs for A053775, there is no canonical definition to state claims against.
-/

/-! ## A053775.P10030543604643041195

`A053770(n+1)+A023443(A053722(n+1))`
-/

namespace A053775.P10030543604643041195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053770 (n + 1) + A023443 (A053722 (n + 1)).toNat

end

end A053775.P10030543604643041195

/-!
# A053778: First of four consecutive primes that comprise two sets of twin primes.

The programs for A053778, the canonical program `A053778.P10317981774552529935` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053778 has offset 1).

The definition of A053778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053778.P7702592410451695288

`A089628(n+4)`
-/

namespace A053778.P7702592410451695288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089628 (n + 4)

end

end A053778.P7702592410451695288

namespace A053778

/-- `A089628(n+4)` -/
def P7702592410451695288.Spec : Prop :=
  ∀ n, P7702592410451695288.a n = A053778 (n + 1)

end A053778

/-! ## A053778.P7102090789445442946

`or(1, A089628(A020705(n)))`
-/

namespace A053778.P7102090789445442946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A089628 (A020705 n).toNat)

end

end A053778.P7102090789445442946

namespace A053778

/-- `or(1, A089628(A020705(n)))` -/
def P7102090789445442946.Spec : Prop :=
  ∀ n, P7102090789445442946.a n = A053778 (n + 1)

end A053778

/-! ## A053778.P10317981774552529935

`A001359(A242881(n+1)-1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A053778

/-- `A001359(A242881(n+1)-1)` -/
def P10317981774552529935.Spec : Prop :=
  ∀ n, P10317981774552529935.a n = A053778 (n + 1)

theorem P10317981774552529935.correct : P10317981774552529935.Spec := by
  intro n
  simp only [A053778, Nat.add_sub_cancel]

end A053778

/-! ## A053778.P11396172868138623319

`∩[A001359(n+1), A022885(n+1)]`
-/

namespace A053778.P11396172868138623319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053778.P11396172868138623319

namespace A053778

/-- `∩[A001359(n+1), A022885(n+1)]` -/
def P11396172868138623319.Spec : Prop :=
  ∀ n, (P11396172868138623319.a n : ℤ) = A053778 (n + 1)

end A053778

/-! ## A053778.P9838541199043762932

`∩[A022885(n+1), A378983(n+1)]`
-/

namespace A053778.P9838541199043762932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053778.P9838541199043762932

namespace A053778

/-- `∩[A022885(n+1), A378983(n+1)]` -/
def P9838541199043762932.Spec : Prop :=
  ∀ n, (P9838541199043762932.a n : ℤ) = A053778 (n + 1)

end A053778

/-! ## A053778.P6608069685983016913

`A124588(A242881(n+1))`
-/

namespace A053778.P6608069685983016913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (A242881 (n + 1)).toNat

end

end A053778.P6608069685983016913

namespace A053778

/-- `A124588(A242881(n+1))` -/
def P6608069685983016913.Spec : Prop :=
  ∀ n, P6608069685983016913.a n = A053778 (n + 1)

end A053778

/-! ## A053778.P11719397269487619056

`A111166(A242881(n+1)-1)`
-/

namespace A053778.P11719397269487619056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (A242881 (n + 1) - 1).toNat

end

end A053778.P11719397269487619056

namespace A053778

/-- `A111166(A242881(n+1)-1)` -/
def P11719397269487619056.Spec : Prop :=
  ∀ n, P11719397269487619056.a n = A053778 (n + 1)

end A053778

/-! ## A053778.P3712779197117699229

`A001359(eq[2, A242767(n+2)])`
-/

namespace A053778.P3712779197117699229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053778.P3712779197117699229

namespace A053778

/-- `A001359(eq[2, A242767(n+2)])` -/
def P3712779197117699229.Spec : Prop :=
  ∀ n, P3712779197117699229.a n = A053778 (n + 1)

end A053778

/-! ## A053778.P6774597823366028964

`A111166(eq[2, A242767(n+2)])`
-/

namespace A053778.P6774597823366028964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053778.P6774597823366028964

namespace A053778

/-- `A111166(eq[2, A242767(n+2)])` -/
def P6774597823366028964.Spec : Prop :=
  ∀ n, P6774597823366028964.a n = A053778 (n + 1)

end A053778

/-! ## A053778.P6525573245169548785

`A001359(eq[2, A027833(n+1)]+1)`
-/

namespace A053778.P6525573245169548785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A053778.P6525573245169548785

namespace A053778

/-- `A001359(eq[2, A027833(n+1)]+1)` -/
def P6525573245169548785.Spec : Prop :=
  ∀ n, P6525573245169548785.a n = A053778 (n + 1)

end A053778

/-! ## A053778.P14809075957201242475

`∩[A022885(n+1), A054799(n+1)]`
-/

namespace A053778.P14809075957201242475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053778.P14809075957201242475

namespace A053778

/-- `∩[A022885(n+1), A054799(n+1)]` -/
def P14809075957201242475.Spec : Prop :=
  ∀ n, (P14809075957201242475.a n : ℤ) = A053778 (n + 1)

end A053778

/-! ## A053778.P851915964821738292

`∩[A022885(n+1), A111166(n+1)]`
-/

namespace A053778.P851915964821738292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053778.P851915964821738292

namespace A053778

/-- `∩[A022885(n+1), A111166(n+1)]` -/
def P851915964821738292.Spec : Prop :=
  ∀ n, (P851915964821738292.a n : ℤ) = A053778 (n + 1)

end A053778

/-! ## A053778.P14476707375542088052

`∩[A022885(n+1), A124588(n+1)]`
-/

namespace A053778.P14476707375542088052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053778.P14476707375542088052

namespace A053778

/-- `∩[A022885(n+1), A124588(n+1)]` -/
def P14476707375542088052.Spec : Prop :=
  ∀ n, (P14476707375542088052.a n : ℤ) = A053778 (n + 1)

end A053778

/-! ## A053778.P8367264005624537537

`∩[A022885(n+1), A181747(n+1)]`
-/

namespace A053778.P8367264005624537537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053778.P8367264005624537537

namespace A053778

/-- `∩[A022885(n+1), A181747(n+1)]` -/
def P8367264005624537537.Spec : Prop :=
  ∀ n, (P8367264005624537537.a n : ℤ) = A053778 (n + 1)

end A053778

/-! ## A053778.P18146247532817249716

`record[gcd(A001359(n+2), A048614(n+2))]`
-/

namespace A053778.P18146247532817249716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001359 (n + 2)) (A048614 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053778.P18146247532817249716

namespace A053778

/-- `record[gcd(A001359(n+2), A048614(n+2))]` -/
def P18146247532817249716.Spec : Prop :=
  ∀ n, (P18146247532817249716.a n : ℤ) = A053778 (n + 1)

end A053778

/-! ## A053778.P6174911382079817481

`∩[A022885(n+1), A063700(n+1)]`
-/

namespace A053778.P6174911382079817481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053778.P6174911382079817481

namespace A053778

/-- `∩[A022885(n+1), A063700(n+1)]` -/
def P6174911382079817481.Spec : Prop :=
  ∀ n, (P6174911382079817481.a n : ℤ) = A053778 (n + 1)

end A053778

/-! ## A053778.P8421150774242771798

`∩[A022885(n+1), A280255(n+1)]`
-/

namespace A053778.P8421150774242771798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053778.P8421150774242771798

namespace A053778

/-- `∩[A022885(n+1), A280255(n+1)]` -/
def P8421150774242771798.Spec : Prop :=
  ∀ n, (P8421150774242771798.a n : ℤ) = A053778 (n + 1)

end A053778

/-! ## A053778.P9751660410204511292

`∩[A022885(n+1), A063693(n+1)]`
-/

namespace A053778.P9751660410204511292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053778.P9751660410204511292

namespace A053778

/-- `∩[A022885(n+1), A063693(n+1)]` -/
def P9751660410204511292.Spec : Prop :=
  ∀ n, (P9751660410204511292.a n : ℤ) = A053778 (n + 1)

end A053778

/-! ## A053778.P1639998575746577895

`∩[A022885(n+1), A394509(n+1)]`
-/

namespace A053778.P1639998575746577895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053778.P1639998575746577895

namespace A053778

/-- `∩[A022885(n+1), A394509(n+1)]` -/
def P1639998575746577895.Spec : Prop :=
  ∀ n, (P1639998575746577895.a n : ℤ) = A053778 (n + 1)

end A053778

/-! ## A053778.P14485497579544761342

`∩[A022885(n+1), A395788(n+1)]`
-/

namespace A053778.P14485497579544761342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053778.P14485497579544761342

namespace A053778

/-- `∩[A022885(n+1), A395788(n+1)]` -/
def P14485497579544761342.Spec : Prop :=
  ∀ n, (P14485497579544761342.a n : ℤ) = A053778 (n + 1)

end A053778

/-!
# A053779: Numbers k such that the sum of the first k composite numbers is palindromic.

The programs for A053779, there is no canonical definition to state claims against.
-/

/-! ## A053779.P883077336314080834

`A305800(A057959(n+1))-2`
-/

namespace A053779.P883077336314080834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (A057959 (n + 1)).toNat - 2

end

end A053779.P883077336314080834

/-! ## A053779.P8949743005668869245

`A065855(A057959(n+1))`
-/

namespace A053779.P8949743005668869245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A057959 (n + 1)).toNat

end

end A053779.P8949743005668869245

/-! ## A053779.P1563229521427116743

`A026238(A057959(n+1))`
-/

namespace A053779.P1563229521427116743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A057959 (n + 1)).toNat

end

end A053779.P1563229521427116743

/-!
# A053780: Palindromes arising in A053779.

The programs for A053780, there is no canonical definition to state claims against.
-/

/-! ## A053780.P7874018972014015984

`A053767(A053779(n+1))`
-/

namespace A053780.P7874018972014015984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (A053779 (n + 1)).toNat

end

end A053780.P7874018972014015984

/-! ## A053780.P116006022662275656

`A101256(A057959(n+1))`
-/

namespace A053780.P116006022662275656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101256 (A057959 (n + 1)).toNat

end

end A053780.P116006022662275656

/-! ## A053780.P13030738503317415849

`∩[A056525(n+1), A053767(n)]`
-/

namespace A053780.P13030738503317415849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053780.P13030738503317415849

/-! ## A053780.P2633323641894899724

`∩[A083851(n+1), A053767(n)]`
-/

namespace A053780.P2633323641894899724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053780.P2633323641894899724

/-!
# A053781: Numbers k that divide the sum of the first k composite numbers.

The programs for A053781, there is no canonical definition to state claims against.
-/

/-! ## A053781.P13039805505947404882

`A073262(n+1)/A073263(n+1)`
-/

namespace A053781.P13039805505947404882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073262 (n + 1) : ℚ) / (A073263 (n + 1) : ℚ)

end

end A053781.P13039805505947404882

/-! ## A053781.P10147152329784073380

`record[gcd(n+1, A053767(n+1))]`
-/

namespace A053781.P10147152329784073380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A053767 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053781.P10147152329784073380

/-! ## A053781.P17329512732027806612

`record[A028310(gcd(n, A053767(n)))]`
-/

namespace A053781.P17329512732027806612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (n : ℤ) (A053767 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053781.P17329512732027806612

/-! ## A053781.P5924800418341326961

`record[gcd(A013919(n+1), A013921(n+1))]`
-/

namespace A053781.P5924800418341326961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013919 (n + 1)) (A013921 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053781.P5924800418341326961

/-! ## A053781.P5349519795606480405

`eq[A053767(n)%A028310(n), A000007(n)]`
-/

namespace A053781.P5349519795606480405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053767 n) (A028310 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053781.P5349519795606480405

/-!
# A053782: Numbers k such that the sum of the first k composite numbers is prime.

The programs for A053782, the canonical program `A053782.P10640351916810255333` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053782 has offset 1).

The definition of A053782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 606 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053782.P10640351916810255333

`eq[C(2, n+2), char[A013919(n+1)]]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A053782

/-- `eq[C(2, n+2), char[A013919(n+1)]]` -/
def P10640351916810255333.Spec : Prop :=
  ∀ n, (P10640351916810255333.a n : ℤ) = A053782 (n + 1)

theorem P10640351916810255333.correct : P10640351916810255333.Spec := by
  intro n
  simp only [A053782, Nat.add_sub_cancel]

end A053782

/-! ## A053782.P11467400079187724110

`eq[char[A013919(n+1)], A000007(n)]`
-/

namespace A053782.P11467400079187724110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013919 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A053782.P11467400079187724110

namespace A053782

/-- `eq[char[A013919(n+1)], A000007(n)]` -/
def P11467400079187724110.Spec : Prop :=
  ∀ n, (P11467400079187724110.a n : ℤ) = A053782 (n + 1)

end A053782

/-! ## A053782.P17930590029273204639

`eq[char[A013919(n+1)], A000038(n)]`
-/

namespace A053782.P17930590029273204639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013919 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A053782.P17930590029273204639

namespace A053782

/-- `eq[char[A013919(n+1)], A000038(n)]` -/
def P17930590029273204639.Spec : Prop :=
  ∀ n, (P17930590029273204639.a n : ℤ) = A053782 (n + 1)

end A053782

/-! ## A053782.P16148732090897939755

`eq[2, ∏{e}[∑[A018252(n+2)], #+1]]+1`
-/

namespace A053782.P16148732090897939755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, (Nat.factorization (f3 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053782.P16148732090897939755

namespace A053782

/-- `eq[2, ∏{e}[∑[A018252(n+2)], #+1]]+1` -/
def P16148732090897939755.Spec : Prop :=
  ∀ n, (P16148732090897939755.a n : ℤ) = A053782 (n + 1)

end A053782

/-! ## A053782.P16093372466618726278

`eq[1, A001222(A053767(n+1))]+1`
-/

namespace A053782.P16093372466618726278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A053767 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053782.P16093372466618726278

namespace A053782

/-- `eq[1, A001222(A053767(n+1))]+1` -/
def P16093372466618726278.Spec : Prop :=
  ∀ n, (P16093372466618726278.a n : ℤ) = A053782 (n + 1)

end A053782

/-!
# A053783: (1+e)-harmonic numbers: harmonic mean of (1+e)-divisors is an integer.

The programs for A053783, there is no canonical definition to state claims against.
-/

/-! ## A053783.P10802140632909262764

`A109895(A120899(n))`
-/

namespace A053783.P10802140632909262764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109895 (A120899 n).toNat

end

end A053783.P10802140632909262764

/-!
# A053785: Nextprime(n^4) - n^4.

The programs for A053785, the canonical program `A053785.P3643210725324420680` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053785 has offset 1).

The definition of A053785 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053785.P3643210725324420680

`A053786(n+1)-(n+1)²²`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A053785

/-- `A053786(n+1)-(n+1)²²` -/
def P3643210725324420680.Spec : Prop :=
  ∀ n, P3643210725324420680.a n = A053785 (n + 1)

theorem P3643210725324420680.correct : P3643210725324420680.Spec := by
  intro n
  simp only [A053785, Nat.add_sub_cancel]

end A053785

/-! ## A053785.P1965887273893058651

`A028310(A053786(n+1)%(n+1)²)`
-/

namespace A053785.P1965887273893058651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A053786 (n + 1)) ((n + 1) ^ 2 : ℤ)).toNat

end

end A053785.P1965887273893058651

namespace A053785

/-- `A028310(A053786(n+1)%(n+1)²)` -/
def P1965887273893058651.Spec : Prop :=
  ∀ n, P1965887273893058651.a n = A053785 (n + 1)

end A053785

/-! ## A053785.P4364156735902139926

`A053786(n+1)-1-A123865(n+1)`
-/

namespace A053785.P4364156735902139926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053786 (n + 1) - 1 - A123865 (n + 1)

end

end A053785.P4364156735902139926

namespace A053785

/-- `A053786(n+1)-1-A123865(n+1)` -/
def P4364156735902139926.Spec : Prop :=
  ∀ n, P4364156735902139926.a n = A053785 (n + 1)

theorem P4364156735902139926.correct : P4364156735902139926.Spec := by
  intro n
  simp only [A053785, Nat.add_sub_cancel, A053785.P4364156735902139926.a, A053785.P3643210725324420680.a, A053786, A053786.P2010636210610092813.a, A123865, A123865.P509384507853173445.a, A000583, A000583.P14547500281748394449.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053785

/-! ## A053785.P14779469804762337282

`(A053786(n+1)+1)%A096172(n+1)`
-/

namespace A053785.P14779469804762337282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053786 (n + 1) + 1) (A096172 (n + 1))

end

end A053785.P14779469804762337282

namespace A053785

/-- `(A053786(n+1)+1)%A096172(n+1)` -/
def P14779469804762337282.Spec : Prop :=
  ∀ n, P14779469804762337282.a n = A053785 (n + 1)

end A053785

/-! ## A053785.P18138385920032170692

`A028310(A053786(n+1)-A000583(n+1))`
-/

namespace A053785.P18138385920032170692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A053786 (n + 1) - A000583 (n + 1)).toNat

end

end A053785.P18138385920032170692

namespace A053785

/-- `A028310(A053786(n+1)-A000583(n+1))` -/
def P18138385920032170692.Spec : Prop :=
  ∀ n, P18138385920032170692.a n = A053785 (n + 1)

end A053785

/-! ## A053785.P12248712687557370514

`A053000((n+1)²)`
-/

namespace A053785.P12248712687557370514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 ((n + 1) ^ 2)

end

end A053785.P12248712687557370514

namespace A053785

/-- `A053000((n+1)²)` -/
def P12248712687557370514.Spec : Prop :=
  ∀ n, P12248712687557370514.a n = A053785 (n + 1)

end A053785

/-! ## A053785.P11476080858608613139

`A053000((n+1)^2)%(n+7)`
-/

namespace A053785.P11476080858608613139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053000 ((n + 1) ^ 2)) (n + 7 : ℤ)

end

end A053785.P11476080858608613139

namespace A053785

/-- `A053000((n+1)^2)%(n+7)` -/
def P11476080858608613139.Spec : Prop :=
  ∀ n, P11476080858608613139.a n = A053785 (n + 1)

end A053785

/-! ## A053785.P13162492152442351853

`A007491((n+1)²)-(n+1)²²`
-/

namespace A053785.P13162492152442351853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 ((n + 1) ^ 2) - (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A053785.P13162492152442351853

namespace A053785

/-- `A007491((n+1)²)-(n+1)²²` -/
def P13162492152442351853.Spec : Prop :=
  ∀ n, P13162492152442351853.a n = A053785 (n + 1)

end A053785

/-! ## A053785.P2534961464909128923

`A000027(A053000(∑[2*n+1]))`
-/

namespace A053785.P2534961464909128923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A053000 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A053785.P2534961464909128923

namespace A053785

/-- `A000027(A053000(∑[2*n+1]))` -/
def P2534961464909128923.Spec : Prop :=
  ∀ n, P2534961464909128923.a n = A053785 (n + 1)

end A053785

/-!
# A053786: a(n) = next prime after n^4.

The programs for A053786, the canonical program `A053786.P2010636210610092813` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053786 has offset 1).

The definition of A053786 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053786.P2010636210610092813

`A007918(A000583(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A053786

/-- `A007918(A000583(n+1))` -/
def P2010636210610092813.Spec : Prop :=
  ∀ n, P2010636210610092813.a n = A053786 (n + 1)

theorem P2010636210610092813.correct : P2010636210610092813.Spec := by
  intro n
  simp only [A053786, Nat.add_sub_cancel]

end A053786

/-! ## A053786.P16523228778957722037

`A053785(n+1)+(n+1)²²`
-/

namespace A053786.P16523228778957722037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053785 (n + 1) + (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A053786.P16523228778957722037

namespace A053786

/-- `A053785(n+1)+(n+1)²²` -/
def P16523228778957722037.Spec : Prop :=
  ∀ n, P16523228778957722037.a n = A053786 (n + 1)

theorem P16523228778957722037.correct : P16523228778957722037.Spec := by
  intro n
  simp only [A053786, Nat.add_sub_cancel, A053786.P16523228778957722037.a, A053786.P2010636210610092813.a, A000583, A000583.P14547500281748394449.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A053785, A053785.P3643210725324420680.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053786

/-! ## A053786.P5582147752825134440

`A123865(n+1)+A053785(n+1)+1`
-/

namespace A053786.P5582147752825134440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123865 (n + 1) + (A053785 (n + 1) + 1)

end

end A053786.P5582147752825134440

namespace A053786

/-- `A123865(n+1)+A053785(n+1)+1` -/
def P5582147752825134440.Spec : Prop :=
  ∀ n, P5582147752825134440.a n = A053786 (n + 1)

theorem P5582147752825134440.correct : P5582147752825134440.Spec := by
  intro n
  simp only [A053786, Nat.add_sub_cancel, A053786.P5582147752825134440.a, A053786.P2010636210610092813.a, A000583, A000583.P14547500281748394449.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A053785, A053785.P3643210725324420680.a, A123865, A123865.P509384507853173445.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053786

/-! ## A053786.P10007593841864285748

`abs(A053785(n+1)+Δ[A000538(n)])`
-/

namespace A053786.P10007593841864285748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053785 (n + 1) + (f1 (n + 1) - f1 n)|

end

end A053786.P10007593841864285748

namespace A053786

/-- `abs(A053785(n+1)+Δ[A000538(n)])` -/
def P10007593841864285748.Spec : Prop :=
  ∀ n, P10007593841864285748.a n = A053786 (n + 1)

end A053786

/-! ## A053786.P15926787322485796010

`A000007(n+1)+A053785(n+1)+Δ[A000538(n)]`
-/

namespace A053786.P15926787322485796010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A053785 (n + 1) + (f1 (n + 1) - f1 n))

end

end A053786.P15926787322485796010

namespace A053786

/-- `A000007(n+1)+A053785(n+1)+Δ[A000538(n)]` -/
def P15926787322485796010.Spec : Prop :=
  ∀ n, P15926787322485796010.a n = A053786 (n + 1)

end A053786

/-! ## A053786.P14037512714382706425

`A008683(8*(n+1))+A053785(n+1)+Δ[A000538(n)]`
-/

namespace A053786.P14037512714382706425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (8 * (n + 1)) + (A053785 (n + 1) + (f1 (n + 1) - f1 n))

end

end A053786.P14037512714382706425

namespace A053786

/-- `A008683(8*(n+1))+A053785(n+1)+Δ[A000538(n)]` -/
def P14037512714382706425.Spec : Prop :=
  ∀ n, P14037512714382706425.a n = A053786 (n + 1)

end A053786

/-! ## A053786.P8245923219702267888

`A007491((n+1)²)`
-/

namespace A053786.P8245923219702267888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 ((n + 1) ^ 2)

end

end A053786.P8245923219702267888

namespace A053786

/-- `A007491((n+1)²)` -/
def P8245923219702267888.Spec : Prop :=
  ∀ n, P8245923219702267888.a n = A053786 (n + 1)

end A053786

/-! ## A053786.P6217556982106896386

`sqrt(A069639((n+1)²))`
-/

namespace A053786.P6217556982106896386
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A069639 ((n + 1) ^ 2) : ℝ)

end

end A053786.P6217556982106896386

namespace A053786

/-- `sqrt(A069639((n+1)²))` -/
def P6217556982106896386.Spec : Prop :=
  ∀ n, P6217556982106896386.a n = (A053786 (n + 1) : ℝ)

end A053786

/-! ## A053786.P9278955382601400373

`A053000((n+1)²)+(n+1)²²`
-/

namespace A053786.P9278955382601400373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 ((n + 1) ^ 2) + (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A053786.P9278955382601400373

namespace A053786

/-- `A053000((n+1)²)+(n+1)²²` -/
def P9278955382601400373.Spec : Prop :=
  ∀ n, P9278955382601400373.a n = A053786 (n + 1)

end A053786

/-! ## A053786.P9112459334291526105

`record[A007491(ceil(C(or(1, n), n)/2)²)]`
-/

namespace A053786.P9112459334291526105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉ ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053786.P9112459334291526105

namespace A053786

/-- `record[A007491(ceil(C(or(1, n), n)/2)²)]` -/
def P9112459334291526105.Spec : Prop :=
  ∀ n, P9112459334291526105.a n = A053786 (n + 1)

end A053786

/-! ## A053786.P10206668371097966514

`gcd((2*n)%2, A007491((n+1)^2))`
-/

namespace A053786.P10206668371097966514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * n % 2 : ℕ) : ℤ) (A007491 ((n + 1) ^ 2))

end

end A053786.P10206668371097966514

namespace A053786

/-- `gcd((2*n)%2, A007491((n+1)^2))` -/
def P10206668371097966514.Spec : Prop :=
  ∀ n, (P10206668371097966514.a n : ℤ) = A053786 (n + 1)

end A053786

/-! ## A053786.P8328631301419051073

`xor(1, xor(1, A007491((n+1)*(n+1))))`
-/

namespace A053786.P8328631301419051073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A007491 ((n + 1) * (n + 1))))

end

end A053786.P8328631301419051073

namespace A053786

/-- `xor(1, xor(1, A007491((n+1)*(n+1))))` -/
def P8328631301419051073.Spec : Prop :=
  ∀ n, P8328631301419051073.a n = A053786 (n + 1)

end A053786

/-! ## A053786.P13017109404062222087

`record[A007491(A134478(n)²)]`
-/

namespace A053786.P13017109404062222087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (A134478 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053786.P13017109404062222087

namespace A053786

/-- `record[A007491(A134478(n)²)]` -/
def P13017109404062222087.Spec : Prop :=
  ∀ n, P13017109404062222087.a n = A053786 (n + 1)

end A053786

/-! ## A053786.P8036981814851870972

`record[A007491(A000290(n+1-2%(n+1)))]`
-/

namespace A053786.P8036981814851870972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (A000290 (n + 1 - 2 % (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053786.P8036981814851870972

namespace A053786

/-- `record[A007491(A000290(n+1-2%(n+1)))]` -/
def P8036981814851870972.Spec : Prop :=
  ∀ n, P8036981814851870972.a n = A053786 (n + 1)

end A053786

/-! ## A053786.P5335728655881691788

`A007491(A000290(n+1))%A000538(n+2)`
-/

namespace A053786.P5335728655881691788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007491 (A000290 (n + 1)).toNat) (A000538 (n + 2))

end

end A053786.P5335728655881691788

namespace A053786

/-- `A007491(A000290(n+1))%A000538(n+2)` -/
def P5335728655881691788.Spec : Prop :=
  ∀ n, P5335728655881691788.a n = A053786 (n + 1)

end A053786

/-! ## A053786.P9002708523323870939

`A007491(A000290(n+1))*A051700(A051700(n))`
-/

namespace A053786.P9002708523323870939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (A000290 (n + 1)).toNat * A051700 (A051700 n).toNat

end

end A053786.P9002708523323870939

namespace A053786

/-- `A007491(A000290(n+1))*A051700(A051700(n))` -/
def P9002708523323870939.Spec : Prop :=
  ∀ n, P9002708523323870939.a n = A053786 (n + 1)

end A053786

/-! ## A053786.P2495749803750242800

`A061265(A221056(n+1))+A007491(A000290(n+1))`
-/

namespace A053786.P2495749803750242800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061265 (A221056 (n + 1)).toNat + A007491 (A000290 (n + 1)).toNat

end

end A053786.P2495749803750242800

namespace A053786

/-- `A061265(A221056(n+1))+A007491(A000290(n+1))` -/
def P2495749803750242800.Spec : Prop :=
  ∀ n, P2495749803750242800.a n = A053786 (n + 1)

end A053786

/-! ## A053786.P8378174430527612526

`A010051(A000290(n+3))+A007491(A000290(n+1))`
-/

namespace A053786.P8378174430527612526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000290 (n + 3)).toNat + A007491 (A000290 (n + 1)).toNat

end

end A053786.P8378174430527612526

namespace A053786

/-- `A010051(A000290(n+3))+A007491(A000290(n+1))` -/
def P8378174430527612526.Spec : Prop :=
  ∀ n, P8378174430527612526.a n = A053786 (n + 1)

end A053786

/-!
# A053787: Nextprime(n^5) - n^5.

The programs for A053787, there is no canonical definition to state claims against.
-/

/-! ## A053787.P11859863394032413955

`A053788(n+1)-(n+1)^5`
-/

namespace A053787.P11859863394032413955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053788 (n + 1) - ((n + 1) ^ 5 : ℤ)

end

end A053787.P11859863394032413955

/-! ## A053787.P7142114500030420185

`(A053788(n+1)-1)%A000578(n+1)+1`
-/

namespace A053787.P7142114500030420185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053788 (n + 1) - 1) (A000578 (n + 1)) + 1

end

end A053787.P7142114500030420185

/-! ## A053787.P12739227377020731790

`A340959(A000096(n+4)+7)-A000584(n+1)`
-/

namespace A053787.P12739227377020731790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340959 (A000096 (n + 4) + 7).toNat - A000584 (n + 1)

end

end A053787.P12739227377020731790

/-!
# A053788: Next prime after n^5.

The programs for A053788, there is no canonical definition to state claims against.
-/

/-! ## A053788.P11885481840169682795

`A053787(n+1)+(n+1)^5`
-/

namespace A053788.P11885481840169682795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053787 (n + 1) + ((n + 1) ^ 5 : ℤ)

end

end A053788.P11885481840169682795

/-! ## A053788.P10823116599186990808

`A340959(A000096(n+4)+7)`
-/

namespace A053788.P10823116599186990808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340959 (A000096 (n + 4) + 7).toNat

end

end A053788.P10823116599186990808

/-! ## A053788.P12717899852366045598

`A340959(A000217(n+5)+6)`
-/

namespace A053788.P12717899852366045598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340959 (A000217 (n + 5) + 6).toNat

end

end A053788.P12717899852366045598

/-! ## A053788.P15049363344871290166

`A340959(A167614(n+3)+n+8)`
-/

namespace A053788.P15049363344871290166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340959 (A167614 (n + 3) + (n + 8 : ℤ)).toNat

end

end A053788.P15049363344871290166

/-! ## A053788.P8044153232666458540

`A340959(A055999(n+4)-1-2*n)`
-/

namespace A053788.P8044153232666458540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340959 (A055999 (n + 4) - 1 - (2 * n : ℤ)).toNat

end

end A053788.P8044153232666458540

/-!
# A053789: a(n) = A020639(A053790(n)).

The programs for A053789, there is no canonical definition to state claims against.
-/

/-! ## A053789.P17765343853862242292

`A020639(A053790(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053789.P17765343853862242292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053790 (n + 1)).toNat

end

end A053789.P17765343853862242292

/-! ## A053789.P8753470532404752444

`p?[A020639(A132995(n+2))]`
-/

namespace A053789.P8753470532404752444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A132995 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053789.P8753470532404752444

/-! ## A053789.P5663595114529919141

`p?[A020639(A007504(n+1))%A007504(n+1)]`
-/

namespace A053789.P5663595114529919141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A007504 (n + 1)).toNat) (A007504 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053789.P5663595114529919141

/-! ## A053789.P9700984502819297199

`A046027(A285188(n+2))`
-/

namespace A053789.P9700984502819297199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046027 (A285188 (n + 2)).toNat

end

end A053789.P9700984502819297199

/-!
# A053790: Composite numbers arising as sum of first k primes.

The programs for A053790, the canonical program `A053790.P15585571080039862448` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053790 has offset 1).

The definition of A053790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9407 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053790.P15585571080039862448

`record[A007504(n+3)*A102863(n+3)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A053790

/-- `record[A007504(n+3)*A102863(n+3)]` -/
def P15585571080039862448.Spec : Prop :=
  ∀ n, P15585571080039862448.a n = A053790 (n + 1)

theorem P15585571080039862448.correct : P15585571080039862448.Spec := by
  intro n
  simp only [A053790, Nat.add_sub_cancel]

end A053790

/-! ## A053790.P9507914680604694865

`∩[A161959(n+2), A007504(n)]`
-/

namespace A053790.P9507914680604694865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161959 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053790.P9507914680604694865

namespace A053790

/-- `∩[A161959(n+2), A007504(n)]` -/
def P9507914680604694865.Spec : Prop :=
  ∀ n, (P9507914680604694865.a n : ℤ) = A053790 (n + 1)

end A053790

/-! ## A053790.P17020997097439484232

`∩[A073619(n+1), A213011(n+1)]`
-/

namespace A053790.P17020997097439484232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053790.P17020997097439484232

namespace A053790

/-- `∩[A073619(n+1), A213011(n+1)]` -/
def P17020997097439484232.Spec : Prop :=
  ∀ n, (P17020997097439484232.a n : ℤ) = A053790 (n + 1)

end A053790

/-! ## A053790.P18128571426486452867

`∩[A213011(n+1), A161959(n+2)]`
-/

namespace A053790.P18128571426486452867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161959 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053790.P18128571426486452867

namespace A053790

/-- `∩[A213011(n+1), A161959(n+2)]` -/
def P18128571426486452867.Spec : Prop :=
  ∀ n, (P18128571426486452867.a n : ℤ) = A053790 (n + 1)

end A053790

/-! ## A053790.P1988056089758132579

`A007504(record[A233583(n+1)+A102863(n+1)])`
-/

namespace A053790.P1988056089758132579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) + A102863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053790.P1988056089758132579

namespace A053790

/-- `A007504(record[A233583(n+1)+A102863(n+1)])` -/
def P1988056089758132579.Spec : Prop :=
  ∀ n, P1988056089758132579.a n = A053790 (n + 1)

end A053790

/-! ## A053790.P3520545615667310978

`A034387(p?[A228357(n+1)])`
-/

namespace A053790.P3520545615667310978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A053790.P3520545615667310978

namespace A053790

/-- `A034387(p?[A228357(n+1)])` -/
def P3520545615667310978.Spec : Prop :=
  ∀ n, P3520545615667310978.a n = A053790 (n + 1)

end A053790

/-! ## A053790.P11159695478663234951

`A063960(2*p?[A228357(n+1)])`
-/

namespace A053790.P11159695478663234951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A053790.P11159695478663234951

namespace A053790

/-- `A063960(2*p?[A228357(n+1)])` -/
def P11159695478663234951.Spec : Prop :=
  ∀ n, P11159695478663234951.a n = A053790 (n + 1)

end A053790

/-! ## A053790.P2415561046947426418

`A063960(A103517(p?[A228357(n+1)]))`
-/

namespace A053790.P2415561046947426418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (A103517 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A053790.P2415561046947426418

namespace A053790

/-- `A063960(A103517(p?[A228357(n+1)]))` -/
def P2415561046947426418.Spec : Prop :=
  ∀ n, P2415561046947426418.a n = A053790 (n + 1)

end A053790

/-! ## A053790.P288392720820725525

`record[A074591(A007504(n+3))]`
-/

namespace A053790.P288392720820725525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (A007504 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053790.P288392720820725525

namespace A053790

/-- `record[A074591(A007504(n+3))]` -/
def P288392720820725525.Spec : Prop :=
  ∀ n, P288392720820725525.a n = A053790 (n + 1)

end A053790

/-! ## A053790.P15116491088445688976

`record[A074591(A034387(n+5))]`
-/

namespace A053790.P15116491088445688976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (A034387 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053790.P15116491088445688976

namespace A053790

/-- `record[A074591(A034387(n+5))]` -/
def P15116491088445688976.Spec : Prop :=
  ∀ n, P15116491088445688976.a n = A053790 (n + 1)

end A053790

/-! ## A053790.P2525596584292901369

`filter[A007504(n+1), A005171(#)]`
-/

namespace A053790.P2525596584292901369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A053790.P2525596584292901369

namespace A053790

/-- `filter[A007504(n+1), A005171(#)]` -/
def P2525596584292901369.Spec : Prop :=
  ∀ n, P2525596584292901369.a n = A053790 (n + 1)

end A053790

/-! ## A053790.P8045288795212860086

`filter[A007504(n+1), A066247(#)]`
-/

namespace A053790.P8045288795212860086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A053790.P8045288795212860086

namespace A053790

/-- `filter[A007504(n+1), A066247(#)]` -/
def P8045288795212860086.Spec : Prop :=
  ∀ n, P8045288795212860086.a n = A053790 (n + 1)

end A053790

/-! ## A053790.P7188565267923747047

`filter[A007504(n+1), A202238(#)]`
-/

namespace A053790.P7188565267923747047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A053790.P7188565267923747047

namespace A053790

/-- `filter[A007504(n+1), A202238(#)]` -/
def P7188565267923747047.Spec : Prop :=
  ∀ n, P7188565267923747047.a n = A053790 (n + 1)

end A053790

/-! ## A053790.P13919864064391924183

`filter[A160793(2*(n+1)), A005171(#)]`
-/

namespace A053790.P13919864064391924183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160793 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A053790.P13919864064391924183

namespace A053790

/-- `filter[A160793(2*(n+1)), A005171(#)]` -/
def P13919864064391924183.Spec : Prop :=
  ∀ n, P13919864064391924183.a n = A053790 (n + 1)

end A053790

/-! ## A053790.P17881195241625157938

`filter[A160793(2*(n+1)), A066247(#)]`
-/

namespace A053790.P17881195241625157938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160793 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A053790.P17881195241625157938

namespace A053790

/-- `filter[A160793(2*(n+1)), A066247(#)]` -/
def P17881195241625157938.Spec : Prop :=
  ∀ n, P17881195241625157938.a n = A053790 (n + 1)

end A053790

/-! ## A053790.P6478531627722952996

`filter[A160793(2*(n+1)), A202238(#)]`
-/

namespace A053790.P6478531627722952996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160793 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A053790.P6478531627722952996

namespace A053790

/-- `filter[A160793(2*(n+1)), A202238(#)]` -/
def P6478531627722952996.Spec : Prop :=
  ∀ n, P6478531627722952996.a n = A053790 (n + 1)

end A053790

/-!
# A053791: Number of walks of length n on the square lattice that start from (0,0) and do not touch the nonpositive real axis once they have left their starting point.

The programs for A053791, there is no canonical definition to state claims against.
-/

/-! ## A053791.P8589367276233233659

`A073724(n)+A061395(A048143(n))`
-/

namespace A053791.P8589367276233233659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073724 n + A061395 (A048143 n).toNat

end

end A053791.P8589367276233233659

/-! ## A053791.P3026064652135390933

`A123579(A000142(n+2))-A319252(n+1)`
-/

namespace A053791.P3026064652135390933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123579 (A000142 (n + 2)).toNat - A319252 (n + 1)

end

end A053791.P3026064652135390933

/-!
# A053792: Number of walks of length n on the square lattice that start from (0,0) and do not touch the half-line {x=y, x <= 0} once they have left their starting point.

The programs for A053792, there is no canonical definition to state claims against.
-/

/-! ## A053792.P9350232431111868619

`(A304941(n)+A303537(n))/2`
-/

namespace A053792.P9350232431111868619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304941 n + A303537 n : ℚ) / 2

end

end A053792.P9350232431111868619

/-! ## A053792.P16606442104159207241

`A014682(A304941(n)+A303537(n))`
-/

namespace A053792.P16606442104159207241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A304941 n + A303537 n).toNat

end

end A053792.P16606442104159207241

/-! ## A053792.P12288526419443917655

`A302042(A304941(n)+A303537(n))`
-/

namespace A053792.P12288526419443917655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A304941 n + A303537 n).toNat

end

end A053792.P12288526419443917655

/-! ## A053792.P15684524886413319072

`A305608(n)+A302042(A304941(n))`
-/

namespace A053792.P15684524886413319072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305608 n + A302042 (A304941 n).toNat

end

end A053792.P15684524886413319072

/-! ## A053792.P9326299880837452736

`A302042(A304941(n))+A304933(n)/A028310(n)`
-/

namespace A053792.P9326299880837452736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302042 (A304941 n).toNat : ℚ) + (A304933 n : ℚ) / (A028310 n : ℚ)

end

end A053792.P9326299880837452736

/-!
# A053793: n^2+n modulo 7.

The programs for A053793, the canonical program `A053793.P1101890834374397849` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053793 has offset 0).

The definition of A053793 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053793.P1101890834374397849

`(n²+n)%7`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A053793

/-- `(n²+n)%7` -/
def P1101890834374397849.Spec : Prop :=
  ∀ n, (P1101890834374397849.a n : ℤ) = A053793 n

theorem P1101890834374397849.correct : P1101890834374397849.Spec := by
  intro n
  simp only [A053793]

end A053793

/-!
# A053794: a(n) = (n^2 + n) modulo 8.

The programs for A053794, the canonical program `A053794.P4865876659641324685` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053794 has offset 0).

The definition of A053794 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053794.P4865876659641324685

`2*A105198(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053794

/-- `2*A105198(n)` -/
def P4865876659641324685.Spec : Prop :=
  ∀ n, P4865876659641324685.a n = A053794 n

theorem P4865876659641324685.correct : P4865876659641324685.Spec := by
  intro n
  simp only [A053794]

end A053794

/-! ## A053794.P1216082990637339062

`2*∑[n]%4`
-/

namespace A053794.P1216082990637339062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((∑ j ∈ Finset.range (n + 1), f1 j) % 4)

end

end A053794.P1216082990637339062

namespace A053794

/-- `2*∑[n]%4` -/
def P1216082990637339062.Spec : Prop :=
  ∀ n, (P1216082990637339062.a n : ℤ) = A053794 n

end A053794

/-!
# A053795: Composite numbers ending in 1, 3, 7 or 9.

The programs for A053795, the canonical program `A053795.P9037477365799927319` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053795 has offset 1).

The definition of A053795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053795.P9037477365799927319

`A100490(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A053795

/-- `A100490(n+1)` -/
def P9037477365799927319.Spec : Prop :=
  ∀ n, P9037477365799927319.a n = A053795 (n + 1)

theorem P9037477365799927319.correct : P9037477365799927319.Spec := by
  intro n
  simp only [A053795, Nat.add_sub_cancel]

end A053795

/-! ## A053795.P14246179582054653949

`record[A100490(abs(1-n))]`
-/

namespace A053795.P14246179582054653949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053795.P14246179582054653949

namespace A053795

/-- `record[A100490(abs(1-n))]` -/
def P14246179582054653949.Spec : Prop :=
  ∀ n, P14246179582054653949.a n = A053795 (n + 1)

end A053795

/-! ## A053795.P8499369285014485804

`filter[A100490(n), A066247(#)]`
-/

namespace A053795.P8499369285014485804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A053795.P8499369285014485804

namespace A053795

/-- `filter[A100490(n), A066247(#)]` -/
def P8499369285014485804.Spec : Prop :=
  ∀ n, P8499369285014485804.a n = A053795 (n + 1)

end A053795

/-! ## A053795.P245668057207269131

`filter[A100490(n), A202238(#)]`
-/

namespace A053795.P245668057207269131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A053795.P245668057207269131

namespace A053795

/-- `filter[A100490(n), A202238(#)]` -/
def P245668057207269131.Spec : Prop :=
  ∀ n, P245668057207269131.a n = A053795 (n + 1)

end A053795

/-! ## A053795.P3943538219861356405

`filter[A100490(n), A323162(#)]`
-/

namespace A053795.P3943538219861356405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A053795.P3943538219861356405

namespace A053795

/-- `filter[A100490(n), A323162(#)]` -/
def P3943538219861356405.Spec : Prop :=
  ∀ n, P3943538219861356405.a n = A053795 (n + 1)

end A053795

/-! ## A053795.P13968291491671759976

`filter[A100490(n), A347523(#)]`
-/

namespace A053795.P13968291491671759976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A053795.P13968291491671759976

namespace A053795

/-- `filter[A100490(n), A347523(#)]` -/
def P13968291491671759976.Spec : Prop :=
  ∀ n, P13968291491671759976.a n = A053795 (n + 1)

end A053795

/-! ## A053795.P1407298109353216532

`record[lcm(5, A071904(n+1))/5]`
-/

namespace A053795.P1407298109353216532
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 5 (A071904 (n + 1)) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053795.P1407298109353216532

namespace A053795

/-- `record[lcm(5, A071904(n+1))/5]` -/
def P1407298109353216532.Spec : Prop :=
  ∀ n, P1407298109353216532.a n = (A053795 (n + 1) : ℚ)

end A053795

/-! ## A053795.P4192953070085712168

`filter[A071904(n+1), A011558(#)]`
-/

namespace A053795.P4192953070085712168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A053795.P4192953070085712168

namespace A053795

/-- `filter[A071904(n+1), A011558(#)]` -/
def P4192953070085712168.Spec : Prop :=
  ∀ n, P4192953070085712168.a n = A053795 (n + 1)

end A053795

/-! ## A053795.P8754221838944329035

`filter[A014076(n+2), A011558(#)]`
-/

namespace A053795.P8754221838944329035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A053795.P8754221838944329035

namespace A053795

/-- `filter[A014076(n+2), A011558(#)]` -/
def P8754221838944329035.Spec : Prop :=
  ∀ n, P8754221838944329035.a n = A053795 (n + 1)

end A053795

/-! ## A053795.P12900485020336635770

`filter[A045572(n+1), A066247(#)]`
-/

namespace A053795.P12900485020336635770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A053795.P12900485020336635770

namespace A053795

/-- `filter[A045572(n+1), A066247(#)]` -/
def P12900485020336635770.Spec : Prop :=
  ∀ n, P12900485020336635770.a n = A053795 (n + 1)

end A053795

/-! ## A053795.P11987798654415272475

`filter[A045572(n+1), A202238(#)]`
-/

namespace A053795.P11987798654415272475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A053795.P11987798654415272475

namespace A053795

/-- `filter[A045572(n+1), A202238(#)]` -/
def P11987798654415272475.Spec : Prop :=
  ∀ n, P11987798654415272475.a n = A053795 (n + 1)

end A053795

/-! ## A053795.P11470819790763202787

`filter[A045572(n+1), A323162(#)]`
-/

namespace A053795.P11470819790763202787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A053795.P11470819790763202787

namespace A053795

/-- `filter[A045572(n+1), A323162(#)]` -/
def P11470819790763202787.Spec : Prop :=
  ∀ n, P11470819790763202787.a n = A053795 (n + 1)

end A053795

/-! ## A053795.P146107251648890245

`filter[A045572(n+2), A005171(#)]`
-/

namespace A053795.P146107251648890245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A053795.P146107251648890245

namespace A053795

/-- `filter[A045572(n+2), A005171(#)]` -/
def P146107251648890245.Spec : Prop :=
  ∀ n, P146107251648890245.a n = A053795 (n + 1)

end A053795

/-! ## A053795.P453883024095573940

`filter[A045572(n+2), A292438(#)]`
-/

namespace A053795.P453883024095573940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A053795.P453883024095573940

namespace A053795

/-- `filter[A045572(n+2), A292438(#)]` -/
def P453883024095573940.Spec : Prop :=
  ∀ n, P453883024095573940.a n = A053795 (n + 1)

end A053795

/-! ## A053795.P15819626009425802455

`∩[A020742(n), A100490(n)]`
-/

namespace A053795.P15819626009425802455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053795.P15819626009425802455

namespace A053795

/-- `∩[A020742(n), A100490(n)]` -/
def P15819626009425802455.Spec : Prop :=
  ∀ n, (P15819626009425802455.a n : ℤ) = A053795 (n + 1)

end A053795

/-! ## A053795.P17934408307995240062

`∩[A062545(n), A100490(n)]`
-/

namespace A053795.P17934408307995240062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053795.P17934408307995240062

namespace A053795

/-- `∩[A062545(n), A100490(n)]` -/
def P17934408307995240062.Spec : Prop :=
  ∀ n, (P17934408307995240062.a n : ℤ) = A053795 (n + 1)

end A053795

/-! ## A053795.P2715284161736871874

`eq[A010122(n), A107393(n)]`
-/

namespace A053795.P2715284161736871874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053795.P2715284161736871874

namespace A053795

/-- `eq[A010122(n), A107393(n)]` -/
def P2715284161736871874.Spec : Prop :=
  ∀ n, (P2715284161736871874.a n : ℤ) = A053795 (n + 1)

end A053795

/-! ## A053795.P317987665237909101

`eq[A010152(n), A107393(n)]`
-/

namespace A053795.P317987665237909101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010152 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053795.P317987665237909101

namespace A053795

/-- `eq[A010152(n), A107393(n)]` -/
def P317987665237909101.Spec : Prop :=
  ∀ n, (P317987665237909101.a n : ℤ) = A053795 (n + 1)

end A053795

/-! ## A053795.P3631001965149905056

`eq[A010164(n), A107393(n)]`
-/

namespace A053795.P3631001965149905056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053795.P3631001965149905056

namespace A053795

/-- `eq[A010164(n), A107393(n)]` -/
def P3631001965149905056.Spec : Prop :=
  ∀ n, (P3631001965149905056.a n : ℤ) = A053795 (n + 1)

end A053795

/-! ## A053795.P8800378160419623083

`∩[A100490(n), A130773(n)]`
-/

namespace A053795.P8800378160419623083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053795.P8800378160419623083

namespace A053795

/-- `∩[A100490(n), A130773(n)]` -/
def P8800378160419623083.Spec : Prop :=
  ∀ n, (P8800378160419623083.a n : ℤ) = A053795 (n + 1)

end A053795

/-!
# A053796: a(n) = (n^2+n) modulo 5.

The programs for A053796, the canonical program `A053796.P17838369308745717631` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053796 has offset 0).

The definition of A053796 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053796.P17838369308745717631

`(n²+n)%5`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A053796

/-- `(n²+n)%5` -/
def P17838369308745717631.Spec : Prop :=
  ∀ n, (P17838369308745717631.a n : ℤ) = A053796 n

theorem P17838369308745717631.correct : P17838369308745717631.Spec := by
  intro n
  simp only [A053796]

end A053796

/-!
# A053797: Lengths of successive gaps between squarefree numbers.

The programs for A053797, the canonical program `A053797.P12604746864527782063` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053797 has offset 1).

The definition of A053797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8553 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053797.P17698203855426627853

`runs[A013929(n+1)-n]`
-/

namespace A053797.P17698203855426627853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A053797.P17698203855426627853

namespace A053797

/-- `runs[A013929(n+1)-n]` -/
def P17698203855426627853.Spec : Prop :=
  ∀ n, (P17698203855426627853.a n : ℤ) = A053797 (n + 1)

end A053797

/-! ## A053797.P8098973723749633035

`runs[A013928(A013929(n+1))]`
-/

namespace A053797.P8098973723749633035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A013929 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A053797.P8098973723749633035

namespace A053797

/-- `runs[A013928(A013929(n+1))]` -/
def P8098973723749633035.Spec : Prop :=
  ∀ n, (P8098973723749633035.a n : ℤ) = A053797 (n + 1)

end A053797

/-! ## A053797.P4746349318266936854

`A376164(n+1)-A373415(n+1)`
-/

namespace A053797.P4746349318266936854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376164 (n + 1) - A373415 (n + 1)

end

end A053797.P4746349318266936854

namespace A053797

/-- `A376164(n+1)-A373415(n+1)` -/
def P4746349318266936854.Spec : Prop :=
  ∀ n, P4746349318266936854.a n = A053797 (n + 1)

end A053797

/-! ## A053797.P6627226523283366314

`Δ[eq[1, A008966(A013929(n+1)-1)]]`
-/

namespace A053797.P6627226523283366314
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A013929 (n + 1) - 1).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A053797.P6627226523283366314

namespace A053797

/-- `Δ[eq[1, A008966(A013929(n+1)-1)]]` -/
def P6627226523283366314.Spec : Prop :=
  ∀ n, P6627226523283366314.a n = A053797 (n + 1)

end A053797

/-! ## A053797.P41272329265610499

`A072284(n+2)-A053806(n+1)`
-/

namespace A053797.P41272329265610499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (n + 2) - A053806 (n + 1)

end

end A053797.P41272329265610499

namespace A053797

/-- `A072284(n+2)-A053806(n+1)` -/
def P41272329265610499.Spec : Prop :=
  ∀ n, P41272329265610499.a n = A053797 (n + 1)

end A053797

/-! ## A053797.P12992252982398339258

`Δ[A072284(n+1)-A013928(A072284(n+1))]`
-/

namespace A053797.P12992252982398339258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (n + 1) - A013928 (A072284 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053797.P12992252982398339258

namespace A053797

/-- `Δ[A072284(n+1)-A013928(A072284(n+1))]` -/
def P12992252982398339258.Spec : Prop :=
  ∀ n, P12992252982398339258.a n = A053797 (n + 1)

end A053797

/-! ## A053797.P6643436778648719260

`A072284(n+2)-(A120992(n+1)+A072284(n+1))`
-/

namespace A053797.P6643436778648719260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (n + 2) - (A120992 (n + 1) + A072284 (n + 1))

end

end A053797.P6643436778648719260

namespace A053797

/-- `A072284(n+2)-(A120992(n+1)+A072284(n+1))` -/
def P6643436778648719260.Spec : Prop :=
  ∀ n, P6643436778648719260.a n = A053797 (n + 1)

end A053797

/-! ## A053797.P4457765304822116821

`A053806(n+2)-(A120992(n+2)+A053806(n+1))`
-/

namespace A053797.P4457765304822116821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053806 (n + 2) - (A120992 (n + 2) + A053806 (n + 1))

end

end A053797.P4457765304822116821

namespace A053797

/-- `A053806(n+2)-(A120992(n+2)+A053806(n+1))` -/
def P4457765304822116821.Spec : Prop :=
  ∀ n, P4457765304822116821.a n = A053797 (n + 1)

end A053797

/-! ## A053797.P12604746864527782063

`A378619(A072284(n+2)-1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A053797

/-- `A378619(A072284(n+2)-1)` -/
def P12604746864527782063.Spec : Prop :=
  ∀ n, P12604746864527782063.a n = A053797 (n + 1)

theorem P12604746864527782063.correct : P12604746864527782063.Spec := by
  intro n
  simp only [A053797, Nat.add_sub_cancel]

end A053797

/-! ## A053797.P4903811904137005249

`runs[lt[A007947(n+1), n]-n]`
-/

namespace A053797.P4903811904137005249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A053797.P4903811904137005249

namespace A053797

/-- `runs[lt[A007947(n+1), n]-n]` -/
def P4903811904137005249.Spec : Prop :=
  ∀ n, (P4903811904137005249.a n : ℤ) = A053797 (n + 1)

end A053797

/-! ## A053797.P12920744460935237164

`runs[∑[A375707(n+1)]-A375707(n+1)]`
-/

namespace A053797.P12920744460935237164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375707 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A375707 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A053797.P12920744460935237164

namespace A053797

/-- `runs[∑[A375707(n+1)]-A375707(n+1)]` -/
def P12920744460935237164.Spec : Prop :=
  ∀ n, (P12920744460935237164.a n : ℤ) = A053797 (n + 1)

end A053797

/-! ## A053797.P3073503510671219856

`runs[A319477(A013929(n+1)+A001489(n))]`
-/

namespace A053797.P3073503510671219856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319477 (A013929 (n + 1) + A001489 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A053797.P3073503510671219856

namespace A053797

/-- `runs[A319477(A013929(n+1)+A001489(n))]` -/
def P3073503510671219856.Spec : Prop :=
  ∀ n, (P3073503510671219856.a n : ℤ) = A053797 (n + 1)

end A053797

/-! ## A053797.P8593038533666049256

`runs[A162966(n+2)-n]`
-/

namespace A053797.P8593038533666049256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 2) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A053797.P8593038533666049256

namespace A053797

/-- `runs[A162966(n+2)-n]` -/
def P8593038533666049256.Spec : Prop :=
  ∀ n, (P8593038533666049256.a n : ℤ) = A053797 (n + 1)

end A053797

/-! ## A053797.P8047285816584372357

`A076259(A375930(n+1))-1`
-/

namespace A053797.P8047285816584372357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (A375930 (n + 1)).toNat - 1

end

end A053797.P8047285816584372357

namespace A053797

/-- `A076259(A375930(n+1))-1` -/
def P8047285816584372357.Spec : Prop :=
  ∀ n, P8047285816584372357.a n = A053797 (n + 1)

end A053797

/-! ## A053797.P1163051058974281631

`A076260(A376164(n+1))-1`
-/

namespace A053797.P1163051058974281631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076260 (A376164 (n + 1)).toNat - 1

end

end A053797.P1163051058974281631

namespace A053797

/-- `A076260(A376164(n+1))-1` -/
def P1163051058974281631.Spec : Prop :=
  ∀ n, P1163051058974281631.a n = A053797 (n + 1)

end A053797

/-! ## A053797.P789426795795451463

`A072909(A053806(n+1))`
-/

namespace A053797.P789426795795451463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072909 (A053806 (n + 1)).toNat

end

end A053797.P789426795795451463

namespace A053797

/-- `A072909(A053806(n+1))` -/
def P789426795795451463.Spec : Prop :=
  ∀ n, P789426795795451463.a n = A053797 (n + 1)

end A053797

/-! ## A053797.P8184601419475628175

`Δ[record[A243348(A243351(n+1))]]`
-/

namespace A053797.P8184601419475628175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243348 (A243351 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053797.P8184601419475628175

namespace A053797

/-- `Δ[record[A243348(A243351(n+1))]]` -/
def P8184601419475628175.Spec : Prop :=
  ∀ n, P8184601419475628175.a n = A053797 (n + 1)

end A053797

/-! ## A053797.P5260792144330437894

`runs[∏[Δ[comp[A005117(n+1)]]]]`
-/

namespace A053797.P5260792144330437894
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ (x : ℤ)) n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A053797.P5260792144330437894

namespace A053797

/-- `runs[∏[Δ[comp[A005117(n+1)]]]]` -/
def P5260792144330437894.Spec : Prop :=
  ∀ n, (P5260792144330437894.a n : ℤ) = A053797 (n + 1)

end A053797

/-!
# A053798: Number of basis partitions of n+16 with Durfee square size 4.

The programs for A053798, the canonical program `A053798.P11153064998320663042` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053798 has offset 0).

The definition of A053798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053798.P11153064998320663042

`∑[∑[a(n-3)+2]]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2, a(4)=2, a(5)=2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A053798

/-- `∑[∑[a(n-3)+2]]` -/
def P11153064998320663042.Spec : Prop :=
  ∀ n, (P11153064998320663042.a n : ℤ) = A053798 n

theorem P11153064998320663042.correct : P11153064998320663042.Spec := by
  intro n
  simp only [A053798]

end A053798

/-! ## A053798.P17028270586982587912

`∑[ceil(((n²/(n+1))²+n+1)/3)]`
-/

namespace A053798.P17028270586982587912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n ^ 2 : ℚ) / (n + 1 : ℚ)) ^ 2 + (n + 1 : ℚ)) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053798.P17028270586982587912

namespace A053798

/-- `∑[ceil(((n²/(n+1))²+n+1)/3)]` -/
def P17028270586982587912.Spec : Prop :=
  ∀ n, P17028270586982587912.a n = A053798 n

end A053798

/-! ## A053798.P6026929842400219567

`2*∑[A097921(n)/2]`
-/

namespace A053798.P6026929842400219567
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097921 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053798.P6026929842400219567

namespace A053798

/-- `2*∑[A097921(n)/2]` -/
def P6026929842400219567.Spec : Prop :=
  ∀ n, P6026929842400219567.a n = (A053798 n : ℚ)

end A053798

/-! ## A053798.P15082584397584209558

`∑[A097921(n)]%A017334(n)`
-/

namespace A053798.P15082584397584209558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A017334 n)

end

end A053798.P15082584397584209558

namespace A053798

/-- `∑[A097921(n)]%A017334(n)` -/
def P15082584397584209558.Spec : Prop :=
  ∀ n, P15082584397584209558.a n = A053798 n

end A053798

/-! ## A053798.P1875852482495040357

`∑[∑[A185048(A130823(n+1))]]-n`
-/

namespace A053798.P1875852482495040357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (A130823 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A053798.P1875852482495040357

namespace A053798

/-- `∑[∑[A185048(A130823(n+1))]]-n` -/
def P1875852482495040357.Spec : Prop :=
  ∀ n, P1875852482495040357.a n = A053798 n

end A053798

/-! ## A053798.P9347733658832209638

`∑[A097921(n)]^A001221(A001316(n))`
-/

namespace A053798.P9347733658832209638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097921 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A053798.P9347733658832209638

namespace A053798

/-- `∑[A097921(n)]^A001221(A001316(n))` -/
def P9347733658832209638.Spec : Prop :=
  ∀ n, P9347733658832209638.a n = (A053798 n : ℚ)

end A053798

/-! ## A053798.P16001472239461160391

`A008773(Δ[n²])-n`
-/

namespace A053798.P16001472239461160391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008773 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A053798.P16001472239461160391

namespace A053798

/-- `A008773(Δ[n²])-n` -/
def P16001472239461160391.Spec : Prop :=
  ∀ n, P16001472239461160391.a n = A053798 n

end A053798

/-! ## A053798.P2857264914878154055

`abs(∑[A001489(A097921(n))])`
-/

namespace A053798.P2857264914878154055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A097921 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A053798.P2857264914878154055

namespace A053798

/-- `abs(∑[A001489(A097921(n))])` -/
def P2857264914878154055.Spec : Prop :=
  ∀ n, P2857264914878154055.a n = A053798 n

end A053798

/-! ## A053798.P13260248008272552826

`record[A316723(A052905(n))]`
-/

namespace A053798.P13260248008272552826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053798.P13260248008272552826

namespace A053798

/-- `record[A316723(A052905(n))]` -/
def P13260248008272552826.Spec : Prop :=
  ∀ n, P13260248008272552826.a n = A053798 n

end A053798

/-! ## A053798.P6240100535387942755

`A316723(A052905(n+2))`
-/

namespace A053798.P6240100535387942755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A052905 (n + 2)).toNat

end

end A053798.P6240100535387942755

namespace A053798

/-- `A316723(A052905(n+2))` -/
def P6240100535387942755.Spec : Prop :=
  ∀ n, P6240100535387942755.a n = A053798 n

end A053798

/-! ## A053798.P15053718075780271018

`A316723(eq[4, A025581(n)])`
-/

namespace A053798.P15053718075780271018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053798.P15053718075780271018

namespace A053798

/-- `A316723(eq[4, A025581(n)])` -/
def P15053718075780271018.Spec : Prop :=
  ∀ n, P15053718075780271018.a n = A053798 n

end A053798

/-! ## A053798.P4194566975930939441

`record[A316723(A055999(n)+1)]`
-/

namespace A053798.P4194566975930939441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053798.P4194566975930939441

namespace A053798

/-- `record[A316723(A055999(n)+1)]` -/
def P4194566975930939441.Spec : Prop :=
  ∀ n, P4194566975930939441.a n = A053798 n

end A053798

/-! ## A053798.P13727419773424666022

`record[A316723(A055998(n+1)-2)]`
-/

namespace A053798.P13727419773424666022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A055998 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053798.P13727419773424666022

namespace A053798

/-- `record[A316723(A055998(n+1)-2)]` -/
def P13727419773424666022.Spec : Prop :=
  ∀ n, P13727419773424666022.a n = A053798 n

end A053798

/-! ## A053798.P1452749949520244728

`A316723(2*n+Δ[A008778(n)]+6)`
-/

namespace A053798.P1452749949520244728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 ((2 * n : ℤ) + (f1 (n + 1) - f1 n + 6)).toNat

end

end A053798.P1452749949520244728

namespace A053798

/-- `A316723(2*n+Δ[A008778(n)]+6)` -/
def P1452749949520244728.Spec : Prop :=
  ∀ n, P1452749949520244728.a n = A053798 n

end A053798

/-! ## A053798.P5880169760617407276

`A316723(A047391(n+3)+A027916(n+3))`
-/

namespace A053798.P5880169760617407276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A047391 (n + 3) + A027916 (n + 3)).toNat

end

end A053798.P5880169760617407276

namespace A053798

/-- `A316723(A047391(n+3)+A027916(n+3))` -/
def P5880169760617407276.Spec : Prop :=
  ∀ n, P5880169760617407276.a n = A053798 n

end A053798

/-!
# A053799: Number of basis partitions of n+9 with Durfee square size 3.

The programs for A053799, the canonical program `A053799.P904661431918655857` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053799 has offset 0).

The definition of A053799 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053799.P7027100118201904003

`ogf((1+x+x^2+2x^3+x^4+x^5+x^6)/(1-x-x^2+x^4+x^5-x^6))`
-/

namespace A053799.P7027100118201904003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 2, 1, 1, 1] [1, -1, -1, 0, 1, 1, -1] n

end

end A053799.P7027100118201904003

namespace A053799

/-- `ogf((1+x+x^2+2x^3+x^4+x^5+x^6)/(1-x-x^2+x^4+x^5-x^6))` -/
def P7027100118201904003.Spec : Prop :=
  ∀ n, P7027100118201904003.a n = A053799 n

end A053799

/-! ## A053799.P904661431918655857

`A000982(n)+A008749(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053799

/-- `A000982(n)+A008749(n)` -/
def P904661431918655857.Spec : Prop :=
  ∀ n, P904661431918655857.a n = A053799 n

theorem P904661431918655857.correct : P904661431918655857.Spec := by
  intro n
  simp only [A053799]

end A053799

/-! ## A053799.P11016009598464030703

`∑[∑[lcm(2, a(n-3))]]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A053799.P11016009598464030703
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f2 =>
  Nat.lcm 2 (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053799.P11016009598464030703

namespace A053799

/-- `∑[∑[lcm(2, a(n-3))]]` -/
def P11016009598464030703.Spec : Prop :=
  ∀ n, (P11016009598464030703.a n : ℤ) = A053799 n

end A053799

/-! ## A053799.P5378240754142927044

`∑[a(n-3)+4]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=4`
-/

namespace A053799.P5378240754142927044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 4, 4] fun n f1 =>
  f1 (n - 3) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053799.P5378240754142927044

namespace A053799

/-- `∑[a(n-3)+4]` -/
def P5378240754142927044.Spec : Prop :=
  ∀ n, (P5378240754142927044.a n : ℤ) = A053799 n

end A053799

/-! ## A053799.P14243037358071796554

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2, a(4)=0, a(5)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A053799.P14243037358071796554
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 2, 0, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053799.P14243037358071796554

namespace A053799

/-- `∑[∑[floor(a(n-3))]]` -/
def P14243037358071796554.Spec : Prop :=
  ∀ n, (P14243037358071796554.a n : ℤ) = A053799 n

end A053799

/-! ## A053799.P15885404554363426340

`∑[∑[3-gcd(3, a(n-3))]]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A053799.P15885404554363426340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f2 =>
  3 - (Int.gcd 3 (f2 (n - 3)) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053799.P15885404554363426340

namespace A053799

/-- `∑[∑[3-gcd(3, a(n-3))]]` -/
def P15885404554363426340.Spec : Prop :=
  ∀ n, P15885404554363426340.a n = A053799 n

end A053799

/-! ## A053799.P7446129035252425603

`∑[comp[2*n+3]+1]-ceil(n²/3)`
-/

namespace A053799.P7446129035252425603
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌈(n ^ 2 : ℚ) / 3⌉

end

end A053799.P7446129035252425603

namespace A053799

/-- `∑[comp[2*n+3]+1]-ceil(n²/3)` -/
def P7446129035252425603.Spec : Prop :=
  ∀ n, P7446129035252425603.a n = A053799 n

end A053799

/-! ## A053799.P9182002822174207561

`∑[∑[(3-a(n-3))*a(n-3)]]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A053799.P9182002822174207561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f2 =>
  (3 - f2 (n - 3)) * f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053799.P9182002822174207561

namespace A053799

/-- `∑[∑[(3-a(n-3))*a(n-3)]]` -/
def P9182002822174207561.Spec : Prop :=
  ∀ n, P9182002822174207561.a n = A053799 n

end A053799

/-! ## A053799.P9384700458678006900

`∑[A004277(floor(2*n/3))]`
-/

namespace A053799.P9384700458678006900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ⌊2 * ((n : ℚ) / 3)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053799.P9384700458678006900

namespace A053799

/-- `∑[A004277(floor(2*n/3))]` -/
def P9384700458678006900.Spec : Prop :=
  ∀ n, P9384700458678006900.a n = A053799 n

end A053799

/-! ## A053799.P8577331392073140108

`∑[∑[2*A000045(a(n-3))]]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A053799.P8577331392073140108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f2 =>
  2 * A000045 (f2 (n - 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053799.P8577331392073140108

namespace A053799

/-- `∑[∑[2*A000045(a(n-3))]]` -/
def P8577331392073140108.Spec : Prop :=
  ∀ n, P8577331392073140108.a n = A053799 n

end A053799

/-! ## A053799.P5258079057963320078

`(A000212(n)+1)*A040000(n)`
-/

namespace A053799.P5258079057963320078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000212 n + 1) * A040000 n

end

end A053799.P5258079057963320078

namespace A053799

/-- `(A000212(n)+1)*A040000(n)` -/
def P5258079057963320078.Spec : Prop :=
  ∀ n, P5258079057963320078.a n = A053799 n

end A053799

/-! ## A053799.P1939259416504542607

`(A007980(n)-n)*A040000(n)`
-/

namespace A053799.P1939259416504542607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007980 n - (n : ℤ)) * A040000 n

end

end A053799.P1939259416504542607

namespace A053799

/-- `(A007980(n)-n)*A040000(n)` -/
def P1939259416504542607.Spec : Prop :=
  ∀ n, P1939259416504542607.a n = A053799 n

end A053799

/-! ## A053799.P146016844878358358

`(floor(n²/3)+1)*A020639(A004277(n))`
-/

namespace A053799.P146016844878358358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n ^ 2 : ℚ) / 3⌋ + 1) * A020639 (A004277 n).toNat

end

end A053799.P146016844878358358

namespace A053799

/-- `(floor(n²/3)+1)*A020639(A004277(n))` -/
def P146016844878358358.Spec : Prop :=
  ∀ n, P146016844878358358.a n = A053799 n

end A053799

/-! ## A053799.P1670701292317160710

`∑[A004275(A008620(2*n))]`
-/

namespace A053799.P1670701292317160710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A008620 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053799.P1670701292317160710

namespace A053799

/-- `∑[A004275(A008620(2*n))]` -/
def P1670701292317160710.Spec : Prop :=
  ∀ n, P1670701292317160710.a n = A053799 n

end A053799

/-! ## A053799.P1735782927834235063

`A008749(2*n)`
-/

namespace A053799.P1735782927834235063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008749 (2 * n)

end

end A053799.P1735782927834235063

namespace A053799

/-- `A008749(2*n)` -/
def P1735782927834235063.Spec : Prop :=
  ∀ n, P1735782927834235063.a n = A053799 n

end A053799

/-! ## A053799.P7868039567085445032

`∑[A004275(A051274(2*n))]`
-/

namespace A053799.P7868039567085445032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A051274 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053799.P7868039567085445032

namespace A053799

/-- `∑[A004275(A051274(2*n))]` -/
def P7868039567085445032.Spec : Prop :=
  ∀ n, P7868039567085445032.a n = A053799 n

end A053799

/-! ## A053799.P13838434927127428962

`∑[A008611(A004274(2*n))]`
-/

namespace A053799.P13838434927127428962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A004274 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053799.P13838434927127428962

namespace A053799

/-- `∑[A008611(A004274(2*n))]` -/
def P13838434927127428962.Spec : Prop :=
  ∀ n, P13838434927127428962.a n = A053799 n

end A053799

/-! ## A053799.P710604053958632072

`A063200(A333574(n+1))`
-/

namespace A053799.P710604053958632072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063200 (A333574 (n + 1)).toNat

end

end A053799.P710604053958632072

namespace A053799

/-- `A063200(A333574(n+1))` -/
def P710604053958632072.Spec : Prop :=
  ∀ n, P710604053958632072.a n = A053799 n

end A053799

/-! ## A053799.P15424811185703384590

`A316723(A046691(n+2))`
-/

namespace A053799.P15424811185703384590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A046691 (n + 2)).toNat

end

end A053799.P15424811185703384590

namespace A053799

/-- `A316723(A046691(n+2))` -/
def P15424811185703384590.Spec : Prop :=
  ∀ n, P15424811185703384590.a n = A053799 n

end A053799

/-! ## A053799.P15737125138138714995

`A316723(eq[3, A025581(n)])`
-/

namespace A053799.P15737125138138714995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053799.P15737125138138714995

namespace A053799

/-- `A316723(eq[3, A025581(n)])` -/
def P15737125138138714995.Spec : Prop :=
  ∀ n, P15737125138138714995.a n = A053799 n

end A053799

