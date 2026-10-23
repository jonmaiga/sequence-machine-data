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
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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

/-!
# A339804: a(n) = Sum_{k=1..floor(n/2)} k * (n-k) * floor((n-k)/k).

The programs for A339804, the canonical program `A339804.P4837831604045285266` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339804 has offset 1).

The definition of A339804 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153485, A279847, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A339804.P4837831604045285266

`(n+1)*A153485(n+1)-A279847(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A339804

/-- `(n+1)*A153485(n+1)-A279847(n+1)` -/
def P4837831604045285266.Spec : Prop :=
  ∀ n, P4837831604045285266.a n = A339804 (n + 1)

theorem P4837831604045285266.correct : P4837831604045285266.Spec := by
  intro n
  simp only [A339804, Nat.add_sub_cancel]

end A339804

/-! ## A339804.P16216035803205128245

`∑[∑{d}[n+1, #*(n+1-#)]+∑[∑{d}[n, #]-n]]`
-/

namespace A339804.P16216035803205128245
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f4 n), d : ℕ) : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * ((n + 1 : ℤ) - (d : ℤ)) + ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339804.P16216035803205128245

namespace A339804

/-- `∑[∑{d}[n+1, #*(n+1-#)]+∑[∑{d}[n, #]-n]]` -/
def P16216035803205128245.Spec : Prop :=
  ∀ n, P16216035803205128245.a n = A339804 (n + 1)

end A339804

/-! ## A339804.P12865684532134287360

`∑[A244048(n+1)+∑{d}[n+1, #*(n+1-#)]]`
-/

namespace A339804.P12865684532134287360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244048 (n + 1) + ∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * ((n + 1 : ℤ) - (d : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339804.P12865684532134287360

namespace A339804

/-- `∑[A244048(n+1)+∑{d}[n+1, #*(n+1-#)]]` -/
def P12865684532134287360.Spec : Prop :=
  ∀ n, P12865684532134287360.a n = A339804 (n + 1)

end A339804

/-! ## A339804.P3428624408302296900

`∑[A303384(n+1)+A244048(n+1)]`
-/

namespace A339804.P3428624408302296900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303384 (n + 1) + A244048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339804.P3428624408302296900

namespace A339804

/-- `∑[A303384(n+1)+A244048(n+1)]` -/
def P3428624408302296900.Spec : Prop :=
  ∀ n, P3428624408302296900.a n = A339804 (n + 1)

end A339804

/-!
# A339805: Numbers k such that the sum of decimal digits of k is the sum of primes dividing k+1 (with repetition).

The programs for A339805, there is no canonical definition to state claims against.
-/

/-! ## A339805.P10674263828962703179

`eq[A001414(n+2), A007953(n+1)]+1`
-/

namespace A339805.P10674263828962703179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A339805.P10674263828962703179

/-! ## A339805.P4363287685318036227

`eq[A001414(n+1), A028310(A007953(n))]`
-/

namespace A339805.P4363287685318036227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339805.P4363287685318036227

/-! ## A339805.P7161840423933089706

`eq[A004277(A001414(n+1)), A169805(n)]`
-/

namespace A339805.P7161840423933089706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A001414 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339805.P7161840423933089706

/-! ## A339805.P6197716601362248631

`eq[A001414(n+1), A007953(A066182(n+1))]`
-/

namespace A339805.P6197716601362248631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A066182 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339805.P6197716601362248631

/-! ## A339805.P16286918674805515724

`eq[A001414(n+1), A169805(A028310(n))/2]`
-/

namespace A339805.P16286918674805515724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169805 (A028310 n).toNat : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A339805.P16286918674805515724

/-!
# A339806: Indices of vertex points of the upper convex hull of the squarefree number graph.

The programs for A339806, there is no canonical definition to state claims against.
-/

/-! ## A339806.P4167781907959542129

`A167857(A265173(n+1)+n)`
-/

namespace A339806.P4167781907959542129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167857 (A265173 (n + 1) + (n : ℤ)).toNat

end

end A339806.P4167781907959542129

/-! ## A339806.P12069466293045885686

`or(A060013(n+1), A106249(A060014(n)))`
-/

namespace A339806.P12069466293045885686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060013 (n + 1)) (A106249 (A060014 n).toNat)

end

end A339806.P12069466293045885686

/-!
# A339807: Irregular triangle read by rows: T(n,k) (n>=2, k>=1) is the number of strong digraphs on n nodes with k descents.

The programs for A339807, there is no canonical definition to state claims against.
-/

/-! ## A339807.P14936719969805671307

`A290094(floor(∑[A290072(n)/2]))`
-/

namespace A339807.P14936719969805671307
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290072 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290094 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A339807.P14936719969805671307

/-! ## A339807.P16311821879704744890

`A290103(A051000(a(n-1)+1)+1)` with `a(0)=1, a(1)=2, a(2)=11, a(3)=5`
-/

namespace A339807.P16311821879704744890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 11, 5] fun n a =>
  A290103 (A051000 (a (n - 1) + 1).toNat + 1).toNat

end

end A339807.P16311821879704744890

/-!
# A339808: 1 + 1/a(n) is the smallest resistance value of this form that can be obtained from a resistor network of not more than n one-ohm resistors.

The programs for A339808, there is no canonical definition to state claims against.
-/

/-! ## A339808.P18418092421770599651

`A339548(n+2)-A347221(∑[n])`
-/

namespace A339808.P18418092421770599651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339548 (n + 2) - A347221 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A339808.P18418092421770599651

/-! ## A339808.P12523098614404225625

`A339548(n+2)-A010052(n^4)`
-/

namespace A339808.P12523098614404225625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339548 (n + 2) - A010052 (n ^ 4)

end

end A339808.P12523098614404225625

/-! ## A339808.P16635471460814206796

`(A339548(n+2)-1)%A351900(n)`
-/

namespace A339808.P16635471460814206796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339548 (n + 2) - 1) (A351900 n)

end

end A339808.P16635471460814206796

/-! ## A339808.P8515243141423809394

`A339548(n+2)%A382456(n+1)-1`
-/

namespace A339808.P8515243141423809394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339548 (n + 2)) (A382456 (n + 1)) - 1

end

end A339808.P8515243141423809394

/-! ## A339808.P10329695213934123552

`A339548(n+2)-A000035(A006131(n))`
-/

namespace A339808.P10329695213934123552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339548 (n + 2) - A000035 (A006131 n).toNat

end

end A339808.P10329695213934123552

/-!
# A339809: a(n) = A019565(n) - 1.

The programs for A339809, there is no canonical definition to state claims against.
-/

/-! ## A339809.P18103396669294012260

`A019565(n)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A339809.P18103396669294012260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n - 1

end

end A339809.P18103396669294012260

/-! ## A339809.P4513452212572001746

`sqrt(A334110(n))-1`
-/

namespace A339809.P4513452212572001746
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A334110 n : ℝ) - 1

end

end A339809.P4513452212572001746

/-! ## A339809.P6427979391834893859

`A365810(A193231(n))-1`
-/

namespace A339809.P6427979391834893859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365810 (A193231 n).toNat - 1

end

end A339809.P6427979391834893859

/-! ## A339809.P12640530655405174939

`A303760(A303768(n))-1`
-/

namespace A339809.P12640530655405174939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 (A303768 n).toNat - 1

end

end A339809.P12640530655405174939

/-! ## A339809.P6639767118289767038

`xor(A010684(n), A019565(n))`
-/

namespace A339809.P6639767118289767038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010684 n) (A019565 n)

end

end A339809.P6639767118289767038

/-! ## A339809.P8879448306730403280

`A322019(Δ[ceil(ϕ*n)])+A019565(n)`
-/

namespace A339809.P8879448306730403280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322019 (f1 (n + 1) - f1 n).toNat + A019565 n

end

end A339809.P8879448306730403280

/-! ## A339809.P12526541680174099646

`A057428(A008619(n))+A019565(n)`
-/

namespace A339809.P12526541680174099646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A008619 n).toNat + A019565 n

end

end A339809.P12526541680174099646

/-! ## A339809.P6223354856304648949

`A057428(A008620(n))+A019565(n)`
-/

namespace A339809.P6223354856304648949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A008620 n).toNat + A019565 n

end

end A339809.P6223354856304648949

/-! ## A339809.P16654065721385134506

`A057428(A028310(n))+A019565(n)`
-/

namespace A339809.P16654065721385134506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A028310 n).toNat + A019565 n

end

end A339809.P16654065721385134506

/-! ## A339809.P10066762994125026058

`A321800(A320486(n))+A019565(n)`
-/

namespace A339809.P10066762994125026058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A320486 n).toNat + A019565 n

end

end A339809.P10066762994125026058

/-! ## A339809.P12581633360344237867

`xor(A000265(A071044(n)), A019565(n))`
-/

namespace A339809.P12581633360344237867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000265 (A071044 n).toNat) (A019565 n)

end

end A339809.P12581633360344237867

/-! ## A339809.P1431204527405408178

`A057428(n+1)+A019565(n)`
-/

namespace A339809.P1431204527405408178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A019565 n

end

end A339809.P1431204527405408178

/-! ## A339809.P15970132205548035886

`A284003(A003188(n))-1`
-/

namespace A339809.P15970132205548035886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284003 (A003188 n).toNat - 1

end

end A339809.P15970132205548035886

/-! ## A339809.P9820120968182300311

`A302033(A006068(n))-1`
-/

namespace A339809.P9820120968182300311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302033 (A006068 n).toNat - 1

end

end A339809.P9820120968182300311

/-! ## A339809.P430719264560496517

`A157781(A001511(2*n+1))+A019565(n)`
-/

namespace A339809.P430719264560496517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157781 (A001511 (2 * n + 1)).toNat + A019565 n

end

end A339809.P430719264560496517

/-! ## A339809.P13707509267254938272

`A304087(A304084(n))-1`
-/

namespace A339809.P13707509267254938272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 (A304084 n).toNat - 1

end

end A339809.P13707509267254938272

/-! ## A339809.P10363518369724226450

`A303770(A303774(n))-1`
-/

namespace A339809.P10363518369724226450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 (A303774 n).toNat - 1

end

end A339809.P10363518369724226450

/-! ## A339809.P2258947211104108140

`A277006(A048680(n))-1`
-/

namespace A339809.P2258947211104108140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277006 (A048680 n).toNat - 1

end

end A339809.P2258947211104108140

/-! ## A339809.P9176767405551748711

`and(A126646(n)+A019565(n), A126646(n))`
-/

namespace A339809.P9176767405551748711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n + A019565 n) (A126646 n)

end

end A339809.P9176767405551748711

/-! ## A339809.P7119562748067720116

`A304537(A304534(n))-1`
-/

namespace A339809.P7119562748067720116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304537 (A304534 n).toNat - 1

end

end A339809.P7119562748067720116

/-!
# A339810: a(n) = A046523(A019565(n) - 1).

The programs for A339810, there is no canonical definition to state claims against.
-/

/-! ## A339810.P12807795834835626633

`A046523(A339809(n+1))`
-/

namespace A339810.P12807795834835626633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A339809 (n + 1)).toNat

end

end A339810.P12807795834835626633

/-! ## A339810.P8443252171250765462

`A046523(A019565(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A339810.P8443252171250765462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A019565 (n + 1) - 1).toNat

end

end A339810.P8443252171250765462

/-! ## A339810.P11724751214973779591

`A071364(A339809(n+1)%A248757(n+1))`
-/

namespace A339810.P11724751214973779591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (Int.tmod (A339809 (n + 1)) (A248757 (n + 1))).toNat

end

end A339810.P11724751214973779591

/-! ## A339810.P9199598714653242517

`A309015(A339811(n+1)%A339806(n+3))`
-/

namespace A339810.P9199598714653242517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309015 (Int.tmod (A339811 (n + 1)) (A339806 (n + 3))).toNat

end

end A339810.P9199598714653242517

/-! ## A339810.P8572727678145646934

`A286383(A056431(n+1))`
-/

namespace A339810.P8572727678145646934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286383 (A056431 (n + 1)).toNat

end

end A339810.P8572727678145646934

/-!
# A339811: Lexicographically earliest infinite sequence such that a(i) = a(j) => A339810(i) = A339810(j), for all i, j >= 1.

The programs for A339811, there is no canonical definition to state claims against.
-/

/-! ## A339811.P9278248734453401219

`A091238(A263273(A339810(n+1)))`
-/

namespace A339811.P9278248734453401219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091238 (A263273 (A339810 (n + 1)).toNat).toNat

end

end A339811.P9278248734453401219

/-! ## A339811.P9046109167250512750

`A130241(A339810(n+1)+A300650(A305509(n+1)))`
-/

namespace A339811.P9046109167250512750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130241 (A339810 (n + 1) + A300650 (A305509 (n + 1)).toNat).toNat

end

end A339811.P9046109167250512750

/-! ## A339811.P1253741473037528401

`A289849(A339810(n+1))`
-/

namespace A339811.P1253741473037528401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289849 (A339810 (n + 1)).toNat

end

end A339811.P1253741473037528401

/-! ## A339811.P14174697147999985781

`A186188(3*A339810(n+1))`
-/

namespace A339811.P14174697147999985781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186188 (3 * A339810 (n + 1)).toNat

end

end A339811.P14174697147999985781

/-! ## A339811.P13243648452134146772

`A191517(4*A339810(n+1))`
-/

namespace A339811.P13243648452134146772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191517 (4 * A339810 (n + 1)).toNat

end

end A339811.P13243648452134146772

/-!
# A339812: Number of prime divisors of (A019565(n) - 1), counted with multiplicity.

The programs for A339812, there is no canonical definition to state claims against.
-/

/-! ## A339812.P10954408564230903084

`A001222(A339810(n+1))`
-/

namespace A339812.P10954408564230903084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A339810 (n + 1)).toNat

end

end A339812.P10954408564230903084

/-! ## A339812.P12365093246975860934

`A001222(A339809(n+1))`
-/

namespace A339812.P12365093246975860934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A339809 (n + 1)).toNat

end

end A339812.P12365093246975860934

/-! ## A339812.P14370400981673085193

`A001222(A019565(n+1)-1)`
-/

namespace A339812.P14370400981673085193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A019565 (n + 1) - 1).toNat

end

end A339812.P14370400981673085193

/-! ## A339812.P10003813779795553513

`A065770(A339810(n+1)%A033816(n))`
-/

namespace A339812.P10003813779795553513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (Int.tmod (A339810 (n + 1)) (A033816 n)).toNat

end

end A339812.P10003813779795553513

/-! ## A339812.P15945691863084565249

`A065770(A339810(n+1))%A000027(n+1)`
-/

namespace A339812.P15945691863084565249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065770 (A339810 (n + 1)).toNat) (A000027 (n + 1))

end

end A339812.P15945691863084565249

/-! ## A339812.P17871910834649099988

`∑{d}[A339810(n+1), A001221(A014963(#))]`
-/

namespace A339812.P17871910834649099988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 (A014963 d).toNat

end

end A339812.P17871910834649099988

/-! ## A339812.P12775551081690188401

`A001222(Δ[A288570(n)]-1)`
-/

namespace A339812.P12775551081690188401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n - 1).toNat

end

end A339812.P12775551081690188401

/-! ## A339812.P5596952111200580362

`A001222(sqrt(A334110(n+1))-1)`
-/

namespace A339812.P5596952111200580362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A334110 (n + 1) : ℝ) - 1)).toNat

end

end A339812.P5596952111200580362

/-!
# A339813: The exponent of the highest power of 2 dividing (A019565(n) - 1).

The programs for A339813, the canonical program `A339813.P10748615880818821302` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339813 has offset 1).

The definition of A339813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339813.P12765231593372769170

`val(A019565(n+1)-1, 2)`
-/

namespace A339813.P12765231593372769170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A019565 (n + 1) - 1).toNat 2

end

end A339813.P12765231593372769170

namespace A339813

/-- `val(A019565(n+1)-1, 2)` -/
def P12765231593372769170.Spec : Prop :=
  ∀ n, (P12765231593372769170.a n : ℤ) = A339813 (n + 1)

end A339813

/-! ## A339813.P3770773122635542849

`A007814(A339809(n+1))`
-/

namespace A339813.P3770773122635542849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A339809 (n + 1)).toNat

end

end A339813.P3770773122635542849

namespace A339813

/-- `A007814(A339809(n+1))` -/
def P3770773122635542849.Spec : Prop :=
  ∀ n, P3770773122635542849.a n = A339813 (n + 1)

end A339813

/-! ## A339813.P10748615880818821302

`and(1, n)*A339814(A004526(n)+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A339813

/-- `and(1, n)*A339814(A004526(n)+1)` -/
def P10748615880818821302.Spec : Prop :=
  ∀ n, P10748615880818821302.a n = A339813 (n + 1)

theorem P10748615880818821302.correct : P10748615880818821302.Spec := by
  intro n
  simp only [A339813, Nat.add_sub_cancel]

end A339813

/-! ## A339813.P14828266184325059356

`∑{d}[n+1, A063524(#-1)*A339814((n+1)/#)]`
-/

namespace A339813.P14828266184325059356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063524 (d - 1) * A339814 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339813.P14828266184325059356

namespace A339813

/-- `∑{d}[n+1, A063524(#-1)*A339814((n+1)/#)]` -/
def P14828266184325059356.Spec : Prop :=
  ∀ n, P14828266184325059356.a n = A339813 (n + 1)

end A339813

/-! ## A339813.P9031619871657884220

`A000035(n)*A339814(A008619(n))`
-/

namespace A339813.P9031619871657884220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A339814 (A008619 n).toNat

end

end A339813.P9031619871657884220

namespace A339813

/-- `A000035(n)*A339814(A008619(n))` -/
def P9031619871657884220.Spec : Prop :=
  ∀ n, P9031619871657884220.a n = A339813 (n + 1)

end A339813

/-! ## A339813.P13599198620109557042

`val(A126646(n)+A019565(n+1), 2)`
-/

namespace A339813.P13599198620109557042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A126646 n + A019565 (n + 1)).toNat 2

end

end A339813.P13599198620109557042

namespace A339813

/-- `val(A126646(n)+A019565(n+1), 2)` -/
def P13599198620109557042.Spec : Prop :=
  ∀ n, (P13599198620109557042.a n : ℤ) = A339813 (n + 1)

end A339813

/-! ## A339813.P11744260334602139340

`A089080(A019565(n+1))-2`
-/

namespace A339813.P11744260334602139340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (A019565 (n + 1)).toNat - 2

end

end A339813.P11744260334602139340

namespace A339813

/-- `A089080(A019565(n+1))-2` -/
def P11744260334602139340.Spec : Prop :=
  ∀ n, P11744260334602139340.a n = A339813 (n + 1)

end A339813

/-! ## A339813.P13969624170221809571

`A085058(A019565(n+1)-2)-2`
-/

namespace A339813.P13969624170221809571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (A019565 (n + 1) - 2).toNat - 2

end

end A339813.P13969624170221809571

namespace A339813

/-- `A085058(A019565(n+1)-2)-2` -/
def P13969624170221809571.Spec : Prop :=
  ∀ n, P13969624170221809571.a n = A339813 (n + 1)

end A339813

/-! ## A339813.P4005052986103526216

`A007814(A019565(n+1)-1)`
-/

namespace A339813.P4005052986103526216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A019565 (n + 1) - 1).toNat

end

end A339813.P4005052986103526216

namespace A339813

/-- `A007814(A019565(n+1)-1)` -/
def P4005052986103526216.Spec : Prop :=
  ∀ n, P4005052986103526216.a n = A339813 (n + 1)

end A339813

/-!
# A339814: The exponent of the highest power of 2 dividing (A019565(2n) - 1).

The programs for A339814, the canonical program `A339814.P8159572788568852315` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339814 has offset 1).

The definition of A339814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339814.P2110255548905726072

`val(A019565(2*(n+1))-1, 2)`
-/

namespace A339814.P2110255548905726072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A019565 (2 * (n + 1)) - 1).toNat 2

end

end A339814.P2110255548905726072

namespace A339814

/-- `val(A019565(2*(n+1))-1, 2)` -/
def P2110255548905726072.Spec : Prop :=
  ∀ n, (P2110255548905726072.a n : ℤ) = A339814 (n + 1)

end A339814

/-! ## A339814.P2313462085276955465

`A007814(A339809(2*(n+1)))`
-/

namespace A339814.P2313462085276955465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A339809 (2 * (n + 1))).toNat

end

end A339814.P2313462085276955465

namespace A339814

/-- `A007814(A339809(2*(n+1)))` -/
def P2313462085276955465.Spec : Prop :=
  ∀ n, P2313462085276955465.a n = A339814 (n + 1)

end A339814

/-! ## A339814.P1681643094964404683

`A007814(A019565(2*(n+1))-1)`
-/

namespace A339814.P1681643094964404683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A019565 (2 * (n + 1)) - 1).toNat

end

end A339814.P1681643094964404683

namespace A339814

/-- `A007814(A019565(2*(n+1))-1)` -/
def P1681643094964404683.Spec : Prop :=
  ∀ n, P1681643094964404683.a n = A339814 (n + 1)

end A339814

/-! ## A339814.P12970536622521073509

`A007814(A003961(A019565(n+1))-1)`
-/

namespace A339814.P12970536622521073509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A003961 (A019565 (n + 1)).toNat - 1).toNat

end

end A339814.P12970536622521073509

namespace A339814

/-- `A007814(A003961(A019565(n+1))-1)` -/
def P12970536622521073509.Spec : Prop :=
  ∀ n, P12970536622521073509.a n = A339814 (n + 1)

end A339814

/-! ## A339814.P8792676943987376528

`A339813(2*(n+1))`
-/

namespace A339814.P8792676943987376528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339813 (2 * (n + 1))

end

end A339814.P8792676943987376528

namespace A339814

/-- `A339813(2*(n+1))` -/
def P8792676943987376528.Spec : Prop :=
  ∀ n, P8792676943987376528.a n = A339814 (n + 1)

end A339814

/-! ## A339814.P5774705654383442233

`A339822(n+1)-A339815(n+1)`
-/

namespace A339814.P5774705654383442233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339822 (n + 1) - A339815 (n + 1)

end

end A339814.P5774705654383442233

namespace A339814

/-- `A339822(n+1)-A339815(n+1)` -/
def P5774705654383442233.Spec : Prop :=
  ∀ n, P5774705654383442233.a n = A339814 (n + 1)

end A339814

/-! ## A339814.P1375881860136379085

`A339813(A103517(n))+A000007(n)`
-/

namespace A339814.P1375881860136379085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339813 (A103517 n).toNat + A000007 n

end

end A339814.P1375881860136379085

namespace A339814

/-- `A339813(A103517(n))+A000007(n)` -/
def P1375881860136379085.Spec : Prop :=
  ∀ n, P1375881860136379085.a n = A339814 (n + 1)

end A339814

/-! ## A339814.P8159572788568852315

`val(A332382(n+1)-1, 2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A339814

/-- `val(A332382(n+1)-1, 2)` -/
def P8159572788568852315.Spec : Prop :=
  ∀ n, (P8159572788568852315.a n : ℤ) = A339814 (n + 1)

theorem P8159572788568852315.correct : P8159572788568852315.Spec := by
  intro n
  simp only [A339814, Nat.add_sub_cancel]

end A339814

/-! ## A339814.P10696446273092577166

`filter[A339813(n+1), A145568(#)]`
-/

namespace A339814.P10696446273092577166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A339814.P10696446273092577166

namespace A339814

/-- `filter[A339813(n+1), A145568(#)]` -/
def P10696446273092577166.Spec : Prop :=
  ∀ n, P10696446273092577166.a n = A339814 (n + 1)

end A339814

/-! ## A339814.P13227160685638701623

`filter[A339813(n+1), A168185(#)]`
-/

namespace A339814.P13227160685638701623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A339814.P13227160685638701623

namespace A339814

/-- `filter[A339813(n+1), A168185(#)]` -/
def P13227160685638701623.Spec : Prop :=
  ∀ n, P13227160685638701623.a n = A339814 (n + 1)

end A339814

/-!
# A339815: Let x = A019565(2*n); a(n) is the difference between 2-adic valuations of phi(x) and (x-1).

The programs for A339815, there is no canonical definition to state claims against.
-/

/-! ## A339815.P3314625757307333046

`A339822(n+1)-A339814(n+1)`
-/

namespace A339815.P3314625757307333046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339822 (n + 1) - A339814 (n + 1)

end

end A339815.P3314625757307333046

/-! ## A339815.P1050846620188114424

`A007814(A000010(A019565(2*(n+1))))-A007814(A019565(2*(n+1))-1)`
-/

namespace A339815.P1050846620188114424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000010 (A019565 (2 * (n + 1))).toNat).toNat - A007814 (A019565 (2 * (n + 1)) - 1).toNat

end

end A339815.P1050846620188114424

/-! ## A339815.P12636666988565722363

`A339822(n+1)-A339813(2*(n+1))`
-/

namespace A339815.P12636666988565722363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339822 (n + 1) - A339813 (2 * (n + 1))

end

end A339815.P12636666988565722363

/-! ## A339815.P13376682891726150077

`A339822(n+1)+A001478(A339814(n+1)+1)+1`
-/

namespace A339815.P13376682891726150077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339822 (n + 1) + A001478 (A339814 (n + 1) + 1).toNat + 1

end

end A339815.P13376682891726150077

/-! ## A339815.P6429398144912016907

`A339822(n+1)-val(A339809(2*(n+1)), 2)`
-/

namespace A339815.P6429398144912016907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339822 (n + 1) - (SequenceMachineLib.valuation (A339809 (2 * (n + 1))).toNat 2 : ℤ)

end

end A339815.P6429398144912016907

/-! ## A339815.P9118769718410545589

`A339822(n+1)-val(A019565(2*(n+1))-1, 2)`
-/

namespace A339815.P9118769718410545589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339822 (n + 1) - (SequenceMachineLib.valuation (A019565 (2 * (n + 1)) - 1).toNat 2 : ℤ)

end

end A339815.P9118769718410545589

/-! ## A339815.P12151580194981406620

`A007814(A339821(n+1))-A339814(n+1)`
-/

namespace A339815.P12151580194981406620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A339821 (n + 1)).toNat - A339814 (n + 1)

