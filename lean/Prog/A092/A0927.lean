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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
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
import Seq.B007.C002
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
# A092702: If P(n) is the product of the first n Mersenne primes, then a(n) is the smallest positive integer such that 2*a(n)*P(n)-1 is prime.

The programs for A092702, there is no canonical definition to state claims against.
-/

/-! ## A092702.P9954712439023034042

`A098919(n+1)/2`
-/

namespace A092702.P9954712439023034042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098919 (n + 1) : ℚ) / 2

end

end A092702.P9954712439023034042

/-! ## A092702.P869200091806343036

`A001281(A098919(n+1))`
-/

namespace A092702.P869200091806343036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A098919 (n + 1)).toNat

end

end A092702.P869200091806343036

/-! ## A092702.P11959874213037247936

`A004524(A098919(n+1)+1)`
-/

namespace A092702.P11959874213037247936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A098919 (n + 1) + 1).toNat

end

end A092702.P11959874213037247936

/-! ## A092702.P15401631385097625198

`A004526(A098919(n+1)+1)`
-/

namespace A092702.P15401631385097625198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A098919 (n + 1) + 1).toNat

end

end A092702.P15401631385097625198

/-! ## A092702.P3157118426447587979

`A028242(A098919(n+1)+1)`
-/

namespace A092702.P3157118426447587979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A098919 (n + 1) + 1).toNat

end

end A092702.P3157118426447587979

/-!
# A092703: Ooguri-Vafa invariants of disk degeneracies for brane III in the O(K)->P^1 x P^1 geometry.

The programs for A092703, there is no canonical definition to state claims against.
-/

/-! ## A092703.P2028379274014273604

`-A054861(A000081(3*n)/A057728(n+1))`
-/

namespace A092703.P2028379274014273604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A054861 (SequenceMachineLib.roundAway ((A000081 (3 * n) : ℚ) / (A057728 (n + 1) : ℚ))).toNat

end

end A092703.P2028379274014273604

/-!
# A092707: Ooguri-Vafa invariants of disk degeneracies for brane III in the O(K) -> P^1 x P^1 geometry.

The programs for A092707, there is no canonical definition to state claims against.
-/

/-! ## A092707.P17566712101757229676

`A362284(A229182(n))`
-/

namespace A092707.P17566712101757229676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362284 (A229182 n).toNat

end

end A092707.P17566712101757229676

/-! ## A092707.P9060589199115307610

`5*A343984(A006229(n))`
-/

namespace A092707.P9060589199115307610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A343984 (A006229 n).toNat

end

end A092707.P9060589199115307610

/-!
# A092708: Ooguri-Vafa invariants of disk degeneracies for brane III in the O(K) -> P^1 x P^1 geometry.

The programs for A092708, there is no canonical definition to state claims against.
-/

/-! ## A092708.P12744016153405246527

`A350633(C(2*n, 5))`
-/

namespace A092708.P12744016153405246527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350633 (Nat.choose (2 * n) 5)

end

end A092708.P12744016153405246527

/-!
# A092709: Ooguri-Vafa invariants of disk degeneracies for brane III in the O(K) -> P^1 x P^1 geometry.

The programs for A092709, there is no canonical definition to state claims against.
-/

/-! ## A092709.P7841053267971221480

`A348325(A042185(n))`
-/

namespace A092709.P7841053267971221480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348325 (A042185 n).toNat

end

end A092709.P7841053267971221480

/-!
# A092710: Ooguri-Vafa invariants of disk degeneracies for brane III in the O(K) -> P^1 x P^1 geometry.

The programs for A092710, there is no canonical definition to state claims against.
-/

/-! ## A092710.P11319038257130942956

`∏[8*(n+2)]%A226962(n+1)`
-/

namespace A092710.P11319038257130942956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A226962 (n + 1))

end

end A092710.P11319038257130942956

/-!
# A092711: Ooguri-Vafa invariants of disk degeneracies for brane III in the O(K) -> P^1 x P^1 geometry.

The programs for A092711, there is no canonical definition to state claims against.
-/

/-! ## A092711.P2170484324273812095

`A062707(abs(1-n)*A272791(n))`
-/

namespace A092711.P2170484324273812095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 (|1 - (n : ℤ)| * A272791 n).toNat

end

end A092711.P2170484324273812095

/-!
# A092713: Ooguri-Vafa invariants of disk degeneracies for brane III in the O(K) -> P^1 x P^1 geometry.

The programs for A092713, there is no canonical definition to state claims against.
-/

/-! ## A092713.P10378287333691292000

`A001222(n^C(n, 5))*∑[∑[n-3]]`
-/

namespace A092713.P10378287333691292000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ Nat.choose n 5) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092713.P10378287333691292000

/-! ## A092713.P368602583212038660

`-A284103(∏[A062484(n)])`
-/

namespace A092713.P368602583212038660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A284103 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A092713.P368602583212038660

/-! ## A092713.P12703574822613989578

`A280781(n)-A266534(A280781(n))`
-/

namespace A092713.P12703574822613989578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280781 n - A266534 (A280781 n).toNat

end

end A092713.P12703574822613989578

/-!
# A092714: Ooguri-Vafa invariants of disk degeneracies for brane III in the O(K) -> P^1 x P^1 geometry.

The programs for A092714, there is no canonical definition to state claims against.
-/

/-! ## A092714.P16910909116400217818

`A307847(n+2)-A161409(A320643(n+1))`
-/

namespace A092714.P16910909116400217818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307847 (n + 2) - A161409 (A320643 (n + 1)).toNat

end

end A092714.P16910909116400217818

/-! ## A092714.P4054258316973335975

`A008779(A048720(n))-A096751(A000294(n))`
-/

namespace A092714.P4054258316973335975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008779 (A048720 n).toNat - A096751 (A000294 n).toNat

end

end A092714.P4054258316973335975

/-!
# A092716: Ooguri-Vafa invariants of disk degeneracies for brane III in the O(K) -> P^1 x P^1 geometry.

The programs for A092716, there is no canonical definition to state claims against.
-/

/-! ## A092716.P17674157426743459121

`A325977(A005442(n))*A342379(n)`
-/

namespace A092716.P17674157426743459121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325977 (A005442 n).toNat * A342379 n

end

end A092716.P17674157426743459121

/-!
# A092718: Ooguri-Vafa invariants of disk degeneracies for brane III in the O(K) -> P^1 x P^1 geometry.

The programs for A092718, there is no canonical definition to state claims against.
-/

/-! ## A092718.P2454842399267629651

`A059995(A307093(n)²)`
-/

namespace A092718.P2454842399267629651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A307093 n ^ 2).toNat

end

end A092718.P2454842399267629651

/-! ## A092718.P11770399513506938656

`A059995(A307093(n)^2)`
-/

namespace A092718.P11770399513506938656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A307093 n ^ 2).toNat

end

end A092718.P11770399513506938656

/-!
# A092719: Ooguri-Vafa invariants of disk degeneracies for brane III in the O(K) -> P^1 x P^1 geometry.

The programs for A092719, there is no canonical definition to state claims against.
-/

/-! ## A092719.P12439182857370686315

`A338608(A338647(n+1))%A338645(n)`
-/

namespace A092719.P12439182857370686315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338608 (A338647 (n + 1)).toNat) (A338645 n)

end

end A092719.P12439182857370686315

/-! ## A092719.P4625584320593820855

`A024906(3*(n+1))*A363492(A364523(n))`
-/

namespace A092719.P4625584320593820855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024906 (3 * (n + 1)) * A363492 (A364523 n).toNat

end

end A092719.P4625584320593820855

/-! ## A092719.P18172961742191892340

`A089854(A241710(n+1))*A136798(2*n+2)`
-/

namespace A092719.P18172961742191892340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089854 (A241710 (n + 1)).toNat * A136798 (2 * n + 2)

end

end A092719.P18172961742191892340

/-! ## A092719.P14690239262628588450

`A308839(A347656(A347656(A308841(A347656(n+1)))))`
-/

namespace A092719.P14690239262628588450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308839 (A347656 (A347656 (A308841 (A347656 (n + 1)).toNat).toNat).toNat).toNat

end

end A092719.P14690239262628588450

/-!
# A092720: Ooguri-Vafa invariants of disk degeneracies for brane III in the O(K) -> P^1 x P^1 geometry.

The programs for A092720, there is no canonical definition to state claims against.
-/

/-! ## A092720.P12702592142227043352

`A052912(n)*A180649(A026790(n))`
-/

namespace A092720.P12702592142227043352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052912 n * A180649 (A026790 n).toNat

end

end A092720.P12702592142227043352

/-! ## A092720.P9757257445385791723

`A004273(n)*A257684(A339626(n))`
-/

namespace A092720.P9757257445385791723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n * A257684 (A339626 n).toNat

end

end A092720.P9757257445385791723

/-! ## A092720.P13820302739562968574

`A032020(n)*A257684(A339626(n))`
-/

namespace A092720.P13820302739562968574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n * A257684 (A339626 n).toNat

end

end A092720.P13820302739562968574

/-!
# A092721: Ooguri-Vafa invariants of disk degeneracies for brane III in the O(K) -> P^1 x P^1 geometry.

The programs for A092721, there is no canonical definition to state claims against.
-/

/-! ## A092721.P7709713687100948706

`A054753(2*n+3)*A326541(A324838(n+1))`
-/

namespace A092721.P7709713687100948706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (2 * n + 3) * A326541 (A324838 (n + 1)).toNat

end

end A092721.P7709713687100948706

/-!
# A092723: Ooguri-Vafa invariants of disk degeneracies for brane III in the O(K) -> P^1 x P^1 geometry.

The programs for A092723, there is no canonical definition to state claims against.
-/

/-! ## A092723.P12953027608350422960

`A034851(n)-A291636(A250283(n))`
-/

namespace A092723.P12953027608350422960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 n - A291636 (A250283 n).toNat

end

end A092723.P12953027608350422960

/-! ## A092723.P14557667079984541505

`A147151(n+1)-A147175(A361852(n+1))`
-/

namespace A092723.P14557667079984541505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147151 (n + 1) - A147175 (A361852 (n + 1)).toNat

end

end A092723.P14557667079984541505

/-! ## A092723.P14019335544097253114

`A147166(n+1)-A147175(A361852(n+1))`
-/

namespace A092723.P14019335544097253114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147166 (n + 1) - A147175 (A361852 (n + 1)).toNat

end

end A092723.P14019335544097253114

/-! ## A092723.P5451469016024776543

`A147182(n+1)-A147175(A361852(n+1))`
-/

namespace A092723.P5451469016024776543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147182 (n + 1) - A147175 (A361852 (n + 1)).toNat

end

end A092723.P5451469016024776543

/-!
# A092724: Ooguri-Vafa invariants of disk degeneracies for brane III in the O(K) -> P^1 x P^1 geometry.

The programs for A092724, there is no canonical definition to state claims against.
-/

/-! ## A092724.P2708789389732413020

`-and(A210379(3*n+1), A241709(n+2))`
-/

namespace A092724.P2708789389732413020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.land (A210379 (3 * n + 1)) (A241709 (n + 2))

end

end A092724.P2708789389732413020

/-!
# A092728: Primes prime(k) such that prime(k)*prime(k+1)-4 is a prime.

The programs for A092728, there is no canonical definition to state claims against.
-/

/-! ## A092728.P9345634671509668001

`A020639(A092761(n+1)+4)`
-/

namespace A092728.P9345634671509668001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A092761 (n + 1) + 4).toNat

end

end A092728.P9345634671509668001

/-! ## A092728.P5704849398651738733

`A057237(A092761(n+1)+4)+1`
-/

namespace A092728.P5704849398651738733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (A092761 (n + 1) + 4).toNat + 1

end

end A092728.P5704849398651738733

/-! ## A092728.P2304422719365368742

`A020639(p?[A124669(n+1)-2]+4)`
-/

namespace A092728.P2304422719365368742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124669 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 4).toNat

end

end A092728.P2304422719365368742

/-! ## A092728.P7192739480994154610

`A020639(p?[A023515(n+1)-3]+4)`
-/

namespace A092728.P7192739480994154610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 4).toNat

end

end A092728.P7192739480994154610

/-!
# A092733: Sum of two consecutive primes of the form 2^x+1 (including Fermat primes and 2).

The programs for A092733, there is no canonical definition to state claims against.
-/

/-! ## A092733.P4960506472626352688

`A005418(2^n+2)+2`
-/

namespace A092733.P4960506472626352688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (2 ^ n + 2) + 2

end

end A092733.P4960506472626352688

/-!
# A092738: Primes of the form prime(x)+prime(x+1)+1.

The programs for A092738, the canonical program `A092738.P4329942104001365839` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092738 has offset 1).

The definition of A092738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092738.P5237265193579843021

`p?[A092949(n+1)]`
-/

namespace A092738.P5237265193579843021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092738.P5237265193579843021

namespace A092738

/-- `p?[A092949(n+1)]` -/
def P5237265193579843021.Spec : Prop :=
  ∀ n, P5237265193579843021.a n = A092738 (n + 1)

end A092738

/-! ## A092738.P4329942104001365839

