import SequenceMachineLib
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
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
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
import Seq.B002.C004
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C025

/-!
# A058602: Numbers k such that 7*2^k - 5 is prime.

The programs for A058602, there is no canonical definition to state claims against.
-/

/-! ## A058602.P4542434169346772317

`A036461(A360994(2*n+3)+A301784(n+1))`
-/

namespace A058602.P4542434169346772317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036461 (A360994 (2 * n + 3) + A301784 (n + 1)).toNat

end

end A058602.P4542434169346772317

/-!
# A058607: a(n) = (1 + 1/2 + 1/3 + ... + 1/n)*(2n-1)!/(n-1)!.

The programs for A058607, the canonical program `A058607.P7833659679759869241` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058607 has offset 1).

The definition of A058607 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058607.P7833659679759869241

`2*(2*(n+1)-1)*a(n-1)+C(2*(n+1)-1, n+1)*n!` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058607

/-- `2*(2*(n+1)-1)*a(n-1)+C(2*(n+1)-1, n+1)*n!` -/
def P7833659679759869241.Spec : Prop :=
  ∀ n, P7833659679759869241.a n = A058607 (n + 1)

theorem P7833659679759869241.correct : P7833659679759869241.Spec := by
  intro n
  simp only [A058607, Nat.add_sub_cancel]

end A058607

/-! ## A058607.P927342386409234030

`A000254(n+1)*A001700(n)`
-/

namespace A058607.P927342386409234030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (n + 1) * A001700 n

end

end A058607.P927342386409234030

namespace A058607

/-- `A000254(n+1)*A001700(n)` -/
def P927342386409234030.Spec : Prop :=
  ∀ n, P927342386409234030.a n = A058607 (n + 1)

end A058607

/-! ## A058607.P10469138199563936735

`A000254(n+1)*A001405(2*n+1)`
-/

namespace A058607.P10469138199563936735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (n + 1) * A001405 (2 * n + 1)

end

end A058607.P10469138199563936735

namespace A058607

/-- `A000254(n+1)*A001405(2*n+1)` -/
def P10469138199563936735.Spec : Prop :=
  ∀ n, P10469138199563936735.a n = A058607 (n + 1)

end A058607

/-! ## A058607.P351237050683312871

`record[A132393(A000217(n)+2)]*A001405(2*n+1)`
-/

namespace A058607.P351237050683312871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A000217 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001405 (2 * n + 1)

end

end A058607.P351237050683312871

namespace A058607

/-- `record[A132393(A000217(n)+2)]*A001405(2*n+1)` -/
def P351237050683312871.Spec : Prop :=
  ∀ n, P351237050683312871.a n = A058607 (n + 1)

end A058607

/-! ## A058607.P5619120723310947814

`A092692(A103517(n))/(n+1)!`
-/

namespace A058607.P5619120723310947814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092692 (A103517 n).toNat : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A058607.P5619120723310947814

namespace A058607

/-- `A092692(A103517(n))/(n+1)!` -/
def P5619120723310947814.Spec : Prop :=
  ∀ n, P5619120723310947814.a n = (A058607 (n + 1) : ℚ)

end A058607

/-!
# A058608: McKay-Thompson series of class 28C for Monster.

The programs for A058608, there is no canonical definition to state claims against.
-/

/-! ## A058608.P17267137575894934581

`A033999(n)*A112196(n)`
-/

namespace A058608.P17267137575894934581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112196 n

end

end A058608.P17267137575894934581

/-!
# A058619: McKay-Thompson series of class 30a for Monster.

The programs for A058619, there is no canonical definition to state claims against.
-/

/-! ## A058619.P10885800255766290565

`2*A058624(n)-A058625(n)`
-/

namespace A058619.P10885800255766290565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058624 n - A058625 n

end

end A058619.P10885800255766290565

/-!
# A058620: Lesser of two consecutive primes whose difference divided by two is a prime: ( prime(next prime after n) - prime(n) )/2 is prime.

The programs for A058620, the canonical program `A058620.P3198521373101814188` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058620 has offset 1).

The definition of A058620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058620.P15269813465303372530

`A243153(n+1)-A098013(n+1)`
-/

namespace A058620.P15269813465303372530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243153 (n + 1) - A098013 (n + 1)

end

end A058620.P15269813465303372530

namespace A058620

/-- `A243153(n+1)-A098013(n+1)` -/
def P15269813465303372530.Spec : Prop :=
  ∀ n, P15269813465303372530.a n = A058620 (n + 1)

end A058620

/-! ## A058620.P15718480784533438175

`A000040(A098015(n+1))`
-/

namespace A058620.P15718480784533438175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A098015 (n + 1)).toNat

end

end A058620.P15718480784533438175

namespace A058620

/-- `A000040(A098015(n+1))` -/
def P15718480784533438175.Spec : Prop :=
  ∀ n, P15718480784533438175.a n = A058620 (n + 1)

end A058620

/-! ## A058620.P11308030680854522319

`A045319(A098015(n+1)-1)`
-/

namespace A058620.P11308030680854522319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A098015 (n + 1) - 1).toNat

end

end A058620.P11308030680854522319

namespace A058620

/-- `A045319(A098015(n+1)-1)` -/
def P11308030680854522319.Spec : Prop :=
  ∀ n, P11308030680854522319.a n = A058620 (n + 1)

end A058620

/-! ## A058620.P3198521373101814188

`A243153(n+1)-2*p?[A028334(n+2)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A058620

/-- `A243153(n+1)-2*p?[A028334(n+2)]` -/
def P3198521373101814188.Spec : Prop :=
  ∀ n, P3198521373101814188.a n = A058620 (n + 1)

theorem P3198521373101814188.correct : P3198521373101814188.Spec := by
  intro n
  simp only [A058620, Nat.add_sub_cancel]

end A058620

/-! ## A058620.P18207844600618785446

`A000040(eq[2, A001222(A001223(n+1))]+1)`
-/

namespace A058620.P18207844600618785446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A058620.P18207844600618785446

namespace A058620

/-- `A000040(eq[2, A001222(A001223(n+1))]+1)` -/
def P18207844600618785446.Spec : Prop :=
  ∀ n, P18207844600618785446.a n = A058620 (n + 1)

end A058620

/-! ## A058620.P7789505305584379779

`p?[n*(A001222(A166597(n))-1)]`
-/

namespace A058620.P7789505305584379779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001222 (A166597 n).toNat - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A058620.P7789505305584379779

namespace A058620

/-- `p?[n*(A001222(A166597(n))-1)]` -/
def P7789505305584379779.Spec : Prop :=
  ∀ n, P7789505305584379779.a n = A058620 (n + 1)

end A058620

/-! ## A058620.P12844715987356334125

`2*A225461(n+1)-A243153(n+1)`
-/

namespace A058620.P12844715987356334125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A225461 (n + 1) - A243153 (n + 1)

end

end A058620.P12844715987356334125

namespace A058620

/-- `2*A225461(n+1)-A243153(n+1)` -/
def P12844715987356334125.Spec : Prop :=
  ∀ n, P12844715987356334125.a n = A058620 (n + 1)

end A058620

/-! ## A058620.P2946377642385721595

`A000040(A000720(A225461(n+1)))`
-/

namespace A058620.P2946377642385721595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A225461 (n + 1)).toNat).toNat

end

end A058620.P2946377642385721595

namespace A058620

/-- `A000040(A000720(A225461(n+1)))` -/
def P2946377642385721595.Spec : Prop :=
  ∀ n, P2946377642385721595.a n = A058620 (n + 1)

end A058620

/-! ## A058620.P10989033527115450884

`A002374(A225461(n+1))`
-/

namespace A058620.P10989033527115450884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002374 (A225461 (n + 1)).toNat

end

end A058620.P10989033527115450884

namespace A058620

/-- `A002374(A225461(n+1))` -/
def P10989033527115450884.Spec : Prop :=
  ∀ n, P10989033527115450884.a n = A058620 (n + 1)

end A058620

/-! ## A058620.P7195962090497895353

`A064989(A243153(n+1))`
-/

namespace A058620.P7195962090497895353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A243153 (n + 1)).toNat

end

end A058620.P7195962090497895353

namespace A058620

/-- `A064989(A243153(n+1))` -/
def P7195962090497895353.Spec : Prop :=
  ∀ n, P7195962090497895353.a n = A058620 (n + 1)

end A058620

/-! ## A058620.P1068610480421219237

`A225461(n+1)-A098014(n+1)`
-/

namespace A058620.P1068610480421219237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225461 (n + 1) - A098014 (n + 1)

end

end A058620.P1068610480421219237

namespace A058620

/-- `A225461(n+1)-A098014(n+1)` -/
def P1068610480421219237.Spec : Prop :=
  ∀ n, P1068610480421219237.a n = A058620 (n + 1)

end A058620

/-! ## A058620.P1778303519569351133

`A243153(n+1)-2*A098014(n+1)`
-/

namespace A058620.P1778303519569351133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243153 (n + 1) - 2 * A098014 (n + 1)

end

end A058620.P1778303519569351133

namespace A058620

/-- `A243153(n+1)-2*A098014(n+1)` -/
def P1778303519569351133.Spec : Prop :=
  ∀ n, P1778303519569351133.a n = A058620 (n + 1)

end A058620

/-!
# A058621: a(n) = 1/2*binomial(2*n,n) - (1+(-1)^n)/4*(binomial(n,floor(n/2)))^2.

The programs for A058621, the canonical program `A058621.P8241482541779683781` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058621 has offset 0).

The definition of A058621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058621.P8241482541779683781

`1/2*C(2*n, n)-(1+(-1)^n)/4*C(n, floor(n/2))²`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058621

/-- `1/2*C(2*n, n)-(1+(-1)^n)/4*C(n, floor(n/2))²` -/
def P8241482541779683781.Spec : Prop :=
  ∀ n, P8241482541779683781.a n = (A058621 n : ℚ)

end A058621

/-! ## A058621.P13732804594149316860

`record[a(n-1)/(floor(n/2)/n-1)]-A277247(n)` with `a(0)=1`
-/

namespace A058621.P13732804594149316860
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A277247 n : ℚ)

end

end A058621.P13732804594149316860

namespace A058621

/-- `record[a(n-1)/(floor(n/2)/n-1)]-A277247(n)` -/
def P13732804594149316860.Spec : Prop :=
  ∀ n, P13732804594149316860.a n = (A058621 n : ℚ)

end A058621

/-! ## A058621.P17461662659258441843

`A000984(n)-A277247(n)`
-/

namespace A058621.P17461662659258441843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A277247 n

end

end A058621.P17461662659258441843

namespace A058621

/-- `A000984(n)-A277247(n)` -/
def P17461662659258441843.Spec : Prop :=
  ∀ n, P17461662659258441843.a n = A058621 n

end A058621

/-! ## A058621.P9792127222808634267

`A277247(n)-A126869(n)²`
-/

namespace A058621.P9792127222808634267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277247 n - A126869 n ^ 2

end

end A058621.P9792127222808634267

namespace A058621

/-- `A277247(n)-A126869(n)²` -/
def P9792127222808634267.Spec : Prop :=
  ∀ n, P9792127222808634267.a n = A058621 n

end A058621

/-! ## A058621.P6253581305778328297

`A081668(2*n)-A277247(n)`
-/

namespace A058621.P6253581305778328297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (2 * n) - A277247 n

end

end A058621.P6253581305778328297

namespace A058621

/-- `A081668(2*n)-A277247(n)` -/
def P6253581305778328297.Spec : Prop :=
  ∀ n, P6253581305778328297.a n = A058621 n

end A058621

/-! ## A058621.P12056918478731891005

`A126869(2*n)-A277247(n)`
-/

namespace A058621.P12056918478731891005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) - A277247 n

end

end A058621.P12056918478731891005

namespace A058621

/-- `A126869(2*n)-A277247(n)` -/
def P12056918478731891005.Spec : Prop :=
  ∀ n, P12056918478731891005.a n = A058621 n

end A058621

/-! ## A058621.P18050841577591859695

`(A000984(n)-A126869(n)²)/2`
-/

namespace A058621.P18050841577591859695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n - A126869 n ^ 2 : ℚ) / 2

end

end A058621.P18050841577591859695

namespace A058621

/-- `(A000984(n)-A126869(n)²)/2` -/
def P18050841577591859695.Spec : Prop :=
  ∀ n, P18050841577591859695.a n = (A058621 n : ℚ)

end A058621

/-! ## A058621.P1640423193663338783

`A032443(n)-A264960(n)`
-/

namespace A058621.P1640423193663338783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032443 n - A264960 n

end

end A058621.P1640423193663338783

namespace A058621

/-- `A032443(n)-A264960(n)` -/
def P1640423193663338783.Spec : Prop :=
  ∀ n, P1640423193663338783.a n = A058621 n

end A058621

/-! ## A058621.P17531891559947744269

`A094527(∑[n])-A277247(n)`
-/

namespace A058621.P17531891559947744269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 (∑ j ∈ Finset.range (n + 1), f1 j) - A277247 n

end

end A058621.P17531891559947744269

namespace A058621

/-- `A094527(∑[n])-A277247(n)` -/
def P17531891559947744269.Spec : Prop :=
  ∀ n, P17531891559947744269.a n = A058621 n

end A058621

/-!
# A058622: a(n) = 2^(n-1) - ((1+(-1)^n)/4)*binomial(n, n/2).

The programs for A058622, the canonical program `A058622.P7570831990351998700` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058622 has offset 0).

The definition of A058622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058622.P7570831990351998700

`A027306(n)-A126869(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A058622

/-- `A027306(n)-A126869(n)` -/
def P7570831990351998700.Spec : Prop :=
  ∀ n, P7570831990351998700.a n = A058622 n

theorem P7570831990351998700.correct : P7570831990351998700.Spec := by
  intro n
  simp only [A058622]

end A058622

/-! ## A058622.P13517430366878375371

`(2^n-(1+(-1)^n)*C(n, floor(n/2))/2)/2`
-/

namespace A058622.P13517430366878375371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℚ) - ((1 + (-1) ^ n) * (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat : ℤ) : ℚ) / 2) / 2