end

end A339815.P12151580194981406620

/-!
# A339816: Numbers k for which A339814(k) >= A339822(k).

The programs for A339816, there is no canonical definition to state claims against.
-/

/-! ## A339816.P7885562435899521158

`lt[A339815(n+1), 1]+1`
-/

namespace A339816.P7885562435899521158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339815 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A339816.P7885562435899521158

/-! ## A339816.P3539578567603570229

`lt[C(A339822(n+1), A339814(n+1)), 2]+1`
-/

namespace A339816.P3539578567603570229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A339822 (n + 1)).toNat (A339814 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A339816.P3539578567603570229

/-! ## A339816.P5691203902726905169

`lt[A339822(n+1)-val(A019565(2*(n+1))-1, 2), 1]+1`
-/

namespace A339816.P5691203902726905169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339822 (n + 1) - (SequenceMachineLib.valuation (A019565 (2 * (n + 1)) - 1).toNat 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A339816.P5691203902726905169

/-! ## A339816.P18442144095927534906

`lt[0, A353499(A019565(2*n))]`
-/

namespace A339816.P18442144095927534906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353499 (A019565 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A339816.P18442144095927534906

/-!
# A339817: Squarefree numbers k > 1 for which the 2-adic valuation of phi(k) does not exceed the 2-adic valuation of k-1.

The programs for A339817, the canonical program `A339817.P13850766974360266592` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339817 has offset 1).

The definition of A339817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339817.P13850766974360266592

`record[A007947(n+2)*A353498(n+2)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A339817

/-- `record[A007947(n+2)*A353498(n+2)]` -/
def P13850766974360266592.Spec : Prop :=
  ∀ n, P13850766974360266592.a n = A339817 (n + 1)

theorem P13850766974360266592.correct : P13850766974360266592.Spec := by
  intro n
  simp only [A339817, Nat.add_sub_cancel]

end A339817

/-! ## A339817.P7804496596715715496

`eq[1, A353499(n+1)]+1`
-/

namespace A339817.P7804496596715715496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353499 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A339817.P7804496596715715496

namespace A339817

/-- `eq[1, A353499(n+1)]+1` -/
def P7804496596715715496.Spec : Prop :=
  ∀ n, (P7804496596715715496.a n : ℤ) = A339817 (n + 1)

end A339817

/-! ## A339817.P1098266463744271282

`filter[A277334(n+1), A353499(#)]`
-/

namespace A339817.P1098266463744271282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277334 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A339817.P1098266463744271282

namespace A339817

/-- `filter[A277334(n+1), A353499(#)]` -/
def P1098266463744271282.Spec : Prop :=
  ∀ n, P1098266463744271282.a n = A339817 (n + 1)

end A339817

/-! ## A339817.P17198737126942860981

`filter[A269870(n+1), A353499(#)]`
-/

namespace A339817.P17198737126942860981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A339817.P17198737126942860981

namespace A339817

/-- `filter[A269870(n+1), A353499(#)]` -/
def P17198737126942860981.Spec : Prop :=
  ∀ n, P17198737126942860981.a n = A339817 (n + 1)

end A339817

/-! ## A339817.P2206451039342306539

`filter[A004280(n+1), A353499(#)]`
-/

namespace A339817.P2206451039342306539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A339817.P2206451039342306539

namespace A339817

/-- `filter[A004280(n+1), A353499(#)]` -/
def P2206451039342306539.Spec : Prop :=
  ∀ n, P2206451039342306539.a n = A339817 (n + 1)

end A339817

/-! ## A339817.P5989169358612555920

`filter[A205006(2*n+1), A353499(#)]`
-/

namespace A339817.P5989169358612555920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205006 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A339817.P5989169358612555920

namespace A339817

/-- `filter[A205006(2*n+1), A353499(#)]` -/
def P5989169358612555920.Spec : Prop :=
  ∀ n, P5989169358612555920.a n = A339817 (n + 1)

end A339817

/-! ## A339817.P3614669249307268618

`filter[A004281(n), A353499(#)]`
-/

namespace A339817.P3614669249307268618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A339817.P3614669249307268618

namespace A339817

/-- `filter[A004281(n), A353499(#)]` -/
def P3614669249307268618.Spec : Prop :=
  ∀ n, P3614669249307268618.a n = A339817 (n + 1)

end A339817

/-! ## A339817.P18264657801773674528

`filter[A004274(n+1), A353499(#)]`
-/

namespace A339817.P18264657801773674528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A339817.P18264657801773674528

namespace A339817

/-- `filter[A004274(n+1), A353499(#)]` -/
def P18264657801773674528.Spec : Prop :=
  ∀ n, P18264657801773674528.a n = A339817 (n + 1)

end A339817

/-! ## A339817.P7783914998504555923

`filter[A004276(n+1), A353499(#)]`
-/

namespace A339817.P7783914998504555923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A339817.P7783914998504555923

namespace A339817

/-- `filter[A004276(n+1), A353499(#)]` -/
def P7783914998504555923.Spec : Prop :=
  ∀ n, P7783914998504555923.a n = A339817 (n + 1)

end A339817

/-! ## A339817.P2953060289904779014

`filter[A088948(n+1), A353499(#)]`
-/

namespace A339817.P2953060289904779014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A339817.P2953060289904779014

namespace A339817

/-- `filter[A088948(n+1), A353499(#)]` -/
def P2953060289904779014.Spec : Prop :=
  ∀ n, P2953060289904779014.a n = A339817 (n + 1)

end A339817

/-! ## A339817.P14963597315755440139

`filter[A053460(n+1), A353499(#)]`
-/

namespace A339817.P14963597315755440139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A339817.P14963597315755440139

namespace A339817

/-- `filter[A053460(n+1), A353499(#)]` -/
def P14963597315755440139.Spec : Prop :=
  ∀ n, P14963597315755440139.a n = A339817 (n + 1)

end A339817

/-! ## A339817.P21841041013081493

`filter[A374475(n+1), A353499(#)]`
-/

namespace A339817.P21841041013081493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A339817.P21841041013081493

namespace A339817

/-- `filter[A374475(n+1), A353499(#)]` -/
def P21841041013081493.Spec : Prop :=
  ∀ n, P21841041013081493.a n = A339817 (n + 1)

end A339817

/-! ## A339817.P3872577705224054409

`filter[A293205(n+1), A353499(#)]`
-/

namespace A339817.P3872577705224054409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A339817.P3872577705224054409

namespace A339817

/-- `filter[A293205(n+1), A353499(#)]` -/
def P3872577705224054409.Spec : Prop :=
  ∀ n, P3872577705224054409.a n = A339817 (n + 1)

end A339817

/-! ## A339817.P10338189963526808132

`filter[A053868(n+1), A353499(#)]`
-/

namespace A339817.P10338189963526808132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A339817.P10338189963526808132

namespace A339817

/-- `filter[A053868(n+1), A353499(#)]` -/
def P10338189963526808132.Spec : Prop :=
  ∀ n, P10338189963526808132.a n = A339817 (n + 1)

end A339817

/-! ## A339817.P15000979843155519081

`filter[A171087(n+1), A353499(#)]`
-/

namespace A339817.P15000979843155519081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A339817.P15000979843155519081

namespace A339817

/-- `filter[A171087(n+1), A353499(#)]` -/
def P15000979843155519081.Spec : Prop :=
  ∀ n, P15000979843155519081.a n = A339817 (n + 1)

end A339817

/-! ## A339817.P14360771610231026901

`filter[A042996(n+1), A353499(#)]`
-/

namespace A339817.P14360771610231026901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A339817.P14360771610231026901

namespace A339817

/-- `filter[A042996(n+1), A353499(#)]` -/
def P14360771610231026901.Spec : Prop :=
  ∀ n, P14360771610231026901.a n = A339817 (n + 1)

end A339817

/-! ## A339817.P17922545690289520969

`filter[A087246(n+1), A353498(#)]`
-/

namespace A339817.P17922545690289520969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353498 (f1 j).toNat = 1) n)

end

end A339817.P17922545690289520969

namespace A339817

/-- `filter[A087246(n+1), A353498(#)]` -/
def P17922545690289520969.Spec : Prop :=
  ∀ n, P17922545690289520969.a n = A339817 (n + 1)

end A339817

/-! ## A339817.P10052063945826080132

`filter[A087246(n+1), A353499(#)]`
-/

namespace A339817.P10052063945826080132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A339817.P10052063945826080132

namespace A339817

/-- `filter[A087246(n+1), A353499(#)]` -/
def P10052063945826080132.Spec : Prop :=
  ∀ n, P10052063945826080132.a n = A339817 (n + 1)

end A339817

/-! ## A339817.P8855798634450720895

`filter[A196499(n+1), A353499(#)]`
-/

namespace A339817.P8855798634450720895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A339817.P8855798634450720895

namespace A339817

/-- `filter[A196499(n+1), A353499(#)]` -/
def P8855798634450720895.Spec : Prop :=
  ∀ n, P8855798634450720895.a n = A339817 (n + 1)

end A339817

/-! ## A339817.P255459269361914551

`filter[A066248(n+1), A353499(#)]`
-/

namespace A339817.P255459269361914551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A339817.P255459269361914551

namespace A339817

/-- `filter[A066248(n+1), A353499(#)]` -/
def P255459269361914551.Spec : Prop :=
  ∀ n, P255459269361914551.a n = A339817 (n + 1)

end A339817

/-!
# A339819: Squarefree numbers k > 1 for which neither 2-adic nor 3-adic valuation of phi(k) exceeds the corresponding valuation of k-1.

The programs for A339819, there is no canonical definition to state claims against.
-/

/-! ## A339819.P9560081688988655590

`∩[A238463(n+1), A320055(n+1)]`
-/

namespace A339819.P9560081688988655590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339819.P9560081688988655590

/-! ## A339819.P16201707662702719372

`∩[A238463(n+1), A328674(n+1)]`
-/

namespace A339819.P16201707662702719372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339819.P16201707662702719372

/-! ## A339819.P356174104027679247

`∩[A238463(n+1), A360552(n+1)]`
-/

namespace A339819.P356174104027679247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339819.P356174104027679247

/-! ## A339819.P3273023215164227484

`∩[A238463(n+1), A379721(n+1)]`
-/

namespace A339819.P3273023215164227484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339819.P3273023215164227484

/-! ## A339819.P8618210286758757490

`eq[A103689(n+1), A158972(n+1)]`
-/

namespace A339819.P8618210286758757490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158972 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339819.P8618210286758757490

/-!
# A339820: a(n) = phi(A019565(n)), where phi is Euler totient function.

The programs for A339820, there is no canonical definition to state claims against.
-/

/-! ## A339820.P14342530679914856481

`A000010(A019565(n))`
-/

namespace A339820.P14342530679914856481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A019565 n).toNat

end

end A339820.P14342530679914856481

/-! ## A339820.P6837767298700838234

`A339821(floor(n/2))`
-/

namespace A339820.P6837767298700838234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339821 ⌊(n : ℚ) / 2⌋.toNat

end

end A339820.P6837767298700838234

/-! ## A339820.P2232854978659591076

`A339821(A123108(n))-A000007(n)`
-/

namespace A339820.P2232854978659591076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339821 (A123108 n).toNat - A000007 n

end

end A339820.P2232854978659591076

/-! ## A339820.P12730575213239337677

`A339821(A004526(n))+A019590(2*n+5)`
-/

namespace A339820.P12730575213239337677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339821 (A004526 n).toNat + A019590 (2 * n + 5)

end

end A339820.P12730575213239337677

/-! ## A339820.P14931900124119355966

`A290077(A048678(n))`
-/

namespace A339820.P14931900124119355966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290077 (A048678 n).toNat

end

end A339820.P14931900124119355966

/-! ## A339820.P5667790664014778137

`A290077(A124108(n)/2)`
-/

namespace A339820.P5667790664014778137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290077 (SequenceMachineLib.roundAway ((A124108 n : ℚ) / 2)).toNat

end

end A339820.P5667790664014778137

/-! ## A339820.P10465298071391098310

`∏{p}[A339809(n)+1, #-1]`
-/

namespace A339820.P10465298071391098310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A339820.P10465298071391098310

/-! ## A339820.P13285518302657927854

`∏{p}[sqrt(A334110(n)), A000010(#)]`
-/

namespace A339820.P13285518302657927854
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A334110 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000010 p

end

end A339820.P13285518302657927854

/-! ## A339820.P14257200483553579110

`∏{p}[sqrt(A334110(n)), A002322(#)]`
-/

namespace A339820.P14257200483553579110
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A334110 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A002322 p

end

end A339820.P14257200483553579110

/-! ## A339820.P2895407179973550082

`∏{p}[A277006(A048680(n)), A000010(#)]`
-/

namespace A339820.P2895407179973550082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277006 (A048680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 p

end

end A339820.P2895407179973550082

/-! ## A339820.P13155527720228437908

`∏{p}[A277330(A277711(n)), A002837(#)]`
-/

namespace A339820.P13155527720228437908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 (A277711 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002837 p

end

end A339820.P13155527720228437908

/-! ## A339820.P3957033201433146082

`∏{p}[A304537(A304534(n)), A002837(#)]`
-/

namespace A339820.P3957033201433146082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304537 (A304534 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002837 p

end

end A339820.P3957033201433146082

/-! ## A339820.P12787479335241105745

`A000010(A332382(floor(n/2)))`
-/

namespace A339820.P12787479335241105745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A332382 ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A339820.P12787479335241105745

/-! ## A339820.P15736322214226645494

`A000010(sqrt(A334110(n)))`
-/

namespace A339820.P15736322214226645494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.sqrt (A334110 n : ℝ))).toNat

end

end A339820.P15736322214226645494

/-! ## A339820.P10792008799629464336

`A000010(A339809(n)+1)`
-/

namespace A339820.P10792008799629464336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A339809 n + 1).toNat

end

end A339820.P10792008799629464336

/-! ## A339820.P8767281464165580804

`A000010(root(A334110(n), 2))`
-/

namespace A339820.P8767281464165580804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A334110 n : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A339820.P8767281464165580804

/-! ## A339820.P16651114571959616685

`A000010(A334110(n)^(1/2))`
-/

namespace A339820.P16651114571959616685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A334110 n : ℝ) ^ ((1 : ℚ) / 2 : ℝ))).toNat

end

end A339820.P16651114571959616685

/-! ## A339820.P16866698095170935753

`A000010(A277006(A048680(n)))`
-/

namespace A339820.P16866698095170935753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A277006 (A048680 n).toNat).toNat

end

end A339820.P16866698095170935753

/-! ## A339820.P13255259593781425183

`A000010(A303770(A303774(n)))`
-/

namespace A339820.P13255259593781425183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A303770 (A303774 n).toNat).toNat

end

end A339820.P13255259593781425183

/-! ## A339820.P5595846957983584289

`A003958(2*A019565(n))`
-/

namespace A339820.P5595846957983584289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (2 * A019565 n).toNat

end

end A339820.P5595846957983584289

/-!
# A339821: a(n) = phi(A019565(2n)), where phi is Euler totient function.

The programs for A339821, there is no canonical definition to state claims against.
-/

/-! ## A339821.P192058060052069814

`A339820(2*n)`
-/

namespace A339821.P192058060052069814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339820 (2 * n)

end

end A339821.P192058060052069814

/-! ## A339821.P10481511375081280035

`A003972(A019565(n))`
-/

namespace A339821.P10481511375081280035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003972 (A019565 n).toNat

end

end A339821.P10481511375081280035

/-! ## A339821.P9828738487468993012

`A000010(A019565(2*n))`
-/

namespace A339821.P9828738487468993012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A019565 (2 * n)).toNat

end

end A339821.P9828738487468993012

/-! ## A339821.P7381164269089060079

`A339820(A004277(n))%A008452(n+4)`
-/

namespace A339821.P7381164269089060079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339820 (A004277 n).toNat) (A008452 (n + 4))

end

end A339821.P7381164269089060079

/-! ## A339821.P18057232106536811354

`A339820(A004277(n))+A010052(A000040(n+1))`
-/

namespace A339821.P18057232106536811354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339820 (A004277 n).toNat + A010052 (A000040 (n + 1)).toNat

end

end A339821.P18057232106536811354

/-! ## A339821.P4102369901975923766

`∏{p}[A019565(n), A336841(#)]`
-/

namespace A339821.P4102369901975923766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A336841 p

end

end A339821.P4102369901975923766

/-! ## A339821.P11049604537673828835

`∏{p}[A019565(n), A344587(#)]`
-/

namespace A339821.P11049604537673828835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A344587 p

end

end A339821.P11049604537673828835

/-! ## A339821.P7350537142417981365

`A290077(A124108(n))`
-/

namespace A339821.P7350537142417981365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290077 (A124108 n).toNat

end

end A339821.P7350537142417981365

/-! ## A339821.P5047865802332710218

`A290077(A048678(2*n))`
-/

namespace A339821.P5047865802332710218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290077 (A048678 (2 * n)).toNat

end

end A339821.P5047865802332710218

/-! ## A339821.P17648214883550710125

`∏{p}[sqrt(A334110(2*n)), A000010(#)]`
-/

namespace A339821.P17648214883550710125
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A334110 (2 * n) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000010 p

end

end A339821.P17648214883550710125

/-! ## A339821.P5698899806415425288

`∏{p}[A284003(xor(n, 2*n)), A000010(#)]`
-/

namespace A339821.P5698899806415425288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284003 (Nat.xor n (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 p

end

end A339821.P5698899806415425288

/-! ## A339821.P12763064778780234343

`∏{p}[A339809(Δ[n²])+1, #-1]`
-/

namespace A339821.P12763064778780234343
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A339821.P12763064778780234343

/-!
# A339822: The exponent of the highest power of 2 dividing A339821(n).

The programs for A339822, there is no canonical definition to state claims against.
-/

/-! ## A339822.P2149509437061167795

`A007814(A339821(n))`
-/

namespace A339822.P2149509437061167795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A339821 n).toNat

end

end A339822.P2149509437061167795

/-! ## A339822.P10838791974163917771

`A007814(A003972(A019565(n)))`
-/

namespace A339822.P10838791974163917771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A003972 (A019565 n).toNat).toNat

end

end A339822.P10838791974163917771

/-! ## A339822.P2825653137567522107

`A007814(A000010(A019565(2*n)))`
-/

namespace A339822.P2825653137567522107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000010 (A019565 (2 * n)).toNat).toNat

end

end A339822.P2825653137567522107

/-! ## A339822.P15268763437886372234

`A053574(A019565(2*n))`
-/

namespace A339822.P15268763437886372234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053574 (A019565 (2 * n)).toNat

end

end A339822.P15268763437886372234

/-! ## A339822.P6978612775161531615

`val(A339820(2*n), 2)`
-/

namespace A339822.P6978612775161531615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A339820 (2 * n)).toNat 2

end

end A339822.P6978612775161531615

/-! ## A339822.P8169486885506008862

`A339902(n)-A001222(A339971(n))`
-/

namespace A339822.P8169486885506008862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339902 n - A001222 (A339971 n).toNat

end

end A339822.P8169486885506008862

/-! ## A339822.P14757886504084361559

`val(A339821(n), A001511(A182841(2*(n+2))))`
-/

namespace A339822.P14757886504084361559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A339821 n).toNat (A001511 (A182841 (2 * (n + 2))).toNat).toNat

end

end A339822.P14757886504084361559

/-! ## A339822.P12447063198759830709

`∑{p}[A019565(n), A327812(#)]`
-/

namespace A339822.P12447063198759830709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A327812 p

end

end A339822.P12447063198759830709

/-! ## A339822.P10722145224106514309

`∑{p}[A019565(n), val(A003972(#), 2)]`
-/

namespace A339822.P10722145224106514309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.valuation (A003972 p).toNat 2

end

end A339822.P10722145224106514309

/-! ## A339822.P8723049295484591719

`val(∏{p}[A019565(n), A339905(#)], 2)`
-/

namespace A339822.P8723049295484591719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A339905 p).toNat 2

end

end A339822.P8723049295484591719

/-! ## A339822.P1646301746619978211

`val(∏{p}[A019565(n), A344587(#)], 2)`
-/

namespace A339822.P1646301746619978211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A344587 p).toNat 2

end

end A339822.P1646301746619978211

/-! ## A339822.P8286758498609332859

`∑{p}[A019565(n), A228351(A174574(#))]`
-/

namespace A339822.P8286758498609332859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A228351 (A174574 p).toNat

end

end A339822.P8286758498609332859

/-! ## A339822.P12669672357645845511

`val(A290077(A124108(n)), 2)`
-/

namespace A339822.P12669672357645845511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A290077 (A124108 n).toNat).toNat 2

end

end A339822.P12669672357645845511

/-! ## A339822.P4356135593878198381

`val(A290077(A048678(2*n)), 2)`
-/

namespace A339822.P4356135593878198381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A290077 (A048678 (2 * n)).toNat).toNat 2

end

end A339822.P4356135593878198381

/-!
# A339823: a(n) = A056239(n) - A000523(n).

The programs for A339823, the canonical program `A339823.P7188446837761765173` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339823 has offset 1).

The definition of A339823 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056239, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A339823.P7188446837761765173

`A056239(n+1)-A000523(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A339823

/-- `A056239(n+1)-A000523(n+1)` -/
def P7188446837761765173.Spec : Prop :=
  ∀ n, P7188446837761765173.a n = A339823 (n + 1)

theorem P7188446837761765173.correct : P7188446837761765173.Spec := by
  intro n
  simp only [A339823, Nat.add_sub_cancel]

end A339823

/-! ## A339823.P7544553550764912529

`A319855(n+1)-A238845(n)`
-/

namespace A339823.P7544553550764912529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319855 (n + 1) - A238845 n

end

end A339823.P7544553550764912529

namespace A339823

/-- `A319855(n+1)-A238845(n)` -/
def P7544553550764912529.Spec : Prop :=
  ∀ n, P7544553550764912529.a n = A339823 (n + 1)

end A339823

/-! ## A339823.P10606700994123799876

`A380345(n+1)-A080804(n+1)`
-/

namespace A339823.P10606700994123799876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380345 (n + 1) - A080804 (n + 1)

end

end A339823.P10606700994123799876

namespace A339823

/-- `A380345(n+1)-A080804(n+1)` -/
def P10606700994123799876.Spec : Prop :=
  ∀ n, P10606700994123799876.a n = A339823 (n + 1)

end A339823

/-! ## A339823.P18421088230619004164

`A318995(n+1)-A339893(n+1)`
-/

namespace A339823.P18421088230619004164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 1) - A339893 (n + 1)

end

end A339823.P18421088230619004164

namespace A339823

/-- `A318995(n+1)-A339893(n+1)` -/
def P18421088230619004164.Spec : Prop :=
  ∀ n, P18421088230619004164.a n = A339823 (n + 1)

end A339823

/-! ## A339823.P17779725945023656668

`A316436(2*(n+1))-1-A000523(n+1)`
-/

namespace A339823.P17779725945023656668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316436 (2 * (n + 1)) - 1 - A000523 (n + 1)

end

end A339823.P17779725945023656668

namespace A339823

/-- `A316436(2*(n+1))-1-A000523(n+1)` -/
def P17779725945023656668.Spec : Prop :=
  ∀ n, P17779725945023656668.a n = A339823 (n + 1)

end A339823

/-! ## A339823.P17331578926773980254

`1-A178503(n+1)+n-A000523(n+1)`
-/

namespace A339823.P17331578926773980254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A178503 (n + 1) + (n : ℤ) - A000523 (n + 1)

end

end A339823.P17331578926773980254

namespace A339823

/-- `1-A178503(n+1)+n-A000523(n+1)` -/
def P17331578926773980254.Spec : Prop :=
  ∀ n, P17331578926773980254.a n = A339823 (n + 1)

end A339823

/-! ## A339823.P16304628650943982329

`A304739(A064664(n+1))-A000523(n+1)`
-/

namespace A339823.P16304628650943982329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304739 (A064664 (n + 1)).toNat - A000523 (n + 1)

end

end A339823.P16304628650943982329

namespace A339823

/-- `A304739(A064664(n+1))-A000523(n+1)` -/
def P16304628650943982329.Spec : Prop :=
  ∀ n, P16304628650943982329.a n = A339823 (n + 1)

end A339823

/-! ## A339823.P8842610822211434538

`A339894(n+1)+A339896(n+1)-A000523(n+1)`
-/

namespace A339823.P8842610822211434538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339894 (n + 1) + (A339896 (n + 1) - A000523 (n + 1))

end

end A339823.P8842610822211434538

namespace A339823

/-- `A339894(n+1)+A339896(n+1)-A000523(n+1)` -/
def P8842610822211434538.Spec : Prop :=
  ∀ n, P8842610822211434538.a n = A339823 (n + 1)

end A339823

/-! ## A339823.P363784173490153281

`A056239(n+1)+1-A070939(n+1)`
-/

namespace A339823.P363784173490153281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + 1 - A070939 (n + 1)

end

end A339823.P363784173490153281

namespace A339823

/-- `A056239(n+1)+1-A070939(n+1)` -/
def P363784173490153281.Spec : Prop :=
  ∀ n, P363784173490153281.a n = A339823 (n + 1)

end A339823

/-! ## A339823.P6683833053859902244

`A056239(n+1)+1-∑{e}[A062383(n+1), #]`
-/

namespace A339823.P6683833053859902244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + 1 - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A339823.P6683833053859902244

namespace A339823

/-- `A056239(n+1)+1-∑{e}[A062383(n+1), #]` -/
def P6683833053859902244.Spec : Prop :=
  ∀ n, P6683833053859902244.a n = A339823 (n + 1)

end A339823

/-! ## A339823.P3592043540510416745

`A056239(n+1)+1-A056239(A062383(n+1))`
-/

namespace A339823.P3592043540510416745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + 1 - A056239 (A062383 (n + 1)).toNat

end

end A339823.P3592043540510416745

namespace A339823

/-- `A056239(n+1)+1-A056239(A062383(n+1))` -/
def P3592043540510416745.Spec : Prop :=
  ∀ n, P3592043540510416745.a n = A339823 (n + 1)

end A339823

/-! ## A339823.P331178152786557535

`A249338(A249339(n+1)+1)-A000523(n+1)`
-/

namespace A339823.P331178152786557535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249338 (A249339 (n + 1) + 1).toNat - A000523 (n + 1)

end

end A339823.P331178152786557535

namespace A339823

/-- `A249338(A249339(n+1)+1)-A000523(n+1)` -/
def P331178152786557535.Spec : Prop :=
  ∀ n, P331178152786557535.a n = A339823 (n + 1)

end A339823

/-!
# A339824: Even bisection of the infinite Fibonacci word A003849.

The programs for A339824, the canonical program `A339824.P1254150227714300282` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339824 has offset 0).

