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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A305300: Ordinal transform of A305430, the smallest k > n whose binary expansion encodes an irreducible (0,1)-polynomial over Q.

The programs for A305300, there is no canonical definition to state claims against.
-/

/-! ## A305300.P7687363980083528847

`2-A305429(n+2)+n`
-/

namespace A305300.P7687363980083528847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A305429 (n + 2) + (n : ℤ)

end

end A305300.P7687363980083528847

/-! ## A305300.P3772178855348885696

`∑[A024000(Δ[A305429(n+1)])]`
-/

namespace A305300.P3772178855348885696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305429 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305300.P3772178855348885696

/-! ## A305300.P6352311872017786011

`A077168((n+1)%A305429(n+2))`
-/

namespace A305300.P6352311872017786011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 (Int.tmod (n + 1 : ℤ) (A305429 (n + 2))).toNat

end

end A305300.P6352311872017786011

/-! ## A305300.P18091559485874274233

`a(n-1)*Δ[A255573(n)]+1` with `a(0)=1`
-/

namespace A305300.P18091559485874274233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255573 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (f1 (n + 1) - f1 n) + 1

end

end A305300.P18091559485874274233

/-! ## A305300.P4962737104545538247

`A004526(2*(n+2))+A001478(A305429(n+2))`
-/

namespace A305300.P4962737104545538247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * (n + 2)) + A001478 (A305429 (n + 2)).toNat

end

end A305300.P4962737104545538247

/-!
# A305301: Restricted growth sequence transform of A278222(A304760(n)), constructed from runlengths of 1-digits in base-3 representation of A254103(n).

The programs for A305301, there is no canonical definition to state claims against.
-/

/-! ## A305301.P11721904321445643126

`A001511(lcm(A000369(n+1), A286633(n)))`
-/

namespace A305301.P11721904321445643126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.lcm (A000369 (n + 1)) (A286633 n))

end

end A305301.P11721904321445643126

/-! ## A305301.P12148150181457787730

`A001511(or(A262983(n+1), A286633(n)))`
-/

namespace A305301.P12148150181457787730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.lor (A262983 (n + 1)) (A286633 n)).toNat

end

end A305301.P12148150181457787730

/-! ## A305301.P446287503132482151

`A237271(A329929(n+1)+A007426(n+1))`
-/

namespace A305301.P446287503132482151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A329929 (n + 1) + A007426 (n + 1)).toNat

end

end A305301.P446287503132482151

/-! ## A305301.P8548883180396621281

`A342655(A001358(n+2)*A342662(n+2))`
-/

namespace A305301.P8548883180396621281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342655 (A001358 (n + 2) * A342662 (n + 2)).toNat

end

end A305301.P8548883180396621281

/-! ## A305301.P6026622603705461022

`A001222(A301634(n+5)+A008864(n+3))`
-/

namespace A305301.P6026622603705461022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A301634 (n + 5) + A008864 (n + 3)).toNat

end

end A305301.P6026622603705461022

/-!
# A305302: Restricted growth sequence transform of A278222(A291760(n)), constructed from runlengths of 2-digits in base-3 representation of A254103(n).

The programs for A305302, there is no canonical definition to state claims against.
-/

/-! ## A305302.P14607935219846940229

`A246029(A130321(n)*A291760(n))`
-/

namespace A305302.P14607935219846940229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (A130321 n * A291760 n).toNat

end

end A305302.P14607935219846940229

/-! ## A305302.P566503667650642602

`A088439(comp[3*n]²)*A246029(A291760(n))`
-/

namespace A305302.P566503667650642602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088439 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2) * A246029 (A291760 n).toNat

end

end A305302.P566503667650642602

/-! ## A305302.P2465129886529100022

`A109007(comp[3*n]²)*A246029(A291760(n))`
-/

namespace A305302.P2465129886529100022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109007 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2) * A246029 (A291760 n).toNat

end

end A305302.P2465129886529100022

/-! ## A305302.P17999470688761871431

`A131561(comp[3*n]²)*A246029(A291760(n))`
-/

namespace A305302.P17999470688761871431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131561 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2) * A246029 (A291760 n).toNat

end

end A305302.P17999470688761871431

/-! ## A305302.P13610622174517970608

`A167176(comp[3*n]²)*A246029(A291760(n))`
-/

namespace A305302.P13610622174517970608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167176 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2) * A246029 (A291760 n).toNat

end

end A305302.P13610622174517970608

/-! ## A305302.P12702903631235271505

`A246029(A291760(n))+A000007(A285865(n))`
-/

namespace A305302.P12702903631235271505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (A291760 n).toNat + A000007 (A285865 n).toNat

end

end A305302.P12702903631235271505

/-! ## A305302.P6032424041127748115

`A246029(A291760(n))%A002378(A038417(n))`
-/

namespace A305302.P6032424041127748115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246029 (A291760 n).toNat) (A002378 (A038417 n).toNat)

end

end A305302.P6032424041127748115

/-!
# A305304: Expansion of e.g.f. 1/(1 + LambertW(-x/(1 + x))).

The programs for A305304, there is no canonical definition to state claims against.
-/

/-! ## A305304.P2915311254609789648

`A241580(∑[char[1]+n]+1)`
-/

namespace A305304.P2915311254609789648
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241580 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305304.P2915311254609789648

/-! ## A305304.P8009277030296128402

`A241580(A133263(n))+A159713(n)`
-/

namespace A305304.P8009277030296128402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241580 (A133263 n).toNat + A159713 n

end

end A305304.P8009277030296128402

/-! ## A305304.P4240297397168729835

`A241580(A133263(n))^A178489(n)`
-/

namespace A305304.P4240297397168729835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241580 (A133263 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A305304.P4240297397168729835

/-! ## A305304.P16732823380559163818

`lcm(A002635(n), A241580(A133263(n)))`
-/

namespace A305304.P16732823380559163818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002635 n) (A241580 (A133263 n).toNat)

end

end A305304.P16732823380559163818

/-! ## A305304.P14244976052792190638

`A033999(n)²*A241580(A133263(n))`
-/

namespace A305304.P14244976052792190638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A241580 (A133263 n).toNat

end

end A305304.P14244976052792190638

/-!
# A305305: Expansion of e.g.f. 1/(1 - Sum_{k>=1} x^k/(k*(1 - x^k))).

The programs for A305305, there is no canonical definition to state claims against.
-/

/-! ## A305305.P2924295308621493397

`A194979(A005012(n))`
-/

namespace A305305.P2924295308621493397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (A005012 n).toNat

end

end A305305.P2924295308621493397

/-! ## A305305.P5348011637485052949

`A156351(A064087(n)+A000142(n))`
-/

namespace A305305.P5348011637485052949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156351 (A064087 n + A000142 n).toNat

end

end A305305.P5348011637485052949

/-!
# A305306: Expansion of e.g.f. 1/(1 + log(1 - x)/(1 - x)).

The programs for A305306, there is no canonical definition to state claims against.
-/

/-! ## A305306.P2818094987097888536

`A308861(n)-A066339(A305305(n))`
-/

namespace A305306.P2818094987097888536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308861 n - A066339 (A305305 n).toNat

end

end A305306.P2818094987097888536

/-!
# A305307: Expansion of e.g.f. 1/(1 - log(1 + x)/(1 - x)).

The programs for A305307, there is no canonical definition to state claims against.
-/

/-! ## A305307.P11117317148858374178

`A020911(A004957(∏[abs(1-2*n)]))`
-/

namespace A305307.P11117317148858374178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020911 (A004957 (∏ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A305307.P11117317148858374178

/-! ## A305307.P10635569036185904260

`A004777(A001147(n)+A000322(n))`
-/

namespace A305307.P10635569036185904260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004777 (A001147 n + A000322 n).toNat

end

end A305307.P10635569036185904260

/-!
# A305309: Array read by rows: a(n, k) = A048996(n, k) * A118851(n, k), n >= 1, k = 1..A000041(n).

The programs for A305309, there is no canonical definition to state claims against.
-/

/-! ## A305309.P7569805712680308391

`A085643(n+1)`
-/

namespace A305309.P7569805712680308391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085643 (n + 1)

end

end A305309.P7569805712680308391

/-! ## A305309.P11600308668534423429

`ratio[A085643(n)]*A085643(n)`
-/

namespace A305309.P11600308668534423429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085643 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A085643 n : ℚ)

end

end A305309.P11600308668534423429

/-! ## A305309.P16641565009901718467

`A048996(n+1)*A118851(n+1)`
-/

namespace A305309.P16641565009901718467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048996 (n + 1) * A118851 (n + 1)

end

end A305309.P16641565009901718467

/-! ## A305309.P11531362663438694158

`A178802(n+1)/A121457(n+1)`
-/

namespace A305309.P11531362663438694158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178802 (n + 1) : ℚ) / (A121457 (n + 1) : ℚ)

end

end A305309.P11531362663438694158

/-! ## A305309.P3030363806670262568

`A182779(n+1)/A318762(A185974(n+1))`
-/

namespace A305309.P3030363806670262568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182779 (n + 1) : ℚ) / (A318762 (A185974 (n + 1)).toNat : ℚ)

end

end A305309.P3030363806670262568

/-! ## A305309.P16406772742061940122

`A178802(n+1)/(A036039(n+1)*A096162(n+1))`
-/

namespace A305309.P16406772742061940122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178802 (n + 1) : ℚ) / (A036039 (n + 1) * A096162 (n + 1) : ℚ)

end

end A305309.P16406772742061940122

/-! ## A305309.P14808164087606489988

`A178802(n+1)/(A036038(n+1)*A107106(n+1))`
-/

namespace A305309.P14808164087606489988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178802 (n + 1) : ℚ) / (A036038 (n + 1) * A107106 (n + 1) : ℚ)

end

end A305309.P14808164087606489988

/-! ## A305309.P15709024172923076223

`A134133(n+1)/A036039(n+1)*A179233(n+1)`
-/

namespace A305309.P15709024172923076223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134133 (n + 1) : ℚ) / (A036039 (n + 1) : ℚ) * (A179233 (n + 1) : ℚ)

end

end A305309.P15709024172923076223

/-! ## A305309.P14186316393590317462

`A130561(n+1)/A121457(n+1)*A178803(n+1)`
-/

namespace A305309.P14186316393590317462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130561 (n + 1) : ℚ) / (A121457 (n + 1) : ℚ) * (A178803 (n + 1) : ℚ)

end

end A305309.P14186316393590317462

/-! ## A305309.P3783889272469739599

`abs(A111786(n+1)*A118851(n+1))`
-/

namespace A305309.P3783889272469739599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111786 (n + 1) * A118851 (n + 1)|

end

end A305309.P3783889272469739599

/-!
# A305310: Numbers k(n) used for Cassels's Markoff forms MF(n) corresponding to the conjectured unique Markoff triples MT(n) with maximal entry m(n) = A002559(n), for n >= 1.

The programs for A305310, there is no canonical definition to state claims against.
-/

/-! ## A305310.P18322286076120421073

`A305311(n+1)%A002559(n+1)`
-/

namespace A305310.P18322286076120421073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305311 (n + 1)) (A002559 (n + 1))

end

end A305310.P18322286076120421073

/-! ## A305310.P17322736731208766798

`A305311(A000027(n+1))%(A086326(n+1)/3)`
-/

namespace A305310.P17322736731208766798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305311 (A000027 (n + 1)).toNat) (SequenceMachineLib.roundAway ((A086326 (n + 1) : ℚ) / 3))

end

end A305310.P17322736731208766798

/-! ## A305310.P3986291442499190642

`A305311(A028310(n+1))%(A086326(n+1)/3)`
-/

namespace A305310.P3986291442499190642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305311 (A028310 (n + 1)).toNat) (SequenceMachineLib.roundAway ((A086326 (n + 1) : ℚ) / 3))

end

end A305310.P3986291442499190642

/-! ## A305310.P10916834620620909129

`A002559(n+1)+A305311(n+1)-A086326(n+1)`
-/

namespace A305310.P10916834620620909129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002559 (n + 1) + (A305311 (n + 1) - A086326 (n + 1))

end

end A305310.P10916834620620909129

/-! ## A305310.P7703724798113658308

`A000027(A305311(n+1))%ceil(A324250(n+1)/3)`
-/

namespace A305310.P7703724798113658308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A305311 (n + 1)).toNat) ⌈(A324250 (n + 1) : ℚ) / 3⌉

end

end A305310.P7703724798113658308

/-!
# A305311: Numbers k(n) used for Markoff forms determining quadratic irrationals with purely periodic continued fractions.

The programs for A305311, there is no canonical definition to state claims against.
-/

/-! ## A305311.P16111253398376731862

`A305310(n+1)+2*A002559(n+1)`
-/

namespace A305311.P16111253398376731862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305310 (n + 1) + 2 * A002559 (n + 1)

end

end A305311.P16111253398376731862

/-! ## A305311.P4437507018435034851

`A086326(n+1)+A305310(n+1)-A002559(n+1)`
-/

namespace A305311.P4437507018435034851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086326 (n + 1) + (A305310 (n + 1) - A002559 (n + 1))

end

end A305311.P4437507018435034851

/-! ## A305311.P5010101366369119725

`A305310(n+1)+record[2*A291694(n+1)]`
-/

namespace A305311.P5010101366369119725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A291694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305310 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305311.P5010101366369119725

/-! ## A305311.P18100293022043217181

`A002559(n+1)+A305310(n+1)+record[A291694(n+1)]`
-/

namespace A305311.P18100293022043217181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002559 (n + 1) + (A305310 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A305311.P18100293022043217181

/-! ## A305311.P9352797694423857108

`A305310(n+1)+A004277(A002559(n+1))`
-/

namespace A305311.P9352797694423857108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305310 (n + 1) + A004277 (A002559 (n + 1)).toNat

end

end A305311.P9352797694423857108

/-!
# A305312: Discriminant a(n) of the indefinite binary quadratic Markoff form m(n)*F_{m(n)}(x, y) with m(n) = A002559(n), for n >= 1.

The programs for A305312, there is no canonical definition to state claims against.
-/

/-! ## A305312.P449172260916209620

`A086326(n+1)²-4`
-/

namespace A305312.P449172260916209620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086326 (n + 1) ^ 2 - 4

end

end A305312.P449172260916209620

/-! ## A305312.P18255645462765759551

`(A324250(n+1)+2)²-4`
-/

namespace A305312.P18255645462765759551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A324250 (n + 1) + 2) ^ 2 - 4

end

end A305312.P18255645462765759551

/-! ## A305312.P12471692417778540506

`(3*A002559(n+1))²-4`
-/

namespace A305312.P12471692417778540506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A002559 (n + 1)) ^ 2 - 4

end

end A305312.P12471692417778540506

/-! ## A305312.P362560727266060821

`lcm(3, A002559(C(n+1, n)))²-4`
-/

namespace A305312.P362560727266060821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A002559 (Nat.choose (n + 1) n)) ^ 2 : ℤ) - 4

end

end A305312.P362560727266060821

/-! ## A305312.P753157197650816775

`lcm(3, A002559(A000027(n+1)))²-4`
-/

namespace A305312.P753157197650816775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A002559 (A000027 (n + 1)).toNat) ^ 2 : ℤ) - 4

end

end A305312.P753157197650816775

/-!
# A305313: Smallest member m_1(n) of the ordered Markoff triple MT(n) with largest member m(n) = A002559(n), n >= 1. These triples are conjectured to be unique.

The programs for A305313, there is no canonical definition to state claims against.
-/

/-! ## A305313.P11756386115340800119

`A253809(Δ[n²])`
-/

namespace A305313.P11756386115340800119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253809 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A305313.P11756386115340800119

/-! ## A305313.P990107798882993093

`∏{p}[A253809(2*n+1), #]`
-/

namespace A305313.P990107798882993093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253809 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A305313.P990107798882993093

/-! ## A305313.P8976300147833741924

`A007947(A253809(2*n+1))`
-/

namespace A305313.P8976300147833741924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A253809 (2 * n + 1)).toNat

end

end A305313.P8976300147833741924

/-! ## A305313.P15989420565411812710

`A001281(2*A253809(2*n+1))`
-/

namespace A305313.P15989420565411812710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * A253809 (2 * n + 1)).toNat

end

end A305313.P15989420565411812710

/-! ## A305313.P10163437417734631839

`A004526(2*A253809(2*n+1))`
-/

namespace A305313.P10163437417734631839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A253809 (2 * n + 1)).toNat

end

end A305313.P10163437417734631839

/-!
# A305314: Second member m_2(n) of the Markoff triple MT(n) with largest member m(n) = A002559(n), and smallest member m_1(n) = A305313(n), for n >= 1. These triples are conjectured to be unique.

The programs for A305314, there is no canonical definition to state claims against.
-/

/-! ## A305314.P5609588801526193363

`A253809(2*(n+1))`
-/

namespace A305314.P5609588801526193363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253809 (2 * (n + 1))

end

end A305314.P5609588801526193363

/-! ## A305314.P17687866277676094452

`or(char[1], A253809(n+2+n))`
-/

namespace A305314.P17687866277676094452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A253809 (n + 2 + n))

end

end A305314.P17687866277676094452

/-! ## A305314.P34999281518865244

`∑{d}[A253809(n+2+n), A000010(#)]`
-/

namespace A305314.P34999281518865244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253809 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A305314.P34999281518865244

/-! ## A305314.P13698170848179192340

`A253809(n+2+n)/A007318(∑[n])`
-/

namespace A305314.P13698170848179192340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253809 (n + 2 + n) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A305314.P13698170848179192340

/-! ## A305314.P5577838961915935926

`A253809(n+2+n)^A007318(C(2, n))`
-/

namespace A305314.P5577838961915935926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253809 (n + 2 + n) : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A305314.P5577838961915935926

/-!
# A305315: a(n) = sqrt(5*b(n)^2 - 4), with b(n) = A134493(n) = Fibonacci(6*n+1), n >= 0.

The programs for A305315, the canonical program `A305315.P5794810711031270934` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305315 has offset 0).

The definition of A305315 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A305315.P5794810711031270934

`18*a(n-1)-a(n-2)` with `a(0)=1, a(1)=29`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A305315

/-- `18*a(n-1)-a(n-2)` -/
def P5794810711031270934.Spec : Prop :=
  ∀ n, P5794810711031270934.a n = A305315 n

theorem P5794810711031270934.correct : P5794810711031270934.Spec := by
  intro n
  simp only [A305315]

end A305315

/-! ## A305315.P5358858028475380608

`ogf((1+11x)/(1-18x+x^2))`
-/

namespace A305315.P5358858028475380608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 11] [1, -18, 1] n

end

end A305315.P5358858028475380608

namespace A305315

/-- `ogf((1+11x)/(1-18x+x^2))` -/
def P5358858028475380608.Spec : Prop :=
  ∀ n, P5358858028475380608.a n = A305315 n

end A305315

/-! ## A305315.P14804291456735124485

`A048876(2*n)`
-/