`p?[A001043(n+1)+1]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A092738

/-- `p?[A001043(n+1)+1]` -/
def P4329942104001365839.Spec : Prop :=
  ∀ n, P4329942104001365839.a n = A092738 (n + 1)

theorem P4329942104001365839.correct : P4329942104001365839.Spec := by
  intro n
  simp only [A092738, Nat.add_sub_cancel]

end A092738

/-! ## A092738.P5464428762076480063

`p?[A011974(n+2)+1]`
-/

namespace A092738.P5464428762076480063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092738.P5464428762076480063

namespace A092738

/-- `p?[A011974(n+2)+1]` -/
def P5464428762076480063.Spec : Prop :=
  ∀ n, P5464428762076480063.a n = A092738 (n + 1)

end A092738

/-! ## A092738.P16015019095798992674

`p?[A076273(n+1)+2]`
-/

namespace A092738.P16015019095798992674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092738.P16015019095798992674

namespace A092738

/-- `p?[A076273(n+1)+2]` -/
def P16015019095798992674.Spec : Prop :=
  ∀ n, P16015019095798992674.a n = A092738 (n + 1)

end A092738

/-! ## A092738.P2366803092221059645

`p?[A164653(n+2)+1]`
-/

namespace A092738.P2366803092221059645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092738.P2366803092221059645

namespace A092738

/-- `p?[A164653(n+2)+1]` -/
def P2366803092221059645.Spec : Prop :=
  ∀ n, P2366803092221059645.a n = A092738 (n + 1)

end A092738

/-! ## A092738.P1380161134452339941

`p?[2*A024675(n+1)+1]`
-/

namespace A092738.P1380161134452339941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024675 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092738.P1380161134452339941

namespace A092738

/-- `p?[2*A024675(n+1)+1]` -/
def P1380161134452339941.Spec : Prop :=
  ∀ n, P1380161134452339941.a n = A092738 (n + 1)

end A092738

/-! ## A092738.P16830512494388376069

`p?[A028815(n)+A000040(n+1)]`
-/

namespace A092738.P16830512494388376069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092738.P16830512494388376069

namespace A092738

/-- `p?[A028815(n)+A000040(n+1)]` -/
def P16830512494388376069.Spec : Prop :=
  ∀ n, P16830512494388376069.a n = A092738 (n + 1)

end A092738

/-! ## A092738.P11044465838223549877

`p?[A182986(n+2)+A028815(n)]`
-/

namespace A092738.P11044465838223549877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) + A028815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092738.P11044465838223549877

namespace A092738

/-- `p?[A182986(n+2)+A028815(n)]` -/
def P11044465838223549877.Spec : Prop :=
  ∀ n, P11044465838223549877.a n = A092738 (n + 1)

end A092738

/-! ## A092738.P18342702681346777609

`p?[A008864(n+1)+A006005(n+2)]`
-/

namespace A092738.P18342702681346777609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + A006005 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092738.P18342702681346777609

namespace A092738

/-- `p?[A008864(n+1)+A006005(n+2)]` -/
def P18342702681346777609.Spec : Prop :=
  ∀ n, P18342702681346777609.a n = A092738 (n + 1)

end A092738

/-! ## A092738.P14542126266047340338

`p?[A028815(n)+A158611(n+3)]`
-/

namespace A092738.P14542126266047340338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n + A158611 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092738.P14542126266047340338

namespace A092738

/-- `p?[A028815(n)+A158611(n+3)]` -/
def P14542126266047340338.Spec : Prop :=
  ∀ n, P14542126266047340338.a n = A092738 (n + 1)

end A092738

/-! ## A092738.P12542934926378504445

`∩[A059456(n+1), A092949(n+1)]`
-/

namespace A092738.P12542934926378504445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092738.P12542934926378504445

namespace A092738

/-- `∩[A059456(n+1), A092949(n+1)]` -/
def P12542934926378504445.Spec : Prop :=
  ∀ n, (P12542934926378504445.a n : ℤ) = A092738 (n + 1)

end A092738

/-! ## A092738.P56262942231025565

`∩[A071621(n+1), A092949(n+1)]`
-/

namespace A092738.P56262942231025565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092738.P56262942231025565

namespace A092738

/-- `∩[A071621(n+1), A092949(n+1)]` -/
def P56262942231025565.Spec : Prop :=
  ∀ n, (P56262942231025565.a n : ℤ) = A092738 (n + 1)

end A092738

/-! ## A092738.P684284015753851303

`∩[A000040(n+1), A092949(n+1)]`
-/

namespace A092738.P684284015753851303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092738.P684284015753851303

namespace A092738

/-- `∩[A000040(n+1), A092949(n+1)]` -/
def P684284015753851303.Spec : Prop :=
  ∀ n, (P684284015753851303.a n : ℤ) = A092738 (n + 1)

end A092738

/-! ## A092738.P15108082282324018817

`∩[A004139(n+1), A092949(n+1)]`
-/

namespace A092738.P15108082282324018817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092738.P15108082282324018817

namespace A092738

/-- `∩[A004139(n+1), A092949(n+1)]` -/
def P15108082282324018817.Spec : Prop :=
  ∀ n, (P15108082282324018817.a n : ℤ) = A092738 (n + 1)

end A092738

/-! ## A092738.P15809491772128388853

`∩[A006005(n+1), A092949(n+1)]`
-/

namespace A092738.P15809491772128388853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092738.P15809491772128388853

namespace A092738

/-- `∩[A006005(n+1), A092949(n+1)]` -/
def P15809491772128388853.Spec : Prop :=
  ∀ n, (P15809491772128388853.a n : ℤ) = A092738 (n + 1)

end A092738

/-! ## A092738.P13389212215024364434

`∩[A008578(n+1), A092949(n+1)]`
-/

namespace A092738.P13389212215024364434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092738.P13389212215024364434

namespace A092738

/-- `∩[A008578(n+1), A092949(n+1)]` -/
def P13389212215024364434.Spec : Prop :=
  ∀ n, (P13389212215024364434.a n : ℤ) = A092738 (n + 1)

end A092738

/-! ## A092738.P17254205577380290456

`∩[A045319(n+1), A092949(n+1)]`
-/

namespace A092738.P17254205577380290456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092738.P17254205577380290456

namespace A092738

/-- `∩[A045319(n+1), A092949(n+1)]` -/
def P17254205577380290456.Spec : Prop :=
  ∀ n, (P17254205577380290456.a n : ℤ) = A092738 (n + 1)

end A092738

/-! ## A092738.P8188394788741892177

`∩[A045344(n+1), A092949(n+1)]`
-/

namespace A092738.P8188394788741892177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092738.P8188394788741892177

namespace A092738

/-- `∩[A045344(n+1), A092949(n+1)]` -/
def P8188394788741892177.Spec : Prop :=
  ∀ n, (P8188394788741892177.a n : ℤ) = A092738 (n + 1)

end A092738

/-! ## A092738.P14934757016478170435

`∩[A046022(n+1), A092949(n+1)]`
-/

namespace A092738.P14934757016478170435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092738.P14934757016478170435

namespace A092738

/-- `∩[A046022(n+1), A092949(n+1)]` -/
def P14934757016478170435.Spec : Prop :=
  ∀ n, (P14934757016478170435.a n : ℤ) = A092738 (n + 1)

end A092738

/-! ## A092738.P17891786134960906903

`∩[A062972(n+1), A092949(n+1)]`
-/

namespace A092738.P17891786134960906903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092738.P17891786134960906903

namespace A092738

/-- `∩[A062972(n+1), A092949(n+1)]` -/
def P17891786134960906903.Spec : Prop :=
  ∀ n, (P17891786134960906903.a n : ℤ) = A092738 (n + 1)

end A092738

/-!
# A092739: Numbers n such that n*(n+1)/2 is the juxtaposition of two identical strings in binary representation.

The programs for A092739, there is no canonical definition to state claims against.
-/

/-! ## A092739.P17113028337779321115

`record[A113881(A020330(n+1))]`
-/

namespace A092739.P17113028337779321115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 (A020330 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092739.P17113028337779321115

/-! ## A092739.P6473316755426910192

`record[A113881((n+1)*A076877(n+1))]`
-/

namespace A092739.P6473316755426910192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 ((n + 1 : ℤ) * A076877 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092739.P6473316755426910192

/-! ## A092739.P5869209904261048116

`record[A113881((n+1)*(A062383(n+1)+1))]`
-/

namespace A092739.P5869209904261048116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 ((n + 1 : ℤ) * (A062383 (n + 1) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092739.P5869209904261048116

/-! ## A092739.P2837554759470073510

`record[A113881((n+1)*(A003817(n+1)+2))]`
-/

namespace A092739.P2837554759470073510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 ((n + 1 : ℤ) * (A003817 (n + 1) + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092739.P2837554759470073510

/-! ## A092739.P6928168690793090688

`record[A113881((n+1)*(A004755(n+1)-n))]`
-/

namespace A092739.P6928168690793090688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 ((n + 1 : ℤ) * (A004755 (n + 1) - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092739.P6928168690793090688

/-!
# A092740: Primes p such that p^2 - 1 is the sum of two consecutive primes.

The programs for A092740, there is no canonical definition to state claims against.
-/

/-! ## A092740.P13803783240388651904

`ceil(sqrt(2*A225809(n+1)))`
-/

namespace A092740.P13803783240388651904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A225809 (n + 1) : ℝ)⌉

end

end A092740.P13803783240388651904

/-! ## A092740.P17711883268831200222

`floor(sqrt(2*A225809(Δ[n²]-n)))+1`
-/

namespace A092740.P17711883268831200222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A225809 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat) + 1

end

end A092740.P17711883268831200222

/-! ## A092740.P10855383726583036444

`floor(sqrt(2*A225809(n+1))+A008836(n+1)²)`
-/

namespace A092740.P10855383726583036444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 * A225809 (n + 1) : ℝ) + (A008836 (n + 1) ^ 2 : ℝ)⌋

end

end A092740.P10855383726583036444

/-! ## A092740.P3451682674700800710

`A074036(round(sqrt(2*A225809(n+1)+1)))`
-/

namespace A092740.P3451682674700800710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074036 (SequenceMachineLib.roundAway (Real.sqrt (2 * A225809 (n + 1) + 1 : ℝ))).toNat

end

end A092740.P3451682674700800710

/-! ## A092740.P3748923005873216245

`A145051(floor(sqrt(2*A225809(n+1))))`
-/

namespace A092740.P3748923005873216245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145051 (Int.sqrt (2 * A225809 (n + 1))).toNat

end

end A092740.P3748923005873216245

/-! ## A092740.P255076757902517972

`floor(A009001((2*(n+1))²)+sqrt(2*A225809(n+1)))`
-/

namespace A092740.P255076757902517972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A009001 ((2 * (n + 1)) ^ 2) : ℝ) + Real.sqrt (2 * A225809 (n + 1) : ℝ)⌋

end

end A092740.P255076757902517972

/-!
# A092749: a(n) is the least k such that m^2 + m + k is prime for m = 0..n.

The programs for A092749, there is no canonical definition to state claims against.
-/

/-! ## A092749.P4023047865689670801

`A082605(A078767(n+1))`
-/

namespace A092749.P4023047865689670801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082605 (A078767 (n + 1)).toNat

end

end A092749.P4023047865689670801

/-! ## A092749.P16520840354634544338

`A082605(∑[char[A277918(n)]])`
-/

namespace A092749.P16520840354634544338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277918 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082605 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092749.P16520840354634544338

/-! ## A092749.P3919307415644589119

`A007755(A078767(n+1)+2)`
-/

namespace A092749.P3919307415644589119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007755 (A078767 (n + 1) + 2).toNat

end

end A092749.P3919307415644589119

/-! ## A092749.P4500169882088778753

`A277918(∑[char[A277918(n)]])+1`
-/

namespace A092749.P4500169882088778753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277918 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277918 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A092749.P4500169882088778753

/-! ## A092749.P810714223756714726

`A082605(∑[char[A082605(n)-1]])`
-/

namespace A092749.P810714223756714726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082605 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082605 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092749.P810714223756714726

/-!
# A092751: Primes of the form (2*n)!/(n!)^2 - 1.

The programs for A092751, there is no canonical definition to state claims against.
-/

/-! ## A092751.P1150814027867063845

`A030662(A066726(n+1))`
-/

namespace A092751.P1150814027867063845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030662 (A066726 (n + 1)).toNat

end

end A092751.P1150814027867063845

/-! ## A092751.P5723185760105777662

`∩[A030662(n+1), A163074(n+1)]`
-/

namespace A092751.P5723185760105777662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092751.P5723185760105777662

/-! ## A092751.P17592497411264786946

`∩[A163074(n+1), A000984(n)-1]`
-/

namespace A092751.P17592497411264786946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092751.P17592497411264786946

/-!
# A092753: a(n) = smallest m >= 1 such that Sum_{k=1..m} log(k)/k >= n.

The programs for A092753, there is no canonical definition to state claims against.
-/

/-! ## A092753.P520197535952522769

`A175827(n+3)-A175832(A017281(n))`
-/

namespace A092753.P520197535952522769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175827 (n + 3) - A175832 (A017281 n).toNat

end

end A092753.P520197535952522769

/-! ## A092753.P122085362695259847

`∑[A119984(n+1)-A156259(A289060(n))]`
-/

namespace A092753.P122085362695259847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119984 (n + 1) - A156259 (A289060 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092753.P122085362695259847

/-! ## A092753.P12006223985102755876

`A320466(3*n+1)+A070109(A203371(3*(n+1)))`
-/

namespace A092753.P12006223985102755876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320466 (3 * n + 1) + A070109 (A203371 (3 * (n + 1))).toNat

end

end A092753.P12006223985102755876

/-! ## A092753.P5353376404097417702

`∑[A376741(p?[2*n+1])]`
-/

namespace A092753.P5353376404097417702
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376741 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092753.P5353376404097417702

/-! ## A092753.P628635911217123868

`∑[A071673(A003479(n)²)]`
-/

namespace A092753.P628635911217123868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071673 (A003479 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092753.P628635911217123868

/-!
# A092754: a(1)=1, a(2n)=2a(n)+1, a(2n+1)=2a(n)+2.

The programs for A092754, the canonical program `A092754.P1649405258800468850` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092754 has offset 1).

The definition of A092754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092754.P1649405258800468850

`2^floor(log(n+1)/log(2))+n+1-1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092754

/-- `2^floor(log(n+1)/log(2))+n+1-1` -/
def P1649405258800468850.Spec : Prop :=
  ∀ n, P1649405258800468850.a n = (A092754 (n + 1) : ℚ)

end A092754

/-! ## A092754.P678358519783771097

`lt[and(2*n, 4*(n+1)), n]`
-/

namespace A092754.P678358519783771097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n) (4 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A092754.P678358519783771097

namespace A092754

/-- `lt[and(2*n, 4*(n+1)), n]` -/
def P678358519783771097.Spec : Prop :=
  ∀ n, (P678358519783771097.a n : ℤ) = A092754 (n + 1)

end A092754

/-! ## A092754.P5658745328248595575

`abs(1-lt[n, xor(n, floor(n/2))])`
-/

namespace A092754.P5658745328248595575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)|

end

end A092754.P5658745328248595575

namespace A092754

/-- `abs(1-lt[n, xor(n, floor(n/2))])` -/
def P5658745328248595575.Spec : Prop :=
  ∀ n, P5658745328248595575.a n = A092754 (n + 1)

end A092754

/-! ## A092754.P5064180495639002684

`xor(-lt[n, xor(n, floor(n/2))], -1)`
-/

namespace A092754.P5064180495639002684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)) (-1)

end

end A092754.P5064180495639002684

namespace A092754

/-- `xor(-lt[n, xor(n, floor(n/2))], -1)` -/
def P5064180495639002684.Spec : Prop :=
  ∀ n, P5064180495639002684.a n = A092754 (n + 1)

end A092754

/-! ## A092754.P1582455237082328063

`∑[floor((n+3)/(and(n, n+1)+2))]`
-/

namespace A092754.P1582455237082328063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) / (Nat.land n (n + 1) + 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092754.P1582455237082328063

namespace A092754

/-- `∑[floor((n+3)/(and(n, n+1)+2))]` -/
def P1582455237082328063.Spec : Prop :=
  ∀ n, P1582455237082328063.a n = A092754 (n + 1)

end A092754

/-! ## A092754.P16499840971181003314

`lt[2*n+1, xor(n+2, 2*(n+1))]`
-/

namespace A092754.P16499840971181003314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 2) (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A092754.P16499840971181003314

namespace A092754

/-- `lt[2*n+1, xor(n+2, 2*(n+1))]` -/
def P16499840971181003314.Spec : Prop :=
  ∀ n, (P16499840971181003314.a n : ℤ) = A092754 (n + 1)

end A092754

/-! ## A092754.P12261596034701411577

`comp[A003817(n)+n]`
-/

namespace A092754.P12261596034701411577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092754.P12261596034701411577

namespace A092754

/-- `comp[A003817(n)+n]` -/
def P12261596034701411577.Spec : Prop :=
  ∀ n, (P12261596034701411577.a n : ℤ) = A092754 (n + 1)

end A092754

/-! ## A092754.P2042900432923120396

`comp[record[A038572(n)-1]]`
-/

namespace A092754.P2042900432923120396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092754.P2042900432923120396

namespace A092754

/-- `comp[record[A038572(n)-1]]` -/
def P2042900432923120396.Spec : Prop :=
  ∀ n, (P2042900432923120396.a n : ℤ) = A092754 (n + 1)

end A092754

/-! ## A092754.P8714480027684835450

`comp[A004760(n+1)-1]`
-/

namespace A092754.P8714480027684835450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092754.P8714480027684835450

namespace A092754

/-- `comp[A004760(n+1)-1]` -/
def P8714480027684835450.Spec : Prop :=
  ∀ n, (P8714480027684835450.a n : ℤ) = A092754 (n + 1)

end A092754

/-! ## A092754.P5005440422457448323

`comp[3*n-A006257(n)]`
-/

namespace A092754.P5005440422457448323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A006257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092754.P5005440422457448323

namespace A092754

/-- `comp[3*n-A006257(n)]` -/
def P5005440422457448323.Spec : Prop :=
  ∀ n, (P5005440422457448323.a n : ℤ) = A092754 (n + 1)

end A092754

/-! ## A092754.P14462503412012240806

`∑[and(n, A135517(n))+1]`
-/

namespace A092754.P14462503412012240806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A135517 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092754.P14462503412012240806

namespace A092754

/-- `∑[and(n, A135517(n))+1]` -/
def P14462503412012240806.Spec : Prop :=
  ∀ n, P14462503412012240806.a n = A092754 (n + 1)

end A092754

/-! ## A092754.P17519198402186921106

`(A171763(n+1)-3)/2`
-/

namespace A092754.P17519198402186921106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171763 (n + 1) - 3 : ℚ) / 2

end

end A092754.P17519198402186921106

namespace A092754

/-- `(A171763(n+1)-3)/2` -/
def P17519198402186921106.Spec : Prop :=
  ∀ n, P17519198402186921106.a n = (A092754 (n + 1) : ℚ)

end A092754

/-! ## A092754.P6713547099127750493

`(A206332(n+1)+n)/2`
-/

namespace A092754.P6713547099127750493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206332 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A092754.P6713547099127750493

namespace A092754

/-- `(A206332(n+1)+n)/2` -/
def P6713547099127750493.Spec : Prop :=
  ∀ n, P6713547099127750493.a n = (A092754 (n + 1) : ℚ)

end A092754

/-! ## A092754.P12730358115978535214

`∑[n+2-(n+1)/gcd(2, A006530(n+1))]`
-/

namespace A092754.P12730358115978535214
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) - (n + 1 : ℚ) / (Int.gcd 2 (A006530 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092754.P12730358115978535214

namespace A092754

/-- `∑[n+2-(n+1)/gcd(2, A006530(n+1))]` -/
def P12730358115978535214.Spec : Prop :=
  ∀ n, P12730358115978535214.a n = (A092754 (n + 1) : ℚ)

end A092754

/-! ## A092754.P2745611850397057532

`A346304(n+1)%A004756(n+1)`
-/

namespace A092754.P2745611850397057532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346304 (n + 1)) (A004756 (n + 1))

end

end A092754.P2745611850397057532

namespace A092754

/-- `A346304(n+1)%A004756(n+1)` -/
def P2745611850397057532.Spec : Prop :=
  ∀ n, P2745611850397057532.a n = A092754 (n + 1)

end A092754

/-! ## A092754.P2887230170408121764

`xor(A010078(n+1), A092323(n+1))`
-/

namespace A092754.P2887230170408121764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010078 (n + 1)) (A092323 (n + 1))

end

end A092754.P2887230170408121764

namespace A092754

/-- `xor(A010078(n+1), A092323(n+1))` -/
def P2887230170408121764.Spec : Prop :=
  ∀ n, P2887230170408121764.a n = A092754 (n + 1)

end A092754

/-! ## A092754.P2606024083589117995

`xor(A004754(n+1), A135561(n+1))`
-/

namespace A092754.P2606024083589117995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004754 (n + 1)) (A135561 (n + 1))

end

end A092754.P2606024083589117995

namespace A092754

/-- `xor(A004754(n+1), A135561(n+1))` -/
def P2606024083589117995.Spec : Prop :=
  ∀ n, P2606024083589117995.a n = A092754 (n + 1)

end A092754

/-! ## A092754.P6313166879946537762

`(A346303(n+2)-1)/2`
-/

namespace A092754.P6313166879946537762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346303 (n + 2) - 1 : ℚ) / 2

end

end A092754.P6313166879946537762

namespace A092754

/-- `(A346303(n+2)-1)/2` -/
def P6313166879946537762.Spec : Prop :=
  ∀ n, P6313166879946537762.a n = (A092754 (n + 1) : ℚ)

end A092754

/-!
# A092755: Partial sums of A000195 (floor(log(n))).

The programs for A092755, the canonical program `A092755.P5737678061352933745` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092755 has offset 1).

The definition of A092755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092755.P5045385843683332505

`∑[floor(log(n+1))]`
-/

namespace A092755.P5045385843683332505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092755.P5045385843683332505

namespace A092755

/-- `∑[floor(log(n+1))]` -/
def P5045385843683332505.Spec : Prop :=
  ∀ n, P5045385843683332505.a n = A092755 (n + 1)

end A092755

/-! ## A092755.P9472987633071450408

`abs(∑[ceil(log(acot(n+1)))])`
-/

namespace A092755.P9472987633071450408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (SequenceMachineLib.acot (n + 1 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A092755.P9472987633071450408

namespace A092755

/-- `abs(∑[ceil(log(acot(n+1)))])` -/
def P9472987633071450408.Spec : Prop :=
  ∀ n, P9472987633071450408.a n = A092755 (n + 1)

end A092755

/-! ## A092755.P14121276419352086319

`-∑[ceil(log(acot(n+1)))]`
-/

namespace A092755.P14121276419352086319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (SequenceMachineLib.acot (n + 1 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092755.P14121276419352086319

namespace A092755

/-- `-∑[ceil(log(acot(n+1)))]` -/
def P14121276419352086319.Spec : Prop :=
  ∀ n, P14121276419352086319.a n = A092755 (n + 1)

end A092755

/-! ## A092755.P7944724463790668450

`floor(a(n-1)+log(n+1))` with `a(0)=0`
-/

namespace A092755.P7944724463790668450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℝ) + Real.log (n + 1 : ℝ)⌋

end

end A092755.P7944724463790668450

namespace A092755

/-- `floor(a(n-1)+log(n+1))` -/
def P7944724463790668450.Spec : Prop :=
  ∀ n, P7944724463790668450.a n = A092755 (n + 1)

end A092755

/-! ## A092755.P13965981362841017754

`A279539(n+1)-n`
-/

namespace A092755.P13965981362841017754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279539 (n + 1) - (n : ℤ)

end

end A092755.P13965981362841017754

namespace A092755

/-- `A279539(n+1)-n` -/
def P13965981362841017754.Spec : Prop :=
  ∀ n, P13965981362841017754.a n = A092755 (n + 1)

end A092755

/-! ## A092755.P5737678061352933745

`∑[A004233(n+1)]-n`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A092755

/-- `∑[A004233(n+1)]-n` -/
def P5737678061352933745.Spec : Prop :=
  ∀ n, P5737678061352933745.a n = A092755 (n + 1)

theorem P5737678061352933745.correct : P5737678061352933745.Spec := by
  intro n
  simp only [A092755, Nat.add_sub_cancel]

end A092755

/-! ## A092755.P7743539587486609652

`A000195(n+1)+a(n-1)` with `a(0)=0`
-/

namespace A092755.P7743539587486609652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000195 (n + 1) + a (n - 1)

end

end A092755.P7743539587486609652

namespace A092755

/-- `A000195(n+1)+a(n-1)` -/
def P7743539587486609652.Spec : Prop :=
  ∀ n, P7743539587486609652.a n = A092755 (n + 1)

end A092755

/-! ## A092755.P11343056259965070099

`∑[A000195(n+1)]+C(n, A004277(n))²`
-/

namespace A092755.P11343056259965070099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose n (A004277 n).toNat ^ 2 : ℤ)

end

end A092755.P11343056259965070099

namespace A092755

/-- `∑[A000195(n+1)]+C(n, A004277(n))²` -/
def P11343056259965070099.Spec : Prop :=
  ∀ n, P11343056259965070099.a n = A092755 (n + 1)

end A092755

/-! ## A092755.P16706645156561016591

`A002145(n+1)%2*∑[A000195(n+1)]`
-/

namespace A092755.P16706645156561016591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002145 (n + 1)) 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092755.P16706645156561016591

namespace A092755

/-- `A002145(n+1)%2*∑[A000195(n+1)]` -/
def P16706645156561016591.Spec : Prop :=
  ∀ n, P16706645156561016591.a n = A092755 (n + 1)

end A092755

/-! ## A092755.P2002935440585047586

`A085046(n+1)%2*∑[A000195(n+1)]`
-/

namespace A092755.P2002935440585047586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085046 (n + 1)) 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092755.P2002935440585047586

namespace A092755

/-- `A085046(n+1)%2*∑[A000195(n+1)]` -/
def P2002935440585047586.Spec : Prop :=
  ∀ n, P2002935440585047586.a n = A092755 (n + 1)

end A092755

/-! ## A092755.P11165589049714624947

`A109613(n+2)%2*∑[A000195(n+1)]`
-/

namespace A092755.P11165589049714624947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109613 (n + 2)) 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092755.P11165589049714624947

namespace A092755

/-- `A109613(n+2)%2*∑[A000195(n+1)]` -/
def P11165589049714624947.Spec : Prop :=
  ∀ n, P11165589049714624947.a n = A092755 (n + 1)

end A092755

/-! ## A092755.P4451878306585766078

`∑[A000195(n+1)]+A008683(A002145(n+1)+1)`
-/

namespace A092755.P4451878306585766078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A008683 (A002145 (n + 1) + 1).toNat

end

end A092755.P4451878306585766078

namespace A092755