The definition of A339824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339824.P4760769339602797868

`floor(ceil(n*(3-sqrt(5)))/ϕ)%2`
-/

namespace A339824.P4760769339602797868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(⌈(n : ℝ) * (3 - Real.sqrt (5 : ℝ))⌉ : ℝ) / Real.goldenRatio⌋ 2

end

end A339824.P4760769339602797868

namespace A339824

/-- `floor(ceil(n*(3-sqrt(5)))/ϕ)%2` -/
def P4760769339602797868.Spec : Prop :=
  ∀ n, P4760769339602797868.a n = A339824 n

end A339824

/-! ## A339824.P9818325161273439944

`and(1, floor(ceil(n*(3-sqrt(5)))/ϕ))`
-/

namespace A339824.P9818325161273439944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊(⌈(n : ℝ) * (3 - Real.sqrt (5 : ℝ))⌉ : ℝ) / Real.goldenRatio⌋

end

end A339824.P9818325161273439944

namespace A339824

/-- `and(1, floor(ceil(n*(3-sqrt(5)))/ϕ))` -/
def P9818325161273439944.Spec : Prop :=
  ∀ n, P9818325161273439944.a n = A339824 n

end A339824

/-! ## A339824.P2054914120040342477

`char[floor(n*ϕ²)-ceil(xor(1, n)/2)]`
-/

namespace A339824.P2054914120040342477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ - ⌈(Nat.xor 1 n : ℚ) / 2⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A339824.P2054914120040342477

namespace A339824

/-- `char[floor(n*ϕ²)-ceil(xor(1, n)/2)]` -/
def P2054914120040342477.Spec : Prop :=
  ∀ n, (P2054914120040342477.a n : ℤ) = A339824 n

end A339824

/-! ## A339824.P4002534065474443544

`char[ceil(xor(1, n)/2)+floor(ϕ*(n+1))]`
-/

namespace A339824.P4002534065474443544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 2⌉ + ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A339824.P4002534065474443544

namespace A339824

/-- `char[ceil(xor(1, n)/2)+floor(ϕ*(n+1))]` -/
def P4002534065474443544.Spec : Prop :=
  ∀ n, (P4002534065474443544.a n : ℤ) = A339824 n

end A339824

/-! ## A339824.P9958802350041373745

`char[round(xor(1, n)/2)+floor(ϕ*(n+1))]`
-/

namespace A339824.P9958802350041373745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2) + ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A339824.P9958802350041373745

namespace A339824

/-- `char[round(xor(1, n)/2)+floor(ϕ*(n+1))]` -/
def P9958802350041373745.Spec : Prop :=
  ∀ n, (P9958802350041373745.a n : ℤ) = A339824 n

end A339824

/-! ## A339824.P11264454820098821123

`1-record[xor(1, floor(ϕ*(n+1))-1)]%2`
-/

namespace A339824.P11264454820098821123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (⌊Real.goldenRatio * (n + 1 : ℝ)⌋ - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2

end

end A339824.P11264454820098821123

namespace A339824

/-- `1-record[xor(1, floor(ϕ*(n+1))-1)]%2` -/
def P11264454820098821123.Spec : Prop :=
  ∀ n, P11264454820098821123.a n = A339824 n

end A339824

/-! ## A339824.P4887854910386657697

`C(floor(Δ[n²/ϕ]), floor(2*(n+1)/ϕ))`
-/

namespace A339824.P4887854910386657697
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℝ) / Real.goldenRatio

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊f1 (n + 1) - f1 n⌋.toNat ⌊2 * ((n + 1 : ℝ) / Real.goldenRatio)⌋.toNat

end

end A339824.P4887854910386657697

namespace A339824

/-- `C(floor(Δ[n²/ϕ]), floor(2*(n+1)/ϕ))` -/
def P4887854910386657697.Spec : Prop :=
  ∀ n, (P4887854910386657697.a n : ℤ) = A339824 n

end A339824

/-! ## A339824.P10486147604360499368

`floor(floor(Δ[n²/ϕ])/floor(2*(n+1)/ϕ))`
-/

namespace A339824.P10486147604360499368
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℝ) / Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊f1 (n + 1) - f1 n⌋ : ℚ) / (⌊2 * ((n + 1 : ℝ) / Real.goldenRatio)⌋ : ℚ)⌋

end

end A339824.P10486147604360499368

namespace A339824

/-- `floor(floor(Δ[n²/ϕ])/floor(2*(n+1)/ϕ))` -/
def P10486147604360499368.Spec : Prop :=
  ∀ n, P10486147604360499368.a n = A339824 n

end A339824

/-! ## A339824.P1254150227714300282

`1-A339052(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A339824

/-- `1-A339052(n)` -/
def P1254150227714300282.Spec : Prop :=
  ∀ n, P1254150227714300282.a n = A339824 n

theorem P1254150227714300282.correct : P1254150227714300282.Spec := by
  intro n
  simp only [A339824]

end A339824

/-! ## A339824.P11111588384368200397

`1-A096270(Δ[n²])`
-/

namespace A339824.P11111588384368200397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A096270 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A339824.P11111588384368200397

namespace A339824

/-- `1-A096270(Δ[n²])` -/
def P11111588384368200397.Spec : Prop :=
  ∀ n, P11111588384368200397.a n = A339824 n

end A339824

/-! ## A339824.P2022150096769162929

`A171587(A187329(n))`
-/

namespace A339824.P2022150096769162929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171587 (A187329 n).toNat

end

end A339824.P2022150096769162929

namespace A339824

/-- `A171587(A187329(n))` -/
def P2022150096769162929.Spec : Prop :=
  ∀ n, P2022150096769162929.a n = A339824 n

end A339824

/-! ## A339824.P10725700173332802721

`A339051(A339051(n)+n)`
-/

namespace A339824.P10725700173332802721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339051 (A339051 n + (n : ℤ)).toNat

end

end A339824.P10725700173332802721

namespace A339824

/-- `A339051(A339051(n)+n)` -/
def P10725700173332802721.Spec : Prop :=
  ∀ n, P10725700173332802721.a n = A339824 n

end A339824

/-! ## A339824.P18309228232956481584

`A188257(n+1)*A327174(n)`
-/

namespace A339824.P18309228232956481584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188257 (n + 1) * A327174 n

end

end A339824.P18309228232956481584

namespace A339824

/-- `A188257(n+1)*A327174(n)` -/
def P18309228232956481584.Spec : Prop :=
  ∀ n, P18309228232956481584.a n = A339824 n

end A339824

/-! ## A339824.P11712347765927122658

`A188260(n+1)*A327174(n)`
-/

namespace A339824.P11712347765927122658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188260 (n + 1) * A327174 n

end

end A339824.P11712347765927122658

namespace A339824

/-- `A188260(n+1)*A327174(n)` -/
def P11712347765927122658.Spec : Prop :=
  ∀ n, P11712347765927122658.a n = A339824 n

end A339824

/-! ## A339824.P1780619180617846918

`A184516(n+1)-A001961(n+1)`
-/

namespace A339824.P1780619180617846918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184516 (n + 1) - A001961 (n + 1)

end

end A339824.P1780619180617846918

namespace A339824

/-- `A184516(n+1)-A001961(n+1)` -/
def P1780619180617846918.Spec : Prop :=
  ∀ n, P1780619180617846918.a n = A339824 n

end A339824

/-! ## A339824.P4891379072614809691

`A089809(n+1)-A387348(n+1)`
-/

namespace A339824.P4891379072614809691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089809 (n + 1) - A387348 (n + 1)

end

end A339824.P4891379072614809691

namespace A339824

/-- `A089809(n+1)-A387348(n+1)` -/
def P4891379072614809691.Spec : Prop :=
  ∀ n, P4891379072614809691.a n = A339824 n

end A339824

/-! ## A339824.P485814168058318841

`A003849(A368050(n+1)-1)`
-/

namespace A339824.P485814168058318841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A368050 (n + 1) - 1).toNat

end

end A339824.P485814168058318841

namespace A339824

/-- `A003849(A368050(n+1)-1)` -/
def P485814168058318841.Spec : Prop :=
  ∀ n, P485814168058318841.a n = A339824 n

end A339824

/-! ## A339824.P4839029532885259738

`A003849(A356771(2*n))`
-/

namespace A339824.P4839029532885259738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A356771 (2 * n)).toNat

end

end A339824.P4839029532885259738

namespace A339824

/-- `A003849(A356771(2*n))` -/
def P4839029532885259738.Spec : Prop :=
  ∀ n, P4839029532885259738.a n = A339824 n

end A339824

/-! ## A339824.P6879430124594036101

`A003849(2*n)`
-/

namespace A339824.P6879430124594036101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (2 * n)

end

end A339824.P6879430124594036101

namespace A339824

/-- `A003849(2*n)` -/
def P6879430124594036101.Spec : Prop :=
  ∀ n, P6879430124594036101.a n = A339824 n

end A339824

/-! ## A339824.P9329244853161856470

`log2(A003842(2*n))`
-/

namespace A339824.P9329244853161856470
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A003842 (2 * n) : ℝ)

end

end A339824.P9329244853161856470

namespace A339824

/-- `log2(A003842(2*n))` -/
def P9329244853161856470.Spec : Prop :=
  ∀ n, P9329244853161856470.a n = (A339824 n : ℝ)

end A339824

/-!
# A339825: Odd bisection of the infinite Fibonacci word A003849.

The programs for A339825, the canonical program `A339825.P14699190543231876115` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339825 has offset 0).

The definition of A339825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339825.P1484791264889352011

`char[floor(n/ϕ)+3*floor(n/2)]`
-/

namespace A339825.P1484791264889352011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋ + 3 * ⌊(n : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A339825.P1484791264889352011

namespace A339825

/-- `char[floor(n/ϕ)+3*floor(n/2)]` -/
def P1484791264889352011.Spec : Prop :=
  ∀ n, (P1484791264889352011.a n : ℤ) = A339825 n

end A339825

/-! ## A339825.P14699190543231876115

`1-A339051(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A339825

/-- `1-A339051(n+1)` -/
def P14699190543231876115.Spec : Prop :=
  ∀ n, P14699190543231876115.a n = A339825 n

theorem P14699190543231876115.correct : P14699190543231876115.Spec := by
  intro n
  simp only [A339825]

end A339825

/-! ## A339825.P2762594398189952959

`A104324(Δ[n²])%2`
-/

namespace A339825.P2762594398189952959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104324 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) 2

end

end A339825.P2762594398189952959

namespace A339825

/-- `A104324(Δ[n²])%2` -/
def P2762594398189952959.Spec : Prop :=
  ∀ n, P2762594398189952959.a n = A339825 n

end A339825

/-! ## A339825.P3923475837657130264

`1-A096270(2*(n+1))`
-/

namespace A339825.P3923475837657130264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A096270 (2 * (n + 1))

end

end A339825.P3923475837657130264

namespace A339825

/-- `1-A096270(2*(n+1))` -/
def P3923475837657130264.Spec : Prop :=
  ∀ n, P3923475837657130264.a n = A339825 n

end A339825

/-! ## A339825.P7167542907481729062

`and(1, A104324(2*n+1))`
-/

namespace A339825.P7167542907481729062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A104324 (2 * n + 1))

end

end A339825.P7167542907481729062

namespace A339825

/-- `and(1, A104324(2*n+1))` -/
def P7167542907481729062.Spec : Prop :=
  ∀ n, P7167542907481729062.a n = A339825 n

end A339825

/-! ## A339825.P10183669435961603233

`and(1, A319432(2*(n+1)))`
-/

namespace A339825.P10183669435961603233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A319432 (2 * (n + 1)))

end

end A339825.P10183669435961603233

namespace A339825

/-- `and(1, A319432(2*(n+1)))` -/
def P10183669435961603233.Spec : Prop :=
  ∀ n, P10183669435961603233.a n = A339825 n

end A339825

/-! ## A339825.P10925595205283450165

`C(2, A319432(2*n+1))`
-/

namespace A339825.P10925595205283450165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A319432 (2 * n + 1)).toNat

end

end A339825.P10925595205283450165

namespace A339825

/-- `C(2, A319432(2*n+1))` -/
def P10925595205283450165.Spec : Prop :=
  ∀ n, (P10925595205283450165.a n : ℤ) = A339825 n

end A339825

/-! ## A339825.P6249135702283608168

`A339052(a(n-1)+n)` with `a(0)=1`
-/

namespace A339825.P6249135702283608168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A339052 (a (n - 1) + (n : ℤ)).toNat

end

end A339825.P6249135702283608168

namespace A339825

/-- `A339052(a(n-1)+n)` -/
def P6249135702283608168.Spec : Prop :=
  ∀ n, P6249135702283608168.a n = A339825 n

end A339825

/-! ## A339825.P3416587710778758134

`A339052(A339052(n)+n)`
-/

namespace A339825.P3416587710778758134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339052 (A339052 n + (n : ℤ)).toNat

end

end A339825.P3416587710778758134

namespace A339825

/-- `A339052(A339052(n)+n)` -/
def P3416587710778758134.Spec : Prop :=
  ∀ n, P3416587710778758134.a n = A339825 n

end A339825

/-! ## A339825.P15643351028848156055

`and(1, A277335(2*n+1))`
-/

namespace A339825.P15643351028848156055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A277335 (2 * n + 1))

end

end A339825.P15643351028848156055

namespace A339825

/-- `and(1, A277335(2*n+1))` -/
def P15643351028848156055.Spec : Prop :=
  ∀ n, P15643351028848156055.a n = A339825 n

end A339825

/-! ## A339825.P14279502622257170973

`A048679(2*n+1)%2`
-/

namespace A339825.P14279502622257170973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048679 (2 * n + 1)) 2

end

end A339825.P14279502622257170973

namespace A339825

/-- `A048679(2*n+1)%2` -/
def P14279502622257170973.Spec : Prop :=
  ∀ n, P14279502622257170973.a n = A339825 n

end A339825

/-! ## A339825.P18096784211969842862

`A085002(A001965(n+1))`
-/

namespace A339825.P18096784211969842862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085002 (A001965 (n + 1)).toNat

end

end A339825.P18096784211969842862

namespace A339825

/-- `A085002(A001965(n+1))` -/
def P18096784211969842862.Spec : Prop :=
  ∀ n, P18096784211969842862.a n = A339825 n

end A339825

/-! ## A339825.P527572044768590126

`A085002(A001967(n+1))`
-/

namespace A339825.P527572044768590126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085002 (A001967 (n + 1)).toNat

end

end A339825.P527572044768590126

namespace A339825

/-- `A085002(A001967(n+1))` -/
def P527572044768590126.Spec : Prop :=
  ∀ n, P527572044768590126.a n = A339825 n

end A339825

/-! ## A339825.P6687911024832797392

`A003849(A379739(n+1)-1)`
-/

namespace A339825.P6687911024832797392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A379739 (n + 1) - 1).toNat

end

end A339825.P6687911024832797392

namespace A339825

/-- `A003849(A379739(n+1)-1)` -/
def P6687911024832797392.Spec : Prop :=
  ∀ n, P6687911024832797392.a n = A339825 n

end A339825

/-! ## A339825.P2723768259018136344

`A085002(A005206(2*(n+1)))`
-/

namespace A339825.P2723768259018136344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085002 (A005206 (2 * (n + 1))).toNat

end

end A339825.P2723768259018136344

namespace A339825

/-- `A085002(A005206(2*(n+1)))` -/
def P2723768259018136344.Spec : Prop :=
  ∀ n, P2723768259018136344.a n = A339825 n

end A339825

/-! ## A339825.P14887466051339183198

`A003849(Δ[n²])`
-/

namespace A339825.P14887466051339183198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A339825.P14887466051339183198

namespace A339825

/-- `A003849(Δ[n²])` -/
def P14887466051339183198.Spec : Prop :=
  ∀ n, P14887466051339183198.a n = A339825 n

end A339825

/-! ## A339825.P6117227204182643478

`log2(A003842(Δ[n²]))`
-/

namespace A339825.P6117227204182643478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A003842 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)

end

end A339825.P6117227204182643478

namespace A339825

/-- `log2(A003842(Δ[n²]))` -/
def P6117227204182643478.Spec : Prop :=
  ∀ n, P6117227204182643478.a n = (A339825 n : ℝ)

end A339825

/-! ## A339825.P338261952756088316

`1-A005614(Δ[n²])`
-/

namespace A339825.P338261952756088316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005614 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A339825.P338261952756088316

namespace A339825

/-- `1-A005614(Δ[n²])` -/
def P338261952756088316.Spec : Prop :=
  ∀ n, P338261952756088316.a n = A339825 n

end A339825

/-! ## A339825.P99452634216336073

`2-A014675(Δ[n²])`
-/

namespace A339825.P99452634216336073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A014675 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A339825.P99452634216336073

namespace A339825

/-- `2-A014675(Δ[n²])` -/
def P99452634216336073.Spec : Prop :=
  ∀ n, P99452634216336073.a n = A339825 n

end A339825

/-! ## A339825.P3619533171081080318

`and(1, A003849(2*n+1))`
-/

namespace A339825.P3619533171081080318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A003849 (2 * n + 1))

end

end A339825.P3619533171081080318

namespace A339825

/-- `and(1, A003849(2*n+1))` -/
def P3619533171081080318.Spec : Prop :=
  ∀ n, P3619533171081080318.a n = A339825 n

end A339825

/-!
# A339826: a(n) = least k such that the first n-block in A339825 occurs in A339824 beginning at the k-th term.

The programs for A339826, there is no canonical definition to state claims against.
-/

/-! ## A339826.P589151617231219834

`A339054(n+1)-1`
-/

namespace A339826.P589151617231219834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339054 (n + 1) - 1

end

end A339826.P589151617231219834

/-! ## A339826.P14153127740723658228

`A339827(char[ceil(n*ϕ²)]+n)-1`
-/

namespace A339826.P14153127740723658228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 2⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339827 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n) - 1

end

end A339826.P14153127740723658228

/-! ## A339826.P18106789183754758624

`A023443(A339054(n+1))`
-/

namespace A339826.P18106789183754758624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A339054 (n + 1)).toNat

end

end A339826.P18106789183754758624

/-! ## A339826.P18272770750671908758

`A057918(A339054(n+1)²)`
-/

namespace A339826.P18272770750671908758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A339054 (n + 1) ^ 2).toNat

end

end A339826.P18272770750671908758

/-! ## A339826.P11178885327225910894

`A259361(A339054(n+1)²)`
-/

namespace A339826.P11178885327225910894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A339054 (n + 1) ^ 2).toNat

end

end A339826.P11178885327225910894

/-! ## A339826.P9141284658976149652

`A023444(A339054(n+1)+1)`
-/

namespace A339826.P9141284658976149652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A339054 (n + 1) + 1).toNat

end

end A339826.P9141284658976149652

/-! ## A339826.P7532563600211865687

`A023445(A339054(n+1)+2)`
-/

namespace A339826.P7532563600211865687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A339054 (n + 1) + 2).toNat

end

end A339826.P7532563600211865687

/-! ## A339826.P4449431799323607577

`A046667(2*A339054(n+1))`
-/

namespace A339826.P4449431799323607577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A339054 (n + 1)).toNat

end

end A339826.P4449431799323607577

/-! ## A339826.P7145059339637957455

`A140106(2*A339054(n+1))`
-/

namespace A339826.P7145059339637957455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A339054 (n + 1)).toNat

end

end A339826.P7145059339637957455

/-! ## A339826.P5189085719042433820

`A249738(2*A339054(n+1))`
-/

namespace A339826.P5189085719042433820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (2 * A339054 (n + 1)).toNat

end

end A339826.P5189085719042433820

/-!
# A339827: a(n) = least k such that the first n-block in A339824 occurs in A339825 beginning at the k-th term.

The programs for A339827, there is no canonical definition to state claims against.
-/

/-! ## A339827.P8421172404678422067

`A339054(2-Δ[floor((n+1)/ϕ)]+n)`
-/

namespace A339827.P8421172404678422067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339054 (2 - (f1 (n + 1) - f1 n) + (n : ℤ)).toNat

end

end A339827.P8421172404678422067

/-! ## A339827.P3548247820824774091

`A339826(A186188(n+4)+A327492(n)-n)+1`
-/

namespace A339827.P3548247820824774091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339826 (A186188 (n + 4) + (A327492 n - (n : ℤ))).toNat + 1

end

end A339827.P3548247820824774091

/-!
# A339828: a(n) = 4*a(n-1) - 2*a(n-2) + a(n-3) - 4*a(n-4) + a(n-5) for n >= 6, where a(1) = 1, a(2) = 3, a(3) = 5, a(4) = 16, a(5) = 53.

The programs for A339828, the canonical program `A339828.P13533936186353310781` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339828 has offset 1).

The definition of A339828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339828.P11236511396224122552

`floor((sqrt(2)+2)*a(n-1))-1` with `a(0)=1`
-/

namespace A339828.P11236511396224122552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(Real.sqrt (2 : ℝ) + 2) * (a (n - 1) : ℝ)⌋ - 1

end

end A339828.P11236511396224122552

namespace A339828

/-- `floor((sqrt(2)+2)*a(n-1))-1` -/
def P11236511396224122552.Spec : Prop :=
  ∀ n, P11236511396224122552.a n = A339828 (n + 1)

end A339828

/-! ## A339828.P5145235892105886757

`ceil((sqrt(2)+2)*a(n-1))-2` with `a(0)=1`
-/

namespace A339828.P5145235892105886757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(Real.sqrt (2 : ℝ) + 2) * (a (n - 1) : ℝ)⌉ - 2

end

end A339828.P5145235892105886757

namespace A339828

/-- `ceil((sqrt(2)+2)*a(n-1))-2` -/
def P5145235892105886757.Spec : Prop :=
  ∀ n, P5145235892105886757.a n = A339828 (n + 1)

end A339828

/-! ## A339828.P6942120454556310773

`floor(2*a(n-1)/(2-sqrt(2)))-1` with `a(0)=1`
-/

namespace A339828.P6942120454556310773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(2 * a (n - 1) : ℝ) / (2 - Real.sqrt (2 : ℝ))⌋ - 1

end

end A339828.P6942120454556310773

namespace A339828

/-- `floor(2*a(n-1)/(2-sqrt(2)))-1` -/
def P6942120454556310773.Spec : Prop :=
  ∀ n, P6942120454556310773.a n = A339828 (n + 1)

end A339828

/-! ## A339828.P13533936186353310781

`∑[A341240(n+1)]-n`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A339828

/-- `∑[A341240(n+1)]-n` -/
def P13533936186353310781.Spec : Prop :=
  ∀ n, P13533936186353310781.a n = A339828 (n + 1)

theorem P13533936186353310781.correct : P13533936186353310781.Spec := by
  intro n
  simp only [A339828, Nat.add_sub_cancel]

end A339828

/-! ## A339828.P6280369224681624834

`A001489(n)+∑[A341240(n+1)]`
-/

namespace A339828.P6280369224681624834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339828.P6280369224681624834

namespace A339828

/-- `A001489(n)+∑[A341240(n+1)]` -/
def P6280369224681624834.Spec : Prop :=
  ∀ n, P6280369224681624834.a n = A339828 (n + 1)

end A339828

/-! ## A339828.P15827446863835347068

`∑[A341240(n+1)+A057428(n)]`
-/

namespace A339828.P15827446863835347068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341240 (n + 1) + A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339828.P15827446863835347068

namespace A339828

/-- `∑[A341240(n+1)+A057428(n)]` -/
def P15827446863835347068.Spec : Prop :=
  ∀ n, P15827446863835347068.a n = A339828 (n + 1)

end A339828

/-!
# A339829: Triangle read by rows: T(n,k) is the number of unlabeled trees on n vertices with independence number k.

The programs for A339829, there is no canonical definition to state claims against.
-/

/-! ## A339829.P15497852165721236584

`A122851(A083920(n))^Δ[A024646(n)]`
-/

namespace A339829.P15497852165721236584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024646 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122851 (A083920 n).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A339829.P15497852165721236584

/-! ## A339829.P16361723392976783698

`A122851(A083920(n))%A087651(n+1)`
-/

namespace A339829.P16361723392976783698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122851 (A083920 n).toNat) (A087651 (n + 1))

end

end A339829.P16361723392976783698

/-! ## A339829.P13310521250751040816

`A026492(A185896(n))*A122851(A083920(n))`
-/

namespace A339829.P13310521250751040816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026492 (A185896 n).toNat * A122851 (A083920 n).toNat

end

end A339829.P13310521250751040816

/-! ## A339829.P2567478805285787433

`A122851(A083920(n))^A014963(A123231(n+2))`
-/

namespace A339829.P2567478805285787433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122851 (A083920 n).toNat : ℚ) ^ (A014963 (A123231 (n + 2)).toNat : ℤ)

end

end A339829.P2567478805285787433

/-! ## A339829.P18337317447788856803

`A122851(A083920(n))^A014963(A045912(n))`
-/

namespace A339829.P18337317447788856803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122851 (A083920 n).toNat : ℚ) ^ (A014963 (A045912 n).toNat : ℤ)

end

end A339829.P18337317447788856803

/-!
# A339830: Number of bicolored trees on n unlabeled nodes such that black nodes are not adjacent to each other.