namespace A305315.P14804291456735124485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048876 (2 * n)

end

end A305315.P14804291456735124485

namespace A305315

/-- `A048876(2*n)` -/
def P14804291456735124485.Spec : Prop :=
  ∀ n, P14804291456735124485.a n = A305315 n

end A305315

/-! ## A305315.P15235990311066790650

`A002878(3*n)`
-/

namespace A305315.P15235990311066790650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 (3 * n)

end

end A305315.P15235990311066790650

namespace A305315

/-- `A002878(3*n)` -/
def P15235990311066790650.Spec : Prop :=
  ∀ n, P15235990311066790650.a n = A305315 n

end A305315

/-! ## A305315.P10507664408623427276

`A014447(4*n)`
-/

namespace A305315.P10507664408623427276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014447 (4 * n)

end

end A305315.P10507664408623427276

namespace A305315

/-- `A014447(4*n)` -/
def P10507664408623427276.Spec : Prop :=
  ∀ n, P10507664408623427276.a n = A305315 n

end A305315

/-! ## A305315.P4824257135733584177

`A075193(6*n)`
-/

namespace A305315.P4824257135733584177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 (6 * n)

end

end A305315.P4824257135733584177

namespace A305315

/-- `A075193(6*n)` -/
def P4824257135733584177.Spec : Prop :=
  ∀ n, P4824257135733584177.a n = A305315 n

end A305315

/-! ## A305315.P8073455870414771141

`A154699(6*n)`
-/

namespace A305315.P8073455870414771141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154699 (6 * n)

end

end A305315.P8073455870414771141

namespace A305315

/-- `A154699(6*n)` -/
def P8073455870414771141.Spec : Prop :=
  ∀ n, P8073455870414771141.a n = A305315 n

end A305315

/-! ## A305315.P7792237489105043936

`A295674(6*n)`
-/

namespace A305315.P7792237489105043936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295674 (6 * n)

end

end A305315.P7792237489105043936

namespace A305315

/-- `A295674(6*n)` -/
def P7792237489105043936.Spec : Prop :=
  ∀ n, P7792237489105043936.a n = A305315 n

end A305315

/-! ## A305315.P14410361696828288197

`A351353(Δ[n²])`
-/

namespace A305315.P14410361696828288197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351353 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A305315.P14410361696828288197

namespace A305315

/-- `A351353(Δ[n²])` -/
def P14410361696828288197.Spec : Prop :=
  ∀ n, P14410361696828288197.a n = A305315 n

end A305315

/-! ## A305315.P17206661612668355038

`A142718(3*n+2)`
-/

namespace A305315.P17206661612668355038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142718 (3 * n + 2)

end

end A305315.P17206661612668355038

namespace A305315

/-- `A142718(3*n+2)` -/
def P17206661612668355038.Spec : Prop :=
  ∀ n, P17206661612668355038.a n = A305315 n

end A305315

/-!
# A305316: a(n) = sqrt(5*b(n)^2 - 4) with b(n) = Fibonacci(6*n+5) = A134497(n).

The programs for A305316, the canonical program `A305316.P13099243060583875329` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305316 has offset 0).

The definition of A305316 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A305316.P13099243060583875329

`18*a(n-1)-a(n-2)` with `a(0)=11, a(1)=199`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A305316

/-- `18*a(n-1)-a(n-2)` -/
def P13099243060583875329.Spec : Prop :=
  ∀ n, P13099243060583875329.a n = A305316 n

theorem P13099243060583875329.correct : P13099243060583875329.Spec := by
  intro n
  simp only [A305316]

end A305316

/-! ## A305316.P5472078181017621278

`ogf((11+x)/(1-18x+x^2))`
-/

namespace A305316.P5472078181017621278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, 1] [1, -18, 1] n

end

end A305316.P5472078181017621278

namespace A305316

/-- `ogf((11+x)/(1-18x+x^2))` -/
def P5472078181017621278.Spec : Prop :=
  ∀ n, P5472078181017621278.a n = A305316 n

end A305316

/-! ## A305316.P6256321997140544049

`A163063(Δ[n²])`
-/

namespace A305316.P6256321997140544049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163063 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A305316.P6256321997140544049

namespace A305316

/-- `A163063(Δ[n²])` -/
def P6256321997140544049.Spec : Prop :=
  ∀ n, P6256321997140544049.a n = A305316 n

end A305316

/-! ## A305316.P4171922804567670567

`Δ[A254962(Δ[n²])]`
-/

namespace A305316.P4171922804567670567
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254962 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A305316.P4171922804567670567

namespace A305316

/-- `Δ[A254962(Δ[n²])]` -/
def P4171922804567670567.Spec : Prop :=
  ∀ n, P4171922804567670567.a n = A305316 n

end A305316

/-! ## A305316.P3478729505073719869

`A351353(2*(n+1))`
-/

namespace A305316.P3478729505073719869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351353 (2 * (n + 1))

end

end A305316.P3478729505073719869

namespace A305316

/-- `A351353(2*(n+1))` -/
def P3478729505073719869.Spec : Prop :=
  ∀ n, P3478729505073719869.a n = A305316 n

end A305316

/-! ## A305316.P7301679546413843682

`A142718(3*(n+1))`
-/

namespace A305316.P7301679546413843682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142718 (3 * (n + 1))

end

end A305316.P7301679546413843682

namespace A305316

/-- `A142718(3*(n+1))` -/
def P7301679546413843682.Spec : Prop :=
  ∀ n, P7301679546413843682.a n = A305316 n

end A305316

/-! ## A305316.P14655889559589445217

`A002878(3*n+2)`
-/

namespace A305316.P14655889559589445217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 (3 * n + 2)

end

end A305316.P14655889559589445217

namespace A305316

/-- `A002878(3*n+2)` -/
def P14655889559589445217.Spec : Prop :=
  ∀ n, P14655889559589445217.a n = A305316 n

end A305316

/-! ## A305316.P14901456057633321168

`A254729(6*(n+1))`
-/

namespace A305316.P14901456057633321168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254729 (6 * (n + 1))

end

end A305316.P14901456057633321168

namespace A305316

/-- `A254729(6*(n+1))` -/
def P14901456057633321168.Spec : Prop :=
  ∀ n, P14901456057633321168.a n = A305316 n

end A305316

/-! ## A305316.P17771864431369754380

`A292412(6*(n+1))`
-/

namespace A305316.P17771864431369754380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292412 (6 * (n + 1))

end

end A305316.P17771864431369754380

namespace A305316

/-- `A292412(6*(n+1))` -/
def P17771864431369754380.Spec : Prop :=
  ∀ n, P17771864431369754380.a n = A305316 n

end A305316

/-! ## A305316.P14405362660538000122

`A295727(6*(n+1))`
-/

namespace A305316.P14405362660538000122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295727 (6 * (n + 1))

end

end A305316.P14405362660538000122

namespace A305316

/-- `A295727(6*(n+1))` -/
def P14405362660538000122.Spec : Prop :=
  ∀ n, P14405362660538000122.a n = A305316 n

end A305316

/-!
# A305317: a(n) gives the length of the period of the regular continued fraction of the quadratic irrational of any Markoff form representative Mf(n), n >= 1 (assuming the uniqueness conjecture).

The programs for A305317, there is no canonical definition to state claims against.
-/

/-! ## A305317.P11262655358195096683

`A020639(A062723(n))*A280315(n+1)`
-/

namespace A305317.P11262655358195096683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A062723 n).toNat * A280315 (n + 1)

end

end A305317.P11262655358195096683

/-! ## A305317.P1279913319439193629

`A043529(A003873(n+1))*A280315(n+1)`
-/

namespace A305317.P1279913319439193629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (A003873 (n + 1)).toNat * A280315 (n + 1)

end

end A305317.P1279913319439193629

/-! ## A305317.P4174553846010960421

`A004277(A280315(n+1)%A003873(n+1))`
-/

namespace A305317.P4174553846010960421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Int.tmod (A280315 (n + 1)) (A003873 (n + 1))).toNat

end

end A305317.P4174553846010960421

/-! ## A305317.P13438132177283646523

`A001221(A070875(n))*A280315(n+1)`
-/

namespace A305317.P13438132177283646523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A070875 n).toNat * A280315 (n + 1)

end

end A305317.P13438132177283646523

/-! ## A305317.P3553373961234410933

`A020639(A213339(n+1))*A280315(n+1)`
-/

namespace A305317.P3553373961234410933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A213339 (n + 1)).toNat * A280315 (n + 1)

end

end A305317.P3553373961234410933

/-!
# A305318: Numbers k such that A071866(k)=3.

The programs for A305318, the canonical program `A305318.P17853486902960944104` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305318 has offset 1).

The definition of A305318 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A275697, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A305318.P17853486902960944104

`A000720(A275697(n+2))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A305318

/-- `A000720(A275697(n+2))` -/
def P17853486902960944104.Spec : Prop :=
  ∀ n, P17853486902960944104.a n = A305318 (n + 1)

theorem P17853486902960944104.correct : P17853486902960944104.Spec := by
  intro n
  simp only [A305318, Nat.add_sub_cancel]

end A305318

/-! ## A305318.P10642631891602601423

`eq[1, A060234(n+1)]+1`
-/

namespace A305318.P10642631891602601423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060234 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A305318.P10642631891602601423

namespace A305318

/-- `eq[1, A060234(n+1)]+1` -/
def P10642631891602601423.Spec : Prop :=
  ∀ n, (P10642631891602601423.a n : ℤ) = A305318 (n + 1)

end A305318

/-! ## A305318.P16618934910524498416

`eq[3, A071866(n+1)]+1`
-/

namespace A305318.P16618934910524498416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071866 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A305318.P16618934910524498416

namespace A305318

/-- `eq[3, A071866(n+1)]+1` -/
def P16618934910524498416.Spec : Prop :=
  ∀ n, (P16618934910524498416.a n : ℤ) = A305318 (n + 1)

end A305318

/-! ## A305318.P6220654012226466922

`lt[A071866(n+2)/2, 2]+2`
-/

namespace A305318.P6220654012226466922
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071866 (n + 2) : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 2

end

end A305318.P6220654012226466922

namespace A305318

/-- `lt[A071866(n+2)/2, 2]+2` -/
def P6220654012226466922.Spec : Prop :=
  ∀ n, (P6220654012226466922.a n : ℤ) = A305318 (n + 1)

end A305318

/-! ## A305318.P11883872517479684369

`eq[1, A000040(n+1)%Δ[A008578(n+1)]]`
-/

namespace A305318.P11883872517479684369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (f3 (n + 1) - f3 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A305318.P11883872517479684369

namespace A305318

/-- `eq[1, A000040(n+1)%Δ[A008578(n+1)]]` -/
def P11883872517479684369.Spec : Prop :=
  ∀ n, (P11883872517479684369.a n : ℤ) = A305318 (n + 1)

end A305318

/-! ## A305318.P3736947545262409429

`eq[1, A008578(n+2)%Δ[A008578(n+1)]]`
-/

namespace A305318.P3736947545262409429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 2)) (f3 (n + 1) - f3 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A305318.P3736947545262409429

namespace A305318

/-- `eq[1, A008578(n+2)%Δ[A008578(n+1)]]` -/
def P3736947545262409429.Spec : Prop :=
  ∀ n, (P3736947545262409429.a n : ℤ) = A305318 (n + 1)

end A305318

/-! ## A305318.P13660940950287664775

`A033270(A162565(n+2))`
-/

namespace A305318.P13660940950287664775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A162565 (n + 2)).toNat

end

end A305318.P13660940950287664775

namespace A305318

/-- `A033270(A162565(n+2))` -/
def P13660940950287664775.Spec : Prop :=
  ∀ n, P13660940950287664775.a n = A305318 (n + 1)

end A305318

/-! ## A305318.P11958302720657578821

`eq[2, A279047(n+1)]+1`
-/

namespace A305318.P11958302720657578821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279047 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A305318.P11958302720657578821

namespace A305318

/-- `eq[2, A279047(n+1)]+1` -/
def P11958302720657578821.Spec : Prop :=
  ∀ n, (P11958302720657578821.a n : ℤ) = A305318 (n + 1)

end A305318

/-! ## A305318.P5298898071070322299

`eq[2, A278744(n+1)]+1`
-/

namespace A305318.P5298898071070322299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278744 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A305318.P5298898071070322299

namespace A305318

/-- `eq[2, A278744(n+1)]+1` -/
def P5298898071070322299.Spec : Prop :=
  ∀ n, (P5298898071070322299.a n : ℤ) = A305318 (n + 1)

end A305318

/-!
# A305322: Repdigit numbers that are divisible by 3.

The programs for A305322, there is no canonical definition to state claims against.
-/

/-! ## A305322.P8828351363657975972

`∩[A010785(n), A064222(3*n)]`
-/

namespace A305322.P8828351363657975972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 (3 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305322.P8828351363657975972

/-! ## A305322.P2295640523333995953

`∩[floor(A051885(n+8)/9), A064222(3*n)]`
-/

namespace A305322.P2295640523333995953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051885 (n + 8) : ℚ) / 9⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 (3 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305322.P2295640523333995953

/-! ## A305322.P9819246528063683573

`∩[A045638(n+1), A064222(n)]`
-/

namespace A305322.P9819246528063683573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305322.P9819246528063683573

/-!
# A305323: Expansion of e.g.f. 1/(1 + log(1 + log(1 - x))).

The programs for A305323, there is no canonical definition to state claims against.
-/

/-! ## A305323.P15259252437933116077

`A047309((2*n-1)*a(n-1)-(n-1)*(n-2)*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A305323.P15259252437933116077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A047309 (((2 * n : ℤ) - 1) * a (n - 1) - ((n : ℤ) - 1) * (((n : ℤ) - 2) * a (n - 2))).toNat

end

end A305323.P15259252437933116077

/-! ## A305323.P16526065142762812553

`A065033(A213192(n)+A060912(n))`
-/

namespace A305323.P16526065142762812553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A213192 n + A060912 n).toNat

end

end A305323.P16526065142762812553

/-!
# A305324: Number of one-sided 'divisible' polyominoes of size 2^(n-1), where a 'divisible' polyomino is either a monomino (square) or a polyomino which can be separated into two identical 'divisible' polyominoes.

The programs for A305324, there is no canonical definition to state claims against.
-/

/-! ## A305324.P17944770051333095844

`A208216(A148562(n)+A099393(n))`
-/

namespace A305324.P17944770051333095844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208216 (A148562 n + A099393 n).toNat

end

end A305324.P17944770051333095844

/-!
# A305329: Solution (a(n)) of the complementary equation a(n) = 2*a(n-1) - a(n-2) + b(n-2); see Comments.

The programs for A305329, there is no canonical definition to state claims against.
-/

/-! ## A305329.P77231112836812227

`∑[A140823(a(n-1)+n)]` with `a(0)=1, a(1)=1`
-/

namespace A305329.P77231112836812227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A140823 (f1 (n - 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305329.P77231112836812227

/-! ## A305329.P40036471893897383

`∑[A084618(∑[A080587(n)])]`
-/

namespace A305329.P40036471893897383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080587 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084618 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305329.P40036471893897383

/-! ## A305329.P14391460640997780128

`∑[A232748(A022951(n+1)-n)]`
-/

namespace A305329.P14391460640997780128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232748 (A022951 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305329.P14391460640997780128

/-! ## A305329.P2333853746108924524

`A121968(n+1)+A056558(A172452(n))`
-/

namespace A305329.P2333853746108924524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121968 (n + 1) + A056558 (A172452 n).toNat

end

end A305329.P2333853746108924524

/-!
# A305330: Solution (a(n)) of the complementary equation a(n) = 2*a(n-1) - a(n-2) + b(n-1) + b(n); see Comments.

The programs for A305330, there is no canonical definition to state claims against.
-/

/-! ## A305330.P15961773039611827320

`A329752(A002522(A000225(n)))+n`
-/

namespace A305330.P15961773039611827320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329752 (A002522 (A000225 n).toNat).toNat + (n : ℤ)

end

end A305330.P15961773039611827320

/-! ## A305330.P9483706258523342273

`A276581(round(sqrt(n²+1))^5)+n`
-/

namespace A305330.P9483706258523342273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) ^ 5).toNat + (n : ℤ)

end

end A305330.P9483706258523342273

/-!
# A305331: Multiplicative order of 5 (mod p^2), where p = prime(n), or 0 if 5 and p are not coprime.

The programs for A305331, there is no canonical definition to state claims against.
-/

/-! ## A305331.P369361277019216464

`A006005(n+1)*A211241(n+1)`
-/

namespace A305331.P369361277019216464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) * A211241 (n + 1)

end

end A305331.P369361277019216464

/-! ## A305331.P6267869994044012489

`record[A006530(or(1, n))]*A211241(n+1)`
-/

namespace A305331.P6267869994044012489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A211241 (n + 1)

end

end A305331.P6267869994044012489

/-! ## A305331.P889540300564322251

`A006005(n+1)*A070677(Δ[A007504(n)])`
-/

namespace A305331.P889540300564322251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) * A070677 (f1 (n + 1) - f1 n).toNat

end

end A305331.P889540300564322251

/-! ## A305331.P12261603557028473191

`A006005(n+1)*A070677(A000040(n+1))`
-/

namespace A305331.P12261603557028473191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) * A070677 (A000040 (n + 1)).toNat

end

end A305331.P12261603557028473191

/-! ## A305331.P14110298080591126757

`record[A207375(n+4)]*A211241(n+1)`
-/

namespace A305331.P14110298080591126757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207375 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A211241 (n + 1)

end

end A305331.P14110298080591126757

/-! ## A305331.P17766792107641532171

`A006005(n+1)*A070677(A100484(n+1))`
-/

namespace A305331.P17766792107641532171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) * A070677 (A100484 (n + 1)).toNat

end

end A305331.P17766792107641532171

/-! ## A305331.P5159191361149650650

`A006005(n+1)*A070677(A251618(n+1))`
-/

namespace A305331.P5159191361149650650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) * A070677 (A251618 (n + 1)).toNat

end

end A305331.P5159191361149650650

/-! ## A305331.P8199138247459718588

`A006005(n+1)*A070677(eq[0, A171400(n)])`
-/

namespace A305331.P8199138247459718588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) * A070677 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305331.P8199138247459718588

/-! ## A305331.P6801153980180098522

`A006005(n+1)*A323376(∑[n+3]+1)`
-/

namespace A305331.P6801153980180098522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) * A323376 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305331.P6801153980180098522

/-!
# A305332: Multiplicative order of 5 (mod A123692(n)^2).

The programs for A305332, there is no canonical definition to state claims against.
-/

/-! ## A305332.P17334972776322623361

`(A123692(n+1)-1)/A305333(n+1)`
-/

namespace A305332.P17334972776322623361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123692 (n + 1) - 1 : ℚ) / (A305333 (n + 1) : ℚ)

end

end A305332.P17334972776322623361

/-!
# A305334: Number of n X n 0..1 arrays with every element unequal to 0, 1, 2, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305334, there is no canonical definition to state claims against.
-/