/-- `∑[A000195(n+1)]+A008683(A002145(n+1)+1)` -/
def P4451878306585766078.Spec : Prop :=
  ∀ n, P4451878306585766078.a n = A092755 (n + 1)

end A092755

/-! ## A092755.P1116770204543223017

`A289207(A292621(n+1))`
-/

namespace A092755.P1116770204543223017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A292621 (n + 1)).toNat

end

end A092755.P1116770204543223017

namespace A092755

/-- `A289207(A292621(n+1))` -/
def P1116770204543223017.Spec : Prop :=
  ∀ n, P1116770204543223017.a n = A092755 (n + 1)

end A092755

/-! ## A092755.P13940715195700035825

`∑[A000195(n+1)]%A000079(n)`
-/

namespace A092755.P13940715195700035825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000079 n)

end

end A092755.P13940715195700035825

namespace A092755

/-- `∑[A000195(n+1)]%A000079(n)` -/
def P13940715195700035825.Spec : Prop :=
  ∀ n, P13940715195700035825.a n = A092755 (n + 1)

end A092755

/-!
# A092756: Partial sums of round(exp(n)).

The programs for A092756, the canonical program `A092756.P16734893900534890421` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092756 has offset 1).

The definition of A092756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092756.P176722438716434799

`∑[round(exp(n+1))]`
-/

namespace A092756.P176722438716434799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp (n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092756.P176722438716434799

namespace A092756

/-- `∑[round(exp(n+1))]` -/
def P176722438716434799.Spec : Prop :=
  ∀ n, P176722438716434799.a n = A092756 (n + 1)

end A092756

/-! ## A092756.P4808971024861643354

`round(a(n-1)+exp(n+1))` with `a(0)=3`
-/

namespace A092756.P4808971024861643354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + Real.exp (n + 1 : ℝ))

end

end A092756.P4808971024861643354

namespace A092756

/-- `round(a(n-1)+exp(n+1))` -/
def P4808971024861643354.Spec : Prop :=
  ∀ n, P4808971024861643354.a n = A092756 (n + 1)

end A092756

/-! ## A092756.P16734893900534890421

`and(∑[A000227(n+1)], -1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A092756

/-- `and(∑[A000227(n+1)], -1)` -/
def P16734893900534890421.Spec : Prop :=
  ∀ n, P16734893900534890421.a n = A092756 (n + 1)

theorem P16734893900534890421.correct : P16734893900534890421.Spec := by
  intro n
  simp only [A092756, Nat.add_sub_cancel]

end A092756

/-! ## A092756.P638778297566500971

`∑[round(2*sinh(n+1))]+1`
-/

namespace A092756.P638778297566500971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * Real.sinh (n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A092756.P638778297566500971

namespace A092756

/-- `∑[round(2*sinh(n+1))]+1` -/
def P638778297566500971.Spec : Prop :=
  ∀ n, P638778297566500971.a n = A092756 (n + 1)

end A092756

/-! ## A092756.P4481700870355602940

`a(n-1)+round(2*sinh(n+1))` with `a(0)=3`
-/

namespace A092756.P4481700870355602940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + SequenceMachineLib.roundAway (2 * Real.sinh (n + 1 : ℝ))

end

end A092756.P4481700870355602940

namespace A092756

/-- `a(n-1)+round(2*sinh(n+1))` -/
def P4481700870355602940.Spec : Prop :=
  ∀ n, P4481700870355602940.a n = A092756 (n + 1)

end A092756

/-!
# A092757: Partial sums of round(log_2(n)).

The programs for A092757, the canonical program `A092757.P8927034307755694679` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092757 has offset 1).

The definition of A092757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092757.P12375680483006753192

`∑[round(log2(n+1))]`
-/

namespace A092757.P12375680483006753192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092757.P12375680483006753192

namespace A092757

/-- `∑[round(log2(n+1))]` -/
def P12375680483006753192.Spec : Prop :=
  ∀ n, P12375680483006753192.a n = A092757 (n + 1)

end A092757

/-! ## A092757.P15358628451432494796

`round(a(n-1)+log2(n+1))` with `a(0)=0`
-/

namespace A092757.P15358628451432494796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + Real.logb 2 (n + 1 : ℝ))

end

end A092757.P15358628451432494796

namespace A092757

/-- `round(a(n-1)+log2(n+1))` -/
def P15358628451432494796.Spec : Prop :=
  ∀ n, P15358628451432494796.a n = A092757 (n + 1)

end A092757

/-! ## A092757.P17271868344677616232

`or(∑[A004257(n+1)], char[1])`
-/

namespace A092757.P17271868344677616232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004257 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A092757.P17271868344677616232

namespace A092757

/-- `or(∑[A004257(n+1)], char[1])` -/
def P17271868344677616232.Spec : Prop :=
  ∀ n, P17271868344677616232.a n = A092757 (n + 1)

end A092757

/-! ## A092757.P10962307669177064649

`floor(a(n-1)+log2(A001951(n+1)))` with `a(0)=0, a(1)=1`
-/

namespace A092757.P10962307669177064649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(a (n - 1) : ℝ) + Real.logb 2 (A001951 (n + 1) : ℝ)⌋

end

end A092757.P10962307669177064649

namespace A092757

/-- `floor(a(n-1)+log2(A001951(n+1)))` -/
def P10962307669177064649.Spec : Prop :=
  ∀ n, P10962307669177064649.a n = A092757 (n + 1)

end A092757

/-! ## A092757.P8927034307755694679

`∑[A004257(n+1)]%A080335(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A092757

/-- `∑[A004257(n+1)]%A080335(n)` -/
def P8927034307755694679.Spec : Prop :=
  ∀ n, P8927034307755694679.a n = A092757 (n + 1)

theorem P8927034307755694679.correct : P8927034307755694679.Spec := by
  intro n
  simp only [A092757, Nat.add_sub_cancel]

end A092757

/-! ## A092757.P737646362766613293

`∑{d}[∑[A004257(n+1)], A000010(#)]`
-/

namespace A092757.P737646362766613293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004257 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A092757.P737646362766613293

namespace A092757

/-- `∑{d}[∑[A004257(n+1)], A000010(#)]` -/
def P737646362766613293.Spec : Prop :=
  ∀ n, P737646362766613293.a n = A092757 (n + 1)

end A092757

/-! ## A092757.P3334512175073502302

`∑[A029837(ceil((n+1)*sqrt(2)))]-(n+1)`
-/

namespace A092757.P3334512175073502302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 ⌈(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A092757.P3334512175073502302

namespace A092757

/-- `∑[A029837(ceil((n+1)*sqrt(2)))]-(n+1)` -/
def P3334512175073502302.Spec : Prop :=
  ∀ n, P3334512175073502302.a n = A092757 (n + 1)

end A092757

/-! ## A092757.P7325015507854815613

`A014963(6*(n+1))*∑[A004257(n+1)]`
-/

namespace A092757.P7325015507854815613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092757.P7325015507854815613

namespace A092757

/-- `A014963(6*(n+1))*∑[A004257(n+1)]` -/
def P7325015507854815613.Spec : Prop :=
  ∀ n, P7325015507854815613.a n = A092757 (n + 1)

end A092757

/-!
# A092759: a(n) = prime(n)^7.

The programs for A092759, the canonical program `A092759.P10365930146465751826` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092759 has offset 1).

The definition of A092759 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A092759.P10365930146465751826

`A000040(n+1)^7`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A092759

/-- `A000040(n+1)^7` -/
def P10365930146465751826.Spec : Prop :=
  ∀ n, P10365930146465751826.a n = A092759 (n + 1)

theorem P10365930146465751826.correct : P10365930146465751826.Spec := by
  intro n
  simp only [A092759, Nat.add_sub_cancel]

end A092759

/-! ## A092759.P6177256162207701018

`A001015(A000040(n+1))`
-/

namespace A092759.P6177256162207701018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (A000040 (n + 1)).toNat

end

end A092759.P6177256162207701018

namespace A092759

/-- `A001015(A000040(n+1))` -/
def P6177256162207701018.Spec : Prop :=
  ∀ n, P6177256162207701018.a n = A092759 (n + 1)

end A092759

/-! ## A092759.P6572176004139560909

`p?[a(n-1)+2]^7` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A092759.P6572176004139560909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 7

end

end A092759.P6572176004139560909

namespace A092759

/-- `p?[a(n-1)+2]^7` -/
def P6572176004139560909.Spec : Prop :=
  ∀ n, (P6572176004139560909.a n : ℤ) = A092759 (n + 1)

end A092759

/-! ## A092759.P13463638025587133060

`A135182(n+1)+A098935(n+1)`
-/

namespace A092759.P13463638025587133060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135182 (n + 1) + A098935 (n + 1)

end

end A092759.P13463638025587133060

namespace A092759

/-- `A135182(n+1)+A098935(n+1)` -/
def P13463638025587133060.Spec : Prop :=
  ∀ n, P13463638025587133060.a n = A092759 (n + 1)

end A092759

/-! ## A092759.P1969557151087142103

`A133538(n+1)-A086874(n+1)`
-/

namespace A092759.P1969557151087142103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133538 (n + 1) - A086874 (n + 1)

end

end A092759.P1969557151087142103

namespace A092759

/-- `A133538(n+1)-A086874(n+1)` -/
def P1969557151087142103.Spec : Prop :=
  ∀ n, P1969557151087142103.a n = A092759 (n + 1)

end A092759

/-! ## A092759.P13225641883719302198

`A000040(n+1)*A030516(n+1)`
-/

namespace A092759.P13225641883719302198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A030516 (n + 1)

end

end A092759.P13225641883719302198

namespace A092759

/-- `A000040(n+1)*A030516(n+1)` -/
def P13225641883719302198.Spec : Prop :=
  ∀ n, P13225641883719302198.a n = A092759 (n + 1)

end A092759

/-! ## A092759.P14600957181971591941

`A001248(n+1)*A050997(n+1)`
-/

namespace A092759.P14600957181971591941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A050997 (n + 1)

end

end A092759.P14600957181971591941

namespace A092759

/-- `A001248(n+1)*A050997(n+1)` -/
def P14600957181971591941.Spec : Prop :=
  ∀ n, P14600957181971591941.a n = A092759 (n + 1)

end A092759

/-! ## A092759.P13069929326405187077

`A030078(n+1)*A030514(n+1)`
-/

namespace A092759.P13069929326405187077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) * A030514 (n + 1)

end

end A092759.P13069929326405187077

namespace A092759

/-- `A030078(n+1)*A030514(n+1)` -/
def P13069929326405187077.Spec : Prop :=
  ∀ n, P13069929326405187077.a n = A092759 (n + 1)

end A092759

/-! ## A092759.P2206581396302889738

`A030629(n+1)/A030078(n+1)`
-/

namespace A092759.P2206581396302889738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030629 (n + 1) : ℚ) / (A030078 (n + 1) : ℚ)

end

end A092759.P2206581396302889738

namespace A092759

/-- `A030629(n+1)/A030078(n+1)` -/
def P2206581396302889738.Spec : Prop :=
  ∀ n, P2206581396302889738.a n = (A092759 (n + 1) : ℚ)

end A092759

/-! ## A092759.P14104071034067832095

`A079395(n+1)/A030514(n+1)`
-/

namespace A092759.P14104071034067832095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079395 (n + 1) : ℚ) / (A030514 (n + 1) : ℚ)

end

end A092759.P14104071034067832095

namespace A092759

/-- `A079395(n+1)/A030514(n+1)` -/
def P14104071034067832095.Spec : Prop :=
  ∀ n, P14104071034067832095.a n = (A092759 (n + 1) : ℚ)

end A092759

/-! ## A092759.P10934107039117573363

`A138031(n+1)/A030516(n+1)`
-/

namespace A092759.P10934107039117573363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138031 (n + 1) : ℚ) / (A030516 (n + 1) : ℚ)

end

end A092759.P10934107039117573363

namespace A092759

/-- `A138031(n+1)/A030516(n+1)` -/
def P10934107039117573363.Spec : Prop :=
  ∀ n, P10934107039117573363.a n = (A092759 (n + 1) : ℚ)

end A092759

/-! ## A092759.P10184360326443772618

`A179645(n+1)/A000040(n+1)`
-/

namespace A092759.P10184360326443772618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179645 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A092759.P10184360326443772618

namespace A092759

/-- `A179645(n+1)/A000040(n+1)` -/
def P10184360326443772618.Spec : Prop :=
  ∀ n, P10184360326443772618.a n = (A092759 (n + 1) : ℚ)

end A092759

/-! ## A092759.P5147080571548370853

`A179665(n+1)/A001248(n+1)`
-/

namespace A092759.P5147080571548370853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179665 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ)

end

end A092759.P5147080571548370853

namespace A092759

/-- `A179665(n+1)/A001248(n+1)` -/
def P5147080571548370853.Spec : Prop :=
  ∀ n, P5147080571548370853.a n = (A092759 (n + 1) : ℚ)

end A092759

/-! ## A092759.P4415690977788098585

`A030078(n+1)²*Δ[A007504(n)]`
-/

namespace A092759.P4415690977788098585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) ^ 2 * (f1 (n + 1) - f1 n)

end

end A092759.P4415690977788098585

namespace A092759

/-- `A030078(n+1)²*Δ[A007504(n)]` -/
def P4415690977788098585.Spec : Prop :=
  ∀ n, P4415690977788098585.a n = A092759 (n + 1)

end A092759

/-! ## A092759.P15457282140455446212

`A030078(n+1)²*A000040(n+1)`
-/

namespace A092759.P15457282140455446212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) ^ 2 * A000040 (n + 1)

end

end A092759.P15457282140455446212

namespace A092759

/-- `A030078(n+1)²*A000040(n+1)` -/
def P15457282140455446212.Spec : Prop :=
  ∀ n, P15457282140455446212.a n = A092759 (n + 1)

end A092759

/-! ## A092759.P17975523644292066693

`A001248(n+1)²*A030078(n+1)`
-/

namespace A092759.P17975523644292066693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 2 * A030078 (n + 1)

end

end A092759.P17975523644292066693

namespace A092759

/-- `A001248(n+1)²*A030078(n+1)` -/
def P17975523644292066693.Spec : Prop :=
  ∀ n, P17975523644292066693.a n = A092759 (n + 1)

end A092759

/-! ## A092759.P1192798346753802577

`A000040(n+1)²*A050997(n+1)`
-/

namespace A092759.P1192798346753802577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 * A050997 (n + 1)

end

end A092759.P1192798346753802577

namespace A092759

/-- `A000040(n+1)²*A050997(n+1)` -/
def P1192798346753802577.Spec : Prop :=
  ∀ n, P1192798346753802577.a n = A092759 (n + 1)

end A092759

/-! ## A092759.P9125099729217173511

`A030514(n+1)²/A000040(n+1)`
-/

namespace A092759.P9125099729217173511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030514 (n + 1) ^ 2 : ℚ) / (A000040 (n + 1) : ℚ)

end

end A092759.P9125099729217173511

namespace A092759

/-- `A030514(n+1)²/A000040(n+1)` -/
def P9125099729217173511.Spec : Prop :=
  ∀ n, P9125099729217173511.a n = (A092759 (n + 1) : ℚ)

end A092759

/-! ## A092759.P165207707470457052

`A079395(n+1)/A001248(n+1)²`
-/

namespace A092759.P165207707470457052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079395 (n + 1) : ℚ) / (A001248 (n + 1) ^ 2 : ℚ)

end

end A092759.P165207707470457052

namespace A092759

/-- `A079395(n+1)/A001248(n+1)²` -/
def P165207707470457052.Spec : Prop :=
  ∀ n, P165207707470457052.a n = (A092759 (n + 1) : ℚ)

end A092759

/-! ## A092759.P2275065178226201294

`A050997(n+1)²/A030078(n+1)`
-/

namespace A092759.P2275065178226201294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050997 (n + 1) ^ 2 : ℚ) / (A030078 (n + 1) : ℚ)

end

end A092759.P2275065178226201294

namespace A092759

/-- `A050997(n+1)²/A030078(n+1)` -/
def P2275065178226201294.Spec : Prop :=
  ∀ n, P2275065178226201294.a n = (A092759 (n + 1) : ℚ)

end A092759

/-!
# A092760: Unitary-sigma unitary-phi perfect numbers.

The programs for A092760, there is no canonical definition to state claims against.
-/

/-! ## A092760.P8623638932604994341

`A117343(2^n)`
-/

namespace A092760.P8623638932604994341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117343 (2 ^ n)

end

end A092760.P8623638932604994341

/-!
# A092761: Primes of the form prime(n)*prime(n+1) - 4.

The programs for A092761, there is no canonical definition to state claims against.
-/

/-! ## A092761.P14468517560082648489

`A119416(A092728(n+1))-4`
-/

namespace A092761.P14468517560082648489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119416 (A092728 (n + 1)).toNat - 4

end

end A092761.P14468517560082648489

/-! ## A092761.P6883354387522627884

`p?[p?[xor(1, n)+1]*p?[2*n+1]-4]`
-/

namespace A092761.P6883354387522627884
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) * f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092761.P6883354387522627884

/-! ## A092761.P57580670383514937

`p?[A124669(n+1)-2]`
-/

namespace A092761.P57580670383514937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124669 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092761.P57580670383514937

/-! ## A092761.P7948777966913089614

`p?[A023515(n+1)-3]`
-/

namespace A092761.P7948777966913089614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092761.P7948777966913089614

/-! ## A092761.P5518390030604244414

`p?[A006094(n+1)-4]`
-/

namespace A092761.P5518390030604244414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092761.P5518390030604244414

/-!
# A092763: a(n) = floor(3^n / n).

The programs for A092763, the canonical program `A092763.P10805677205847040433` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092763 has offset 1).

The definition of A092763 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3^(n+1)/(n+1))` (program `A092763.P10805677205847040433`, by `A092763.P10805677205847040433.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092763.P10805677205847040433