end

end A058622.P13517430366878375371

namespace A058622

/-- `(2^n-(1+(-1)^n)*C(n, floor(n/2))/2)/2` -/
def P13517430366878375371.Spec : Prop :=
  ∀ n, P13517430366878375371.a n = (A058622 n : ℚ)

end A058622

/-! ## A058622.P12739279557181615751

`A294175(n)+A138364(n)`
-/

namespace A058622.P12739279557181615751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294175 n + A138364 n

end

end A058622.P12739279557181615751

namespace A058622

/-- `A294175(n)+A138364(n)` -/
def P12739279557181615751.Spec : Prop :=
  ∀ n, P12739279557181615751.a n = A058622 n

end A058622

/-! ## A058622.P5820764950256992474

`A001405(n)+A294175(n)-A126869(n)`
-/

namespace A058622.P5820764950256992474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + (A294175 n - A126869 n)

end

end A058622.P5820764950256992474

namespace A058622

/-- `A001405(n)+A294175(n)-A126869(n)` -/
def P5820764950256992474.Spec : Prop :=
  ∀ n, P5820764950256992474.a n = A058622 n

end A058622

/-! ## A058622.P14391502590684050542

`A128014(n+1)+A027306(n)-A063886(n+1)`
-/

namespace A058622.P14391502590684050542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128014 (n + 1) + (A027306 n - A063886 (n + 1))

end

end A058622.P14391502590684050542

namespace A058622

/-- `A128014(n+1)+A027306(n)-A063886(n+1)` -/
def P14391502590684050542.Spec : Prop :=
  ∀ n, P14391502590684050542.a n = A058622 n

end A058622

/-! ## A058622.P496846122325513802

`2^n-1-A226881(n)`
-/

namespace A058622.P496846122325513802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1 - A226881 n

end

end A058622.P496846122325513802

namespace A058622

/-- `2^n-1-A226881(n)` -/
def P496846122325513802.Spec : Prop :=
  ∀ n, P496846122325513802.a n = A058622 n

end A058622

/-! ## A058622.P17906828836214391874

`A000079(n)-A027306(n)`
-/

namespace A058622.P17906828836214391874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A027306 n

end

end A058622.P17906828836214391874

namespace A058622

/-- `A000079(n)-A027306(n)` -/
def P17906828836214391874.Spec : Prop :=
  ∀ n, P17906828836214391874.a n = A058622 n

end A058622

/-! ## A058622.P1364755130988055508

`A045621(n)-A294175(n)`
-/

namespace A058622.P1364755130988055508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 n - A294175 n

end

end A058622.P1364755130988055508

namespace A058622

/-- `A045621(n)-A294175(n)` -/
def P1364755130988055508.Spec : Prop :=
  ∀ n, P1364755130988055508.a n = A058622 n

end A058622

/-! ## A058622.P15755100559280170242

`xor(A000225(n), A226881(n))`
-/

namespace A058622.P15755100559280170242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A226881 n)

end

end A058622.P15755100559280170242

namespace A058622

/-- `xor(A000225(n), A226881(n))` -/
def P15755100559280170242.Spec : Prop :=
  ∀ n, P15755100559280170242.a n = A058622 n

end A058622

/-! ## A058622.P13068725170462732976

`∑[A011782(n)]-A027306(n)`
-/

namespace A058622.P13068725170462732976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A027306 n

end

end A058622.P13068725170462732976

namespace A058622

/-- `∑[A011782(n)]-A027306(n)` -/
def P13068725170462732976.Spec : Prop :=
  ∀ n, P13068725170462732976.a n = A058622 n

end A058622

/-! ## A058622.P454809603699361741

`A000051(n)-(A027306(n)+1)`
-/

namespace A058622.P454809603699361741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A027306 n + 1)

end

end A058622.P454809603699361741

namespace A058622

/-- `A000051(n)-(A027306(n)+1)` -/
def P454809603699361741.Spec : Prop :=
  ∀ n, P454809603699361741.a n = A058622 n

end A058622

/-! ## A058622.P3389585570624930564

`A000225(n)+1-A027306(n)`
-/

namespace A058622.P3389585570624930564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A027306 n)

end

end A058622.P3389585570624930564

namespace A058622

/-- `A000225(n)+1-A027306(n)` -/
def P3389585570624930564.Spec : Prop :=
  ∀ n, P3389585570624930564.a n = A058622 n

end A058622

/-! ## A058622.P15144145244946719860

`A011782(n+1)-A027306(n)`
-/

namespace A058622.P15144145244946719860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - A027306 n

end

end A058622.P15144145244946719860

namespace A058622

/-- `A011782(n+1)-A027306(n)` -/
def P15144145244946719860.Spec : Prop :=
  ∀ n, P15144145244946719860.a n = A058622 n

end A058622

/-! ## A058622.P4872451693515669496

`A131577(n+1)-A027306(n)`
-/

namespace A058622.P4872451693515669496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 1) - A027306 n

end

end A058622.P4872451693515669496

namespace A058622

/-- `A131577(n+1)-A027306(n)` -/
def P4872451693515669496.Spec : Prop :=
  ∀ n, P4872451693515669496.a n = A058622 n

end A058622

/-! ## A058622.P16897293447685673032

`(A000079(n)-A126869(n))/2`
-/

namespace A058622.P16897293447685673032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n - A126869 n : ℚ) / 2

end

end A058622.P16897293447685673032

namespace A058622

/-- `(A000079(n)-A126869(n))/2` -/
def P16897293447685673032.Spec : Prop :=
  ∀ n, P16897293447685673032.a n = (A058622 n : ℚ)

end A058622

/-! ## A058622.P11294813659192933601

`A027306(n+1)-A116406(n+1)`
-/

namespace A058622.P11294813659192933601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 (n + 1) - A116406 (n + 1)

end

end A058622.P11294813659192933601

namespace A058622

/-- `A027306(n+1)-A116406(n+1)` -/
def P11294813659192933601.Spec : Prop :=
  ∀ n, P11294813659192933601.a n = A058622 n

end A058622

/-! ## A058622.P2386501233284041635

`A063886(n)+A307768(n)-A027306(n)`
-/

namespace A058622.P2386501233284041635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 n + (A307768 n - A027306 n)

end

end A058622.P2386501233284041635

namespace A058622

/-- `A063886(n)+A307768(n)-A027306(n)` -/
def P2386501233284041635.Spec : Prop :=
  ∀ n, P2386501233284041635.a n = A058622 n

end A058622

/-! ## A058622.P15014109259242313884

`A001405(n+1)+A093387(n+1)-A027306(n)`
-/

namespace A058622.P15014109259242313884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) + (A093387 (n + 1) - A027306 n)

end

end A058622.P15014109259242313884

namespace A058622

/-- `A001405(n+1)+A093387(n+1)-A027306(n)` -/
def P15014109259242313884.Spec : Prop :=
  ∀ n, P15014109259242313884.a n = A058622 n

end A058622

/-! ## A058622.P17614526691793178482

`Δ[A000051(n)]-A027306(n)`
-/

namespace A058622.P17614526691793178482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027306 n

end

end A058622.P17614526691793178482

namespace A058622

/-- `Δ[A000051(n)]-A027306(n)` -/
def P17614526691793178482.Spec : Prop :=
  ∀ n, P17614526691793178482.a n = A058622 n

end A058622

/-! ## A058622.P6178637496870569807

`A100071(n)-A107373(n+1)`
-/

namespace A058622.P6178637496870569807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 n - A107373 (n + 1)

end

end A058622.P6178637496870569807

namespace A058622

/-- `A100071(n)-A107373(n+1)` -/
def P6178637496870569807.Spec : Prop :=
  ∀ n, P6178637496870569807.a n = A058622 n

end A058622

/-!
# A058626: McKay-Thompson series of class 30e for Monster.

The programs for A058626, there is no canonical definition to state claims against.
-/

/-! ## A058626.P12413788988781412301

`A002107(and(A304129(n+1), A304153(n+1)))`
-/

namespace A058626.P12413788988781412301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 (Int.land (A304129 (n + 1)) (A304153 (n + 1))).toNat

end

end A058626.P12413788988781412301

/-!
# A058627: Numbers n such that phi(n) = product of the digits of n.

The programs for A058627, there is no canonical definition to state claims against.
-/

/-! ## A058627.P11648026741282009939

`eq[n-A070565(n), A000010(abs(1-n)+1)]`
-/

namespace A058627.P11648026741282009939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A070565 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058627.P11648026741282009939

/-! ## A058627.P5267966896019656439

`eq[A000010(A028310(n)), A007954(n)]`
-/

namespace A058627.P5267966896019656439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058627.P5267966896019656439

/-! ## A058627.P18137027629003263229

`eq[A000010(A000038(n)+n), A007954(n)]`
-/

namespace A058627.P18137027629003263229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058627.P18137027629003263229

/-! ## A058627.P2798126573948058059

`eq[A000010(A065033(2*n)), A007954(n)]`
-/

namespace A058627.P2798126573948058059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058627.P2798126573948058059

/-! ## A058627.P12173693441900590408

`eq[A000010(A123108(2*n)), A007954(n)]`
-/

namespace A058627.P12173693441900590408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058627.P12173693441900590408

/-!
# A058628: McKay-Thompson series of class 31A for Monster.

The programs for A058628, there is no canonical definition to state claims against.
-/

/-! ## A058628.P18177739894725366779

`A260794(n+3)-A000194(A038004(n+1))`
-/

namespace A058628.P18177739894725366779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260794 (n + 3) - A000194 (A038004 (n + 1)).toNat

end

end A058628.P18177739894725366779

/-!
# A058629: McKay-Thompson series of class 32A for Monster.

The programs for A058629, there is no canonical definition to state claims against.
-/

/-! ## A058629.P4850350716498119822

`A023671(xor(6, A245002(n+4)))`
-/

namespace A058629.P4850350716498119822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023671 (Int.xor 6 (A245002 (n + 4))).toNat

end

end A058629.P4850350716498119822

/-! ## A058629.P13669046347216916476

`A316846(A002203(n))-A000002(n+1)`
-/

namespace A058629.P13669046347216916476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316846 (A002203 n).toNat - A000002 (n + 1)

end

end A058629.P13669046347216916476

/-! ## A058629.P10373507107000840499

`A351874(n)-A109925(A001787(n+1))`
-/

namespace A058629.P10373507107000840499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351874 n - A109925 (A001787 (n + 1)).toNat

end

end A058629.P10373507107000840499

/-! ## A058629.P18067962633277269674

`A003002(A000045(n+3)-A165026(n+3))`
-/

namespace A058629.P18067962633277269674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A000045 (n + 3) - A165026 (n + 3)).toNat

end

end A058629.P18067962633277269674

/-!
# A058630: McKay-Thompson series of class 32B for the Monster group.

The programs for A058630, there is no canonical definition to state claims against.
-/

/-! ## A058630.P8403879958464540702

`A299202(A181544(n))+A238495(n+1)`
-/

namespace A058630.P8403879958464540702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299202 (A181544 n).toNat + A238495 (n + 1)

end

end A058630.P8403879958464540702

/-! ## A058630.P4010051085252526381

`A321728(n+3)-A000035(A241152(n+2))`
-/

namespace A058630.P4010051085252526381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321728 (n + 3) - A000035 (A241152 (n + 2)).toNat

end

end A058630.P4010051085252526381

/-! ## A058630.P1720537978507020742

`A321728(n+3)-A117446(A046315(n+3))`
-/

namespace A058630.P1720537978507020742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321728 (n + 3) - A117446 (A046315 (n + 3)).toNat

end

end A058630.P1720537978507020742

/-! ## A058630.P1131573972341641897

`A275972(2*n+1)-A245562(A242527(n+3))`
-/

namespace A058630.P1131573972341641897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275972 (2 * n + 1) - A245562 (A242527 (n + 3)).toNat

end

end A058630.P1131573972341641897

/-! ## A058630.P3047651902190841391

`∑[A067693(A026735(n))]`
-/

namespace A058630.P3047651902190841391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067693 (A026735 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058630.P3047651902190841391

/-!
# A058632: Coefficients of replicable function number "32b".

The programs for A058632, there is no canonical definition to state claims against.
-/

/-! ## A058632.P12221810999792056680

`A112154(2*n)`
-/

namespace A058632.P12221810999792056680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112154 (2 * n)

end

end A058632.P12221810999792056680

/-! ## A058632.P11692360069477742389

`A112155(2*n)`
-/

namespace A058632.P11692360069477742389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112155 (2 * n)

end

end A058632.P11692360069477742389

/-! ## A058632.P5461099134013525078

`abs(A112154(n+n))`
-/

namespace A058632.P5461099134013525078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112154 (n + n)|

end

end A058632.P5461099134013525078

/-! ## A058632.P6662615652188113868

`abs(A112153(2*n))`
-/

namespace A058632.P6662615652188113868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112153 (2 * n)|

end

end A058632.P6662615652188113868

/-! ## A058632.P17469588744266631443

`A033999(n)*A112153(2*n)`
-/

namespace A058632.P17469588744266631443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112153 (2 * n)

end

end A058632.P17469588744266631443

/-! ## A058632.P12999155686619291519

`A057077(2*n)*A112153(2*n)`
-/

namespace A058632.P12999155686619291519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A112153 (2 * n)

end

end A058632.P12999155686619291519

/-! ## A058632.P11125277522401531356

`A087960(2*n)*A112153(2*n)`
-/

namespace A058632.P11125277522401531356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A112153 (2 * n)

end

end A058632.P11125277522401531356

/-! ## A058632.P15876356851520968632

`A010892(3*n)*A112153(2*n)`
-/

namespace A058632.P15876356851520968632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * n) * A112153 (2 * n)