/-! ## A305334.P6319874651799938419

`A305340(∑[4*n]+1)`
-/

namespace A305334.P6319874651799938419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305340 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305334.P6319874651799938419

/-! ## A305334.P1394075692699930545

`record[A077606(n+1)*A305340(n+1)]`
-/

namespace A305334.P1394075692699930545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A305340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305334.P1394075692699930545

/-! ## A305334.P7433903413415734873

`lcm(A033999(n), A305340(A001844(n)))`
-/

namespace A305334.P7433903413415734873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A305340 (A001844 n).toNat)

end

end A305334.P7433903413415734873

/-! ## A305334.P7053600584284028956

`or(A000007(n), A305340(A001844(n)))`
-/

namespace A305334.P7053600584284028956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A305340 (A001844 n).toNat)

end

end A305334.P7053600584284028956

/-! ## A305334.P5165481677374488033

`A305340(A001844(n))+A036876(n+1)`
-/

namespace A305334.P5165481677374488033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305340 (A001844 n).toNat + A036876 (n + 1)

end

end A305334.P5165481677374488033

/-!
# A305335: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305335, there is no canonical definition to state claims against.
-/

/-! ## A305335.P8909503326244719512

`A305340(∑[n+2]+4)`
-/

namespace A305335.P8909503326244719512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305340 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305335.P8909503326244719512

/-! ## A305335.P17050053109452838716

`A305340(A167614(n+1))+A178798(n)`
-/

namespace A305335.P17050053109452838716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305340 (A167614 (n + 1)).toNat + A178798 n

end

end A305335.P17050053109452838716

/-! ## A305335.P8192525012589088889

`A305340(A167614(n+1))%A016794(n)`
-/

namespace A305335.P8192525012589088889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305340 (A167614 (n + 1)).toNat) (A016794 n)

end

end A305335.P8192525012589088889

/-! ## A305335.P3991730579245716622

`lcm(A033999(n), A305340(A167614(n+1)))`
-/

namespace A305335.P3991730579245716622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A305340 (A167614 (n + 1)).toNat)

end

end A305335.P3991730579245716622

/-! ## A305335.P3356919049597353387

`or(A063524(n), A305340(A167614(n+1)))`
-/

namespace A305335.P3356919049597353387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A305340 (A167614 (n + 1)).toNat)

end

end A305335.P3356919049597353387

/-!
# A305336: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305336, there is no canonical definition to state claims against.
-/

/-! ## A305336.P7034906425420330553

`A305340(∑[n+3]+7)`
-/

namespace A305336.P7034906425420330553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305340 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A305336.P7034906425420330553

/-! ## A305336.P10538473573648653050

`A305340(A141214(n+1))%A303959(n+1)`
-/

namespace A305336.P10538473573648653050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305340 (A141214 (n + 1)).toNat) (A303959 (n + 1))

end

end A305336.P10538473573648653050

/-! ## A305336.P7019408485390787920

`A305340(A027379(n+2))%A303959(n+1)`
-/

namespace A305336.P7019408485390787920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305340 (A027379 (n + 2)).toNat) (A303959 (n + 1))

end

end A305336.P7019408485390787920

/-! ## A305336.P5028032656035774893

`A305340(A141214(n+1))/A060680(2*(n+1))`
-/

namespace A305336.P5028032656035774893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305340 (A141214 (n + 1)).toNat : ℚ) / (A060680 (2 * (n + 1)) : ℚ)

end

end A305336.P5028032656035774893

/-!
# A305337: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305337, there is no canonical definition to state claims against.
-/

/-! ## A305337.P15048123095360284725

`A305340(A167499(n+3))`
-/

namespace A305337.P15048123095360284725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305340 (A167499 (n + 3)).toNat

end

end A305337.P15048123095360284725

/-! ## A305337.P9105856118254867848

`A305340(A155212(n)+13)`
-/

namespace A305337.P9105856118254867848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305340 (A155212 n + 13).toNat

end

end A305337.P9105856118254867848

/-! ## A305337.P10349989962222511885

`A305340(A000096(n+3)+6)`
-/

namespace A305337.P10349989962222511885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305340 (A000096 (n + 3) + 6).toNat

end

end A305337.P10349989962222511885

/-! ## A305337.P16708219624142674016

`A305340(A000217(n+4)+5)`
-/

namespace A305337.P16708219624142674016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305340 (A000217 (n + 4) + 5).toNat

end

end A305337.P16708219624142674016

/-! ## A305337.P1975552914847987105

`A305340(Δ[A264443(n)])`
-/

namespace A305337.P1975552914847987105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305340 (f1 (n + 1) - f1 n).toNat

end

end A305337.P1975552914847987105

/-!
# A305338: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305338, there is no canonical definition to state claims against.
-/

/-! ## A305338.P11056417838104042176

`A305340(A000217(n+5)+6)`
-/

namespace A305338.P11056417838104042176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305340 (A000217 (n + 5) + 6).toNat

end

end A305338.P11056417838104042176

/-! ## A305338.P9861745388745246756

`A305340(A374007(n+1))`
-/

namespace A305338.P9861745388745246756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305340 (A374007 (n + 1)).toNat

end

end A305338.P9861745388745246756

/-! ## A305338.P1489410201328805199

`A305340(A052905(n+3))`
-/

namespace A305338.P1489410201328805199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305340 (A052905 (n + 3)).toNat

end

end A305338.P1489410201328805199

/-! ## A305338.P93714590452716010

`A305340(Δ[A055831(n+5)])`
-/

namespace A305338.P93714590452716010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305340 (f1 (n + 1) - f1 n).toNat

end

end A305338.P93714590452716010

/-! ## A305338.P3969614123188025436

`A305340(A055998(n+4)-2)`
-/

namespace A305338.P3969614123188025436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305340 (A055998 (n + 4) - 2).toNat

end

end A305338.P3969614123188025436

/-!
# A305339: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305339, there is no canonical definition to state claims against.
-/

/-! ## A305339.P9382406100624897563

`A305340(A052905(n+3)+12)`
-/

namespace A305339.P9382406100624897563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305340 (A052905 (n + 3) + 12).toNat

end

end A305339.P9382406100624897563

/-! ## A305339.P9948782968154005238

`A305340(A000096(n+7)-A005408(n+3))`
-/

namespace A305339.P9948782968154005238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305340 (A000096 (n + 7) - A005408 (n + 3)).toNat

end

end A305339.P9948782968154005238

/-! ## A305339.P12156613926293947693

`A305340(A005408(n+9)+A000096(n+3))`
-/

namespace A305339.P12156613926293947693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305340 (A005408 (n + 9) + A000096 (n + 3)).toNat

end

end A305339.P12156613926293947693

/-! ## A305339.P291131128120693485

`A305340(A374008(n+1))`
-/

namespace A305339.P291131128120693485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305340 (A374008 (n + 1)).toNat

end

end A305339.P291131128120693485

/-! ## A305339.P2737088524915508072

`A305340(A055999(n+4))`
-/

namespace A305339.P2737088524915508072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305340 (A055999 (n + 4)).toNat

end

end A305339.P2737088524915508072

/-!
# A305340: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305340, there is no canonical definition to state claims against.
-/

/-! ## A305340.P9676648821774174266

`A316420(n+1)-A082858(A059441(n+1))`
-/

namespace A305340.P9676648821774174266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316420 (n + 1) - A082858 (A059441 (n + 1)).toNat

end

end A305340.P9676648821774174266

/-! ## A305340.P11557975114301395222

`A316420(n+1)-A289618(A317525(n+1))`
-/

namespace A305340.P11557975114301395222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316420 (n + 1) - A289618 (A317525 (n + 1)).toNat

end

end A305340.P11557975114301395222

/-! ## A305340.P11595076626191913331

`A303961(n+1)+A321936(A001263(n+1))²`
-/

namespace A305340.P11595076626191913331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303961 (n + 1) + A321936 (A001263 (n + 1)).toNat ^ 2

end

end A305340.P11595076626191913331

/-! ## A305340.P13534965753194328918

`A379830(A157156(n))+A303961(n+1)`
-/

namespace A305340.P13534965753194328918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379830 (A157156 n).toNat + A303961 (n + 1)

end

end A305340.P13534965753194328918

/-! ## A305340.P7966514441540531948

`A316420(n+1)-A112609(A208567(n+1))`
-/

namespace A305340.P7966514441540531948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316420 (n + 1) - A112609 (A208567 (n + 1)).toNat

end

end A305340.P7966514441540531948

/-!
# A305341: Number of n X n 0..1 arrays with every element unequal to 0, 1, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305341, there is no canonical definition to state claims against.
-/

/-! ## A305341.P468229692059774877

`A305347(∑[4*n]+1)`
-/

namespace A305341.P468229692059774877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305347 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305341.P468229692059774877

/-! ## A305341.P10631379334988299873

`record[gcd(A114327(n), A305347(n+1))]`
-/

namespace A305341.P10631379334988299873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A305347 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305341.P10631379334988299873

/-! ## A305341.P13764367020084683277

`or(A000007(n), A305347(A001844(n)))`
-/

namespace A305341.P13764367020084683277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A305347 (A001844 n).toNat)

end

end A305341.P13764367020084683277

/-! ## A305341.P4542727379141163535

`or(A107078(n+1), A305347(A001844(n)))`
-/

namespace A305341.P4542727379141163535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107078 (n + 1)) (A305347 (A001844 n).toNat)

end

end A305341.P4542727379141163535

/-! ## A305341.P12527884746439250189

`A305347(A001844(n))+A059995(A059995(n))`
-/

namespace A305341.P12527884746439250189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305347 (A001844 n).toNat + A059995 (A059995 n).toNat

end

end A305341.P12527884746439250189

/-!
# A305342: Number of nX3 0..1 arrays with every element unequal to 0, 1, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305342, there is no canonical definition to state claims against.
-/

/-! ## A305342.P1491290525029750779

`A305347(∑[n+2]+4)`
-/

namespace A305342.P1491290525029750779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305347 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305342.P1491290525029750779

/-! ## A305342.P4163300235833122772

`or(A000007(n), A305347(A167614(n+1)))`
-/

namespace A305342.P4163300235833122772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A305347 (A167614 (n + 1)).toNat)

end

end A305342.P4163300235833122772

/-! ## A305342.P1342611422017289647

`A305347(A167614(n+1))+A000007(n+1)`
-/

namespace A305342.P1342611422017289647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305347 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A305342.P1342611422017289647

/-! ## A305342.P11696591514205300554

`A000041(C(2, 2*n))*A305347(A167614(n+1))`
-/

namespace A305342.P11696591514205300554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) * A305347 (A167614 (n + 1)).toNat

end

end A305342.P11696591514205300554

/-! ## A305342.P15702555417823081126

`A008683(A005117(n+1))²*A305347(A167614(n+1))`
-/

namespace A305342.P15702555417823081126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005117 (n + 1)).toNat ^ 2 * A305347 (A167614 (n + 1)).toNat

end

end A305342.P15702555417823081126

/-!
# A305343: Number of nX4 0..1 arrays with every element unequal to 0, 1, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305343, there is no canonical definition to state claims against.
-/

/-! ## A305343.P15787836400291729915

`A305347(A141214(n)+7)`
-/

namespace A305343.P15787836400291729915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305347 (A141214 n + 7).toNat

end

end A305343.P15787836400291729915

/-! ## A305343.P7146708538213979224

`A305347(A052905(n)+9)`
-/

namespace A305343.P7146708538213979224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305347 (A052905 n + 9).toNat

end

end A305343.P7146708538213979224

/-! ## A305343.P5036893116658544624

`A305347(A055999(n)+10)`
-/

namespace A305343.P5036893116658544624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305347 (A055999 n + 10).toNat

end

end A305343.P5036893116658544624

/-! ## A305343.P13640224561613625808

`A305347(A167614(n+2)+1)`
-/

namespace A305343.P13640224561613625808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305347 (A167614 (n + 2) + 1).toNat

end

end A305343.P13640224561613625808

/-! ## A305343.P9103029209353511392

`A305347(A167487(n+2)-3)`
-/

namespace A305343.P9103029209353511392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305347 (A167487 (n + 2) - 3).toNat

end

end A305343.P9103029209353511392

/-!
# A305344: Number of nX5 0..1 arrays with every element unequal to 0, 1, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305344, there is no canonical definition to state claims against.
-/

/-! ## A305344.P3815946660747558798

`A305347(A167499(n+3))`
-/

namespace A305344.P3815946660747558798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305347 (A167499 (n + 3)).toNat

end

end A305344.P3815946660747558798

/-! ## A305344.P12421158283314660422

`A305347(A056000(n)+15)`
-/

namespace A305344.P12421158283314660422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305347 (A056000 n + 15).toNat

end

end A305344.P12421158283314660422

/-! ## A305344.P8484434929189079153

`A305347(A000217(n+4)+5)`
-/

namespace A305344.P8484434929189079153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305347 (A000217 (n + 4) + 5).toNat

end

end A305344.P8484434929189079153

/-! ## A305344.P6548873240167628675

`A305347((n+4)²-A052905(n))`
-/

namespace A305344.P6548873240167628675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305347 (((n + 4) ^ 2 : ℤ) - A052905 n).toNat

end

end A305344.P6548873240167628675

/-! ## A305344.P425700599058886770

`A305347(A000124(n+5)-(n+1))`
-/

namespace A305344.P425700599058886770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305347 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A305344.P425700599058886770

/-!
# A305345: Number of nX6 0..1 arrays with every element unequal to 0, 1, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305345, there is no canonical definition to state claims against.
-/

/-! ## A305345.P4334137828101790498

`A305347(Δ[A264443(n)]+10)`
-/

namespace A305345.P4334137828101790498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305347 (f1 (n + 1) - f1 n + 10).toNat

end

end A305345.P4334137828101790498

/-! ## A305345.P1156221551049022974

`A305347(A000217(n+5)+6)`
-/

namespace A305345.P1156221551049022974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305347 (A000217 (n + 5) + 6).toNat

end

end A305345.P1156221551049022974

/-! ## A305345.P13850407878272347694

`A305347(Δ[A023545(n+1)+A017353(n)])`
-/

namespace A305345.P13850407878272347694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) + A017353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305347 (f1 (n + 1) - f1 n).toNat

end

end A305345.P13850407878272347694

/-! ## A305345.P5249258288811010566

`A305347(A167499(n+6)-A004277(n+6))`
-/

namespace A305345.P5249258288811010566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305347 (A167499 (n + 6) - A004277 (n + 6)).toNat

end

end A305345.P5249258288811010566

/-! ## A305345.P14845960136892440339

`A305347(A167499(n+6)-A004279(n+8))`
-/

namespace A305345.P14845960136892440339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305347 (A167499 (n + 6) - A004279 (n + 8)).toNat

end

end A305345.P14845960136892440339

/-!
# A305346: Number of nX7 0..1 arrays with every element unequal to 0, 1, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305346, there is no canonical definition to state claims against.
-/

/-! ## A305346.P12060604027483099928

`A305347(A167487(n+5))`
-/

namespace A305346.P12060604027483099928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305347 (A167487 (n + 5)).toNat

end

end A305346.P12060604027483099928

/-! ## A305346.P9013458799268772126

`A305347(A000124(n+6)+6)`
-/

namespace A305346.P9013458799268772126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305347 (A000124 (n + 6) + 6).toNat

end

end A305346.P9013458799268772126

/-! ## A305346.P16336494136156925334

`A305347(A000096(n+5)+8)`
-/

namespace A305346.P16336494136156925334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305347 (A000096 (n + 5) + 8).toNat

end

end A305346.P16336494136156925334

/-! ## A305346.P14979139521841313677

`A305347(A000217(n+6)+7)`
-/

namespace A305346.P14979139521841313677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305347 (A000217 (n + 6) + 7).toNat

end

end A305346.P14979139521841313677

/-! ## A305346.P15204005762537903315

`A305347(A161680(n+7)+7)`
-/

namespace A305346.P15204005762537903315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305347 (A161680 (n + 7) + 7).toNat

end

end A305346.P15204005762537903315

/-!
# A305347: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305347, there is no canonical definition to state claims against.
-/

/-! ## A305347.P3505852615478437365

`A008615(6*A316615(n+1))`
-/

namespace A305347.P3505852615478437365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (6 * A316615 (n + 1)).toNat

end

end A305347.P3505852615478437365

/-! ## A305347.P1511890985844647116

`A060789(6*A316615(n+1))`
-/

namespace A305347.P1511890985844647116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (6 * A316615 (n + 1)).toNat

end

end A305347.P1511890985844647116

/-! ## A305347.P5383133680108098620

`A316615(n+1)%A335662(n+1)`
-/

namespace A305347.P5383133680108098620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316615 (n + 1)) (A335662 (n + 1))

end

end A305347.P5383133680108098620

/-! ## A305347.P7987490506845673138

`A316615(n+1)+A000007(A220054(n))`
-/

namespace A305347.P7987490506845673138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316615 (n + 1) + A000007 (A220054 n).toNat

end

end A305347.P7987490506845673138

/-! ## A305347.P1390566710505599712

`A316615(n+1)^A245013(A245013(n))`
-/

namespace A305347.P1390566710505599712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316615 (n + 1) : ℚ) ^ (A245013 (A245013 n).toNat : ℤ)

end

end A305347.P1390566710505599712

/-!
# A305348: a(n) is the smallest number k such that k * A002202(n) is not a term of A000010.

The programs for A305348, there is no canonical definition to state claims against.
-/

/-! ## A305348.P18353678461461833207

`A282160(A002202(n+1))`
-/

namespace A305348.P18353678461461833207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282160 (A002202 (n + 1)).toNat

end

end A305348.P18353678461461833207

/-! ## A305348.P4335639882822573863

`A316665(A002202(-xor(n, -1)))`
-/

namespace A305348.P4335639882822573863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316665 (A002202 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A305348.P4335639882822573863

/-! ## A305348.P6985229300286230070

`filter[A316665(n+1), A014306(#)]`
-/

namespace A305348.P6985229300286230070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A305348.P6985229300286230070

/-! ## A305348.P1511607834405638084

`filter[A316665(n+1), A101040(#)]`
-/

namespace A305348.P1511607834405638084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A305348.P1511607834405638084

/-! ## A305348.P9202910309846221637

`filter[A316665(n+1), A179770(#)]`
-/

namespace A305348.P9202910309846221637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179770 (f1 j).toNat = 1) n)

end

end A305348.P9202910309846221637

/-! ## A305348.P13508173860446789605

`filter[A316665(n+1), A252372(#)]`
-/

namespace A305348.P13508173860446789605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252372 (f1 j).toNat = 1) n)

end

end A305348.P13508173860446789605

/-! ## A305348.P296959216229980645

`filter[A316665(n+1), A252743(#)]`
-/

namespace A305348.P296959216229980645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252743 (f1 j).toNat = 1) n)

end

end A305348.P296959216229980645