`floor(3^(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092763

/-- `floor(3^(n+1)/(n+1))` -/
def P10805677205847040433.Spec : Prop :=
  ∀ n, P10805677205847040433.a n = A092763 (n + 1)

theorem P10805677205847040433.correct : P10805677205847040433.Spec := by
  intro n
  simp only [A092763, Nat.add_sub_cancel]

end A092763

/-! ## A092763.P15768081400272901240

`A225585(n+1)+char[A024023(n)]`
-/

namespace A092763.P15768081400272901240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225585 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A092763.P15768081400272901240

namespace A092763

/-- `A225585(n+1)+char[A024023(n)]` -/
def P15768081400272901240.Spec : Prop :=
  ∀ n, P15768081400272901240.a n = A092763 (n + 1)

end A092763

/-! ## A092763.P17531514490646191949

`A225585(n+1)+A000007(A066440(n+1))`
-/

namespace A092763.P17531514490646191949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225585 (n + 1) + A000007 (A066440 (n + 1)).toNat

end

end A092763.P17531514490646191949

namespace A092763

/-- `A225585(n+1)+A000007(A066440(n+1))` -/
def P17531514490646191949.Spec : Prop :=
  ∀ n, P17531514490646191949.a n = A092763 (n + 1)

end A092763

/-! ## A092763.P14214302076972511423

`A225585(n+1)+A000007(A082511(2*(n+1))%(n+1))`
-/

namespace A092763.P14214302076972511423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225585 (n + 1) + A000007 (Int.tmod (A082511 (2 * (n + 1))) (n + 1 : ℤ)).toNat

end

end A092763.P14214302076972511423

namespace A092763

/-- `A225585(n+1)+A000007(A082511(2*(n+1))%(n+1))` -/
def P14214302076972511423.Spec : Prop :=
  ∀ n, P14214302076972511423.a n = A092763 (n + 1)

end A092763

/-! ## A092763.P6133453371518421535

`(A000244(n+1)-A066601(n+1))/(n+1)`
-/

namespace A092763.P6133453371518421535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 (n + 1) - A066601 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A092763.P6133453371518421535

namespace A092763

/-- `(A000244(n+1)-A066601(n+1))/(n+1)` -/
def P6133453371518421535.Spec : Prop :=
  ∀ n, P6133453371518421535.a n = (A092763 (n + 1) : ℚ)

end A092763

/-! ## A092763.P273465610716857417

`xor(A000007(((3^(n+1))%(n+1))²%(n+1)), A225585(n+1))`
-/

namespace A092763.P273465610716857417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 ((3 ^ (n + 1) % (n + 1)) ^ 2 % (n + 1))) (A225585 (n + 1))

end

end A092763.P273465610716857417

namespace A092763

/-- `xor(A000007(((3^(n+1))%(n+1))²%(n+1)), A225585(n+1))` -/
def P273465610716857417.Spec : Prop :=
  ∀ n, P273465610716857417.a n = A092763 (n + 1)

end A092763

/-! ## A092763.P8973120489269454521

`A129787(n+1)+A129799(n+1)-A129793(n+1)`
-/

namespace A092763.P8973120489269454521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129787 (n + 1) + (A129799 (n + 1) - A129793 (n + 1))

end

end A092763.P8973120489269454521

namespace A092763

/-- `A129787(n+1)+A129799(n+1)-A129793(n+1)` -/
def P8973120489269454521.Spec : Prop :=
  ∀ n, P8973120489269454521.a n = A092763 (n + 1)

end A092763

/-! ## A092763.P13832450919715930243

`xor(A000007((9^(n+1))%(n+1)), A225585(n+1))`
-/

namespace A092763.P13832450919715930243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (9 ^ (n + 1) % (n + 1))) (A225585 (n + 1))

end

end A092763.P13832450919715930243

namespace A092763

/-- `xor(A000007((9^(n+1))%(n+1)), A225585(n+1))` -/
def P13832450919715930243.Spec : Prop :=
  ∀ n, P13832450919715930243.a n = A092763 (n + 1)

end A092763

/-! ## A092763.P14589681475876465503

`A060155(A167614(n+1))`
-/

namespace A092763.P14589681475876465503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060155 (A167614 (n + 1)).toNat

end

end A092763.P14589681475876465503

namespace A092763

/-- `A060155(A167614(n+1))` -/
def P14589681475876465503.Spec : Prop :=
  ∀ n, P14589681475876465503.a n = A092763 (n + 1)

end A092763

/-!
# A092764: Primes in the sequence f(n) = n! + n + 1 for n even or n! + n + 2 for n odd.

The programs for A092764, there is no canonical definition to state claims against.
-/

/-! ## A092764.P8412737628223440842

`p?[or(1, n+1)+n!]`
-/

namespace A092764.P8412737628223440842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1) + Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A092764.P8412737628223440842

/-! ## A092764.P1815047926576310489

`p?[A175298(n+1)+n!]`
-/

namespace A092764.P1815047926576310489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 (n + 1) + (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092764.P1815047926576310489

/-!
# A092765: Consider the 1-D random walk with jumps to next-nearest neighbors. Sequence gives number of paths of length n ending at origin.

The programs for A092765, there is no canonical definition to state claims against.
-/

/-! ## A092765.P1018884964551822844

`A036453(n+1)*A211867(n)`
-/

namespace A092765.P1018884964551822844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A211867 n

end

end A092765.P1018884964551822844

/-! ## A092765.P14190964010871394237

`A104435(n+1)*A211867(n)`
-/

namespace A092765.P14190964010871394237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104435 (n + 1) * A211867 n

end

end A092765.P14190964010871394237

/-! ## A092765.P597050788452196532

`(A133263(n)-∑[n])*A211867(n)`
-/

namespace A092765.P597050788452196532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133263 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) * A211867 n

end

end A092765.P597050788452196532

/-! ## A092765.P9120889146034906335

`A211867(A028310(n))+A211867(n)`
-/

namespace A092765.P9120889146034906335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211867 (A028310 n).toNat + A211867 n

end

end A092765.P9120889146034906335

/-! ## A092765.P17943269596254173646

`A000034(A004273(n))*A211867(n)`
-/

namespace A092765.P17943269596254173646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A004273 n).toNat * A211867 n

end

end A092765.P17943269596254173646

/-! ## A092765.P6159550989386903777

`A000034(A040972(n+1))*A211867(n)`
-/

namespace A092765.P6159550989386903777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A040972 (n + 1)).toNat * A211867 n

end

end A092765.P6159550989386903777

/-! ## A092765.P15871019495625122126

`A211867(n)+A211867(n)%A052984(n)`
-/

namespace A092765.P15871019495625122126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211867 n + Int.tmod (A211867 n) (A052984 n)

end

end A092765.P15871019495625122126

/-!
# A092769: Squares of A006450: a(n) = prime(prime(n))^2.

The programs for A092769, the canonical program `A092769.P14315236457722144089` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092769 has offset 1).

The definition of A092769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092769.P14315236457722144089

`A006450(n+1)²`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A092769

/-- `A006450(n+1)²` -/
def P14315236457722144089.Spec : Prop :=
  ∀ n, P14315236457722144089.a n = A092769 (n + 1)

theorem P14315236457722144089.correct : P14315236457722144089.Spec := by
  intro n
  simp only [A092769, Nat.add_sub_cancel]

end A092769

/-! ## A092769.P6830979293311990052

`A092771(n+1)+1`
-/

namespace A092769.P6830979293311990052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092771 (n + 1) + 1

end

end A092769.P6830979293311990052

namespace A092769

/-- `A092771(n+1)+1` -/
def P6830979293311990052.Spec : Prop :=
  ∀ n, P6830979293311990052.a n = A092769 (n + 1)

end A092769

/-! ## A092769.P16674033464722610283

`(A141138(n+1)+1)²`
-/

namespace A092769.P16674033464722610283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A141138 (n + 1) + 1) ^ 2

end

end A092769.P16674033464722610283

namespace A092769

/-- `(A141138(n+1)+1)²` -/
def P16674033464722610283.Spec : Prop :=
  ∀ n, P16674033464722610283.a n = A092769 (n + 1)

end A092769

/-! ## A092769.P2774819360266264213

`2*A092773(n+1)-1`
-/

namespace A092769.P2774819360266264213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092773 (n + 1) - 1

end

end A092769.P2774819360266264213

namespace A092769

/-- `2*A092773(n+1)-1` -/
def P2774819360266264213.Spec : Prop :=
  ∀ n, P2774819360266264213.a n = A092769 (n + 1)

end A092769

/-! ## A092769.P12631578476541953740

`A092770(n+1)^(2/3)`
-/

namespace A092769.P12631578476541953740
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A092770 (n + 1) : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A092769.P12631578476541953740

namespace A092769

/-- `A092770(n+1)^(2/3)` -/
def P12631578476541953740.Spec : Prop :=
  ∀ n, P12631578476541953740.a n = (A092769 (n + 1) : ℝ)

end A092769

/-! ## A092769.P759680957252810743

`(A262021(n+1)+n+1)²`
-/

namespace A092769.P759680957252810743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A262021 (n + 1) + (n + 1 : ℤ)) ^ 2

end

end A092769.P759680957252810743

namespace A092769

/-- `(A262021(n+1)+n+1)²` -/
def P759680957252810743.Spec : Prop :=
  ∀ n, P759680957252810743.a n = A092769 (n + 1)

end A092769

/-! ## A092769.P8688373481912833521

`(A080697(n+1)/(n+1))²`
-/

namespace A092769.P8688373481912833521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A080697 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A092769.P8688373481912833521

namespace A092769

/-- `(A080697(n+1)/(n+1))²` -/
def P8688373481912833521.Spec : Prop :=
  ∀ n, P8688373481912833521.a n = (A092769 (n + 1) : ℚ)

end A092769

/-! ## A092769.P1653973136588919904

`A092770(n+1)/A006450(n+1)`
-/

namespace A092769.P1653973136588919904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092770 (n + 1) : ℚ) / (A006450 (n + 1) : ℚ)

end

end A092769.P1653973136588919904

namespace A092769

/-- `A092770(n+1)/A006450(n+1)` -/
def P1653973136588919904.Spec : Prop :=
  ∀ n, P1653973136588919904.a n = (A092769 (n + 1) : ℚ)

end A092769

/-! ## A092769.P1808166081917637850

`A175247(n+2)²`
-/

namespace A092769.P1808166081917637850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 2) ^ 2

end

end A092769.P1808166081917637850

namespace A092769

/-- `A175247(n+2)²` -/
def P1808166081917637850.Spec : Prop :=
  ∀ n, P1808166081917637850.a n = A092769 (n + 1)

end A092769

/-! ## A092769.P8573853391987534222

`p?[A302596(n+1)]²`
-/

namespace A092769.P8573853391987534222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A092769.P8573853391987534222

namespace A092769

/-- `p?[A302596(n+1)]²` -/
def P8573853391987534222.Spec : Prop :=
  ∀ n, P8573853391987534222.a n = A092769 (n + 1)

end A092769

/-! ## A092769.P2100794843149520921

`p?[A302592(n+3)]²`
-/

namespace A092769.P2100794843149520921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302592 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A092769.P2100794843149520921

namespace A092769

/-- `p?[A302592(n+3)]²` -/
def P2100794843149520921.Spec : Prop :=
  ∀ n, P2100794843149520921.a n = A092769 (n + 1)

end A092769

/-! ## A092769.P773536288215012168

`record[A006450(A133310(n))²]`
-/

namespace A092769.P773536288215012168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A133310 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092769.P773536288215012168

namespace A092769

/-- `record[A006450(A133310(n))²]` -/
def P773536288215012168.Spec : Prop :=
  ∀ n, P773536288215012168.a n = A092769 (n + 1)

end A092769

/-! ## A092769.P9877080051818708001

`record[A006450(A117910(n))²]`
-/

namespace A092769.P9877080051818708001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A117910 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092769.P9877080051818708001

namespace A092769

/-- `record[A006450(A117910(n))²]` -/
def P9877080051818708001.Spec : Prop :=
  ∀ n, P9877080051818708001.a n = A092769 (n + 1)

end A092769

/-! ## A092769.P17680635204714234725

`p?[A302590(n+1)]²`
-/

namespace A092769.P17680635204714234725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A092769.P17680635204714234725

namespace A092769

/-- `p?[A302590(n+1)]²` -/
def P17680635204714234725.Spec : Prop :=
  ∀ n, P17680635204714234725.a n = A092769 (n + 1)

end A092769

/-! ## A092769.P11730854003963743264

`p?[A076610(n+1)]²`
-/

namespace A092769.P11730854003963743264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A092769.P11730854003963743264

namespace A092769

/-- `p?[A076610(n+1)]²` -/
def P11730854003963743264.Spec : Prop :=
  ∀ n, P11730854003963743264.a n = A092769 (n + 1)

end A092769

/-! ## A092769.P17363756324867455267

`A120426(A000040(n+1))²`
-/

namespace A092769.P17363756324867455267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120426 (A000040 (n + 1)).toNat ^ 2

end

end A092769.P17363756324867455267

namespace A092769

/-- `A120426(A000040(n+1))²` -/
def P17363756324867455267.Spec : Prop :=
  ∀ n, P17363756324867455267.a n = A092769 (n + 1)

end A092769

/-! ## A092769.P11670237824545073239

`A120426(A008578(n+2))²`
-/

namespace A092769.P11670237824545073239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120426 (A008578 (n + 2)).toNat ^ 2

end

end A092769.P11670237824545073239

namespace A092769

/-- `A120426(A008578(n+2))²` -/
def P11670237824545073239.Spec : Prop :=
  ∀ n, P11670237824545073239.a n = A092769 (n + 1)

end A092769

/-! ## A092769.P12919735801825462635

`A006450(n+1)*A120426(A000040(n+1))`
-/

namespace A092769.P12919735801825462635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) * A120426 (A000040 (n + 1)).toNat

end

end A092769.P12919735801825462635

namespace A092769

/-- `A006450(n+1)*A120426(A000040(n+1))` -/
def P12919735801825462635.Spec : Prop :=
  ∀ n, P12919735801825462635.a n = A092769 (n + 1)

end A092769

/-! ## A092769.P4260826975205675611

`p?[A302539(n+3)]²`
-/

namespace A092769.P4260826975205675611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302539 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A092769.P4260826975205675611

namespace A092769

/-- `p?[A302539(n+3)]²` -/
def P4260826975205675611.Spec : Prop :=
  ∀ n, P4260826975205675611.a n = A092769 (n + 1)

end A092769

/-! ## A092769.P11441307374507021968

`∩[A302491(n+2), A302593(n+2)]²`
-/

namespace A092769.P11441307374507021968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302491 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A092769.P11441307374507021968

namespace A092769

/-- `∩[A302491(n+2), A302593(n+2)]²` -/
def P11441307374507021968.Spec : Prop :=
  ∀ n, (P11441307374507021968.a n : ℤ) = A092769 (n + 1)

end A092769

/-!
# A092770: Cubes of A006450: a(n) = prime(prime(n))^3.

The programs for A092770, the canonical program `A092770.P3673948446089129611` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092770 has offset 1).

The definition of A092770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092770.P3673948446089129611

`A006450(n+1)^3`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A092770

/-- `A006450(n+1)^3` -/
def P3673948446089129611.Spec : Prop :=
  ∀ n, P3673948446089129611.a n = A092770 (n + 1)

theorem P3673948446089129611.correct : P3673948446089129611.Spec := by
  intro n
  simp only [A092770, Nat.add_sub_cancel]

end A092770

/-! ## A092770.P2080441154667060572

`sqrt(A092769(n+1)^3)`
-/

namespace A092770.P2080441154667060572
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A092769 (n + 1) ^ 3 : ℝ)

end

end A092770.P2080441154667060572

namespace A092770

/-- `sqrt(A092769(n+1)^3)` -/
def P2080441154667060572.Spec : Prop :=
  ∀ n, P2080441154667060572.a n = (A092770 (n + 1) : ℝ)

end A092770

/-! ## A092770.P12416988596363589249

`(A141138(n+1)+1)^3`
-/

namespace A092770.P12416988596363589249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A141138 (n + 1) + 1) ^ 3

end

end A092770.P12416988596363589249

namespace A092770

/-- `(A141138(n+1)+1)^3` -/
def P12416988596363589249.Spec : Prop :=
  ∀ n, P12416988596363589249.a n = A092770 (n + 1)

end A092770

/-! ## A092770.P16430862043308044074

`(A262021(n+1)+1+n)^3`
-/

namespace A092770.P16430862043308044074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A262021 (n + 1) + 1 + (n : ℤ)) ^ 3

end

end A092770.P16430862043308044074

namespace A092770

/-- `(A262021(n+1)+1+n)^3` -/
def P16430862043308044074.Spec : Prop :=
  ∀ n, P16430862043308044074.a n = A092770 (n + 1)

end A092770

/-! ## A092770.P17777510126881917155

`(A080697(n+1)/(n+1))^3`
-/

namespace A092770.P17777510126881917155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A080697 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 3

end

end A092770.P17777510126881917155

namespace A092770

/-- `(A080697(n+1)/(n+1))^3` -/
def P17777510126881917155.Spec : Prop :=
  ∀ n, P17777510126881917155.a n = (A092770 (n + 1) : ℚ)

end A092770

/-! ## A092770.P830723722408268273

`A006450(n+1)*A092769(n+1)`
-/

namespace A092770.P830723722408268273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) * A092769 (n + 1)

end

end A092770.P830723722408268273

namespace A092770

/-- `A006450(n+1)*A092769(n+1)` -/
def P830723722408268273.Spec : Prop :=
  ∀ n, P830723722408268273.a n = A092770 (n + 1)

end A092770

/-! ## A092770.P6337856653017846505

`gcd(A080697(n+1), A092769(n+1))*A092769(n+1)`
-/

namespace A092770.P6337856653017846505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A080697 (n + 1)) (A092769 (n + 1)) : ℤ) * A092769 (n + 1)

end

end A092770.P6337856653017846505

namespace A092770

/-- `gcd(A080697(n+1), A092769(n+1))*A092769(n+1)` -/
def P6337856653017846505.Spec : Prop :=
  ∀ n, P6337856653017846505.a n = A092770 (n + 1)

end A092770

/-! ## A092770.P14320687359503356261

`A175247(n+2)^3`
-/

namespace A092770.P14320687359503356261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 2) ^ 3

end

end A092770.P14320687359503356261

namespace A092770

/-- `A175247(n+2)^3` -/
def P14320687359503356261.Spec : Prop :=
  ∀ n, P14320687359503356261.a n = A092770 (n + 1)

end A092770

/-! ## A092770.P9880658604197453755

`A120426(A000040(n+1))²*A006450(n+1)`
-/

namespace A092770.P9880658604197453755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120426 (A000040 (n + 1)).toNat ^ 2 * A006450 (n + 1)

end

end A092770.P9880658604197453755

namespace A092770

/-- `A120426(A000040(n+1))²*A006450(n+1)` -/
def P9880658604197453755.Spec : Prop :=
  ∀ n, P9880658604197453755.a n = A092770 (n + 1)

end A092770

/-! ## A092770.P12439344892192999847

`A030078(Δ[A007504(n)])`
-/

namespace A092770.P12439344892192999847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (f1 (n + 1) - f1 n).toNat

end

end A092770.P12439344892192999847

namespace A092770

/-- `A030078(Δ[A007504(n)])` -/
def P12439344892192999847.Spec : Prop :=
  ∀ n, P12439344892192999847.a n = A092770 (n + 1)

end A092770

/-! ## A092770.P8392053922003197825

`A030078(A000040(n+1))`
-/

namespace A092770.P8392053922003197825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (A000040 (n + 1)).toNat

end

end A092770.P8392053922003197825

namespace A092770

/-- `A030078(A000040(n+1))` -/
def P8392053922003197825.Spec : Prop :=
  ∀ n, P8392053922003197825.a n = A092770 (n + 1)

end A092770

/-! ## A092770.P4670807211197203535

`A030078(A008578(n+2))`
-/

namespace A092770.P4670807211197203535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (A008578 (n + 2)).toNat

end

end A092770.P4670807211197203535

namespace A092770

/-- `A030078(A008578(n+2))` -/
def P4670807211197203535.Spec : Prop :=
  ∀ n, P4670807211197203535.a n = A092770 (n + 1)

end A092770

/-! ## A092770.P9738897773445583516

`A030078(A182986(n+2))`
-/

namespace A092770.P9738897773445583516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (A182986 (n + 2)).toNat

end

end A092770.P9738897773445583516

namespace A092770

/-- `A030078(A182986(n+2))` -/
def P9738897773445583516.Spec : Prop :=
  ∀ n, P9738897773445583516.a n = A092770 (n + 1)

end A092770

/-! ## A092770.P17524518923899788025

`A030078(lt[0, A055671(n)])`
-/

namespace A092770.P17524518923899788025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A092770.P17524518923899788025

namespace A092770

/-- `A030078(lt[0, A055671(n)])` -/
def P17524518923899788025.Spec : Prop :=
  ∀ n, P17524518923899788025.a n = A092770 (n + 1)

end A092770

/-! ## A092770.P10841667019345138351

`A030078(record[A006530(n+2)])`
-/

namespace A092770.P10841667019345138351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092770.P10841667019345138351

namespace A092770

/-- `A030078(record[A006530(n+2)])` -/
def P10841667019345138351.Spec : Prop :=
  ∀ n, P10841667019345138351.a n = A092770 (n + 1)

end A092770

/-! ## A092770.P12883895178490065170

`A030078(record[A014963(n+2)])`
-/

namespace A092770.P12883895178490065170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092770.P12883895178490065170

namespace A092770

/-- `A030078(record[A014963(n+2)])` -/
def P12883895178490065170.Spec : Prop :=
  ∀ n, P12883895178490065170.a n = A092770 (n + 1)

end A092770

/-! ## A092770.P2824307761440217680

`A030078(record[A020639(n+2)])`
-/

namespace A092770.P2824307761440217680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092770.P2824307761440217680

namespace A092770

/-- `A030078(record[A020639(n+2)])` -/
def P2824307761440217680.Spec : Prop :=
  ∀ n, P2824307761440217680.a n = A092770 (n + 1)

end A092770

/-! ## A092770.P2182088310949387809

`A030078(A006093(n+1)+1)`
-/

namespace A092770.P2182088310949387809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (A006093 (n + 1) + 1).toNat

end

end A092770.P2182088310949387809

namespace A092770

/-- `A030078(A006093(n+1)+1)` -/
def P2182088310949387809.Spec : Prop :=
  ∀ n, P2182088310949387809.a n = A092770 (n + 1)

end A092770

/-! ## A092770.P11599118047396165105

`A030078(A008864(n+1)-1)`
-/

namespace A092770.P11599118047396165105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (A008864 (n + 1) - 1).toNat

end

end A092770.P11599118047396165105

namespace A092770

/-- `A030078(A008864(n+1)-1)` -/
def P11599118047396165105.Spec : Prop :=
  ∀ n, P11599118047396165105.a n = A092770 (n + 1)

end A092770

/-! ## A092770.P4004000364354072416

`A030078(A040976(n+1)+2)`
-/

namespace A092770.P4004000364354072416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (A040976 (n + 1) + 2).toNat

end

end A092770.P4004000364354072416

namespace A092770

/-- `A030078(A040976(n+1)+2)` -/
def P4004000364354072416.Spec : Prop :=
  ∀ n, P4004000364354072416.a n = A092770 (n + 1)

end A092770

/-!
# A092771: Prime(prime(n))^2-1.

The programs for A092771, the canonical program `A092771.P2642806200389724919` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092771 has offset 1).

The definition of A092771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092771.P2642806200389724919

`A092769(n+1)-1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A092771