The programs for A339830, there is no canonical definition to state claims against.
-/

/-! ## A339830.P15817497308713862098

`A333766(A000957(n))+A089847(n)`
-/

namespace A339830.P15817497308713862098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 (A000957 n).toNat + A089847 n

end

end A339830.P15817497308713862098

/-! ## A339830.P1619899329837066514

`A292216(n)+A261104(A000142(n))`
-/

namespace A339830.P1619899329837066514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292216 n + A261104 (A000142 n).toNat

end

end A339830.P1619899329837066514

/-! ## A339830.P10381505958377407792

`A157271(A193215(n+1)+A119495(n))`
-/

namespace A339830.P10381505958377407792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A193215 (n + 1) + A119495 n).toNat

end

end A339830.P10381505958377407792

/-! ## A339830.P3514734531195214418

`A262689(A290352(n)+A131714(n)²*A256282(2*n))`
-/

namespace A339830.P3514734531195214418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A290352 n + A131714 n ^ 2 * A256282 (2 * n)).toNat

end

end A339830.P3514734531195214418

/-!
# A339831: Number of rooted bicolored trees on n nodes such that black nodes are not adjacent to each other.

The programs for A339831, there is no canonical definition to state claims against.
-/

/-! ## A339831.P14056150631409494214

`A108081(n)+A020639(A259485(n+1))`
-/

namespace A339831.P14056150631409494214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108081 n + A020639 (A259485 (n + 1)).toNat

end

end A339831.P14056150631409494214

/-! ## A339831.P3660114616935646286

`A076885(A189315(n))`
-/

namespace A339831.P3660114616935646286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A189315 n).toNat

end

end A339831.P3660114616935646286

/-!
# A339832: Number of bicolored graphs on n unlabeled nodes such that black nodes are not adjacent to each other.

The programs for A339832, there is no canonical definition to state claims against.
-/

/-! ## A339832.P11208304983639274904

`∑[A370166(n)]`
-/

namespace A339832.P11208304983639274904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339832.P11208304983639274904

/-! ## A339832.P10876559923456721913

`A223082(n+5)+A370166(n)+a(n-1)` with `a(0)=1`
-/

namespace A339832.P10876559923456721913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A223082 (n + 5) + (A370166 n + a (n - 1))

end

end A339832.P10876559923456721913

/-!
# A339834: Number of bicolored trees on n unlabeled nodes such that every white node is adjacent to a black node.

The programs for A339834, there is no canonical definition to state claims against.
-/

/-! ## A339834.P16736739790688950245

`A126257(or(2, A000116(n)))`
-/

namespace A339834.P16736739790688950245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (Int.lor 2 (A000116 n)).toNat

end

end A339834.P16736739790688950245

/-! ## A339834.P16967488570973384680

`A126257(xor(2, A000116(n)))`
-/

namespace A339834.P16967488570973384680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (Int.xor 2 (A000116 n)).toNat

end

end A339834.P16967488570973384680

/-! ## A339834.P9068244474294586578

`A157271(A188625(n+1)+1)`
-/

namespace A339834.P9068244474294586578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A188625 (n + 1) + 1).toNat

end

end A339834.P9068244474294586578

/-! ## A339834.P4222091885066908997

`A157271(A188624(Δ[n²])+1)`
-/

namespace A339834.P4222091885066908997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A188624 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1).toNat

end

end A339834.P4222091885066908997

/-!
# A339835: Number of rooted bicolored trees on n unlabeled nodes such that every white node is adjacent to a black node.

The programs for A339835, there is no canonical definition to state claims against.
-/

/-! ## A339835.P9374691397611992585

`A123108(xor(floor(5*n/3), A340498(n)))`
-/

namespace A339835.P9374691397611992585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.xor ⌊5 * ((n : ℚ) / 3)⌋ (A340498 n)).toNat

end

end A339835.P9374691397611992585

/-! ## A339835.P10731369786122741888

`xor(A004525(A340498(n)), A055400(n))`
-/

namespace A339835.P10731369786122741888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004525 (A340498 n).toNat) (A055400 n)

end

end A339835.P10731369786122741888

/-! ## A339835.P13811702510705754105

`xor(A004525(A340498(n)), A172475(n))`
-/

namespace A339835.P13811702510705754105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004525 (A340498 n).toNat) (A172475 n)

end

end A339835.P13811702510705754105

/-!
# A339836: Number of bicolored graphs on n unlabeled nodes such that every white node is adjacent to a black node.

The programs for A339836, there is no canonical definition to state claims against.
-/

/-! ## A339836.P8874267397461959919

`A341143(round(sqrt(2*4^n-3^n)))`
-/

namespace A339836.P8874267397461959919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341143 ((SequenceMachineLib.roundAway (Real.sqrt ((2 * 4 ^ n : ℤ) - (3 ^ n : ℤ) : ℝ))).toNat + 22)

end

end A339836.P8874267397461959919

/-! ## A339836.P11624286338119959265

`A036234(A060910(n))`
-/

namespace A339836.P11624286338119959265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A060910 n).toNat

end

end A339836.P11624286338119959265

/-!
# A339837: Number of bicolored trees on n unlabeled nodes such that black nodes are not adjacent to each other and every white node is adjacent to a black node.

The programs for A339837, there is no canonical definition to state claims against.
-/

/-! ## A339837.P6947257541294979348

`A157271(A005627(n)+A000625(n))`
-/

namespace A339837.P6947257541294979348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A005627 n + A000625 n).toNat

end

end A339837.P6947257541294979348

/-! ## A339837.P2093350725806661578

`A054900(A260696(n))+A005627(n)`
-/

namespace A339837.P2093350725806661578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054900 (A260696 n).toNat + A005627 n

end

end A339837.P2093350725806661578

/-! ## A339837.P6058134632808892427

`A000625(n)-A054900(A260696(n))`
-/

namespace A339837.P6058134632808892427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000625 n - A054900 (A260696 n).toNat

end

end A339837.P6058134632808892427

/-! ## A339837.P18381520087533319630

`A157271(A000625(n)-(1-A005627(n)))`
-/

namespace A339837.P18381520087533319630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A000625 n - (1 - A005627 n)).toNat

end

end A339837.P18381520087533319630

/-! ## A339837.P7370269701354934753

`A299702(A124429(n))+A054900(A260696(n))`
-/

namespace A339837.P7370269701354934753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299702 (A124429 n).toNat + A054900 (A260696 n).toNat

end

end A339837.P7370269701354934753

/-!
# A339838: Number of rooted bicolored trees on n unlabeled nodes such that black nodes are not adjacent to each other and every white node is adjacent to a black node.

The programs for A339838, there is no canonical definition to state claims against.
-/

/-! ## A339838.P14281162778079402263

`round(sqrt(A006590(∏[n+1])+1))`
-/

namespace A339838.P14281162778079402263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A006590 (∏ j ∈ Finset.range (n + 1), f1 j) + 1 : ℝ))

end

end A339838.P14281162778079402263

/-! ## A339838.P9075632847544197870

`A340764(A094854(n+1))`
-/

namespace A339838.P9075632847544197870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A094854 (n + 1)).toNat

end

end A339838.P9075632847544197870

/-! ## A339838.P15312962736609045053

`A071840(A095128(n+2))`
-/

namespace A339838.P15312962736609045053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071840 (A095128 (n + 2)).toNat

end

end A339838.P15312962736609045053

/-!
# A339839: Number of factorizations of n into distinct primes or semiprimes.

The programs for A339839, there is no canonical definition to state claims against.
-/

/-! ## A339839.P8862622191357855939

`∑{d}[n+1, A008966(#)*A322353((n+1)/#)]`
-/

namespace A339839.P8862622191357855939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A322353 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339839.P8862622191357855939

/-! ## A339839.P15603178772119740962

`∑{d}[n+1, A227291(#)*A339742((n+1)/#)]`
-/

namespace A339839.P15603178772119740962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A227291 d * A339742 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339839.P15603178772119740962

/-! ## A339839.P12275129127415696254

`∑{d}[n+1, A307430(#)*A339661((n+1)/#)]`
-/

namespace A339839.P12275129127415696254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307430 d * A339661 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339839.P12275129127415696254

/-! ## A339839.P2736882678199104146

`A339887(n+1)-A380454(n+1)`
-/

namespace A339839.P2736882678199104146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339887 (n + 1) - A380454 (n + 1)

end

end A339839.P2736882678199104146

/-! ## A339839.P8614027328564764580

`A339887(n+1)-round(sqrt(A347439(n+1)/7))`
-/

namespace A339839.P8614027328564764580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339887 (n + 1) - SequenceMachineLib.roundAway (Real.sqrt ((A347439 (n + 1) : ℚ) / 7 : ℝ))

end

end A339839.P8614027328564764580

/-! ## A339839.P5044180547698493030

`A339887(n+1)-A101048(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A339839.P5044180547698493030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339887 (n + 1) - A101048 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A339839.P5044180547698493030

/-! ## A339839.P10081443189402429321

`A339887(n+1)-A002264(A046951(n+1))`
-/

namespace A339839.P10081443189402429321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339887 (n + 1) - A002264 (A046951 (n + 1)).toNat

end

end A339839.P10081443189402429321

/-! ## A339839.P16241063696823320023

`A339887(n+1)-A097430(A005361(n+1))`
-/

namespace A339839.P16241063696823320023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339887 (n + 1) - A097430 (A005361 (n + 1)).toNat

end

end A339839.P16241063696823320023

/-! ## A339839.P10095145580051472192

`A323437(n+1)-A161281(A046951(n+1))`
-/

namespace A339839.P10095145580051472192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323437 (n + 1) - A161281 (A046951 (n + 1)).toNat

end

end A339839.P10095145580051472192

/-! ## A339839.P10748396923535457169

`A339887(n+1)-A339871(A000188(n+1))`
-/

namespace A339839.P10748396923535457169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339887 (n + 1) - A339871 (A000188 (n + 1)).toNat

end

end A339839.P10748396923535457169

/-!
# A339840: Numbers that cannot be factored into distinct primes or semiprimes.

The programs for A339840, there is no canonical definition to state claims against.
-/

/-! ## A339840.P6033469378780094474

`eq[0, A339839(n+1)]+1`
-/

namespace A339840.P6033469378780094474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339839 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A339840.P6033469378780094474

/-! ## A339840.P2886608807396156181

`A020725(lt[A225230(n+1)+n+2, n])`
-/

namespace A339840.P2886608807396156181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225230 (n + 1) + (n + 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A339840.P2886608807396156181

/-! ## A339840.P9363685350971786282

`lt[A225230(A028310(n))+1, A057428(n)]`
-/

namespace A339840.P9363685350971786282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225230 (A028310 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A339840.P9363685350971786282

/-! ## A339840.P558446091725050462

`A113484(lt[A188581(n+1), A066060(n+1)])`
-/

namespace A339840.P558446091725050462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A339840.P558446091725050462

/-! ## A339840.P1891205213855908389

`lt[A225520(n+1), A112623(n+1)]+1`
-/

namespace A339840.P1891205213855908389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112623 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A339840.P1891205213855908389

/-!
# A339841: Numbers that can be factored into distinct primes or semiprimes in exactly one way.

The programs for A339841, there is no canonical definition to state claims against.
-/

/-! ## A339841.P12230840196650313933

`eq[1, A339839(n+1)]+1`
-/

namespace A339841.P12230840196650313933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339839 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A339841.P12230840196650313933

/-! ## A339841.P6059741788917529423

`lt[A227758(A045778((n+1)²)), 0]+1`
-/

namespace A339841.P6059741788917529423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227758 (A045778 ((n + 1) ^ 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A339841.P6059741788917529423

/-! ## A339841.P9213558155611912029

`eq[A063775(n+1), A318369(n+1)]+1`
-/

namespace A339841.P9213558155611912029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A339841.P9213558155611912029

/-! ## A339841.P15779935156990825811

`eq[1, A233327(A074206(n))]`
-/

namespace A339841.P15779935156990825811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233327 (A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A339841.P15779935156990825811

/-! ## A339841.P1630637091756964643

`lt[A143591(A002033(n)), 2]+1`
-/

namespace A339841.P1630637091756964643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143591 (A002033 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A339841.P1630637091756964643

/-!
# A339842: Heinz numbers of non-graphical, multigraphical integer partitions of even numbers.

The programs for A339842, there is no canonical definition to state claims against.
-/

/-! ## A339842.P17683065951820863130

`∩[A048098(n+1), A339618(n+1)]`
-/

namespace A339842.P17683065951820863130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339842.P17683065951820863130

/-! ## A339842.P6750335609789551393

`∩[A320924(n+1), A339618(n+1)]`
-/

namespace A339842.P6750335609789551393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339842.P6750335609789551393

/-! ## A339842.P8526804594598947014

`∩[A320925(n+1), A339618(n+1)]`
-/

namespace A339842.P8526804594598947014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339842.P8526804594598947014

/-! ## A339842.P4428598400654600915

`∩[A322109(n+1), A339618(n+1)]`
-/

namespace A339842.P4428598400654600915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339842.P4428598400654600915

/-! ## A339842.P16017059428293273477

`∩[A335127(n+1), A339618(n+1)]`
-/

namespace A339842.P16017059428293273477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339842.P16017059428293273477

/-!
# A339843: Number of distinct sorted degree sequences among all n-vertex half-loop-graphs without isolated vertices.

The programs for A339843, there is no canonical definition to state claims against.
-/

/-! ## A339843.P7134241825208209224

`A081696(n)+A000196(A217156(3*n+5))`
-/

namespace A339843.P7134241825208209224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081696 n + A000196 (A217156 (3 * n + 5)).toNat

end

end A339843.P7134241825208209224

/-! ## A339843.P10650617198111975446

`A157271(A085139(n+1))`
-/

namespace A339843.P10650617198111975446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A085139 (n + 1)).toNat

end

end A339843.P10650617198111975446

/-! ## A339843.P11070251164148269078

`A001462(A007680(n))-n`
-/

namespace A339843.P11070251164148269078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A007680 n).toNat - (n : ℤ)

end

end A339843.P11070251164148269078

/-!
# A339844: Number of distinct sorted degree sequences among all n-vertex loop-graphs.

The programs for A339844, there is no canonical definition to state claims against.
-/

/-! ## A339844.P9290418839324384955

`∑[A339845(n)]`
-/

namespace A339844.P9290418839324384955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339844.P9290418839324384955

/-! ## A339844.P7917441871174900692

`A339845(n)+A028310(a(n-1))` with `a(0)=1`
-/

namespace A339844.P7917441871174900692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A339845 n + A028310 (a (n - 1)).toNat

end

end A339844.P7917441871174900692

/-! ## A339844.P8909084305077518957

`A149922(n)+A001222(A322137(n))`
-/

namespace A339844.P8909084305077518957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149922 n + A001222 (A322137 n).toNat

end

end A339844.P8909084305077518957

/-!
# A339845: Number of distinct sorted degree sequences among all n-vertex loop-graphs without isolated vertices.

The programs for A339845, there is no canonical definition to state claims against.
-/

/-! ## A339845.P1987731612863583033

`A052307(A005893(n+3)%A074003(3*(n+1)))`
-/

namespace A339845.P1987731612863583033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (Int.tmod (A005893 (n + 3)) (A074003 (3 * (n + 1)))).toNat

end

end A339845.P1987731612863583033

/-! ## A339845.P7368839728547635163

`A119319(a(n-1))+n+1` with `a(0)=1, a(1)=1`
-/

namespace A339845.P7368839728547635163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A119319 (a (n - 1)).toNat + (n + 1 : ℤ)

end

end A339845.P7368839728547635163

/-!
# A339846: Number of even-length factorizations of n into factors > 1.

The programs for A339846, there is no canonical definition to state claims against.
-/

/-! ## A339846.P3474288767781886398

`Δ[A096276(n)]-A339890(n+1)`
-/

namespace A339846.P3474288767781886398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A339890 (n + 1)

end

end A339846.P3474288767781886398

/-! ## A339846.P11751216281745056878

`A339890(n+1)+A316441(n+1)`
-/

namespace A339846.P11751216281745056878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339890 (n + 1) + A316441 (n + 1)

end

end A339846.P11751216281745056878

/-! ## A339846.P1879555259634161662

`A001055(n+1)-A339890(n+1)`
-/

namespace A339846.P1879555259634161662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A339890 (n + 1)

end

end A339846.P1879555259634161662

/-! ## A339846.P15809537513127206061

`A028422(n+1)+1-A339890(n+1)`
-/

namespace A339846.P15809537513127206061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (n + 1) + (1 - A339890 (n + 1))

end

end A339846.P15809537513127206061

/-! ## A339846.P1758811733695694786

`(A316441(n+1)+A001055(n+1))/2`
-/

namespace A339846.P1758811733695694786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316441 (n + 1) + A001055 (n + 1) : ℚ) / 2

end

end A339846.P1758811733695694786

/-! ## A339846.P13203255998521374908

`A001281(A316441(n+1)+A001055(n+1))`
-/

namespace A339846.P13203255998521374908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A316441 (n + 1) + A001055 (n + 1)).toNat

end

end A339846.P13203255998521374908

/-! ## A339846.P13170860745567909592

`A004525(A316441(n+1)+A001055(n+1))`
-/

namespace A339846.P13170860745567909592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A316441 (n + 1) + A001055 (n + 1)).toNat

end

end A339846.P13170860745567909592

/-! ## A339846.P13925034384921428861

`A085062(A316441(n+1)+A001055(n+1))`
-/

namespace A339846.P13925034384921428861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085062 (A316441 (n + 1) + A001055 (n + 1)).toNat

end

end A339846.P13925034384921428861

/-! ## A339846.P13027963794890412175

`A347438((n+1)²)-A339890(n+1)`
-/

namespace A339846.P13027963794890412175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347438 ((n + 1) ^ 2) - A339890 (n + 1)

end

end A339846.P13027963794890412175

/-! ## A339846.P16898057835977267854

`A066032(∑[n+1])-A339890(n+1)`
-/

namespace A339846.P16898057835977267854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066032 (∑ j ∈ Finset.range (n + 1), f1 j) - A339890 (n + 1)

end

end A339846.P16898057835977267854

/-!
# A339847: The number of labeled 6-regular graphs on n nodes.

The programs for A339847, there is no canonical definition to state claims against.
-/

/-! ## A339847.P8274752357073631859

`C(∏[n^(n%2)], ∑{d}[n+1, n*#])`
-/

namespace A339847.P8274752357073631859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ j ∈ Finset.range (n + 1), f1 j) (∑ d ∈ Nat.divisors (f2 n), n * d)

end

end A339847.P8274752357073631859

/-! ## A339847.P13138716389093206438

`A256909(∑[floor(n/7)]^n)`
-/

namespace A339847.P13138716389093206438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 7⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256909 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ n).toNat

end

end A339847.P13138716389093206438

/-! ## A339847.P3394628877882095548

`C(A181834(n²), ceil(ϕ*n))`
-/

namespace A339847.P3394628877882095548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A181834 (n ^ 2)).toNat ⌈Real.goldenRatio * (n : ℝ)⌉.toNat

end

end A339847.P3394628877882095548

/-! ## A339847.P11661319513705986211

`C(comp[2*(n+1)], A323484(3^n))`
-/

namespace A339847.P11661319513705986211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) (A323484 (3 ^ n)).toNat

end

end A339847.P11661319513705986211

/-! ## A339847.P8579725822084401739

`A059303(Δ[a(n-1)-(1-a(n-3))]!)` with `a(0)=-1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A339847.P8579725822084401739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 1, 2, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059303 (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A339847.P8579725822084401739

/-!
# A339848: Number of distinct free polyominoes that fit in an n X n square but are not a proper sub-polyomino of any polyomino that fits in the square.

The programs for A339848, there is no canonical definition to state claims against.
-/

/-! ## A339848.P16541864025843443379

`A222432(n+1)-A109852(n+1)`
-/

namespace A339848.P16541864025843443379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222432 (n + 1) - A109852 (n + 1)

end

end A339848.P16541864025843443379

/-! ## A339848.P7463677088034725058

`A005652(A005708(n+2))*A005708(n)`
-/

namespace A339848.P7463677088034725058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005652 (A005708 (n + 2)).toNat * A005708 n

end

end A339848.P7463677088034725058

/-! ## A339848.P16138431054966164688

`A311264(A000094(n+1))-A000094(n+1)`
-/

namespace A339848.P16138431054966164688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311264 (A000094 (n + 1)).toNat - A000094 (n + 1)

end

end A339848.P16138431054966164688

/-! ## A339848.P4623390654703822662

`A118287(A103609(2*(n+1))-A095111(n+2))`
-/

namespace A339848.P4623390654703822662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118287 (A103609 (2 * (n + 1)) - A095111 (n + 2)).toNat

end

end A339848.P4623390654703822662

/-! ## A339848.P12351614792549472275

`A164529(A390567(n))`
-/

namespace A339848.P12351614792549472275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164529 (A390567 n).toNat

end

end A339848.P12351614792549472275

/-!
# A339849: Square array T(n,k), n >= 2, k >= 2, read by antidiagonals, where T(n,k) is the number of Hamiltonian circuits within parallelograms of size n X k on the triangular lattice.

The programs for A339849, there is no canonical definition to state claims against.
-/

/-! ## A339849.P4384288766295733670

`A003059(A022176(n))`
-/

namespace A339849.P4384288766295733670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A022176 n).toNat

end

end A339849.P4384288766295733670

/-! ## A339849.P6135963991459088771

`A045652(A007318(n))`
-/

namespace A339849.P6135963991459088771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045652 (A007318 n).toNat

end

end A339849.P6135963991459088771

/-! ## A339849.P16267195188301624163

`A045652(A028657(n))`
-/

namespace A339849.P16267195188301624163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045652 (A028657 n).toNat

end

end A339849.P16267195188301624163

/-! ## A339849.P10850475142427292506

`A045652(A034932(n))`
-/

namespace A339849.P10850475142427292506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045652 (A034932 n).toNat

end

end A339849.P10850475142427292506

/-! ## A339849.P5137210097883133110

`A089657(A022167(n))`
-/

namespace A339849.P5137210097883133110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089657 (A022167 n).toNat

end

end A339849.P5137210097883133110

/-!
# A339850: Number of Hamiltonian circuits within parallelograms of size 3 X n on the triangular lattice.

The programs for A339850, the canonical program `A339850.P1664466575890126107` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339850 has offset 2).

The definition of A339850 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A339850.P1664466575890126107

`2*a(n-1)+4*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=4, a(2)=13`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A339850

/-- `2*a(n-1)+4*a(n-2)+2*a(n-3)` -/
def P1664466575890126107.Spec : Prop :=
  ∀ n, (P1664466575890126107.a n : ℤ) = A339850 (n + 2)

theorem P1664466575890126107.correct : P1664466575890126107.Spec := by
  intro n
  simp only [A339850, Nat.add_sub_cancel]

end A339850

/-! ## A339850.P15178005154399549024

`ogf((1+2x+x^2)/(1-2x-4x^2-2x^3))`
-/

namespace A339850.P15178005154399549024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, -2, -4, -2] n

end

end A339850.P15178005154399549024

namespace A339850

/-- `ogf((1+2x+x^2)/(1-2x-4x^2-2x^3))` -/
def P15178005154399549024.Spec : Prop :=
  ∀ n, P15178005154399549024.a n = A339850 (n + 2)

end A339850

/-! ## A339850.P17150541429351354634

`A339849(C(n+3, 2))`
-/

namespace A339850.P17150541429351354634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339849 (Nat.choose (n + 3) 2)

end

end A339850.P17150541429351354634

namespace A339850

/-- `A339849(C(n+3, 2))` -/
def P17150541429351354634.Spec : Prop :=
  ∀ n, P17150541429351354634.a n = A339850 (n + 2)

end A339850

/-! ## A339850.P8328416993241455555

`record[ratio[A339849(n+2)]]`
-/

namespace A339850.P8328416993241455555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339849 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339850.P8328416993241455555

namespace A339850

/-- `record[ratio[A339849(n+2)]]` -/
def P8328416993241455555.Spec : Prop :=
  ∀ n, P8328416993241455555.a n = (A339850 (n + 2) : ℚ)

end A339850

/-! ## A339850.P14701645640800228012

`A339849(∑[n+2]+1)`
-/

namespace A339850.P14701645640800228012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339849 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A339850.P14701645640800228012

namespace A339850

/-- `A339849(∑[n+2]+1)` -/
def P14701645640800228012.Spec : Prop :=
  ∀ n, P14701645640800228012.a n = A339850 (n + 2)

end A339850

/-!
# A339851: Number of Hamiltonian circuits within parallelograms of size 4 X n on the triangular lattice.

The programs for A339851, there is no canonical definition to state claims against.
-/

/-! ## A339851.P10411259937072828176

`A339849(∑[n+3]+2)`
-/

namespace A339851.P10411259937072828176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339849 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A339851.P10411259937072828176

/-! ## A339851.P14246478155060245592

`record[A339849(A198455(n+1))]`
-/

namespace A339851.P14246478155060245592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339849 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339851.P14246478155060245592

/-! ## A339851.P5870115609955929515

`record[A010054(n)*A339849(n+4)]`
-/

namespace A339851.P5870115609955929515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A339849 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339851.P5870115609955929515

/-! ## A339851.P14104638868533026732

`record[gcd(A002262(n), A339849(n+4))]`
-/

namespace A339851.P14104638868533026732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A339849 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339851.P14104638868533026732

/-! ## A339851.P10155225355356101005

`record[gcd(A131689(n+3), A339849(n+2))]`
-/

namespace A339851.P10155225355356101005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131689 (n + 3)) (A339849 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339851.P10155225355356101005

/-!
# A339852: Number of Hamiltonian circuits within parallelograms of size 5 X n on the triangular lattice.

The programs for A339852, there is no canonical definition to state claims against.
-/

/-! ## A339852.P12895385350273548402

`A339849((n+3)²-∑[n+1])`
-/

namespace A339852.P12895385350273548402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339849 ((n + 3) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A339852.P12895385350273548402

/-! ## A339852.P15629322568622068594

`record[A339849(A198464(n+1))]`
-/

namespace A339852.P15629322568622068594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339849 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339852.P15629322568622068594

/-! ## A339852.P12733241051105571248

`record[A339849(A198455(n+2)-1)]`
-/

namespace A339852.P12733241051105571248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339849 (A198455 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339852.P12733241051105571248

/-! ## A339852.P17423680059009308804

`record[A339849(A286164(2*n+5)-1)]`
-/

namespace A339852.P17423680059009308804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339849 (A286164 (2 * n + 5) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339852.P17423680059009308804

/-! ## A339852.P5355641980573453183

`A339849(A034856(n+3))%A003463(2*n+3)`
-/

namespace A339852.P5355641980573453183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339849 (A034856 (n + 3)).toNat) (A003463 (2 * n + 3))

end

end A339852.P5355641980573453183

/-!
# A339854: Number of Hamiltonian circuits within parallelograms of size n X n on the triangular lattice.

The programs for A339854, there is no canonical definition to state claims against.
-/

/-! ## A339854.P8967904197856610870

`A339849(∑[4*n]+2)`
-/

namespace A339854.P8967904197856610870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339849 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A339854.P8967904197856610870

/-! ## A339854.P12045868581868418070

`record[A003982(n)*A339849(n+2)]`
-/

namespace A339854.P12045868581868418070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A339849 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339854.P12045868581868418070

/-!
# A339855: Primes p such that the absolute value of the fraction A241014(A000720(p)) / p is a record low.

The programs for A339855, there is no canonical definition to state claims against.
-/

/-! ## A339855.P1945553233086794688

`record[A306530(n+4)]+6*C(n, 3)`
-/

namespace A339855.P1945553233086794688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306530 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (6 * Nat.choose n 3 : ℤ)

end

end A339855.P1945553233086794688

/-! ## A339855.P4797190689282262386

`p?[A036234(A023359(n))]`
-/

namespace A339855.P4797190689282262386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A023359 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339855.P4797190689282262386

/-! ## A339855.P838842095296516298

`record[p?[A117818(A343863(n))]]`
-/

namespace A339855.P838842095296516298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (A343863 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339855.P838842095296516298

/-!
# A339856: Primitive triples for integer-sided triangles whose sides a < b < c form a geometric progression.

The programs for A339856, there is no canonical definition to state claims against.
-/

/-! ## A339856.P9591862451083749572

`A008133(A187829(n+4)+3)`
-/

namespace A339856.P9591862451083749572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 (A187829 (n + 4) + 3).toNat

end

end A339856.P9591862451083749572

/-! ## A339856.P12317625308076981925

`A008642(floor(log2(A252953(n+1))))`
-/

namespace A339856.P12317625308076981925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 (Nat.log 2 (A252953 (n + 1)).toNat)

end

end A339856.P12317625308076981925

/-! ## A339856.P6204817585998729841

`Δ[A029000(2*(n+3))%A054830(2^(n+1))]`
-/

namespace A339856.P6204817585998729841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029000 (2 * (n + 3))) (A054830 (2 ^ (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A339856.P6204817585998729841

/-!
# A339857: Smallest side of integer-sided primitive triangles whose sides a < b < c form a geometric progression.

The programs for A339857, there is no canonical definition to state claims against.
-/

/-! ## A339857.P4514081449985888261

`A339856(3*n+1)`
-/

namespace A339857.P4514081449985888261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339856 (3 * n + 1)

end

end A339857.P4514081449985888261

/-! ## A339857.P8481717771789085404

`and(-1, A339856(A016777(n)))`
-/

namespace A339857.P8481717771789085404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A339856 (A016777 n).toNat)

end

end A339857.P8481717771789085404

/-! ## A339857.P271648357102459576

`A339856(A016777(n))%A110553(n)`
-/

namespace A339857.P271648357102459576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339856 (A016777 n).toNat) (A110553 n)

end

end A339857.P271648357102459576

/-! ## A339857.P15515772729399541476

`∏{d}[A339856(A016777(n)), A014963(#)]`
-/

namespace A339857.P15515772729399541476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339856 (A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A339857.P15515772729399541476

/-! ## A339857.P15888058745066590531

`A057077(n)²*A339856(A016777(n))`
-/

namespace A339857.P15888058745066590531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n ^ 2 * A339856 (A016777 n).toNat

end

end A339857.P15888058745066590531

/-! ## A339857.P16939849480532121278

`A007318(C(2, n))*A339856(A016777(n))`
-/

namespace A339857.P16939849480532121278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A339856 (A016777 n).toNat

end

end A339857.P16939849480532121278

/-! ## A339857.P14629819104854849367

`∏{d}[n, A001222(#)]!*A339856(A016777(n))`
-/

namespace A339857.P14629819104854849367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∏ d ∈ Nat.divisors (f1 n), A001222 d).toNat : ℤ) * A339856 (A016777 n).toNat

end

end A339857.P14629819104854849367

/-! ## A339857.P11109370457312635500

`A339856(A016777(n))/A000045(gcd(n, n+1))`
-/

namespace A339857.P11109370457312635500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339856 (A016777 n).toNat : ℚ) / (A000045 (Nat.gcd n (n + 1)) : ℚ)