end

end A058632.P15876356851520968632

/-! ## A058632.P14528378183280011812

`abs(A058526(2*n))`
-/

namespace A058632.P14528378183280011812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A058526 (2 * n)|

end

end A058632.P14528378183280011812

/-! ## A058632.P17474154817380529848

`A033999(n)*A058526(2*n)`
-/

namespace A058632.P17474154817380529848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A058526 (2 * n)

end

end A058632.P17474154817380529848

/-! ## A058632.P6791573459833848086

`A057077(2*n)*A058526(2*n)`
-/

namespace A058632.P6791573459833848086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A058526 (2 * n)

end

end A058632.P6791573459833848086

/-! ## A058632.P14015084535744755251

`A058526(2*n)*A087960(2*n)`
-/

namespace A058632.P14015084535744755251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058526 (2 * n) * A087960 (2 * n)

end

end A058632.P14015084535744755251

/-! ## A058632.P9518171003624332787

`A058526(2*n)*A260190(6*n)`
-/

namespace A058632.P9518171003624332787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058526 (2 * n) * A260190 (6 * n)

end

end A058632.P9518171003624332787

/-! ## A058632.P15599255883963825042

`A055975(2*n+1)*A058526(2*n)`
-/

namespace A058632.P15599255883963825042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (2 * n + 1) * A058526 (2 * n)

end

end A058632.P15599255883963825042

/-! ## A058632.P7015215309218657687

`A112153(2*n)/A058088(3*n)*A112145(3*n)`
-/

namespace A058632.P7015215309218657687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112153 (2 * n) : ℚ) / (A058088 (3 * n) : ℚ) * (A112145 (3 * n) : ℚ)

end

end A058632.P7015215309218657687

/-! ## A058632.P5554383975292919754

`A112153(2*n)/A087960(n²)`
-/

namespace A058632.P5554383975292919754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112153 (2 * n) : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A058632.P5554383975292919754

/-!
# A058633: Partial sums of A006577.

The programs for A058633, there is no canonical definition to state claims against.
-/

/-! ## A058633.P15526885719818368723

`∑[A006577(n+1)]`
-/

namespace A058633.P15526885719818368723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058633.P15526885719818368723

/-! ## A058633.P10573400120548193847

`∑[A008908(n+1)-1]`
-/

namespace A058633.P10573400120548193847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058633.P10573400120548193847

/-! ## A058633.P7664436141774995462

`∑[A058261(n)/(n+1)]`
-/

namespace A058633.P7664436141774995462
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058261 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058633.P7664436141774995462

/-! ## A058633.P14124734082050040838

`∑[floor(log2(A221468(n+1)))]`
-/

namespace A058633.P14124734082050040838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A221468 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058633.P14124734082050040838

/-! ## A058633.P4675257233528624572

`A186701(n+1)-(n+1)`
-/

namespace A058633.P4675257233528624572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186701 (n + 1) - (n + 1 : ℤ)

end

end A058633.P4675257233528624572

/-! ## A058633.P14996513697450605844

`∑[A023443(A008908(n+1))]`
-/

namespace A058633.P14996513697450605844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A008908 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058633.P14996513697450605844

/-! ## A058633.P10310949794314230636

`∑[A289207(A008908(n+1)+1)]`
-/

namespace A058633.P10310949794314230636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A008908 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058633.P10310949794314230636

/-! ## A058633.P15369633380062123115

`∑[A139399(n+1)+A130130(n)]`
-/

namespace A058633.P15369633380062123115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (n + 1) + A130130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058633.P15369633380062123115

/-! ## A058633.P1644338186357202883

`∑[A006667(n+1)+A006666(n+1)]`
-/

namespace A058633.P1644338186357202883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1) + A006666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058633.P1644338186357202883

/-! ## A058633.P16033323976577306116

`∑[A222597(n+1)+A076228(n+1)]`
-/

namespace A058633.P16033323976577306116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222597 (n + 1) + A076228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058633.P16033323976577306116

/-! ## A058633.P14474049206384467433

`∑[A222641(n+1)+A220421(n+1)]`
-/

namespace A058633.P14474049206384467433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222641 (n + 1) + A220421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058633.P14474049206384467433

/-! ## A058633.P10337572164980796747

`∑[A139399(n+1)+A158799(n)-1]`
-/

namespace A058633.P10337572164980796747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (n + 1) + (A158799 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058633.P10337572164980796747

/-! ## A058633.P7437091668255004398

`∑[∑[A153330(n+1)]-A153330(n+1)]`
-/

namespace A058633.P7437091668255004398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153330 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A153330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058633.P7437091668255004398

/-! ## A058633.P13047547309333684023

`∑[A006666(n+1)+A078719(n+1)-1]`
-/

namespace A058633.P13047547309333684023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (n + 1) + (A078719 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058633.P13047547309333684023

/-! ## A058633.P5525705223501518269

`∑[A076228(n+1)+A213204(n+1)-1]`
-/

namespace A058633.P5525705223501518269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076228 (n + 1) + (A213204 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058633.P5525705223501518269

/-! ## A058633.P3785579234730824409

`∑[A087225(n+1)+A222641(n+1)-1]`
-/

namespace A058633.P3785579234730824409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087225 (n + 1) + (A222641 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058633.P3785579234730824409

/-! ## A058633.P9535724458693892939

`∑[A139399(2*(n+1))]+n`
-/

namespace A058633.P9535724458693892939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A058633.P9535724458693892939

/-! ## A058633.P16296469240956541471

`∑[A280193(2*n+1)+A008908(n+1)]`
-/

namespace A058633.P16296469240956541471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A008908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058633.P16296469240956541471

/-! ## A058633.P1165689912311084166

`∑[A108618(A290102(2*(n+1)))+A008908(n+1)]`
-/

namespace A058633.P1165689912311084166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108618 (A290102 (2 * (n + 1))).toNat + A008908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058633.P1165689912311084166

/-! ## A058633.P16540705861194571535

`∑[A344276(3*(n+1))]`
-/

namespace A058633.P16540705861194571535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344276 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058633.P16540705861194571535

/-!
# A058635: a(n) = Fibonacci(2^n).

The programs for A058635, the canonical program `A058635.P11783534453267586822` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058635 has offset 0).

The definition of A058635 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058635.P312486159925446873

`a(n-1)*sqrt(5*a(n-1)²+4)` with `a(0)=1, a(1)=1`
-/

namespace A058635.P312486159925446873
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * Real.sqrt (5 * a (n - 1) ^ 2 + 4)

end

end A058635.P312486159925446873

namespace A058635

/-- `a(n-1)*sqrt(5*a(n-1)²+4)` -/
def P312486159925446873.Spec : Prop :=
  ∀ n, P312486159925446873.a n = (A058635 n : ℝ)

end A058635

/-! ## A058635.P18402145879070732743

`(a(n-1)^3/a(n-2)²+5*a(n-1)*a(n-2)²)/2` with `a(0)=1, a(1)=1`
-/

namespace A058635.P18402145879070732743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) ^ 3 / a (n - 2) ^ 2 + 5 * a (n - 1) * a (n - 2) ^ 2) / 2

end

end A058635.P18402145879070732743

namespace A058635

/-- `(a(n-1)^3/a(n-2)²+5*a(n-1)*a(n-2)²)/2` -/
def P18402145879070732743.Spec : Prop :=
  ∀ n, P18402145879070732743.a n = (A058635 n : ℚ)

end A058635

/-! ## A058635.P11783534453267586822

`a(n-1)*A001566(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A058635

/-- `a(n-1)*A001566(n-2)` -/
def P11783534453267586822.Spec : Prop :=
  ∀ n, P11783534453267586822.a n = A058635 n

theorem P11783534453267586822.correct : P11783534453267586822.Spec := by
  intro n
  simp only [A058635]

end A058635

/-! ## A058635.P4816723532366677850

`A000045(A000079(n))`
-/

namespace A058635.P4816723532366677850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000079 n).toNat

end

end A058635.P4816723532366677850

namespace A058635

/-- `A000045(A000079(n))` -/
def P4816723532366677850.Spec : Prop :=
  ∀ n, P4816723532366677850.a n = A058635 n

end A058635

/-! ## A058635.P8579929231754986257

`round(ϕ^2^n/sqrt(5))`
-/

namespace A058635.P8579929231754986257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 ^ n / Real.sqrt (5 : ℝ))

end

end A058635.P8579929231754986257

namespace A058635

/-- `round(ϕ^2^n/sqrt(5))` -/
def P8579929231754986257.Spec : Prop :=
  ∀ n, P8579929231754986257.a n = A058635 n

end A058635

/-!
# A058639: McKay-Thompson series of class 34a for the Monster group.

The programs for A058639, there is no canonical definition to state claims against.
-/

/-! ## A058639.P11100391807830285325

`A184640(n)+A055090(A261057(n+1))`
-/

namespace A058639.P11100391807830285325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184640 n + A055090 (A261057 (n + 1)).toNat

end

end A058639.P11100391807830285325

/-!
# A058645: a(n) = 2^(n-3)*n^2*(n+3).

The programs for A058645, the canonical program `A058645.P13850892688420796150` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058645 has offset 0).

The definition of A058645 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058645.P13850892688420796150

`2^(n-3)*n²*(n+3)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058645

/-- `2^(n-3)*n²*(n+3)` -/
def P13850892688420796150.Spec : Prop :=
  ∀ n, P13850892688420796150.a n = (A058645 n : ℚ)

end A058645

/-! ## A058645.P12047851429313882631

`abs(n/2*Δ[A001815(n)])`
-/

namespace A058645.P12047851429313882631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)|

end

end A058645.P12047851429313882631

namespace A058645

/-- `abs(n/2*Δ[A001815(n)])` -/
def P12047851429313882631.Spec : Prop :=
  ∀ n, P12047851429313882631.a n = (A058645 n : ℚ)

end A058645

/-! ## A058645.P2092579988531974007

`floor(n*n/2*A045623(n))`
-/

namespace A058645.P2092579988531974007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * ((n : ℚ) / 2 * (A045623 n : ℚ))⌋

end

end A058645.P2092579988531974007

namespace A058645

/-- `floor(n*n/2*A045623(n))` -/
def P2092579988531974007.Spec : Prop :=
  ∀ n, P2092579988531974007.a n = A058645 n

end A058645

/-! ## A058645.P2768318608687118422

`A084857(n)+A052771(n)`
-/

namespace A058645.P2768318608687118422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084857 n + A052771 n

end

end A058645.P2768318608687118422

namespace A058645

/-- `A084857(n)+A052771(n)` -/
def P2768318608687118422.Spec : Prop :=
  ∀ n, P2768318608687118422.a n = A058645 n

end A058645

/-! ## A058645.P9676712591884403305

`n*A084264(n)-A001787(n)`
-/

namespace A058645.P9676712591884403305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A084264 n - A001787 n

end

end A058645.P9676712591884403305

namespace A058645

/-- `n*A084264(n)-A001787(n)` -/
def P9676712591884403305.Spec : Prop :=
  ∀ n, P9676712591884403305.a n = A058645 n

end A058645

/-! ## A058645.P677214410159222289

`n*A072863(n)-A036289(n)`
-/

namespace A058645.P677214410159222289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A072863 n - A036289 n

end

end A058645.P677214410159222289

namespace A058645

/-- `n*A072863(n)-A036289(n)` -/
def P677214410159222289.Spec : Prop :=
  ∀ n, P677214410159222289.a n = A058645 n

end A058645

/-! ## A058645.P1658637730727811432

`abs(∑[A049611(n)]*A001489(n))`
-/

namespace A058645.P1658637730727811432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j) * A001489 n|

end

end A058645.P1658637730727811432

namespace A058645

/-- `abs(∑[A049611(n)]*A001489(n))` -/
def P1658637730727811432.Spec : Prop :=
  ∀ n, P1658637730727811432.a n = A058645 n

end A058645

/-! ## A058645.P18146460361039777180

`abs(n*(A084851(n)-A001792(n)))`
-/

namespace A058645.P18146460361039777180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (A084851 n - A001792 n)|

end

end A058645.P18146460361039777180

namespace A058645

/-- `abs(n*(A084851(n)-A001792(n)))` -/
def P18146460361039777180.Spec : Prop :=
  ∀ n, P18146460361039777180.a n = A058645 n

end A058645

/-! ## A058645.P15094481521285361740

`abs(n*(A001788(n)-A089658(n)))`
-/

namespace A058645.P15094481521285361740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (A001788 n - A089658 n)|

end

end A058645.P15094481521285361740

namespace A058645

/-- `abs(n*(A001788(n)-A089658(n)))` -/
def P15094481521285361740.Spec : Prop :=
  ∀ n, P15094481521285361740.a n = A058645 n

end A058645

/-! ## A058645.P12594438037028341752

`A010051(6*(n+1))+n*∑[A049611(n)]`
-/

namespace A058645.P12594438037028341752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (6 * (n + 1)) + (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058645.P12594438037028341752

namespace A058645

/-- `A010051(6*(n+1))+n*∑[A049611(n)]` -/
def P12594438037028341752.Spec : Prop :=
  ∀ n, P12594438037028341752.a n = A058645 n

end A058645

/-! ## A058645.P9517452026869365214

`n*∑[A049611(n)]/A001221(A071328(n+1))`
-/

namespace A058645.P9517452026869365214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) : ℚ) / (A001221 (A071328 (n + 1)).toNat : ℚ)

end

end A058645.P9517452026869365214

namespace A058645

/-- `n*∑[A049611(n)]/A001221(A071328(n+1))` -/
def P9517452026869365214.Spec : Prop :=
  ∀ n, P9517452026869365214.a n = (A058645 n : ℚ)

end A058645

/-! ## A058645.P13431203959016687606

`n*∑[A049611(n)]/A001221(A006093(n+1)+1)`
-/

namespace A058645.P13431203959016687606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) : ℚ) / (A001221 (A006093 (n + 1) + 1).toNat : ℚ)