/-- `A092769(n+1)-1` -/
def P2642806200389724919.Spec : Prop :=
  ∀ n, P2642806200389724919.a n = A092771 (n + 1)

theorem P2642806200389724919.correct : P2642806200389724919.Spec := by
  intro n
  simp only [A092771, Nat.add_sub_cancel]

end A092771

/-! ## A092771.P10315975294635752631

`A006450(n+1)²-1`
-/

namespace A092771.P10315975294635752631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) ^ 2 - 1

end

end A092771.P10315975294635752631

namespace A092771

/-- `A006450(n+1)²-1` -/
def P10315975294635752631.Spec : Prop :=
  ∀ n, P10315975294635752631.a n = A092771 (n + 1)

end A092771

/-! ## A092771.P828572694042951955

`2*(A092773(n+1)-1)`
-/

namespace A092771.P828572694042951955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A092773 (n + 1) - 1)

end

end A092771.P828572694042951955

namespace A092771

/-- `2*(A092773(n+1)-1)` -/
def P828572694042951955.Spec : Prop :=
  ∀ n, P828572694042951955.a n = A092771 (n + 1)

end A092771

/-! ## A092771.P4445886654116803547

`(A262021(n+1)+1+n)²-1`
-/

namespace A092771.P4445886654116803547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A262021 (n + 1) + 1 + (n : ℤ)) ^ 2 - 1

end

end A092771.P4445886654116803547

namespace A092771

/-- `(A262021(n+1)+1+n)²-1` -/
def P4445886654116803547.Spec : Prop :=
  ∀ n, P4445886654116803547.a n = A092771 (n + 1)

end A092771

/-! ## A092771.P5807007648755924537

`(A092770(n+1)-A006450(n+1))/A006450(n+1)`
-/

namespace A092771.P5807007648755924537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092770 (n + 1) - A006450 (n + 1) : ℚ) / (A006450 (n + 1) : ℚ)

end

end A092771.P5807007648755924537

namespace A092771

/-- `(A092770(n+1)-A006450(n+1))/A006450(n+1)` -/
def P5807007648755924537.Spec : Prop :=
  ∀ n, P5807007648755924537.a n = (A092771 (n + 1) : ℚ)

end A092771

/-! ## A092771.P17623048928356520916

`A175247(n+2)²-1`
-/

namespace A092771.P17623048928356520916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 2) ^ 2 - 1

end

end A092771.P17623048928356520916

namespace A092771

/-- `A175247(n+2)²-1` -/
def P17623048928356520916.Spec : Prop :=
  ∀ n, P17623048928356520916.a n = A092771 (n + 1)

end A092771

/-! ## A092771.P6087209137684831889

`p?[A302596(n+1)]²-1`
-/

namespace A092771.P6087209137684831889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - 1

end

end A092771.P6087209137684831889

namespace A092771

/-- `p?[A302596(n+1)]²-1` -/
def P6087209137684831889.Spec : Prop :=
  ∀ n, P6087209137684831889.a n = A092771 (n + 1)

end A092771

/-! ## A092771.P3169261689925631755

`p?[A076610(n+1)]²-1`
-/

namespace A092771.P3169261689925631755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - 1

end

end A092771.P3169261689925631755

namespace A092771

/-- `p?[A076610(n+1)]²-1` -/
def P3169261689925631755.Spec : Prop :=
  ∀ n, P3169261689925631755.a n = A092771 (n + 1)

end A092771

/-! ## A092771.P8748737800294560898

`A066872(Δ[A007504(n)])-2`
-/

namespace A092771.P8748737800294560898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (f1 (n + 1) - f1 n).toNat - 2

end

end A092771.P8748737800294560898

namespace A092771

/-- `A066872(Δ[A007504(n)])-2` -/
def P8748737800294560898.Spec : Prop :=
  ∀ n, P8748737800294560898.a n = A092771 (n + 1)

end A092771

/-! ## A092771.P15266627674142546071

`A120426(A000040(n+1))²-1`
-/

namespace A092771.P15266627674142546071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120426 (A000040 (n + 1)).toNat ^ 2 - 1

end

end A092771.P15266627674142546071

namespace A092771

/-- `A120426(A000040(n+1))²-1` -/
def P15266627674142546071.Spec : Prop :=
  ∀ n, P15266627674142546071.a n = A092771 (n + 1)

end A092771

/-! ## A092771.P8269781171353149668

`p?[A141436(n+1)]²-1`
-/

namespace A092771.P8269781171353149668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - 1

end

end A092771.P8269781171353149668

namespace A092771

/-- `p?[A141436(n+1)]²-1` -/
def P8269781171353149668.Spec : Prop :=
  ∀ n, P8269781171353149668.a n = A092771 (n + 1)

end A092771

/-! ## A092771.P11049880267461162638

`A084920(p?[xor(1, n)+1])`
-/

namespace A092771.P11049880267461162638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A092771.P11049880267461162638

namespace A092771

/-- `A084920(p?[xor(1, n)+1])` -/
def P11049880267461162638.Spec : Prop :=
  ∀ n, P11049880267461162638.a n = A092771 (n + 1)

end A092771

/-! ## A092771.P102787524815194456

`A084920(Δ[A007504(n)])`
-/

namespace A092771.P102787524815194456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (f1 (n + 1) - f1 n).toNat

end

end A092771.P102787524815194456

namespace A092771

/-- `A084920(Δ[A007504(n)])` -/
def P102787524815194456.Spec : Prop :=
  ∀ n, P102787524815194456.a n = A092771 (n + 1)

end A092771

/-! ## A092771.P16518865944370757201

`A084920(A000040(n+1))`
-/

namespace A092771.P16518865944370757201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (A000040 (n + 1)).toNat

end

end A092771.P16518865944370757201

namespace A092771

/-- `A084920(A000040(n+1))` -/
def P16518865944370757201.Spec : Prop :=
  ∀ n, P16518865944370757201.a n = A092771 (n + 1)

end A092771

/-! ## A092771.P17655133305768317153

`A084920(A008578(n+2))`
-/

namespace A092771.P17655133305768317153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (A008578 (n + 2)).toNat

end

end A092771.P17655133305768317153

namespace A092771

/-- `A084920(A008578(n+2))` -/
def P17655133305768317153.Spec : Prop :=
  ∀ n, P17655133305768317153.a n = A092771 (n + 1)

end A092771

/-! ## A092771.P17308492339469372581

`A084920(A182986(n+2))`
-/

namespace A092771.P17308492339469372581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (A182986 (n + 2)).toNat

end

end A092771.P17308492339469372581

namespace A092771

/-- `A084920(A182986(n+2))` -/
def P17308492339469372581.Spec : Prop :=
  ∀ n, P17308492339469372581.a n = A092771 (n + 1)

end A092771

/-! ## A092771.P923806821902980362

`A001248(Δ[A007504(n)])-1`
-/

namespace A092771.P923806821902980362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (f1 (n + 1) - f1 n).toNat - 1

end

end A092771.P923806821902980362

namespace A092771

/-- `A001248(Δ[A007504(n)])-1` -/
def P923806821902980362.Spec : Prop :=
  ∀ n, P923806821902980362.a n = A092771 (n + 1)

end A092771

/-! ## A092771.P8740450136329920435

`A001248(p?[A014681(n)])-1`
-/

namespace A092771.P8740450136329920435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A092771.P8740450136329920435

namespace A092771

/-- `A001248(p?[A014681(n)])-1` -/
def P8740450136329920435.Spec : Prop :=
  ∀ n, P8740450136329920435.a n = A092771 (n + 1)

end A092771

/-! ## A092771.P13388635160842771502

`A001248(p?[A080412(n)])-1`
-/

namespace A092771.P13388635160842771502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A092771.P13388635160842771502

namespace A092771

/-- `A001248(p?[A080412(n)])-1` -/
def P13388635160842771502.Spec : Prop :=
  ∀ n, P13388635160842771502.a n = A092771 (n + 1)

end A092771

/-! ## A092771.P12826959146067032349

`A001248(p?[A080587(n)])-1`
-/

namespace A092771.P12826959146067032349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A092771.P12826959146067032349

namespace A092771

/-- `A001248(p?[A080587(n)])-1` -/
def P12826959146067032349.Spec : Prop :=
  ∀ n, P12826959146067032349.a n = A092771 (n + 1)

end A092771

/-!
# A092772: (Prime(prime(n))^2-1)/24.

The programs for A092772, there is no canonical definition to state claims against.
-/

/-! ## A092772.P9277193050775609897

`A024702(p?[Δ[n²]])`
-/

namespace A092772.P9277193050775609897
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024702 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A092772.P9277193050775609897

/-! ## A092772.P8153381759556460525

`A081115(p?[2*n+1])/2`
-/

namespace A092772.P8153381759556460525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081115 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2

end

end A092772.P8153381759556460525

/-! ## A092772.P3649435814992745043

`A024702((p?[2*n+1]+3)/2+(p?[2*n+1]-3)/2)`
-/

namespace A092772.P3649435814992745043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024702 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 3 : ℚ) / 2 + ((f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 3 : ℚ) / 2)).toNat

end

end A092772.P3649435814992745043

/-! ## A092772.P6936403254615605879

`A024702(A065091(n+1))`
-/

namespace A092772.P6936403254615605879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024702 (A065091 (n + 1)).toNat

end

end A092772.P6936403254615605879

/-! ## A092772.P13838959699614820958

`A024702(A240699(n+1))`
-/

namespace A092772.P13838959699614820958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024702 (A240699 (n + 1)).toNat

end

end A092772.P13838959699614820958

/-!
# A092773: (Prime(prime(n))^2+1)/2.

The programs for A092773, the canonical program `A092773.P5808287520077253958` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092773 has offset 1).

The definition of A092773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092773.P5808287520077253958