end

end A339857.P11109370457312635500

/-! ## A339857.P4967207743805707792

`A000045(((-1)^n)²)*A339856(A016777(n))`
-/

namespace A339857.P4967207743805707792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((-1) ^ n) ^ 2).toNat * A339856 (A016777 n).toNat

end

end A339857.P4967207743805707792

/-! ## A339857.P2693750972077345448

`(A339858(n+1)/A140271(A339858(n+1)))²`
-/

namespace A339857.P2693750972077345448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A339858 (n + 1) : ℚ) / (A140271 (A339858 (n + 1)).toNat : ℚ)) ^ 2

end

end A339857.P2693750972077345448

/-!
# A339858: Middle side of integer-sided primitive triangles whose sides a < b < c form a geometric progression.

The programs for A339858, there is no canonical definition to state claims against.
-/

/-! ## A339858.P7558066415522171450

`A339856(3*n+2)`
-/

namespace A339858.P7558066415522171450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339856 (3 * n + 2)

end

end A339858.P7558066415522171450

/-! ## A339858.P14130935432794011646

`and(-1, A339856(A016789(n)))`
-/

namespace A339858.P14130935432794011646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A339856 (A016789 n).toNat)

end

end A339858.P14130935432794011646

/-! ## A339858.P2684021211303607889

`∑{d}[A339856(A016789(n)), A000010(#)]`
-/

namespace A339858.P2684021211303607889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339856 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A339858.P2684021211303607889

/-! ## A339858.P7212795101577340842

`∏{d}[A339856(A016789(n)), A014963(#)]`
-/

namespace A339858.P7212795101577340842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339856 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A339858.P7212795101577340842

/-! ## A339858.P15802985681703826315

`A339856(A016789(n))+A014635(n)%2`
-/

namespace A339858.P15802985681703826315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339856 (A016789 n).toNat + Int.tmod (A014635 n) 2

end

end A339858.P15802985681703826315

/-! ## A339858.P232337689032994656

`A007318(C(2, n))*A339856(A016789(n))`
-/

namespace A339858.P232337689032994656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A339856 (A016789 n).toNat

end

end A339858.P232337689032994656

/-! ## A339858.P5545392769410008078

`A339856(A016789(n))^gcd(11, A007318(n))`
-/

namespace A339858.P5545392769410008078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339856 (A016789 n).toNat ^ Int.gcd 11 (A007318 n)

end

end A339858.P5545392769410008078

/-! ## A339858.P9905365793324608433

`A339856(A016789(n))%A000040(n+2)²`
-/

namespace A339858.P9905365793324608433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339856 (A016789 n).toNat) (A000040 (n + 2) ^ 2)

end

end A339858.P9905365793324608433

/-! ## A339858.P5260937427663715283

`A339856(A016789(n))^A000032(gcd(n, n+1))`
-/

namespace A339858.P5260937427663715283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339856 (A016789 n).toNat : ℚ) ^ (A000032 (Nat.gcd n (n + 1)) : ℤ)

end

end A339858.P5260937427663715283

/-! ## A339858.P1389285361891784143

`A000045(((-1)^n)²)*A339856(A016789(n))`
-/

namespace A339858.P1389285361891784143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((-1) ^ n) ^ 2).toNat * A339856 (A016789 n).toNat

end

end A339858.P1389285361891784143

/-!
# A339859: Largest side of integer-sided primitive triangles whose sides a < b < c form a geometric progression.

The programs for A339859, there is no canonical definition to state claims against.
-/

/-! ## A339859.P18214961645047182026

`A339856(3*(n+1))`
-/

namespace A339859.P18214961645047182026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339856 (3 * (n + 1))

end

end A339859.P18214961645047182026

/-! ## A339859.P14801621405467902078

`A357408(A339858(n+1))`
-/

namespace A339859.P14801621405467902078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357408 (A339858 (n + 1)).toNat

end

end A339859.P14801621405467902078

/-! ## A339859.P9328574901553135545

`A339858(n+1)²/A339857(n+1)`
-/

namespace A339859.P9328574901553135545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339858 (n + 1) ^ 2 : ℚ) / (A339857 (n + 1) : ℚ)

end

end A339859.P9328574901553135545

/-! ## A339859.P8080536660381759234

`abs(A339856(A008486(n+1))-n)+n`
-/

namespace A339859.P8080536660381759234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A339856 (A008486 (n + 1)).toNat - (n : ℤ)| + (n : ℤ)

end

end A339859.P8080536660381759234

/-! ## A339859.P12847107051129580934

`A339856(A008486(n+1))/A054977(n+1)`
-/

namespace A339859.P12847107051129580934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339856 (A008486 (n + 1)).toNat : ℚ) / (A054977 (n + 1) : ℚ)

end

end A339859.P12847107051129580934

/-! ## A339859.P5951236372784663999

`A339856(A008486(n+1))%A134934(n+1)`
-/

namespace A339859.P5951236372784663999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339856 (A008486 (n + 1)).toNat) (A134934 (n + 1))

end

end A339859.P5951236372784663999

/-! ## A339859.P4197607503742735554

`A339856(A008486(n+1))+2%A033999(n)`
-/

namespace A339859.P4197607503742735554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339856 (A008486 (n + 1)).toNat + Int.tmod 2 (A033999 n)

end

end A339859.P4197607503742735554

/-! ## A339859.P6225425431676847702

`A339856(A008486(n+1))-A251747((-1)^n+1)`
-/

namespace A339859.P6225425431676847702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339856 (A008486 (n + 1)).toNat - A251747 ((-1) ^ n + 1).toNat

end

end A339859.P6225425431676847702

/-! ## A339859.P1041574253635485805

`A140271(A339858(n+1))^(A000040(∑[n+1]+1)%2+1)`
-/

namespace A339859.P1041574253635485805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140271 (A339858 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) 2 + 1 : ℤ)

end

end A339859.P1041574253635485805

/-! ## A339859.P16082402360651240386

`A339856(A008486(n+1))/A014963(A000384(n+1))`
-/

namespace A339859.P16082402360651240386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339856 (A008486 (n + 1)).toNat : ℚ) / (A014963 (A000384 (n + 1)).toNat : ℚ)

end

end A339859.P16082402360651240386

/-!
# A339860: Perimeter of primitive integer-sided triangles whose sides a < b < c form a geometric progression.

The programs for A339860, there is no canonical definition to state claims against.
-/

/-! ## A339860.P15239436665230728051

`A339857(n+1)+A339859(n+1)+A339858(n+1)`
-/

namespace A339860.P15239436665230728051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339857 (n + 1) + (A339859 (n + 1) + A339858 (n + 1))

end

end A339860.P15239436665230728051

/-! ## A339860.P12829702135960213799

`A339856(3*n+1)+A339856(3*n+2)+A339856(3*(n+1))`
-/

namespace A339860.P12829702135960213799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339856 (3 * n + 1) + (A339856 (3 * n + 2) + A339856 (3 * (n + 1)))

end

end A339860.P12829702135960213799

/-!
# A339862: Primes p such that p + sigma(p-1) is prime.

The programs for A339862, the canonical program `A339862.P1677765601092487342` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339862 has offset 1).

The definition of A339862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 733 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339862.P1677765601092487342

`p?[(n+2)*A001222(A155085(n+1)+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A339862

/-- `p?[(n+2)*A001222(A155085(n+1)+1)]` -/
def P1677765601092487342.Spec : Prop :=
  ∀ n, P1677765601092487342.a n = A339862 (n + 1)

theorem P1677765601092487342.correct : P1677765601092487342.Spec := by
  intro n
  simp only [A339862, Nat.add_sub_cancel]

end A339862

/-! ## A339862.P13983920927665018910

`p?[A166333(A000203(n+1)+n+1)-A000203(n+1)]`
-/

namespace A339862.P13983920927665018910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (A000203 (n + 1) + (n + 1 : ℤ)).toNat - A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339862.P13983920927665018910

namespace A339862

/-- `p?[A166333(A000203(n+1)+n+1)-A000203(n+1)]` -/
def P13983920927665018910.Spec : Prop :=
  ∀ n, P13983920927665018910.a n = A339862 (n + 1)

end A339862

/-! ## A339862.P14657331860692949667

`record[A014963(n+2)/A002033(A155085(n+1))]`
-/

namespace A339862.P14657331860692949667
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 2) : ℚ) / (A002033 (A155085 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339862.P14657331860692949667

namespace A339862

/-- `record[A014963(n+2)/A002033(A155085(n+1))]` -/
def P14657331860692949667.Spec : Prop :=
  ∀ n, P14657331860692949667.a n = (A339862 (n + 1) : ℚ)

end A339862

/-! ## A339862.P3642559505634055684

`p?[(n+2)*A002033(A155085(n+1))]`
-/

namespace A339862.P3642559505634055684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A002033 (A155085 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339862.P3642559505634055684

namespace A339862

/-- `p?[(n+2)*A002033(A155085(n+1))]` -/
def P3642559505634055684.Spec : Prop :=
  ∀ n, P3642559505634055684.a n = A339862 (n + 1)

end A339862

/-! ## A339862.P11521274422947505215

`p?[(n+1)*A001065(A039653(n)+2+n)]`
-/

namespace A339862.P11521274422947505215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001065 (A039653 n + 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339862.P11521274422947505215

namespace A339862

/-- `p?[(n+1)*A001065(A039653(n)+2+n)]` -/
def P11521274422947505215.Spec : Prop :=
  ∀ n, P11521274422947505215.a n = A339862 (n + 1)

end A339862

/-!
# A339863: Odd numbers k > 1 such that A005179(k-1) > A005179(k) < A005179(k+1) > A005179(k+2) < A005179(k+3).

The programs for A339863, there is no canonical definition to state claims against.
-/

/-! ## A339863.P18295227894820892332

`∩[A328897(n+1)-2, A328897(n+1)]`
-/

namespace A339863.P18295227894820892332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328897 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339863.P18295227894820892332

/-!
# A339864: Primes of the form p + sigma(p-1) for primes p.

The programs for A339864, the canonical program `A339864.P16161761576058441730` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339864 has offset 1).

The definition of A339864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2806 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339864.P16161761576058441730

`p?[A008332(n+1)+A000040(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A339864

/-- `p?[A008332(n+1)+A000040(n+1)]` -/
def P16161761576058441730.Spec : Prop :=
  ∀ n, P16161761576058441730.a n = A339864 (n + 1)

theorem P16161761576058441730.correct : P16161761576058441730.Spec := by
  intro n
  simp only [A339864, Nat.add_sub_cancel]

end A339864

/-! ## A339864.P5412146764424389658

`p?[A006093(n+1)+A008332(n+1)+1]`
-/

namespace A339864.P5412146764424389658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A008332 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339864.P5412146764424389658

namespace A339864

/-- `p?[A006093(n+1)+A008332(n+1)+1]` -/
def P5412146764424389658.Spec : Prop :=
  ∀ n, P5412146764424389658.a n = A339864 (n + 1)

end A339864

/-! ## A339864.P16617365494967310511

`p?[A000040(n+1)+∑{d}[A156037(n+1), #]]`
-/

namespace A339864.P16617365494967310511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + ((∑ d ∈ Nat.divisors (f2 n).natAbs, d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339864.P16617365494967310511

namespace A339864

/-- `p?[A000040(n+1)+∑{d}[A156037(n+1), #]]` -/
def P16617365494967310511.Spec : Prop :=
  ∀ n, P16617365494967310511.a n = A339864 (n + 1)

end A339864

/-! ## A339864.P710489898348529651

`p?[A000203(A006093(n+1))+A000040(n+1)]`
-/

namespace A339864.P710489898348529651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A006093 (n + 1)).toNat + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339864.P710489898348529651

namespace A339864

/-- `p?[A000203(A006093(n+1))+A000040(n+1)]` -/
def P710489898348529651.Spec : Prop :=
  ∀ n, P710489898348529651.a n = A339864 (n + 1)

end A339864

/-! ## A339864.P9347392920960075455

`A339862(n+1)+A000203(A339862(n+1)-1)`
-/

namespace A339864.P9347392920960075455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339862 (n + 1) + A000203 (A339862 (n + 1) - 1).toNat

end

end A339864.P9347392920960075455

namespace A339864

/-- `A339862(n+1)+A000203(A339862(n+1)-1)` -/
def P9347392920960075455.Spec : Prop :=
  ∀ n, P9347392920960075455.a n = A339864 (n + 1)

end A339864

/-! ## A339864.P14031769793750498698

`p?[A000203(A040976(n+1)+1)+A000040(n+1)]`
-/

namespace A339864.P14031769793750498698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A040976 (n + 1) + 1).toNat + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339864.P14031769793750498698

namespace A339864

/-- `p?[A000203(A040976(n+1)+1)+A000040(n+1)]` -/
def P14031769793750498698.Spec : Prop :=
  ∀ n, P14031769793750498698.a n = A339864 (n + 1)

end A339864

/-!
# A339865: Squarefree numbers k for which Q(k) - 6*k/Pi^2 sets a new record minimum, where Q(x) is the number of squarefree numbers up to x.

The programs for A339865, there is no canonical definition to state claims against.
-/

/-! ## A339865.P1379709200982152678

`∩[A163517(n+1), A190806(n+1)]`
-/

namespace A339865.P1379709200982152678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339865.P1379709200982152678

/-!
# A339867: Primes p such that p + sigma(p-1) and p + sigma(p+1) are both prime.

The programs for A339867, the canonical program `A339867.P5291584577906026600` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339867 has offset 1).

The definition of A339867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2558 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339867.P5291584577906026600

`∩[A067463(n+1), A339862(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A339867

/-- `∩[A067463(n+1), A339862(n+1)]` -/
def P5291584577906026600.Spec : Prop :=
  ∀ n, (P5291584577906026600.a n : ℤ) = A339867 (n + 1)

theorem P5291584577906026600.correct : P5291584577906026600.Spec := by
  intro n
  simp only [A339867, Nat.add_sub_cancel]

end A339867

/-!
# A339868: Primes p such that p + A023896(p-1) and p + A023896(p+1) are prime.

The programs for A339868, there is no canonical definition to state claims against.
-/

/-! ## A339868.P5990047866784856125

`A238256(A368566(n+2))`
-/

namespace A339868.P5990047866784856125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238256 (A368566 (n + 2)).toNat

end

end A339868.P5990047866784856125

/-! ## A339868.P765682773977442780

`A111706(A109652(Δ[n²]))`
-/

namespace A339868.P765682773977442780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111706 (A109652 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A339868.P765682773977442780

/-!
# A339869: Carmichael numbers k for which A053575(k) [the odd part of phi] divides k-1.

The programs for A339869, there is no canonical definition to state claims against.
-/

/-! ## A339869.P14566498553000833874

`∩[A002997(n+1), A339880(n+1)]`
-/

namespace A339869.P14566498553000833874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339869.P14566498553000833874

/-! ## A339869.P1507390077316797892

`∩[A080062(n+1), A339880(n+1)]`
-/

namespace A339869.P1507390077316797892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339869.P1507390077316797892

/-! ## A339869.P18204056518844846773

`∩[A087442(n+1), A339880(n+1)]`
-/

namespace A339869.P18204056518844846773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339869.P18204056518844846773

/-! ## A339869.P15857450838264207896

`∩[A225498(n+1), A339880(n+1)]`
-/

namespace A339869.P15857450838264207896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339869.P15857450838264207896

/-! ## A339869.P10375858943314138795

`∩[A231570(n+1), A339880(n+1)]`
-/

namespace A339869.P10375858943314138795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339869.P10375858943314138795

/-!
# A339870: Composite numbers k of the form 4u+1 for which the odd part of phi(k) divides k-1.

The programs for A339870, there is no canonical definition to state claims against.
-/

/-! ## A339870.P10798167771844256452

`filter[A339880(n+1), A373978(#)]`
-/

namespace A339870.P10798167771844256452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A339870.P10798167771844256452

/-! ## A339870.P5512767935106812654

`filter[A339880(n+1), A290098(#)]`
-/

namespace A339870.P5512767935106812654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A339870.P5512767935106812654

/-! ## A339870.P13062724248626628890

`∩[A091113(n+1), A340077(n+3)]`
-/

namespace A339870.P13062724248626628890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340077 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339870.P13062724248626628890

/-! ## A339870.P6395555964701040351

`filter[A339880(n+1), A133872(#)]`
-/

namespace A339870.P6395555964701040351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A339870.P6395555964701040351

/-! ## A339870.P17559163214321777909

`filter[A339880(n+1), A255817(#)]`
-/

namespace A339870.P17559163214321777909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A255817 (f1 j).toNat = 1) n)

end

end A339870.P17559163214321777909

/-!
# A339871: Number of primes p for which the p-adic valuation of phi(n) exceeds the p-adic valuation of n-1, with a(1) = 0 by convention.

The programs for A339871, the canonical program `A339871.P15676400501281653132` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339871 has offset 1).

The definition of A339871 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A160595, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A339871.P15676400501281653132

`A001221(A160595(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A339871

/-- `A001221(A160595(n+1))` -/
def P15676400501281653132.Spec : Prop :=
  ∀ n, P15676400501281653132.a n = A339871 (n + 1)

theorem P15676400501281653132.correct : P15676400501281653132.Spec := by
  intro n
  simp only [A339871, Nat.add_sub_cancel]

end A339871

/-! ## A339871.P6055610847813116037

`A001221(∑{d}[n+1, A340143(#)])`
-/

namespace A339871.P6055610847813116037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ d ∈ Nat.divisors (f1 n), A340143 d).toNat

end

end A339871.P6055610847813116037

namespace A339871

/-- `A001221(∑{d}[n+1, A340143(#)])` -/
def P6055610847813116037.Spec : Prop :=
  ∀ n, P6055610847813116037.a n = A339871 (n + 1)

end A339871

/-! ## A339871.P13616205440230681155

`∑{p}[A160595(n+1), A001222(#)]`
-/

namespace A339871.P13616205440230681155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A339871.P13616205440230681155

namespace A339871

/-- `∑{p}[A160595(n+1), A001222(#)]` -/
def P13616205440230681155.Spec : Prop :=
  ∀ n, P13616205440230681155.a n = A339871 (n + 1)

end A339871

/-! ## A339871.P16317152189550637038

`∑{p}[A160595(n+1), A014306(#)]`
-/

namespace A339871.P16317152189550637038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A014306 p

end

end A339871.P16317152189550637038

namespace A339871

/-- `∑{p}[A160595(n+1), A014306(#)]` -/
def P16317152189550637038.Spec : Prop :=
  ∀ n, P16317152189550637038.a n = A339871 (n + 1)

end A339871

/-! ## A339871.P6307484530898777599

`∑{p}[A160595(n+1), A033676(#)]`
-/

namespace A339871.P6307484530898777599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A033676 p

end

end A339871.P6307484530898777599

namespace A339871

/-- `∑{p}[A160595(n+1), A033676(#)]` -/
def P6307484530898777599.Spec : Prop :=
  ∀ n, P6307484530898777599.a n = A339871 (n + 1)

end A339871

/-! ## A339871.P10638024468098155637

`∑{p}[A160595(n+1), A160595(#)]`
-/

namespace A339871.P10638024468098155637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A160595 p

end

end A339871.P10638024468098155637

namespace A339871

/-- `∑{p}[A160595(n+1), A160595(#)]` -/
def P10638024468098155637.Spec : Prop :=
  ∀ n, P10638024468098155637.a n = A339871 (n + 1)

end A339871

/-! ## A339871.P10902439074976074819

`A001221(A000010(n+1)/A049559(n+1))`
-/

namespace A339871.P10902439074976074819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A000010 (n + 1) : ℚ) / (A049559 (n + 1) : ℚ))).toNat

end

end A339871.P10902439074976074819

namespace A339871

/-- `A001221(A000010(n+1)/A049559(n+1))` -/
def P10902439074976074819.Spec : Prop :=
  ∀ n, P10902439074976074819.a n = A339871 (n + 1)

end A339871

/-! ## A339871.P10811874119480583155

`A001221(A000010(n+1)/gcd(n, A000010(n+1)))`
-/

namespace A339871.P10811874119480583155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A000010 (n + 1) : ℚ) / (Int.gcd (n : ℤ) (A000010 (n + 1)) : ℚ))).toNat

end

end A339871.P10811874119480583155

namespace A339871

/-- `A001221(A000010(n+1)/gcd(n, A000010(n+1)))` -/
def P10811874119480583155.Spec : Prop :=
  ∀ n, P10811874119480583155.a n = A339871 (n + 1)

end A339871

/-!
# A339872: Index k of the least prime(k) such that prime(k)-adic valuation of phi(n) exceeds the prime(k)-adic valuation of n-1, or 0 if no such k exists (for example, when n = 1 or a prime).

The programs for A339872, there is no canonical definition to state claims against.
-/

/-! ## A339872.P15113599333287760317

`A055396(A160595(n+1))`
-/

namespace A339872.P15113599333287760317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A160595 (n + 1)).toNat

end

end A339872.P15113599333287760317