end

end A058645.P13431203959016687606

namespace A058645

/-- `n*∑[A049611(n)]/A001221(A006093(n+1)+1)` -/
def P13431203959016687606.Spec : Prop :=
  ∀ n, P13431203959016687606.a n = (A058645 n : ℚ)

end A058645

/-! ## A058645.P3041043926310565689

`n²*A045623(n)/2`
-/

namespace A058645.P3041043926310565689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A045623 n : ℚ) / 2

end

end A058645.P3041043926310565689

namespace A058645

/-- `n²*A045623(n)/2` -/
def P3041043926310565689.Spec : Prop :=
  ∀ n, P3041043926310565689.a n = (A058645 n : ℚ)

end A058645

/-! ## A058645.P11705781039210503589

`∑[A084903(n)]-A084903(n)`
-/

namespace A058645.P11705781039210503589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A084903 n

end

end A058645.P11705781039210503589

namespace A058645

/-- `∑[A084903(n)]-A084903(n)` -/
def P11705781039210503589.Spec : Prop :=
  ∀ n, P11705781039210503589.a n = A058645 n

end A058645

/-! ## A058645.P3026529026115656934

`A000096(n)*A001787(n)/2`
-/

namespace A058645.P3026529026115656934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 n * A001787 n : ℚ) / 2

end

end A058645.P3026529026115656934

namespace A058645

/-- `A000096(n)*A001787(n)/2` -/
def P3026529026115656934.Spec : Prop :=
  ∀ n, P3026529026115656934.a n = (A058645 n : ℚ)

end A058645

/-! ## A058645.P14370995414470006167

`A052771(n+1)+A001787(n)-A052771(n)`
-/

namespace A058645.P14370995414470006167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052771 (n + 1) + (A001787 n - A052771 n)

end

end A058645.P14370995414470006167

namespace A058645

/-- `A052771(n+1)+A001787(n)-A052771(n)` -/
def P14370995414470006167.Spec : Prop :=
  ∀ n, P14370995414470006167.a n = A058645 n

end A058645

/-!
# A058648: McKay-Thompson series of class 36a for Monster.

The programs for A058648, there is no canonical definition to state claims against.
-/

/-! ## A058648.P15306942084434955927

`A049347(n)*A112174(n)`
-/

namespace A058648.P15306942084434955927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A112174 n

end

end A058648.P15306942084434955927

/-! ## A058648.P16310107545614190319

`A112174(n)*A257075(n)`
-/

namespace A058648.P16310107545614190319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112174 n * A257075 n

end

end A058648.P16310107545614190319

/-! ## A058648.P13498028316343149771

`Δ[A059126(n)]*A112174(n)`
-/

namespace A058648.P13498028316343149771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A112174 n

end

end A058648.P13498028316343149771

/-! ## A058648.P13772286808810611243

`A112174(n)*A343785(n+1)`
-/

namespace A058648.P13772286808810611243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112174 n * A343785 (n + 1)

end

end A058648.P13772286808810611243

/-! ## A058648.P11980197264460092669

`Δ[A133310(n)]*A112174(n)`
-/

namespace A058648.P11980197264460092669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A112174 n

end

end A058648.P11980197264460092669

/-! ## A058648.P5899108618060984875

`A102283(n+1)*A112174(n)`
-/

namespace A058648.P5899108618060984875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (n + 1) * A112174 n

end

end A058648.P5899108618060984875

/-! ## A058648.P4351995410686493729

`A010892(2*n+1)*A112174(n)`
-/

namespace A058648.P4351995410686493729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (2 * n + 1) * A112174 n

end

end A058648.P4351995410686493729

/-!
# A058649: a(n) = 2^(n-4)*n*(n+1)*(n^2+5*n-2).

The programs for A058649, the canonical program `A058649.P11605256678981403107` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058649 has offset 0).

The definition of A058649 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058649.P11605256678981403107

`2^(n-4)*n*(n+1)*(n²+5*n-2)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058649

/-- `2^(n-4)*n*(n+1)*(n²+5*n-2)` -/
def P11605256678981403107.Spec : Prop :=
  ∀ n, P11605256678981403107.a n = (A058649 n : ℚ)

end A058649

/-! ## A058649.P15268351161126665315

`A001788(n)*A046691(n)/2`
-/

namespace A058649.P15268351161126665315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001788 n * A046691 n : ℚ) / 2

end

end A058649.P15268351161126665315

namespace A058649

/-- `A001788(n)*A046691(n)/2` -/
def P15268351161126665315.Spec : Prop :=
  ∀ n, P15268351161126665315.a n = (A058649 n : ℚ)

end A058649

/-! ## A058649.P7565316096695163535

`A349706(A000217(n+4)+n)`
-/

namespace A058649.P7565316096695163535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349706 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A058649.P7565316096695163535

namespace A058649

/-- `A349706(A000217(n+4)+n)` -/
def P7565316096695163535.Spec : Prop :=
  ∀ n, P7565316096695163535.a n = A058649 n

end A058649

/-! ## A058649.P17198424668933867439

`A231502(2^n-1)`
-/

namespace A058649.P17198424668933867439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231502 (2 ^ n - 1)

end

end A058649.P17198424668933867439

namespace A058649

/-- `A231502(2^n-1)` -/
def P17198424668933867439.Spec : Prop :=
  ∀ n, P17198424668933867439.a n = A058649 n

end A058649

/-!
# A058650: McKay-Thompson series of class 36c for Monster.

The programs for A058650, there is no canonical definition to state claims against.
-/

/-! ## A058650.P11214032422052925302

`A049347(n)*A112177(n)`
-/

namespace A058650.P11214032422052925302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A112177 n

end

end A058650.P11214032422052925302

/-! ## A058650.P11772786050676463808

`A112177(n)*A257075(n)`
-/

namespace A058650.P11772786050676463808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112177 n * A257075 n

end

end A058650.P11772786050676463808

/-! ## A058650.P4427844695338621550

`Δ[A059126(n)]*A112177(n)`
-/

namespace A058650.P4427844695338621550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A112177 n

end

end A058650.P4427844695338621550

/-! ## A058650.P1523220891224691400

`A112177(n)*A343785(n+1)`
-/

namespace A058650.P1523220891224691400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112177 n * A343785 (n + 1)

end

end A058650.P1523220891224691400

/-! ## A058650.P10829197950840571388

`Δ[A133310(n)]*A112177(n)`
-/

namespace A058650.P10829197950840571388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A112177 n

end

end A058650.P10829197950840571388

/-! ## A058650.P8560183849070706386

`A102283(n+1)*A112177(n)`
-/

namespace A058650.P8560183849070706386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (n + 1) * A112177 n

end

end A058650.P8560183849070706386

/-!
# A058654: The sum of a prime and a nonzero square.

The programs for A058654, there is no canonical definition to state claims against.
-/

/-! ## A058654.P13382085399120071490

`comp[A064233(n+1)-1]+1`
-/

namespace A058654.P13382085399120071490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064233 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A058654.P13382085399120071490

/-! ## A058654.P555090789573160259

`lt[A317683(n), A317682(n)]`
-/

namespace A058654.P555090789573160259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317683 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317682 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A058654.P555090789573160259

/-! ## A058654.P3303541622328040935

`lt[0, A064272(n+2)]+2`
-/

namespace A058654.P3303541622328040935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064272 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A058654.P3303541622328040935

/-! ## A058654.P8841272328731756323

`lt[1, A283183(n+1)]+1`
-/

namespace A058654.P8841272328731756323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283183 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A058654.P8841272328731756323

/-! ## A058654.P13424212419078182799

`lt[1, A283183(A028310(n))]`
-/

namespace A058654.P13424212419078182799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283183 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A058654.P13424212419078182799

/-! ## A058654.P10576828649063177376

`A020725(lt[1, A283183(n+1)])`
-/

namespace A058654.P10576828649063177376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A058654.P10576828649063177376

/-! ## A058654.P17393283418266487153

`eq[char[A064233(n+1)], A000007(n)]`
-/

namespace A058654.P17393283418266487153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064233 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A058654.P17393283418266487153

/-! ## A058654.P11191134140950448841

`eq[char[A064233(n+1)], A000038(n)]`
-/

namespace A058654.P11191134140950448841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064233 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A058654.P11191134140950448841

/-! ## A058654.P2595110732848050432

`eq[char[A064233(n+1)], A169585(n)]`
-/

namespace A058654.P2595110732848050432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064233 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A058654.P2595110732848050432

/-! ## A058654.P7375232004066464503

`lt[0, A064272(A233583(n+1))]`
-/

namespace A058654.P7375232004066464503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064272 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A058654.P7375232004066464503

/-!
# A058656: a(n) = gcd(n+1, phi(n)).

The programs for A058656, the canonical program `A058656.P16876800016486571500` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058656 has offset 1).

The definition of A058656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058656.P16876800016486571500

`gcd(n+2, ∏{p}[n+1, 1-#])`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058656

/-- `gcd(n+2, ∏{p}[n+1, 1-#])` -/
def P16876800016486571500.Spec : Prop :=
  ∀ n, (P16876800016486571500.a n : ℤ) = A058656 (n + 1)

theorem P16876800016486571500.correct : P16876800016486571500.Spec := by
  intro n
  simp only [A058656, Nat.add_sub_cancel]

end A058656

/-! ## A058656.P13436559135062316672

`gcd(n+2, Δ[A002088(n)])`
-/

namespace A058656.P13436559135062316672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (f1 (n + 1) - f1 n)

end

end A058656.P13436559135062316672

namespace A058656

/-- `gcd(n+2, Δ[A002088(n)])` -/
def P13436559135062316672.Spec : Prop :=
  ∀ n, (P13436559135062316672.a n : ℤ) = A058656 (n + 1)

end A058656

/-! ## A058656.P6690662430950985014

`(n+2)/A060474(n+1)`
-/

namespace A058656.P6690662430950985014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A060474 (n + 1) : ℚ)

end

end A058656.P6690662430950985014

namespace A058656

/-- `(n+2)/A060474(n+1)` -/
def P6690662430950985014.Spec : Prop :=
  ∀ n, P6690662430950985014.a n = (A058656 (n + 1) : ℚ)

end A058656

/-! ## A058656.P2421835100820911810

`gcd(4/2+n, A002618(n+1))`
-/

namespace A058656.P2421835100820911810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((4 : ℚ) / 2 + (n : ℚ))) (A002618 (n + 1))

end

end A058656.P2421835100820911810

namespace A058656

/-- `gcd(4/2+n, A002618(n+1))` -/
def P2421835100820911810.Spec : Prop :=
  ∀ n, (P2421835100820911810.a n : ℤ) = A058656 (n + 1)

end A058656

/-! ## A058656.P3260037372903397080

`gcd(abs(1-n)+3, A000010(n+1))`
-/

namespace A058656.P3260037372903397080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (|1 - (n : ℤ)| + 3) (A000010 (n + 1))

end

end A058656.P3260037372903397080

namespace A058656

/-- `gcd(abs(1-n)+3, A000010(n+1))` -/
def P3260037372903397080.Spec : Prop :=
  ∀ n, (P3260037372903397080.a n : ℤ) = A058656 (n + 1)

end A058656

/-! ## A058656.P1120896516171221377

`gcd(ceil((2*n+3)/2), A009262(n+1))`
-/

namespace A058656.P1120896516171221377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌈(2 * n + 3 : ℚ) / 2⌉ (A009262 (n + 1))

end

end A058656.P1120896516171221377

namespace A058656

/-- `gcd(ceil((2*n+3)/2), A009262(n+1))` -/
def P1120896516171221377.Spec : Prop :=
  ∀ n, (P1120896516171221377.a n : ℤ) = A058656 (n + 1)

end A058656

/-! ## A058656.P6375573888936916764

`gcd(abs(2*n+1-n)+1, A039649(n+1)-1)`
-/

namespace A058656.P6375573888936916764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (|(2 * n + 1 : ℤ) - (n : ℤ)| + 1) (A039649 (n + 1) - 1)

end

end A058656.P6375573888936916764

namespace A058656

/-- `gcd(abs(2*n+1-n)+1, A039649(n+1)-1)` -/
def P6375573888936916764.Spec : Prop :=
  ∀ n, (P6375573888936916764.a n : ℤ) = A058656 (n + 1)

end A058656

/-! ## A058656.P5325810737822739261

`gcd(A000010(n+1), A057544(n))`
-/

namespace A058656.P5325810737822739261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A057544 n)

end

end A058656.P5325810737822739261

namespace A058656

/-- `gcd(A000010(n+1), A057544(n))` -/
def P5325810737822739261.Spec : Prop :=
  ∀ n, (P5325810737822739261.a n : ℤ) = A058656 (n + 1)

end A058656

/-! ## A058656.P1966300592704232691

`A000010(n+1)/A060473(n+1)`
-/

namespace A058656.P1966300592704232691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A060473 (n + 1) : ℚ)

end

end A058656.P1966300592704232691

namespace A058656

/-- `A000010(n+1)/A060473(n+1)` -/
def P1966300592704232691.Spec : Prop :=
  ∀ n, P1966300592704232691.a n = (A058656 (n + 1) : ℚ)

end A058656

/-! ## A058656.P12129464792511886926

`gcd(A002618(n+1), A020725(n+1))`
-/

namespace A058656.P12129464792511886926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002618 (n + 1)) (A020725 (n + 1))

end

end A058656.P12129464792511886926

namespace A058656

/-- `gcd(A002618(n+1), A020725(n+1))` -/
def P12129464792511886926.Spec : Prop :=
  ∀ n, (P12129464792511886926.a n : ℤ) = A058656 (n + 1)

end A058656

/-! ## A058656.P487762914535258896

`gcd(A009262(n+1), A065475(n+1))`
-/

namespace A058656.P487762914535258896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009262 (n + 1)) (A065475 (n + 1))

end

end A058656.P487762914535258896