/-! ## A305348.P7383850451500766776

`filter[A316665(n+1), A266070(#)]`
-/

namespace A305348.P7383850451500766776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A305348.P7383850451500766776

/-! ## A305348.P1584942664491571460

`filter[A316665(n+1), A266719(#)]`
-/

namespace A305348.P1584942664491571460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A305348.P1584942664491571460

/-! ## A305348.P7947276835066380644

`filter[A316665(n+1), A267155(#)]`
-/

namespace A305348.P7947276835066380644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267155 (f1 j).toNat = 1) n)

end

end A305348.P7947276835066380644

/-!
# A305349: Numbers k such that sopfr(k) = tau(k)^3.

The programs for A305349, there is no canonical definition to state claims against.
-/

/-! ## A305349.P18199479820026258308

`eq[64, A003415(n)]`
-/

namespace A305349.P18199479820026258308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A305349.P18199479820026258308

/-!
# A305355: Expansion of Product_{k>=1} (1 - x^(k*(3*k-1)/2)).

The programs for A305355, there is no canonical definition to state claims against.
-/

/-! ## A305355.P10377739997576704412

`(-A218380(n))^A303372(n+1)`
-/

namespace A305355.P10377739997576704412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A218380 n : ℚ) ^ (A303372 (n + 1) : ℤ)

end

end A305355.P10377739997576704412

/-! ## A305355.P5086274112384722538

`(-A034968(A332007(n)))^A303372(n+1)`
-/

namespace A305355.P5086274112384722538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A034968 (A332007 n).toNat : ℚ) ^ (A303372 (n + 1) : ℤ)

end

end A305355.P5086274112384722538

/-! ## A305355.P17385024028640827027

`(-A218380(n))^A133280(A053001(n+2))`
-/

namespace A305355.P17385024028640827027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A218380 n : ℚ) ^ (A133280 (A053001 (n + 2)).toNat : ℤ)

end

end A305355.P17385024028640827027

/-! ## A305355.P1616596978975172252

`(-A001221(ceil(A332007(n)²/2)+1))^A303372(n+1)`
-/

namespace A305355.P1616596978975172252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A001221 (⌈(A332007 n ^ 2 : ℚ) / 2⌉ + 1).toNat : ℚ) ^ (A303372 (n + 1) : ℤ)

end

end A305355.P1616596978975172252

/-!
# A305356: Number of n X n 0..1 arrays with every element unequal to 0, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305356, there is no canonical definition to state claims against.
-/

/-! ## A305356.P14392830219082950049

`A305360(∑[4*n]+1)`
-/

namespace A305356.P14392830219082950049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305360 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305356.P14392830219082950049

/-! ## A305356.P12309700562943343943

`record[A305360((n-1)*ceil(n/2)+1)]`
-/

namespace A305356.P12309700562943343943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305360 (((n : ℤ) - 1) * ⌈(n : ℚ) / 2⌉ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305356.P12309700562943343943

/-! ## A305356.P14675210829670617748

`and(-1, A305360(A001844(n)))`
-/

namespace A305356.P14675210829670617748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A305360 (A001844 n).toNat)

end

end A305356.P14675210829670617748

/-! ## A305356.P16712842322912943961

`record[A003982(n)*A305360(n+1)]`
-/

namespace A305356.P16712842322912943961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A305360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305356.P16712842322912943961

/-! ## A305356.P3132956370305388949

`record[A214505(n)*A305360(n+1)]`
-/

namespace A305356.P3132956370305388949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A305360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305356.P3132956370305388949

/-!
# A305357: Number of nX5 0..1 arrays with every element unequal to 0, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305357, there is no canonical definition to state claims against.
-/

/-! ## A305357.P13539352222418106729

`A305360(A374005(n+1))`
-/

namespace A305357.P13539352222418106729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305360 (A374005 (n + 1)).toNat

end

end A305357.P13539352222418106729

/-! ## A305357.P17637284382231596059

`A305360(A167499(n+3))`
-/

namespace A305357.P17637284382231596059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305360 (A167499 (n + 3)).toNat

end

end A305357.P17637284382231596059

/-! ## A305357.P5757555956478286574

`A305360(A155212(n)+13)`
-/

namespace A305357.P5757555956478286574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305360 (A155212 n + 13).toNat

end

end A305357.P5757555956478286574

/-! ## A305357.P11710390849781221627

`A305360(A056000(n)+15)`
-/

namespace A305357.P11710390849781221627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305360 (A056000 n + 15).toNat

end

end A305357.P11710390849781221627

/-! ## A305357.P14236724957213466885

`A305360(eq[7, A066657(n)])`
-/

namespace A305357.P14236724957213466885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305360 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305357.P14236724957213466885

/-!
# A305358: Number of nX6 0..1 arrays with every element unequal to 0, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305358, there is no canonical definition to state claims against.
-/

/-! ## A305358.P8060912875169350037

`A305360(A374007(n+1))`
-/

namespace A305358.P8060912875169350037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305360 (A374007 (n + 1)).toNat

end

end A305358.P8060912875169350037

/-! ## A305358.P11945233232266347967

`A305360(A166136(n+4))`
-/

namespace A305358.P11945233232266347967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305360 (A166136 (n + 4)).toNat

end

end A305358.P11945233232266347967

/-! ## A305358.P6091440231331734655

`A305360(A056115(n)+21)`
-/

namespace A305358.P6091440231331734655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305360 (A056115 n + 21).toNat

end

end A305358.P6091440231331734655

/-! ## A305358.P16580086989552589537

`A305360(A167499(n+4)+1)`
-/

namespace A305358.P16580086989552589537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305360 (A167499 (n + 4) + 1).toNat

end

end A305358.P16580086989552589537

/-! ## A305358.P4041802347293773480

`A305360(A000124(n+5)+5)`
-/

namespace A305358.P4041802347293773480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305360 (A000124 (n + 5) + 5).toNat

end

end A305358.P4041802347293773480

/-!
# A305359: Number of nX7 0..1 arrays with every element unequal to 0, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305359, there is no canonical definition to state claims against.
-/

/-! ## A305359.P14425863070256085825

`A305360(A374008(n+1))`
-/

namespace A305359.P14425863070256085825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305360 (A374008 (n + 1)).toNat

end

end A305359.P14425863070256085825

/-! ## A305359.P4351535365876863474

`A305360(A056119(n)+28)`
-/

namespace A305359.P4351535365876863474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305360 (A056119 n + 28).toNat

end

end A305359.P4351535365876863474

/-! ## A305359.P16728507840349229626

`A305360(A166136(n+5)+1)`
-/

namespace A305359.P16728507840349229626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305360 (A166136 (n + 5) + 1).toNat

end

end A305359.P16728507840349229626

/-! ## A305359.P10069306382151617068

`A305360(A167614(n+5)+4)`
-/

namespace A305359.P10069306382151617068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305360 (A167614 (n + 5) + 4).toNat

end

end A305359.P10069306382151617068

/-! ## A305359.P8154074318509769900

`A305360(A000124(n+6)+6)`
-/

namespace A305359.P8154074318509769900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305360 (A000124 (n + 6) + 6).toNat

end

end A305359.P8154074318509769900

/-!
# A305360: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305360, there is no canonical definition to state claims against.
-/

/-! ## A305360.P17223504219745526963

`A342019(A304676(n+1))+A304010(n+1)`
-/

namespace A305360.P17223504219745526963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342019 (A304676 (n + 1)).toNat + A304010 (n + 1)

end

end A305360.P17223504219745526963

/-! ## A305360.P6288943976922674130

`A304010(n+1)+A003604(A262079(n+1))`
-/

namespace A305360.P6288943976922674130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304010 (n + 1) + A003604 (A262079 (n + 1)).toNat

end

end A305360.P6288943976922674130

/-! ## A305360.P18343357291036927559

`A316695(A262079(n+1)²)+A304010(n+1)`
-/

namespace A305360.P18343357291036927559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316695 (A262079 (n + 1) ^ 2).toNat + A304010 (n + 1)

end

end A305360.P18343357291036927559

/-!
# A305361: Number of nXn 0..1 arrays with every element unequal to 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305361, there is no canonical definition to state claims against.
-/

/-! ## A305361.P8334065661407360921

`A305367(∑[4*n]+1)`
-/

namespace A305361.P8334065661407360921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305367 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305361.P8334065661407360921

/-! ## A305361.P9846934727020168452

`record[A305367(Δ[A235355(n)])]`
-/

namespace A305361.P9846934727020168452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305367 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305361.P9846934727020168452

/-! ## A305361.P489528839719407267

`record[A305367(A330613(n+1))]`
-/

namespace A305361.P489528839719407267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305367 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305361.P489528839719407267

/-! ## A305361.P8279473759439333611

`A305367(A001844(n))+char[10]`
-/

namespace A305361.P8279473759439333611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305367 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305361.P8279473759439333611

/-! ## A305361.P760074858685974077

`record[A003982(n)*A305367(n+1)]`
-/

namespace A305361.P760074858685974077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A305367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305361.P760074858685974077

/-!
# A305362: Number of nX3 0..1 arrays with every element unequal to 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305362, there is no canonical definition to state claims against.
-/

/-! ## A305362.P1827093837501084297

`A305367(∑[n+2]+4)`
-/

namespace A305362.P1827093837501084297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305367 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305362.P1827093837501084297

/-! ## A305362.P15049705460034078287

`A305367(A167614(n+1))+char[18]`
-/

namespace A305362.P15049705460034078287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305367 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305362.P15049705460034078287

/-! ## A305362.P4191192900534334965

`record[gcd(A303913(n), A305367(n+1))]`
-/

namespace A305362.P4191192900534334965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303913 n) (A305367 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305362.P4191192900534334965

/-! ## A305362.P11453017295924186375

`lcm((-1)^n, A305367(A046691(n)+7))`
-/

namespace A305362.P11453017295924186375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A305367 (A046691 n + 7).toNat)

end

end A305362.P11453017295924186375

/-! ## A305362.P18232693434997464507

`A305367(A167614(n+1))%A075963(n)`
-/

namespace A305362.P18232693434997464507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305367 (A167614 (n + 1)).toNat) (A075963 n)

end

end A305362.P18232693434997464507

/-!
# A305363: Number of nX4 0..1 arrays with every element unequal to 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305363, there is no canonical definition to state claims against.
-/

/-! ## A305363.P3137182332370414929

`A305367(∑[n+3]+7)`
-/

namespace A305363.P3137182332370414929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305367 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A305363.P3137182332370414929

/-! ## A305363.P17118973106255142935

`A305367(A055999(n)+10)+char[17]`
-/

namespace A305363.P17118973106255142935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305367 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305363.P17118973106255142935

/-! ## A305363.P16234815606557434197

`lcm(1-and(2, n), A305367(A052905(n)+9))`
-/

namespace A305363.P16234815606557434197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A305367 (A052905 n + 9).toNat)

end

end A305363.P16234815606557434197

/-! ## A305363.P5545815796725998716

`A326679(n)+A305367(A055999(n)+10)`
-/

namespace A305363.P5545815796725998716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326679 n + A305367 (A055999 n + 10).toNat

end

end A305363.P5545815796725998716

/-! ## A305363.P8493832789264343502

`A305367(A055999(n)+10)%A000045(n+41)`
-/

namespace A305363.P8493832789264343502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305367 (A055999 n + 10).toNat) (A000045 (n + 41))

end

end A305363.P8493832789264343502

/-!
# A305364: Number of nX5 0..1 arrays with every element unequal to 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305364, there is no canonical definition to state claims against.
-/

/-! ## A305364.P5619704344354955097

`A305367(∑[n+4]+11)`
-/

namespace A305364.P5619704344354955097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305367 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A305364.P5619704344354955097

/-! ## A305364.P691911920678612205

`A305367(A167499(n+3))+A016098(A070102(n+1))`
-/

namespace A305364.P691911920678612205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305367 (A167499 (n + 3)).toNat + A016098 (A070102 (n + 1)).toNat

end

end A305364.P691911920678612205

/-! ## A305364.P7634717655372662106

`A305367(A167499(n+3))+A070102(A109626(n+1))`
-/

namespace A305364.P7634717655372662106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305367 (A167499 (n + 3)).toNat + A070102 (A109626 (n + 1)).toNat

end

end A305364.P7634717655372662106

/-! ## A305364.P15972510629206972349

`or(A016389(n), A305367(A046691(n+3)))`
-/

namespace A305364.P15972510629206972349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016389 n) (A305367 (A046691 (n + 3)).toNat)

end

end A305364.P15972510629206972349

/-! ## A305364.P2953788093485019297

`A305367(A046691(n+3))%A249236(3*(n+1))`
-/

namespace A305364.P2953788093485019297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305367 (A046691 (n + 3)).toNat) (A249236 (3 * (n + 1)))

end

end A305364.P2953788093485019297

/-!
# A305365: Number of nX6 0..1 arrays with every element unequal to 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305365, there is no canonical definition to state claims against.
-/

/-! ## A305365.P13351423481597181965

`A305367(A166136(n+4))`
-/

namespace A305365.P13351423481597181965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305367 (A166136 (n + 4)).toNat

end

end A305365.P13351423481597181965

/-! ## A305365.P862570021614695591

`A305367(A056115(n)+21)`
-/

namespace A305365.P862570021614695591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305367 (A056115 n + 21).toNat

end

end A305365.P862570021614695591

/-! ## A305365.P4845511513729218880

`A305367(A167499(n+4)+1)`
-/

namespace A305365.P4845511513729218880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305367 (A167499 (n + 4) + 1).toNat

end

end A305365.P4845511513729218880

/-! ## A305365.P13760079422556770340

`A305367(A167614(n+4)+3)`
-/

namespace A305365.P13760079422556770340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305367 (A167614 (n + 4) + 3).toNat

end

end A305365.P13760079422556770340

/-! ## A305365.P3340628782286091711

`A305367(A000124(n+5)+5)`
-/

namespace A305365.P3340628782286091711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305367 (A000124 (n + 5) + 5).toNat

end

end A305365.P3340628782286091711

/-!
# A305366: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305366, there is no canonical definition to state claims against.
-/

/-! ## A305366.P5223645778813999682

`A305367(A056119(n)+28)`
-/

namespace A305366.P5223645778813999682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305367 (A056119 n + 28).toNat

end

end A305366.P5223645778813999682

/-! ## A305366.P5787724904869701991

`A305367(eq[11, A066657(n)])`
-/

namespace A305366.P5787724904869701991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305367 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305366.P5787724904869701991

/-! ## A305366.P10752825423755149594

`A305367(A166136(n+5)+1)`
-/

namespace A305366.P10752825423755149594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305367 (A166136 (n + 5) + 1).toNat

end

end A305366.P10752825423755149594

/-! ## A305366.P6686962158575980172

`A305367(A167499(n+5)+2)`
-/

namespace A305366.P6686962158575980172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305367 (A167499 (n + 5) + 2).toNat

end

end A305366.P6686962158575980172

/-! ## A305366.P14361771651168816480

`A305367(A000217(n+6)+7)`
-/

namespace A305366.P14361771651168816480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305367 (A000217 (n + 6) + 7).toNat

end

end A305366.P14361771651168816480

/-!
# A305367: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305367, there is no canonical definition to state claims against.
-/

/-! ## A305367.P15558778428225982670

`A304019(n+1)+A173636(A174545(n))`
-/

namespace A305367.P15558778428225982670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304019 (n + 1) + A173636 (A174545 n).toNat

end

end A305367.P15558778428225982670

/-! ## A305367.P5225951187101157112

`A304019(n+1)+A184159(A099594(n))²`
-/

namespace A305367.P5225951187101157112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304019 (n + 1) + A184159 (A099594 n).toNat ^ 2

end

end A305367.P5225951187101157112

/-! ## A305367.P9978629299892324852

`A304019(n+1)+A065040(A282230(n+1))`
-/

namespace A305367.P9978629299892324852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304019 (n + 1) + A065040 (A282230 (n + 1)).toNat

end

end A305367.P9978629299892324852

/-! ## A305367.P2995134394240350305

`A304019(n+1)+A280737(A301784(n+1))²`
-/

namespace A305367.P2995134394240350305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304019 (n + 1) + A280737 (A301784 (n + 1)).toNat ^ 2

end

end A305367.P2995134394240350305

/-! ## A305367.P291407892633908875

`A304019(n+1)+A316717(A316576(n+1))²`
-/

namespace A305367.P291407892633908875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304019 (n + 1) + A316717 (A316576 (n + 1)).toNat ^ 2

end

end A305367.P291407892633908875

/-!
# A305369: Lexicographically earliest sequence of distinct positive integers such that for each 1 in the binary expansion of a(n), exactly one of a(n-1) and a(n+1) has a 1 in the same position.

The programs for A305369, there is no canonical definition to state claims against.
-/

/-! ## A305369.P7778643932529004380

`or(A305371(n+1), A305371(A028310(n)))`
-/

namespace A305369.P7778643932529004380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A305371 (n + 1)) (A305371 (A028310 n).toNat)

end

end A305369.P7778643932529004380

/-! ## A305369.P12374274048210845110

`or(A305371(n+1), A305371(A000007(n)+n))`
-/

namespace A305369.P12374274048210845110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A305371 (n + 1)) (A305371 (A000007 n + (n : ℤ)).toNat)

end

end A305369.P12374274048210845110

/-! ## A305369.P12219401499861671406

`A305371(abs(1-n)+2)+A305371(A028310(n))`
-/

namespace A305369.P12219401499861671406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305371 (|1 - (n : ℤ)| + 2).toNat + A305371 (A028310 n).toNat

end

end A305369.P12219401499861671406

/-! ## A305369.P16089360414274502197

`A305371(n+1)+A305371(A028310(n))-A000007(n)`
-/

namespace A305369.P16089360414274502197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305371 (n + 1) + (A305371 (A028310 n).toNat - A000007 n)

end

end A305369.P16089360414274502197

/-! ## A305369.P13671724243936862831

`or(A305371(A065033(2*n)), A305371(n+1))`
-/

namespace A305369.P13671724243936862831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A305371 (A065033 (2 * n)).toNat) (A305371 (n + 1))

end

end A305369.P13671724243936862831

/-!
# A305370: Index of 2^n in A109812.

The programs for A305370, there is no canonical definition to state claims against.
-/

/-! ## A305370.P8133909940953271592

`eq[1, A351963(n+1)]+1`
-/

namespace A305370.P8133909940953271592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A305370.P8133909940953271592

/-! ## A305370.P14841910791252355599

`eq[1, A352884(n+1)]+1`
-/

namespace A305370.P14841910791252355599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352884 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A305370.P14841910791252355599

/-! ## A305370.P3665526746253781312

`eq[n, A352791(n+1)]+1`
-/

namespace A305370.P3665526746253781312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352791 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A305370.P3665526746253781312

/-! ## A305370.P11816422304329631087

`eq[A057427(n), A352884(A028310(n))]`
-/

namespace A305370.P11816422304329631087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352884 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A305370.P11816422304329631087