/-! ## A339872.P7212133273654114058

`A286471(2*A160595(n+1))`
-/

namespace A339872.P7212133273654114058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286471 (2 * A160595 (n + 1)).toNat

end

end A339872.P7212133273654114058

/-! ## A339872.P16340803959031774370

`∑{d}[A020639(A160595(n+1)), A049084(#)]`
-/

namespace A339872.P16340803959031774370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A160595 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049084 d

end

end A339872.P16340803959031774370

/-! ## A339872.P1062272668950922472

`∑{d}[A020639(A160595(n+1)), A061395(#)]`
-/

namespace A339872.P1062272668950922472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A160595 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A339872.P1062272668950922472

/-! ## A339872.P16367860052308841894

`A055396(A000010(n+1)/A049559(n+1))`
-/

namespace A339872.P16367860052308841894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.roundAway ((A000010 (n + 1) : ℚ) / (A049559 (n + 1) : ℚ))).toNat

end

end A339872.P16367860052308841894

/-! ## A339872.P15945792667938886558

`A289508(A160595(n+1)^A099563(n))`
-/

namespace A339872.P15945792667938886558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (SequenceMachineLib.roundAway ((A160595 (n + 1) : ℚ) ^ (A099563 n : ℤ))).toNat

end

end A339872.P15945792667938886558

/-! ## A339872.P263761795826234734

`A001221(A020639(A160595(n+1))!)`
-/

namespace A339872.P263761795826234734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A020639 (A160595 (n + 1)).toNat).toNat)

end

end A339872.P263761795826234734

/-!
# A339873: a(n) = 1 + n - A143771(n).

The programs for A339873, there is no canonical definition to state claims against.
-/

/-! ## A339873.P13034030856027471897

`1+n+2-A143771(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A339873.P13034030856027471897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + (n + 2) : ℤ) - A143771 (n + 2)

end

end A339873.P13034030856027471897

/-! ## A339873.P17866710390801338587

`3-A143771(n+2)+n`
-/

namespace A339873.P17866710390801338587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A143771 (n + 2) + (n : ℤ)

end

end A339873.P17866710390801338587

/-! ## A339873.P13317388188598183664

`∑[Δ[-(A143771(n+1)+6)]+1]`
-/

namespace A339873.P13317388188598183664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A143771 (n + 1) + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339873.P13317388188598183664

/-! ## A339873.P9951752453599935491

`n+3-(n+3)/A342918(n+2)`
-/

namespace A339873.P9951752453599935491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) - (n + 3 : ℚ) / (A342918 (n + 2) : ℚ)

end

end A339873.P9951752453599935491

/-! ## A339873.P11771073860995418779

`A167614(n+1)%(A143771(n+2)+∑[n+1]+2)`
-/

namespace A339873.P11771073860995418779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167614 (n + 1)) (A143771 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ))

end

end A339873.P11771073860995418779

/-!
# A339874: Lexicographically earliest infinite sequence such that a(i) = a(j) => f(i) = f(j), where f(n) = A052126(n) for n > 1, and f(1) = 0.

The programs for A339874, the canonical program `A339874.P15501688188757861132` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339874 has offset 1).

The definition of A339874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339874.P15501688188757861132

`A322826(n+1)+A057427(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A339874

/-- `A322826(n+1)+A057427(n)` -/
def P15501688188757861132.Spec : Prop :=
  ∀ n, P15501688188757861132.a n = A339874 (n + 1)

theorem P15501688188757861132.correct : P15501688188757861132.Spec := by
  intro n
  simp only [A339874, Nat.add_sub_cancel]

end A339874

/-! ## A339874.P14275558539542634962

`A322826(n+1)-A057428(n)`
-/

namespace A339874.P14275558539542634962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322826 (n + 1) - A057428 n

end

end A339874.P14275558539542634962

namespace A339874

/-- `A322826(n+1)-A057428(n)` -/
def P14275558539542634962.Spec : Prop :=
  ∀ n, P14275558539542634962.a n = A339874 (n + 1)

end A339874

/-! ## A339874.P8135956978074713237

`A322826(n+1)+char[A322805(n+1)]`
-/

namespace A339874.P8135956978074713237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322805 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322826 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A339874.P8135956978074713237

namespace A339874

/-- `A322826(n+1)+char[A322805(n+1)]` -/
def P8135956978074713237.Spec : Prop :=
  ∀ n, P8135956978074713237.a n = A339874 (n + 1)

end A339874

/-! ## A339874.P17700973922156541721

`A322826(n+1)+char[A322806(n+1)]`
-/

namespace A339874.P17700973922156541721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322806 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322826 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A339874.P17700973922156541721

namespace A339874

/-- `A322826(n+1)+char[A322806(n+1)]` -/
def P17700973922156541721.Spec : Prop :=
  ∀ n, P17700973922156541721.a n = A339874 (n + 1)

end A339874

/-! ## A339874.P8179721552861726406

`A322826(n+1)+char[A322807(n+1)]`
-/

namespace A339874.P8179721552861726406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322807 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322826 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A339874.P8179721552861726406

namespace A339874

/-- `A322826(n+1)+char[A322807(n+1)]` -/
def P8179721552861726406.Spec : Prop :=
  ∀ n, P8179721552861726406.a n = A339874 (n + 1)

end A339874

/-! ## A339874.P11122466984287795030

`A322826(n+1)+char[A322809(n+1)]`
-/

namespace A339874.P11122466984287795030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322809 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322826 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A339874.P11122466984287795030

namespace A339874

/-- `A322826(n+1)+char[A322809(n+1)]` -/
def P11122466984287795030.Spec : Prop :=
  ∀ n, P11122466984287795030.a n = A339874 (n + 1)

end A339874

/-! ## A339874.P4791861815207120041

`A322826(n+1)+char[A322810(n+1)]`
-/

namespace A339874.P4791861815207120041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322810 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322826 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A339874.P4791861815207120041

namespace A339874

/-- `A322826(n+1)+char[A322810(n+1)]` -/
def P4791861815207120041.Spec : Prop :=
  ∀ n, P4791861815207120041.a n = A339874 (n + 1)

end A339874

/-! ## A339874.P3262915220894083401

`A322826(n+1)+char[A322814(n+1)]`
-/

namespace A339874.P3262915220894083401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322814 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322826 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A339874.P3262915220894083401

namespace A339874

/-- `A322826(n+1)+char[A322814(n+1)]` -/
def P3262915220894083401.Spec : Prop :=
  ∀ n, P3262915220894083401.a n = A339874 (n + 1)

end A339874

/-! ## A339874.P9167022246556180632

`A322826(n+1)+char[A322815(n+1)]`
-/

namespace A339874.P9167022246556180632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322815 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322826 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A339874.P9167022246556180632

namespace A339874

/-- `A322826(n+1)+char[A322815(n+1)]` -/
def P9167022246556180632.Spec : Prop :=
  ∀ n, P9167022246556180632.a n = A339874 (n + 1)

end A339874

/-! ## A339874.P13080941133337428252

`A322826(n+1)+char[A322822(n+1)]`
-/

namespace A339874.P13080941133337428252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322822 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322826 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A339874.P13080941133337428252

namespace A339874

/-- `A322826(n+1)+char[A322822(n+1)]` -/
def P13080941133337428252.Spec : Prop :=
  ∀ n, P13080941133337428252.a n = A339874 (n + 1)

end A339874

/-! ## A339874.P14076985203122749569

`A322826(n+1)+char[A322824(n+1)]`
-/

namespace A339874.P14076985203122749569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322824 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322826 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A339874.P14076985203122749569

namespace A339874

/-- `A322826(n+1)+char[A322824(n+1)]` -/
def P14076985203122749569.Spec : Prop :=
  ∀ n, P14076985203122749569.a n = A339874 (n + 1)

end A339874

/-! ## A339874.P14448795917754360367

`A322826(n+1)%A032924(n+1)+1`
-/

namespace A339874.P14448795917754360367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322826 (n + 1)) (A032924 (n + 1)) + 1

end

end A339874.P14448795917754360367

namespace A339874

/-- `A322826(n+1)%A032924(n+1)+1` -/
def P14448795917754360367.Spec : Prop :=
  ∀ n, P14448795917754360367.a n = A339874 (n + 1)

end A339874

/-! ## A339874.P5197137481513518114

`A322826(n+1)+A006094(n+1)%2`
-/

namespace A339874.P5197137481513518114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322826 (n + 1) + Int.tmod (A006094 (n + 1)) 2

end

end A339874.P5197137481513518114

namespace A339874

/-- `A322826(n+1)+A006094(n+1)%2` -/
def P5197137481513518114.Spec : Prop :=
  ∀ n, P5197137481513518114.a n = A339874 (n + 1)

end A339874

/-! ## A339874.P9008683896187500866

`A322826(n+1)+A029965(n²%(n+1)+1)`
-/

namespace A339874.P9008683896187500866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322826 (n + 1) + A029965 (n ^ 2 % (n + 1) + 1)

end

end A339874.P9008683896187500866

namespace A339874

/-- `A322826(n+1)+A029965(n²%(n+1)+1)` -/
def P9008683896187500866.Spec : Prop :=
  ∀ n, P9008683896187500866.a n = A339874 (n + 1)

end A339874

/-! ## A339874.P7018766842932882747

`A322826(n+1)+A052126(and(1, a(n-1))+1)` with `a(0)=1`
-/

namespace A339874.P7018766842932882747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322826 (n + 1) + A052126 (Int.land 1 (a (n - 1)) + 1).toNat

end

end A339874.P7018766842932882747

namespace A339874

/-- `A322826(n+1)+A052126(and(1, a(n-1))+1)` -/
def P7018766842932882747.Spec : Prop :=
  ∀ n, P7018766842932882747.a n = A339874 (n + 1)

end A339874

/-! ## A339874.P11084070218062482725

`A322826(n+1)+A000035(A020483(n))`
-/

namespace A339874.P11084070218062482725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322826 (n + 1) + A000035 (A020483 n).toNat

end

end A339874.P11084070218062482725

namespace A339874

/-- `A322826(n+1)+A000035(A020483(n))` -/
def P11084070218062482725.Spec : Prop :=
  ∀ n, P11084070218062482725.a n = A339874 (n + 1)

end A339874

/-! ## A339874.P11923198491425420541

`A322826(n+1)+A279060(A279060(n))`
-/

namespace A339874.P11923198491425420541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322826 (n + 1) + A279060 (A279060 n).toNat

end

end A339874.P11923198491425420541

namespace A339874

/-- `A322826(n+1)+A279060(A279060(n))` -/
def P11923198491425420541.Spec : Prop :=
  ∀ n, P11923198491425420541.a n = A339874 (n + 1)

end A339874

/-! ## A339874.P18436544144026027547

`A322826(n+1)+A010051(A006530(n+1))`
-/

namespace A339874.P18436544144026027547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322826 (n + 1) + A010051 (A006530 (n + 1)).toNat

end

end A339874.P18436544144026027547

namespace A339874

/-- `A322826(n+1)+A010051(A006530(n+1))` -/
def P18436544144026027547.Spec : Prop :=
  ∀ n, P18436544144026027547.a n = A339874 (n + 1)

end A339874

/-! ## A339874.P9490357577207410068

`A322826(n+1)+A060576(n+1)`
-/

namespace A339874.P9490357577207410068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322826 (n + 1) + A060576 (n + 1)

end

end A339874.P9490357577207410068

namespace A339874

/-- `A322826(n+1)+A060576(n+1)` -/
def P9490357577207410068.Spec : Prop :=
  ∀ n, P9490357577207410068.a n = A339874 (n + 1)

end A339874

/-! ## A339874.P6459076740018266711

`A322826(n+1)+char[A322808(n+1)]`
-/

namespace A339874.P6459076740018266711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322808 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322826 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A339874.P6459076740018266711

namespace A339874

/-- `A322826(n+1)+char[A322808(n+1)]` -/
def P6459076740018266711.Spec : Prop :=
  ∀ n, P6459076740018266711.a n = A339874 (n + 1)

end A339874

/-!
# A339875: Intersection of A137409 and A339870: Composite numbers k of the form 4u+1 having more than one prime factor of type 4u+3, and for which the odd part of phi(k) divides k-1.

The programs for A339875, there is no canonical definition to state claims against.
-/

/-! ## A339875.P1209686336904431289

`filter[A339870(n+1), A353809(#)]`
-/

namespace A339875.P1209686336904431289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353809 (f1 j).toNat = 1) n)

end

end A339875.P1209686336904431289

/-! ## A339875.P6353232163400660889

`filter[A339880(n+1), A353809(#)]`
-/

namespace A339875.P6353232163400660889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353809 (f1 j).toNat = 1) n)

end

end A339875.P6353232163400660889

/-!
# A339876: a(n) = A336466(A122111(n)).

The programs for A339876, the canonical program `A339876.P9808336526575929163` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339876 has offset 1).

The definition of A339876 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A336466, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A339876.P14885752610669941915

`A000265(A105560(n+1)-1)*a(A064989(n+1)-1)` with `a(0)=1, a(1)=1`
-/

namespace A339876.P14885752610669941915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000265 (A105560 (n + 1) - 1).toNat * a (A064989 (n + 1) - 1).toNat

end

end A339876.P14885752610669941915

namespace A339876

/-- `A000265(A105560(n+1)-1)*a(A064989(n+1)-1)` -/
def P14885752610669941915.Spec : Prop :=
  ∀ n, P14885752610669941915.a n = A339876 (n + 1)

end A339876

/-! ## A339876.P9808336526575929163

`A336466(A122111(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A339876

/-- `A336466(A122111(n+1))` -/
def P9808336526575929163.Spec : Prop :=
  ∀ n, P9808336526575929163.a n = A339876 (n + 1)

theorem P9808336526575929163.correct : P9808336526575929163.Spec := by
  intro n
  simp only [A339876, Nat.add_sub_cancel]

end A339876

/-! ## A339876.P3533462695112279374

`A336466(A322865(n+1))`
-/

namespace A339876.P3533462695112279374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (A322865 (n + 1)).toNat

end

end A339876.P3533462695112279374

namespace A339876

/-- `A336466(A322865(n+1))` -/
def P3533462695112279374.Spec : Prop :=
  ∀ n, P3533462695112279374.a n = A339876 (n + 1)

end A339876

/-! ## A339876.P13341929483048031057

`A057023(gcd(A001222(n+1), A336869(n+1)))`
-/

namespace A339876.P13341929483048031057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057023 (Int.gcd (A001222 (n + 1)) (A336869 (n + 1)))

end

end A339876.P13341929483048031057

namespace A339876

/-- `A057023(gcd(A001222(n+1), A336869(n+1)))` -/
def P13341929483048031057.Spec : Prop :=
  ∀ n, P13341929483048031057.a n = A339876 (n + 1)

end A339876

/-! ## A339876.P1493908807866951428

`gcd(A005169(A001222(n+1)), A156695(3*n+1))`
-/

namespace A339876.P1493908807866951428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005169 (A001222 (n + 1)).toNat) (A156695 (3 * n + 1))

end

end A339876.P1493908807866951428

namespace A339876

/-- `gcd(A005169(A001222(n+1)), A156695(3*n+1))` -/
def P1493908807866951428.Spec : Prop :=
  ∀ n, (P1493908807866951428.a n : ℤ) = A339876 (n + 1)

end A339876

/-! ## A339876.P7598746197269295333

`gcd(A156695(3*n+2), A327516(A001222(n+1)))`
-/

namespace A339876.P7598746197269295333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156695 (3 * n + 2)) (A327516 (A001222 (n + 1)).toNat)

end

end A339876.P7598746197269295333

namespace A339876

/-- `gcd(A156695(3*n+2), A327516(A001222(n+1)))` -/
def P7598746197269295333.Spec : Prop :=
  ∀ n, (P7598746197269295333.a n : ℤ) = A339876 (n + 1)

end A339876

/-! ## A339876.P13902587090345139007

`gcd(A000010(A105560(n+1)), A156695(3*(n+1)))`
-/

namespace A339876.P13902587090345139007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A105560 (n + 1)).toNat) (A156695 (3 * (n + 1)))

end

end A339876.P13902587090345139007

namespace A339876

/-- `gcd(A000010(A105560(n+1)), A156695(3*(n+1)))` -/
def P13902587090345139007.Spec : Prop :=
  ∀ n, (P13902587090345139007.a n : ℤ) = A339876 (n + 1)

end A339876

/-! ## A339876.P1641756938421363873

`gcd(A117318(3*n+1), A239263(A001222(n+1)))`
-/

namespace A339876.P1641756938421363873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117318 (3 * n + 1)) (A239263 (A001222 (n + 1)).toNat)

end

end A339876.P1641756938421363873

namespace A339876

/-- `gcd(A117318(3*n+1), A239263(A001222(n+1)))` -/
def P1641756938421363873.Spec : Prop :=
  ∀ n, (P1641756938421363873.a n : ℤ) = A339876 (n + 1)

end A339876

/-! ## A339876.P12101481054644514570

`A053575(∏{p}[A122111(n+1), #])`
-/

namespace A339876.P12101481054644514570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053575 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A339876.P12101481054644514570

namespace A339876

/-- `A053575(∏{p}[A122111(n+1), #])` -/
def P12101481054644514570.Spec : Prop :=
  ∀ n, P12101481054644514570.a n = A339876 (n + 1)

end A339876

/-! ## A339876.P4501763554916441819

`∏{p}[A122111(n+1), A124446(#)]`
-/

namespace A339876.P4501763554916441819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A124446 p

end

end A339876.P4501763554916441819

namespace A339876

/-- `∏{p}[A122111(n+1), A124446(#)]` -/
def P4501763554916441819.Spec : Prop :=
  ∀ n, P4501763554916441819.a n = A339876 (n + 1)

end A339876

/-!
# A339877: a(n) = A336467(A122111(n)).

The programs for A339877, the canonical program `A339877.P7735128145020550148` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339877 has offset 1).

The definition of A339877 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A336467, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A339877.P7735128145020550148

`A336467(A122111(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A339877

/-- `A336467(A122111(n+1))` -/
def P7735128145020550148.Spec : Prop :=
  ∀ n, P7735128145020550148.a n = A339877 (n + 1)

theorem P7735128145020550148.correct : P7735128145020550148.Spec := by
  intro n
  simp only [A339877, Nat.add_sub_cancel]

end A339877

/-! ## A339877.P10360528006076509529

`A336467(A322865(n+1))`
-/

namespace A339877.P10360528006076509529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336467 (A322865 (n + 1)).toNat

end

end A339877.P10360528006076509529

namespace A339877

/-- `A336467(A322865(n+1))` -/
def P10360528006076509529.Spec : Prop :=
  ∀ n, P10360528006076509529.a n = A339877 (n + 1)

end A339877

/-! ## A339877.P6959062559103589682

`A365427(A253566(n+1))`
-/

namespace A339877.P6959062559103589682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365427 (A253566 (n + 1)).toNat

end

end A339877.P6959062559103589682

namespace A339877

/-- `A365427(A253566(n+1))` -/
def P6959062559103589682.Spec : Prop :=
  ∀ n, P6959062559103589682.a n = A339877 (n + 1)

end A339877

/-! ## A339877.P10885916577814251443

`A365427(A333220(n+1))`
-/

namespace A339877.P10885916577814251443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365427 (A333220 (n + 1)).toNat

end

end A339877.P10885916577814251443

namespace A339877

/-- `A365427(A333220(n+1))` -/
def P10885916577814251443.Spec : Prop :=
  ∀ n, P10885916577814251443.a n = A339877 (n + 1)

end A339877

/-! ## A339877.P785122856190301048

`A363329(A001031(n+1)^A001222(n+1))`
-/

namespace A339877.P785122856190301048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363329 (SequenceMachineLib.roundAway ((A001031 (n + 1) : ℚ) ^ (A001222 (n + 1) : ℤ))).toNat

end

end A339877.P785122856190301048

namespace A339877

/-- `A363329(A001031(n+1)^A001222(n+1))` -/
def P785122856190301048.Spec : Prop :=
  ∀ n, P785122856190301048.a n = A339877 (n + 1)

end A339877

/-!
# A339879: Numbers k for which k-1 is a multiple of A053575(k) [the odd part of phi(k)].

The programs for A339879, the canonical program `A339879.P17833683181860755581` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339879 has offset 1).

The definition of A339879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7020 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339879.P17833683181860755581

`record[(n+1)/A000265(A160595(n+1))]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A339879

/-- `record[(n+1)/A000265(A160595(n+1))]` -/
def P17833683181860755581.Spec : Prop :=
  ∀ n, P17833683181860755581.a n = (A339879 (n + 1) : ℚ)

end A339879

/-! ## A339879.P11676932007495979301

`eq[1, A336920(A160595(n+1))]+1`
-/

namespace A339879.P11676932007495979301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336920 (A160595 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A339879.P11676932007495979301

namespace A339879

/-- `eq[1, A336920(A160595(n+1))]+1` -/
def P11676932007495979301.Spec : Prop :=
  ∀ n, (P11676932007495979301.a n : ℤ) = A339879 (n + 1)

end A339879

/-! ## A339879.P666418578634404020

`record[A000027(n+1)/A000593(A160595(n+1))]`
-/

namespace A339879.P666418578634404020
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A000593 (A160595 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339879.P666418578634404020

namespace A339879

/-- `record[A000027(n+1)/A000593(A160595(n+1))]` -/
def P666418578634404020.Spec : Prop :=
  ∀ n, P666418578634404020.a n = (A339879 (n + 1) : ℚ)

end A339879

/-! ## A339879.P6390135870841624862

`eq[0, n%A053575(n+1)]+1`
-/

namespace A339879.P6390135870841624862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A053575 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A339879.P6390135870841624862

namespace A339879

/-- `eq[0, n%A053575(n+1)]+1` -/
def P6390135870841624862.Spec : Prop :=
  ∀ n, (P6390135870841624862.a n : ℤ) = A339879 (n + 1)

end A339879

/-! ## A339879.P4722188926241866933

`record[A008619(2*n)/A000593(A160595(n+1))]`
-/

namespace A339879.P4722188926241866933
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A000593 (A160595 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339879.P4722188926241866933

namespace A339879

/-- `record[A008619(2*n)/A000593(A160595(n+1))]` -/
def P4722188926241866933.Spec : Prop :=
  ∀ n, P4722188926241866933.a n = (A339879 (n + 1) : ℚ)

end A339879

/-! ## A339879.P3824604863527207081

`record[A080513(2*n)/A000593(A160595(n+1))]`
-/

namespace A339879.P3824604863527207081
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080513 (2 * n) : ℚ) / (A000593 (A160595 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339879.P3824604863527207081

namespace A339879

/-- `record[A080513(2*n)/A000593(A160595(n+1))]` -/
def P3824604863527207081.Spec : Prop :=
  ∀ n, P3824604863527207081.a n = (A339879 (n + 1) : ℚ)

end A339879

/-!
# A339880: Odd composite numbers k such that A053575(k) [the odd part of phi] divides k-1.

The programs for A339880, there is no canonical definition to state claims against.
-/

/-! ## A339880.P11348950406363787674

`∩[A238574(n+1), A339879(n+1)]`
-/

namespace A339880.P11348950406363787674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339880.P11348950406363787674

/-! ## A339880.P12213246797563760273

`∩[A339879(n+1), A392922(n+1)]`
-/

namespace A339880.P12213246797563760273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339880.P12213246797563760273

/-! ## A339880.P7228157680921889330

`∩[A238574(n+1), A340077(n+1)]`
-/

namespace A339880.P7228157680921889330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339880.P7228157680921889330

/-! ## A339880.P15800784893094837976

`∩[A340077(n+1), A392922(n+1)]`
-/

namespace A339880.P15800784893094837976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339880.P15800784893094837976

/-! ## A339880.P8097153501709510947

`∩[A300117(n+1), A339879(n+1)]`
-/

namespace A339880.P8097153501709510947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339880.P8097153501709510947

/-! ## A339880.P17682852272329332516

`∩[A300117(n+1), A340077(n+1)]`
-/

namespace A339880.P17682852272329332516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339880.P17682852272329332516

/-! ## A339880.P878219202796541524

`∩[A024556(n+1), A339879(n+1)]`
-/

namespace A339880.P878219202796541524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339880.P878219202796541524

/-! ## A339880.P7412961455674097120

`∩[A024556(n+1), A340077(n+1)]`
-/

namespace A339880.P7412961455674097120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339880.P7412961455674097120

/-! ## A339880.P5587567857175910992

`∩[A324972(n+1), A340077(n+1)]`
-/

namespace A339880.P5587567857175910992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339880.P5587567857175910992

/-! ## A339880.P15646103547584213343

`∩[A061346(n+1), A339879(n+1)]`
-/

namespace A339880.P15646103547584213343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339880.P15646103547584213343

/-!
# A339883: Values of Euler's totient phi for A050498.

The programs for A339883, there is no canonical definition to state claims against.
-/

/-! ## A339883.P507080939281901807

`A000010(A050498(n+1)/A089692(n+1))`
-/

namespace A339883.P507080939281901807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A050498 (n + 1) : ℚ) / (A089692 (n + 1) : ℚ))).toNat

end

end A339883.P507080939281901807

/-!
# A339884: Triangle read by rows: T(n, m) gives the number of partitions of n with m parts and parts from {1, 2, 3}.

The programs for A339884, there is no canonical definition to state claims against.
-/

/-! ## A339884.P3803926264556485074

`A000120(A145364(n+1))`
-/

namespace A339884.P3803926264556485074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A145364 (n + 1)).toNat

end

end A339884.P3803926264556485074

/-! ## A339884.P16965730400769835795

`A323908(A145364(n+1)²)`
-/

namespace A339884.P16965730400769835795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323908 (A145364 (n + 1) ^ 2).toNat

end

end A339884.P16965730400769835795

/-! ## A339884.P8167329199769926986

`A002487(2*A145364(n+1))`
-/

namespace A339884.P8167329199769926986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (2 * A145364 (n + 1)).toNat

end

end A339884.P8167329199769926986

/-! ## A339884.P6982661640984576242

`A089309(2*A145364(n+1))`
-/

namespace A339884.P6982661640984576242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (2 * A145364 (n + 1)).toNat

end

end A339884.P6982661640984576242

/-! ## A339884.P12974434735188747215

`A159918(2*A145364(n+1))`
-/

namespace A339884.P12974434735188747215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (2 * A145364 (n + 1)).toNat

end

end A339884.P12974434735188747215

/-! ## A339884.P12511828644999816311

`A281392(2*A145364(n+1))`
-/

namespace A339884.P12511828644999816311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281392 (2 * A145364 (n + 1)).toNat

end

end A339884.P12511828644999816311

/-! ## A339884.P4506450956540923192

`A323908(A145364(n+1)^2)`
-/

namespace A339884.P4506450956540923192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323908 (A145364 (n + 1) ^ 2).toNat

end

end A339884.P4506450956540923192

/-! ## A339884.P7397942660784637595

`A001842(9*A145364(n+1))`
-/

namespace A339884.P7397942660784637595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (9 * A145364 (n + 1)).toNat

end

end A339884.P7397942660784637595

/-! ## A339884.P3292107336508234351

`A002487(lcm(2, A145364(n+1)))`
-/

namespace A339884.P3292107336508234351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Int.lcm 2 (A145364 (n + 1)))