namespace A058656

/-- `gcd(A009262(n+1), A065475(n+1))` -/
def P487762914535258896.Spec : Prop :=
  ∀ n, (P487762914535258896.a n : ℤ) = A058656 (n + 1)

end A058656

/-! ## A058656.P6637008758461553704

`gcd(A023900(n+1), A062830(n+1))`
-/

namespace A058656.P6637008758461553704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023900 (n + 1)) (A062830 (n + 1))

end

end A058656.P6637008758461553704

namespace A058656

/-- `gcd(A023900(n+1), A062830(n+1))` -/
def P6637008758461553704.Spec : Prop :=
  ∀ n, (P6637008758461553704.a n : ℤ) = A058656 (n + 1)

end A058656

/-! ## A058656.P17856037899173596482

`gcd(A053191(n+1), A114637(n+1))`
-/

namespace A058656.P17856037899173596482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053191 (n + 1)) (A114637 (n + 1))

end

end A058656.P17856037899173596482

namespace A058656

/-- `gcd(A053191(n+1), A114637(n+1))` -/
def P17856037899173596482.Spec : Prop :=
  ∀ n, (P17856037899173596482.a n : ℤ) = A058656 (n + 1)

end A058656

/-! ## A058656.P4168347734224641139

`gcd(A173557(n+1), A181569(n+1))`
-/

namespace A058656.P4168347734224641139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A173557 (n + 1)) (A181569 (n + 1))

end

end A058656.P4168347734224641139

namespace A058656

/-- `gcd(A173557(n+1), A181569(n+1))` -/
def P4168347734224641139.Spec : Prop :=
  ∀ n, (P4168347734224641139.a n : ℤ) = A058656 (n + 1)

end A058656

/-! ## A058656.P13358310390362528116

`gcd(A131738(n+1), A173557(2*(n+1)))`
-/

namespace A058656.P13358310390362528116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131738 (n + 1)) (A173557 (2 * (n + 1)))

end

end A058656.P13358310390362528116

namespace A058656

/-- `gcd(A131738(n+1), A173557(2*(n+1)))` -/
def P13358310390362528116.Spec : Prop :=
  ∀ n, (P13358310390362528116.a n : ℤ) = A058656 (n + 1)

end A058656

/-! ## A058656.P17913339728505712509

`gcd(A005451(n+2), A060473(2*(n+1)))`
-/

namespace A058656.P17913339728505712509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005451 (n + 2)) (A060473 (2 * (n + 1)))

end

end A058656.P17913339728505712509

namespace A058656

/-- `gcd(A005451(n+2), A060473(2*(n+1)))` -/
def P17913339728505712509.Spec : Prop :=
  ∀ n, (P17913339728505712509.a n : ℤ) = A058656 (n + 1)

end A058656

/-! ## A058656.P1511087816170251059

`gcd(A033286(n+2), A055034(2*(n+1)))`
-/

namespace A058656.P1511087816170251059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033286 (n + 2)) (A055034 (2 * (n + 1)))

end

end A058656.P1511087816170251059

namespace A058656

/-- `gcd(A033286(n+2), A055034(2*(n+1)))` -/
def P1511087816170251059.Spec : Prop :=
  ∀ n, (P1511087816170251059.a n : ℤ) = A058656 (n + 1)

end A058656

/-!
# A058657: McKay-Thompson series of class 38A for Monster.

The programs for A058657, there is no canonical definition to state claims against.
-/

/-! ## A058657.P8051160714909940644

`A056556(A325098(n)²*ceil(xor(1, n)/2))`
-/

namespace A058657.P8051160714909940644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A325098 n ^ 2 * ⌈(Nat.xor 1 n : ℚ) / 2⌉).toNat

end

end A058657.P8051160714909940644

/-!
# A058663: a(n) = gcd(n-1, n-phi(n)).

The programs for A058663, the canonical program `A058663.P9892355996546786565` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058663 has offset 1).

The definition of A058663 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A058663.P9892355996546786565

`gcd(n, A051953(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A058663

/-- `gcd(n, A051953(n+1))` -/
def P9892355996546786565.Spec : Prop :=
  ∀ n, (P9892355996546786565.a n : ℤ) = A058663 (n + 1)

theorem P9892355996546786565.correct : P9892355996546786565.Spec := by
  intro n
  simp only [A058663, Nat.add_sub_cancel]

end A058663

/-! ## A058663.P12746463030452987248

`gcd(1-A002618(n+1), ∑[n])`
-/

namespace A058663.P12746463030452987248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A002618 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A058663.P12746463030452987248

namespace A058663

/-- `gcd(1-A002618(n+1), ∑[n])` -/
def P12746463030452987248.Spec : Prop :=
  ∀ n, (P12746463030452987248.a n : ℤ) = A058663 (n + 1)

end A058663

/-! ## A058663.P17741346554319461525

`gcd(2*n-n, A109606(n+1))`
-/

namespace A058663.P17741346554319461525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * n : ℤ) - (n : ℤ)) (A109606 (n + 1))

end

end A058663.P17741346554319461525

namespace A058663

/-- `gcd(2*n-n, A109606(n+1))` -/
def P17741346554319461525.Spec : Prop :=
  ∀ n, (P17741346554319461525.a n : ℤ) = A058663 (n + 1)

end A058663

/-! ## A058663.P16346882471643818963

`gcd(A013636(n), A258434(n+1))`
-/

namespace A058663.P16346882471643818963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013636 n) (A258434 (n + 1))

end

end A058663.P16346882471643818963

namespace A058663

/-- `gcd(A013636(n), A258434(n+1))` -/
def P16346882471643818963.Spec : Prop :=
  ∀ n, (P16346882471643818963.a n : ℤ) = A058663 (n + 1)

end A058663

/-! ## A058663.P17774317148133962723

`gcd(A022998(n), A318305(n+1))`
-/

namespace A058663.P17774317148133962723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022998 n) (A318305 (n + 1))

end

end A058663.P17774317148133962723

namespace A058663

/-- `gcd(A022998(n), A318305(n+1))` -/
def P17774317148133962723.Spec : Prop :=
  ∀ n, (P17774317148133962723.a n : ℤ) = A058663 (n + 1)

end A058663

/-! ## A058663.P11243566795700344149

`gcd(A219428(n+1)+1, A181983(n))`
-/

namespace A058663.P11243566795700344149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A219428 (n + 1) + 1) (A181983 n)

end

end A058663.P11243566795700344149

namespace A058663

/-- `gcd(A219428(n+1)+1, A181983(n))` -/
def P11243566795700344149.Spec : Prop :=
  ∀ n, (P11243566795700344149.a n : ℤ) = A058663 (n + 1)

end A058663

/-! ## A058663.P13610814257341679301

`gcd(1-A053191(n+1), A038608(n))`
-/

namespace A058663.P13610814257341679301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A053191 (n + 1)) (A038608 n)

end

end A058663.P13610814257341679301

namespace A058663

/-- `gcd(1-A053191(n+1), A038608(n))` -/
def P13610814257341679301.Spec : Prop :=
  ∀ n, (P13610814257341679301.a n : ℤ) = A058663 (n + 1)

end A058663

/-! ## A058663.P9873727500929413045

`gcd(2-A039649(n+1), A026741(n))`
-/

namespace A058663.P9873727500929413045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A039649 (n + 1)) (A026741 n)

end

end A058663.P9873727500929413045

namespace A058663

/-- `gcd(2-A039649(n+1), A026741(n))` -/
def P9873727500929413045.Spec : Prop :=
  ∀ n, (P9873727500929413045.a n : ℤ) = A058663 (n + 1)

end A058663

/-! ## A058663.P1315403152581958776

`gcd(2-A113636(n+1), A076511(n+1))`
-/

namespace A058663.P1315403152581958776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A113636 (n + 1)) (A076511 (n + 1))

end

end A058663.P1315403152581958776

namespace A058663

/-- `gcd(2-A113636(n+1), A076511(n+1))` -/
def P1315403152581958776.Spec : Prop :=
  ∀ n, (P1315403152581958776.a n : ℤ) = A058663 (n + 1)

end A058663

/-! ## A058663.P14051930147154379424

`gcd(A052106(n+1)+n, A052106(n+1))`
-/

namespace A058663.P14051930147154379424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052106 (n + 1) + (n : ℤ)) (A052106 (n + 1))

end

end A058663.P14051930147154379424

namespace A058663

/-- `gcd(A052106(n+1)+n, A052106(n+1))` -/
def P14051930147154379424.Spec : Prop :=
  ∀ n, (P14051930147154379424.a n : ℤ) = A058663 (n + 1)

end A058663

/-! ## A058663.P9381783921864630980

`gcd(A053192(n+1)+n, A053192(n+1))`
-/

namespace A058663.P9381783921864630980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053192 (n + 1) + (n : ℤ)) (A053192 (n + 1))

end

end A058663.P9381783921864630980

namespace A058663

/-- `gcd(A053192(n+1)+n, A053192(n+1))` -/
def P9381783921864630980.Spec : Prop :=
  ∀ n, (P9381783921864630980.a n : ℤ) = A058663 (n + 1)

end A058663

/-! ## A058663.P882134745177183182

`gcd(A053650(n+1)+n, A053650(n+1))`
-/

namespace A058663.P882134745177183182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053650 (n + 1) + (n : ℤ)) (A053650 (n + 1))

end

end A058663.P882134745177183182

namespace A058663

/-- `gcd(A053650(n+1)+n, A053650(n+1))` -/
def P882134745177183182.Spec : Prop :=
  ∀ n, (P882134745177183182.a n : ℤ) = A058663 (n + 1)

end A058663

/-! ## A058663.P5495831731703958713

`gcd(A048865(n+1)+A048864(n+1)-1, n-A109606(n+1))`
-/

namespace A058663.P5495831731703958713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048865 (n + 1) + A048864 (n + 1) - 1) ((n : ℤ) - A109606 (n + 1))

end

end A058663.P5495831731703958713

namespace A058663

/-- `gcd(A048865(n+1)+A048864(n+1)-1, n-A109606(n+1))` -/
def P5495831731703958713.Spec : Prop :=
  ∀ n, (P5495831731703958713.a n : ℤ) = A058663 (n + 1)

end A058663

/-! ## A058663.P3108212362007762116

`gcd(A319700(2*(n+1))+n, A319700(2*(n+1)))`
-/

namespace A058663.P3108212362007762116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A319700 (2 * (n + 1)) + (n : ℤ)) (A319700 (2 * (n + 1)))

end

end A058663.P3108212362007762116

namespace A058663

/-- `gcd(A319700(2*(n+1))+n, A319700(2*(n+1)))` -/
def P3108212362007762116.Spec : Prop :=
  ∀ n, (P3108212362007762116.a n : ℤ) = A058663 (n + 1)

end A058663

/-! ## A058663.P13995568968479141488

`gcd(1-A067541(2*n+1), A249122(2*n+1))`
-/

namespace A058663.P13995568968479141488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A067541 (2 * n + 1)) (A249122 (2 * n + 1))

end

end A058663.P13995568968479141488

namespace A058663

/-- `gcd(1-A067541(2*n+1), A249122(2*n+1))` -/
def P13995568968479141488.Spec : Prop :=
  ∀ n, (P13995568968479141488.a n : ℤ) = A058663 (n + 1)

end A058663

/-! ## A058663.P5971550593005552129

`gcd(A109606(n+1), A118442(n))`
-/

namespace A058663.P5971550593005552129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109606 (n + 1)) (A118442 n)

end

end A058663.P5971550593005552129

namespace A058663

/-- `gcd(A109606(n+1), A118442(n))` -/
def P5971550593005552129.Spec : Prop :=
  ∀ n, (P5971550593005552129.a n : ℤ) = A058663 (n + 1)

end A058663

/-! ## A058663.P13226769785090043389

`gcd(1-A000010((2*n-(n-1))²), 2*n)`
-/

namespace A058663.P13226769785090043389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A000010 (((2 * n : ℤ) - ((n : ℤ) - 1)) ^ 2).toNat) (2 * n : ℤ)

end

end A058663.P13226769785090043389

namespace A058663

/-- `gcd(1-A000010((2*n-(n-1))²), 2*n)` -/
def P13226769785090043389.Spec : Prop :=
  ∀ n, (P13226769785090043389.a n : ℤ) = A058663 (n + 1)

end A058663

/-! ## A058663.P11811983923162038925

`gcd(n, A308121(A005728(n)))`
-/

namespace A058663.P11811983923162038925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A308121 (A005728 n).toNat)

end

end A058663.P11811983923162038925

namespace A058663

/-- `gcd(n, A308121(A005728(n)))` -/
def P11811983923162038925.Spec : Prop :=
  ∀ n, (P11811983923162038925.a n : ℤ) = A058663 (n + 1)

end A058663

/-!
# A058664: McKay-Thompson series of class 40C for Monster.

The programs for A058664, there is no canonical definition to state claims against.
-/

/-! ## A058664.P5518142816727822108

`(A112180(n)+A112179(n))/2`
-/

namespace A058664.P5518142816727822108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112180 n + A112179 n : ℚ) / 2

end

end A058664.P5518142816727822108

/-! ## A058664.P16011869040149700354

`A273943(A112180(n)+A112179(n))`
-/

namespace A058664.P16011869040149700354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A112180 n + A112179 n).toNat

end

end A058664.P16011869040149700354

/-! ## A058664.P15566660029678832372

`A014682(A112180(n)+A112179(n))`
-/

namespace A058664.P15566660029678832372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A112180 n + A112179 n).toNat

end

end A058664.P15566660029678832372

/-! ## A058664.P5920037709517503558

`A328399(A112180(n)+A112179(n))-1`
-/

namespace A058664.P5920037709517503558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A112180 n + A112179 n).toNat - 1

end

end A058664.P5920037709517503558

/-! ## A058664.P18044559628408186985

`A328399(A112179(n)-(2-A112180(n)))`
-/

namespace A058664.P18044559628408186985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A112179 n - (2 - A112180 n)).toNat

end

end A058664.P18044559628408186985

/-!
# A058665: a(n) = gcd(n+1, n-phi(n)).

The programs for A058665, the canonical program `A058665.P1762457033292653108` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058665 has offset 1).

The definition of A058665 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A058665.P1762457033292653108

`gcd(n+2, A051953(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A058665

/-- `gcd(n+2, A051953(n+1))` -/
def P1762457033292653108.Spec : Prop :=
  ∀ n, (P1762457033292653108.a n : ℤ) = A058665 (n + 1)

theorem P1762457033292653108.correct : P1762457033292653108.Spec := by
  intro n
  simp only [A058665, Nat.add_sub_cancel]

end A058665

/-! ## A058665.P4036966919485308884

`gcd(A000010(n+1)+1, -xor(n+1, -1))`
-/

namespace A058665.P4036966919485308884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1) + 1) (-Int.xor (n + 1 : ℤ) (-1))