/-! ## A305370.P7451289477713741474

`A113233(2^n)`
-/

namespace A305370.P7451289477713741474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113233 (2 ^ n)

end

end A305370.P7451289477713741474

/-!
# A305371: The binary expansions of b(n+1) and b(n) are required to have 1's in common at exactly the positions where a(n) has a 1 in its binary expansion, where b() is A305369.

The programs for A305371, there is no canonical definition to state claims against.
-/

/-! ## A305371.P17014780108517419393

`A305369(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A305371.P17014780108517419393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A305369 (n + 1) - a (n - 1)

end

end A305371.P17014780108517419393

/-! ## A305371.P15784216988496715652

`and(A305369(n+1), A327767(n+1))`
-/

namespace A305371.P15784216988496715652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A305369 (n + 1)) (A327767 (n + 1))

end

end A305371.P15784216988496715652

/-! ## A305371.P3079117207487550972

`and(A305369(n+1), A305369(n+2))`
-/

namespace A305371.P3079117207487550972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A305369 (n + 1)) (A305369 (n + 2))

end

end A305371.P3079117207487550972

/-! ## A305371.P5009662770408421773

`or(A305369(n+2), A305369(n+3))-A305369(n+3)`
-/

namespace A305371.P5009662770408421773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A305369 (n + 2)) (A305369 (n + 3)) - A305369 (n + 3)

end

end A305371.P5009662770408421773

/-! ## A305371.P1223317305740850625

`and(A280412(n), A305369(n+1))`
-/

namespace A305371.P1223317305740850625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A280412 n) (A305369 (n + 1))

end

end A305371.P1223317305740850625

/-! ## A305371.P2963423169552040137

`and(A286772(n), A305369(n+1))`
-/

namespace A305371.P2963423169552040137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A286772 n) (A305369 (n + 1))

end

end A305371.P2963423169552040137

/-! ## A305371.P5585197438298687651

`and(A266302(n), A305369(n+1))`
-/

namespace A305371.P5585197438298687651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266302 n) (A305369 (n + 1))

end

end A305371.P5585197438298687651

/-!
# A305372: A109812(2k+1).

The programs for A305372, there is no canonical definition to state claims against.
-/

/-! ## A305372.P1979244227497027668

`A109812(Δ[n²])`
-/

namespace A305372.P1979244227497027668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109812 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A305372.P1979244227497027668

/-! ## A305372.P3417423283161544284

`A352794(Δ[n²])+Δ[n²]`
-/

namespace A305372.P3417423283161544284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352794 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A305372.P3417423283161544284

/-! ## A305372.P10204631353777143899

`and(-1, A109812(2*n+1))`
-/

namespace A305372.P10204631353777143899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A109812 (2 * n + 1))

end

end A305372.P10204631353777143899

/-! ## A305372.P3975953892604242432

`A109812(n+n+1)/gcd(n, n+1)`
-/

namespace A305372.P3975953892604242432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109812 (n + n + 1) : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A305372.P3975953892604242432

/-! ## A305372.P13661422047272179507

`A000027(A109812(2*n+1))`
-/

namespace A305372.P13661422047272179507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A109812 (2 * n + 1)).toNat

end

end A305372.P13661422047272179507

/-! ## A305372.P17849527465614896866

`A057979(2*n)*A109812(2*n+1)`
-/

namespace A305372.P17849527465614896866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) * A109812 (2 * n + 1)

end

end A305372.P17849527465614896866

/-! ## A305372.P10341338866573203048

`A109812(2*n+1)%(A003215(n)+1)`
-/

namespace A305372.P10341338866573203048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109812 (2 * n + 1)) (A003215 n + 1)

end

end A305372.P10341338866573203048

/-! ## A305372.P5493647403788572313

`A353240(2*n+1)-A109812(2*(n+1))`
-/

namespace A305372.P5493647403788572313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353240 (2 * n + 1) - A109812 (2 * (n + 1))

end

end A305372.P5493647403788572313

/-! ## A305372.P1183808703716915615

`A001511(2*n+1)*A109812(2*n+1)`
-/

namespace A305372.P1183808703716915615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A109812 (2 * n + 1)

end

end A305372.P1183808703716915615

/-! ## A305372.P4241026515532816209

`A209229(2*n+3)+A109812(2*n+1)`
-/

namespace A305372.P4241026515532816209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (2 * n + 3) + A109812 (2 * n + 1)

end

end A305372.P4241026515532816209

/-! ## A305372.P3452175281733125709

`A000079(A351964(2*n+1))*A351965(2*n+1)`
-/

namespace A305372.P3452175281733125709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A351964 (2 * n + 1)).toNat * A351965 (2 * n + 1)

end

end A305372.P3452175281733125709

/-! ## A305372.P9427511117031767158

`A305369(4*n+3)/2`
-/

namespace A305372.P9427511117031767158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305369 (4 * n + 3) : ℚ) / 2

end

end A305372.P9427511117031767158

/-! ## A305372.P14018287283329479017

`A238757(A238757(A109812(n+1+n)))`
-/

namespace A305372.P14018287283329479017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238757 (A238757 (A109812 (n + 1 + n)).toNat).toNat

end

end A305372.P14018287283329479017

/-! ## A305372.P5020886829331068716

`A113232(A113233(2*n+1))`
-/

namespace A305372.P5020886829331068716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113232 (A113233 (2 * n + 1)).toNat

end

end A305372.P5020886829331068716

/-! ## A305372.P765984642257365377

`A113233(A113232(n+1+n))`
-/

namespace A305372.P765984642257365377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113233 (A113232 (n + 1 + n)).toNat

end

end A305372.P765984642257365377

/-! ## A305372.P3177163369399428290

`A113232(A109812(A113234(2*n+1)))`
-/

namespace A305372.P3177163369399428290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113232 (A109812 (A113234 (2 * n + 1)).toNat).toNat

end

end A305372.P3177163369399428290

/-! ## A305372.P1776850148526705914

`gcd(A000045(2*n), A000045(n+1))*A109812(2*n+1)`
-/

namespace A305372.P1776850148526705914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000045 (2 * n)) (A000045 (n + 1)) : ℤ) * A109812 (2 * n + 1)

end

end A305372.P1776850148526705914

/-!
# A305373: a(n) = A003144(n) + A003145(n).

The programs for A305373, the canonical program `A305373.P4052659438466849516` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305373 has offset 0).

The definition of A305373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305373.P4052659438466849516

`A275925(n)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A305373

/-- `A275925(n)+a(n-1)` -/
def P4052659438466849516.Spec : Prop :=
  ∀ n, P4052659438466849516.a n = A305373 n

theorem P4052659438466849516.correct : P4052659438466849516.Spec := by
  intro n
  simp only [A305373]

end A305373

/-! ## A305373.P16106007915006736114

`∑[A275925(A028310(n))]-3`
-/

namespace A305373.P16106007915006736114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275925 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A305373.P16106007915006736114

namespace A305373

/-- `∑[A275925(A028310(n))]-3` -/
def P16106007915006736114.Spec : Prop :=
  ∀ n, P16106007915006736114.a n = A305373 n

end A305373

/-! ## A305373.P18180017668676477407

`A278041(n)-(A275925(n+1)+n)`
-/

namespace A305373.P18180017668676477407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 n - (A275925 (n + 1) + (n : ℤ))

end

end A305373.P18180017668676477407

namespace A305373

/-- `A278041(n)-(A275925(n+1)+n)` -/
def P18180017668676477407.Spec : Prop :=
  ∀ n, P18180017668676477407.a n = A305373 n

end A305373

/-! ## A305373.P12753403465189990435

`A003144(n+1)+A003145(n+1)-A275925(n+1)`
-/

namespace A305373.P12753403465189990435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (n + 1) + (A003145 (n + 1) - A275925 (n + 1))

end

end A305373.P12753403465189990435

namespace A305373

/-- `A003144(n+1)+A003145(n+1)-A275925(n+1)` -/
def P12753403465189990435.Spec : Prop :=
  ∀ n, P12753403465189990435.a n = A305373 n

end A305373

/-! ## A305373.P2869256767318971338

`eq[2, A305374(n)]-n`
-/

namespace A305373.P2869256767318971338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A305373.P2869256767318971338

namespace A305373

/-- `eq[2, A305374(n)]-n` -/
def P2869256767318971338.Spec : Prop :=
  ∀ n, P2869256767318971338.a n = A305373 n

end A305373

/-! ## A305373.P16031426439756395549

`eq[3, A275925(n+1)]-n`
-/

namespace A305373.P16031426439756395549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A305373.P16031426439756395549

namespace A305373

/-- `eq[3, A275925(n+1)]-n` -/
def P16031426439756395549.Spec : Prop :=
  ∀ n, P16031426439756395549.a n = A305373 n

end A305373

/-! ## A305373.P13076151618795300077

`record[(A276796(n)+n)*A276794(n)]`
-/

namespace A305373.P13076151618795300077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A276796 n + (n : ℤ)) * A276794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305373.P13076151618795300077

namespace A305373

/-- `record[(A276796(n)+n)*A276794(n)]` -/
def P13076151618795300077.Spec : Prop :=
  ∀ n, P13076151618795300077.a n = A305373 n

end A305373

/-! ## A305373.P1219508523905034004

`lt[0, A276791(n)]-n`
-/

namespace A305373.P1219508523905034004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A305373.P1219508523905034004

namespace A305373

/-- `lt[0, A276791(n)]-n` -/
def P1219508523905034004.Spec : Prop :=
  ∀ n, P1219508523905034004.a n = A305373 n

end A305373

/-! ## A305373.P8579853902633217068

`eq[1, A277745(n+1)]-n`
-/

namespace A305373.P8579853902633217068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A305373.P8579853902633217068

namespace A305373

/-- `eq[1, A277745(n+1)]-n` -/
def P8579853902633217068.Spec : Prop :=
  ∀ n, P8579853902633217068.a n = A305373 n

end A305373

/-!
# A305374: First differences of A140101.

The programs for A305374, the canonical program `A305374.P17612243429191767382` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305374 has offset 0).

The definition of A305374 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140101, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A305374.P17612243429191767382

`A140101(n+1)-A140101(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A305374

/-- `A140101(n+1)-A140101(n)` -/
def P17612243429191767382.Spec : Prop :=
  ∀ n, P17612243429191767382.a n = A305374 n

theorem P17612243429191767382.correct : P17612243429191767382.Spec := by
  intro n
  simp only [A305374]

end A305374

/-! ## A305374.P9803578691708058083

`Δ[A140101(n)]`
-/

namespace A305374.P9803578691708058083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A305374.P9803578691708058083

namespace A305374

/-- `Δ[A140101(n)]` -/
def P9803578691708058083.Spec : Prop :=
  ∀ n, P9803578691708058083.a n = A305374 n

theorem P9803578691708058083.correct : P9803578691708058083.Spec := by
  intro n
  simp only [A305374, Nat.add_sub_cancel, A305374.P9803578691708058083.f1, A305374.P9803578691708058083.a, A305374.P17612243429191767382.a, SequenceMachineLib.memo_apply]

end A305374

/-! ## A305374.P3471751549000854370

`3-A276791(n)`
-/

namespace A305374.P3471751549000854370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A276791 n

end

end A305374.P3471751549000854370

namespace A305374

/-- `3-A276791(n)` -/
def P3471751549000854370.Spec : Prop :=
  ∀ n, P3471751549000854370.a n = A305374 n

end A305374

/-! ## A305374.P1832863848323592641

`a(A317193(n)²)` with `a(0)=2, a(1)=3`
-/

namespace A305374.P1832863848323592641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (A317193 n ^ 2).toNat

end

end A305374.P1832863848323592641

namespace A305374

/-- `a(A317193(n)²)` -/
def P1832863848323592641.Spec : Prop :=
  ∀ n, (P1832863848323592641.a n : ℤ) = A305374 n

end A305374

/-! ## A305374.P5408709308411144560

`ceil(sqrt(A275925(n+1)))`
-/

namespace A305374.P5408709308411144560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A275925 (n + 1) : ℝ)⌉

end

end A305374.P5408709308411144560

namespace A305374

/-- `ceil(sqrt(A275925(n+1)))` -/
def P5408709308411144560.Spec : Prop :=
  ∀ n, P5408709308411144560.a n = A305374 n

end A305374

/-! ## A305374.P6870603664907334936

`a(A276789(n)-2)` with `a(0)=2, a(1)=3`
-/

namespace A305374.P6870603664907334936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (A276789 n - 2).toNat

end

end A305374.P6870603664907334936

namespace A305374

/-- `a(A276789(n)-2)` -/
def P6870603664907334936.Spec : Prop :=
  ∀ n, (P6870603664907334936.a n : ℤ) = A305374 n

end A305374

/-! ## A305374.P2410890142740493049

`floor(sqrt(A277745(n+1)-1))+2`
-/

namespace A305374.P2410890142740493049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A277745 (n + 1) - 1) + 2

end

end A305374.P2410890142740493049

namespace A305374

/-- `floor(sqrt(A277745(n+1)-1))+2` -/
def P2410890142740493049.Spec : Prop :=
  ∀ n, P2410890142740493049.a n = A305374 n

end A305374

/-! ## A305374.P16473757418968875784

`A277745(n+1)+1-A276794(n)`
-/

namespace A305374.P16473757418968875784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277745 (n + 1) + (1 - A276794 n)

end

end A305374.P16473757418968875784

namespace A305374

/-- `A277745(n+1)+1-A276794(n)` -/
def P16473757418968875784.Spec : Prop :=
  ∀ n, P16473757418968875784.a n = A305374 n

end A305374

/-! ## A305374.P4638748996979519961

`log2(A277745(n+1)+A275925(n+1))`
-/

namespace A305374.P4638748996979519961
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A277745 (n + 1) + A275925 (n + 1) : ℝ)

end

end A305374.P4638748996979519961

namespace A305374

/-- `log2(A277745(n+1)+A275925(n+1))` -/
def P4638748996979519961.Spec : Prop :=
  ∀ n, P4638748996979519961.a n = (A305374 n : ℝ)

end A305374

/-! ## A305374.P9216620163396196983

`Δ[comp[A140100(n+1)]]`
-/

namespace A305374.P9216620163396196983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A305374.P9216620163396196983

namespace A305374

/-- `Δ[comp[A140100(n+1)]]` -/
def P9216620163396196983.Spec : Prop :=
  ∀ n, P9216620163396196983.a n = A305374 n

end A305374

/-!
# A305375: Number of crossing-maximal order types of n points in the plane.

The programs for A305375, there is no canonical definition to state claims against.
-/

/-! ## A305375.P6372017001122021690

`A145772(A146998(n+1))`
-/

namespace A305375.P6372017001122021690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145772 (A146998 (n + 1)).toNat

end

end A305375.P6372017001122021690

/-! ## A305375.P16045433411679597140

`A347462(A238979(n+1))`
-/

namespace A305375.P16045433411679597140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347462 (A238979 (n + 1)).toNat

end

end A305375.P16045433411679597140

/-! ## A305375.P2477539760530785225

`A242345(A003266(n)+2)`
-/

namespace A305375.P2477539760530785225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242345 (A003266 n + 2).toNat

end

end A305375.P2477539760530785225

/-! ## A305375.P9701676843071448488

`∏{p}[A233270(A334270(n)), #]`
-/

namespace A305375.P9701676843071448488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233270 (A334270 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A305375.P9701676843071448488

/-!
# A305376: Number of crossing-minimal order types of n points in the plane.

The programs for A305376, there is no canonical definition to state claims against.
-/

/-! ## A305376.P14364143835771197230

`A087983(A002965(n))-A046922(n+1)`
-/

namespace A305376.P14364143835771197230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087983 (A002965 n).toNat - A046922 (n + 1)

end

end A305376.P14364143835771197230

/-! ## A305376.P5502074849297069970

`A072880(n+1)+A029776(A072879(n+1))`
-/

namespace A305376.P5502074849297069970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072880 (n + 1) + A029776 (A072879 (n + 1)).toNat

end

end A305376.P5502074849297069970

/-!
# A305377: Tribonacci representation of primes, written in base 10.

The programs for A305377, the canonical program `A305377.P16891160139841273733` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305377 has offset 1).

The definition of A305377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305377.P16891160139841273733

`A003726(A008864(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A305377

/-- `A003726(A008864(n+1))` -/
def P16891160139841273733.Spec : Prop :=
  ∀ n, P16891160139841273733.a n = A305377 (n + 1)

theorem P16891160139841273733.correct : P16891160139841273733.Spec := by
  intro n
  simp only [A305377, Nat.add_sub_cancel]

end A305377

/-! ## A305377.P15838113887132616365

`A003726(A028815(n+1))`
-/

namespace A305377.P15838113887132616365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003726 (A028815 (n + 1)).toNat

end

end A305377.P15838113887132616365

namespace A305377

/-- `A003726(A028815(n+1))` -/
def P15838113887132616365.Spec : Prop :=
  ∀ n, P15838113887132616365.a n = A305377 (n + 1)

end A305377

/-! ## A305377.P10897195606644795963

`A003726(A299763(n+2))`
-/

namespace A305377.P10897195606644795963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003726 (A299763 (n + 2)).toNat

end

end A305377.P10897195606644795963

namespace A305377

/-- `A003726(A299763(n+2))` -/
def P10897195606644795963.Spec : Prop :=
  ∀ n, P10897195606644795963.a n = A305377 (n + 1)

end A305377

/-! ## A305377.P546918776845187409

`A003726(p?[A064429(n)]+1)`
-/

namespace A305377.P546918776845187409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003726 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A305377.P546918776845187409

namespace A305377

/-- `A003726(p?[A064429(n)]+1)` -/
def P546918776845187409.Spec : Prop :=
  ∀ n, P546918776845187409.a n = A305377 (n + 1)

end A305377

/-! ## A305377.P3587791018630903082

`A003726(A000040(n+1)+1)`
-/

namespace A305377.P3587791018630903082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003726 (A000040 (n + 1) + 1).toNat

end

end A305377.P3587791018630903082

namespace A305377

/-- `A003726(A000040(n+1)+1)` -/
def P3587791018630903082.Spec : Prop :=
  ∀ n, P3587791018630903082.a n = A305377 (n + 1)

end A305377

/-! ## A305377.P6335706991647802686

`A003726(A006093(n+1)+2)`
-/

namespace A305377.P6335706991647802686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003726 (A006093 (n + 1) + 2).toNat

end

end A305377.P6335706991647802686

namespace A305377

/-- `A003726(A006093(n+1)+2)` -/
def P6335706991647802686.Spec : Prop :=
  ∀ n, P6335706991647802686.a n = A305377 (n + 1)

end A305377

/-! ## A305377.P3149532322823147587

`A003726(A008578(n+2)+1)`
-/

namespace A305377.P3149532322823147587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003726 (A008578 (n + 2) + 1).toNat

end

end A305377.P3149532322823147587

namespace A305377

/-- `A003726(A008578(n+2)+1)` -/
def P3149532322823147587.Spec : Prop :=
  ∀ n, P3149532322823147587.a n = A305377 (n + 1)

end A305377

/-! ## A305377.P15671122777427050978

`A003726(record[A014963(n+2)+1])`
-/

namespace A305377.P15671122777427050978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003726 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A305377.P15671122777427050978

namespace A305377

/-- `A003726(record[A014963(n+2)+1])` -/
def P15671122777427050978.Spec : Prop :=
  ∀ n, P15671122777427050978.a n = A305377 (n + 1)

end A305377

/-! ## A305377.P610347119797488818

`A003726(A048250(p?[A064429(n)]))`
-/

namespace A305377.P610347119797488818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003726 (A048250 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A305377.P610347119797488818

namespace A305377

/-- `A003726(A048250(p?[A064429(n)]))` -/
def P610347119797488818.Spec : Prop :=
  ∀ n, P610347119797488818.a n = A305377 (n + 1)

end A305377

/-! ## A305377.P13282580040560884252

`A003726(p?[A001057(n)]+1)`
-/

namespace A305377.P13282580040560884252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003726 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A305377.P13282580040560884252

namespace A305377

/-- `A003726(p?[A001057(n)]+1)` -/
def P13282580040560884252.Spec : Prop :=
  ∀ n, P13282580040560884252.a n = A305377 (n + 1)

end A305377

/-! ## A305377.P6906499629638131307

`A003726(A053158(p?[A001057(n)]))`
-/

namespace A305377.P6906499629638131307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003726 (A053158 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A305377.P6906499629638131307

namespace A305377

/-- `A003726(A053158(p?[A001057(n)]))` -/
def P6906499629638131307.Spec : Prop :=
  ∀ n, P6906499629638131307.a n = A305377 (n + 1)

end A305377

/-!
# A305378: Tribonacci representation of 2n+1, written in base 10.

The programs for A305378, the canonical program `A305378.P7773183286010594477` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305378 has offset 0).

The definition of A305378 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305378.P7773183286010594477

`A003726(2*(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A305378

/-- `A003726(2*(n+1))` -/
def P7773183286010594477.Spec : Prop :=
  ∀ n, P7773183286010594477.a n = A305378 n

theorem P7773183286010594477.correct : P7773183286010594477.Spec := by
  intro n
  simp only [A305378]

end A305378

/-! ## A305378.P2777333652902815577

`record[A003726(xor(1, n)+1)]`
-/

namespace A305378.P2777333652902815577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003726 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305378.P2777333652902815577

namespace A305378

/-- `record[A003726(xor(1, n)+1)]` -/
def P2777333652902815577.Spec : Prop :=
  ∀ n, P2777333652902815577.a n = A305378 n

end A305378

/-! ## A305378.P6295528702953673091

`A003726(A005843(n+1))%A006450(n+1)`
-/

namespace A305378.P6295528702953673091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003726 (A005843 (n + 1)).toNat) (A006450 (n + 1))

end

end A305378.P6295528702953673091

namespace A305378

/-- `A003726(A005843(n+1))%A006450(n+1)` -/
def P6295528702953673091.Spec : Prop :=
  ∀ n, P6295528702953673091.a n = A305378 n

end A305378

/-! ## A305378.P6327402784289485809

`A318840(A051697(n))+A003726(A005843(n+1))`
-/

namespace A305378.P6327402784289485809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318840 (A051697 n).toNat + A003726 (A005843 (n + 1)).toNat

end

end A305378.P6327402784289485809

namespace A305378

/-- `A318840(A051697(n))+A003726(A005843(n+1))` -/
def P6327402784289485809.Spec : Prop :=
  ∀ n, P6327402784289485809.a n = A305378 n

end A305378

/-! ## A305378.P1760069332389526465

`A318840(A006530(n+1))+A003726(A005843(n+1))`
-/

namespace A305378.P1760069332389526465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318840 (A006530 (n + 1)).toNat + A003726 (A005843 (n + 1)).toNat

end

end A305378.P1760069332389526465

namespace A305378

/-- `A318840(A006530(n+1))+A003726(A005843(n+1))` -/
def P1760069332389526465.Spec : Prop :=
  ∀ n, P1760069332389526465.a n = A305378 n

end A305378

/-! ## A305378.P17337589898852586398

`A007814(A004771(n))+A003726(A005843(n+1))`
-/

namespace A305378.P17337589898852586398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A004771 n).toNat + A003726 (A005843 (n + 1)).toNat

end

end A305378.P17337589898852586398

namespace A305378

/-- `A007814(A004771(n))+A003726(A005843(n+1))` -/
def P17337589898852586398.Spec : Prop :=
  ∀ n, P17337589898852586398.a n = A305378 n

end A305378

/-! ## A305378.P6775030931454156721

`A007814(A065091(n+1))+A003726(A005843(n+1))`
-/

namespace A305378.P6775030931454156721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A065091 (n + 1)).toNat + A003726 (A005843 (n + 1)).toNat