end

end A339884.P3292107336508234351

/-! ## A339884.P3857291460183169346

`A002487(A145364(n+1)/gcd(n, n+1))`
-/

namespace A339884.P3857291460183169346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway ((A145364 (n + 1) : ℚ) / (Nat.gcd n (n + 1) : ℚ))).toNat

end

end A339884.P3857291460183169346

/-!
# A339885: Triangle read by rows: T(n, m) gives the sum of the weights of weighted partitions of n with m parts from generalized pentagonal numbers {A001318(k)}_{k>=1}.

The programs for A339885, there is no canonical definition to state claims against.
-/

/-! ## A339885.P16398135553559494004

`A016338(A089627(n+1))`
-/

namespace A339885.P16398135553559494004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016338 (A089627 (n + 1)).toNat

end

end A339885.P16398135553559494004

/-! ## A339885.P8353937307452225376

`A016369(A275744(n+1))`
-/

namespace A339885.P8353937307452225376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016369 (A275744 (n + 1)).toNat

end

end A339885.P8353937307452225376

/-! ## A339885.P12016534482657505701

`A016330(floor(ratio[A022166(n)]))`
-/

namespace A339885.P12016534482657505701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016330 ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋.toNat

end

end A339885.P12016534482657505701

/-! ## A339885.P5998671380713203177

`A016330(ceil(ratio[A022166(n)]))`
-/

namespace A339885.P5998671380713203177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016330 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A339885.P5998671380713203177

/-! ## A339885.P8942801635431136442

`A121373(C(A068009(n), A005811(2*(n+1))))`
-/

namespace A339885.P8942801635431136442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (Nat.choose (A068009 n).toNat (A005811 (2 * (n + 1))).toNat)

end

end A339885.P8942801635431136442

/-!
# A339886: Numbers whose prime indices cover an interval of positive integers starting with 2.

The programs for A339886, there is no canonical definition to state claims against.
-/

/-! ## A339886.P10704182047954794172

`A373515(n+1)/2`
-/

namespace A339886.P10704182047954794172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373515 (n + 1) : ℚ) / 2

end

end A339886.P10704182047954794172

/-! ## A339886.P11282241039035090054

`record[A071364(2*(n+1)+2*n)]/2`
-/

namespace A339886.P11282241039035090054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (2 * (n + 1) + 2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A339886.P11282241039035090054

/-! ## A339886.P11691920180350549185

`A000265(A373515(n+1))`
-/

namespace A339886.P11691920180350549185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A373515 (n + 1)).toNat

end

end A339886.P11691920180350549185

/-! ## A339886.P14758922755652410362

`record[A000265(A055932(n+1))]`
-/

namespace A339886.P14758922755652410362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A055932 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339886.P14758922755652410362

/-! ## A339886.P1867220077551100593

`record[A000265(A071364(n+1))]`
-/

namespace A339886.P1867220077551100593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A071364 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339886.P1867220077551100593

/-!
# A339887: Number of factorizations of n into primes or squarefree semiprimes.

The programs for A339887, there is no canonical definition to state claims against.
-/

/-! ## A339887.P5405275273817667702

`round(9*cosh(∑{e}[n+1, tanh(#)])/12)`
-/

namespace A339887.P5405275273817667702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (9 * Real.cosh (∑ p ∈ Nat.primeFactors (f1 n), Real.tanh (Nat.factorization (f1 n) p : ℝ)) / 12)

end

end A339887.P5405275273817667702

/-! ## A339887.P10955854317772611742

`A323437(n+1)`
-/

namespace A339887.P10955854317772611742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323437 (n + 1)

end

end A339887.P10955854317772611742

/-! ## A339887.P7694161787251350158

`∑{d}[n+1, A320656(#)]`
-/

namespace A339887.P7694161787251350158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A320656 d

end

end A339887.P7694161787251350158

/-! ## A339887.P4553444723203312815

`ceil(sqrt(A050320((n+1)²)))`
-/

namespace A339887.P4553444723203312815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A050320 ((n + 1) ^ 2) : ℝ)⌉

end

end A339887.P4553444723203312815

/-! ## A339887.P10000453931271962330

`ceil(A050320(n+1)/sqrt(2))`
-/

namespace A339887.P10000453931271962330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A050320 (n + 1) : ℝ) / Real.sqrt (2 : ℝ)⌉

end

end A339887.P10000453931271962330

/-! ## A339887.P4603033580371865272

`A323437(-xor(n, -1))%6`
-/

namespace A339887.P4603033580371865272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323437 (-Int.xor (n : ℤ) (-1)).toNat) 6

end

end A339887.P4603033580371865272

/-! ## A339887.P3310991936071742563

`A323437(Δ[n²]-n)%6`
-/

namespace A339887.P3310991936071742563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323437 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat) 6

end

end A339887.P3310991936071742563

/-! ## A339887.P7796974196093290524

`A161908(A050320(n+1))`
-/

namespace A339887.P7796974196093290524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161908 (A050320 (n + 1)).toNat

end

end A339887.P7796974196093290524

/-! ## A339887.P11081718678939295338

`A000009(A350331(n+1))`
-/

namespace A339887.P11081718678939295338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A350331 (n + 1)).toNat

end

end A339887.P11081718678939295338

/-! ## A339887.P4026603062428241660

`A350840(A050320(n+1)+2)`
-/

namespace A339887.P4026603062428241660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350840 (A050320 (n + 1) + 2).toNat

end

end A339887.P4026603062428241660

/-!
# A339888: Number of non-isomorphic multiset partitions of weight n into singletons or strict pairs.

The programs for A339888, there is no canonical definition to state claims against.
-/

/-! ## A339888.P9266839595284772312

`or(A003963(A047002(n)), A079474(n+1))`
-/

namespace A339888.P9266839595284772312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003963 (A047002 n).toNat) (A079474 (n + 1))

end

end A339888.P9266839595284772312

/-! ## A339888.P2064993076225829461

`A345917(ceil(2^(n-1)))+n-gcd(n, ∑[n])`
-/

namespace A339888.P2064993076225829461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345917 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + ((n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ))

end

end A339888.P2064993076225829461

/-! ## A339888.P9803822796044178453

`A129359(A191315(n)+1)`
-/

namespace A339888.P9803822796044178453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129359 (A191315 n + 1).toNat

end

end A339888.P9803822796044178453

/-! ## A339888.P220611775186194103

`A330104(A319632(n))-floor(n/3)`
-/

namespace A339888.P220611775186194103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330104 (A319632 n).toNat - ⌊(n : ℚ) / 3⌋

end

end A339888.P220611775186194103

/-!
# A339889: Products of distinct primes or semiprimes.

The programs for A339889, the canonical program `A339889.P1394041266667056392` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339889 has offset 1).

The definition of A339889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339889.P9701584042021591824

`lt[0, A339839(n+1)]+1`
-/

namespace A339889.P9701584042021591824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339839 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A339889.P9701584042021591824

namespace A339889

/-- `lt[0, A339839(n+1)]+1` -/
def P9701584042021591824.Spec : Prop :=
  ∀ n, (P9701584042021591824.a n : ℤ) = A339889 (n + 1)

end A339889

/-! ## A339889.P4074474589205547674

`comp[A339840(n+1)-1]+1`
-/

namespace A339889.P4074474589205547674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339840 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A339889.P4074474589205547674

namespace A339889

/-- `comp[A339840(n+1)-1]+1` -/
def P4074474589205547674.Spec : Prop :=
  ∀ n, (P4074474589205547674.a n : ℤ) = A339889 (n + 1)

end A339889

/-! ## A339889.P1394041266667056392

`lt[A051903(n+1)-3, A001221(n+1)]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A339889

/-- `lt[A051903(n+1)-3, A001221(n+1)]+1` -/
def P1394041266667056392.Spec : Prop :=
  ∀ n, (P1394041266667056392.a n : ℤ) = A339889 (n + 1)

theorem P1394041266667056392.correct : P1394041266667056392.Spec := by
  intro n
  simp only [A339889, Nat.add_sub_cancel]

end A339889

/-! ## A339889.P6173759452168127063

`lt[-3, A225230(n+1)]+1`
-/

namespace A339889.P6173759452168127063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225230 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A339889.P6173759452168127063

namespace A339889

/-- `lt[-3, A225230(n+1)]+1` -/
def P6173759452168127063.Spec : Prop :=
  ∀ n, (P6173759452168127063.a n : ℤ) = A339889 (n + 1)

end A339889

/-! ## A339889.P12389898640695575751

`lt[A112623(n+1), A225520(n+1)]+1`
-/

namespace A339889.P12389898640695575751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225520 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A339889.P12389898640695575751

namespace A339889

/-- `lt[A112623(n+1), A225520(n+1)]+1` -/
def P12389898640695575751.Spec : Prop :=
  ∀ n, (P12389898640695575751.a n : ℤ) = A339889 (n + 1)

end A339889

/-! ## A339889.P762530425555919800

`record[A053981(A134478(n))*A134478(n)]`
-/

namespace A339889.P762530425555919800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053981 (A134478 n).toNat * A134478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339889.P762530425555919800

namespace A339889

/-- `record[A053981(A134478(n))*A134478(n)]` -/
def P762530425555919800.Spec : Prop :=
  ∀ n, P762530425555919800.a n = A339889 (n + 1)

end A339889

/-! ## A339889.P4567553443054718115

`record[gcd(n+1, A191410(A277130(n+1)+11))]`
-/

namespace A339889.P4567553443054718115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A191410 (A277130 (n + 1) + 11).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339889.P4567553443054718115

namespace A339889

/-- `record[gcd(n+1, A191410(A277130(n+1)+11))]` -/
def P4567553443054718115.Spec : Prop :=
  ∀ n, (P4567553443054718115.a n : ℤ) = A339889 (n + 1)

end A339889

/-! ## A339889.P1923912431927575002

`comp[and(A046101(n+1), A273763(n))]`
-/

namespace A339889.P1923912431927575002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046101 (n + 1)) (A273763 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A339889.P1923912431927575002

namespace A339889

/-- `comp[and(A046101(n+1), A273763(n))]` -/
def P1923912431927575002.Spec : Prop :=
  ∀ n, (P1923912431927575002.a n : ℤ) = A339889 (n + 1)

end A339889

/-! ## A339889.P1345659266583767585

`comp[A068935(n+1)%A069419(n+1)]`
-/

namespace A339889.P1345659266583767585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068935 (n + 1)) (A069419 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A339889.P1345659266583767585

namespace A339889

/-- `comp[A068935(n+1)%A069419(n+1)]` -/
def P1345659266583767585.Spec : Prop :=
  ∀ n, (P1345659266583767585.a n : ℤ) = A339889 (n + 1)

end A339889

/-! ## A339889.P10065227149375251340

`eq[A053981(A028310(n)), A178334(n)]`
-/

namespace A339889.P10065227149375251340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053981 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339889.P10065227149375251340

namespace A339889

/-- `eq[A053981(A028310(n)), A178334(n)]` -/
def P10065227149375251340.Spec : Prop :=
  ∀ n, (P10065227149375251340.a n : ℤ) = A339889 (n + 1)

end A339889

/-! ## A339889.P11349250167777929566

`eq[A053981(A233583(n+1)), A178334(n)]`
-/

namespace A339889.P11349250167777929566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053981 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339889.P11349250167777929566

namespace A339889

/-- `eq[A053981(A233583(n+1)), A178334(n)]` -/
def P11349250167777929566.Spec : Prop :=
  ∀ n, (P11349250167777929566.a n : ℤ) = A339889 (n + 1)

end A339889

/-! ## A339889.P12541615546521700999

`eq[A053981(A065033(2*n)), A178334(n)]`
-/

namespace A339889.P12541615546521700999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053981 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339889.P12541615546521700999

namespace A339889

/-- `eq[A053981(A065033(2*n)), A178334(n)]` -/
def P12541615546521700999.Spec : Prop :=
  ∀ n, (P12541615546521700999.a n : ℤ) = A339889 (n + 1)

end A339889

/-!
# A339890: Number of odd-length factorizations of n into factors > 1.

The programs for A339890, there is no canonical definition to state claims against.
-/

/-! ## A339890.P1485111001351677141

`A001055(n+1)-A339846(n+1)`
-/

namespace A339890.P1485111001351677141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A339846 (n + 1)

end

end A339890.P1485111001351677141

/-! ## A339890.P10669419966114862951

`A339846(n+1)-A316441(n+1)`
-/

namespace A339890.P10669419966114862951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339846 (n + 1) - A316441 (n + 1)

end

end A339890.P10669419966114862951

/-! ## A339890.P11304760189678955935

`(A001055(n+1)-A316441(n+1))/2`
-/

namespace A339890.P11304760189678955935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001055 (n + 1) - A316441 (n + 1) : ℚ) / 2

end

end A339890.P11304760189678955935

/-! ## A339890.P4461430764279180462

`A001281(A001055(n+1)-A316441(n+1))`
-/

namespace A339890.P4461430764279180462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A001055 (n + 1) - A316441 (n + 1)).toNat

end

end A339890.P4461430764279180462

/-! ## A339890.P6522627820948894731

`A004525(A001055(n+1)-A316441(n+1))`
-/

namespace A339890.P6522627820948894731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A001055 (n + 1) - A316441 (n + 1)).toNat

end

end A339890.P6522627820948894731

/-! ## A339890.P3970141475275414871

`A085062(A001055(n+1)-A316441(n+1))`
-/

namespace A339890.P3970141475275414871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085062 (A001055 (n + 1) - A316441 (n + 1)).toNat

end

end A339890.P3970141475275414871

/-! ## A339890.P4714337025776336103

`A340607(A003961(n+1))`
-/

namespace A339890.P4714337025776336103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340607 (A003961 (n + 1)).toNat

end

end A339890.P4714337025776336103

/-! ## A339890.P3481535687122859012

`A340607(A045965(n+1))`
-/

namespace A339890.P3481535687122859012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340607 (A045965 (n + 1)).toNat

end

end A339890.P3481535687122859012

/-! ## A339890.P1998375214756790927

`A340607(A332818(n+1))`
-/

namespace A339890.P1998375214756790927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340607 (A332818 (n + 1)).toNat

end

end A339890.P1998375214756790927

/-! ## A339890.P6539314202459965667

`A340607(A359600(n+1))`
-/

namespace A339890.P6539314202459965667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340607 (A359600 (n + 1)).toNat

end

end A339890.P6539314202459965667

/-! ## A339890.P18124685773629523818

`A340607(A064988(n+1))`
-/

namespace A339890.P18124685773629523818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340607 (A064988 (n + 1)).toNat

end

end A339890.P18124685773629523818

/-! ## A339890.P7773209757952693257

`A340607(A348746(n+1))`
-/

namespace A339890.P7773209757952693257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340607 (A348746 (n + 1)).toNat

end

end A339890.P7773209757952693257

/-! ## A339890.P3726150006293868838

`A340607(A297002(n+1))`
-/

namespace A339890.P3726150006293868838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340607 (A297002 (n + 1)).toNat

end

end A339890.P3726150006293868838

/-! ## A339890.P7411508197591001878

`A340607(A389092(n+1))`
-/

namespace A339890.P7411508197591001878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340607 (A389092 (n + 1)).toNat

end

end A339890.P7411508197591001878

/-! ## A339890.P15988033018856615960

`A340607(A354091(n+1))`
-/

namespace A339890.P15988033018856615960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340607 (A354091 (n + 1)).toNat

end

end A339890.P15988033018856615960

/-!
# A339892: Maximum number of fundamentally different graceful labelings for a simple graph of n nodes without isolated vertices.

The programs for A339892, there is no canonical definition to state claims against.
-/

/-! ## A339892.P5642900840474623185

`A379395(A353832(n+1)+A213936(n+1))`
-/

namespace A339892.P5642900840474623185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379395 (A353832 (n + 1) + A213936 (n + 1)).toNat

end

end A339892.P5642900840474623185

/-!
# A339893: a(n) = A000523(n) - A001222(n); floor(log_2(n)) minus the number of prime divisors of n, counted with multiplicity.

The programs for A339893, the canonical program `A339893.P4828235221648378328` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339893 has offset 1).

The definition of A339893 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A339893.P4828235221648378328

`A000523(n+1)-A001222(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A339893

/-- `A000523(n+1)-A001222(n+1)` -/
def P4828235221648378328.Spec : Prop :=
  ∀ n, P4828235221648378328.a n = A339893 (n + 1)

theorem P4828235221648378328.correct : P4828235221648378328.Spec := by
  intro n
  simp only [A339893, Nat.add_sub_cancel]

end A339893

/-! ## A339893.P12828526782403747641

`A339895(A122111(n+1))`
-/

namespace A339893.P12828526782403747641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339895 (A122111 (n + 1)).toNat

end

end A339893.P12828526782403747641

namespace A339893

/-- `A339895(A122111(n+1))` -/
def P12828526782403747641.Spec : Prop :=
  ∀ n, P12828526782403747641.a n = A339893 (n + 1)

end A339893

/-! ## A339893.P1503842250245446946

`floor(log2(n+1))-∑{e}[n+1, #]`
-/

namespace A339893.P1503842250245446946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (n + 1) : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A339893.P1503842250245446946

namespace A339893

/-- `floor(log2(n+1))-∑{e}[n+1, #]` -/
def P1503842250245446946.Spec : Prop :=
  ∀ n, P1503842250245446946.a n = A339893 (n + 1)

end A339893

/-! ## A339893.P11815300779386013643

`∑[char[2^n-1]]-A001222(2*(n+1))`
-/

namespace A339893.P11815300779386013643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A001222 (2 * (n + 1))

end

end A339893.P11815300779386013643

namespace A339893

/-- `∑[char[2^n-1]]-A001222(2*(n+1))` -/
def P11815300779386013643.Spec : Prop :=
  ∀ n, P11815300779386013643.a n = A339893 (n + 1)

end A339893

/-! ## A339893.P1317574846020556660

`A119387(n)-A087436(n+1)`
-/

namespace A339893.P1317574846020556660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119387 n - A087436 (n + 1)

end

end A339893.P1317574846020556660

namespace A339893

/-- `A119387(n)-A087436(n+1)` -/
def P1317574846020556660.Spec : Prop :=
  ∀ n, P1317574846020556660.a n = A339893 (n + 1)

end A339893

/-! ## A339893.P10852194598517281532

`A025532(n)-A327247(n+1)`
-/

namespace A339893.P10852194598517281532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025532 n - A327247 (n + 1)

end

end A339893.P10852194598517281532

namespace A339893

/-- `A025532(n)-A327247(n+1)` -/
def P10852194598517281532.Spec : Prop :=
  ∀ n, P10852194598517281532.a n = A339893 (n + 1)

end A339893

/-! ## A339893.P2035178227556440411

`A000523(n+1)-Δ[A022559(n)]`
-/

namespace A339893.P2035178227556440411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) - (f1 (n + 1) - f1 n)

end

end A339893.P2035178227556440411

namespace A339893

/-- `A000523(n+1)-Δ[A022559(n)]` -/
def P2035178227556440411.Spec : Prop :=
  ∀ n, P2035178227556440411.a n = A339893 (n + 1)

end A339893

/-! ## A339893.P3559329018558973477

`A080804(n+1)-A064800(n+1)`
-/

namespace A339893.P3559329018558973477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080804 (n + 1) - A064800 (n + 1)

end

end A339893.P3559329018558973477

namespace A339893

/-- `A080804(n+1)-A064800(n+1)` -/
def P3559329018558973477.Spec : Prop :=
  ∀ n, P3559329018558973477.a n = A339893 (n + 1)

end A339893

/-! ## A339893.P5464177183650958197

`A113473(n+1)-A073093(n+1)`
-/

namespace A339893.P5464177183650958197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (n + 1) - A073093 (n + 1)

end

end A339893.P5464177183650958197

namespace A339893

/-- `A113473(n+1)-A073093(n+1)` -/
def P5464177183650958197.Spec : Prop :=
  ∀ n, P5464177183650958197.a n = A339893 (n + 1)

end A339893

/-! ## A339893.P4289210348542992560

`A318995(n+1)-A339823(n+1)`
-/

namespace A339893.P4289210348542992560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 1) - A339823 (n + 1)

end

end A339893.P4289210348542992560

namespace A339893

/-- `A318995(n+1)-A339823(n+1)` -/
def P4289210348542992560.Spec : Prop :=
  ∀ n, P4289210348542992560.a n = A339893 (n + 1)

end A339893

/-! ## A339893.P4762031004244411470

`∑[A069513(2*(n+1))]-(A001222(n+1)+1)`
-/

namespace A339893.P4762031004244411470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A001222 (n + 1) + 1)

end

end A339893.P4762031004244411470

namespace A339893

/-- `∑[A069513(2*(n+1))]-(A001222(n+1)+1)` -/
def P4762031004244411470.Spec : Prop :=
  ∀ n, P4762031004244411470.a n = A339893 (n + 1)

end A339893

/-! ## A339893.P8075664651696115297

`A056239(n+1)-(A339823(n+1)+A001222(n+1))`
-/

namespace A339893.P8075664651696115297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - (A339823 (n + 1) + A001222 (n + 1))

end

end A339893.P8075664651696115297

namespace A339893

/-- `A056239(n+1)-(A339823(n+1)+A001222(n+1))` -/
def P8075664651696115297.Spec : Prop :=
  ∀ n, P8075664651696115297.a n = A339893 (n + 1)

end A339893

/-! ## A339893.P14774601008979908364

`A070939(n+1)-(A001222(n+1)+1)`
-/

namespace A339893.P14774601008979908364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - (A001222 (n + 1) + 1)

end

end A339893.P14774601008979908364

namespace A339893

/-- `A070939(n+1)-(A001222(n+1)+1)` -/
def P14774601008979908364.Spec : Prop :=
  ∀ n, P14774601008979908364.a n = A339893 (n + 1)

end A339893

/-! ## A339893.P9093034892864247550

`A029837(n+2)-(A001222(n+1)+1)`
-/

namespace A339893.P9093034892864247550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 2) - (A001222 (n + 1) + 1)

end

end A339893.P9093034892864247550

namespace A339893

/-- `A029837(n+2)-(A001222(n+1)+1)` -/
def P9093034892864247550.Spec : Prop :=
  ∀ n, P9093034892864247550.a n = A339893 (n + 1)

end A339893

/-! ## A339893.P13397885350468419732

`A001222(A062383(n+1))-(A001222(n+1)+1)`
-/

namespace A339893.P13397885350468419732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A062383 (n + 1)).toNat - (A001222 (n + 1) + 1)

end

end A339893.P13397885350468419732

namespace A339893

/-- `A001222(A062383(n+1))-(A001222(n+1)+1)` -/
def P13397885350468419732.Spec : Prop :=
  ∀ n, P13397885350468419732.a n = A339893 (n + 1)

end A339893

/-! ## A339893.P17741543566744906578

`A372441(2*(n+1))+A023416(n+1)`
-/

namespace A339893.P17741543566744906578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372441 (2 * (n + 1)) + A023416 (n + 1)

end

end A339893.P17741543566744906578

namespace A339893

/-- `A372441(2*(n+1))+A023416(n+1)` -/
def P17741543566744906578.Spec : Prop :=
  ∀ n, P17741543566744906578.a n = A339893 (n + 1)

end A339893

/-! ## A339893.P16693272544856510525

`A000523(2*(n+1))-A086436(2*(n+1))`
-/

namespace A339893.P16693272544856510525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * (n + 1)) - A086436 (2 * (n + 1))

end

end A339893.P16693272544856510525

namespace A339893

/-- `A000523(2*(n+1))-A086436(2*(n+1))` -/
def P16693272544856510525.Spec : Prop :=
  ∀ n, P16693272544856510525.a n = A339893 (n + 1)

end A339893

/-! ## A339893.P14177723459486781323

`∑[A010055(2*(n+1))]-(A001222(n+1)+1)`
-/

namespace A339893.P14177723459486781323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A001222 (n + 1) + 1)

end

end A339893.P14177723459486781323

namespace A339893

/-- `∑[A010055(2*(n+1))]-(A001222(n+1)+1)` -/
def P14177723459486781323.Spec : Prop :=
  ∀ n, P14177723459486781323.a n = A339893 (n + 1)

end A339893

/-! ## A339893.P9488081778593886767

`∑[A001222(A014963(2*(n+1)))]-(A001222(n+1)+1)`
-/

namespace A339893.P9488081778593886767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A014963 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A001222 (n + 1) + 1)

end

end A339893.P9488081778593886767

namespace A339893

/-- `∑[A001222(A014963(2*(n+1)))]-(A001222(n+1)+1)` -/
def P9488081778593886767.Spec : Prop :=
  ∀ n, P9488081778593886767.a n = A339893 (n + 1)

end A339893

/-! ## A339893.P1126313181346580635