end

end A058665.P4036966919485308884

namespace A058665

/-- `gcd(A000010(n+1)+1, -xor(n+1, -1))` -/
def P4036966919485308884.Spec : Prop :=
  ∀ n, (P4036966919485308884.a n : ℤ) = A058665 (n + 1)

end A058665

/-! ## A058665.P15490365702727319973

`gcd(A020725(n+1), A046151(n+1))`
-/

namespace A058665.P15490365702727319973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020725 (n + 1)) (A046151 (n + 1))

end

end A058665.P15490365702727319973

namespace A058665

/-- `gcd(A020725(n+1), A046151(n+1))` -/
def P15490365702727319973.Spec : Prop :=
  ∀ n, (P15490365702727319973.a n : ℤ) = A058665 (n + 1)

end A058665

/-! ## A058665.P7343662327610632501

`gcd(A052106(n+1), A060474(n+1))`
-/

namespace A058665.P7343662327610632501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052106 (n + 1)) (A060474 (n + 1))

end

end A058665.P7343662327610632501

namespace A058665

/-- `gcd(A052106(n+1), A060474(n+1))` -/
def P7343662327610632501.Spec : Prop :=
  ∀ n, (P7343662327610632501.a n : ℤ) = A058665 (n + 1)

end A058665

/-! ## A058665.P12739447638724855992

`gcd(A076511(n+1), A113636(n+1))`
-/

namespace A058665.P12739447638724855992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A076511 (n + 1)) (A113636 (n + 1))

end

end A058665.P12739447638724855992

namespace A058665

/-- `gcd(A076511(n+1), A113636(n+1))` -/
def P12739447638724855992.Spec : Prop :=
  ∀ n, (P12739447638724855992.a n : ℤ) = A058665 (n + 1)

end A058665

/-! ## A058665.P13739626660683908343

`gcd(A053191(n+1)+1, A114637(n+1))`
-/

namespace A058665.P13739626660683908343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053191 (n + 1) + 1) (A114637 (n + 1))

end

end A058665.P13739626660683908343

namespace A058665

/-- `gcd(A053191(n+1)+1, A114637(n+1))` -/
def P13739626660683908343.Spec : Prop :=
  ∀ n, (P13739626660683908343.a n : ℤ) = A058665 (n + 1)

end A058665

/-! ## A058665.P13427654794827217509

`gcd(A028310(n+2), A318305(n+1))`
-/

namespace A058665.P13427654794827217509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 (n + 2)) (A318305 (n + 1))

end

end A058665.P13427654794827217509

namespace A058665

/-- `gcd(A028310(n+2), A318305(n+1))` -/
def P13427654794827217509.Spec : Prop :=
  ∀ n, (P13427654794827217509.a n : ℤ) = A058665 (n + 1)

end A058665

/-! ## A058665.P12916583464162835811

`gcd(A026741(2*(n+2)), A328399(A319998(2*(n+1))))`
-/

namespace A058665.P12916583464162835811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026741 (2 * (n + 2))) (A328399 (A319998 (2 * (n + 1))).toNat)

end

end A058665.P12916583464162835811

namespace A058665

/-- `gcd(A026741(2*(n+2)), A328399(A319998(2*(n+1))))` -/
def P12916583464162835811.Spec : Prop :=
  ∀ n, (P12916583464162835811.a n : ℤ) = A058665 (n + 1)

end A058665

/-! ## A058665.P7301110302540408628

`gcd(A039649(n+1), A129953(n))`
-/

namespace A058665.P7301110302540408628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039649 (n + 1)) (A129953 n)

end

end A058665.P7301110302540408628

namespace A058665

/-- `gcd(A039649(n+1), A129953(n))` -/
def P7301110302540408628.Spec : Prop :=
  ∀ n, (P7301110302540408628.a n : ℤ) = A058665 (n + 1)

end A058665

/-! ## A058665.P2125912536854966475

`gcd(n+2, A308121(A005728(n)))`
-/

namespace A058665.P2125912536854966475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A308121 (A005728 n).toNat)

end

end A058665.P2125912536854966475

namespace A058665

/-- `gcd(n+2, A308121(A005728(n)))` -/
def P2125912536854966475.Spec : Prop :=
  ∀ n, (P2125912536854966475.a n : ℤ) = A058665 (n + 1)

end A058665

/-!
# A058666: McKay-Thompson series of class 40b for Monster.

The programs for A058666, there is no canonical definition to state claims against.
-/

/-! ## A058666.P2663005313403436970

`(-1)^n*A112181(n)`
-/

namespace A058666.P2663005313403436970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A112181 n

end

end A058666.P2663005313403436970

/-! ## A058666.P12660034047540184877

`A112181(n)/A033999(n)`
-/

namespace A058666.P12660034047540184877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112181 n : ℚ) / (A033999 n : ℚ)

end

end A058666.P12660034047540184877

/-! ## A058666.P15706553134932621312

`A112181(n)/A009001(2*n)`
-/

namespace A058666.P15706553134932621312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112181 n : ℚ) / (A009001 (2 * n) : ℚ)

end

end A058666.P15706553134932621312

/-! ## A058666.P6170661624996546313

`A112181(n)/A020985(A088442(n))`
-/

namespace A058666.P6170661624996546313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112181 n : ℚ) / (A020985 (A088442 n).toNat : ℚ)

end

end A058666.P6170661624996546313

/-! ## A058666.P14074466165889033722

`A112181(n)/A055975(2*n+1)`
-/

namespace A058666.P14074466165889033722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112181 n : ℚ) / (A055975 (2 * n + 1) : ℚ)

end

end A058666.P14074466165889033722

/-!
# A058667: 2^(n-2)*n*(n+2)!/3.

The programs for A058667, the canonical program `A058667.P15963305141726422647` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058667 has offset 0).

The definition of A058667 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058667.P15963305141726422647

`2^(n-2)*n*(n+2)!/3`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058667

/-- `2^(n-2)*n*(n+2)!/3` -/
def P15963305141726422647.Spec : Prop :=
  ∀ n, P15963305141726422647.a n = (A058667 n : ℚ)

end A058667

/-! ## A058667.P429862535737813630

`n!*∑[∑[n]]*2^(n-1)`
-/

namespace A058667.P429862535737813630
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A058667.P429862535737813630

namespace A058667

/-- `n!*∑[∑[n]]*2^(n-1)` -/
def P429862535737813630.Spec : Prop :=
  ∀ n, P429862535737813630.a n = (A058667 n : ℚ)

end A058667

/-! ## A058667.P2130581626756455009