`ceil(A092769(n+1)/2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A092773

/-- `ceil(A092769(n+1)/2)` -/
def P5808287520077253958.Spec : Prop :=
  ∀ n, P5808287520077253958.a n = A092773 (n + 1)

theorem P5808287520077253958.correct : P5808287520077253958.Spec := by
  intro n
  simp only [A092773, Nat.add_sub_cancel]

end A092773

/-! ## A092773.P14862083514568535607

`A092771(n+1)/2+1`
-/

namespace A092773.P14862083514568535607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092771 (n + 1) : ℚ) / 2 + 1

end

end A092773.P14862083514568535607

namespace A092773

/-- `A092771(n+1)/2+1` -/
def P14862083514568535607.Spec : Prop :=
  ∀ n, P14862083514568535607.a n = (A092773 (n + 1) : ℚ)

end A092773

/-! ## A092773.P3380039155520631615

`ceil(A006450(n+1)²/2)`
-/

namespace A092773.P3380039155520631615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006450 (n + 1) ^ 2 : ℚ) / 2⌉

end

end A092773.P3380039155520631615

namespace A092773

/-- `ceil(A006450(n+1)²/2)` -/
def P3380039155520631615.Spec : Prop :=
  ∀ n, P3380039155520631615.a n = A092773 (n + 1)

end A092773

/-! ## A092773.P12306106236480860882

`A066872(Δ[A007504(n)])/2`
-/

namespace A092773.P12306106236480860882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066872 (f1 (n + 1) - f1 n).toNat : ℚ) / 2

end

end A092773.P12306106236480860882

namespace A092773

/-- `A066872(Δ[A007504(n)])/2` -/
def P12306106236480860882.Spec : Prop :=
  ∀ n, P12306106236480860882.a n = (A092773 (n + 1) : ℚ)

end A092773

/-! ## A092773.P10484211254150433728

`A066872(A000040(n+1))/2`
-/

namespace A092773.P10484211254150433728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066872 (A000040 (n + 1)).toNat : ℚ) / 2

end

end A092773.P10484211254150433728

namespace A092773

/-- `A066872(A000040(n+1))/2` -/
def P10484211254150433728.Spec : Prop :=
  ∀ n, P10484211254150433728.a n = (A092773 (n + 1) : ℚ)

end A092773

/-! ## A092773.P18334620636542720829

`A066872(A008578(n+2))/2`
-/

namespace A092773.P18334620636542720829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066872 (A008578 (n + 2)).toNat : ℚ) / 2

end

end A092773.P18334620636542720829

namespace A092773

/-- `A066872(A008578(n+2))/2` -/
def P18334620636542720829.Spec : Prop :=
  ∀ n, P18334620636542720829.a n = (A092773 (n + 1) : ℚ)

end A092773

/-! ## A092773.P4419449262367574307

`A084921(p?[abs(xor(n, -2))])+1`
-/

namespace A092773.P4419449262367574307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084921 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A092773.P4419449262367574307

namespace A092773

/-- `A084921(p?[abs(xor(n, -2))])+1` -/
def P4419449262367574307.Spec : Prop :=
  ∀ n, P4419449262367574307.a n = A092773 (n + 1)

end A092773

/-! ## A092773.P7092886099174458083

`round(A001248(p?[xor(1, n)+1])/2)`
-/

namespace A092773.P7092886099174458083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001248 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2)

end

end A092773.P7092886099174458083

namespace A092773

/-- `round(A001248(p?[xor(1, n)+1])/2)` -/
def P7092886099174458083.Spec : Prop :=
  ∀ n, P7092886099174458083.a n = A092773 (n + 1)

end A092773

/-! ## A092773.P13079594651707191598

`A066885(A000040(n+1))`
-/

namespace A092773.P13079594651707191598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066885 (A000040 (n + 1)).toNat

end

end A092773.P13079594651707191598

namespace A092773

/-- `A066885(A000040(n+1))` -/
def P13079594651707191598.Spec : Prop :=
  ∀ n, P13079594651707191598.a n = A092773 (n + 1)

end A092773

/-! ## A092773.P18271627280325353047

`A066885(A008578(n+2))`
-/

namespace A092773.P18271627280325353047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066885 (A008578 (n + 2)).toNat

end

end A092773.P18271627280325353047

namespace A092773

/-- `A066885(A008578(n+2))` -/
def P18271627280325353047.Spec : Prop :=
  ∀ n, P18271627280325353047.a n = A092773 (n + 1)

end A092773

/-! ## A092773.P15791118465816540612

`A066885(A182986(n+2))`
-/

namespace A092773.P15791118465816540612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066885 (A182986 (n + 2)).toNat

end

end A092773.P15791118465816540612

namespace A092773

/-- `A066885(A182986(n+2))` -/
def P15791118465816540612.Spec : Prop :=
  ∀ n, P15791118465816540612.a n = A092773 (n + 1)

end A092773

/-! ## A092773.P10967355529898318293

`A066885(A100484(n+1)/2)`
-/

namespace A092773.P10967355529898318293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066885 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A092773.P10967355529898318293

namespace A092773

/-- `A066885(A100484(n+1)/2)` -/
def P10967355529898318293.Spec : Prop :=
  ∀ n, P10967355529898318293.a n = A092773 (n + 1)

end A092773

/-! ## A092773.P8373346544020553944

`A110494(A100484(n+1)/2)`
-/

namespace A092773.P8373346544020553944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110494 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A092773.P8373346544020553944

namespace A092773

/-- `A110494(A100484(n+1)/2)` -/
def P8373346544020553944.Spec : Prop :=
  ∀ n, P8373346544020553944.a n = A092773 (n + 1)

end A092773

/-! ## A092773.P4892383281752015192

`A247395(A008864(n+1))/2`
-/

namespace A092773.P4892383281752015192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247395 (A008864 (n + 1)).toNat : ℚ) / 2

end

end A092773.P4892383281752015192

namespace A092773

/-- `A247395(A008864(n+1))/2` -/
def P4892383281752015192.Spec : Prop :=
  ∀ n, P4892383281752015192.a n = (A092773 (n + 1) : ℚ)

end A092773

/-! ## A092773.P5210160597760102007

`A247395(A028815(n+1))/2`
-/

namespace A092773.P5210160597760102007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247395 (A028815 (n + 1)).toNat : ℚ) / 2

end

end A092773.P5210160597760102007

namespace A092773

/-- `A247395(A028815(n+1))/2` -/
def P5210160597760102007.Spec : Prop :=
  ∀ n, P5210160597760102007.a n = (A092773 (n + 1) : ℚ)

end A092773

/-! ## A092773.P408332680210755350

`A084921(p?[A084937(n+1)])+1`
-/

namespace A092773.P408332680210755350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084921 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A092773.P408332680210755350

namespace A092773

/-- `A084921(p?[A084937(n+1)])+1` -/
def P408332680210755350.Spec : Prop :=
  ∀ n, P408332680210755350.a n = A092773 (n + 1)

end A092773

/-! ## A092773.P3685786885976424629

`A110494(A000040(2*n+1-n))`
-/

namespace A092773.P3685786885976424629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110494 (A000040 (2 * n + 1 - n)).toNat

end

end A092773.P3685786885976424629

namespace A092773

/-- `A110494(A000040(2*n+1-n))` -/
def P3685786885976424629.Spec : Prop :=
  ∀ n, P3685786885976424629.a n = A092773 (n + 1)

end A092773

/-! ## A092773.P15201941381520062389

`A066885(A054272(n+1)-A066883(n+1))`
-/

namespace A092773.P15201941381520062389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066885 (A054272 (n + 1) - A066883 (n + 1)).toNat

end

end A092773.P15201941381520062389

namespace A092773

/-- `A066885(A054272(n+1)-A066883(n+1))` -/
def P15201941381520062389.Spec : Prop :=
  ∀ n, P15201941381520062389.a n = A092773 (n + 1)

end A092773

/-! ## A092773.P17981192834356750070

`A110494(A054272(n+1)-A066883(n+1))`
-/

namespace A092773.P17981192834356750070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110494 (A054272 (n + 1) - A066883 (n + 1)).toNat

end

end A092773.P17981192834356750070

namespace A092773

/-- `A110494(A054272(n+1)-A066883(n+1))` -/
def P17981192834356750070.Spec : Prop :=
  ∀ n, P17981192834356750070.a n = A092773 (n + 1)

end A092773

/-! ## A092773.P6698816816365747151

`A066885(A331634(A100484(n+1)))`
-/

namespace A092773.P6698816816365747151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066885 (A331634 (A100484 (n + 1)).toNat).toNat

end

end A092773.P6698816816365747151

namespace A092773

/-- `A066885(A331634(A100484(n+1)))` -/
def P6698816816365747151.Spec : Prop :=
  ∀ n, P6698816816365747151.a n = A092773 (n + 1)

end A092773

/-!
# A092774: Prime(prime(n))^2+1.

The programs for A092774, there is no canonical definition to state claims against.
-/

/-! ## A092774.P12212970951738081410

`A092769(n+1)+1`
-/

namespace A092774.P12212970951738081410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092769 (n + 1) + 1

end

end A092774.P12212970951738081410

/-! ## A092774.P13238617156633943739

`A092771(n+1)+2`
-/

namespace A092774.P13238617156633943739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092771 (n + 1) + 2

end

end A092774.P13238617156633943739

/-! ## A092774.P12140270383021435589

`2*A092773(n+1)`
-/

namespace A092774.P12140270383021435589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092773 (n + 1)

end

end A092774.P12140270383021435589

/-! ## A092774.P7778955142622421597

`A006450(n+1)²+1`
-/

namespace A092774.P7778955142622421597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) ^ 2 + 1

end

end A092774.P7778955142622421597

/-! ## A092774.P1187476003531620257

`A175247(n+2)²+1`
-/

namespace A092774.P1187476003531620257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 2) ^ 2 + 1

end

end A092774.P1187476003531620257

/-!
# A092775: (prime(prime(n))^4-1)/120.

The programs for A092775, there is no canonical definition to state claims against.
-/

/-! ## A092775.P10293760579146543718

`2*A089034(p?[2*n+5])`
-/

namespace A092775.P10293760579146543718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089034 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A092775.P10293760579146543718

/-! ## A092775.P18000786302886617991

`2*A089034(A115232(n+1))`
-/

namespace A092775.P18000786302886617991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089034 (A115232 (n + 1)).toNat

end

end A092775.P18000786302886617991

/-! ## A092775.P510574227655854170

`2*A089034(A215848(n+1))`
-/

namespace A092775.P510574227655854170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089034 (A215848 (n + 1)).toNat

end

end A092775.P510574227655854170

/-! ## A092775.P3183753360720721822

`2*A089034(A000040(n+3))`
-/

namespace A092775.P3183753360720721822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089034 (A000040 (n + 3)).toNat

end

end A092775.P3183753360720721822

/-!
# A092777: a(n) = Sum_{k=1..n} round(log(prime(k))).

The programs for A092777, the canonical program `A092777.P6149524983879065548` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092777 has offset 1).

The definition of A092777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092777.P6149524983879065548

`∑[A029836(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A092777

/-- `∑[A029836(n)]` -/
def P6149524983879065548.Spec : Prop :=
  ∀ n, P6149524983879065548.a n = A092777 (n + 1)

theorem P6149524983879065548.correct : P6149524983879065548.Spec := by
  intro n
  simp only [A092777, Nat.add_sub_cancel]

end A092777

/-! ## A092777.P6634506858098392648

`∑[round(log(A000040(n+1)))]`
-/

namespace A092777.P6634506858098392648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A000040 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092777.P6634506858098392648

namespace A092777

/-- `∑[round(log(A000040(n+1)))]` -/
def P6634506858098392648.Spec : Prop :=
  ∀ n, P6634506858098392648.a n = A092777 (n + 1)

end A092777

/-! ## A092777.P15426945601927493421

`∑[round(log(A008864(n+1)))]`
-/

namespace A092777.P15426945601927493421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A008864 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092777.P15426945601927493421

namespace A092777

/-- `∑[round(log(A008864(n+1)))]` -/
def P15426945601927493421.Spec : Prop :=
  ∀ n, P15426945601927493421.a n = A092777 (n + 1)

end A092777

/-! ## A092777.P11559041355667189744

`∑[round(log(A006093(n+1)+1))]`
-/

namespace A092777.P11559041355667189744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A006093 (n + 1) + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092777.P11559041355667189744

namespace A092777

/-- `∑[round(log(A006093(n+1)+1))]` -/
def P11559041355667189744.Spec : Prop :=
  ∀ n, P11559041355667189744.a n = A092777 (n + 1)

end A092777

/-! ## A092777.P10625840867467458040

`∑[round(log(A040976(n+1)+2))]`
-/

namespace A092777.P10625840867467458040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A040976 (n + 1) + 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092777.P10625840867467458040

namespace A092777

/-- `∑[round(log(A040976(n+1)+2))]` -/
def P10625840867467458040.Spec : Prop :=
  ∀ n, P10625840867467458040.a n = A092777 (n + 1)

end A092777

/-! ## A092777.P16829439123069381510

`∑[round(log(A014689(n+1)+1+n))]`
-/

namespace A092777.P16829439123069381510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A014689 (n + 1) + 1 + (n : ℤ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092777.P16829439123069381510

namespace A092777

/-- `∑[round(log(A014689(n+1)+1+n))]` -/
def P16829439123069381510.Spec : Prop :=
  ∀ n, P16829439123069381510.a n = A092777 (n + 1)

end A092777

/-! ## A092777.P14042998741665815135

`∑[round(log(A008578(n+2)))]`
-/

namespace A092777.P14042998741665815135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A008578 (n + 2) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092777.P14042998741665815135

namespace A092777

/-- `∑[round(log(A008578(n+2)))]` -/
def P14042998741665815135.Spec : Prop :=
  ∀ n, P14042998741665815135.a n = A092777 (n + 1)

end A092777

/-! ## A092777.P6465413582017681955

`∑[round(record[log(A006530(n+2))])]`
-/

namespace A092777.P6465413582017681955
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A006530 (n + 2) : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092777.P6465413582017681955

namespace A092777

/-- `∑[round(record[log(A006530(n+2))])]` -/
def P6465413582017681955.Spec : Prop :=
  ∀ n, P6465413582017681955.a n = A092777 (n + 1)

end A092777

/-! ## A092777.P6262506191608855381

`∑[round(record[log(A020639(n+2))])]`
-/

namespace A092777.P6262506191608855381
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A020639 (n + 2) : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092777.P6262506191608855381

namespace A092777

/-- `∑[round(record[log(A020639(n+2))])]` -/
def P6262506191608855381.Spec : Prop :=
  ∀ n, P6262506191608855381.a n = A092777 (n + 1)

end A092777

/-! ## A092777.P3777298587724769118

`∑[round(log(A063904(n+1)))]`
-/

namespace A092777.P3777298587724769118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A063904 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092777.P3777298587724769118

namespace A092777

/-- `∑[round(log(A063904(n+1)))]` -/
def P3777298587724769118.Spec : Prop :=
  ∀ n, P3777298587724769118.a n = A092777 (n + 1)

end A092777

/-! ## A092777.P9592522266316202363

`∑[A000193(A000040(n+1))]`
-/

namespace A092777.P9592522266316202363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092777.P9592522266316202363

namespace A092777

/-- `∑[A000193(A000040(n+1))]` -/
def P9592522266316202363.Spec : Prop :=
  ∀ n, P9592522266316202363.a n = A092777 (n + 1)

end A092777

/-!
# A092778: Concatenate pairs of successive Fibonacci numbers.

The programs for A092778, the canonical program `A092778.P16093359121593778950` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092778 has offset 0).

The definition of A092778 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A092778.P16093359121593778950

`A000045(n)*10^A055642(A000045(n+1))+A000045(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A092778

/-- `A000045(n)*10^A055642(A000045(n+1))+A000045(n+1)` -/
def P16093359121593778950.Spec : Prop :=
  ∀ n, P16093359121593778950.a n = (A092778 n : ℚ)

end A092778

/-! ## A092778.P13417825563080133577

`A052928(A052779(n))+A022101(n)`
-/

namespace A092778.P13417825563080133577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A052779 n).toNat + A022101 n

end

end A092778.P13417825563080133577

namespace A092778

/-- `A052928(A052779(n))+A022101(n)` -/
def P13417825563080133577.Spec : Prop :=
  ∀ n, P13417825563080133577.a n = A092778 n

end A092778

/-! ## A092778.P7888017339982315855

`A052928(A052783(n))+A022101(n)`
-/

namespace A092778.P7888017339982315855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A052783 n).toNat + A022101 n

end

end A092778.P7888017339982315855

namespace A092778

/-- `A052928(A052783(n))+A022101(n)` -/
def P7888017339982315855.Spec : Prop :=
  ∀ n, P7888017339982315855.a n = A092778 n

end A092778

/-!
# A092779: Exponent of 2 in central fibonomial coefficient A003267.

The programs for A092779, the canonical program `A092779.P649632426038707152` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092779 has offset 0).

The definition of A092779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 634 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092779.P3434945372141789047

`A000120(xor(n%2, comp[or(3, n)]))`
-/

namespace A092779.P3434945372141789047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.xor (n % 2) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A092779.P3434945372141789047

namespace A092779

/-- `A000120(xor(n%2, comp[or(3, n)]))` -/
def P3434945372141789047.Spec : Prop :=
  ∀ n, P3434945372141789047.a n = A092779 n

end A092779

/-! ## A092779.P649632426038707152

`∑[A088705(A047587(n+1))]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A092779

/-- `∑[A088705(A047587(n+1))]` -/
def P649632426038707152.Spec : Prop :=
  ∀ n, P649632426038707152.a n = A092779 n

theorem P649632426038707152.correct : P649632426038707152.Spec := by
  intro n
  simp only [A092779]

end A092779

/-! ## A092779.P3765407877981766049

`A151902(n)+A002264(n)%2`
-/

namespace A092779.P3765407877981766049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151902 n + Int.tmod (A002264 n) 2

end

end A092779.P3765407877981766049

namespace A092779

/-- `A151902(n)+A002264(n)%2` -/
def P3765407877981766049.Spec : Prop :=
  ∀ n, P3765407877981766049.a n = A092779 n

end A092779

/-! ## A092779.P3523862928254727660

`A000120(xor(n%2, A004773(n)))`
-/

namespace A092779.P3523862928254727660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor ((n % 2 : ℕ) : ℤ) (A004773 n)).toNat

end

end A092779.P3523862928254727660

namespace A092779

/-- `A000120(xor(n%2, A004773(n)))` -/
def P3523862928254727660.Spec : Prop :=
  ∀ n, P3523862928254727660.a n = A092779 n

end A092779

/-! ## A092779.P15208974476747302892

`A000120(xor(and(1, n), A004773(n)))`
-/

namespace A092779.P15208974476747302892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (Nat.land 1 n : ℤ) (A004773 n)).toNat

end

end A092779.P15208974476747302892

namespace A092779

/-- `A000120(xor(and(1, n), A004773(n)))` -/
def P15208974476747302892.Spec : Prop :=
  ∀ n, P15208974476747302892.a n = A092779 n

end A092779

/-! ## A092779.P2725636903360364932

`∑[A088705(A123919(n+1)+n)]`
-/

namespace A092779.P2725636903360364932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A123919 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092779.P2725636903360364932

namespace A092779

/-- `∑[A088705(A123919(n+1)+n)]` -/
def P2725636903360364932.Spec : Prop :=
  ∀ n, P2725636903360364932.a n = A092779 n

end A092779

/-! ## A092779.P12855385176865149750

`A274009(xor(char[2*n], A004773(n)))`
-/

namespace A092779.P12855385176865149750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A004773 n)).toNat

end

end A092779.P12855385176865149750

namespace A092779

/-- `A274009(xor(char[2*n], A004773(n)))` -/
def P12855385176865149750.Spec : Prop :=
  ∀ n, P12855385176865149750.a n = A092779 n

end A092779

/-! ## A092779.P17765846259646209636

`A151902(n)+A000035(A002264(n))`
-/

namespace A092779.P17765846259646209636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151902 n + A000035 (A002264 n).toNat

end

end A092779.P17765846259646209636

namespace A092779

/-- `A151902(n)+A000035(A002264(n))` -/
def P17765846259646209636.Spec : Prop :=
  ∀ n, P17765846259646209636.a n = A092779 n

end A092779

/-! ## A092779.P1411277474159826186

`A151899(n)+A000120(A002264(n))`
-/

namespace A092779.P1411277474159826186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151899 n + A000120 (A002264 n).toNat

end

end A092779.P1411277474159826186

namespace A092779

/-- `A151899(n)+A000120(A002264(n))` -/
def P1411277474159826186.Spec : Prop :=
  ∀ n, P1411277474159826186.a n = A092779 n

end A092779

/-! ## A092779.P17554099700448546439

`A151902(A300076(n))+A151899(n)`
-/

namespace A092779.P17554099700448546439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151902 (A300076 n).toNat + A151899 n

end

end A092779.P17554099700448546439

namespace A092779

/-- `A151902(A300076(n))+A151899(n)` -/
def P17554099700448546439.Spec : Prop :=
  ∀ n, P17554099700448546439.a n = A092779 n

end A092779

/-! ## A092779.P3913128927090635330

`A000120(A004773(n)-A131734(n))`
-/

namespace A092779.P3913128927090635330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A004773 n - A131734 n).toNat

end

end A092779.P3913128927090635330

namespace A092779

/-- `A000120(A004773(n)-A131734(n))` -/
def P3913128927090635330.Spec : Prop :=
  ∀ n, P3913128927090635330.a n = A092779 n

end A092779

/-! ## A092779.P13174494180682091746

`A000120(xor(A000035(n), A004773(n)))`
-/

namespace A092779.P13174494180682091746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A000035 n) (A004773 n)).toNat

end

end A092779.P13174494180682091746

namespace A092779

/-- `A000120(xor(A000035(n), A004773(n)))` -/
def P13174494180682091746.Spec : Prop :=
  ∀ n, P13174494180682091746.a n = A092779 n

end A092779

/-! ## A092779.P16978685606450534557

`A000120(xor(A010673(n), A131452(n)))`
-/

namespace A092779.P16978685606450534557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A010673 n) (A131452 n)).toNat

end

end A092779.P16978685606450534557

namespace A092779

/-- `A000120(xor(A010673(n), A131452(n)))` -/
def P16978685606450534557.Spec : Prop :=
  ∀ n, P16978685606450534557.a n = A092779 n

end A092779

/-! ## A092779.P17399053774758858172

`A000120(xor(A000035(n), A265667(n)))`
-/

namespace A092779.P17399053774758858172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A000035 n) (A265667 n)).toNat

end

end A092779.P17399053774758858172

namespace A092779

/-- `A000120(xor(A000035(n), A265667(n)))` -/
def P17399053774758858172.Spec : Prop :=
  ∀ n, P17399053774758858172.a n = A092779 n

end A092779

/-! ## A092779.P12265960799326722556

`∑[A088705(A002264(A047524(n+1)))]`
-/

namespace A092779.P12265960799326722556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A002264 (A047524 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092779.P12265960799326722556

namespace A092779

/-- `∑[A088705(A002264(A047524(n+1)))]` -/
def P12265960799326722556.Spec : Prop :=
  ∀ n, P12265960799326722556.a n = A092779 n

end A092779

/-! ## A092779.P11692041775048953710

`A000120(A300068(n)+∑[A151899(n)])`
-/

namespace A092779.P11692041775048953710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A300068 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A092779.P11692041775048953710

namespace A092779

/-- `A000120(A300068(n)+∑[A151899(n)])` -/
def P11692041775048953710.Spec : Prop :=
  ∀ n, P11692041775048953710.a n = A092779 n

end A092779

/-! ## A092779.P8478348287887538520

`A000120(A047234(n+1)-A285872(n))`
-/

namespace A092779.P8478348287887538520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A047234 (n + 1) - A285872 n).toNat

end

end A092779.P8478348287887538520

namespace A092779

/-- `A000120(A047234(n+1)-A285872(n))` -/
def P8478348287887538520.Spec : Prop :=
  ∀ n, P8478348287887538520.a n = A092779 n

end A092779

/-! ## A092779.P2873626902036579750

`A000120(xor(A000035(n), A047462(n+1)))`
-/

namespace A092779.P2873626902036579750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A000035 n) (A047462 (n + 1))).toNat

end

end A092779.P2873626902036579750

namespace A092779

/-- `A000120(xor(A000035(n), A047462(n+1)))` -/
def P2873626902036579750.Spec : Prop :=
  ∀ n, P2873626902036579750.a n = A092779 n

end A092779

/-! ## A092779.P2965405156981386708

`A000120(xor(A002264(4*n), A000035(n)))`
-/

namespace A092779.P2965405156981386708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A002264 (4 * n)) (A000035 n)).toNat

end

end A092779.P2965405156981386708

namespace A092779

/-- `A000120(xor(A002264(4*n), A000035(n)))` -/
def P2965405156981386708.Spec : Prop :=
  ∀ n, P2965405156981386708.a n = A092779 n

end A092779

/-! ## A092779.P6736847911482386992

`A151902(n-A151899(n))+A151899(n)`
-/

namespace A092779.P6736847911482386992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151902 ((n : ℤ) - A151899 n).toNat + A151899 n

end

end A092779.P6736847911482386992

namespace A092779

/-- `A151902(n-A151899(n))+A151899(n)` -/
def P6736847911482386992.Spec : Prop :=
  ∀ n, P6736847911482386992.a n = A092779 n

end A092779

/-!
# A092780: Sum(prime(k),k=1..n)^2-1.

The programs for A092780, the canonical program `A092780.P3974277560898924787` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092780 has offset 1).

The definition of A092780 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A092780.P3974277560898924787