end

end A305378.P6775030931454156721

namespace A305378

/-- `A007814(A065091(n+1))+A003726(A005843(n+1))` -/
def P6775030931454156721.Spec : Prop :=
  ∀ n, P6775030931454156721.a n = A305378 n

end A305378

/-! ## A305378.P359980922940280639

`A003726(A005843(n+1))%A198635(n)`
-/

namespace A305378.P359980922940280639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003726 (A005843 (n + 1)).toNat) (A198635 n)

end

end A305378.P359980922940280639

namespace A305378

/-- `A003726(A005843(n+1))%A198635(n)` -/
def P359980922940280639.Spec : Prop :=
  ∀ n, P359980922940280639.a n = A305378 n

end A305378

/-!
# A305379: Tribonacci representation of primes, written in base 2.

The programs for A305379, the canonical program `A305379.P14029191028484056430` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305379 has offset 1).

The definition of A305379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2788 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305379.P14029191028484056430

`A278038(A000040(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A305379

/-- `A278038(A000040(n+1))` -/
def P14029191028484056430.Spec : Prop :=
  ∀ n, P14029191028484056430.a n = A305379 (n + 1)

theorem P14029191028484056430.correct : P14029191028484056430.Spec := by
  intro n
  simp only [A305379, Nat.add_sub_cancel]

end A305379

/-! ## A305379.P17415834060377999668

`A278038(A008578(n+2))`
-/

namespace A305379.P17415834060377999668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278038 (A008578 (n + 2)).toNat

end

end A305379.P17415834060377999668

namespace A305379

/-- `A278038(A008578(n+2))` -/
def P17415834060377999668.Spec : Prop :=
  ∀ n, P17415834060377999668.a n = A305379 (n + 1)

end A305379

/-! ## A305379.P17670261758687669934

`A278038(A182986(n+2))`
-/

namespace A305379.P17670261758687669934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278038 (A182986 (n + 2)).toNat

end

end A305379.P17670261758687669934

namespace A305379

/-- `A278038(A182986(n+2))` -/
def P17670261758687669934.Spec : Prop :=
  ∀ n, P17670261758687669934.a n = A305379 (n + 1)

end A305379

/-! ## A305379.P2741826161929030820

`A278038(record[A006530(n+2)])`
-/

namespace A305379.P2741826161929030820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278038 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A305379.P2741826161929030820

namespace A305379

/-- `A278038(record[A006530(n+2)])` -/
def P2741826161929030820.Spec : Prop :=
  ∀ n, P2741826161929030820.a n = A305379 (n + 1)

end A305379

/-! ## A305379.P9240201929628848408

`A278038(record[A020639(n+2)])`
-/

namespace A305379.P9240201929628848408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278038 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A305379.P9240201929628848408

namespace A305379

/-- `A278038(record[A020639(n+2)])` -/
def P9240201929628848408.Spec : Prop :=
  ∀ n, P9240201929628848408.a n = A305379 (n + 1)

end A305379

/-! ## A305379.P4995251802628496440

`A278038(A040976(n+1)+2)`
-/

namespace A305379.P4995251802628496440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278038 (A040976 (n + 1) + 2).toNat

end

end A305379.P4995251802628496440

namespace A305379

/-- `A278038(A040976(n+1)+2)` -/
def P4995251802628496440.Spec : Prop :=
  ∀ n, P4995251802628496440.a n = A305379 (n + 1)

end A305379

/-! ## A305379.P13510527894502977775

`A278038(lt[A001222(n+2), 2]+2)`
-/

namespace A305379.P13510527894502977775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278038 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A305379.P13510527894502977775

namespace A305379

/-- `A278038(lt[A001222(n+2), 2]+2)` -/
def P13510527894502977775.Spec : Prop :=
  ∀ n, P13510527894502977775.a n = A305379 (n + 1)

end A305379

/-! ## A305379.P9017254739962491341

`A007088(A305377(n+1))`
-/

namespace A305379.P9017254739962491341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A305377 (n + 1)).toNat

end

end A305379.P9017254739962491341

namespace A305379

/-- `A007088(A305377(n+1))` -/
def P9017254739962491341.Spec : Prop :=
  ∀ n, P9017254739962491341.a n = A305379 (n + 1)

end A305379

/-! ## A305379.P5260212735957705110

`A278038(record[A014963(n+2)])`
-/

namespace A305379.P5260212735957705110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278038 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A305379.P5260212735957705110

namespace A305379

/-- `A278038(record[A014963(n+2)])` -/
def P5260212735957705110.Spec : Prop :=
  ∀ n, P5260212735957705110.a n = A305379 (n + 1)

end A305379

/-!
# A305380: Tribonacci representation of 2^n, written in base 10.

The programs for A305380, there is no canonical definition to state claims against.
-/

/-! ## A305380.P15731622520493842131

`A305378(A034008(n+1))+A057428(n)`
-/

namespace A305380.P15731622520493842131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305378 (A034008 (n + 1)).toNat + A057428 n

end

end A305380.P15731622520493842131

/-! ## A305380.P8414230365278601375

`A305378(A034008(n+1))-A057427(n)`
-/

namespace A305380.P8414230365278601375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305378 (A034008 (n + 1)).toNat - A057427 n

end

end A305380.P8414230365278601375

/-! ## A305380.P4358483112555023657

`A305378(A034008(n+1))-char[A007318(n)]`
-/

namespace A305380.P4358483112555023657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305378 (A034008 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A305380.P4358483112555023657

/-! ## A305380.P2921530772479187562

`A305378(A034008(n+1))-and(1, A000040(n+1))`
-/

namespace A305380.P2921530772479187562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305378 (A034008 (n + 1)).toNat - Int.land 1 (A000040 (n + 1))

end

end A305380.P2921530772479187562

/-! ## A305380.P2582268064713722250

`A305378(A034008(n+1))-ceil(n/A000203(n+1))`
-/

namespace A305380.P2582268064713722250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305378 (A034008 (n + 1)).toNat - ⌈(n : ℚ) / (A000203 (n + 1) : ℚ)⌉

end

end A305380.P2582268064713722250

/-!
# A305381: Number of 1's in truth table for Boolean function x1 x2 x4 + x2 x3 x5 + ... + x{n-3} x{n-2} xn + x{n-2} x{n-1} x1 + x{n-1} xn x2 + xn x1 x3.

The programs for A305381, there is no canonical definition to state claims against.
-/

/-! ## A305381.P2826551592443435259

`A159788(lcm(A052839(2*(n+2)), A060240(n)))`
-/

namespace A305381.P2826551592443435259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159788 (Int.lcm (A052839 (2 * (n + 2))) (A060240 n))

end

end A305381.P2826551592443435259

/-! ## A305381.P10082791330644157199

`A159788(A052839(2*(n+2)))+A010054(A223718(3*(n+1)))`
-/

namespace A305381.P10082791330644157199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159788 (A052839 (2 * (n + 2))).toNat + A010054 (A223718 (3 * (n + 1))).toNat

end

end A305381.P10082791330644157199

/-!
# A305383: Square array read by antidiagonals: T(i,j) = Sprague-Grundy function for position (i,j) in the "R" variant of Wythoff's game.

The programs for A305383, there is no canonical definition to state claims against.
-/

/-! ## A305383.P3466970337822760195

`A004481(n)-A093957(A022166(n))`
-/

namespace A305383.P3466970337822760195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 n - A093957 (A022166 n).toNat

end

end A305383.P3466970337822760195

/-! ## A305383.P14309806934304095202

`A004489(n)-A093957(A022166(n))`
-/

namespace A305383.P14309806934304095202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004489 n - A093957 (A022166 n).toNat

end

end A305383.P14309806934304095202

/-! ## A305383.P368969412779038508

`A003056(n)-A133501(A022171(n))`
-/

namespace A305383.P368969412779038508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n - A133501 (A022171 n).toNat

end

end A305383.P368969412779038508

/-!
# A305384: Square array read by antidiagonals: T(i,j) = Sprague-Grundy function for position (i,j) in the "E" variant of Wythoff's game.

The programs for A305384, there is no canonical definition to state claims against.
-/

/-! ## A305384.P7421028574282127834

`xor(A004481(n), A010673(A282560(n+1)))`
-/

namespace A305384.P7421028574282127834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004481 n) (A010673 (A282560 (n + 1)).toNat)

end

end A305384.P7421028574282127834

/-! ## A305384.P14397535086341393224

`xor(A004489(n), A010673(A282560(n+1)))`
-/

namespace A305384.P14397535086341393224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004489 n) (A010673 (A282560 (n + 1)).toNat)

end

end A305384.P14397535086341393224

/-! ## A305384.P11924050144273183011

`xor(A010673(A282560(n+1)), A307296(n))`
-/

namespace A305384.P11924050144273183011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010673 (A282560 (n + 1)).toNat) (A307296 n)

end

end A305384.P11924050144273183011

/-! ## A305384.P7918369086465271158

`xor(A004481(n), A010673(A283726(n+1)))`
-/

namespace A305384.P7918369086465271158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004481 n) (A010673 (A283726 (n + 1)).toNat)

end

end A305384.P7918369086465271158

/-! ## A305384.P625747988411048893

`xor(A004489(n), A010673(A283726(n+1)))`
-/

namespace A305384.P625747988411048893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004489 n) (A010673 (A283726 (n + 1)).toNat)

end

end A305384.P625747988411048893

/-!
# A305385: Indicator function of A140100.

The programs for A305385, there is no canonical definition to state claims against.
-/

/-! ## A305385.P6845316617463608965

`Δ[A385532(n+1)]`
-/

namespace A305385.P6845316617463608965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A305385.P6845316617463608965

/-! ## A305385.P4093706732390241820

`char[A276796(n)+n]`
-/

namespace A305385.P4093706732390241820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A305385.P4093706732390241820

/-! ## A305385.P2472808535213469943

`1-A305386(n+1)`
-/

namespace A305385.P2472808535213469943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A305386 (n + 1)

end

end A305385.P2472808535213469943

/-! ## A305385.P8517356231498552586

`char[∑[A059835(n)]-1]`
-/

namespace A305385.P8517356231498552586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059835 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A305385.P8517356231498552586

/-! ## A305385.P7070940193189266608

`char[comp[A140101(n)-1]]`
-/

namespace A305385.P7070940193189266608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A305385.P7070940193189266608

/-! ## A305385.P12668480252252830494

`1-Δ[A385533(n+1)]`
-/

namespace A305385.P12668480252252830494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A305385.P12668480252252830494

/-! ## A305385.P12318473202219986292

`char[A140100(n+1)-1]`
-/

namespace A305385.P12318473202219986292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A305385.P12318473202219986292

/-! ## A305385.P15095546352808929512

`p?[A276789(n+1)]-2`
-/

namespace A305385.P15095546352808929512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A305385.P15095546352808929512

/-! ## A305385.P7161037232736454870

`3-p?[A080843(n)+1]`
-/

namespace A305385.P7161037232736454870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A305385.P7161037232736454870

/-! ## A305385.P11371517393679454690

`3-p?[A092782(n+1)]`
-/

namespace A305385.P11371517393679454690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A305385.P11371517393679454690

/-!
# A305386: Indicator function of A140101.

The programs for A305386, the canonical program `A305386.P15118808747453613006` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305386 has offset 1).

The definition of A305386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305386.P10985624763573036692

`Δ[A385533(n+1)]`
-/

namespace A305386.P10985624763573036692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A305386.P10985624763573036692

namespace A305386

/-- `Δ[A385533(n+1)]` -/
def P10985624763573036692.Spec : Prop :=
  ∀ n, P10985624763573036692.a n = A305386 (n + 1)

end A305386

/-! ## A305386.P11171064676072472609

`char[A140101(n)-1]`
-/

namespace A305386.P11171064676072472609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A305386.P11171064676072472609

namespace A305386

/-- `char[A140101(n)-1]` -/
def P11171064676072472609.Spec : Prop :=
  ∀ n, (P11171064676072472609.a n : ℤ) = A305386 (n + 1)

end A305386

/-! ## A305386.P2087261387151981805

`char[∑[A305374(n)]-1]`
-/

namespace A305386.P2087261387151981805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305374 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A305386.P2087261387151981805

namespace A305386

/-- `char[∑[A305374(n)]-1]` -/
def P2087261387151981805.Spec : Prop :=
  ∀ n, (P2087261387151981805.a n : ℤ) = A305386 (n + 1)

end A305386

/-! ## A305386.P9957454578520554435

`1-Δ[A385532(n+1)]`
-/

namespace A305386.P9957454578520554435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A305386.P9957454578520554435

namespace A305386

/-- `1-Δ[A385532(n+1)]` -/
def P9957454578520554435.Spec : Prop :=
  ∀ n, P9957454578520554435.a n = A305386 (n + 1)

end A305386

/-! ## A305386.P3966216763237927817

`char[A003144(n+1)+n]`
-/

namespace A305386.P3966216763237927817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A305386.P3966216763237927817

namespace A305386

/-- `char[A003144(n+1)+n]` -/
def P3966216763237927817.Spec : Prop :=
  ∀ n, (P3966216763237927817.a n : ℤ) = A305386 (n + 1)

end A305386

/-! ## A305386.P15118808747453613006

`A080843(A385455(n+2))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A305386

/-- `A080843(A385455(n+2))` -/
def P15118808747453613006.Spec : Prop :=
  ∀ n, P15118808747453613006.a n = A305386 (n + 1)

theorem P15118808747453613006.correct : P15118808747453613006.Spec := by
  intro n
  simp only [A305386, Nat.add_sub_cancel]

end A305386

/-! ## A305386.P11900545973541495653

`A080843(lt[A080843(n), 2])`
-/

namespace A305386.P11900545973541495653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A305386.P11900545973541495653

namespace A305386

/-- `A080843(lt[A080843(n), 2])` -/
def P11900545973541495653.Spec : Prop :=
  ∀ n, P11900545973541495653.a n = A305386 (n + 1)

end A305386

/-! ## A305386.P7227641653748523057

`A385533(n+2)-A385533(n+1)`
-/

namespace A305386.P7227641653748523057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385533 (n + 2) - A385533 (n + 1)