`2*n*a(n-1)*(n+2)/(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A058667.P2130581626756455009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 * n : ℚ) * a (n - 1) * ((n + 2 : ℚ) / ((n : ℤ) - 1 : ℚ))

end

end A058667.P2130581626756455009

namespace A058667

/-- `2*n*a(n-1)*(n+2)/(n-1)` -/
def P2130581626756455009.Spec : Prop :=
  ∀ n, P2130581626756455009.a n = (A058667 n : ℚ)

end A058667

/-! ## A058667.P13112192012784689180

`n/12*A014297(n)`
-/

namespace A058667.P13112192012784689180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 12 * (A014297 n : ℚ)

end

end A058667.P13112192012784689180

namespace A058667

/-- `n/12*A014297(n)` -/
def P13112192012784689180.Spec : Prop :=
  ∀ n, P13112192012784689180.a n = (A058667 n : ℚ)

end A058667

/-! ## A058667.P821914112764644876

`∑[∑[n]]*A002866(n)`
-/

namespace A058667.P821914112764644876
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A002866 n

end

end A058667.P821914112764644876

namespace A058667

/-- `∑[∑[n]]*A002866(n)` -/
def P821914112764644876.Spec : Prop :=
  ∀ n, P821914112764644876.a n = A058667 n

end A058667

/-! ## A058667.P18208568873993943255

`A000165(n)/2*∑[∑[n]]`
-/

namespace A058667.P18208568873993943255
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000165 n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A058667.P18208568873993943255

namespace A058667

/-- `A000165(n)/2*∑[∑[n]]` -/
def P18208568873993943255.Spec : Prop :=
  ∀ n, P18208568873993943255.a n = (A058667 n : ℚ)

end A058667

/-! ## A058667.P10698528953452871246

`∑[∑[n]]*∏[A004277(n)]/2`
-/

namespace A058667.P10698528953452871246
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (∏ j ∈ Finset.range (n + 1), f3 j) : ℤ) : ℚ) / 2

end

end A058667.P10698528953452871246

namespace A058667

/-- `∑[∑[n]]*∏[A004277(n)]/2` -/
def P10698528953452871246.Spec : Prop :=
  ∀ n, P10698528953452871246.a n = (A058667 n : ℚ)

end A058667

/-! ## A058667.P14351675518546652696

`(A051580(n)-A051578(n))/2`
-/

namespace A058667.P14351675518546652696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051580 n - A051578 n : ℚ) / 2

end

end A058667.P14351675518546652696

namespace A058667

/-- `(A051580(n)-A051578(n))/2` -/
def P14351675518546652696.Spec : Prop :=
  ∀ n, P14351675518546652696.a n = (A058667 n : ℚ)

end A058667

/-! ## A058667.P4157792982480356373

`A001754(n+2)/A000142(n+1)*A000165(n)`
-/

namespace A058667.P4157792982480356373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001754 (n + 2) : ℚ) / (A000142 (n + 1) : ℚ) * (A000165 n : ℚ)

end

end A058667.P4157792982480356373

namespace A058667

/-- `A001754(n+2)/A000142(n+1)*A000165(n)` -/
def P4157792982480356373.Spec : Prop :=
  ∀ n, P4157792982480356373.a n = (A058667 n : ℚ)

end A058667

/-!
# A058669: Triangle T(n,k) read by rows, giving number of matroids of rank k on n labeled points (n >= 0, 0 <= k <= n).

The programs for A058669, there is no canonical definition to state claims against.
-/

/-! ## A058669.P8511735487872777268

`A171181(A157177(n)+1)`
-/

namespace A058669.P8511735487872777268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171181 (A157177 n + 1).toNat

end

end A058669.P8511735487872777268

/-! ## A058669.P3943656058035980807

`A171181(xor(3, A157177(n)))`
-/

namespace A058669.P3943656058035980807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171181 (Int.xor 3 (A157177 n)).toNat

end

end A058669.P3943656058035980807

/-! ## A058669.P4888774089506858667

`A022166(n)+A173636(A174545(n))²`
-/

namespace A058669.P4888774089506858667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n + A173636 (A174545 n).toNat ^ 2

end

end A058669.P4888774089506858667

/-! ## A058669.P8581959369592151489

`A321609(A001263(n+1))+A022166(n)`
-/

namespace A058669.P8581959369592151489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321609 (A001263 (n + 1)).toNat + A022166 n

end

end A058669.P8581959369592151489

/-! ## A058669.P13975479366984321582

`A022166(n)+A184159(A099594(n))²²`
-/

namespace A058669.P13975479366984321582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n + (A184159 (A099594 n).toNat ^ 2) ^ 2

end

end A058669.P13975479366984321582

/-!
# A058670: McKay-Thompson series of class 41A for Monster.

The programs for A058670, there is no canonical definition to state claims against.
-/

/-! ## A058670.P2255424753561831058

`A112318(A199016(n))-A029141(A286653(n+1))`
-/

namespace A058670.P2255424753561831058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112318 (A199016 n).toNat - A029141 (A286653 (n + 1)).toNat

end

end A058670.P2255424753561831058

/-! ## A058670.P1582692626786023161

`A014977(n)%A000194(A011782(n+1))+A035363(n)%2`
-/

namespace A058670.P1582692626786023161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014977 n) (A000194 (A011782 (n + 1)).toNat) + Int.tmod (A035363 n) 2

end

end A058670.P1582692626786023161

/-! ## A058670.P4808000932584872369

`A227134(n)-A000035(A330341(3*n+5))`
-/

namespace A058670.P4808000932584872369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227134 n - A000035 (A330341 (3 * n + 5)).toNat

end

end A058670.P4808000932584872369

/-!
# A058673: Number of matroids on n labeled points.

The programs for A058673, there is no canonical definition to state claims against.
-/

/-! ## A058673.P10109794003374052419

`A114491(n)-1`
-/

namespace A058673.P10109794003374052419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114491 n - 1

end

end A058673.P10109794003374052419

/-! ## A058673.P2894301270931866037

`A114591(2*(n+2))+A114491(n)`
-/

namespace A058673.P2894301270931866037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114591 (2 * (n + 2)) + A114491 n

end

end A058673.P2894301270931866037

/-! ## A058673.P5682995588939773798

`abs(A114491(n)+A033999(2*n+1))`
-/

namespace A058673.P5682995588939773798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114491 n + A033999 (2 * n + 1)|

end

end A058673.P5682995588939773798

/-! ## A058673.P13331853788487835068

`A114523(A271518(n))+A114491(n)`
-/

namespace A058673.P13331853788487835068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114523 (A271518 n).toNat + A114491 n

end

end A058673.P13331853788487835068

/-! ## A058673.P2225127755888030359

`A133314(A275216(n))+A114491(n)`
-/

namespace A058673.P2225127755888030359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133314 (A275216 n).toNat + A114491 n

end

end A058673.P2225127755888030359

/-!
# A058674: McKay-Thompson series of class 42D for Monster.

The programs for A058674, there is no canonical definition to state claims against.
-/

/-! ## A058674.P17199249660197621068

`xor(A056811(A101509(n)), A341793(2*n))`
-/

namespace A058674.P17199249660197621068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A056811 (A101509 n).toNat) (A341793 (2 * n + 10))

end

end A058674.P17199249660197621068

/-!
# A058677: McKay-Thompson series of class 42c for Monster.

The programs for A058677, there is no canonical definition to state claims against.
-/

/-! ## A058677.P12119069853431065345

`A112608(n)-A112608(A309508(n))`
-/

namespace A058677.P12119069853431065345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112608 n - A112608 (A309508 n).toNat

end

end A058677.P12119069853431065345

/-! ## A058677.P8065670124103955977

`A112608(n)*A143621(A105476(n))`
-/

namespace A058677.P8065670124103955977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112608 n * A143621 (A105476 n).toNat

end

end A058677.P8065670124103955977

/-! ## A058677.P13962441634364384613

`A112608(n)*A307445(A072254(n+1))`
-/

namespace A058677.P13962441634364384613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112608 n * A307445 (A072254 (n + 1)).toNat

end

end A058677.P13962441634364384613

/-!
# A058681: Number of matroids of rank 2 on n labeled points.

The programs for A058681, there is no canonical definition to state claims against.
-/

/-! ## A058681.P18236654223432140076

`A094762(n)-(n+1)`
-/

namespace A058681.P18236654223432140076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094762 n - (n + 1 : ℤ)

end

end A058681.P18236654223432140076

/-! ## A058681.P15937102417553968776

`A011972(∑[n])-2^n`
-/

namespace A058681.P15937102417553968776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (∑ j ∈ Finset.range (n + 1), f1 j) - (2 ^ n : ℤ)

end

end A058681.P15937102417553968776

/-! ## A058681.P17748513692177960173

`A000110(n+1)-2^n`
-/

namespace A058681.P17748513692177960173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) - (2 ^ n : ℤ)

end

end A058681.P17748513692177960173

/-! ## A058681.P11662503702021957321

`abs(A292935(n+1))-2^n`
-/

namespace A058681.P11662503702021957321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 (n + 1)| - (2 ^ n : ℤ)

end

end A058681.P11662503702021957321

/-! ## A058681.P6706573234682423849

`A011971(∑[n+1])-2^n`
-/

namespace A058681.P6706573234682423849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j) - (2 ^ n : ℤ)

end

end A058681.P6706573234682423849

/-! ## A058681.P6511440425509349266

`A212431(∑[n+1])-2^n`
-/

namespace A058681.P6511440425509349266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212431 (∑ j ∈ Finset.range (n + 1), f1 j) - (2 ^ n : ℤ)

end

end A058681.P6511440425509349266

/-! ## A058681.P4913056643339486953

`A283424(∑[n])-A000079(n)`
-/

namespace A058681.P4913056643339486953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (∑ j ∈ Finset.range (n + 1), f1 j) - A000079 n

end

end A058681.P4913056643339486953

/-! ## A058681.P7462765395407004642

`record[A095149(n)]-A000079(n)`
-/

namespace A058681.P7462765395407004642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000079 n

end

end A058681.P7462765395407004642

/-! ## A058681.P18296166412725574103

`record[A108087(n)]-A000079(n)`
-/

namespace A058681.P18296166412725574103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000079 n

end

end A058681.P18296166412725574103

/-! ## A058681.P4791866739792153959

`record[A293024(n)]-A000079(n)`
-/

namespace A058681.P4791866739792153959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000079 n

end

end A058681.P4791866739792153959

/-!
# A058682: a(n) = p(0) + p(1) + ... + p(n) - n - 1, where p = partition numbers, A000041.

The programs for A058682, there is no canonical definition to state claims against.
-/

/-! ## A058682.P18376116463067321563

`∑[A000065(n)]`
-/

namespace A058682.P18376116463067321563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058682.P18376116463067321563

/-! ## A058682.P2729328573723052146

`∑[A000041(n)-1]`
-/

namespace A058682.P2729328573723052146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058682.P2729328573723052146

/-! ## A058682.P3238372939530580232

`A000070(n)-(n+1)`
-/

namespace A058682.P3238372939530580232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - (n + 1 : ℤ)

end

end A058682.P3238372939530580232

/-! ## A058682.P12648673275028784639

`∑[∑[A002865(n)]-1]`
-/

namespace A058682.P12648673275028784639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058682.P12648673275028784639

/-! ## A058682.P17993108701298383130

`∑[∑[A232697(n)-1]]`
-/

namespace A058682.P17993108701298383130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058682.P17993108701298383130

/-! ## A058682.P17689498856406961128

`∑[A052810(n)-2]+1`
-/

namespace A058682.P17689498856406961128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A058682.P17689498856406961128

/-! ## A058682.P15221914210356252155

`∑[A139582(n)/2-1]`
-/

namespace A058682.P15221914210356252155
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058682.P15221914210356252155

/-! ## A058682.P7529757077254647119

`∑[A133041(n)-(n+1)]`
-/

namespace A058682.P7529757077254647119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058682.P7529757077254647119

/-! ## A058682.P8163474029361916297

`A216053(n+1)-(n+2)`
-/

namespace A058682.P8163474029361916297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216053 (n + 1) - (n + 2 : ℤ)

end

end A058682.P8163474029361916297

/-! ## A058682.P10348407377042869392

`A000041(2*n-n)+a(n-1)-1` with `a(0)=0`
-/

namespace A058682.P10348407377042869392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000041 (2 * n - n) + (a (n - 1) - 1)

end

end A058682.P10348407377042869392

/-! ## A058682.P7041957064529308727

`∑[∑[A002865(A028310(n))]]`
-/

namespace A058682.P7041957064529308727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058682.P7041957064529308727

/-! ## A058682.P9096998242725337864

`A001478(n+1)+A000070(n)`
-/

namespace A058682.P9096998242725337864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + A000070 n

end

end A058682.P9096998242725337864

/-! ## A058682.P13217631899997749474

`∑[A295341(n)+A000726(n)-1]`
-/

namespace A058682.P13217631899997749474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295341 n + A000726 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058682.P13217631899997749474

/-! ## A058682.P10411586349965339705

`A006128(n)-(A198381(n)+n)`
-/

namespace A058682.P10411586349965339705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - (A198381 n + (n : ℤ))

end

end A058682.P10411586349965339705

/-! ## A058682.P9132290719821198723

`A000291(n)-A000097(n)-(n+1)`
-/

namespace A058682.P9132290719821198723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000291 n - A000097 n - (n + 1 : ℤ)

end

end A058682.P9132290719821198723

/-! ## A058682.P10681514523875742191

`A182705(n+1)/(n+1)-(n+1)`
-/

namespace A058682.P10681514523875742191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182705 (n + 1) : ℚ) / (n + 1 : ℚ) - (n + 1 : ℚ)

end

end A058682.P10681514523875742191

/-! ## A058682.P12183912193363844740

`A025065(2*n)-(n+1)`
-/

namespace A058682.P12183912193363844740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 (2 * n) - (n + 1 : ℤ)

end

end A058682.P12183912193363844740

/-! ## A058682.P13769917963931339071

`∑[A035363(2*n)-1]`
-/

namespace A058682.P13769917963931339071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058682.P13769917963931339071

/-! ## A058682.P17017402808755405502

`∑[A119620(2*n)-1]`
-/

namespace A058682.P17017402808755405502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058682.P17017402808755405502

/-! ## A058682.P15608187417811255257

`∑[record[A035363(n+1)]]-n`
-/

namespace A058682.P15608187417811255257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A058682.P15608187417811255257

/-!
# A058686: McKay-Thompson series of class 45b for Monster.

The programs for A058686, there is no canonical definition to state claims against.
-/

/-! ## A058686.P6727251699168040192

`A124094(eq[15, A004736(n+1)])`
-/

namespace A058686.P6727251699168040192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058686.P6727251699168040192

/-!
# A058687: Number of matroids of rank 3 on n labeled points.

The programs for A058687, there is no canonical definition to state claims against.
-/

/-! ## A058687.P4317311987269695251

`A058669(∑[n+4]+2)`
-/

namespace A058687.P4317311987269695251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058669 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A058687.P4317311987269695251

/-!
# A058690: McKay-Thompson series of class 47A for the Monster group.

The programs for A058690, there is no canonical definition to state claims against.
-/

/-! ## A058690.P903786217068322543

`A056556(A290992(n))+A000700(2*n)`
-/

namespace A058690.P903786217068322543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A290992 n).toNat + A000700 (2 * n)

end

end A058690.P903786217068322543

/-! ## A058690.P6770006269714646877

`A067086(A094858(n+1))-A000035(n)`
-/

namespace A058690.P6770006269714646877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067086 (A094858 (n + 1)).toNat - A000035 n

end

end A058690.P6770006269714646877

/-! ## A058690.P6332186451560980835

`A048766(xor(A077238(n), A078322(n+1)))`
-/

namespace A058690.P6332186451560980835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.xor (A077238 n) (A078322 (n + 1))).toNat

end

end A058690.P6332186451560980835

/-! ## A058690.P1860000380918112476

`A048766(A077238(n)-A356838(2*n+3))`
-/

namespace A058690.P1860000380918112476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A077238 n - A356838 (2 * n + 3)).toNat

end

end A058690.P1860000380918112476

/-!
# A058691: McKay-Thompson series of class 48A for Monster.

The programs for A058691, there is no canonical definition to state claims against.
-/

/-! ## A058691.P12275124910376997362

`A347272(A073364(n+1))+A325245(n)`
-/

namespace A058691.P12275124910376997362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347272 (A073364 (n + 1)).toNat + A325245 n

end

end A058691.P12275124910376997362

/-!
# A058692: a(n) = B(n) - 1, where B(n) = Bell numbers, A000110.

The programs for A058692, there is no canonical definition to state claims against.
-/

/-! ## A058692.P4271181391756350533

`∑[A005493(n)]`
-/

namespace A058692.P4271181391756350533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058692.P4271181391756350533

/-! ## A058692.P3491775441366020006

`∑[∑[A011965(n)]]`
-/

namespace A058692.P3491775441366020006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011965 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058692.P3491775441366020006

/-! ## A058692.P1192497201178334805

`record[Δ[A283424(n)]]`
-/

namespace A058692.P1192497201178334805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058692.P1192497201178334805

/-! ## A058692.P15001752281644377651

`A102661(∑[n+2])`
-/

namespace A058692.P15001752281644377651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102661 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058692.P15001752281644377651

/-! ## A058692.P2297824053500097198

`A211561(∑[n+2])`
-/

namespace A058692.P2297824053500097198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058692.P2297824053500097198

/-! ## A058692.P9928265709423801

`A008827(n+2)+1`
-/

namespace A058692.P9928265709423801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008827 (n + 2) + 1

end

end A058692.P9928265709423801

/-! ## A058692.P2647505408170049682

`A000110(n+2)-1`
-/

namespace A058692.P2647505408170049682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 2) - 1

end

end A058692.P2647505408170049682

/-! ## A058692.P11176587957294667670

`∑[A056861(∑[n]+2)]`
-/

namespace A058692.P11176587957294667670
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056861 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058692.P11176587957294667670

/-! ## A058692.P11713098196431595972

`record[Δ[A137650(n+1)]]`
-/

namespace A058692.P11713098196431595972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137650 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058692.P11713098196431595972

/-! ## A058692.P16118072872044343417

`record[Δ[A143983(n+1)]]`
-/

namespace A058692.P16118072872044343417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143983 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058692.P16118072872044343417

/-!
# A058693: Number of nonisomorphic matroids of rank 3 on n labeled points.

The programs for A058693, there is no canonical definition to state claims against.
-/

/-! ## A058693.P16931044377630202631

`∑[A058719(n+3)]`
-/

namespace A058693.P16931044377630202631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058719 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058693.P16931044377630202631

/-! ## A058693.P17981334693218326774

`A058719(A009995(n+4))+a(n-1)` with `a(0)=1`
-/

namespace A058693.P17981334693218326774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A058719 (A009995 (n + 4)).toNat + a (n - 1)

end

end A058693.P17981334693218326774

/-! ## A058693.P7383745512724795726

`A053534(∑[n+4]+2)`
-/

namespace A058693.P7383745512724795726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053534 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A058693.P7383745512724795726

/-!
# A058694: Partial products p(0)*p(1)*...*p(n) of partition numbers A000041.

The programs for A058694, there is no canonical definition to state claims against.
-/

/-! ## A058694.P13732337416948383078

`∏[A000041(n)]`
-/

namespace A058694.P13732337416948383078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A058694.P13732337416948383078

/-! ## A058694.P7151815956946328140

`∏[A213598(n)]`
-/

namespace A058694.P7151815956946328140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A058694.P7151815956946328140

/-! ## A058694.P13595757287398828957

`∏[sqrt(A001255(n))]`
-/

namespace A058694.P13595757287398828957
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A058694.P13595757287398828957

/-! ## A058694.P17405798669294839598

`∏[∑[A002865(n)]]`
-/

namespace A058694.P17405798669294839598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A058694.P17405798669294839598

/-! ## A058694.P17645158800265584706

`∏[A054225(∑[n])]`
-/

namespace A058694.P17645158800265584706
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A058694.P17645158800265584706

/-!
# A058695: Number of ways to partition 2n+1 into positive integers.

The programs for A058695, there is no canonical definition to state claims against.
-/

/-! ## A058695.P14433156815046839909

`A000041(2*n+1)`
-/

namespace A058695.P14433156815046839909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n + 1)

end

end A058695.P14433156815046839909

/-! ## A058695.P2317316569728842449

`A086543(Δ[n²])`
-/

namespace A058695.P2317316569728842449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086543 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A058695.P2317316569728842449

/-! ## A058695.P7236500884913335128

`A305841(Δ[n²])`
-/

namespace A058695.P7236500884913335128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305841 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A058695.P7236500884913335128

/-! ## A058695.P9378373783287708095

`∑[A182844(n)]+1`
-/

namespace A058695.P9378373783287708095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A058695.P9378373783287708095

/-! ## A058695.P3176372375077978834

`record[A000041(xor(1, n))]`
-/

namespace A058695.P3176372375077978834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058695.P3176372375077978834

/-! ## A058695.P15107390367259790664

`A000065(Δ[n²])+1`
-/

namespace A058695.P15107390367259790664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A058695.P15107390367259790664

/-! ## A058695.P9537299163816166112

`A052810(Δ[n²])-1`
-/

namespace A058695.P9537299163816166112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A058695.P9537299163816166112

/-! ## A058695.P12531507359917387900

`A058984(Δ[n²])+n`
-/

namespace A058695.P12531507359917387900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058984 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)

end

end A058695.P12531507359917387900

/-! ## A058695.P11395805001528110559

`A365825(Δ[n²])+n`
-/

namespace A058695.P11395805001528110559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365825 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)

end

end A058695.P11395805001528110559

/-! ## A058695.P8224966965492036260

`record[A000041(gcd(n, ∑[n]))]`
-/

namespace A058695.P8224966965492036260
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058695.P8224966965492036260

/-! ## A058695.P4827183540789528820

`∑[A027336(2*n+1)]`
-/

namespace A058695.P4827183540789528820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058695.P4827183540789528820

/-! ## A058695.P1839896561142267475

`record[A000041(lcm(2, n)/2)]`
-/

namespace A058695.P1839896561142267475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058695.P1839896561142267475

/-! ## A058695.P16568881636422662317

`record[A000041(n*n%2)]`
-/

namespace A058695.P16568881636422662317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058695.P16568881636422662317

/-! ## A058695.P1919963912242493782

`record[A000041((-1)^n+n)]`
-/

namespace A058695.P1919963912242493782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ((-1) ^ n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058695.P1919963912242493782

/-! ## A058695.P3749925973583393672

`record[A000041(n)^((n-2)%2)]`
-/

namespace A058695.P3749925973583393672
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n : ℚ) ^ (Int.tmod ((n : ℤ) - 2) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058695.P3749925973583393672

/-! ## A058695.P6299971890863014989

`A004250(2*n+1)+1+n`
-/

namespace A058695.P6299971890863014989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004250 (2 * n + 1) + 1 + (n : ℤ)

end

end A058695.P6299971890863014989

/-! ## A058695.P1411453751153330456

`A000094(2*(n+1))+Δ[n²]`
-/

namespace A058695.P1411453751153330456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000094 (2 * (n + 1)) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A058695.P1411453751153330456

/-! ## A058695.P4114413676797792708

`and(ϕ-ϕ², A000041(n+1+n))`
-/

namespace A058695.P4114413676797792708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (Real.goldenRatio - Real.goldenRatio ^ 2)) (A000041 (n + 1 + n))

end

end A058695.P4114413676797792708

/-! ## A058695.P1590420933211532074

`A182747(n)+A058696(n)`
-/

namespace A058695.P1590420933211532074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182747 n + A058696 n

end

end A058695.P1590420933211532074

/-! ## A058695.P656552734762548361

`A236914(n)+A160786(n)`
-/

namespace A058695.P656552734762548361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236914 n + A160786 n

end

end A058695.P656552734762548361

/-!
# A058696: Number of ways to partition 2n into positive integers.

The programs for A058696, there is no canonical definition to state claims against.
-/

/-! ## A058696.P4288363184542915002

`A000041(2*n)`
-/

namespace A058696.P4288363184542915002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n)

end

end A058696.P4288363184542915002

/-! ## A058696.P4526629741725710775

`A332706(n)+n`
-/

namespace A058696.P4526629741725710775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332706 n + (n : ℤ)

end

end A058696.P4526629741725710775

/-! ## A058696.P6864128975546769526

`∑[A027336(2*n)]`
-/

namespace A058696.P6864128975546769526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058696.P6864128975546769526

/-! ## A058696.P3478757089999021369

`A000065(2*n)+1`
-/

namespace A058696.P3478757089999021369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (2 * n) + 1

end

end A058696.P3478757089999021369

/-! ## A058696.P11440946886608576011

`A058984(2*n)+n`
-/

namespace A058696.P11440946886608576011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058984 (2 * n) + (n : ℤ)

end

end A058696.P11440946886608576011

/-! ## A058696.P12878309245972172702

`record[A000041(n%4+n)]`
-/

namespace A058696.P12878309245972172702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n % 4 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058696.P12878309245972172702

/-! ## A058696.P5454528537131940639

`record[A000041(and(n, n+1))]`
-/

namespace A058696.P5454528537131940639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058696.P5454528537131940639

/-! ## A058696.P8269234220497422013

`A133041(2*n)-2*n`
-/

namespace A058696.P8269234220497422013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 (2 * n) - (2 * n : ℤ)

end

end A058696.P8269234220497422013

/-! ## A058696.P285801747194251134

`record[A000041(n)/(-1)^n]`
-/

namespace A058696.P285801747194251134
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058696.P285801747194251134

/-! ## A058696.P7086968330374529375

`record[A000041(ceil((n-1)/gcd(2, n)))]`
-/

namespace A058696.P7086968330374529375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ⌈((n : ℤ) - 1 : ℚ) / (Nat.gcd 2 n : ℚ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058696.P7086968330374529375

/-! ## A058696.P5445879788520052821

`record[A000041(lcm(2, n+1)/2-1)]`
-/

namespace A058696.P5445879788520052821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 1) : ℚ) / 2 - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058696.P5445879788520052821

/-! ## A058696.P1848054312526675390

`record[A000041(2-gcd(6, n+2)+n)]`
-/

namespace A058696.P1848054312526675390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 - (Nat.gcd 6 (n + 2) : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058696.P1848054312526675390

/-! ## A058696.P1266402050219912587

`record[A000041(n+1)^-(-1)^n]`
-/

namespace A058696.P1266402050219912587
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (n + 1) : ℚ) ^ (-((-1) ^ n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058696.P1266402050219912587

/-! ## A058696.P14505866805858810005

`record[A000041(n-val(floor(2/acot(n)), 2))]`
-/

namespace A058696.P14505866805858810005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n - SequenceMachineLib.valuation ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋.toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058696.P14505866805858810005

/-! ## A058696.P12946927278886425953

`record[A000041(A014681(n))]`
-/

namespace A058696.P12946927278886425953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058696.P12946927278886425953

/-! ## A058696.P13508668173958402782

`record[A000041(A029578(n))]`
-/

namespace A058696.P13508668173958402782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058696.P13508668173958402782

/-! ## A058696.P12157575848977202606

`record[A000041(A083220(n))]`
-/

namespace A058696.P12157575848977202606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A083220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058696.P12157575848977202606

/-! ## A058696.P4790049389758732657

`record[A000041(A093049(n))]`
-/

namespace A058696.P4790049389758732657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A093049 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058696.P4790049389758732657

/-! ## A058696.P7708784790735479133

`record[A000041(A124625(n))]`
-/

namespace A058696.P7708784790735479133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A124625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058696.P7708784790735479133

/-! ## A058696.P13975287738867564382

`record[A000041(A131452(n))]`
-/

namespace A058696.P13975287738867564382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A131452 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058696.P13975287738867564382

/-!
# A058697: P(p(n)), P = primes (A000040), p = partition numbers (A000041).

The programs for A058697, there is no canonical definition to state claims against.
-/

/-! ## A058697.P1519564925694364441

`A000040(A000041(n))`
-/

namespace A058697.P1519564925694364441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000041 n).toNat

end

end A058697.P1519564925694364441

/-! ## A058697.P3111211979097502979

`A001748(A213598(n))/3`
-/

namespace A058697.P3111211979097502979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A213598 n).toNat : ℚ) / 3

end

end A058697.P3111211979097502979

/-! ## A058697.P13720962892222742779

`A001748(∑[A002865(n)])/3`
-/

namespace A058697.P13720962892222742779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 3

end

end A058697.P13720962892222742779

/-! ## A058697.P13896241054424978297

`A001749(A119620(2*n))/4`
-/

namespace A058697.P13896241054424978297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (A119620 (2 * n)).toNat : ℚ) / 4

end

end A058697.P13896241054424978297

/-! ## A058697.P8434181313848109729

`A001748(A114099(9*n))/3`
-/

namespace A058697.P8434181313848109729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A114099 (9 * n)).toNat : ℚ) / 3

end

end A058697.P8434181313848109729

/-!
# A058698: a(n) = p(P(n)), P = primes (A000040), p = partition numbers (A000041).

The programs for A058698, there is no canonical definition to state claims against.
-/

/-! ## A058698.P11577405586670321147

`A000041(A000040(n+1))`
-/

namespace A058698.P11577405586670321147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000040 (n + 1)).toNat

end

end A058698.P11577405586670321147

/-! ## A058698.P85276339051166289

`∑[A182739(n+1)]`
-/

namespace A058698.P85276339051166289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058698.P85276339051166289

/-! ## A058698.P15110065178683879055

`record[A097359(n+2)]`
-/

namespace A058698.P15110065178683879055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097359 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058698.P15110065178683879055

/-! ## A058698.P2920156472647507544

`record[A387133(n+2)]`
-/

namespace A058698.P2920156472647507544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387133 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058698.P2920156472647507544

/-! ## A058698.P17701030972036550240

`A000041(p?[comp[n²]])`
-/

namespace A058698.P17701030972036550240
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A058698.P17701030972036550240

/-! ## A058698.P14900112928954038187

`A000041(eq[1, ∑{e}[n, #]])`
-/

namespace A058698.P14900112928954038187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A058698.P14900112928954038187

/-! ## A058698.P18233421771306998422

`record[A000041(p?[∑{p}[n, #]])]`
-/

namespace A058698.P18233421771306998422
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058698.P18233421771306998422

/-! ## A058698.P15430458367473400184

`record[A000041(p?[∏{p}[n, #]])]`
-/

namespace A058698.P15430458367473400184
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058698.P15430458367473400184

/-! ## A058698.P7526310455801057970

`record[∑{p}[n+2, A000041(#)]]`
-/

namespace A058698.P7526310455801057970
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A000041 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058698.P7526310455801057970

/-! ## A058698.P2642339015555608967

`record[A000041(∑{p}[2-n, #])]`
-/

namespace A058698.P2642339015555608967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (∑ p ∈ Nat.primeFactors (f2 n).natAbs, p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058698.P2642339015555608967

/-! ## A058698.P13440803741856659143

`A000041(Δ[A007504(n)])`
-/

namespace A058698.P13440803741856659143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (n + 1) - f1 n).toNat

end

end A058698.P13440803741856659143

/-! ## A058698.P1667642657287956183

`A000041(A008578(n+2))`
-/

namespace A058698.P1667642657287956183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A008578 (n + 2)).toNat

end

end A058698.P1667642657287956183

/-! ## A058698.P320931919215675408

`A000041(record[A006530(n+2)])`
-/

namespace A058698.P320931919215675408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A058698.P320931919215675408

/-! ## A058698.P14519444234217935293

`A000041(record[A020639(n+2)])`
-/

namespace A058698.P14519444234217935293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A058698.P14519444234217935293

/-! ## A058698.P4788076826301384340

`A318949(record[A006530(n+2)])`
-/

namespace A058698.P4788076826301384340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318949 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A058698.P4788076826301384340

/-! ## A058698.P1780298066280893324

`A328424(record[A006530(n+2)])`
-/

namespace A058698.P1780298066280893324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328424 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A058698.P1780298066280893324

/-! ## A058698.P17382872400356613573

`A318949(record[A020639(n+2)])`
-/

namespace A058698.P17382872400356613573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318949 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A058698.P17382872400356613573

/-! ## A058698.P6692334656888541638

`A342621(record[A006530(n+2)])`
-/

namespace A058698.P6692334656888541638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342621 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A058698.P6692334656888541638

/-! ## A058698.P10895135061627256596

`A000041(A006093(n+1)+1)`
-/

namespace A058698.P10895135061627256596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A006093 (n + 1) + 1).toNat

end

end A058698.P10895135061627256596

/-! ## A058698.P14830205022826458000

`A000041(A008864(n+1)-1)`
-/

namespace A058698.P14830205022826458000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A008864 (n + 1) - 1).toNat

end

end A058698.P14830205022826458000

/-!
# A058699: a(n) = p(p(n)), p = partition numbers A000041.

The programs for A058699, there is no canonical definition to state claims against.
-/

/-! ## A058699.P11768794257717616470

`A000041(A000041(n))`
-/

namespace A058699.P11768794257717616470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000041 n).toNat

end

end A058699.P11768794257717616470

/-! ## A058699.P6331855659953913998

`A000065(A213598(n))+1`
-/

namespace A058699.P6331855659953913998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (A213598 n).toNat + 1

end

end A058699.P6331855659953913998

/-! ## A058699.P17440813868397011916

`∑{d}[A052810(n), A133732(#)]`
-/

namespace A058699.P17440813868397011916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A133732 d

end

end A058699.P17440813868397011916

/-! ## A058699.P12900448453409243588

`∑{d}[A213598(n), A000837(#)]`
-/

namespace A058699.P12900448453409243588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000837 d

end

end A058699.P12900448453409243588

/-! ## A058699.P10810464021252269103

`A000065(∑[A002865(n)])+1`
-/

namespace A058699.P10810464021252269103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A058699.P10810464021252269103