`A007504(n+1)²-1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A092780

/-- `A007504(n+1)²-1` -/
def P3974277560898924787.Spec : Prop :=
  ∀ n, P3974277560898924787.a n = A092780 (n + 1)

theorem P3974277560898924787.correct : P3974277560898924787.Spec := by
  intro n
  simp only [A092780, Nat.add_sub_cancel]

end A092780

/-! ## A092780.P9586583429529293325

`∑[A034960(n+1)]-1`
-/

namespace A092780.P9586583429529293325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A092780.P9586583429529293325

namespace A092780

/-- `∑[A034960(n+1)]-1` -/
def P9586583429529293325.Spec : Prop :=
  ∀ n, P9586583429529293325.a n = A092780 (n + 1)

end A092780

/-! ## A092780.P9033865282119373017

`∑[A000040(n+1)]²-1`
-/

namespace A092780.P9033865282119373017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 1

end

end A092780.P9033865282119373017

namespace A092780

/-- `∑[A000040(n+1)]²-1` -/
def P9033865282119373017.Spec : Prop :=
  ∀ n, P9033865282119373017.a n = A092780 (n + 1)

end A092780

/-! ## A092780.P11554278408935574694

`(A237589(n+1)+1)²-1`
-/

namespace A092780.P11554278408935574694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A237589 (n + 1) + 1) ^ 2 - 1

end

end A092780.P11554278408935574694

namespace A092780

/-- `(A237589(n+1)+1)²-1` -/
def P11554278408935574694.Spec : Prop :=
  ∀ n, P11554278408935574694.a n = A092780 (n + 1)

end A092780

/-! ## A092780.P4409777044923471283

`∑[abs(A273960(n+1))]²-1`
-/

namespace A092780.P4409777044923471283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A273960 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 1

end

end A092780.P4409777044923471283

namespace A092780

/-- `∑[abs(A273960(n+1))]²-1` -/
def P4409777044923471283.Spec : Prop :=
  ∀ n, P4409777044923471283.a n = A092780 (n + 1)

end A092780

/-! ## A092780.P2295317466418176289

`∑[sqrt(A001248(n+1))]²-1`
-/

namespace A092780.P2295317466418176289
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 1

end

end A092780.P2295317466418176289

namespace A092780

/-- `∑[sqrt(A001248(n+1))]²-1` -/
def P2295317466418176289.Spec : Prop :=
  ∀ n, P2295317466418176289.a n = (A092780 (n + 1) : ℝ)

end A092780

/-! ## A092780.P678280213160369658

`∑[∑[A054541(n+1)]]²-1`
-/

namespace A092780.P678280213160369658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 1

end

end A092780.P678280213160369658

namespace A092780

/-- `∑[∑[A054541(n+1)]]²-1` -/
def P678280213160369658.Spec : Prop :=
  ∀ n, P678280213160369658.a n = A092780 (n + 1)

end A092780

/-! ## A092780.P5295283760512410804

`A237589(n+1)+A007504(n+1)*A237589(n+1)`
-/

namespace A092780.P5295283760512410804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1) + A007504 (n + 1) * A237589 (n + 1)

end

end A092780.P5295283760512410804

namespace A092780

/-- `A237589(n+1)+A007504(n+1)*A237589(n+1)` -/
def P5295283760512410804.Spec : Prop :=
  ∀ n, P5295283760512410804.a n = A092780 (n + 1)

end A092780

/-! ## A092780.P8993679879882606250

`Δ[∑[A007504(n)²]-n]`
-/

namespace A092780.P8993679879882606250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092780.P8993679879882606250

namespace A092780

/-- `Δ[∑[A007504(n)²]-n]` -/
def P8993679879882606250.Spec : Prop :=
  ∀ n, P8993679879882606250.a n = A092780 (n + 1)

end A092780

/-! ## A092780.P17938854737589811840

`∑[A008578(n+2)]²-1`
-/

namespace A092780.P17938854737589811840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 1

end

end A092780.P17938854737589811840

namespace A092780

/-- `∑[A008578(n+2)]²-1` -/
def P17938854737589811840.Spec : Prop :=
  ∀ n, P17938854737589811840.a n = A092780 (n + 1)

end A092780

/-! ## A092780.P17789394479761940557

`∑[A182986(n+2)]²-1`
-/

namespace A092780.P17789394479761940557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 1

end

end A092780.P17789394479761940557

namespace A092780

/-- `∑[A182986(n+2)]²-1` -/
def P17789394479761940557.Spec : Prop :=
  ∀ n, P17789394479761940557.a n = A092780 (n + 1)

end A092780

/-! ## A092780.P8147482780297120162

`Δ[A367188(n+1)]²-1`
-/

namespace A092780.P8147482780297120162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 1

end

end A092780.P8147482780297120162

namespace A092780

/-- `Δ[A367188(n+1)]²-1` -/
def P8147482780297120162.Spec : Prop :=
  ∀ n, P8147482780297120162.a n = A092780 (n + 1)

end A092780

/-! ## A092780.P11421007866743005613

`A014284(n+2)*A237589(n+1)`
-/

namespace A092780.P11421007866743005613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 2) * A237589 (n + 1)

end

end A092780.P11421007866743005613

namespace A092780

/-- `A014284(n+2)*A237589(n+1)` -/
def P11421007866743005613.Spec : Prop :=
  ∀ n, P11421007866743005613.a n = A092780 (n + 1)

end A092780

/-! ## A092780.P8183214281510656224

`A057428(n+1)+A007504(n+1)²`
-/

namespace A092780.P8183214281510656224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A007504 (n + 1) ^ 2

end

end A092780.P8183214281510656224

namespace A092780

/-- `A057428(n+1)+A007504(n+1)²` -/
def P8183214281510656224.Spec : Prop :=
  ∀ n, P8183214281510656224.a n = A092780 (n + 1)

end A092780

/-! ## A092780.P13625265569946370748

`A007504(n+1)*A007504(n+1)-A057427(n+1)`
-/

namespace A092780.P13625265569946370748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) * A007504 (n + 1) - A057427 (n + 1)

end

end A092780.P13625265569946370748

namespace A092780

/-- `A007504(n+1)*A007504(n+1)-A057427(n+1)` -/
def P13625265569946370748.Spec : Prop :=
  ∀ n, P13625265569946370748.a n = A092780 (n + 1)

end A092780

/-! ## A092780.P12301662437022047289

`(A163061(n+1)-A175967(n+1))*A014284(n+2)`
-/

namespace A092780.P12301662437022047289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A163061 (n + 1) - A175967 (n + 1)) * A014284 (n + 2)

end

end A092780.P12301662437022047289

namespace A092780

/-- `(A163061(n+1)-A175967(n+1))*A014284(n+2)` -/
def P12301662437022047289.Spec : Prop :=
  ∀ n, P12301662437022047289.a n = A092780 (n + 1)

end A092780

/-! ## A092780.P17069377077499474722

`A007504(n+1)*A014284(n+2)-A014284(n+2)`
-/

namespace A092780.P17069377077499474722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) * A014284 (n + 2) - A014284 (n + 2)

end

end A092780.P17069377077499474722

namespace A092780

/-- `A007504(n+1)*A014284(n+2)-A014284(n+2)` -/
def P17069377077499474722.Spec : Prop :=
  ∀ n, P17069377077499474722.a n = A092780 (n + 1)

end A092780

/-! ## A092780.P9754206183351688923

`∑[A158611(n+3)]²-1`
-/

namespace A092780.P9754206183351688923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 1

end

end A092780.P9754206183351688923

namespace A092780

/-- `∑[A158611(n+3)]²-1` -/
def P9754206183351688923.Spec : Prop :=
  ∀ n, P9754206183351688923.a n = A092780 (n + 1)

end A092780

/-! ## A092780.P14000994422577120514

`∑[record[A000705(n+1)]]²-1`
-/

namespace A092780.P14000994422577120514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000705 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 1

end

end A092780.P14000994422577120514

namespace A092780

/-- `∑[record[A000705(n+1)]]²-1` -/
def P14000994422577120514.Spec : Prop :=
  ∀ n, P14000994422577120514.a n = A092780 (n + 1)

end A092780

/-! ## A092780.P15540019096097850115

`∑[record[A006530(n+2)]]²-1`
-/

namespace A092780.P15540019096097850115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 1

end

end A092780.P15540019096097850115

namespace A092780

/-- `∑[record[A006530(n+2)]]²-1` -/
def P15540019096097850115.Spec : Prop :=
  ∀ n, P15540019096097850115.a n = A092780 (n + 1)

end A092780

/-!
# A092781: Maximum number of nonempty subtrees of a binary tree with n leaves.

The programs for A092781, there is no canonical definition to state claims against.
-/

/-! ## A092781.P12273764033011880544

`A124454(2*(n+1))`
-/

namespace A092781.P12273764033011880544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124454 (2 * (n + 1))

end

end A092781.P12273764033011880544

/-! ## A092781.P12032618072056439789

`record[A124454(n+2)/3^(n%2)]`
-/

namespace A092781.P12032618072056439789
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124454 (n + 2) : ℚ) / (3 ^ (n % 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092781.P12032618072056439789

/-! ## A092781.P9536019505223717617

`record[A124454(A133265(n))]`
-/

namespace A092781.P9536019505223717617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124454 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092781.P9536019505223717617

/-! ## A092781.P996760522066306214

`record[A124454(A004442(n)+1)]`
-/

namespace A092781.P996760522066306214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124454 (A004442 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092781.P996760522066306214

/-! ## A092781.P5281768456275905059

`record[A124454(A014681(n+1))]`
-/

namespace A092781.P5281768456275905059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124454 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092781.P5281768456275905059

/-!
# A092782: The ternary tribonacci word; also a Rauzy fractal sequence: fixed point of the morphism 1 -> 12, 2 -> 13, 3 -> 1, starting from a(1) = 1.

The programs for A092782, the canonical program `A092782.P12994304615251165252` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092782 has offset 1).

The definition of A092782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092782.P18284448896483681165

`A080843(n)+1`
-/

namespace A092782.P18284448896483681165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 n + 1

end

end A092782.P18284448896483681165

namespace A092782

/-- `A080843(n)+1` -/
def P18284448896483681165.Spec : Prop :=
  ∀ n, P18284448896483681165.a n = A092782 (n + 1)

end A092782

/-! ## A092782.P12994304615251165252

`2-A317198(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A092782

/-- `2-A317198(n)` -/
def P12994304615251165252.Spec : Prop :=
  ∀ n, P12994304615251165252.a n = A092782 (n + 1)

theorem P12994304615251165252.correct : P12994304615251165252.Spec := by
  intro n
  simp only [A092782, Nat.add_sub_cancel]

end A092782

/-! ## A092782.P2387230933418817512

`5-Δ[A278040(n)]`
-/

namespace A092782.P2387230933418817512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (f1 (n + 1) - f1 n)

end

end A092782.P2387230933418817512

namespace A092782

/-- `5-Δ[A278040(n)]` -/
def P2387230933418817512.Spec : Prop :=
  ∀ n, P2387230933418817512.a n = A092782 (n + 1)

end A092782

/-! ## A092782.P11644195719585551968

`5-A276789(n+1)`
-/

namespace A092782.P11644195719585551968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A276789 (n + 1)

end

end A092782.P11644195719585551968

namespace A092782

/-- `5-A276789(n+1)` -/
def P11644195719585551968.Spec : Prop :=
  ∀ n, P11644195719585551968.a n = A092782 (n + 1)

end A092782

/-! ## A092782.P16881029669555157408

`6-A305394(n+1)`
-/

namespace A092782.P16881029669555157408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A305394 (n + 1)

end

end A092782.P16881029669555157408

namespace A092782

/-- `6-A305394(n+1)` -/
def P16881029669555157408.Spec : Prop :=
  ∀ n, P16881029669555157408.a n = A092782 (n + 1)

end A092782

/-! ## A092782.P12118235613140465888

`round(8/A275925(n+2))`
-/

namespace A092782.P12118235613140465888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 / (A275925 (n + 2) : ℚ))

end

end A092782.P12118235613140465888

namespace A092782

/-- `round(8/A275925(n+2))` -/
def P12118235613140465888.Spec : Prop :=
  ∀ n, P12118235613140465888.a n = A092782 (n + 1)

end A092782

/-! ## A092782.P18228903718923967758

`5-Δ[A003145(n+1)]`
-/

namespace A092782.P18228903718923967758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (f1 (n + 1) - f1 n)

end

end A092782.P18228903718923967758

namespace A092782

/-- `5-Δ[A003145(n+1)]` -/
def P18228903718923967758.Spec : Prop :=
  ∀ n, P18228903718923967758.a n = A092782 (n + 1)

end A092782

/-! ## A092782.P6693464270926889365

`val(A276792(n+1), 2)+1`
-/

namespace A092782.P6693464270926889365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276792 (n + 1)).toNat 2 + 1

end

end A092782.P6693464270926889365

namespace A092782

/-- `val(A276792(n+1), 2)+1` -/
def P6693464270926889365.Spec : Prop :=
  ∀ n, (P6693464270926889365.a n : ℤ) = A092782 (n + 1)

end A092782

/-! ## A092782.P12273976506845125083

`(A317193(n+1)+2)%3+1`
-/

namespace A092782.P12273976506845125083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317193 (n + 1) + 2) 3 + 1

end

end A092782.P12273976506845125083

namespace A092782

/-- `(A317193(n+1)+2)%3+1` -/
def P12273976506845125083.Spec : Prop :=
  ∀ n, P12273976506845125083.a n = A092782 (n + 1)

end A092782

/-! ## A092782.P8881446005017312071

`A010882(A356898(n))`
-/

namespace A092782.P8881446005017312071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A356898 n).toNat

end

end A092782.P8881446005017312071

namespace A092782

/-- `A010882(A356898(n))` -/
def P8881446005017312071.Spec : Prop :=
  ∀ n, P8881446005017312071.a n = A092782 (n + 1)

end A092782

/-! ## A092782.P13168155524407182853

`A010882(A278045(n+1))`
-/

namespace A092782.P13168155524407182853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A278045 (n + 1)).toNat

end

end A092782.P13168155524407182853

namespace A092782

/-- `A010882(A278045(n+1))` -/
def P13168155524407182853.Spec : Prop :=
  ∀ n, P13168155524407182853.a n = A092782 (n + 1)

end A092782

/-! ## A092782.P9253312521243567383

`2-A000494(Δ[A278041(n)])`
-/

namespace A092782.P9253312521243567383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000494 (f1 (n + 1) - f1 n).toNat

end

end A092782.P9253312521243567383

namespace A092782

/-- `2-A000494(Δ[A278041(n)])` -/
def P9253312521243567383.Spec : Prop :=
  ∀ n, P9253312521243567383.a n = A092782 (n + 1)

end A092782

/-! ## A092782.P14067371108579457705

`5-A276796(Δ[A278041(n)])`
-/

namespace A092782.P14067371108579457705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A276796 (f1 (n + 1) - f1 n).toNat

end

end A092782.P14067371108579457705

namespace A092782

/-- `5-A276796(Δ[A278041(n)])` -/
def P14067371108579457705.Spec : Prop :=
  ∀ n, P14067371108579457705.a n = A092782 (n + 1)

end A092782

/-! ## A092782.P6428487283028210134

`5-Δ[A278039(A278039(n))]`
-/

namespace A092782.P6428487283028210134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 (A278039 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (f1 (n + 1) - f1 n)

end

end A092782.P6428487283028210134

namespace A092782

/-- `5-Δ[A278039(A278039(n))]` -/
def P6428487283028210134.Spec : Prop :=
  ∀ n, P6428487283028210134.a n = A092782 (n + 1)

end A092782

/-! ## A092782.P11679299618057342753

`val(A278040(Δ[A278040(n)]), 2)`
-/

namespace A092782.P11679299618057342753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278040 (f1 (n + 1) - f1 n).toNat).toNat 2

end

end A092782.P11679299618057342753

namespace A092782

/-- `val(A278040(Δ[A278040(n)]), 2)` -/
def P11679299618057342753.Spec : Prop :=
  ∀ n, (P11679299618057342753.a n : ℤ) = A092782 (n + 1)

end A092782

/-! ## A092782.P6270826916425269671

`A096271(A003726(n+1))+1`
-/

namespace A092782.P6270826916425269671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096271 (A003726 (n + 1)).toNat + 1

end

end A092782.P6270826916425269671

namespace A092782

/-- `A096271(A003726(n+1))+1` -/
def P6270826916425269671.Spec : Prop :=
  ∀ n, P6270826916425269671.a n = A092782 (n + 1)

end A092782

/-! ## A092782.P12711684155156568832

`gcd(A040006(n), A305394(n+1))`
-/

namespace A092782.P12711684155156568832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040006 n) (A305394 (n + 1))

end

end A092782.P12711684155156568832

namespace A092782

/-- `gcd(A040006(n), A305394(n+1))` -/
def P12711684155156568832.Spec : Prop :=
  ∀ n, (P12711684155156568832.a n : ℤ) = A092782 (n + 1)

end A092782

/-! ## A092782.P1521465975773417488

`A014963(A317193(n+1)^or(1, n)+9)`
-/

namespace A092782.P1521465975773417488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A317193 (n + 1) ^ Nat.lor 1 n + 9).toNat

end

end A092782.P1521465975773417488

namespace A092782

/-- `A014963(A317193(n+1)^or(1, n)+9)` -/
def P1521465975773417488.Spec : Prop :=
  ∀ n, P1521465975773417488.a n = A092782 (n + 1)

end A092782

/-!
# A092783: Ceiling of imaginary parts of zeros of Riemann zeta function.

The programs for A092783, there is no canonical definition to state claims against.
-/

/-! ## A092783.P13657938676499898063

`1+A013629(n+1)`
-/

namespace A092783.P13657938676499898063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A013629 (n + 1)

end

end A092783.P13657938676499898063

/-! ## A092783.P7084534104078094132

`comp[A135297(n+1)+n]+1-n`
-/

namespace A092783.P7084534104078094132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135297 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) - (n : ℤ)

end

end A092783.P7084534104078094132

/-! ## A092783.P9808916576724524119

`A011760(A013629(n+1))`
-/

namespace A092783.P9808916576724524119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A013629 (n + 1)).toNat

end

end A092783.P9808916576724524119

/-! ## A092783.P10242409064315179535

`floor(A342756(n+1)/A000040(n+1))+1`
-/

namespace A092783.P10242409064315179535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A342756 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌋ + 1

end

end A092783.P10242409064315179535

/-! ## A092783.P16107272984576995092

`floor(A342756(n+1)/p?[A344180(n)])+1`
-/

namespace A092783.P16107272984576995092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A342756 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)⌋ + 1

end

end A092783.P16107272984576995092

/-! ## A092783.P18424192196150631281

`floor(A342756(n+1)/p?[A060000(n+1)])+1`
-/

namespace A092783.P18424192196150631281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A342756 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)⌋ + 1

end

end A092783.P18424192196150631281

/-! ## A092783.P4030918449266103569

`floor(A342756(n+1)/p?[A057979(n)])+1`
-/

namespace A092783.P4030918449266103569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A342756 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)⌋ + 1

end

end A092783.P4030918449266103569

/-!
# A092784: a(n) = round(n*(Pi - 2)).

The programs for A092784, the canonical program `A092784.P15462996337526975729` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092784 has offset 1).

The definition of A092784 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092784.P9791906538444622694

`round((n+1)*(π-2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A092784.P9791906538444622694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) * (Real.pi - 2))

end

end A092784.P9791906538444622694

namespace A092784

/-- `round((n+1)*(π-2))` -/
def P9791906538444622694.Spec : Prop :=
  ∀ n, P9791906538444622694.a n = A092784 (n + 1)

end A092784

/-! ## A092784.P15462996337526975729

`A022853(n+1)-A005843(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A092784

/-- `A022853(n+1)-A005843(n+1)` -/
def P15462996337526975729.Spec : Prop :=
  ∀ n, P15462996337526975729.a n = A092784 (n + 1)

theorem P15462996337526975729.correct : P15462996337526975729.Spec := by
  intro n
  simp only [A092784, Nat.add_sub_cancel]

end A092784

/-! ## A092784.P12771798348350020673

`round(π*(n+1))%(2*(n+1))`
-/

namespace A092784.P12771798348350020673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.pi * (n + 1 : ℝ))) (2 * (n + 1) : ℤ)

end

end A092784.P12771798348350020673

namespace A092784

/-- `round(π*(n+1))%(2*(n+1))` -/
def P12771798348350020673.Spec : Prop :=
  ∀ n, P12771798348350020673.a n = A092784 (n + 1)

end A092784

/-! ## A092784.P6391485471561778356

`∑[Δ[A022853(n)]-2]`
-/

namespace A092784.P6391485471561778356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092784.P6391485471561778356

namespace A092784

/-- `∑[Δ[A022853(n)]-2]` -/
def P6391485471561778356.Spec : Prop :=
  ∀ n, P6391485471561778356.a n = A092784 (n + 1)

end A092784

/-! ## A092784.P16478298558404361038

`∑[A000523(Δ[round(π*n)])]`
-/

namespace A092784.P16478298558404361038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092784.P16478298558404361038

namespace A092784

/-- `∑[A000523(Δ[round(π*n)])]` -/
def P16478298558404361038.Spec : Prop :=
  ∀ n, P16478298558404361038.a n = A092784 (n + 1)

end A092784

/-! ## A092784.P5477296062831405448

`∑[A079616(Δ[round(π*n)])]`
-/

namespace A092784.P5477296062831405448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079616 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092784.P5477296062831405448

namespace A092784

/-- `∑[A079616(Δ[round(π*n)])]` -/
def P5477296062831405448.Spec : Prop :=
  ∀ n, P5477296062831405448.a n = A092784 (n + 1)

end A092784

/-! ## A092784.P1375258291288743222

`∑[A259042(Δ[round(π*n)])]`
-/

namespace A092784.P1375258291288743222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259042 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092784.P1375258291288743222

namespace A092784

/-- `∑[A259042(Δ[round(π*n)])]` -/
def P1375258291288743222.Spec : Prop :=
  ∀ n, P1375258291288743222.a n = A092784 (n + 1)

end A092784

/-! ## A092784.P10157633543276729703

`∑[A318320(Δ[round(π*n)])]`
-/

namespace A092784.P10157633543276729703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318320 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092784.P10157633543276729703

namespace A092784

/-- `∑[A318320(Δ[round(π*n)])]` -/
def P10157633543276729703.Spec : Prop :=
  ∀ n, P10157633543276729703.a n = A092784 (n + 1)

end A092784

/-! ## A092784.P3035456610874287099

`A022853(n+1)-A000027(n+1)-A000027(n+1)`
-/

namespace A092784.P3035456610874287099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 (n + 1) - A000027 (n + 1) - A000027 (n + 1)

end

end A092784.P3035456610874287099

namespace A092784

/-- `A022853(n+1)-A000027(n+1)-A000027(n+1)` -/
def P3035456610874287099.Spec : Prop :=
  ∀ n, P3035456610874287099.a n = A092784 (n + 1)

end A092784

/-! ## A092784.P122162355951927423

`A028310(A022853(n+1)%(2*(n+1)))`
-/

namespace A092784.P122162355951927423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A022853 (n + 1)) (2 * (n + 1) : ℤ)).toNat