`A001222(∏[A014963(2*(n+1))])-(A001222(n+1)+1)`
-/

namespace A339893.P1126313181346580635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ j ∈ Finset.range (n + 1), f1 j).toNat - (A001222 (n + 1) + 1)

end

end A339893.P1126313181346580635

namespace A339893

/-- `A001222(∏[A014963(2*(n+1))])-(A001222(n+1)+1)` -/
def P1126313181346580635.Spec : Prop :=
  ∀ n, P1126313181346580635.a n = A339893 (n + 1)

end A339893

/-!
# A339894: a(n) = A000523(A122111(n)).

The programs for A339894, the canonical program `A339894.P9202660857362270704` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339894 has offset 1).

The definition of A339894 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A339894.P9202660857362270704

`A000523(A122111(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A339894

/-- `A000523(A122111(n+1))` -/
def P9202660857362270704.Spec : Prop :=
  ∀ n, P9202660857362270704.a n = A339894 (n + 1)

theorem P9202660857362270704.correct : P9202660857362270704.Spec := by
  intro n
  simp only [A339894, Nat.add_sub_cancel]

end A339894

/-! ## A339894.P6730982409915870264

`A339895(n+1)+A061395(n+1)`
-/

namespace A339894.P6730982409915870264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339895 (n + 1) + A061395 (n + 1)

end

end A339894.P6730982409915870264

namespace A339894

/-- `A339895(n+1)+A061395(n+1)` -/
def P6730982409915870264.Spec : Prop :=
  ∀ n, P6730982409915870264.a n = A339894 (n + 1)

end A339894

/-! ## A339894.P7926546307749281975

`A056239(n+1)-A339896(n+1)`
-/

namespace A339894.P7926546307749281975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A339896 (n + 1)

end

end A339894.P7926546307749281975

namespace A339894

/-- `A056239(n+1)-A339896(n+1)` -/
def P7926546307749281975.Spec : Prop :=
  ∀ n, P7926546307749281975.a n = A339894 (n + 1)

end A339894

/-! ## A339894.P1406947561965016981

`A339895(n+1)+1-A243291(n+1)+n`
-/

namespace A339894.P1406947561965016981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339895 (n + 1) + (1 - A243291 (n + 1) + (n : ℤ))

end

end A339894.P1406947561965016981

namespace A339894

/-- `A339895(n+1)+1-A243291(n+1)+n` -/
def P1406947561965016981.Spec : Prop :=
  ∀ n, P1406947561965016981.a n = A339894 (n + 1)

end A339894

/-! ## A339894.P654275556238945495

`n+1-A178503(n+1)-A339896(n+1)`
-/

namespace A339894.P654275556238945495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A178503 (n + 1) - A339896 (n + 1)

end

end A339894.P654275556238945495

namespace A339894

/-- `n+1-A178503(n+1)-A339896(n+1)` -/
def P654275556238945495.Spec : Prop :=
  ∀ n, P654275556238945495.a n = A339894 (n + 1)

end A339894

/-! ## A339894.P13295995778053316442

`A339895(n+1)+A000720(A006530(n+1))`
-/

namespace A339894.P13295995778053316442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339895 (n + 1) + A000720 (A006530 (n + 1)).toNat

end

end A339894.P13295995778053316442

namespace A339894

/-- `A339895(n+1)+A000720(A006530(n+1))` -/
def P13295995778053316442.Spec : Prop :=
  ∀ n, P13295995778053316442.a n = A339894 (n + 1)

end A339894

/-! ## A339894.P5569567733461138225

`A339895(n+1)+A065770(A007947(n+1))`
-/

namespace A339894.P5569567733461138225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339895 (n + 1) + A065770 (A007947 (n + 1)).toNat

end

end A339894.P5569567733461138225

namespace A339894

/-- `A339895(n+1)+A065770(A007947(n+1))` -/
def P5569567733461138225.Spec : Prop :=
  ∀ n, P5569567733461138225.a n = A339894 (n + 1)

end A339894

/-! ## A339894.P4261539432796126124

`A339895(n+1)+A065770(A088835(n+1))`
-/

namespace A339894.P4261539432796126124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339895 (n + 1) + A065770 (A088835 (n + 1)).toNat

end

end A339894.P4261539432796126124

namespace A339894

/-- `A339895(n+1)+A065770(A088835(n+1))` -/
def P4261539432796126124.Spec : Prop :=
  ∀ n, P4261539432796126124.a n = A339894 (n + 1)

end A339894

/-! ## A339894.P6012047734111375794

`A339895(n+1)+A055396(A006530(∏{p}[n+1, #]))`
-/

namespace A339894.P6012047734111375794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339895 (n + 1) + A055396 (A006530 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A339894.P6012047734111375794

namespace A339894

/-- `A339895(n+1)+A055396(A006530(∏{p}[n+1, #]))` -/
def P6012047734111375794.Spec : Prop :=
  ∀ n, P6012047734111375794.a n = A339894 (n + 1)

end A339894

/-! ## A339894.P11106182502899545616

`A055396(n+1)+A339895(n+1)+A243055(n+1)`
-/

namespace A339894.P11106182502899545616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1) + (A339895 (n + 1) + A243055 (n + 1))

end

end A339894.P11106182502899545616

namespace A339894

/-- `A055396(n+1)+A339895(n+1)+A243055(n+1)` -/
def P11106182502899545616.Spec : Prop :=
  ∀ n, P11106182502899545616.a n = A339894 (n + 1)

end A339894

/-! ## A339894.P15350635767654181556

`A000523(n+1)+A339823(n+1)-A339896(n+1)`
-/

namespace A339894.P15350635767654181556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) + (A339823 (n + 1) - A339896 (n + 1))

end

end A339894.P15350635767654181556

namespace A339894

/-- `A000523(n+1)+A339823(n+1)-A339896(n+1)` -/
def P15350635767654181556.Spec : Prop :=
  ∀ n, P15350635767654181556.a n = A339894 (n + 1)

end A339894

/-! ## A339894.P948693617352854188

`A339895(n+1)+A000720((n+1)/A052126(n+1))`
-/

namespace A339894.P948693617352854188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339895 (n + 1) + A000720 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ))).toNat

end

end A339894.P948693617352854188

namespace A339894

/-- `A339895(n+1)+A000720((n+1)/A052126(n+1))` -/
def P948693617352854188.Spec : Prop :=
  ∀ n, P948693617352854188.a n = A339894 (n + 1)

end A339894

/-! ## A339894.P3211764703846087767

`A339895(n+1)+A049084((n+1)/A052126(n+1))`
-/

namespace A339894.P3211764703846087767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339895 (n + 1) + A049084 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ))).toNat

end

end A339894.P3211764703846087767

namespace A339894

/-- `A339895(n+1)+A049084((n+1)/A052126(n+1))` -/
def P3211764703846087767.Spec : Prop :=
  ∀ n, P3211764703846087767.a n = A339894 (n + 1)

end A339894

/-! ## A339894.P11364103555013148388

`A339895(n+1)+A055396((n+1)/A052126(n+1))`
-/

namespace A339894.P11364103555013148388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339895 (n + 1) + A055396 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ))).toNat

end

end A339894.P11364103555013148388

namespace A339894

/-- `A339895(n+1)+A055396((n+1)/A052126(n+1))` -/
def P11364103555013148388.Spec : Prop :=
  ∀ n, P11364103555013148388.a n = A339894 (n + 1)

end A339894

/-! ## A339894.P3204977802938435966

`A339895(n+1)+A056239((n+1)/A052126(n+1))`
-/

namespace A339894.P3204977802938435966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339895 (n + 1) + A056239 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ))).toNat

end

end A339894.P3204977802938435966

namespace A339894

/-- `A339895(n+1)+A056239((n+1)/A052126(n+1))` -/
def P3204977802938435966.Spec : Prop :=
  ∀ n, P3204977802938435966.a n = A339894 (n + 1)

end A339894

/-! ## A339894.P14499299770074557316

`A056239(n+1)+A339895(n+1)-A056239(A052126(n+1))`
-/

namespace A339894.P14499299770074557316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + (A339895 (n + 1) - A056239 (A052126 (n + 1)).toNat)

end

end A339894.P14499299770074557316

namespace A339894

/-- `A056239(n+1)+A339895(n+1)-A056239(A052126(n+1))` -/
def P14499299770074557316.Spec : Prop :=
  ∀ n, P14499299770074557316.a n = A339894 (n + 1)

end A339894

/-! ## A339894.P4757614757465181500

`floor(log2(∑{d}[n+1, A329034(#)]))`
-/

namespace A339894.P4757614757465181500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (∑ d ∈ Nat.divisors (f1 n), A329034 d).toNat

end

end A339894.P4757614757465181500

namespace A339894

/-- `floor(log2(∑{d}[n+1, A329034(#)]))` -/
def P4757614757465181500.Spec : Prop :=
  ∀ n, (P4757614757465181500.a n : ℤ) = A339894 (n + 1)

end A339894

/-!
# A339895: a(n) = A339894(n) - A061395(n).

The programs for A339895, the canonical program `A339895.P17584519496757245287` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339895 has offset 1).

The definition of A339895 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, A339894, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A339895.P17584519496757245287

`A339894(n+1)-A061395(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A339895

/-- `A339894(n+1)-A061395(n+1)` -/
def P17584519496757245287.Spec : Prop :=
  ∀ n, P17584519496757245287.a n = A339895 (n + 1)

theorem P17584519496757245287.correct : P17584519496757245287.Spec := by
  intro n
  simp only [A339895, Nat.add_sub_cancel]

end A339895

/-! ## A339895.P12587928493172406615

`A339893(A122111(n+1))`
-/

namespace A339895.P12587928493172406615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339893 (A122111 (n + 1)).toNat

end

end A339895.P12587928493172406615

namespace A339895

/-- `A339893(A122111(n+1))` -/
def P12587928493172406615.Spec : Prop :=
  ∀ n, P12587928493172406615.a n = A339895 (n + 1)

end A339895

/-! ## A339895.P12843173629415146774

`abs(n+1-A243291(n+1)-A339894(n+1))`
-/

namespace A339895.P12843173629415146774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - A243291 (n + 1) - A339894 (n + 1)|

end

end A339895.P12843173629415146774

namespace A339895

/-- `abs(n+1-A243291(n+1)-A339894(n+1))` -/
def P12843173629415146774.Spec : Prop :=
  ∀ n, P12843173629415146774.a n = A339895 (n + 1)

end A339895

/-! ## A339895.P2740560592446827172

`A339894(n+1)-A049084(A006530(n+1))`
-/

namespace A339895.P2740560592446827172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339894 (n + 1) - A049084 (A006530 (n + 1)).toNat

end

end A339895.P2740560592446827172

namespace A339895

/-- `A339894(n+1)-A049084(A006530(n+1))` -/
def P2740560592446827172.Spec : Prop :=
  ∀ n, P2740560592446827172.a n = A339895 (n + 1)

end A339895

/-! ## A339895.P2569655982081553565

`A339894(n+1)-A055396(∏{d}[A006530(n+1), #])`
-/

namespace A339895.P2569655982081553565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339894 (n + 1) - A055396 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A339895.P2569655982081553565

namespace A339895

/-- `A339894(n+1)-A055396(∏{d}[A006530(n+1), #])` -/
def P2569655982081553565.Spec : Prop :=
  ∀ n, P2569655982081553565.a n = A339895 (n + 1)

end A339895

/-! ## A339895.P70698645927560731

`A339894(n+1)-A055396(A006530(∏{p}[n+1, #]))`
-/

namespace A339895.P70698645927560731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339894 (n + 1) - A055396 (A006530 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A339895.P70698645927560731

namespace A339895

/-- `A339894(n+1)-A055396(A006530(∏{p}[n+1, #]))` -/
def P70698645927560731.Spec : Prop :=
  ∀ n, P70698645927560731.a n = A339895 (n + 1)

end A339895

/-! ## A339895.P6123061731837167406

`A339894(n+1)-A344616(∏{p}[A006530(n+1), #])`
-/

namespace A339895.P6123061731837167406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339894 (n + 1) - A344616 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A339895.P6123061731837167406

namespace A339895

/-- `A339894(n+1)-A344616(∏{p}[A006530(n+1), #])` -/
def P6123061731837167406.Spec : Prop :=
  ∀ n, P6123061731837167406.a n = A339895 (n + 1)

end A339895

/-! ## A339895.P9475702460115044242

`A056239(n+1)-(A339896(n+1)+A061395(n+1))`
-/

namespace A339895.P9475702460115044242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - (A339896 (n + 1) + A061395 (n + 1))

end

end A339895.P9475702460115044242

namespace A339895

/-- `A056239(n+1)-(A339896(n+1)+A061395(n+1))` -/
def P9475702460115044242.Spec : Prop :=
  ∀ n, P9475702460115044242.a n = A339895 (n + 1)

end A339895

/-! ## A339895.P8959642563120022851

`A339894(n+1)-(A243055(n+1)+A055396(n+1))`
-/

namespace A339895.P8959642563120022851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339894 (n + 1) - (A243055 (n + 1) + A055396 (n + 1))

end

end A339895.P8959642563120022851

namespace A339895

/-- `A339894(n+1)-(A243055(n+1)+A055396(n+1))` -/
def P8959642563120022851.Spec : Prop :=
  ∀ n, P8959642563120022851.a n = A339895 (n + 1)

end A339895

/-! ## A339895.P16526393651418785733

`A339894(n+1)-A049084((n+1)/A052126(n+1))`
-/

namespace A339895.P16526393651418785733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339894 (n + 1) - A049084 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ))).toNat

end

end A339895.P16526393651418785733

namespace A339895

/-- `A339894(n+1)-A049084((n+1)/A052126(n+1))` -/
def P16526393651418785733.Spec : Prop :=
  ∀ n, P16526393651418785733.a n = A339895 (n + 1)

end A339895

/-! ## A339895.P15666843715277270319

`A339894(n+1)-A055396((n+1)/A052126(n+1))`
-/

namespace A339895.P15666843715277270319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339894 (n + 1) - A055396 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ))).toNat

end

end A339895.P15666843715277270319

namespace A339895

/-- `A339894(n+1)-A055396((n+1)/A052126(n+1))` -/
def P15666843715277270319.Spec : Prop :=
  ∀ n, P15666843715277270319.a n = A339895 (n + 1)

end A339895

/-! ## A339895.P13799353656894816293

`A339894(n+1)-val(A181821(n+1), 2)`
-/

namespace A339895.P13799353656894816293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339894 (n + 1) - (SequenceMachineLib.valuation (A181821 (n + 1)).toNat 2 : ℤ)

end

end A339895.P13799353656894816293

namespace A339895

/-- `A339894(n+1)-val(A181821(n+1), 2)` -/
def P13799353656894816293.Spec : Prop :=
  ∀ n, P13799353656894816293.a n = A339895 (n + 1)

end A339895

/-! ## A339895.P10446614233735010029

`A339893(A322865(n+1))`
-/

namespace A339895.P10446614233735010029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339893 (A322865 (n + 1)).toNat

end

end A339895.P10446614233735010029

namespace A339895

/-- `A339893(A322865(n+1))` -/
def P10446614233735010029.Spec : Prop :=
  ∀ n, P10446614233735010029.a n = A339895 (n + 1)

end A339895

/-! ## A339895.P12540723473609085152

`A325135(A003961(n+1))-A339896(n+1)`
-/

namespace A339895.P12540723473609085152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 (A003961 (n + 1)).toNat - A339896 (n + 1)

end

end A339895.P12540723473609085152

namespace A339895

/-- `A325135(A003961(n+1))-A339896(n+1)` -/
def P12540723473609085152.Spec : Prop :=
  ∀ n, P12540723473609085152.a n = A339895 (n + 1)

end A339895

/-! ## A339895.P6537757416038547392

`A325135(A045965(n+1))-A339896(n+1)`
-/

namespace A339895.P6537757416038547392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 (A045965 (n + 1)).toNat - A339896 (n + 1)

end

end A339895.P6537757416038547392

namespace A339895

/-- `A325135(A045965(n+1))-A339896(n+1)` -/
def P6537757416038547392.Spec : Prop :=
  ∀ n, P6537757416038547392.a n = A339895 (n + 1)

end A339895

/-!
# A339896: a(n) = A056239(n) - A339894(n).

The programs for A339896, the canonical program `A339896.P16852048549527834821` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339896 has offset 1).

The definition of A339896 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056239, A339894, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A339896.P16852048549527834821

`A056239(n+1)-A339894(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A339896

/-- `A056239(n+1)-A339894(n+1)` -/
def P16852048549527834821.Spec : Prop :=
  ∀ n, P16852048549527834821.a n = A339896 (n + 1)

theorem P16852048549527834821.correct : P16852048549527834821.Spec := by
  intro n
  simp only [A339896, Nat.add_sub_cancel]

end A339896

/-! ## A339896.P4723088328076147348

`A339823(A122111(n+1))`
-/

namespace A339896.P4723088328076147348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339823 (A122111 (n + 1)).toNat

end

end A339896.P4723088328076147348

namespace A339896

/-- `A339823(A122111(n+1))` -/
def P4723088328076147348.Spec : Prop :=
  ∀ n, P4723088328076147348.a n = A339896 (n + 1)

end A339896

/-! ## A339896.P2906375430610628078

`A056239(n+1)-A000523(A122111(n+1))`
-/

namespace A339896.P2906375430610628078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A000523 (A122111 (n + 1)).toNat

end

end A339896.P2906375430610628078

namespace A339896

/-- `A056239(n+1)-A000523(A122111(n+1))` -/
def P2906375430610628078.Spec : Prop :=
  ∀ n, P2906375430610628078.a n = A339896 (n + 1)

end A339896

/-! ## A339896.P14540401600581540597

`A316436(2*(n+1))-1-A339894(n+1)`
-/

namespace A339896.P14540401600581540597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316436 (2 * (n + 1)) - 1 - A339894 (n + 1)

end

end A339896.P14540401600581540597

namespace A339896

/-- `A316436(2*(n+1))-1-A339894(n+1)` -/
def P14540401600581540597.Spec : Prop :=
  ∀ n, P14540401600581540597.a n = A339896 (n + 1)

end A339896

/-! ## A339896.P7985478143990129261

`1-A178503(n+1)+n-A339894(n+1)`
-/

namespace A339896.P7985478143990129261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A178503 (n + 1) + (n : ℤ) - A339894 (n + 1)

end

end A339896.P7985478143990129261

namespace A339896

/-- `1-A178503(n+1)+n-A339894(n+1)` -/
def P7985478143990129261.Spec : Prop :=
  ∀ n, P7985478143990129261.a n = A339896 (n + 1)

end A339896

/-! ## A339896.P15579994849938425866

`A056239(A052126(n+1))-A339895(n+1)`
-/

namespace A339896.P15579994849938425866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A052126 (n + 1)).toNat - A339895 (n + 1)

end

end A339896.P15579994849938425866

namespace A339896

/-- `A056239(A052126(n+1))-A339895(n+1)` -/
def P15579994849938425866.Spec : Prop :=
  ∀ n, P15579994849938425866.a n = A339896 (n + 1)

end A339896

/-! ## A339896.P12106727585559192791

`A056239(n+1)-(A339895(n+1)+A061395(n+1))`
-/

namespace A339896.P12106727585559192791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - (A339895 (n + 1) + A061395 (n + 1))

end

end A339896.P12106727585559192791

namespace A339896

/-- `A056239(n+1)-(A339895(n+1)+A061395(n+1))` -/
def P12106727585559192791.Spec : Prop :=
  ∀ n, P12106727585559192791.a n = A339896 (n + 1)

end A339896

/-! ## A339896.P253078502875773232

`A000005(n+1)-(A339894(n+1)+A325794(n+1))`
-/

namespace A339896.P253078502875773232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A339894 (n + 1) + A325794 (n + 1))

end

end A339896.P253078502875773232

namespace A339896

/-- `A000005(n+1)-(A339894(n+1)+A325794(n+1))` -/
def P253078502875773232.Spec : Prop :=
  ∀ n, P253078502875773232.a n = A339896 (n + 1)

end A339896

/-! ## A339896.P8585583094200924521

`A000523(n+1)+A339823(n+1)-A339894(n+1)`
-/

namespace A339896.P8585583094200924521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) + (A339823 (n + 1) - A339894 (n + 1))

end

end A339896.P8585583094200924521

namespace A339896

/-- `A000523(n+1)+A339823(n+1)-A339894(n+1)` -/
def P8585583094200924521.Spec : Prop :=
  ∀ n, P8585583094200924521.a n = A339896 (n + 1)

end A339896

/-! ## A339896.P14952690640140881118

`A318995(n+1)+log2(A061142(n+1))-A339894(n+1)`
-/

namespace A339896.P14952690640140881118
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A318995 (n + 1) : ℝ) + Real.logb 2 (A061142 (n + 1) : ℝ) - (A339894 (n + 1) : ℝ)

end

end A339896.P14952690640140881118

namespace A339896

/-- `A318995(n+1)+log2(A061142(n+1))-A339894(n+1)` -/
def P14952690640140881118.Spec : Prop :=
  ∀ n, P14952690640140881118.a n = (A339896 (n + 1) : ℝ)

end A339896

/-! ## A339896.P16192417185353502283

`A318995(n+1)+A255201(n+1)/2-A339894(n+1)`
-/

namespace A339896.P16192417185353502283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318995 (n + 1) : ℚ) + (A255201 (n + 1) : ℚ) / 2 - (A339894 (n + 1) : ℚ)

end

end A339896.P16192417185353502283

namespace A339896

/-- `A318995(n+1)+A255201(n+1)/2-A339894(n+1)` -/
def P16192417185353502283.Spec : Prop :=
  ∀ n, P16192417185353502283.a n = (A339896 (n + 1) : ℚ)

end A339896

/-! ## A339896.P131408357973933494

`A249338(A249339(n+1)+1)-A339894(n+1)`
-/

namespace A339896.P131408357973933494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249338 (A249339 (n + 1) + 1).toNat - A339894 (n + 1)

end

end A339896.P131408357973933494

namespace A339896

/-- `A249338(A249339(n+1)+1)-A339894(n+1)` -/
def P131408357973933494.Spec : Prop :=
  ∀ n, P131408357973933494.a n = A339896 (n + 1)

end A339896

/-!
# A339897: The position of the first n in A339895.

The programs for A339897, there is no canonical definition to state claims against.
-/

/-! ## A339897.P1588427326695012715

`A249327(A014813(n+1))`
-/

namespace A339897.P1588427326695012715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249327 (A014813 (n + 1)).toNat

end

end A339897.P1588427326695012715

/-!
# A339898: a(n) = A019565(2n)-1 mod A000265(phi(A019565(2n))).

The programs for A339898, there is no canonical definition to state claims against.
-/

/-! ## A339898.P12766351809780251182

`A339809(2*n)%A339971(n)`
-/

namespace A339898.P12766351809780251182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339809 (2 * n)) (A339971 n)

end

end A339898.P12766351809780251182

/-! ## A339898.P6950338172315133085

`A253885(A339809(n))%A339971(n)`
-/

namespace A339898.P6950338172315133085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253885 (A339809 n).toNat) (A339971 n)

end

end A339898.P6950338172315133085

/-! ## A339898.P9468852606120700401

`A219428(A019565(2*n))%A339971(n)`
-/

namespace A339898.P9468852606120700401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219428 (A019565 (2 * n)).toNat) (A339971 n)

end

end A339898.P9468852606120700401

/-!
# A339899: a(n) = gcd(A019565(2n)-1, A000265(phi(A019565(2n)))).

The programs for A339899, there is no canonical definition to state claims against.
-/

/-! ## A339899.P11023232998958411298

`A339971(n)/A339901(n)`
-/

namespace A339899.P11023232998958411298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339971 n : ℚ) / (A339901 n : ℚ)

end

end A339899.P11023232998958411298

/-! ## A339899.P7964354660813228828

`gcd(A339971(n), A339898(n))`
-/

namespace A339899.P7964354660813228828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A339971 n) (A339898 n)

end

end A339899.P7964354660813228828

/-! ## A339899.P15664919524313214397

`A000265(A049559(A019565(2*n)))`
-/

namespace A339899.P15664919524313214397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A049559 (A019565 (2 * n)).toNat).toNat

end

end A339899.P15664919524313214397

/-! ## A339899.P7078095487583656186

`A339972(floor(n/4))/A339901(n)`
-/

namespace A339899.P7078095487583656186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339972 ⌊(n : ℚ) / 4⌋.toNat : ℚ) / (A339901 n : ℚ)

end

end A339899.P7078095487583656186

/-! ## A339899.P5975023557849789458

`or(1, A339972(A002265(n)))/A339901(n)`
-/

namespace A339899.P5975023557849789458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (A339972 (A002265 n).toNat) : ℚ) / (A339901 n : ℚ)

end

end A339899.P5975023557849789458

/-! ## A339899.P16983457550938589954

`gcd(A339809(2*n), A339901(n+1))`
-/

namespace A339899.P16983457550938589954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A339809 (2 * n)) (A339901 (n + 1))

end

end A339899.P16983457550938589954

/-! ## A339899.P6728858486823416973

`gcd(A000265(A339971(n)), A339809(2*n))`
-/

namespace A339899.P6728858486823416973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000265 (A339971 n).toNat) (A339809 (2 * n))

end

end A339899.P6728858486823416973

/-! ## A339899.P5319400324615436085

`A000265(A339821(n)/A339901(n))`
-/

namespace A339899.P5319400324615436085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A339821 n : ℚ) / (A339901 n : ℚ))).toNat

end

end A339899.P5319400324615436085

/-! ## A339899.P10350812922465821609

`∏{p}[A019565(n), A339903(#)]/A339901(n)`
-/

namespace A339899.P10350812922465821609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A339903 p : ℤ) : ℚ) / (A339901 n : ℚ)

end

end A339899.P10350812922465821609

/-! ## A339899.P16247513218674544547

`A093803(A340071(A019565(n)))`
-/

namespace A339899.P16247513218674544547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093803 (A340071 (A019565 n).toNat).toNat

end

end A339899.P16247513218674544547