end

end A305386.P7227641653748523057

namespace A305386

/-- `A385533(n+2)-A385533(n+1)` -/
def P7227641653748523057.Spec : Prop :=
  ∀ n, P7227641653748523057.a n = A305386 (n + 1)

end A305386

/-! ## A305386.P1146144899974583615

`A080843(eq[A080843(n)², A080843(n)])`
-/

namespace A305386.P1146144899974583615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A305386.P1146144899974583615

namespace A305386

/-- `A080843(eq[A080843(n)², A080843(n)])` -/
def P1146144899974583615.Spec : Prop :=
  ∀ n, P1146144899974583615.a n = A305386 (n + 1)

end A305386

/-! ## A305386.P5351117366261248751

`1-A001221(Δ[A288463(n+1)])`
-/

namespace A305386.P5351117366261248751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001221 (f1 (n + 1) - f1 n).toNat

end

end A305386.P5351117366261248751

namespace A305386

/-- `1-A001221(Δ[A288463(n+1)])` -/
def P5351117366261248751.Spec : Prop :=
  ∀ n, P5351117366261248751.a n = A305386 (n + 1)

end A305386

/-! ## A305386.P3990803222798157765

`1-A001222(Δ[A288463(n+1)])`
-/

namespace A305386.P3990803222798157765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001222 (f1 (n + 1) - f1 n).toNat

end

end A305386.P3990803222798157765

namespace A305386

/-- `1-A001222(Δ[A288463(n+1)])` -/
def P3990803222798157765.Spec : Prop :=
  ∀ n, P3990803222798157765.a n = A305386 (n + 1)

end A305386

/-! ## A305386.P2299505498187510471

`A288462(n+1)-A288462(n+1)*A288462(n+2)`
-/

namespace A305386.P2299505498187510471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288462 (n + 1) - A288462 (n + 1) * A288462 (n + 2)

end

end A305386.P2299505498187510471

namespace A305386

/-- `A288462(n+1)-A288462(n+1)*A288462(n+2)` -/
def P2299505498187510471.Spec : Prop :=
  ∀ n, P2299505498187510471.a n = A305386 (n + 1)

end A305386

/-! ## A305386.P8563366045538650972

`p?[A092782(n+1)]-2`
-/

namespace A305386.P8563366045538650972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A305386.P8563366045538650972

namespace A305386

/-- `p?[A092782(n+1)]-2` -/
def P8563366045538650972.Spec : Prop :=
  ∀ n, P8563366045538650972.a n = A305386 (n + 1)

end A305386

/-! ## A305386.P13662715380273562513

`A276794(A353084(n+1))`
-/

namespace A305386.P13662715380273562513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276794 (A353084 (n + 1)).toNat

end

end A305386.P13662715380273562513

namespace A305386

/-- `A276794(A353084(n+1))` -/
def P13662715380273562513.Spec : Prop :=
  ∀ n, P13662715380273562513.a n = A305386 (n + 1)

end A305386

/-! ## A305386.P9151297464021281953

`A276794(lt[A276791(n), 1])`
-/

namespace A305386.P9151297464021281953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276791 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276794 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A305386.P9151297464021281953

namespace A305386

/-- `A276794(lt[A276791(n), 1])` -/
def P9151297464021281953.Spec : Prop :=
  ∀ n, P9151297464021281953.a n = A305386 (n + 1)

end A305386

/-! ## A305386.P5527358486021508012

`A276791(A351631(n+2))`
-/

namespace A305386.P5527358486021508012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276791 (A351631 (n + 2)).toNat

end

end A305386.P5527358486021508012

namespace A305386

/-- `A276791(A351631(n+2))` -/
def P5527358486021508012.Spec : Prop :=
  ∀ n, P5527358486021508012.a n = A305386 (n + 1)

end A305386

/-!
# A305387: Indicator function of A140102.

The programs for A305387, there is no canonical definition to state claims against.
-/

/-! ## A305387.P17183338616914915901

`char[A140102(n)-1]`
-/

namespace A305387.P17183338616914915901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A305387.P17183338616914915901

/-! ## A305387.P15171649206314225851

`char[A276797(n)+n]`
-/

namespace A305387.P15171649206314225851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A305387.P15171649206314225851

/-! ## A305387.P11019439902057574574

`round(abs(cos(A289359(n))))`
-/

namespace A305387.P11019439902057574574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway |Real.cos (A289359 n : ℝ)|

end

end A305387.P11019439902057574574

/-! ## A305387.P1971315316710658747

`ceil(cos(Δ[A059835(n)]))`
-/

namespace A305387.P1971315316710658747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (f1 (n + 1) - f1 n : ℝ)⌉

end

end A305387.P1971315316710658747

/-! ## A305387.P9595274360747744944

`1-A305388(n+1)`
-/

namespace A305387.P9595274360747744944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A305388 (n + 1)

end

end A305387.P9595274360747744944

/-! ## A305387.P18389761805825734822

`7%A059832(n+1)`
-/

namespace A305387.P18389761805825734822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A059832 (n + 1))

end

end A305387.P18389761805825734822

/-! ## A305387.P17144508412679282547

`floor(sqrt(A059835(n+1)))`
-/

namespace A305387.P17144508412679282547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A059835 (n + 1))

end

end A305387.P17144508412679282547

/-! ## A305387.P11167437182437566753

`A305386(A288464(n+1))`
-/

namespace A305387.P11167437182437566753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305386 (A288464 (n + 1)).toNat

end

end A305387.P11167437182437566753

/-! ## A305387.P6666247829436961413

`A000045(round(ratio[A059832(n)]))`
-/

namespace A305387.P6666247829436961413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A305387.P6666247829436961413

/-! ## A305387.P1290373039331611972

`A001221(Δ[A288464(n+1)])`
-/

namespace A305387.P1290373039331611972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A305387.P1290373039331611972

/-!
# A305388: Indicator function of A140103.

The programs for A305388, there is no canonical definition to state claims against.
-/

/-! ## A305388.P4044727732033031887

`∑{e}[Δ[A059832(n)], #]`
-/

namespace A305388.P4044727732033031887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059832 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A305388.P4044727732033031887

/-! ## A305388.P634128108666435984

`∑{e}[Δ[A059835(n)], #]`
-/

namespace A305388.P634128108666435984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059835 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A305388.P634128108666435984

/-! ## A305388.P15347448370883826967

`1-A305387(n+1)`
-/

namespace A305388.P15347448370883826967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A305387 (n + 1)

end

end A305388.P15347448370883826967

/-! ## A305388.P2783538248376050033

`4%A295561(n+1)`
-/

namespace A305388.P2783538248376050033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A295561 (n + 1))

end

end A305388.P2783538248376050033

/-! ## A305388.P15750044560099101709

`val(A289359(n)+1, 3)`
-/

namespace A305388.P15750044560099101709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A289359 n + 1).toNat 3

end

end A305388.P15750044560099101709

/-! ## A305388.P16525903613831406039

`ceil(cos(A059832(n+1)))`
-/

namespace A305388.P16525903613831406039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (A059832 (n + 1) : ℝ)⌉

end

end A305388.P16525903613831406039

/-! ## A305388.P2931382428186578859

`floor(acot(A059835(n+1)))`
-/

namespace A305388.P2931382428186578859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A059835 (n + 1) : ℝ)⌋

end

end A305388.P2931382428186578859

/-! ## A305388.P2151128099929114586

`char[A140103(n+1)-1]`
-/

namespace A305388.P2151128099929114586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140103 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A305388.P2151128099929114586

/-! ## A305388.P12897251503114491923

`1-char[A140102(n)-1]`
-/

namespace A305388.P12897251503114491923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A305388.P12897251503114491923

/-! ## A305388.P14936870860456462206

`A276791(A022846(n+1))`
-/

namespace A305388.P14936870860456462206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276791 (A022846 (n + 1)).toNat

end

end A305388.P14936870860456462206

/-!
# A305389: A ternary tribonacci sequence: define the morphism f: 1 -> 2, 2 -> 3, 3 -> 1,2,3; let S[k] be result of applying f k times to 1, for k =- 0,1,2,...; sequence gives limit S[3k] as k -> oo.

The programs for A305389, there is no canonical definition to state claims against.
-/

/-! ## A305389.P10256341807614750899

`A305390(A342351(n+1)+10)`
-/

namespace A305389.P10256341807614750899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305390 (A342351 (n + 1) + 10).toNat

end

end A305389.P10256341807614750899

/-! ## A305389.P10365855554243399969

`A305391(A342351(n+1)+10)`
-/

namespace A305389.P10365855554243399969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305391 (A342351 (n + 1) + 10).toNat

end

end A305389.P10365855554243399969

/-! ## A305389.P104373603939391682

`A059832(A342351(n+1)-27)`
-/

namespace A305389.P104373603939391682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059832 (A342351 (n + 1) - 27).toNat

end

end A305389.P104373603939391682

/-! ## A305389.P16981009606126766570

`A305390(A342351(n+11))`
-/

namespace A305389.P16981009606126766570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305390 (A342351 (n + 11)).toNat

end

end A305389.P16981009606126766570

/-! ## A305389.P12032925081393988858

`A059832(2*A327376(n+1)-n)`
-/

namespace A305389.P12032925081393988858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059832 (2 * A327376 (n + 1) - (n : ℤ)).toNat

end

end A305389.P12032925081393988858

/-!
# A305390: A ternary tribonacci sequence: define the morphism f: 1 -> 2, 2 -> 3, 3 -> 1,2,3; let S[k] be result of applying f k times to 1, for k =- 0,1,2,...; sequence gives limit S[3k+1] as k -> oo.

The programs for A305390, there is no canonical definition to state claims against.
-/

/-! ## A305390.P2809178810211532646

`A059832(A135278(∑[n+1])+35)`
-/

namespace A305390.P2809178810211532646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059832 (A135278 (∑ j ∈ Finset.range (n + 1), f1 j) + 35).toNat

end

end A305390.P2809178810211532646

/-! ## A305390.P6539794460590604443

`A059832(A342351(n+1)-10)`
-/

namespace A305390.P6539794460590604443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059832 (A342351 (n + 1) - 10).toNat

end

end A305390.P6539794460590604443

/-! ## A305390.P16027540026173898475

`A305389(A342351(n+1)+27)`
-/

namespace A305390.P16027540026173898475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305389 (A342351 (n + 1) + 27).toNat

end

end A305390.P16027540026173898475

/-! ## A305390.P5926270782820997136

`A305391(A342351(n+1)+27)`
-/

namespace A305390.P5926270782820997136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305391 (A342351 (n + 1) + 27).toNat

end

end A305390.P5926270782820997136

/-! ## A305390.P17875556999820035292

`A010882(A144361(2*(n+2))-A004736(n+2))`
-/

namespace A305390.P17875556999820035292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A144361 (2 * (n + 2)) - A004736 (n + 2)).toNat

end

end A305390.P17875556999820035292

/-!
# A305391: A ternary tribonacci sequence: define the morphism f: 1 -> 2, 2 -> 3, 3 -> 1,2,3; let S[k] be result of applying f k times to 1, for k =- 0,1,2,...; sequence gives limit S[3k+2] as k -> oo.

The programs for A305391, there is no canonical definition to state claims against.
-/

/-! ## A305391.P16679360211604351593

`A059832(A327376(n+1)+1)`
-/

namespace A305391.P16679360211604351593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059832 (A327376 (n + 1) + 1).toNat

end

end A305391.P16679360211604351593

/-! ## A305391.P12471238368992016912

`A059832(A327376(n+2))`
-/

namespace A305391.P12471238368992016912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059832 (A327376 (n + 2)).toNat

end

end A305391.P12471238368992016912

/-! ## A305391.P543251375772050071

`A059832(A121266(∑[n])+1)`
-/

namespace A305391.P543251375772050071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059832 (A121266 (∑ j ∈ Finset.range (n + 1), f1 j + 10) + 1).toNat

end

end A305391.P543251375772050071

/-! ## A305391.P13610156490023996609

`A305389(A342351(2*(n+1))-n)`
-/

namespace A305391.P13610156490023996609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305389 (A342351 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A305391.P13610156490023996609

/-! ## A305391.P17001564538531222309

`A059832(A112819(n+2))`
-/

namespace A305391.P17001564538531222309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059832 (A112819 (n + 2)).toNat

end

end A305391.P17001564538531222309

/-!
# A305392: First differences of A140100.

The programs for A305392, the canonical program `A305392.P2031859111469276948` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305392 has offset 1).

The definition of A305392 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140100, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A305392.P2031859111469276948

`A140100(n+2)-A140100(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A305392

/-- `A140100(n+2)-A140100(n+1)` -/
def P2031859111469276948.Spec : Prop :=
  ∀ n, P2031859111469276948.a n = A305392 (n + 1)

theorem P2031859111469276948.correct : P2031859111469276948.Spec := by
  intro n
  simp only [A305392, Nat.add_sub_cancel]

end A305392

/-! ## A305392.P10633681067358839910

`gcd(2, eq[0, and(n, 2*and(n, 2*n))])`
-/

namespace A305392.P10633681067358839910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * Nat.land n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A305392.P10633681067358839910

namespace A305392

/-- `gcd(2, eq[0, and(n, 2*and(n, 2*n))])` -/
def P10633681067358839910.Spec : Prop :=
  ∀ n, (P10633681067358839910.a n : ℤ) = A305392 (n + 1)

end A305392

/-! ## A305392.P7443340709463998865

`gcd(2, A278038(n))`
-/

namespace A305392.P7443340709463998865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A278038 n)

end

end A305392.P7443340709463998865

namespace A305392

/-- `gcd(2, A278038(n))` -/
def P7443340709463998865.Spec : Prop :=
  ∀ n, (P7443340709463998865.a n : ℤ) = A305392 (n + 1)

end A305392

/-! ## A305392.P2605710779080448335

`(2-A080843(n))!`
-/

namespace A305392.P2605710779080448335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 - A080843 n).toNat

end

end A305392.P2605710779080448335

namespace A305392

/-- `(2-A080843(n))!` -/
def P2605710779080448335.Spec : Prop :=
  ∀ n, (P2605710779080448335.a n : ℤ) = A305392 (n + 1)

end A305392

/-! ## A305392.P6868728591118995828

`Δ[A140100(n+1)]`
-/

namespace A305392.P6868728591118995828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A305392.P6868728591118995828

namespace A305392

/-- `Δ[A140100(n+1)]` -/
def P6868728591118995828.Spec : Prop :=
  ∀ n, P6868728591118995828.a n = A305392 (n + 1)

theorem P6868728591118995828.correct : P6868728591118995828.Spec := by
  intro n
  simp only [A305392, Nat.add_sub_cancel, A305392.P6868728591118995828.f1, A305392.P6868728591118995828.a, A305392.P2031859111469276948.a, SequenceMachineLib.memo_apply]

end A305392

/-! ## A305392.P13224176072752940857

`Δ[A276796(n)]+1`
-/

namespace A305392.P13224176072752940857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A305392.P13224176072752940857

namespace A305392

/-- `Δ[A276796(n)]+1` -/
def P13224176072752940857.Spec : Prop :=
  ∀ n, P13224176072752940857.a n = A305392 (n + 1)

end A305392

/-! ## A305392.P2636470644110447188

`char[A278039(n)]+1`
-/

namespace A305392.P2636470644110447188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A305392.P2636470644110447188

namespace A305392

/-- `char[A278039(n)]+1` -/
def P2636470644110447188.Spec : Prop :=
  ∀ n, (P2636470644110447188.a n : ℤ) = A305392 (n + 1)

end A305392

/-! ## A305392.P5143972318019441389

`A276793(n+1)+1`
-/

namespace A305392.P5143972318019441389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276793 (n + 1) + 1

end

end A305392.P5143972318019441389

namespace A305392

/-- `A276793(n+1)+1` -/
def P5143972318019441389.Spec : Prop :=
  ∀ n, P5143972318019441389.a n = A305392 (n + 1)

end A305392

/-! ## A305392.P9654200434415871761

`gcd(4, A319431(n+1))`
-/

namespace A305392.P9654200434415871761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A319431 (n + 1))

end

end A305392.P9654200434415871761

namespace A305392

/-- `gcd(4, A319431(n+1))` -/
def P9654200434415871761.Spec : Prop :=
  ∀ n, (P9654200434415871761.a n : ℤ) = A305392 (n + 1)

end A305392

/-! ## A305392.P10844640353926096548

`gcd(8, A275925(n+2))`
-/

namespace A305392.P10844640353926096548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (A275925 (n + 2))

end

end A305392.P10844640353926096548

namespace A305392

/-- `gcd(8, A275925(n+2))` -/
def P10844640353926096548.Spec : Prop :=
  ∀ n, (P10844640353926096548.a n : ℤ) = A305392 (n + 1)

end A305392

/-! ## A305392.P6792657685865736481

`floor(sqrt(A276789(n+1)))`
-/

namespace A305392.P6792657685865736481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A276789 (n + 1))

end

end A305392.P6792657685865736481

namespace A305392

/-- `floor(sqrt(A276789(n+1)))` -/
def P6792657685865736481.Spec : Prop :=
  ∀ n, P6792657685865736481.a n = A305392 (n + 1)

end A305392

/-! ## A305392.P10699808666488378202

`round(log(A305394(n+1)))`
-/

namespace A305392.P10699808666488378202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A305394 (n + 1) : ℝ))

end

end A305392.P10699808666488378202

namespace A305392

/-- `round(log(A305394(n+1)))` -/
def P10699808666488378202.Spec : Prop :=
  ∀ n, P10699808666488378202.a n = A305392 (n + 1)

end A305392

/-! ## A305392.P10333634939969123255

`3-ceil(acot(A278045(n)))`
-/

namespace A305392.P10333634939969123255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ⌈SequenceMachineLib.acot (A278045 n : ℝ)⌉

end

end A305392.P10333634939969123255

namespace A305392

/-- `3-ceil(acot(A278045(n)))` -/
def P10333634939969123255.Spec : Prop :=
  ∀ n, P10333634939969123255.a n = A305392 (n + 1)

end A305392

/-! ## A305392.P3068038594680343863

`ceil(2/A092782(n+1))`
-/

namespace A305392.P3068038594680343863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (A092782 (n + 1) : ℚ)⌉

end

end A305392.P3068038594680343863

namespace A305392

/-- `ceil(2/A092782(n+1))` -/
def P3068038594680343863.Spec : Prop :=
  ∀ n, P3068038594680343863.a n = A305392 (n + 1)

end A305392

/-! ## A305392.P8577340948596887658

`ceil(2^A317193(n+1))`
-/

namespace A305392.P8577340948596887658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (A317193 (n + 1) : ℤ)⌉

end

end A305392.P8577340948596887658

namespace A305392

/-- `ceil(2^A317193(n+1))` -/
def P8577340948596887658.Spec : Prop :=
  ∀ n, P8577340948596887658.a n = A305392 (n + 1)

end A305392

/-! ## A305392.P150132073582600835

`and(1, A276792(n+1))+1`
-/

namespace A305392.P150132073582600835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A276792 (n + 1)) + 1

end

end A305392.P150132073582600835

namespace A305392

/-- `and(1, A276792(n+1))+1` -/
def P150132073582600835.Spec : Prop :=
  ∀ n, P150132073582600835.a n = A305392 (n + 1)

end A305392

/-! ## A305392.P6659896079522547693

`2-and(1, A003726(n+1))`
-/

namespace A305392.P6659896079522547693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.land 1 (A003726 (n + 1))

end

end A305392.P6659896079522547693

namespace A305392

/-- `2-and(1, A003726(n+1))` -/
def P6659896079522547693.Spec : Prop :=
  ∀ n, P6659896079522547693.a n = A305392 (n + 1)

end A305392

/-!
# A305393: First differences of A140102.

The programs for A305393, the canonical program `A305393.P2552163082248000136` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305393 has offset 1).

The definition of A305393 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140102, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A305393.P2552163082248000136

`A140102(n+2)-A140102(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A305393

/-- `A140102(n+2)-A140102(n+1)` -/
def P2552163082248000136.Spec : Prop :=
  ∀ n, P2552163082248000136.a n = A305393 (n + 1)

theorem P2552163082248000136.correct : P2552163082248000136.Spec := by
  intro n
  simp only [A305393, Nat.add_sub_cancel]

end A305393

/-! ## A305393.P16089518376001682446

`gcd(2, A317198(n))`
-/

namespace A305393.P16089518376001682446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A317198 n)