end

end A092784.P122162355951927423

namespace A092784

/-- `A028310(A022853(n+1)%(2*(n+1)))` -/
def P122162355951927423.Spec : Prop :=
  ∀ n, P122162355951927423.a n = A092784 (n + 1)

end A092784

/-! ## A092784.P8077968400462516144

`A187320(2*(n+1))-A187320(n+1)`
-/

namespace A092784.P8077968400462516144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187320 (2 * (n + 1)) - A187320 (n + 1)

end

end A092784.P8077968400462516144

namespace A092784

/-- `A187320(2*(n+1))-A187320(n+1)` -/
def P8077968400462516144.Spec : Prop :=
  ∀ n, P8077968400462516144.a n = A092784 (n + 1)

end A092784

/-! ## A092784.P8335587683041033482

`A004526(A004082(n+2))-2*(n+1)`
-/

namespace A092784.P8335587683041033482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004082 (n + 2)).toNat - (2 * (n + 1) : ℤ)

end

end A092784.P8335587683041033482

namespace A092784

/-- `A004526(A004082(n+2))-2*(n+1)` -/
def P8335587683041033482.Spec : Prop :=
  ∀ n, P8335587683041033482.a n = A092784 (n + 1)

end A092784

/-! ## A092784.P4550248396366769976

`A103128(∑[A001957(n+1)])`
-/

namespace A092784.P4550248396366769976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A092784.P4550248396366769976

namespace A092784

/-- `A103128(∑[A001957(n+1)])` -/
def P4550248396366769976.Spec : Prop :=
  ∀ n, P4550248396366769976.a n = A092784 (n + 1)

end A092784

/-!
# A092785: a(n) = sum(sum(binomial(j-n-1,m),m=0..n),j=0..n).

The programs for A092785, the canonical program `A092785.P12558785064700393744` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092785 has offset 0).

The definition of A092785 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092785.P12558785064700393744

`(-1)^n*A072547(n+2)+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A092785

/-- `(-1)^n*A072547(n+2)+1` -/
def P12558785064700393744.Spec : Prop :=
  ∀ n, P12558785064700393744.a n = A092785 n

theorem P12558785064700393744.correct : P12558785064700393744.Spec := by
  intro n
  simp only [A092785]

end A092785

/-! ## A092785.P9204011993665176619

`(-1)^n*A109078(2*n+1)+1`
-/

namespace A092785.P9204011993665176619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A109078 (2 * n + 1) + 1

end

end A092785.P9204011993665176619

namespace A092785

/-- `(-1)^n*A109078(2*n+1)+1` -/
def P9204011993665176619.Spec : Prop :=
  ∀ n, P9204011993665176619.a n = A092785 n

end A092785

/-! ## A092785.P18067599786499967379

`2*A014301(n+1)*A008683(A007918(n))^n+1`
-/

namespace A092785.P18067599786499967379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014301 (n + 1) * A008683 (A007918 n).toNat ^ n + 1

end

end A092785.P18067599786499967379

namespace A092785

/-- `2*A014301(n+1)*A008683(A007918(n))^n+1` -/
def P18067599786499967379.Spec : Prop :=
  ∀ n, P18067599786499967379.a n = A092785 n

end A092785

/-! ## A092785.P12417531203702882135

`(A001700(n)-A188289(n))*A033999(n)`
-/

namespace A092785.P12417531203702882135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001700 n - A188289 n) * A033999 n

end

end A092785.P12417531203702882135

namespace A092785

/-- `(A001700(n)-A188289(n))*A033999(n)` -/
def P12417531203702882135.Spec : Prop :=
  ∀ n, P12417531203702882135.a n = A092785 n

end A092785

/-! ## A092785.P10789130232186404804

`A341091(∑[4*n])`
-/

namespace A092785.P10789130232186404804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341091 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092785.P10789130232186404804

namespace A092785

/-- `A341091(∑[4*n])` -/
def P10789130232186404804.Spec : Prop :=
  ∀ n, P10789130232186404804.a n = A092785 n

end A092785

/-! ## A092785.P2848586853397618759

`1-A220074(2*(n+1)²)`
-/

namespace A092785.P2848586853397618759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A220074 (2 * (n + 1) ^ 2)

end

end A092785.P2848586853397618759

namespace A092785

/-- `1-A220074(2*(n+1)²)` -/
def P2848586853397618759.Spec : Prop :=
  ∀ n, P2848586853397618759.a n = A092785 n

end A092785

/-!
# A092786: a(n) = round(n*Pi^n).

The programs for A092786, the canonical program `A092786.P4641378033744109748` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092786 has offset 1).

The definition of A092786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092786.P4641378033744109748

`round((n+1)*π^(n+1))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092786

/-- `round((n+1)*π^(n+1))` -/
def P4641378033744109748.Spec : Prop :=
  ∀ n, P4641378033744109748.a n = A092786 (n + 1)

theorem P4641378033744109748.correct : P4641378033744109748.Spec := by
  intro n
  simp only [A092786, Nat.add_sub_cancel]

end A092786

/-!
# A092787: Primes in the sequence A005349 - 1.

The programs for A092787, there is no canonical definition to state claims against.
-/

/-! ## A092787.P7034399860697644626

`p?[A005349(n+1)-1]`
-/

namespace A092787.P7034399860697644626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092787.P7034399860697644626

/-! ## A092787.P9736904689392274421

`∩[A000040(n+1), A005349(n+1)-1]`
-/

namespace A092787.P9736904689392274421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092787.P9736904689392274421

/-! ## A092787.P9134875322878477435

`p?[∑[A082516(n+1)]]`
-/

namespace A092787.P9134875322878477435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082516 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092787.P9134875322878477435

/-! ## A092787.P5476343036908893906

`p?[A082516(n)+a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A092787.P5476343036908893906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A082516 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092787.P5476343036908893906

/-! ## A092787.P3146763932920252876

`p?[eq[0, A070635(n+1)]]`
-/

namespace A092787.P3146763932920252876
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A092787.P3146763932920252876

/-! ## A092787.P17250502947181930400

`p?[lt[0, A188641(n+1)]]`
-/

namespace A092787.P17250502947181930400
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188641 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A092787.P17250502947181930400

/-! ## A092787.P29266502813475761

`p?[n*A144261(n+1)]`
-/

namespace A092787.P29266502813475761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A144261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092787.P29266502813475761

/-! ## A092787.P9442837917672235997

`eq[A003415(n), A065518(n+1)]`
-/

namespace A092787.P9442837917672235997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065518 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092787.P9442837917672235997

/-! ## A092787.P1239944709087974541

`eq[A003415(n), A080462(n+1)]`
-/

namespace A092787.P1239944709087974541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080462 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092787.P1239944709087974541

/-! ## A092787.P14067875007432997585

`eq[A018783(n), A065518(n+1)]`
-/

namespace A092787.P14067875007432997585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065518 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092787.P14067875007432997585

/-! ## A092787.P16370668228405886017

`eq[A018783(n), A080462(n+1)]`
-/

namespace A092787.P16370668228405886017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080462 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092787.P16370668228405886017

/-! ## A092787.P2378437841121328024

`eq[A003415(n), A144261(n+1)]`
-/

namespace A092787.P2378437841121328024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144261 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092787.P2378437841121328024

/-! ## A092787.P15172328165766149002

`eq[A018783(n), A137424(n+1)]`
-/

namespace A092787.P15172328165766149002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137424 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092787.P15172328165766149002

/-! ## A092787.P4965441224866913344

`eq[A018783(n), A144261(n+1)]`
-/

namespace A092787.P4965441224866913344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144261 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092787.P4965441224866913344

/-! ## A092787.P17138360611334608920

`eq[A003415(n), A188641(n+1)]`
-/

namespace A092787.P17138360611334608920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188641 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092787.P17138360611334608920

/-! ## A092787.P9139671473043590896

`eq[A018783(n), A188641(n+1)]`
-/

namespace A092787.P9139671473043590896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188641 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092787.P9139671473043590896

/-! ## A092787.P290451487417151673

`eq[A032741(n), A188641(n+1)]`
-/

namespace A092787.P290451487417151673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188641 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092787.P290451487417151673

/-! ## A092787.P11253087267190118264

`eq[A099469(n+1), A129283(n)]`
-/

namespace A092787.P11253087267190118264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092787.P11253087267190118264

/-! ## A092787.P12412457967644844600

`eq[A080462(n+1), A175126(n)]`
-/

namespace A092787.P12412457967644844600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092787.P12412457967644844600

/-! ## A092787.P5825943167743005225

`eq[A144261(n+1), A175126(n)]`
-/

namespace A092787.P5825943167743005225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092787.P5825943167743005225

/-!
# A092789: a(n) = smallest prime of the form prime(n)+m! for some m >= 0.

The programs for A092789, there is no canonical definition to state claims against.
-/

/-! ## A092789.P10836625870502983537

`A175194(n+1)+p?[ceil(2/acot(n))]`
-/

namespace A092789.P10836625870502983537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175194 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092789.P10836625870502983537

/-! ## A092789.P5160048110259007524

`A175194(n+1)+Δ[A007504(n)]`
-/

namespace A092789.P5160048110259007524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175194 (n + 1) + (f1 (n + 1) - f1 n)

end

end A092789.P5160048110259007524

/-! ## A092789.P155789169401533662

`A175194(n+1)+p?[A001057(n)]`
-/

namespace A092789.P155789169401533662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175194 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092789.P155789169401533662

/-! ## A092789.P7592198798088967449

`A175194(n+1)+A000040(n+1)`
-/

namespace A092789.P7592198798088967449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175194 (n + 1) + A000040 (n + 1)

end

end A092789.P7592198798088967449

/-! ## A092789.P1075119058071385462

`A216883(n+1)+A175194(n+1)`
-/

namespace A092789.P1075119058071385462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1) + A175194 (n + 1)

end

end A092789.P1075119058071385462

/-! ## A092789.P18366656233671202035

`A216884(n+1)+A175194(n+1)`
-/

namespace A092789.P18366656233671202035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216884 (n + 1) + A175194 (n + 1)

end

end A092789.P18366656233671202035

/-! ## A092789.P13578375174279399516

`A216885(n+1)+A175194(n+1)`
-/

namespace A092789.P13578375174279399516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216885 (n + 1) + A175194 (n + 1)

end

end A092789.P13578375174279399516

/-! ## A092789.P6951992020719039210

`A385492(n+1)+A175194(n+1)`
-/

namespace A092789.P6951992020719039210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385492 (n + 1) + A175194 (n + 1)

end

end A092789.P6951992020719039210

/-! ## A092789.P15348358330475744853

`A000040(n+1)+A175193(n+1)!`
-/

namespace A092789.P15348358330475744853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (Nat.factorial (A175193 (n + 1)).toNat : ℤ)

end

end A092789.P15348358330475744853

/-!
# A092790: a(n) = (n+1)*phi(n-1)/2.

The programs for A092790, the canonical program `A092790.P11472934723672521066` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092790 has offset 3).

The definition of A092790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092790.P2281392607325431121

`(n/2+2)*A000010(n+2)`
-/

namespace A092790.P2281392607325431121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 2) * (A000010 (n + 2) : ℚ)

end

end A092790.P2281392607325431121

namespace A092790

/-- `(n/2+2)*A000010(n+2)` -/
def P2281392607325431121.Spec : Prop :=
  ∀ n, P2281392607325431121.a n = (A092790 (n + 3) : ℚ)

end A092790

/-! ## A092790.P975446672254459202

`(n/2+2)*Δ[A005728(n+1)]`
-/

namespace A092790.P975446672254459202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 2) * (f1 (n + 1) - f1 n : ℚ)

end

end A092790.P975446672254459202

namespace A092790

/-- `(n/2+2)*Δ[A005728(n+1)]` -/
def P975446672254459202.Spec : Prop :=
  ∀ n, P975446672254459202.a n = (A092790 (n + 3) : ℚ)

end A092790

/-! ## A092790.P9482246761125726544

`A000010(n+2)/2*A020705(n)`
-/

namespace A092790.P9482246761125726544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 2) : ℚ) / 2 * (A020705 n : ℚ)

end

end A092790.P9482246761125726544

namespace A092790

/-- `A000010(n+2)/2*A020705(n)` -/
def P9482246761125726544.Spec : Prop :=
  ∀ n, P9482246761125726544.a n = (A092790 (n + 3) : ℚ)

end A092790

/-! ## A092790.P2038062291202340103

`A023896(n+2)+A000010(n+2)`
-/

namespace A092790.P2038062291202340103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 2) + A000010 (n + 2)

end

end A092790.P2038062291202340103

namespace A092790

/-- `A023896(n+2)+A000010(n+2)` -/
def P2038062291202340103.Spec : Prop :=
  ∀ n, P2038062291202340103.a n = A092790 (n + 3)

end A092790

/-! ## A092790.P2096778311681600077

`A023896(n+2)+Δ[A002088(n+1)]`
-/

namespace A092790.P2096778311681600077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 2) + (f1 (n + 1) - f1 n)

end

end A092790.P2096778311681600077

namespace A092790

/-- `A023896(n+2)+Δ[A002088(n+1)]` -/
def P2096778311681600077.Spec : Prop :=
  ∀ n, P2096778311681600077.a n = A092790 (n + 3)

end A092790

/-! ## A092790.P11472934723672521066

`A023896(n+2)+A092249(n+2)-A092249(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A092790

/-- `A023896(n+2)+A092249(n+2)-A092249(n+1)` -/
def P11472934723672521066.Spec : Prop :=
  ∀ n, P11472934723672521066.a n = A092790 (n + 3)

theorem P11472934723672521066.correct : P11472934723672521066.Spec := by
  intro n
  simp only [A092790, Nat.add_sub_cancel]

end A092790

/-! ## A092790.P12770671643672398547

`A000010(n+2)+A213544(n+2)-A213544(n+1)`
-/

namespace A092790.P12770671643672398547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2) + (A213544 (n + 2) - A213544 (n + 1))

end

end A092790.P12770671643672398547

namespace A092790

/-- `A000010(n+2)+A213544(n+2)-A213544(n+1)` -/
def P12770671643672398547.Spec : Prop :=
  ∀ n, P12770671643672398547.a n = A092790 (n + 3)

end A092790

/-! ## A092790.P7975017618023073689

`A023896(n+2)+A349136(n+2)+A055034(n+2)`
-/

namespace A092790.P7975017618023073689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 2) + (A349136 (n + 2) + A055034 (n + 2))

end

end A092790.P7975017618023073689

namespace A092790

/-- `A023896(n+2)+A349136(n+2)+A055034(n+2)` -/
def P7975017618023073689.Spec : Prop :=
  ∀ n, P7975017618023073689.a n = A092790 (n + 3)

end A092790

/-! ## A092790.P18256552265957442433

`A023896(n+2)+A349679(n+2)-A067392(n+2)`
-/

namespace A092790.P18256552265957442433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 2) + (A349679 (n + 2) - A067392 (n + 2))

end

end A092790.P18256552265957442433

namespace A092790

/-- `A023896(n+2)+A349679(n+2)-A067392(n+2)` -/
def P18256552265957442433.Spec : Prop :=
  ∀ n, P18256552265957442433.a n = A092790 (n + 3)

end A092790

/-! ## A092790.P8449750509777668189

`A000010(n+2)+A007875(n+2)*A248003(n+2)`
-/

namespace A092790.P8449750509777668189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2) + A007875 (n + 2) * A248003 (n + 2)

end

end A092790.P8449750509777668189

namespace A092790

/-- `A000010(n+2)+A007875(n+2)*A248003(n+2)` -/
def P8449750509777668189.Spec : Prop :=
  ∀ n, P8449750509777668189.a n = A092790 (n + 3)

end A092790

/-! ## A092790.P14668438278766235157

`A384710(n+2)+A023896(n+2)`
-/

namespace A092790.P14668438278766235157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384710 (n + 2) + A023896 (n + 2)

end

end A092790.P14668438278766235157

namespace A092790

/-- `A384710(n+2)+A023896(n+2)` -/
def P14668438278766235157.Spec : Prop :=
  ∀ n, P14668438278766235157.a n = A092790 (n + 3)

end A092790

/-! ## A092790.P1846520466432983226

`A014682((n+4)*A000010(n+2))`
-/

namespace A092790.P1846520466432983226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ((n + 4 : ℤ) * A000010 (n + 2)).toNat

end

end A092790.P1846520466432983226

namespace A092790

/-- `A014682((n+4)*A000010(n+2))` -/
def P1846520466432983226.Spec : Prop :=
  ∀ n, P1846520466432983226.a n = A092790 (n + 3)

end A092790

/-!
# A092791: Numbers k such that (k-1)! + k is prime.

The programs for A092791, there is no canonical definition to state claims against.
-/

/-! ## A092791.P7688850525014158062

`A073308(n+1)+1`
-/

namespace A092791.P7688850525014158062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073308 (n + 1) + 1

end

end A092791.P7688850525014158062

/-! ## A092791.P12801139374300892455

`A141310(A073308(n+1))`
-/

namespace A092791.P12801139374300892455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A073308 (n + 1)).toNat

end

end A092791.P12801139374300892455

/-! ## A092791.P6562757395562142268

`record[A014963(A084749(n+1)+1)]`
-/

namespace A092791.P6562757395562142268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A084749 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092791.P6562757395562142268

/-! ## A092791.P12101623940407658803

`record[A020639(A084749(n+1)+1)]`
-/

namespace A092791.P12101623940407658803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A084749 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092791.P12101623940407658803

/-!
# A092793: First prime in n# + p where p is prime.

The programs for A092793, there is no canonical definition to state claims against.
-/

/-! ## A092793.P283663266305059213

`A002110(A100380(n+1))+A000040(n+1)`
-/

namespace A092793.P283663266305059213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A100380 (n + 1)).toNat + A000040 (n + 1)

end

end A092793.P283663266305059213

/-! ## A092793.P2162929887039443953

`A002110(A100380(n+1))+record[A006530(n+2)]`
-/

namespace A092793.P2162929887039443953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A100380 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092793.P2162929887039443953

/-! ## A092793.P18235933139708872594

`A002110(A100380(n+1))+record[A020639(n+2)]`
-/

namespace A092793.P18235933139708872594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A100380 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092793.P18235933139708872594

/-! ## A092793.P4479246368448186423

`A002110(A100380(n+1))+p?[A018252(n+1)-7]`
-/

namespace A092793.P4479246368448186423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A100380 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092793.P4479246368448186423

/-!
# A092794: Number of connected relations.

The programs for A092794, the canonical program `A092794.P10429014305737604076` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092794 has offset 1).

The definition of A092794 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092794.P10429014305737604076

`8^(n+1)-3*5^(n+1)+2*4^(n+1)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092794

/-- `8^(n+1)-3*5^(n+1)+2*4^(n+1)` -/
def P10429014305737604076.Spec : Prop :=
  ∀ n, P10429014305737604076.a n = A092794 (n + 1)

theorem P10429014305737604076.correct : P10429014305737604076.Spec := by
  intro n
  simp only [A092794, Nat.add_sub_cancel]

end A092794

/-!
# A092795: Number of connected relations.

The programs for A092795, the canonical program `A092795.P1611783931000861998` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092795 has offset 1).

The definition of A092795 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092795.P1611783931000861998

`16^(n+1)-4*9^(n+1)-3*7^(n+1)+12*6^(n+1)-6*5^(n+1)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092795

/-- `16^(n+1)-4*9^(n+1)-3*7^(n+1)+12*6^(n+1)-6*5^(n+1)` -/
def P1611783931000861998.Spec : Prop :=
  ∀ n, P1611783931000861998.a n = A092795 (n + 1)

theorem P1611783931000861998.correct : P1611783931000861998.Spec := by
  intro n
  simp only [A092795, Nat.add_sub_cancel]

end A092795

/-!
# A092798: 

The programs for A092798, there is no canonical definition to state claims against.
-/

/-! ## A092798.P4033693159009304974

`2^A293137(A010575(n))`
-/

namespace A092798.P4033693159009304974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A293137 (A010575 n).toNat : ℤ)

end

end A092798.P4033693159009304974