end

end A305393.P16089518376001682446

namespace A305393

/-- `gcd(2, A317198(n))` -/
def P16089518376001682446.Spec : Prop :=
  ∀ n, (P16089518376001682446.a n : ℤ) = A305393 (n + 1)

end A305393

/-! ## A305393.P12881068069668020272

`C(2, A080843(n))`
-/

namespace A305393.P12881068069668020272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A080843 n).toNat

end

end A305393.P12881068069668020272

namespace A305393

/-- `C(2, A080843(n))` -/
def P12881068069668020272.Spec : Prop :=
  ∀ n, (P12881068069668020272.a n : ℤ) = A305393 (n + 1)

end A305393

/-! ## A305393.P10308635476769885399

`Δ[A140102(n+1)]`
-/

namespace A305393.P10308635476769885399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A305393.P10308635476769885399

namespace A305393

/-- `Δ[A140102(n+1)]` -/
def P10308635476769885399.Spec : Prop :=
  ∀ n, P10308635476769885399.a n = A305393 (n + 1)

theorem P10308635476769885399.correct : P10308635476769885399.Spec := by
  intro n
  simp only [A305393, Nat.add_sub_cancel, A305393.P10308635476769885399.f1, A305393.P10308635476769885399.a, A305393.P2552163082248000136.a, SequenceMachineLib.memo_apply]

end A305393

/-! ## A305393.P8067744053838997653

`Δ[A276797(n)]+1`
-/

namespace A305393.P8067744053838997653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A305393.P8067744053838997653

namespace A305393

/-- `Δ[A276797(n)]+1` -/
def P8067744053838997653.Spec : Prop :=
  ∀ n, P8067744053838997653.a n = A305393 (n + 1)

end A305393

/-! ## A305393.P17485444847744639639

`char[A278040(n)]+1`
-/

namespace A305393.P17485444847744639639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A305393.P17485444847744639639

namespace A305393

/-- `char[A278040(n)]+1` -/
def P17485444847744639639.Spec : Prop :=
  ∀ n, (P17485444847744639639.a n : ℤ) = A305393 (n + 1)

end A305393

/-! ## A305393.P17717038565063626839

`A276794(n+1)+1`
-/

namespace A305393.P17717038565063626839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276794 (n + 1) + 1

end

end A305393.P17717038565063626839

namespace A305393

/-- `A276794(n+1)+1` -/
def P17717038565063626839.Spec : Prop :=
  ∀ n, P17717038565063626839.a n = A305393 (n + 1)

end A305393

/-! ## A305393.P4521683508516600770

`gcd(4, A092782(n+1))`
-/

namespace A305393.P4521683508516600770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A092782 (n + 1))

end

end A305393.P4521683508516600770

namespace A305393

/-- `gcd(4, A092782(n+1))` -/
def P4521683508516600770.Spec : Prop :=
  ∀ n, (P4521683508516600770.a n : ℤ) = A305393 (n + 1)

end A305393

/-! ## A305393.P17026500076143990885

`5%A276789(n+1)`
-/

namespace A305393.P17026500076143990885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A276789 (n + 1))

end

end A305393.P17026500076143990885

namespace A305393

/-- `5%A276789(n+1)` -/
def P17026500076143990885.Spec : Prop :=
  ∀ n, P17026500076143990885.a n = A305393 (n + 1)

end A305393

/-! ## A305393.P3851515793321250630

`7%A275925(n+2)`
-/

namespace A305393.P3851515793321250630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A275925 (n + 2))

end

end A305393.P3851515793321250630

namespace A305393

/-- `7%A275925(n+2)` -/
def P3851515793321250630.Spec : Prop :=
  ∀ n, P3851515793321250630.a n = A305393 (n + 1)

end A305393

/-! ## A305393.P5519880364739635729

`C(2, val(Δ[A278041(n)], 2))`
-/

namespace A305393.P5519880364739635729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2)

end

end A305393.P5519880364739635729

namespace A305393

/-- `C(2, val(Δ[A278041(n)], 2))` -/
def P5519880364739635729.Spec : Prop :=
  ∀ n, (P5519880364739635729.a n : ℤ) = A305393 (n + 1)

end A305393

/-! ## A305393.P15951075945345869288

`ceil(γ^A317193(n+1))`
-/

namespace A305393.P15951075945345869288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.eulerMascheroniConstant ^ (A317193 (n + 1) : ℤ)⌉

end

end A305393.P15951075945345869288

namespace A305393

/-- `ceil(γ^A317193(n+1))` -/
def P15951075945345869288.Spec : Prop :=
  ∀ n, P15951075945345869288.a n = A305393 (n + 1)

end A305393

/-! ## A305393.P12075399768972481008

`A001221(Δ[A278041(n)])`
-/

namespace A305393.P12075399768972481008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A305393.P12075399768972481008

namespace A305393

/-- `A001221(Δ[A278041(n)])` -/
def P12075399768972481008.Spec : Prop :=
  ∀ n, P12075399768972481008.a n = A305393 (n + 1)

end A305393

/-! ## A305393.P3817206012292517715

`2-A057078(A356898(n))²`
-/

namespace A305393.P3817206012292517715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A057078 (A356898 n).toNat ^ 2

end

end A305393.P3817206012292517715

namespace A305393

/-- `2-A057078(A356898(n))²` -/
def P3817206012292517715.Spec : Prop :=
  ∀ n, P3817206012292517715.a n = A305393 (n + 1)

end A305393

/-! ## A305393.P604937349693812744

`A001221(Δ[A003146(n+1)])`
-/

namespace A305393.P604937349693812744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A305393.P604937349693812744

namespace A305393

/-- `A001221(Δ[A003146(n+1)])` -/
def P604937349693812744.Spec : Prop :=
  ∀ n, P604937349693812744.a n = A305393 (n + 1)

end A305393

/-! ## A305393.P5111048469759333556

`A001222(Δ[A278040(n)]+1)`
-/

namespace A305393.P5111048469759333556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n + 1).toNat

end

end A305393.P5111048469759333556

namespace A305393

/-- `A001222(Δ[A278040(n)]+1)` -/
def P5111048469759333556.Spec : Prop :=
  ∀ n, P5111048469759333556.a n = A305393 (n + 1)

end A305393

/-! ## A305393.P14992899525308957275

`A007318(Δ[A278040(n)]+1)`
-/

namespace A305393.P14992899525308957275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (f1 (n + 1) - f1 n + 1).toNat

end

end A305393.P14992899525308957275

namespace A305393

/-- `A007318(Δ[A278040(n)]+1)` -/
def P14992899525308957275.Spec : Prop :=
  ∀ n, P14992899525308957275.a n = A305393 (n + 1)

end A305393

/-! ## A305393.P8210014663901461509

`A006530(Δ[A278040(n)])-1`
-/

namespace A305393.P8210014663901461509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat - 1

end

end A305393.P8210014663901461509

namespace A305393

/-- `A006530(Δ[A278040(n)])-1` -/
def P8210014663901461509.Spec : Prop :=
  ∀ n, P8210014663901461509.a n = A305393 (n + 1)

end A305393

/-! ## A305393.P2277761135259480033

`A214180(Δ[A278040(n)]-1)`
-/

namespace A305393.P2277761135259480033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214180 (f1 (n + 1) - f1 n - 1).toNat

end

end A305393.P2277761135259480033

namespace A305393

/-- `A214180(Δ[A278040(n)]-1)` -/
def P2277761135259480033.Spec : Prop :=
  ∀ n, P2277761135259480033.a n = A305393 (n + 1)

end A305393

/-!
# A305394: First differences of A140103.

The programs for A305394, the canonical program `A305394.P7573966376097710886` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305394 has offset 1).

The definition of A305394 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140103, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A305394.P7573966376097710886

`A140103(n+2)-A140103(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A305394

/-- `A140103(n+2)-A140103(n+1)` -/
def P7573966376097710886.Spec : Prop :=
  ∀ n, P7573966376097710886.a n = A305394 (n + 1)

theorem P7573966376097710886.correct : P7573966376097710886.Spec := by
  intro n
  simp only [A305394, Nat.add_sub_cancel]

end A305394

/-! ## A305394.P2707427017215629171

`A317198(n)+4`
-/

namespace A305394.P2707427017215629171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317198 n + 4

end

end A305394.P2707427017215629171

namespace A305394

/-- `A317198(n)+4` -/
def P2707427017215629171.Spec : Prop :=
  ∀ n, P2707427017215629171.a n = A305394 (n + 1)

end A305394

/-! ## A305394.P8222323324681670342

`5-A080843(n)`
-/

namespace A305394.P8222323324681670342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A080843 n

end

end A305394.P8222323324681670342

namespace A305394

/-- `5-A080843(n)` -/
def P8222323324681670342.Spec : Prop :=
  ∀ n, P8222323324681670342.a n = A305394 (n + 1)

end A305394

/-! ## A305394.P10962673445621194406

`Δ[A140103(n+1)]`
-/

namespace A305394.P10962673445621194406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A305394.P10962673445621194406

namespace A305394

/-- `Δ[A140103(n+1)]` -/
def P10962673445621194406.Spec : Prop :=
  ∀ n, P10962673445621194406.a n = A305394 (n + 1)

theorem P10962673445621194406.correct : P10962673445621194406.Spec := by
  intro n
  simp only [A305394, Nat.add_sub_cancel, A305394.P10962673445621194406.f1, A305394.P10962673445621194406.a, A305394.P7573966376097710886.a, SequenceMachineLib.memo_apply]

end A305394

/-! ## A305394.P13204275510492191607

`Δ[A278040(n)]+1`
-/

namespace A305394.P13204275510492191607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A305394.P13204275510492191607

namespace A305394

/-- `Δ[A278040(n)]+1` -/
def P13204275510492191607.Spec : Prop :=
  ∀ n, P13204275510492191607.a n = A305394 (n + 1)

end A305394

/-! ## A305394.P1793930462506406926

`A276789(n+1)+1`
-/

namespace A305394.P1793930462506406926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276789 (n + 1) + 1

end

end A305394.P1793930462506406926

namespace A305394

/-- `A276789(n+1)+1` -/
def P1793930462506406926.Spec : Prop :=
  ∀ n, P1793930462506406926.a n = A305394 (n + 1)

end A305394

/-! ## A305394.P8647835906533052210

`6-A092782(n+1)`
-/

namespace A305394.P8647835906533052210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A092782 (n + 1)

end

end A305394.P8647835906533052210

namespace A305394

/-- `6-A092782(n+1)` -/
def P8647835906533052210.Spec : Prop :=
  ∀ n, P8647835906533052210.a n = A305394 (n + 1)

end A305394

/-! ## A305394.P4934941872007621724

`Δ[A003145(n+1)]+1`
-/

namespace A305394.P4934941872007621724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A305394.P4934941872007621724

namespace A305394

/-- `Δ[A003145(n+1)]+1` -/
def P4934941872007621724.Spec : Prop :=
  ∀ n, P4934941872007621724.a n = A305394 (n + 1)

end A305394

/-! ## A305394.P10256628814724809155

`floor(log2(A275925(n+2)²))`
-/

namespace A305394.P10256628814724809155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A275925 (n + 2) ^ 2).toNat

end

end A305394.P10256628814724809155

namespace A305394

/-- `floor(log2(A275925(n+2)²))` -/
def P10256628814724809155.Spec : Prop :=
  ∀ n, (P10256628814724809155.a n : ℤ) = A305394 (n + 1)

end A305394

/-! ## A305394.P7451087612850083942

`round(log(2)*A276792(n+1))`
-/

namespace A305394.P7451087612850083942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (2 : ℝ) * (A276792 (n + 1) : ℝ))

end

end A305394.P7451087612850083942

namespace A305394

/-- `round(log(2)*A276792(n+1))` -/
def P7451087612850083942.Spec : Prop :=
  ∀ n, P7451087612850083942.a n = A305394 (n + 1)

end A305394

/-! ## A305394.P3559899211734255424

`5-(A317193(n+1)+2)%3`
-/

namespace A305394.P3559899211734255424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - Int.tmod (A317193 (n + 1) + 2) 3

end

end A305394.P3559899211734255424

namespace A305394

/-- `5-(A317193(n+1)+2)%3` -/
def P3559899211734255424.Spec : Prop :=
  ∀ n, P3559899211734255424.a n = A305394 (n + 1)

end A305394

/-! ## A305394.P7435200006701395526

`A164360(A356898(n))`
-/

namespace A305394.P7435200006701395526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164360 (A356898 n).toNat

end

end A305394.P7435200006701395526

namespace A305394

/-- `A164360(A356898(n))` -/
def P7435200006701395526.Spec : Prop :=
  ∀ n, P7435200006701395526.a n = A305394 (n + 1)

end A305394

/-! ## A305394.P1667162173494375568

`A164360(A278045(n+1))`
-/

namespace A305394.P1667162173494375568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164360 (A278045 (n + 1)).toNat

end

end A305394.P1667162173494375568

namespace A305394

/-- `A164360(A278045(n+1))` -/
def P1667162173494375568.Spec : Prop :=
  ∀ n, P1667162173494375568.a n = A305394 (n + 1)

end A305394

/-! ## A305394.P16507963684017718227

`A276796(Δ[A278041(n)]+1)`
-/

namespace A305394.P16507963684017718227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (f1 (n + 1) - f1 n + 1).toNat

end

end A305394.P16507963684017718227

namespace A305394

/-- `A276796(Δ[A278041(n)]+1)` -/
def P16507963684017718227.Spec : Prop :=
  ∀ n, P16507963684017718227.a n = A305394 (n + 1)

end A305394

/-! ## A305394.P4071628080818163238

`Δ[A278039(A278039(n))]+1`
-/

namespace A305394.P4071628080818163238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 (A278039 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A305394.P4071628080818163238

namespace A305394

/-- `Δ[A278039(A278039(n))]+1` -/
def P4071628080818163238.Spec : Prop :=
  ∀ n, P4071628080818163238.a n = A305394 (n + 1)

end A305394

/-! ## A305394.P3637378072123661041

`A278040(n+1)-A308199(n)`
-/

namespace A305394.P3637378072123661041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 (n + 1) - A308199 n

end

end A305394.P3637378072123661041

namespace A305394

/-- `A278040(n+1)-A308199(n)` -/
def P3637378072123661041.Spec : Prop :=
  ∀ n, P3637378072123661041.a n = A305394 (n + 1)

end A305394

/-! ## A305394.P13163965004526693621

`A003145(n+2)-A278040(n)`
-/

namespace A305394.P13163965004526693621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (n + 2) - A278040 n

end

end A305394.P13163965004526693621

namespace A305394

/-- `A003145(n+2)-A278040(n)` -/
def P13163965004526693621.Spec : Prop :=
  ∀ n, P13163965004526693621.a n = A305394 (n + 1)

end A305394

/-! ## A305394.P13817484916518160922

`A305392(n+1)+A305374(n+1)`
-/

namespace A305394.P13817484916518160922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305392 (n + 1) + A305374 (n + 1)

end

end A305394.P13817484916518160922

namespace A305394

/-- `A305392(n+1)+A305374(n+1)` -/
def P13817484916518160922.Spec : Prop :=
  ∀ n, P13817484916518160922.a n = A305394 (n + 1)

end A305394

/-! ## A305394.P17466179612736349508

`A276792(n+1)-A276788(n+1)`
-/

namespace A305394.P17466179612736349508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276792 (n + 1) - A276788 (n + 1)

end

end A305394.P17466179612736349508

namespace A305394

/-- `A276792(n+1)-A276788(n+1)` -/
def P17466179612736349508.Spec : Prop :=
  ∀ n, P17466179612736349508.a n = A305394 (n + 1)

end A305394

/-! ## A305394.P18128667315693409071

`A276788(n+1)+A305392(n+1)+1`
-/

namespace A305394.P18128667315693409071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276788 (n + 1) + (A305392 (n + 1) + 1)

end

end A305394.P18128667315693409071

namespace A305394

/-- `A276788(n+1)+A305392(n+1)+1` -/
def P18128667315693409071.Spec : Prop :=
  ∀ n, P18128667315693409071.a n = A305394 (n + 1)

end A305394

/-!
# A305395: Records in A073053 starting from a(1).

The programs for A305395, there is no canonical definition to state claims against.
-/

/-! ## A305395.P8395910026421331961

`record[A073053(abs(1-n))]`
-/

namespace A305395.P8395910026421331961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073053 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305395.P8395910026421331961

/-!
# A305396: Records in A171797 starting from a(1).

The programs for A305396, there is no canonical definition to state claims against.
-/

/-! ## A305396.P4664945453955057620

`∩[A197652(n+1), A290725(n+1)]`
-/

namespace A305396.P4664945453955057620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305396.P4664945453955057620

/-! ## A305396.P651020943214046341

`record[A171797(abs(1-n))]`
-/

namespace A305396.P651020943214046341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171797 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305396.P651020943214046341

/-! ## A305396.P7456967688228201404

`A171797(∑[10^floor(n/2)])`
-/

namespace A305396.P7456967688228201404
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171797 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A305396.P7456967688228201404

/-! ## A305396.P17229502104384745805

`sqrt(record[A171797(3*n+1)²])`
-/

namespace A305396.P17229502104384745805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171797 (3 * n + 1) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A305396.P17229502104384745805

/-! ## A305396.P8289911890732107440

`record[A185014(n)+A171797(3*n+1)]`
-/

namespace A305396.P8289911890732107440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185014 n + A171797 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305396.P8289911890732107440

