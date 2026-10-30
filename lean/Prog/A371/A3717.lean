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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

/-!
# A371700: G.f. satisfies A(x) = 1 + x * A(x)^6 * (1 + A(x)).

The programs for A371700, the canonical program `A371700.P6102949280676446291` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371700 has offset 0).

The definition of A371700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A371700.P6102949280676446291

`∑{#}[n, C(n, #)*C(6*n+#+1, n)/(6*n+#+1)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371700

/-- `∑{#}[n, C(n, #)*C(6*n+#+1, n)/(6*n+#+1)]` -/
def P6102949280676446291.Spec : Prop :=
  ∀ n, P6102949280676446291.a n = (A371700 n : ℚ)

end A371700

/-! ## A371700.P16389294806878050860

`A336534(eq[6, A345117(n+1)])`
-/

namespace A371700.P16389294806878050860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A371700.P16389294806878050860

namespace A371700

/-- `A336534(eq[6, A345117(n+1)])` -/
def P16389294806878050860.Spec : Prop :=
  ∀ n, P16389294806878050860.a n = A371700 n

end A371700

/-!
# A371701: a(n) is the least positive k such that Product_{i=1..k} 1 / (1 - 1/(2*i+1)) >= n.

The programs for A371701, there is no canonical definition to state claims against.
-/

/-! ## A371701.P13264012317937410403

`A057428(n)+A008621(A135039(n))`
-/

namespace A371701.P13264012317937410403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A008621 (A135039 n).toNat

end

end A371701.P13264012317937410403

/-! ## A371701.P13152391036720206098

`A008621(A135039(n))-A057427(n)`
-/

namespace A371701.P13152391036720206098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A135039 n).toNat - A057427 n

end

end A371701.P13152391036720206098

/-! ## A371701.P8650448122706774895

`A057428(n)+A008621(A121381(n²))`
-/

namespace A371701.P8650448122706774895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A008621 (A121381 (n ^ 2)).toNat

end

end A371701.P8650448122706774895

/-! ## A371701.P196420565316660593

`A008621(A121381(n²))-A057427(n)`
-/

namespace A371701.P196420565316660593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A121381 (n ^ 2)).toNat - A057427 n

end

end A371701.P196420565316660593

/-! ## A371701.P17759250833831460489

`A057428(n)+A008621(A178334(n)+A022844(n²))`
-/

namespace A371701.P17759250833831460489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A008621 (A178334 n + A022844 (n ^ 2)).toNat

end

end A371701.P17759250833831460489

/-! ## A371701.P13806828287658693586

`A008621(A178334(n)+A022844(n²))-A057427(n)`
-/

namespace A371701.P13806828287658693586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A178334 n + A022844 (n ^ 2)).toNat - A057427 n

end

end A371701.P13806828287658693586

/-! ## A371701.P5514649317387209919

`A057428(n)+A008621(A157928(n+1)+A022844(n²))`
-/

namespace A371701.P5514649317387209919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A008621 (A157928 (n + 1) + A022844 (n ^ 2)).toNat

end

end A371701.P5514649317387209919

/-! ## A371701.P7016218055311432273

`A008621(A157928(n+1)+A022844(n²))-A057427(n)`
-/

namespace A371701.P7016218055311432273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A157928 (n + 1) + A022844 (n ^ 2)).toNat - A057427 n

end

end A371701.P7016218055311432273

/-! ## A371701.P12175611345617977298

`A008621(A066643(n)+(n-A014681(n))²)-A057427(n)`
-/

namespace A371701.P12175611345617977298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A066643 n + ((n : ℤ) - A014681 n) ^ 2).toNat - A057427 n

end

end A371701.P12175611345617977298

/-!
# A371702: a(n) is the least positive k such that Product_{i=1..k} (1 + 1/(2*i-1)) >= n.

The programs for A371702, there is no canonical definition to state claims against.
-/

/-! ## A371702.P3042737327096304766

`A358227(A348705(2*n+1))+A032616(n)`
-/

namespace A371702.P3042737327096304766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358227 (A348705 (2 * n + 1)).toNat + A032616 n

end

end A371702.P3042737327096304766

/-! ## A371702.P16870139942914857580

`A071521(A132780(n+1))`
-/

namespace A371702.P16870139942914857580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (A132780 (n + 1)).toNat

end

end A371702.P16870139942914857580

/-! ## A371702.P14098614572531227429

`A000196(A299120(n)+A008337(n))`
-/

namespace A371702.P14098614572531227429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A299120 n + A008337 n).toNat

end

end A371702.P14098614572531227429

/-! ## A371702.P7509909984110049154

`round(sqrt(A060384((n^4+n²)/2)))`
-/

namespace A371702.P7509909984110049154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A060384 (SequenceMachineLib.roundAway ((n ^ 4 + n ^ 2 : ℚ) / 2)).toNat : ℝ))

end

end A371702.P7509909984110049154

/-! ## A371702.P9728850099350258916

`A280814(A212342(n))`
-/

namespace A371702.P9728850099350258916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280814 (A212342 n).toNat

end

end A371702.P9728850099350258916

/-!
# A371704: Heights at which a Minecraft boat-drop will break up.

The programs for A371704, the canonical program `A371704.P4300638849194654958` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371704 has offset 1).

The definition of A371704 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A371704.P4300638849194654958

`(50*(n+1)²+50*(n+1)+23-23*(-1)^(n+1)*(1+2*(n+1)))/16`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371704

/-- `(50*(n+1)²+50*(n+1)+23-23*(-1)^(n+1)*(1+2*(n+1)))/16` -/
def P4300638849194654958.Spec : Prop :=
  ∀ n, P4300638849194654958.a n = (A371704 (n + 1) : ℚ)

end A371704

/-! ## A371704.P10986088758449537193

`A154292(n+1)+A008795(n)`
-/

namespace A371704.P10986088758449537193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154292 (n + 1) + A008795 n

end

end A371704.P10986088758449537193

namespace A371704

/-- `A154292(n+1)+A008795(n)` -/
def P10986088758449537193.Spec : Prop :=
  ∀ n, P10986088758449537193.a n = A371704 (n + 1)

end A371704

/-! ## A371704.P4274408749289409872

`A222964(n+2)-A316725(n+1)`
-/

namespace A371704.P4274408749289409872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222964 (n + 2) - A316725 (n + 1)

end

end A371704.P4274408749289409872

namespace A371704

/-- `A222964(n+2)-A316725(n+1)` -/
def P4274408749289409872.Spec : Prop :=
  ∀ n, P4274408749289409872.a n = A371704 (n + 1)

end A371704

/-! ## A371704.P1306005383089860204

`A157716(n+2)-A057570(n+2)`
-/

namespace A371704.P1306005383089860204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157716 (n + 2) - A057570 (n + 2)

end

end A371704.P1306005383089860204

namespace A371704

/-- `A157716(n+2)-A057570(n+2)` -/
def P1306005383089860204.Spec : Prop :=
  ∀ n, P1306005383089860204.a n = A371704 (n + 1)

end A371704

/-! ## A371704.P13170732144673233829

`A154292(n+1)+A074378(n+1)-A274830(n+2)`
-/

namespace A371704.P13170732144673233829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154292 (n + 1) + A074378 (n + 1) - A274830 (n + 2)

end

end A371704.P13170732144673233829

namespace A371704

/-- `A154292(n+1)+A074378(n+1)-A274830(n+2)` -/
def P13170732144673233829.Spec : Prop :=
  ∀ n, P13170732144673233829.a n = A371704 (n + 1)

end A371704

/-!
# A371705: Number of Dyck paths of semilength n such that neighboring peaks have different heights.

The programs for A371705, there is no canonical definition to state claims against.
-/

/-! ## A371705.P8537871673132850201

`A359043(A174613(n))+A019497(n)`
-/

namespace A371705.P8537871673132850201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359043 (A174613 n).toNat + A019497 n

end

end A371705.P8537871673132850201

/-! ## A371705.P12178459525128656745

`A371594(A000571(n))`
-/

namespace A371705.P12178459525128656745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371594 (A000571 n).toNat

end

end A371705.P12178459525128656745

/-! ## A371705.P15352752389229043301

`A371594(A035053(n))`
-/

namespace A371705.P15352752389229043301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371594 (A035053 n).toNat

end

end A371705.P15352752389229043301

/-! ## A371705.P4739950455270297911

`A371594(A237770(n))`
-/

namespace A371705.P4739950455270297911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371594 (A237770 n).toNat

end

end A371705.P4739950455270297911

/-!
# A371708: Expansion of g.f. A(x) satisfying A( x*A(x - x^2) ) = x^2.

The programs for A371708, there is no canonical definition to state claims against.
-/

/-! ## A371708.P7072248378370628412

`ceil((A325549(3*n+2)+1)/30)`
-/

namespace A371708.P7072248378370628412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A325549 (3 * n + 2) + 1 : ℚ) / 30⌉

end

end A371708.P7072248378370628412

/-! ## A371708.P795440287152296829

`A054404(A356783(n)+1)`
-/

namespace A371708.P795440287152296829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A356783 n + 1).toNat

end

end A371708.P795440287152296829

/-! ## A371708.P2709143290778159323

`A001462(A054091(n))-n`
-/

namespace A371708.P2709143290778159323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A054091 n).toNat - (n : ℤ)

end

end A371708.P2709143290778159323

/-! ## A371708.P18022992782151393196

`A087836(A066453(n+1)+2)`
-/

namespace A371708.P18022992782151393196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087836 (A066453 (n + 1) + 2).toNat

end

end A371708.P18022992782151393196

/-!
# A371709: Expansion of g.f. A(x) satisfying A( x*A(x)^2 + x*A(x)^3 ) = A(x)^3.

The programs for A371709, there is no canonical definition to state claims against.
-/

/-! ## A371709.P10774457714700518706

`A198951(n)+A188187(floor(3^(n-1))+1)`
-/

namespace A371709.P10774457714700518706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198951 n + A188187 (⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1).toNat

end

end A371709.P10774457714700518706

/-! ## A371709.P3582844146600332474

`A198951(n)+A025456(A123044(n))`
-/

namespace A371709.P3582844146600332474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198951 n + A025456 (A123044 (n + 21)).toNat

end

end A371709.P3582844146600332474

/-! ## A371709.P12061243074816977900

`A221836(A000032(n))+A198951(n)`
-/

namespace A371709.P12061243074816977900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221836 (A000032 n).toNat + A198951 n

end

end A371709.P12061243074816977900

/-! ## A371709.P17008817295302287547

`A198951(n)+A024326(A317129(n))`
-/

namespace A371709.P17008817295302287547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198951 n + A024326 (A317129 n).toNat

end

end A371709.P17008817295302287547

/-! ## A371709.P14219357388534825861

`A351539(A000110(n))+A198951(n)`
-/

namespace A371709.P14219357388534825861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351539 (A000110 n).toNat + A198951 n

end

end A371709.P14219357388534825861

/-!
# A371710: Expansion of e.g.f. A(x) satisfying Sum_{n>=0} (A(x)^n - x)^n / n! = 1.

The programs for A371710, there is no canonical definition to state claims against.
-/

/-! ## A371710.P18305270017885519880

`A000034(A001813(n))-A013703(n)`
-/

namespace A371710.P18305270017885519880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A001813 n).toNat - A013703 n

end

end A371710.P18305270017885519880

/-!
# A371712: Expansion of g.f. A(x) satisfying A( 2*x^2/(1-2*x)^2 ) = 2*A(x)^2.

The programs for A371712, there is no canonical definition to state claims against.
-/

/-! ## A371712.P13477490179934876894

`A005843(A071356(n))-A000984(n)`
-/

namespace A371712.P13477490179934876894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A071356 n).toNat - A000984 n

end

end A371712.P13477490179934876894

/-! ## A371712.P8454299643110203778

`A109081(n+1)*A175077(5^∑{e}[n+1, #])`
-/

namespace A371712.P8454299643110203778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109081 (n + 1) * A175077 (5 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A371712.P8454299643110203778

/-! ## A371712.P4291380430249932213

`A020639(A002110(n))*A109081(n+1)`
-/

namespace A371712.P4291380430249932213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002110 n).toNat * A109081 (n + 1)

end

end A371712.P4291380430249932213

/-!
# A371713: Expansion of g.f. A(x) satisfying A(x)^2 = A( A(x)*(x + A(x)^2) ).

The programs for A371713, there is no canonical definition to state claims against.
-/

/-! ## A371713.P11345647847412654871

`or(A049761(n+1), A063022(A032557(n+1)))`
-/

namespace A371713.P11345647847412654871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049761 (n + 1)) (A063022 (A032557 (n + 1)).toNat)

end

end A371713.P11345647847412654871

/-! ## A371713.P11606792147559840211

`A000026(A063022(n+1))`
-/

namespace A371713.P11606792147559840211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A063022 (n + 1)).toNat

end

end A371713.P11606792147559840211

/-! ## A371713.P10041030318034811470

`A063022(A037336(n+1))`
-/

namespace A371713.P10041030318034811470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063022 (A037336 (n + 1)).toNat

end

end A371713.P10041030318034811470

/-! ## A371713.P13588680198919457274

`A063022(A037443(n+1))`
-/

namespace A371713.P13588680198919457274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063022 (A037443 (n + 1)).toNat

end

end A371713.P13588680198919457274

/-!
# A371714: Expansion of g.f. A(x) satisfying A( x^3*A(x) - x^3*A(x)^2 ) = x^4.

The programs for A371714, there is no canonical definition to state claims against.
-/

/-! ## A371714.P17194736925269101455

`A008617(A289780(n)+A060192(n))`
-/

namespace A371714.P17194736925269101455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A289780 n + A060192 n).toNat

end

end A371714.P17194736925269101455

/-! ## A371714.P17768999838146593201

`A293114(n)-A157685(A011782(n))`
-/

namespace A371714.P17768999838146593201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293114 n - A157685 (A011782 n).toNat

end

end A371714.P17768999838146593201

/-! ## A371714.P15423584204319721055

`A106432(A149918(n))`
-/

namespace A371714.P15423584204319721055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A149918 n).toNat

end

end A371714.P15423584204319721055

/-!
# A371715: G.f. A(x) = Sum_{n>=0} a(n)*x^n where a(n) = Sum_{k=0..n} ( [x^k] A(2*x)^(n+1) (mod 2^(n+1)) ) for n >= 0 with a(0) = 1.

The programs for A371715, there is no canonical definition to state claims against.
-/

/-! ## A371715.P4035647334568787034

`A342782(A001255(n))`
-/

namespace A371715.P4035647334568787034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342782 (A001255 n).toNat

end

end A371715.P4035647334568787034

/-! ## A371715.P1556777113372548776

`A342782(A000041(n)²)`
-/

namespace A371715.P1556777113372548776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342782 (A000041 n ^ 2).toNat

end

end A371715.P1556777113372548776

/-!
# A371716: Expansion of g.f. A(x) satisfies A( x*A(x)^3 + x*A(x)^4 ) = A(x)^4.

The programs for A371716, there is no canonical definition to state claims against.
-/

/-! ## A371716.P18392015730455147435

`A369444(n)+A025426(A060628(n))`
-/

namespace A371716.P18392015730455147435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369444 n + A025426 (A060628 n).toNat

end

end A371716.P18392015730455147435

/-! ## A371716.P7265592202310994075

`A369444(n)%(A340747(3*(n+1))+1)²`
-/

namespace A371716.P7265592202310994075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369444 n) ((A340747 (3 * (n + 1)) + 1) ^ 2)

end

end A371716.P7265592202310994075

/-! ## A371716.P7931620262310799207

`A369444(n)+A007814(A001644(n))`
-/

namespace A371716.P7931620262310799207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369444 n + A007814 (A001644 n).toNat

end

end A371716.P7931620262310799207

/-! ## A371716.P17174239610405257936

`A369444(n)+A007814(A006723(n))`
-/

namespace A371716.P17174239610405257936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369444 n + A007814 (A006723 n).toNat

end

end A371716.P17174239610405257936

/-! ## A371716.P10489792951355928014

`A369444(n)+A037800(A060818(n))`
-/

namespace A371716.P10489792951355928014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369444 n + A037800 (A060818 n).toNat

end

end A371716.P10489792951355928014

/-!
# A371717: Number of balanced inequivalent monotone Boolean functions of n or fewer variables.

The programs for A371717, there is no canonical definition to state claims against.
-/

/-! ## A371717.P13528258382016378712

`∑[A371718(n+1)]`
-/

namespace A371717.P13528258382016378712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371717.P13528258382016378712

/-! ## A371717.P7153868986287827110

`A194676(A124766(n)+A002293(n))`
-/

namespace A371717.P7153868986287827110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194676 (A124766 n + A002293 n).toNat

end

end A371717.P7153868986287827110

/-!
# A371718: Number of balanced inequivalent nondegenerate monotone Boolean functions of n or fewer variables.

The programs for A371718, there is no canonical definition to state claims against.
-/

/-! ## A371718.P17377682720958575583

`A122896(∑[A267099(n+1)^A242527(n+1)])`
-/

namespace A371718.P17377682720958575583
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267099 (n + 1) : ℚ) ^ (A242527 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122896 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A371718.P17377682720958575583

/-!
# A371719: Number of length-n strongly factor-symmetric binary words.

The programs for A371719, there is no canonical definition to state claims against.
-/

/-! ## A371719.P8642916012534397388

`∩[A164875(n+1), A342522(n+1)]`
-/

namespace A371719.P8642916012534397388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371719.P8642916012534397388

/-! ## A371719.P17135848616068619196

`∑[A000005(A149523(n))]`
-/

namespace A371719.P17135848616068619196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A149523 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371719.P17135848616068619196

/-! ## A371719.P11663354365764459171

`A352512(A086626(3*n))+A031878(n+1)`
-/

namespace A371719.P11663354365764459171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352512 (A086626 (3 * n)).toNat + A031878 (n + 1)

end

end A371719.P11663354365764459171

/-! ## A371719.P10254007539881540481

`∑[A000005(A389153(n))]`
-/

namespace A371719.P10254007539881540481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A389153 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371719.P10254007539881540481

/-! ## A371719.P3866737481804248217

`∑[A001227(∑[A012821(n)])]`
-/

namespace A371719.P3866737481804248217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012821 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371719.P3866737481804248217

/-!
# A371722: Number of balanced nondegenerate monotone Boolean functions of n or fewer variables.

The programs for A371722, there is no canonical definition to state claims against.
-/

/-! ## A371722.P5747378131826125318

`A373697(n)/2^n`
-/

namespace A371722.P5747378131826125318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373697 n : ℚ) / (2 ^ n : ℚ)

end

end A371722.P5747378131826125318

/-! ## A371722.P3117343848829540207

`floor(A373697(n)/A000079(n))`
-/

namespace A371722.P3117343848829540207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A373697 n : ℚ) / (A000079 n : ℚ)⌋

end

end A371722.P3117343848829540207

/-!
# A371723: G.f. satisfies A(x) = ( 1 + x * A(x)^(1/4) * (1 + A(x)^(5/4)) )^2.

The programs for A371723, there is no canonical definition to state claims against.
-/

/-! ## A371723.P13609335600659510171

`∑{#}[n, A370471(#)*A370471(n-#)]`
-/

namespace A371723.P13609335600659510171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A370471 k * A370471 (n - k)

end

end A371723.P13609335600659510171

/-!
# A371724: G.f. satisfies A(x) = ( 1 + x * A(x)^(1/3) * (1 + A(x)) )^(3/2).

The programs for A371724, there is no canonical definition to state claims against.
-/

/-! ## A371724.P7813027072585698866

`A262441(n)+Δ[A106228(n)]`
-/

namespace A371724.P7813027072585698866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106228 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262441 n + (f1 (n + 1) - f1 n)

end

end A371724.P7813027072585698866

/-! ## A371724.P1416840740834245557

`A262441(n)-Δ[A106228(n)]*A057428(n)`
-/

namespace A371724.P1416840740834245557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106228 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262441 n - (f1 (n + 1) - f1 n) * A057428 n

end

end A371724.P1416840740834245557

/-! ## A371724.P10111785764467827413

`A106228(n+1)+A262441(n)-A106228(n)`
-/

namespace A371724.P10111785764467827413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106228 (n + 1) + (A262441 n - A106228 n)

end

end A371724.P10111785764467827413

/-! ## A371724.P15766051815755827606

`A262441(n)+A370891(n)-A109081(n+2)`
-/

namespace A371724.P15766051815755827606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262441 n + (A370891 n - A109081 (n + 2))

end

end A371724.P15766051815755827606

/-!
# A371725: G.f. satisfies A(x) = ( 1 + x * A(x)^(1/5) * (1 + A(x)) )^(5/2).

The programs for A371725, there is no canonical definition to state claims against.
-/

/-! ## A371725.P1914826832295612797

`A065033(∑[∑[C(n+2, 4)+1]]²)`
-/

namespace A371725.P1914826832295612797
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 4 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A371725.P1914826832295612797

/-!
# A371726: Number of Dyck paths of semilength n such that neighboring peaks differ in height by at most one and first and last peak are at height one.

The programs for A371726, there is no canonical definition to state claims against.
-/

/-! ## A371726.P8595132098552952629

`A347243(2*a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A371726.P8595132098552952629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A347243 (2 * a (n - 1)).toNat

end

end A371726.P8595132098552952629

/-! ## A371726.P14826487325049544727

`A120401(A368346(n)+1)`
-/

namespace A371726.P14826487325049544727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120401 (A368346 n + 1).toNat

end

end A371726.P14826487325049544727

/-! ## A371726.P17692613089499135546

`A347243(A308031(n+2))`
-/

namespace A371726.P17692613089499135546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347243 (A308031 (n + 2)).toNat

end

end A371726.P17692613089499135546

/-! ## A371726.P7545036519267579263

`A342522(A275074(n+4))`
-/

namespace A371726.P7545036519267579263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342522 (A275074 (n + 4)).toNat

end

end A371726.P7545036519267579263

/-! ## A371726.P8309227888643741598

`A359536(A358453(n+1)-1)`
-/

namespace A371726.P8309227888643741598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359536 (A358453 (n + 1) - 1).toNat

end

end A371726.P8309227888643741598

/-!
# A371728: a(n) is the largest number that is the digit sum of an n-digit square number.

The programs for A371728, there is no canonical definition to state claims against.
-/

/-! ## A371728.P8500394085717182613

`∑{digits}[A379298(n+1)², #]`
-/

namespace A371728.P8500394085717182613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379298 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A371728.P8500394085717182613

/-! ## A371728.P16188661502703384991

`∑{digits}[A379298(n+1)^A273915(A273915(n)), #]`
-/

namespace A371728.P16188661502703384991
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379298 (n + 1) : ℚ) ^ (A273915 (A273915 n).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A371728.P16188661502703384991

/-! ## A371728.P2377883730020778409

`∑{digits}[A069665(n+1), #]`
-/

namespace A371728.P2377883730020778409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069665 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A371728.P2377883730020778409

/-! ## A371728.P9517289044003210592

`∑{digits}[A069666(n+1), #]`
-/

namespace A371728.P9517289044003210592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069666 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A371728.P9517289044003210592

/-!
# A371729: The number of pseudoprimes to base n that are smaller than n.

The programs for A371729, there is no canonical definition to state claims against.
-/

/-! ## A371729.P9876821825938082373

`A186437(A289079(n+1))`
-/

namespace A371729.P9876821825938082373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186437 (A289079 (n + 1)).toNat

end

end A371729.P9876821825938082373

/-! ## A371729.P728798375702869115

`∑{e}[A327766(A071364(n+1)), #]`
-/

namespace A371729.P728798375702869115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327766 (A071364 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A371729.P728798375702869115

/-! ## A371729.P8441158971997119573

`A001055(n+1)-A212793(A000285(n))`
-/

namespace A371729.P8441158971997119573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A212793 (A000285 n).toNat

end

end A371729.P8441158971997119573

/-! ## A371729.P963898628959913997

`A001055(n+1)-A168181(A050342(n))`
-/

namespace A371729.P963898628959913997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A168181 (A050342 n).toNat

end

end A371729.P963898628959913997

/-! ## A371729.P6127732030481741997

`A001055(n+1)-A351703(A098568(n))`
-/

namespace A371729.P6127732030481741997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A351703 (A098568 n).toNat

end

end A371729.P6127732030481741997

/-!
# A371730: Indices of records in A371729: numbers k with A371729(k) > A371729(m) for all m < k.

The programs for A371730, there is no canonical definition to state claims against.
-/

/-! ## A371730.P15180010016590865306

`A319916(record[A350419(n+1)])`
-/

namespace A371730.P15180010016590865306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319916 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A371730.P15180010016590865306

/-! ## A371730.P12023632097223650809

`∑[A000005(A026529(n+2)+1)]`
-/

namespace A371730.P12023632097223650809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A026529 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371730.P12023632097223650809

/-! ## A371730.P2560265355390215605

`record[A183162(2*A003958(n+1))]`
-/

namespace A371730.P2560265355390215605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183162 (2 * A003958 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371730.P2560265355390215605

/-! ## A371730.P3708497583376635491

`record[A034699(A353847(2*n+3))]`
-/

namespace A371730.P3708497583376635491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A353847 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371730.P3708497583376635491

/-! ## A371730.P789297220813632417

`∩[A325395(n+2), record[A353847(n)]]`
-/

namespace A371730.P789297220813632417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325395 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353847 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371730.P789297220813632417

/-!
# A371731: Heinz numbers of non-biquanimous integer partitions. Numbers without a divisor having the same sum of prime indices as the quotient.

The programs for A371731, there is no canonical definition to state claims against.
-/

/-! ## A371731.P15239744693809812176

`eq[0, A357879(n+1)]+1`
-/

namespace A371731.P15239744693809812176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A371731.P15239744693809812176

/-! ## A371731.P12888307829683914967

`comp[∪[A357976(n+1), n²]]`
-/

namespace A371731.P12888307829683914967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357976 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A371731.P12888307829683914967

/-! ## A371731.P4850061005246738514

`lt[A299701(n+1)%2, 1]+1`
-/

namespace A371731.P4850061005246738514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299701 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A371731.P4850061005246738514

/-! ## A371731.P7701833709527005221

`lt[gcd(2, A304793(n+1)), 2]+1`
-/

namespace A371731.P7701833709527005221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A304793 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A371731.P7701833709527005221

/-! ## A371731.P8074428032070683168

`eq[0, A357879(A028310(n))]`
-/

namespace A371731.P8074428032070683168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357879 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A371731.P8074428032070683168

/-! ## A371731.P17620353889542466792

`eq[char[A357976(n+1)], A000122(n)]`
-/

namespace A371731.P17620353889542466792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357976 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A371731.P17620353889542466792

/-! ## A371731.P12784771280365852769

`comp[A357976(A032742(n+1))-1]+1`
-/

namespace A371731.P12784771280365852769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357976 (A032742 (n + 1)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A371731.P12784771280365852769

/-! ## A371731.P17408233373449120161

`comp[∪[A164997(n+1), A357976(n+1)]]`
-/

namespace A371731.P17408233373449120161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164997 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357976 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A371731.P17408233373449120161

/-! ## A371731.P14212856613104082574

`eq[0, A324848(A299701(n+1)+1)]+1`
-/

namespace A371731.P14212856613104082574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324848 (A299701 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A371731.P14212856613104082574

/-! ## A371731.P15907576108205743388

`comp[A357976(n+1)%A046000(3*n+2)]`
-/

namespace A371731.P15907576108205743388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357976 (n + 1)) (A046000 (3 * n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A371731.P15907576108205743388

/-!
# A371732: Numbers n such that each binary index k (from row n of A048793) has the same sum of binary indices A029931(k).

The programs for A371732, there is no canonical definition to state claims against.
-/

/-! ## A371732.P5170866835899388256

`A102443(A368507(n+1))`
-/

namespace A371732.P5170866835899388256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102443 (A368507 (n + 1)).toNat

end

end A371732.P5170866835899388256

/-!
# A371733: Maximal length of a factorization of n into factors > 1 all having the same sum of prime indices.

The programs for A371733, there is no canonical definition to state claims against.
-/

/-! ## A371733.P3895140095567063209

`A357137(A322993(n+1)-A024155(2*(n+1)))`
-/

namespace A371733.P3895140095567063209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357137 (A322993 (n + 1) - A024155 (2 * (n + 1))).toNat

end

end A371733.P3895140095567063209

/-! ## A371733.P17369365859644303544

`gcd(A067029(n+1), A186745(n))`
-/

namespace A371733.P17369365859644303544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067029 (n + 1)) (A186745 n)

end

end A371733.P17369365859644303544

/-! ## A371733.P5247748615260259580

`gcd(A033665(A091150(n)), A088388(n+1))`
-/

namespace A371733.P5247748615260259580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033665 (A091150 n).toNat) (A088388 (n + 1))

end

end A371733.P5247748615260259580

/-! ## A371733.P1296107897746323520

`C(A362333(n+1), A333330(A084938(n)))`
-/

namespace A371733.P1296107897746323520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A362333 (n + 1)).toNat (A333330 (A084938 n).toNat).toNat

end

end A371733.P1296107897746323520

/-! ## A371733.P11908397361957990323

`A359162(A163943(n)+1)+A052409(n+1)`
-/

namespace A371733.P11908397361957990323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359162 (A163943 n + 1).toNat + A052409 (n + 1)

end

end A371733.P11908397361957990323

/-!
# A371734: Maximal length of a factorization of n into factors > 1 all having different sums of prime indices.

The programs for A371734, there is no canonical definition to state claims against.
-/

/-! ## A371734.P16890486290184259974

`A003215(A302406(n+3))%2*A003056(A304793(n+1))`
-/

namespace A371734.P16890486290184259974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003215 (A302406 (n + 3)).toNat) 2 * A003056 (A304793 (n + 1)).toNat

end

end A371734.P16890486290184259974

/-! ## A371734.P16239601741660717560

`A003215(A370762(n))%2*A003056(A304793(n+1))`
-/

namespace A371734.P16239601741660717560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003215 (A370762 n).toNat) 2 * A003056 (A304793 (n + 1)).toNat

end

end A371734.P16239601741660717560

/-! ## A371734.P6929510454763712840

`A003056(A304793(n+1))%A114043(A353715(n))`
-/

namespace A371734.P6929510454763712840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (A304793 (n + 1)).toNat) (A114043 (A353715 n).toNat)

end

end A371734.P6929510454763712840

/-! ## A371734.P6427807275036644388

`A003215(A028982(n+1))%2*A003056(A304793(n+1))`
-/

namespace A371734.P6427807275036644388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003215 (A028982 (n + 1)).toNat) 2 * A003056 (A304793 (n + 1)).toNat

end

end A371734.P6427807275036644388

/-! ## A371734.P6800813651209160727

`A003056(A304793(n+1)%A203321(n+1))`
-/

namespace A371734.P6800813651209160727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A304793 (n + 1)) (A203321 (n + 1))).toNat

end

end A371734.P6800813651209160727

/-! ## A371734.P448035766580463720

`A003056(A304793(n+1)%A308251(n))`
-/

namespace A371734.P448035766580463720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A304793 (n + 1)) (A308251 n)).toNat

end

end A371734.P448035766580463720

/-! ## A371734.P8266617280700829232

`A051204(round(sqrt(A133911(n+1)+2)))`
-/

namespace A371734.P8266617280700829232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051204 (SequenceMachineLib.roundAway (Real.sqrt (A133911 (n + 1) + 2 : ℝ))).toNat

end

end A371734.P8266617280700829232

/-! ## A371734.P1550161604459515656

`A230252(round(sqrt(A133911(n+1)+2)))`
-/

namespace A371734.P1550161604459515656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230252 (SequenceMachineLib.roundAway (Real.sqrt (A133911 (n + 1) + 2 : ℝ))).toNat

end

end A371734.P1550161604459515656

/-! ## A371734.P11476752265586841764

`A025770(A304793(n+1))%A239139(n+1)`
-/

namespace A371734.P11476752265586841764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025770 (A304793 (n + 1)).toNat) (A239139 (n + 1))

end

end A371734.P11476752265586841764

/-! ## A371734.P3262382621047089330

`∑{e}[A318953(n+1), #]`
-/

namespace A371734.P3262382621047089330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A371734.P3262382621047089330

/-!
# A371735: Maximal length of a set partition of the binary indices of n into blocks all having the same sum.

The programs for A371735, there is no canonical definition to state claims against.
-/

/-! ## A371735.P11967445871937390516

`A371733(A019565(n))`
-/

namespace A371735.P11967445871937390516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371733 (A019565 n).toNat

end

end A371735.P11967445871937390516

/-! ## A371735.P7243046904724777604

`A333381(A346702(n)%A270890(n+2))`
-/

namespace A371735.P7243046904724777604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (Int.tmod (A346702 n) (A270890 (n + 2))).toNat

end

end A371735.P7243046904724777604

/-! ## A371735.P14587245842240397824

`and(A336137(n), A362920(n))`
-/

namespace A371735.P14587245842240397824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A336137 n) (A362920 n)

end

end A371735.P14587245842240397824

/-! ## A371735.P10368584611303427916

`A057427(∑[n²])*A336137(n)`
-/

namespace A371735.P10368584611303427916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (∑ j ∈ Finset.range (n + 1), f1 j) * A336137 n

end

end A371735.P10368584611303427916

/-! ## A371735.P12867445784445521989

`A336137(n)-A010051(A283691(n+1))`
-/

namespace A371735.P12867445784445521989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336137 n - A010051 (A283691 (n + 1)).toNat

end

end A371735.P12867445784445521989

/-!
# A371736: Number of non-quanimous strict integer partitions of n, meaning no set partition with more than one block has all equal block-sums.

The programs for A371736, there is no canonical definition to state claims against.
-/

/-! ## A371736.P14904100209400071662

`A000009(n)-A371737(n)`
-/

namespace A371736.P14904100209400071662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A371737 n

end

end A371736.P14904100209400071662

/-! ## A371736.P11006065916906405881

`abs(A081360(n))-A371737(n)`
-/

namespace A371736.P11006065916906405881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A371737 n

end

end A371736.P11006065916906405881

/-! ## A371736.P8265415383790270873

`∑[A087897(n)]-A371737(n)`
-/

namespace A371736.P8265415383790270873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A371737 n

end

end A371736.P8265415383790270873

/-! ## A371736.P10221546340775204115

`A111133(n)+1-A371737(n)`
-/

namespace A371736.P10221546340775204115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + 1 - A371737 n

end

end A371736.P10221546340775204115

/-! ## A371736.P10261715007001567282

`A052839(n)-A057427(n)-A371737(n)`
-/

namespace A371736.P10261715007001567282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - A057427 n - A371737 n

end

end A371736.P10261715007001567282

/-!
# A371737: Number of quanimous strict integer partitions of n, meaning there is more than one set partition with all equal block-sums.

The programs for A371737, there is no canonical definition to state claims against.
-/

/-! ## A371737.P11865609913789648176

`A000009(n)-A371736(n)`
-/

namespace A371737.P11865609913789648176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A371736 n

end

end A371737.P11865609913789648176

/-! ## A371737.P2488844242574979852

`∑[A087897(n)]-A371736(n)`
-/

namespace A371737.P2488844242574979852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A371736 n

end

end A371737.P2488844242574979852

/-! ## A371737.P9673891809519478557

`A035457(A005843(n))-A371736(n)`
-/

namespace A371737.P9673891809519478557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A005843 n).toNat - A371736 n

end

end A371737.P9673891809519478557

/-! ## A371737.P5385347943201199278

`A331848(n)+A000700(n)-A371736(n)`
-/

namespace A371737.P5385347943201199278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331848 n + A000700 n - A371736 n

end

end A371737.P5385347943201199278

/-! ## A371737.P14769148413347995730

`A325166(A078898(n)!)`
-/

namespace A371737.P14769148413347995730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325166 (Nat.factorial (A078898 n).toNat)

end

end A371737.P14769148413347995730

/-!
# A371738: Numbers with non-quanimous binary indices. Numbers whose binary indices have only one set partition with all equal block-sums.

The programs for A371738, there is no canonical definition to state claims against.
-/

/-! ## A371738.P15084133292446022400

`comp[A371784(n+1)-1]+1`
-/

namespace A371738.P15084133292446022400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371784 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A371738.P15084133292446022400

/-! ## A371738.P2275089071140788403

`eq[1, A321455(A339809(n+1)+1)]+1`
-/

namespace A371738.P2275089071140788403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (A339809 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A371738.P2275089071140788403

/-! ## A371738.P14522637168009848223

`eq[A054977(n), A321455(A339809(n)+1)]`
-/

namespace A371738.P14522637168009848223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (A339809 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A371738.P14522637168009848223

/-! ## A371738.P11556082429882263214

`eq[A158388(n), A321455(A339809(n)+1)]`
-/

namespace A371738.P11556082429882263214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (A339809 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A371738.P11556082429882263214

/-! ## A371738.P3783180326295740928

`eq[A211666(n+1), A321455(A339809(n)+1)]`
-/

namespace A371738.P3783180326295740928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (A339809 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A371738.P3783180326295740928

/-! ## A371738.P16755568718718507860

`lt[A321455(A339809(n)+1)*(n+1), A018252(n+1)]`
-/

namespace A371738.P16755568718718507860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (A339809 n + 1).toNat * (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371738.P16755568718718507860

/-! ## A371738.P1401683285922577606

`eq[1, A371735(n)]`
-/

namespace A371738.P1401683285922577606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A371738.P1401683285922577606

/-! ## A371738.P15711593619031410628

`eq[A054977(n), A336137(n)]`
-/

namespace A371738.P15711593619031410628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336137 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A371738.P15711593619031410628

/-! ## A371738.P5459168635212769609

`eq[A057427(n), A336137(n)]`
-/

namespace A371738.P5459168635212769609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336137 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A371738.P5459168635212769609

/-! ## A371738.P13973906910720143754

`eq[A158388(n), A336137(n)]`
-/

namespace A371738.P13973906910720143754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336137 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A371738.P13973906910720143754

/-!
# A371739: a(n) = Sum_{k=0..n} binomial(5*n,k).

The programs for A371739, the canonical program `A371739.P15731188540071241392` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371739 has offset 0).

The definition of A371739 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(5*n, #)]` (program `A371739.P15731188540071241392`, by `A371739.P15731188540071241392.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371739.P15731188540071241392

`∑{#}[n, C(5*n, #)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371739

/-- `∑{#}[n, C(5*n, #)]` -/
def P15731188540071241392.Spec : Prop :=
  ∀ n, (P15731188540071241392.a n : ℤ) = A371739 n

theorem P15731188540071241392.correct : P15731188540071241392.Spec := by
  intro n
  simp only [A371739]

end A371739

/-! ## A371739.P14278482244042579627

`A097750(A062725(n))`
-/

namespace A371739.P14278482244042579627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097750 (A062725 n).toNat

end

end A371739.P14278482244042579627

namespace A371739

/-- `A097750(A062725(n))` -/
def P14278482244042579627.Spec : Prop :=
  ∀ n, P14278482244042579627.a n = A371739 n

end A371739

/-! ## A371739.P18423827817662383039

`A131250(A062728(n))`
-/

namespace A371739.P18423827817662383039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131250 (A062728 n).toNat

end

end A371739.P18423827817662383039

namespace A371739

/-- `A131250(A062728(n))` -/
def P18423827817662383039.Spec : Prop :=
  ∀ n, P18423827817662383039.a n = A371739 n

end A371739

/-! ## A371739.P16034844987420259351

`A131250(A062725(n)+n)`
-/

namespace A371739.P16034844987420259351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131250 (A062725 n + (n : ℤ)).toNat

end

end A371739.P16034844987420259351

namespace A371739

/-- `A131250(A062725(n)+n)` -/
def P16034844987420259351.Spec : Prop :=
  ∀ n, P16034844987420259351.a n = A371739 n

end A371739

/-! ## A371739.P4223815941537847544

`A008949(A000217(n)+n*(12*n+3))`
-/

namespace A371739.P4223815941537847544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A000217 n + (n * (12 * n + 3) : ℤ)).toNat

end

end A371739.P4223815941537847544

namespace A371739

/-- `A008949(A000217(n)+n*(12*n+3))` -/
def P4223815941537847544.Spec : Prop :=
  ∀ n, P4223815941537847544.a n = A371739 n

end A371739

/-!
# A371742: a(n) = Sum_{k=0..floor(n/2)} binomial(3*n-k,n-2*k).

The programs for A371742, the canonical program `A371742.P16041007343793594886` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371742 has offset 0).

The definition of A371742 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), C(3*n-#, n-2*#)]` (program `A371742.P16041007343793594886`, by `A371742.P16041007343793594886.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371742.P16041007343793594886

`∑{#}[floor(n/2), C(3*n-#, n-2*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371742

/-- `∑{#}[floor(n/2), C(3*n-#, n-2*#)]` -/
def P16041007343793594886.Spec : Prop :=
  ∀ n, (P16041007343793594886.a n : ℤ) = A371742 n

theorem P16041007343793594886.correct : P16041007343793594886.Spec := by
  intro n
  simp only [A371742]

end A371742

/-! ## A371742.P7317900278174316969

`A105809(A062728(n))`
-/

namespace A371742.P7317900278174316969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105809 (A062728 n).toNat

end

end A371742.P7317900278174316969

namespace A371742

/-- `A105809(A062728(n))` -/
def P7317900278174316969.Spec : Prop :=
  ∀ n, P7317900278174316969.a n = A371742 n

end A371742

/-! ## A371742.P12769137121554527656

`A228074(A081267(n))`
-/

namespace A371742.P12769137121554527656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228074 (A081267 n).toNat

end

end A371742.P12769137121554527656

namespace A371742

/-- `A228074(A081267(n))` -/
def P12769137121554527656.Spec : Prop :=
  ∀ n, P12769137121554527656.a n = A371742 n

end A371742

/-! ## A371742.P4343424350270064552

`A136431(A117625(n+1))`
-/

namespace A371742.P4343424350270064552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136431 (A117625 (n + 1)).toNat

end

end A371742.P4343424350270064552

namespace A371742

/-- `A136431(A117625(n+1))` -/
def P4343424350270064552.Spec : Prop :=
  ∀ n, P4343424350270064552.a n = A371742 n

end A371742

/-! ## A371742.P1178250979527414026

`A354267(A062708(n+1))`
-/

namespace A371742.P1178250979527414026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354267 (A062708 (n + 1)).toNat

end

end A371742.P1178250979527414026

namespace A371742

/-- `A354267(A062708(n+1))` -/
def P1178250979527414026.Spec : Prop :=
  ∀ n, P1178250979527414026.a n = A371742 n

end A371742

/-!
# A371743: a(n) = Sum_{k=0..floor(n/2)} binomial(4*n-k,n-2*k).

The programs for A371743, the canonical program `A371743.P2031015078372693138` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371743 has offset 0).

The definition of A371743 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), C(4*n-#, n-2*#)]` (program `A371743.P2031015078372693138`, by `A371743.P2031015078372693138.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371743.P2031015078372693138

`∑{#}[floor(n/2), C(4*n-#, n-2*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371743

/-- `∑{#}[floor(n/2), C(4*n-#, n-2*#)]` -/
def P2031015078372693138.Spec : Prop :=
  ∀ n, (P2031015078372693138.a n : ℤ) = A371743 n

theorem P2031015078372693138.correct : P2031015078372693138.Spec := by
  intro n
  simp only [A371743]

end A371743

/-! ## A371743.P3453305106494427390

`A105809(A139277(n))`
-/

namespace A371743.P3453305106494427390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105809 (A139277 n).toNat

end

end A371743.P3453305106494427390

namespace A371743

/-- `A105809(A139277(n))` -/
def P3453305106494427390.Spec : Prop :=
  ∀ n, P3453305106494427390.a n = A371743 n

end A371743

/-! ## A371743.P202711090362196333

`A354267(A125201(n+1))`
-/

namespace A371743.P202711090362196333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354267 (A125201 (n + 1)).toNat

end

end A371743.P202711090362196333

namespace A371743

/-- `A354267(A125201(n+1))` -/
def P202711090362196333.Spec : Prop :=
  ∀ n, P202711090362196333.a n = A371743 n

end A371743

/-! ## A371743.P6516428982116851248

`A136431(A360416(n+1))`
-/

namespace A371743.P6516428982116851248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136431 (A360416 (n + 1)).toNat

end

end A371743.P6516428982116851248

namespace A371743

/-- `A136431(A360416(n+1))` -/
def P6516428982116851248.Spec : Prop :=
  ∀ n, P6516428982116851248.a n = A371743 n

end A371743

/-! ## A371743.P5629974078996542346

`A027926(A033954(2*n)+n)`
-/

namespace A371743.P5629974078996542346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (A033954 (2 * n) + (n : ℤ)).toNat

end

end A371743.P5629974078996542346

namespace A371743

/-- `A027926(A033954(2*n)+n)` -/
def P5629974078996542346.Spec : Prop :=
  ∀ n, P5629974078996542346.a n = A371743 n

end A371743

/-!
# A371744: a(n) = Sum_{k=0..floor(n/2)} binomial(5*n-k,n-2*k).

The programs for A371744, the canonical program `A371744.P5484274830166228551` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371744 has offset 0).

The definition of A371744 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), C(5*n-#, n-2*#)]` (program `A371744.P5484274830166228551`, by `A371744.P5484274830166228551.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371744.P5484274830166228551

`∑{#}[floor(n/2), C(5*n-#, n-2*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371744

/-- `∑{#}[floor(n/2), C(5*n-#, n-2*#)]` -/
def P5484274830166228551.Spec : Prop :=
  ∀ n, (P5484274830166228551.a n : ℤ) = A371744 n

theorem P5484274830166228551.correct : P5484274830166228551.Spec := by
  intro n
  simp only [A371744]

end A371744

/-! ## A371744.P241727453183203535

`A105809(A139277(n)+A000217(3*n))`
-/

namespace A371744.P241727453183203535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105809 (A139277 n + A000217 (3 * n)).toNat

end

end A371744.P241727453183203535

namespace A371744

/-- `A105809(A139277(n)+A000217(3*n))` -/
def P241727453183203535.Spec : Prop :=
  ∀ n, P241727453183203535.a n = A371744 n

end A371744

/-!
# A371753: a(n) = Sum_{k=0..floor(n/2)} binomial(5*n-2*k-1,n-2*k).

The programs for A371753, the canonical program `A371753.P489449717907538494` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371753 has offset 0).

The definition of A371753 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A371753.P489449717907538494

`∑{#}[n, (-2)^(n-#)*C(5*n+1, #)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371753

/-- `∑{#}[n, (-2)^(n-#)*C(5*n+1, #)]` -/
def P489449717907538494.Spec : Prop :=
  ∀ n, P489449717907538494.a n = (A371753 n : ℚ)

end A371753

/-! ## A371753.P16471067484765826859

`A109244(A139277(n))`
-/

namespace A371753.P16471067484765826859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109244 (A139277 n).toNat

end

end A371753.P16471067484765826859

namespace A371753

/-- `A109244(A139277(n))` -/
def P16471067484765826859.Spec : Prop :=
  ∀ n, P16471067484765826859.a n = A371753 n

end A371753

/-! ## A371753.P981732870131012955

`A109244(A046092(2*n)+n)`
-/

namespace A371753.P981732870131012955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109244 (A046092 (2 * n) + (n : ℤ)).toNat

end

end A371753.P981732870131012955

namespace A371753

/-- `A109244(A046092(2*n)+n)` -/
def P981732870131012955.Spec : Prop :=
  ∀ n, P981732870131012955.a n = A371753 n

end A371753

/-! ## A371753.P6703259133236882994

`A123521(A000982(3*n)+n)`
-/

namespace A371753.P6703259133236882994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123521 (A000982 (3 * n) + (n : ℤ)).toNat

end

end A371753.P6703259133236882994

namespace A371753

/-- `A123521(A000982(3*n)+n)` -/
def P6703259133236882994.Spec : Prop :=
  ∀ n, P6703259133236882994.a n = A371753 n

end A371753

/-! ## A371753.P8772473904477048985

`A201635(A194268(n))`
-/

namespace A371753.P8772473904477048985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A194268 n).toNat

end

end A371753.P8772473904477048985

namespace A371753

/-- `A201635(A194268(n))` -/
def P8772473904477048985.Spec : Prop :=
  ∀ n, P8772473904477048985.a n = A371753 n

end A371753

/-!
# A371754: a(n) = Sum_{k=0..floor(n/3)} binomial(3*n-2*k,n-3*k).

The programs for A371754, the canonical program `A371754.P240526760107237369` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371754 has offset 0).

The definition of A371754 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(3*n-2*#, n-3*#)]` (program `A371754.P240526760107237369`, by `A371754.P240526760107237369.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371754.P240526760107237369

`∑{#}[floor(n/3), C(3*n-2*#, n-3*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371754

/-- `∑{#}[floor(n/3), C(3*n-2*#, n-3*#)]` -/
def P240526760107237369.Spec : Prop :=
  ∀ n, (P240526760107237369.a n : ℤ) = A371754 n

theorem P240526760107237369.correct : P240526760107237369.Spec := by
  intro n
  simp only [A371754]

end A371754

/-! ## A371754.P1745131277767390480

`A099567(A062728(n))`
-/

namespace A371754.P1745131277767390480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099567 (A062728 n).toNat

end

end A371754.P1745131277767390480

namespace A371754

/-- `A099567(A062728(n))` -/
def P1745131277767390480.Spec : Prop :=
  ∀ n, P1745131277767390480.a n = A371754 n

end A371754

/-! ## A371754.P5285611425704905107

`A144903(A022266(n+1))`
-/

namespace A371754.P5285611425704905107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144903 (A022266 (n + 1)).toNat

end

end A371754.P5285611425704905107

namespace A371754

/-- `A144903(A022266(n+1))` -/
def P5285611425704905107.Spec : Prop :=
  ∀ n, P5285611425704905107.a n = A371754 n

end A371754

/-! ## A371754.P3122135690900979337

`A144903(A081270(n)+1)`
-/

namespace A371754.P3122135690900979337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144903 (A081270 n + 1).toNat

end

end A371754.P3122135690900979337

namespace A371754

/-- `A144903(A081270(n)+1)` -/
def P3122135690900979337.Spec : Prop :=
  ∀ n, P3122135690900979337.a n = A371754 n

end A371754

/-! ## A371754.P10989654384551092483

`A099567(A000096(3*n)-n)`
-/

namespace A371754.P10989654384551092483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099567 (A000096 (3 * n) - (n : ℤ)).toNat

end

end A371754.P10989654384551092483

namespace A371754

/-- `A099567(A000096(3*n)-n)` -/
def P10989654384551092483.Spec : Prop :=
  ∀ n, P10989654384551092483.a n = A371754 n

end A371754

/-!
# A371755: a(n) = Sum_{k=0..floor(n/3)} binomial(4*n-2*k,n-3*k).

The programs for A371755, the canonical program `A371755.P18405957149275544045` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371755 has offset 0).

The definition of A371755 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(4*n-2*#, n-3*#)]` (program `A371755.P18405957149275544045`, by `A371755.P18405957149275544045.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371755.P18405957149275544045

`∑{#}[floor(n/3), C(4*n-2*#, n-3*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371755

/-- `∑{#}[floor(n/3), C(4*n-2*#, n-3*#)]` -/
def P18405957149275544045.Spec : Prop :=
  ∀ n, (P18405957149275544045.a n : ℤ) = A371755 n

theorem P18405957149275544045.correct : P18405957149275544045.Spec := by
  intro n
  simp only [A371755]

end A371755

/-! ## A371755.P14126928026612841623

`A099567(A139277(n))`
-/

namespace A371755.P14126928026612841623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099567 (A139277 n).toNat

end

end A371755.P14126928026612841623

namespace A371755

/-- `A099567(A139277(n))` -/
def P14126928026612841623.Spec : Prop :=
  ∀ n, P14126928026612841623.a n = A371755 n

end A371755

/-! ## A371755.P15664344768898224800

`A099567(n*A016813(2*n+1))`
-/

namespace A371755.P15664344768898224800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099567 ((n : ℤ) * A016813 (2 * n + 1)).toNat

end

end A371755.P15664344768898224800

namespace A371755

/-- `A099567(n*A016813(2*n+1))` -/
def P15664344768898224800.Spec : Prop :=
  ∀ n, P15664344768898224800.a n = A371755 n

end A371755

/-! ## A371755.P2209865086090635115

`A144903(A383464(n+1))`
-/

namespace A371755.P2209865086090635115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144903 (A383464 (n + 1)).toNat

end

end A371755.P2209865086090635115

namespace A371755

/-- `A144903(A383464(n+1))` -/
def P2209865086090635115.Spec : Prop :=
  ∀ n, P2209865086090635115.a n = A371755 n

end A371755

/-!
# A371756: a(n) = Sum_{k=0..floor(n/3)} binomial(5*n-2*k,n-3*k).

The programs for A371756, the canonical program `A371756.P2738246770004539866` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371756 has offset 0).

The definition of A371756 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(5*n-2*#, n-3*#)]` (program `A371756.P2738246770004539866`, by `A371756.P2738246770004539866.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371756.P2738246770004539866

`∑{#}[floor(n/3), C(5*n-2*#, n-3*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371756

/-- `∑{#}[floor(n/3), C(5*n-2*#, n-3*#)]` -/
def P2738246770004539866.Spec : Prop :=
  ∀ n, (P2738246770004539866.a n : ℤ) = A371756 n

theorem P2738246770004539866.correct : P2738246770004539866.Spec := by
  intro n
  simp only [A371756]

end A371756

/-!
# A371758: a(n) = Sum_{k=0..floor(n/3)} binomial(2*n-3*k-1,n-3*k).

The programs for A371758, the canonical program `A371758.P7726754124979155952` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371758 has offset 0).

The definition of A371758 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A371758.P7726754124979155952

`∑{#}[n, (-3)^#*C(2*n+#+2, n-#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371758

/-- `∑{#}[n, (-3)^#*C(2*n+#+2, n-#)]` -/
def P7726754124979155952.Spec : Prop :=
  ∀ n, P7726754124979155952.a n = A371758 n

theorem P7726754124979155952.correct : P7726754124979155952.Spec := by
  intro n
  simp only [A371758]

end A371758

/-! ## A371758.P4398649503162164057

`A118923(∑[4*n])`
-/

namespace A371758.P4398649503162164057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118923 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A371758.P4398649503162164057

namespace A371758

/-- `A118923(∑[4*n])` -/
def P4398649503162164057.Spec : Prop :=
  ∀ n, P4398649503162164057.a n = A371758 n

end A371758

/-! ## A371758.P5173659608780102880

`A366107(A004277(n)+2)`
-/

namespace A371758.P5173659608780102880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366107 (A004277 n + 2).toNat

end

end A371758.P5173659608780102880

namespace A371758

/-- `A366107(A004277(n)+2)` -/
def P5173659608780102880.Spec : Prop :=
  ∀ n, P5173659608780102880.a n = A371758 n

end A371758

/-! ## A371758.P7272581711898679290

`A366107(A051755(n+2))`
-/

namespace A371758.P7272581711898679290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366107 (A051755 (n + 2)).toNat

end

end A371758.P7272581711898679290

namespace A371758

/-- `A366107(A051755(n+2))` -/
def P7272581711898679290.Spec : Prop :=
  ∀ n, P7272581711898679290.a n = A371758 n

end A371758

/-! ## A371758.P14979537079316718455

`A366107(A028310(2*n)+2)`
-/

namespace A371758.P14979537079316718455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366107 (A028310 (2 * n) + 2).toNat

end

end A371758.P14979537079316718455

namespace A371758

/-- `A366107(A028310(2*n)+2)` -/
def P14979537079316718455.Spec : Prop :=
  ∀ n, P14979537079316718455.a n = A371758 n

end A371758

/-!
# A371761: Array read by antidiagonals: The number of parades with n girls and k boys that begin with a girl and end with a boy.

The programs for A371761, there is no canonical definition to state claims against.
-/

/-! ## A371761.P7543341100328001275

`A131138(A271697(n))`
-/

namespace A371761.P7543341100328001275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131138 (A271697 n).toNat

end

end A371761.P7543341100328001275

/-! ## A371761.P5924276577904103606

`A119026(A382734(n))`
-/

namespace A371761.P5924276577904103606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119026 (A382734 n).toNat

end

end A371761.P5924276577904103606

/-! ## A371761.P13675489153475485335

`A119026(2*A271697(n))`
-/

namespace A371761.P13675489153475485335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119026 (2 * A271697 n).toNat

end

end A371761.P13675489153475485335

/-! ## A371761.P7083950263081634422

`A167634(A157114(n))`
-/

namespace A371761.P7083950263081634422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167634 (A157114 n).toNat

end

end A371761.P7083950263081634422

/-! ## A371761.P4706622173458158790

`A119922(A215122(n))`
-/

namespace A371761.P4706622173458158790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119922 (A215122 n).toNat

end

end A371761.P4706622173458158790

/-!
# A371762: Triangle read by rows: the polynomial coefficients of the numerator of the rational solution of the linear recurrence equations of the rows of A371761.

The programs for A371762, there is no canonical definition to state claims against.
-/

/-! ## A371762.P5769442471129018393

`A078341(n+1)+A064873(A365895(n))`
-/

namespace A371762.P5769442471129018393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078341 (n + 1) + A064873 (A365895 n).toNat

end

end A371762.P5769442471129018393

/-! ## A371762.P12469032760489494965

`A131138(A256116(n))`
-/

namespace A371762.P12469032760489494965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131138 (A256116 n).toNat

end

end A371762.P12469032760489494965

/-! ## A371762.P15608309439335094937

`A055572(A078341(n+1))`
-/

namespace A371762.P15608309439335094937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 (A078341 (n + 1)).toNat

end

end A371762.P15608309439335094937

/-! ## A371762.P18373207130336298949

`A089576(A304336(n))%A190022(3*(n+1))`
-/

namespace A371762.P18373207130336298949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089576 (A304336 n).toNat) (A190022 (3 * (n + 1)))

end

end A371762.P18373207130336298949

/-!
# A371765: Row sums of A371994.

The programs for A371765, there is no canonical definition to state claims against.
-/

/-! ## A371765.P4654283344903955893

`A301720(n*(a(n-1)-1)+1)` with `a(0)=1, a(1)=1`
-/

namespace A371765.P4654283344903955893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A301720 ((n : ℤ) * (a (n - 1) - 1) + 1).toNat

end

end A371765.P4654283344903955893

/-!
# A371766: Triangle read by rows: T(n, k) = A371898(n, k) / A371767(n, k).

The programs for A371766, there is no canonical definition to state claims against.
-/

/-! ## A371766.P13722888547503531930

`A371898(C(row(n)+1, 2)+col(n))/A371767(C(row(n)+1, 2)+col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A371766.P13722888547503531930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A371898 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) : ℚ) / (A371767 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) : ℚ)

end

end A371766.P13722888547503531930

/-! ## A371766.P7836958732767055429

`A181783(comp[∑[n]])`
-/

namespace A371766.P7836958732767055429
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181783 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A371766.P7836958732767055429

/-! ## A371766.P12887220791898611661

`A181783(n+round(sqrt(2*n))+1)%A000079(n+1)`
-/

namespace A371766.P12887220791898611661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181783 ((n : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + 1).toNat) (A000079 (n + 1))

end

end A371766.P12887220791898611661

/-! ## A371766.P16860980999000327905

`A181783(n+round(sqrt(2*n))+1)^A027642(2*n+1)`
-/

namespace A371766.P16860980999000327905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181783 ((n : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + 1).toNat : ℚ) ^ (A027642 (2 * n + 1) : ℤ)

end

end A371766.P16860980999000327905

/-! ## A371766.P9911571443979298267

`or(A010054(n), A181783(A014132(n+1)))`
-/

namespace A371766.P9911571443979298267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A181783 (A014132 (n + 1)).toNat)

end

end A371766.P9911571443979298267

/-!
# A371767: Triangle read by rows: T(n, k) = (k! * n!)/(n - k)!.

The programs for A371767, the canonical program `A371767.P2617940576110731168` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371767 has offset 0).

The definition of A371767 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A371767.P2617940576110731168

`col(n)!*row(n)!/(row(n)-col(n))!`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371767

/-- `col(n)!*row(n)!/(row(n)-col(n))!` -/
def P2617940576110731168.Spec : Prop :=
  ∀ n, P2617940576110731168.a n = (A371767 n : ℚ)

end A371767

/-! ## A371767.P6881925590153968905

`T(n-1,k)+col(n)²*T(n-1,k-1)` with `a(0)=1`
-/

namespace A371767.P6881925590153968905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + SequenceMachineLib.triCol n ^ 2 * SequenceMachineLib.triUpLeft a n

end

end A371767.P6881925590153968905

namespace A371767

/-- `T(n-1,k)+col(n)²*T(n-1,k-1)` -/
def P6881925590153968905.Spec : Prop :=
  ∀ n, (P6881925590153968905.a n : ℤ) = A371767 n

end A371767

/-! ## A371767.P9466636484452746869

`col(n)!²*C(row(n), col(n))`
-/

namespace A371767.P9466636484452746869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.triCol n) ^ 2 * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n)

end

end A371767.P9466636484452746869

namespace A371767

/-- `col(n)!²*C(row(n), col(n))` -/
def P9466636484452746869.Spec : Prop :=
  ∀ n, (P9466636484452746869.a n : ℤ) = A371767 n

end A371767

/-! ## A371767.P16452656987487988453

`T(n-1,k)+col(n)*col(n)*T(n-1,k-1)` with `a(0)=1`
-/

namespace A371767.P16452656987487988453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + SequenceMachineLib.triCol n * SequenceMachineLib.triCol n * SequenceMachineLib.triUpLeft a n

end

end A371767.P16452656987487988453

namespace A371767

/-- `T(n-1,k)+col(n)*col(n)*T(n-1,k-1)` -/
def P16452656987487988453.Spec : Prop :=
  ∀ n, (P16452656987487988453.a n : ℤ) = A371767 n

end A371767

/-! ## A371767.P2620135238812707641

`T(n-2,k)+(T(n-2,k-1)+T(n-1,k-1))*col(n)*col(n)` with `a(0)=1, a(1)=1`
-/

namespace A371767.P2620135238812707641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUp2 a n + (SequenceMachineLib.triUp2Left a n + SequenceMachineLib.triUpLeft a n) * SequenceMachineLib.triCol n * SequenceMachineLib.triCol n

end

end A371767.P2620135238812707641

namespace A371767

/-- `T(n-2,k)+(T(n-2,k-1)+T(n-1,k-1))*col(n)*col(n)` -/
def P2620135238812707641.Spec : Prop :=
  ∀ n, (P2620135238812707641.a n : ℤ) = A371767 n

end A371767

/-! ## A371767.P991824112037231032

`T(n-1,k)-((1-col(n))*T(n-1,k-1)-T(n-1,k-1))*col(n)` with `a(0)=1`
-/

namespace A371767.P991824112037231032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n - ((1 - (SequenceMachineLib.triCol n : ℤ)) * SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUpLeft a n) * (SequenceMachineLib.triCol n : ℤ)

end

end A371767.P991824112037231032

namespace A371767

/-- `T(n-1,k)-((1-col(n))*T(n-1,k-1)-T(n-1,k-1))*col(n)` -/
def P991824112037231032.Spec : Prop :=
  ∀ n, P991824112037231032.a n = A371767 n

end A371767

/-! ## A371767.P6780255762526788654

`T(T(n-1,k-1), 2*T(n-1,k-1))+col(n)*row(n)*T(n-1,k-1)` with `a(0)=1`
-/

namespace A371767.P6780255762526788654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) (2 * SequenceMachineLib.triUpLeft a n : ℤ) + SequenceMachineLib.triCol n * SequenceMachineLib.triRow n * SequenceMachineLib.triUpLeft a n

end

end A371767.P6780255762526788654

namespace A371767

/-- `T(T(n-1,k-1), 2*T(n-1,k-1))+col(n)*row(n)*T(n-1,k-1)` -/
def P6780255762526788654.Spec : Prop :=
  ∀ n, (P6780255762526788654.a n : ℤ) = A371767 n

end A371767

/-! ## A371767.P2734306466527776873

`A008279(n)*A233543(n)`
-/

namespace A371767.P2734306466527776873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A233543 n

end

end A371767.P2734306466527776873

namespace A371767

/-- `A008279(n)*A233543(n)` -/
def P2734306466527776873.Spec : Prop :=
  ∀ n, P2734306466527776873.a n = A371767 n

end A371767

/-! ## A371767.P3701277212044394414

`A143216(n)/A119502(n)`
-/

namespace A371767.P3701277212044394414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143216 n : ℚ) / (A119502 n : ℚ)

end

end A371767.P3701277212044394414

namespace A371767

/-- `A143216(n)/A119502(n)` -/
def P3701277212044394414.Spec : Prop :=
  ∀ n, P3701277212044394414.a n = (A371767 n : ℚ)

end A371767

/-! ## A371767.P14432584328430550843

`A233543(n)²*A007318(n)`
-/

namespace A371767.P14432584328430550843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n ^ 2 * A007318 n

end

end A371767.P14432584328430550843

namespace A371767

/-- `A233543(n)²*A007318(n)` -/
def P14432584328430550843.Spec : Prop :=
  ∀ n, P14432584328430550843.a n = A371767 n

end A371767

/-! ## A371767.P280944366345641373

`A008279(n)/A007318(n)*A008279(n)`
-/

namespace A371767.P280944366345641373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008279 n : ℚ) / (A007318 n : ℚ) * (A008279 n : ℚ)

end

end A371767.P280944366345641373

namespace A371767

/-- `A008279(n)/A007318(n)*A008279(n)` -/
def P280944366345641373.Spec : Prop :=
  ∀ n, P280944366345641373.a n = (A371767 n : ℚ)

end A371767

/-! ## A371767.P2974918770772305571

`A370707(n)/A059481(n)`
-/

namespace A371767.P2974918770772305571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370707 n : ℚ) / (A059481 n : ℚ)

end

end A371767.P2974918770772305571

namespace A371767

/-- `A370707(n)/A059481(n)` -/
def P2974918770772305571.Spec : Prop :=
  ∀ n, P2974918770772305571.a n = (A371767 n : ℚ)

end A371767

/-! ## A371767.P3373359858142872478

`A008279(n)*A387126(n)/A387138(n)`
-/

namespace A371767.P3373359858142872478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008279 n * A387126 n : ℚ) / (A387138 n : ℚ)

end

end A371767.P3373359858142872478

namespace A371767

/-- `A008279(n)*A387126(n)/A387138(n)` -/
def P3373359858142872478.Spec : Prop :=
  ∀ n, P3373359858142872478.a n = (A371767 n : ℚ)

end A371767

/-!
# A371768: a(n) = n! * [x^n] (log(2*x - 1) - log(x - 1) - log(x + 1)) / (x - 1). Row sums of A371685.

The programs for A371768, there is no canonical definition to state claims against.
-/

/-! ## A371768.P8147116557862714786

`A286894(A054190(n))`
-/

namespace A371768.P8147116557862714786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286894 (A054190 n).toNat

end

end A371768.P8147116557862714786

/-!
# A371769: a(n) is the smallest natural number k such that every sequence of length k in Z_n has an A-weighted zero-sum subsequence where A is the set of all nonzero squares in Z_n.

The programs for A371769, there is no canonical definition to state claims against.
-/

/-! ## A371769.P18079076545890147584

`A158478(A121039(n+2))+A000122(n+2)`
-/

namespace A371769.P18079076545890147584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (A121039 (n + 2)).toNat + A000122 (n + 2)

end

end A371769.P18079076545890147584

/-! ## A371769.P10202474533168601804

`A007978(A372683(n)+A175413(3*n+4))`
-/

namespace A371769.P10202474533168601804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A372683 n + A175413 (3 * n + 4)).toNat

end

end A371769.P10202474533168601804

/-!
# A371770: a(n) = Sum_{k=0..floor(n/3)} binomial(3*n-3*k-1,n-3*k).

The programs for A371770, the canonical program `A371770.P14198444900720301022` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371770 has offset 0).

The definition of A371770 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A371770.P14198444900720301022

`∑{#}[n, (-3)^#*C(3*n+#+2, n-#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371770

/-- `∑{#}[n, (-3)^#*C(3*n+#+2, n-#)]` -/
def P14198444900720301022.Spec : Prop :=
  ∀ n, P14198444900720301022.a n = A371770 n

theorem P14198444900720301022.correct : P14198444900720301022.Spec := by
  intro n
  simp only [A371770]

end A371770

/-! ## A371770.P3977493702139856549

`A118923(A062725(n))`
-/

namespace A371770.P3977493702139856549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118923 (A062725 n).toNat

end

end A371770.P3977493702139856549

namespace A371770

/-- `A118923(A062725(n))` -/
def P3977493702139856549.Spec : Prop :=
  ∀ n, P3977493702139856549.a n = A371770 n

end A371770

/-! ## A371770.P3381310198180128752

`A118923(A081266(n)+n)`
-/

namespace A371770.P3381310198180128752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118923 (A081266 n + (n : ℤ)).toNat

end

end A371770.P3381310198180128752

namespace A371770

/-- `A118923(A081266(n)+n)` -/
def P3381310198180128752.Spec : Prop :=
  ∀ n, P3381310198180128752.a n = A371770 n

end A371770

/-!
# A371771: a(n) = Sum_{k=0..floor(n/3)} binomial(4*n-3*k-1,n-3*k).

The programs for A371771, the canonical program `A371771.P4546564724789240011` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371771 has offset 0).

The definition of A371771 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A371771.P4546564724789240011

`∑{#}[n, (-3)^#*C(4*n+#+2, n-#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371771

/-- `∑{#}[n, (-3)^#*C(4*n+#+2, n-#)]` -/
def P4546564724789240011.Spec : Prop :=
  ∀ n, P4546564724789240011.a n = A371771 n

theorem P4546564724789240011.correct : P4546564724789240011.Spec := by
  intro n
  simp only [A371771]

end A371771

/-! ## A371771.P12392971416214193090

`A118923(A139276(n))`
-/

namespace A371771.P12392971416214193090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118923 (A139276 n).toNat

end

end A371771.P12392971416214193090

namespace A371771

/-- `A118923(A139276(n))` -/
def P12392971416214193090.Spec : Prop :=
  ∀ n, P12392971416214193090.a n = A371771 n

end A371771

/-! ## A371771.P9162657511129165202

`record[A118923(A274681(n+1))]`
-/

namespace A371771.P9162657511129165202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118923 (A274681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371771.P9162657511129165202

namespace A371771

/-- `record[A118923(A274681(n+1))]` -/
def P9162657511129165202.Spec : Prop :=
  ∀ n, P9162657511129165202.a n = A371771 n

end A371771

/-!
# A371772: a(n) = Sum_{k=0..floor(n/3)} binomial(5*n-3*k-1,n-3*k).

The programs for A371772, the canonical program `A371772.P4531097541626554492` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371772 has offset 0).

The definition of A371772 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A371772.P4531097541626554492

`∑{#}[n, (-3)^#*C(5*n+#+2, n-#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371772

/-- `∑{#}[n, (-3)^#*C(5*n+#+2, n-#)]` -/
def P4531097541626554492.Spec : Prop :=
  ∀ n, P4531097541626554492.a n = A371772 n

theorem P4531097541626554492.correct : P4531097541626554492.Spec := by
  intro n
  simp only [A371772]

end A371772

/-!
# A371773: a(n) = Sum_{k=0..floor(n/3)} binomial(2*n-k+1,n-3*k).

The programs for A371773, the canonical program `A371773.P6867927940058820215` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371773 has offset 0).

The definition of A371773 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(2*n-#+1, n-3*#)]` (program `A371773.P6867927940058820215`, by `A371773.P6867927940058820215.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371773.P6867927940058820215

`∑{#}[floor(n/3), C(2*n-#+1, n-3*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371773

/-- `∑{#}[floor(n/3), C(2*n-#+1, n-3*#)]` -/
def P6867927940058820215.Spec : Prop :=
  ∀ n, (P6867927940058820215.a n : ℤ) = A371773 n

theorem P6867927940058820215.correct : P6867927940058820215.Spec := by
  intro n
  simp only [A371773]

end A371773

/-! ## A371773.P11997057875544092912

`A090735(A068551(n+1))`
-/

namespace A371773.P11997057875544092912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090735 (A068551 (n + 1)).toNat

end

end A371773.P11997057875544092912

namespace A371773

/-- `A090735(A068551(n+1))` -/
def P11997057875544092912.Spec : Prop :=
  ∀ n, P11997057875544092912.a n = A371773 n

end A371773

/-!
# A371774: a(n) = Sum_{k=0..floor(n/3)} binomial(3*n-k+1,n-3*k).

The programs for A371774, the canonical program `A371774.P4044196303783288151` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371774 has offset 0).

The definition of A371774 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(3*n-#+1, n-3*#)]` (program `A371774.P4044196303783288151`, by `A371774.P4044196303783288151.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371774.P4044196303783288151

`∑{#}[floor(n/3), C(3*n-#+1, n-3*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371774

/-- `∑{#}[floor(n/3), C(3*n-#+1, n-3*#)]` -/
def P4044196303783288151.Spec : Prop :=
  ∀ n, (P4044196303783288151.a n : ℤ) = A371774 n

theorem P4044196303783288151.correct : P4044196303783288151.Spec := by
  intro n
  simp only [A371774]

end A371774

/-!
# A371775: a(n) = Sum_{k=0..floor(n/3)} binomial(4*n-k+1,n-3*k).

The programs for A371775, the canonical program `A371775.P4221547762861409892` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371775 has offset 0).

The definition of A371775 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(4*n-#+1, n-3*#)]` (program `A371775.P4221547762861409892`, by `A371775.P4221547762861409892.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371775.P4221547762861409892

`∑{#}[floor(n/3), C(4*n-#+1, n-3*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371775

/-- `∑{#}[floor(n/3), C(4*n-#+1, n-3*#)]` -/
def P4221547762861409892.Spec : Prop :=
  ∀ n, (P4221547762861409892.a n : ℤ) = A371775 n

theorem P4221547762861409892.correct : P4221547762861409892.Spec := by
  intro n
  simp only [A371775]

end A371775

/-!
# A371776: a(n) = Sum_{k=0..floor(n/3)} binomial(5*n-k+1,n-3*k).

The programs for A371776, the canonical program `A371776.P4039765610970549757` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371776 has offset 0).

The definition of A371776 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(5*n-#+1, n-3*#)]` (program `A371776.P4039765610970549757`, by `A371776.P4039765610970549757.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371776.P4039765610970549757

`∑{#}[floor(n/3), C(5*n-#+1, n-3*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371776

/-- `∑{#}[floor(n/3), C(5*n-#+1, n-3*#)]` -/
def P4039765610970549757.Spec : Prop :=
  ∀ n, (P4039765610970549757.a n : ℤ) = A371776 n

theorem P4039765610970549757.correct : P4039765610970549757.Spec := by
  intro n
  simp only [A371776]

end A371776

/-!
# A371777: a(n) = Sum_{k=0..floor(n/3)} binomial(2*n+2,n-3*k).

The programs for A371777, the canonical program `A371777.P4821599847943980739` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371777 has offset 0).

The definition of A371777 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(2*n+2, n-3*#)]` (program `A371777.P4821599847943980739`, by `A371777.P4821599847943980739.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371777.P4821599847943980739

`∑{#}[floor(n/3), C(2*n+2, n-3*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371777

/-- `∑{#}[floor(n/3), C(2*n+2, n-3*#)]` -/
def P4821599847943980739.Spec : Prop :=
  ∀ n, (P4821599847943980739.a n : ℤ) = A371777 n

theorem P4821599847943980739.correct : P4821599847943980739.Spec := by
  intro n
  simp only [A371777]

end A371777

/-! ## A371777.P6370977286635919550

`∑[A032443(n)]`
-/

namespace A371777.P6370977286635919550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371777.P6370977286635919550

namespace A371777

/-- `∑[A032443(n)]` -/
def P6370977286635919550.Spec : Prop :=
  ∀ n, P6370977286635919550.a n = A371777 n

end A371777

/-! ## A371777.P12638251874759553744

`∑[A027306(2*n)]`
-/

namespace A371777.P12638251874759553744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371777.P12638251874759553744

namespace A371777

/-- `∑[A027306(2*n)]` -/
def P12638251874759553744.Spec : Prop :=
  ∀ n, P12638251874759553744.a n = A371777 n

end A371777

/-! ## A371777.P16022146744729628396

`∑[A116406(2*n+1)]`
-/

namespace A371777.P16022146744729628396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116406 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371777.P16022146744729628396

namespace A371777

/-- `∑[A116406(2*n+1)]` -/
def P16022146744729628396.Spec : Prop :=
  ∀ n, P16022146744729628396.a n = A371777 n

end A371777

/-! ## A371777.P17763401674486940957

`∑[A226881(2*n)+1]`
-/

namespace A371777.P17763401674486940957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226881 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371777.P17763401674486940957

namespace A371777

/-- `∑[A226881(2*n)+1]` -/
def P17763401674486940957.Spec : Prop :=
  ∀ n, P17763401674486940957.a n = A371777 n

end A371777

/-! ## A371777.P6952958120371459357

`∑{#}[n, C(n, #)*A025578(#+1)]`
-/

namespace A371777.P6952958120371459357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A025578 (k + 1)

end

end A371777.P6952958120371459357

namespace A371777

/-- `∑{#}[n, C(n, #)*A025578(#+1)]` -/
def P6952958120371459357.Spec : Prop :=
  ∀ n, P6952958120371459357.a n = A371777 n

end A371777

/-! ## A371777.P14323951557158040874

`A267991(A004277(n))`
-/

namespace A371777.P14323951557158040874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267991 (A004277 n).toNat

end

end A371777.P14323951557158040874

namespace A371777

/-- `A267991(A004277(n))` -/
def P14323951557158040874.Spec : Prop :=
  ∀ n, P14323951557158040874.a n = A371777 n

end A371777

/-! ## A371777.P2366063175724691226

`A267991(A004275(n+1))`
-/

namespace A371777.P2366063175724691226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267991 (A004275 (n + 1)).toNat

end

end A371777.P2366063175724691226

namespace A371777

/-- `A267991(A004275(n+1))` -/
def P2366063175724691226.Spec : Prop :=
  ∀ n, P2366063175724691226.a n = A371777 n

end A371777

/-! ## A371777.P4625423905593601902

`A024718(n)+A020988(n)`
-/

namespace A371777.P4625423905593601902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024718 n + A020988 n

end

end A371777.P4625423905593601902

namespace A371777

/-- `A024718(n)+A020988(n)` -/
def P4625423905593601902.Spec : Prop :=
  ∀ n, P4625423905593601902.a n = A371777 n

end A371777

/-! ## A371777.P12409982777739167171

`A371873(n)+A002450(n)`
-/

namespace A371777.P12409982777739167171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371873 n + A002450 n

end

end A371777.P12409982777739167171

namespace A371777

/-- `A371873(n)+A002450(n)` -/
def P12409982777739167171.Spec : Prop :=
  ∀ n, P12409982777739167171.a n = A371777 n

end A371777

/-! ## A371777.P16499789457677313347

`A024718(n)+2*A002450(n)`
-/

namespace A371777.P16499789457677313347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024718 n + 2 * A002450 n

end

end A371777.P16499789457677313347

namespace A371777

/-- `A024718(n)+2*A002450(n)` -/
def P16499789457677313347.Spec : Prop :=
  ∀ n, P16499789457677313347.a n = A371777 n

end A371777

/-! ## A371777.P9717743372243886782

`A086905(2*n)+A000975(2*n)`
-/

namespace A371777.P9717743372243886782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086905 (2 * n) + A000975 (2 * n)

end

end A371777.P9717743372243886782

namespace A371777

/-- `A086905(2*n)+A000975(2*n)` -/
def P9717743372243886782.Spec : Prop :=
  ∀ n, P9717743372243886782.a n = A371777 n

end A371777

/-! ## A371777.P15024028467033879586

`A124642(2*n)+A000975(2*n)`
-/

namespace A371777.P15024028467033879586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124642 (2 * n) + A000975 (2 * n)

end

end A371777.P15024028467033879586

namespace A371777

/-- `A124642(2*n)+A000975(2*n)` -/
def P15024028467033879586.Spec : Prop :=
  ∀ n, P15024028467033879586.a n = A371777 n

end A371777

/-! ## A371777.P3526281057906398621

`A174783(2*n)+A001045(2*n+1)`
-/

namespace A371777.P3526281057906398621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174783 (2 * n) + A001045 (2 * n + 1)

end

end A371777.P3526281057906398621

namespace A371777

/-- `A174783(2*n)+A001045(2*n+1)` -/
def P3526281057906398621.Spec : Prop :=
  ∀ n, P3526281057906398621.a n = A371777 n

end A371777

/-! ## A371777.P4994728569872966986

`A191394(2*n)+A174783(2*n+1)`
-/

namespace A371777.P4994728569872966986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191394 (2 * n) + A174783 (2 * n + 1)

end

end A371777.P4994728569872966986

namespace A371777

/-- `A191394(2*n)+A174783(2*n+1)` -/
def P4994728569872966986.Spec : Prop :=
  ∀ n, P4994728569872966986.a n = A371777 n

end A371777

/-! ## A371777.P8932394041011333557

`∑[A058622(2*n+1)-A058622(2*n)]`
-/

namespace A371777.P8932394041011333557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058622 (2 * n + 1) - A058622 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371777.P8932394041011333557

namespace A371777

/-- `∑[A058622(2*n+1)-A058622(2*n)]` -/
def P8932394041011333557.Spec : Prop :=
  ∀ n, P8932394041011333557.a n = A371777 n

end A371777

/-! ## A371777.P15568677179568294316

`A371873(n+1)-A360168(n+1)`
-/

namespace A371777.P15568677179568294316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371873 (n + 1) - A360168 (n + 1)

end

end A371777.P15568677179568294316

namespace A371777

/-- `A371873(n+1)-A360168(n+1)` -/
def P15568677179568294316.Spec : Prop :=
  ∀ n, P15568677179568294316.a n = A371777 n

end A371777

/-! ## A371777.P11303907371629446215

`A000975(2*n+1)-A191394(2*n)`
-/

namespace A371777.P11303907371629446215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (2 * n + 1) - A191394 (2 * n)

end

end A371777.P11303907371629446215

namespace A371777

/-- `A000975(2*n+1)-A191394(2*n)` -/
def P11303907371629446215.Spec : Prop :=
  ∀ n, P11303907371629446215.a n = A371777 n

end A371777

/-! ## A371777.P16881211438580766378

`∑[A113955(∑[n])]`
-/

namespace A371777.P16881211438580766378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113955 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371777.P16881211438580766378

namespace A371777

/-- `∑[A113955(∑[n])]` -/
def P16881211438580766378.Spec : Prop :=
  ∀ n, P16881211438580766378.a n = A371777 n

end A371777

/-! ## A371777.P8491120855883285141

`∑[A141723(∑[n])]`
-/

namespace A371777.P8491120855883285141
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141723 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371777.P8491120855883285141

namespace A371777

/-- `∑[A141723(∑[n])]` -/
def P8491120855883285141.Spec : Prop :=
  ∀ n, P8491120855883285141.a n = A371777 n

end A371777

/-!
# A371778: a(n) = Sum_{k=0..floor(n/3)} binomial(3*n+2,n-3*k).

The programs for A371778, the canonical program `A371778.P903991258052522606` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371778 has offset 0).

The definition of A371778 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(3*n+2, n-3*#)]` (program `A371778.P903991258052522606`, by `A371778.P903991258052522606.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371778.P903991258052522606

`∑{#}[floor(n/3), C(3*n+2, n-3*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371778

/-- `∑{#}[floor(n/3), C(3*n+2, n-3*#)]` -/
def P903991258052522606.Spec : Prop :=
  ∀ n, (P903991258052522606.a n : ℤ) = A371778 n

theorem P903991258052522606.correct : P903991258052522606.Spec := by
  intro n
  simp only [A371778]

end A371778

/-! ## A371778.P8689495218977207823

`A080850(A022267(n+1))`
-/

namespace A371778.P8689495218977207823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080850 (A022267 (n + 1)).toNat

end

end A371778.P8689495218977207823

namespace A371778

/-- `A080850(A022267(n+1))` -/
def P8689495218977207823.Spec : Prop :=
  ∀ n, P8689495218977207823.a n = A371778 n

end A371778

/-! ## A371778.P6744783349972537566

`A131255(A139273(n+1))`
-/

namespace A371778.P6744783349972537566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131255 (A139273 (n + 1)).toNat

end

end A371778.P6744783349972537566

namespace A371778

/-- `A131255(A139273(n+1))` -/
def P6744783349972537566.Spec : Prop :=
  ∀ n, P6744783349972537566.a n = A371778 n

end A371778

/-!
# A371779: a(n) = Sum_{k=0..floor(n/3)} binomial(4*n+2,n-3*k).

The programs for A371779, the canonical program `A371779.P4796728192295152324` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371779 has offset 0).

The definition of A371779 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(4*n+2, n-3*#)]` (program `A371779.P4796728192295152324`, by `A371779.P4796728192295152324.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371779.P4796728192295152324

`∑{#}[floor(n/3), C(4*n+2, n-3*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371779

/-- `∑{#}[floor(n/3), C(4*n+2, n-3*#)]` -/
def P4796728192295152324.Spec : Prop :=
  ∀ n, (P4796728192295152324.a n : ℤ) = A371779 n

theorem P4796728192295152324.correct : P4796728192295152324.Spec := by
  intro n
  simp only [A371779]

end A371779

/-! ## A371779.P6560639442811556121

`A080850(A139273(n+1))`
-/

namespace A371779.P6560639442811556121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080850 (A139273 (n + 1)).toNat

end

end A371779.P6560639442811556121

namespace A371779

/-- `A080850(A139273(n+1))` -/
def P6560639442811556121.Spec : Prop :=
  ∀ n, P6560639442811556121.a n = A371779 n

end A371779

/-!
# A371780: a(n) = Sum_{k=0..floor(n/3)} binomial(5*n+2,n-3*k).

The programs for A371780, the canonical program `A371780.P17791747721969154889` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371780 has offset 0).

The definition of A371780 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(5*n+2, n-3*#)]` (program `A371780.P17791747721969154889`, by `A371780.P17791747721969154889.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371780.P17791747721969154889

`∑{#}[floor(n/3), C(5*n+2, n-3*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371780

/-- `∑{#}[floor(n/3), C(5*n+2, n-3*#)]` -/
def P17791747721969154889.Spec : Prop :=
  ∀ n, (P17791747721969154889.a n : ℤ) = A371780 n

theorem P17791747721969154889.correct : P17791747721969154889.Spec := by
  intro n
  simp only [A371780]

end A371780

/-! ## A371780.P2841024816095226918

`A080850(A080855(n+1)+A051870(n+1))`
-/

namespace A371780.P2841024816095226918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080850 (A080855 (n + 1) + A051870 (n + 1)).toNat

end

end A371780.P2841024816095226918

namespace A371780

/-- `A080850(A080855(n+1)+A051870(n+1))` -/
def P2841024816095226918.Spec : Prop :=
  ∀ n, P2841024816095226918.a n = A371780 n

end A371780

/-! ## A371780.P16746027983037861144

`A131255(A022267(2*n+1)+n)`
-/

namespace A371780.P16746027983037861144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131255 (A022267 (2 * n + 1) + (n : ℤ)).toNat

end

end A371780.P16746027983037861144

namespace A371780

/-- `A131255(A022267(2*n+1)+n)` -/
def P16746027983037861144.Spec : Prop :=
  ∀ n, P16746027983037861144.a n = A371780 n

end A371780

/-! ## A371780.P5072084104060020050

`A131257(A022266(2*n+1)-n)`
-/

namespace A371780.P5072084104060020050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131257 (A022266 (2 * n + 1) - (n : ℤ)).toNat

end

end A371780.P5072084104060020050

namespace A371780

/-- `A131257(A022266(2*n+1)-n)` -/
def P5072084104060020050.Spec : Prop :=
  ∀ n, P5072084104060020050.a n = A371780 n

end A371780

/-!
# A371782: Numbers with non-biquanimous prime signature.

The programs for A371782, there is no canonical definition to state claims against.
-/

/-! ## A371782.P3420865934879297724

`comp[A371781(n+1)-1]+1`
-/

namespace A371782.P3420865934879297724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371781 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A371782.P3420865934879297724

/-! ## A371782.P13706809827668929218

`eq[A320656(n+2), A323170(A006512(n+1))]+2`
-/

namespace A371782.P13706809827668929218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320656 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323170 (A006512 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A371782.P13706809827668929218

/-! ## A371782.P7724689012389925193

`eq[A320656(n+2), A323170(A071155(n+4))]+2`
-/

namespace A371782.P7724689012389925193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320656 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323170 (A071155 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A371782.P7724689012389925193

/-! ## A371782.P6421591498628606967

`eq[1, A287104(A320656(n+1)^n+1)]+1`
-/

namespace A371782.P6421591498628606967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287104 (A320656 (n + 1) ^ n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A371782.P6421591498628606967

/-! ## A371782.P6563813908883637946

`eq[1, A287104(C(A320656(n+1)*n, n)+1)]+1`
-/

namespace A371782.P6563813908883637946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287104 (Nat.choose (A320656 (n + 1) * (n : ℤ)).toNat n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A371782.P6563813908883637946

/-! ## A371782.P12857716361410040290

`lt[A320656(n+1), A046563(A162341(n))]+1`
-/

namespace A371782.P12857716361410040290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046563 (A162341 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A371782.P12857716361410040290

/-! ## A371782.P14939587915013685683

`A362618(n+1)+A000007(A001263(n+1))`
-/

namespace A371782.P14939587915013685683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362618 (n + 1) + A000007 (A001263 (n + 1)).toNat

end

end A371782.P14939587915013685683

/-! ## A371782.P6068912531561859035

`A362618(n+1)%A106096(A002522(3*n+1))`
-/

namespace A371782.P6068912531561859035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362618 (n + 1)) (A106096 (A002522 (3 * n + 1)).toNat)

end

end A371782.P6068912531561859035

/-! ## A371782.P7997848492474137239

`∩[A246716(n+1), A359908(n+1)]`
-/

namespace A371782.P7997848492474137239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371782.P7997848492474137239

/-! ## A371782.P13419612817762362734

`∩[A359908(n+1), A390278(n+1)]`
-/

namespace A371782.P13419612817762362734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371782.P13419612817762362734

/-!
# A371783: Irregular triangle read by rows where T(n,k) is the number of integer partitions of n that can be partitioned into d = A027750(n,k) blocks with equal sums.

The programs for A371783, there is no canonical definition to state claims against.
-/

/-! ## A371783.P12324046799275342540

`filter[A371954(n+1), A168182(#)]`
-/

namespace A371783.P12324046799275342540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168182 (f1 j).toNat = 1) n)

end

end A371783.P12324046799275342540

/-! ## A371783.P6175583539382069262

`filter[A371954(n+1), A168185(#)]`
-/

namespace A371783.P6175583539382069262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A371783.P6175583539382069262

/-! ## A371783.P8858735946654402502

`filter[A371954(n+1), A368916(#)]`
-/

namespace A371783.P8858735946654402502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368916 (f1 j).toNat = 1) n)

end

end A371783.P8858735946654402502

/-! ## A371783.P4524205653217281553

`A371954(lt[A000007(n), A371954(n)])`
-/

namespace A371783.P4524205653217281553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371954 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A371783.P4524205653217281553

/-! ## A371783.P15367701670104716590

`A371954(lt[A151933(n), A371954(n)])`
-/

namespace A371783.P15367701670104716590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371954 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A371783.P15367701670104716590

/-!
# A371784: Numbers with quanimous binary indices. Numbers whose binary indices can be partitioned in more than one way into blocks with the same sum.

The programs for A371784, there is no canonical definition to state claims against.
-/

/-! ## A371784.P7495781103245829447

`lt[1, A321455(A019565(n))]`
-/

namespace A371784.P7495781103245829447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (A019565 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A371784.P7495781103245829447

/-! ## A371784.P1818230312242482341

`lt[1, A321455(A339809(n)+1)]`
-/

namespace A371784.P1818230312242482341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (A339809 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A371784.P1818230312242482341

/-! ## A371784.P12039330266766924264

`lt[1, A336137(n)]`
-/

namespace A371784.P12039330266766924264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336137 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A371784.P12039330266766924264

/-! ## A371784.P8849148079035049724

`lt[1, A371735(n)]`
-/

namespace A371784.P8849148079035049724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A371784.P8849148079035049724

/-! ## A371784.P12606373667351338258

`eq[2, A054977(A135560(n+1))%A336137(n)+1]`
-/

namespace A371784.P12606373667351338258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054977 (A135560 (n + 1)).toNat) (A336137 n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A371784.P12606373667351338258

/-!
# A371785: a(n) = Sum_{k=0..floor(n/2)} (-1)^k * binomial(3*n-k,n-2*k).

The programs for A371785, the canonical program `A371785.P15134094142720973365` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371785 has offset 0).

The definition of A371785 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), (-1)^#*C(3*n-#, n-2*#)]` (program `A371785.P15134094142720973365`, by `A371785.P15134094142720973365.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371785.P1376186988506335118

`∑{#}[n, (-1)^#*C(3*n+#+1, n-#)]`
-/

namespace A371785.P1376186988506335118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * (Nat.choose (3 * n + k + 1) ((n : ℤ) - (k : ℤ)).toNat : ℤ)

end

end A371785.P1376186988506335118

namespace A371785

/-- `∑{#}[n, (-1)^#*C(3*n+#+1, n-#)]` -/
def P1376186988506335118.Spec : Prop :=
  ∀ n, P1376186988506335118.a n = A371785 n

end A371785

/-! ## A371785.P15134094142720973365

`∑{#}[floor(n/2), (-1)^#*C(3*n-#, n-2*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371785

/-- `∑{#}[floor(n/2), (-1)^#*C(3*n-#, n-2*#)]` -/
def P15134094142720973365.Spec : Prop :=
  ∀ n, P15134094142720973365.a n = A371785 n

theorem P15134094142720973365.correct : P15134094142720973365.Spec := by
  intro n
  simp only [A371785]

end A371785

/-! ## A371785.P8515547416138407644

`A361654((n+1)²+n²)`
-/

namespace A371785.P8515547416138407644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361654 ((n + 1) ^ 2 + n ^ 2)

end

end A371785.P8515547416138407644

namespace A371785

/-- `A361654((n+1)²+n²)` -/
def P8515547416138407644.Spec : Prop :=
  ∀ n, P8515547416138407644.a n = A371785 n

end A371785

/-! ## A371785.P17974895842424528181

`record[A003982(n)*A361654(n+1)]`
-/

namespace A371785.P17974895842424528181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A361654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371785.P17974895842424528181

namespace A371785

/-- `record[A003982(n)*A361654(n+1)]` -/
def P17974895842424528181.Spec : Prop :=
  ∀ n, P17974895842424528181.a n = A371785 n

end A371785

/-! ## A371785.P14033178858332919483

`A013580(A022266(n))`
-/

namespace A371785.P14033178858332919483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013580 (A022266 n).toNat

end

end A371785.P14033178858332919483

namespace A371785

/-- `A013580(A022266(n))` -/
def P14033178858332919483.Spec : Prop :=
  ∀ n, P14033178858332919483.a n = A371785 n

end A371785

/-!
# A371786: a(n) = Sum_{k=0..floor(n/2)} (-1)^k * binomial(4*n-k,n-2*k).

The programs for A371786, the canonical program `A371786.P3111706428363062244` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371786 has offset 0).

The definition of A371786 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), (-1)^#*C(4*n-#, n-2*#)]` (program `A371786.P3111706428363062244`, by `A371786.P3111706428363062244.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371786.P6894624651852711423

`∑{#}[n, (-1)^#*C(4*n+#+1, n-#)]`
-/

namespace A371786.P6894624651852711423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * (Nat.choose (4 * n + k + 1) ((n : ℤ) - (k : ℤ)).toNat : ℤ)

end

end A371786.P6894624651852711423

namespace A371786

/-- `∑{#}[n, (-1)^#*C(4*n+#+1, n-#)]` -/
def P6894624651852711423.Spec : Prop :=
  ∀ n, P6894624651852711423.a n = A371786 n

end A371786

/-! ## A371786.P3111706428363062244

`∑{#}[floor(n/2), (-1)^#*C(4*n-#, n-2*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371786

/-- `∑{#}[floor(n/2), (-1)^#*C(4*n-#, n-2*#)]` -/
def P3111706428363062244.Spec : Prop :=
  ∀ n, P3111706428363062244.a n = A371786 n

theorem P3111706428363062244.correct : P3111706428363062244.Spec := by
  intro n
  simp only [A371786]

end A371786

/-! ## A371786.P5853081442008276611

`A361654(A081267(n))`
-/

namespace A371786.P5853081442008276611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361654 (A081267 n).toNat

end

end A371786.P5853081442008276611

namespace A371786

/-- `A361654(A081267(n))` -/
def P5853081442008276611.Spec : Prop :=
  ∀ n, P5853081442008276611.a n = A371786 n

end A371786

/-! ## A371786.P10499735849072979426

`A013580(8*n²-n)`
-/

namespace A371786.P10499735849072979426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013580 (8 * n ^ 2 - n)

end

end A371786.P10499735849072979426

namespace A371786

/-- `A013580(8*n²-n)` -/
def P10499735849072979426.Spec : Prop :=
  ∀ n, P10499735849072979426.a n = A371786 n

end A371786

/-! ## A371786.P9479925645430999424

`A231147(A028994(n)+2)`
-/

namespace A371786.P9479925645430999424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231147 (A028994 n + 2).toNat

end

end A371786.P9479925645430999424

namespace A371786

/-- `A231147(A028994(n)+2)` -/
def P9479925645430999424.Spec : Prop :=
  ∀ n, P9479925645430999424.a n = A371786 n

end A371786

/-!
# A371787: a(n) = Sum_{k=0..floor(n/2)} (-1)^k * binomial(5*n-k,n-2*k).

The programs for A371787, the canonical program `A371787.P8015499697668517595` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371787 has offset 0).

The definition of A371787 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), (-1)^#*C(5*n-#, n-2*#)]` (program `A371787.P8015499697668517595`, by `A371787.P8015499697668517595.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371787.P15607250849592245967

`∑{#}[n, (-1)^#*C(5*n+#+1, n-#)]`
-/

namespace A371787.P15607250849592245967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * (Nat.choose (5 * n + k + 1) ((n : ℤ) - (k : ℤ)).toNat : ℤ)

end

end A371787.P15607250849592245967

namespace A371787

/-- `∑{#}[n, (-1)^#*C(5*n+#+1, n-#)]` -/
def P15607250849592245967.Spec : Prop :=
  ∀ n, P15607250849592245967.a n = A371787 n

end A371787

/-! ## A371787.P8015499697668517595

`∑{#}[floor(n/2), (-1)^#*C(5*n-#, n-2*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371787

/-- `∑{#}[floor(n/2), (-1)^#*C(5*n-#, n-2*#)]` -/
def P8015499697668517595.Spec : Prop :=
  ∀ n, P8015499697668517595.a n = A371787 n

theorem P8015499697668517595.correct : P8015499697668517595.Spec := by
  intro n
  simp only [A371787]

end A371787

/-! ## A371787.P9339635924264797854

`A361654(A005891(2*n)-A001105(n))`
-/

namespace A371787.P9339635924264797854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361654 (A005891 (2 * n) - A001105 n).toNat

end

end A371787.P9339635924264797854

namespace A371787

/-- `A361654(A005891(2*n)-A001105(n))` -/
def P9339635924264797854.Spec : Prop :=
  ∀ n, P9339635924264797854.a n = A371787 n

end A371787

/-!
# A371788: Triangle read by rows where T(n,k) is the number of set partitions of {1..n} with exactly k distinct block-sums.

The programs for A371788, there is no canonical definition to state claims against.
-/

/-! ## A371788.P18050270755229676012

`A162351(A368486(n))`
-/

namespace A371788.P18050270755229676012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162351 (A368486 n).toNat

end

end A371788.P18050270755229676012

/-! ## A371788.P3871111330520464076

`and(A109513(A293113(n)), A293113(n))`
-/

namespace A371788.P3871111330520464076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A109513 (A293113 n).toNat) (A293113 n)

end

end A371788.P3871111330520464076

/-! ## A371788.P10245719680847037958

`A178305(A269944(n))`
-/

namespace A371788.P10245719680847037958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178305 (A269944 n).toNat

end

end A371788.P10245719680847037958

/-! ## A371788.P86328010923480447

`A178305(A266042(n+2))`
-/

namespace A371788.P86328010923480447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178305 (A266042 (n + 2)).toNat

end

end A371788.P86328010923480447

/-! ## A371788.P8831288712151273447

`and(A144156(A259477(n)), A293113(n))`
-/

namespace A371788.P8831288712151273447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A144156 (A259477 n).toNat) (A293113 n)

end

end A371788.P8831288712151273447

/-!
# A371789: Number of non-quanimous subsets of {1..n}, meaning there is only one set partition with all equal block-sums.

The programs for A371789, there is no canonical definition to state claims against.
-/

/-! ## A371789.P15379645446946300517

`2^n-A371796(n)`
-/

namespace A371789.P15379645446946300517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A371796 n

end

end A371789.P15379645446946300517

/-! ## A371789.P592525071619860081

`A371790(n)+a(n-1)` with `a(0)=1`
-/

namespace A371789.P592525071619860081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A371790 n + a (n - 1)

end

end A371789.P592525071619860081

/-! ## A371789.P16214625170706612785

`∑[A371790(C(2, n+2)+n)]`
-/

namespace A371789.P16214625170706612785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371790 (Nat.choose 2 (n + 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371789.P16214625170706612785

/-! ## A371789.P10200183276348440885

`∑[A371790(A028310(n))]`
-/

namespace A371789.P10200183276348440885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371790 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371789.P10200183276348440885

/-! ## A371789.P17962106702705979514

`abs(A000079(n)-A371796(n))`
-/

namespace A371789.P17962106702705979514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A371796 n|

end

end A371789.P17962106702705979514

/-!
# A371790: Number of non-quanimous subsets of {1..n} containing n, meaning there is only one set partition with equal block-sums.

The programs for A371790, there is no canonical definition to state claims against.
-/

/-! ## A371790.P9028941413165584225

`Δ[A371789(n)]`
-/

namespace A371790.P9028941413165584225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371790.P9028941413165584225

/-! ## A371790.P15241862921837736668

`Δ[2^n-A371796(n)]`
-/

namespace A371790.P15241862921837736668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A371796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371790.P15241862921837736668

/-! ## A371790.P16677861602046339897

`2^n-A371797(n+1)`
-/

namespace A371790.P16677861602046339897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A371797 (n + 1)

end

end A371790.P16677861602046339897

/-! ## A371790.P3134909485572915446

`A000079(n)-Δ[A371796(n)]`
-/

namespace A371790.P3134909485572915446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (f1 (n + 1) - f1 n)

end

end A371790.P3134909485572915446

/-! ## A371790.P6497157119543096947

`Δ[xor(A000225(n), A371796(n))]`
-/

namespace A371790.P6497157119543096947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A371796 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371790.P6497157119543096947

/-!
# A371791: Number of biquanimous subsets of {1..n}. Sets with a subset having the same sum as the complement.

The programs for A371791, there is no canonical definition to state claims against.
-/

/-! ## A371791.P13143519152700016824

`2^n-A371792(n)`
-/

namespace A371791.P13143519152700016824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A371792 n

end

end A371791.P13143519152700016824

/-! ## A371791.P9624901434915146996

`A232466(n)+a(n-1)` with `a(0)=1`
-/

namespace A371791.P9624901434915146996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A232466 n + a (n - 1)

end

end A371791.P9624901434915146996

/-! ## A371791.P179571791044786325

`∑[A232466(A028310(n))]+1`
-/

namespace A371791.P179571791044786325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232466 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A371791.P179571791044786325

/-! ## A371791.P2189488403785107537

`abs(A000079(n)-A371792(n))`
-/

namespace A371791.P2189488403785107537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A371792 n|

end

end A371791.P2189488403785107537

/-! ## A371791.P8569362314768419607

`A000051(n)-(A371792(n)+1)`
-/

namespace A371791.P8569362314768419607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A371792 n + 1)

end

end A371791.P8569362314768419607

/-!
# A371792: Number of non-biquanimous subsets of {1..n}. Sets with no subset having the same sum as the complement.

The programs for A371792, there is no canonical definition to state claims against.
-/

/-! ## A371792.P13562772994251403949

`2^n-A371791(n)`
-/

namespace A371792.P13562772994251403949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A371791 n

end

end A371792.P13562772994251403949

/-! ## A371792.P15056095430396345542

`A371793(n)+a(n-1)` with `a(0)=0`
-/

namespace A371792.P15056095430396345542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A371793 n + a (n - 1)

end

end A371792.P15056095430396345542

/-! ## A371792.P5829146101203547234

`∑[A371793(A028310(n))]-1`
-/

namespace A371792.P5829146101203547234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371793 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A371792.P5829146101203547234

/-! ## A371792.P5584471460084181646

`abs(A000079(n)-A371791(n))`
-/

namespace A371792.P5584471460084181646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A371791 n|

end

end A371792.P5584471460084181646

/-! ## A371792.P16830694008087302562

`A000051(n)-(A371791(n)+1)`
-/

namespace A371792.P16830694008087302562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A371791 n + 1)

end

end A371792.P16830694008087302562

/-!
# A371793: Number of non-biquanimous subsets of {1..n} containing n.

The programs for A371793, there is no canonical definition to state claims against.
-/

/-! ## A371793.P2463846640543075576

`Δ[A371792(n)]`
-/

namespace A371793.P2463846640543075576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371793.P2463846640543075576

/-! ## A371793.P1971128542788422199

`Δ[2^n-A371791(n)]`
-/

namespace A371793.P1971128542788422199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A371791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371793.P1971128542788422199

/-! ## A371793.P16503457606510055912

`2^n-A232466(n+1)`
-/

namespace A371793.P16503457606510055912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A232466 (n + 1)

end

end A371793.P16503457606510055912

/-! ## A371793.P16564568574123501577

`A000079(n)-Δ[A371791(n)]`
-/

namespace A371793.P16564568574123501577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (f1 (n + 1) - f1 n)

end

end A371793.P16564568574123501577

/-! ## A371793.P14057655655813044689

`A371792(n+1)-A371792(n)`
-/

namespace A371793.P14057655655813044689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371792 (n + 1) - A371792 n

end

end A371793.P14057655655813044689

/-!
# A371794: Number of non-biquanimous strict integer partitions of n.

The programs for A371794, there is no canonical definition to state claims against.
-/

/-! ## A371794.P3088184939854100610

`A371736(n)-A010815(A194062(3*n+5))`
-/

namespace A371794.P3088184939854100610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371736 n - A010815 (A194062 (3 * n + 5)).toNat

end

end A371794.P3088184939854100610

/-! ## A371794.P13243120699735163040

`A371736(n)%record[A156225(n)]`
-/

namespace A371794.P13243120699735163040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371736 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A371794.P13243120699735163040

/-! ## A371794.P10887767970832518125

`A174713(A135276(n))-A000007(n)`
-/

namespace A371794.P10887767970832518125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174713 (A135276 n).toNat - A000007 n

end

end A371794.P10887767970832518125

/-! ## A371794.P13349593136827370724

`A371736(n)-A000007(A001045(n))`
-/

namespace A371794.P13349593136827370724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371736 n - A000007 (A001045 n).toNat

end

end A371794.P13349593136827370724

/-! ## A371794.P13708578061326420607

`A371736(n)-A214292(A109151(n))`
-/

namespace A371794.P13708578061326420607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371736 n - A214292 (A109151 n).toNat

end

end A371794.P13708578061326420607

/-!
# A371796: Number of quanimous subsets of {1..n}, meaning there is more than one set partition with all equal block-sums.

The programs for A371796, there is no canonical definition to state claims against.
-/

/-! ## A371796.P3811850523613259770

`2^n-A371789(n)`
-/

namespace A371796.P3811850523613259770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A371789 n

end

end A371796.P3811850523613259770

/-! ## A371796.P13433895813742875764

`∑[A371797(A028310(n))]`
-/

namespace A371796.P13433895813742875764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371797 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371796.P13433895813742875764

/-! ## A371796.P15139608368402075887

`abs(A000079(n)-A371789(n))`
-/

namespace A371796.P15139608368402075887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A371789 n|

end

end A371796.P15139608368402075887

/-! ## A371796.P6612347738355627384

`and(-A371789(n), A000225(n))`
-/

namespace A371796.P6612347738355627384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A371789 n) (A000225 n)

end

end A371796.P6612347738355627384

/-! ## A371796.P2506545532969251392

`∑[A371797(A000007(n)+n)]`
-/

namespace A371796.P2506545532969251392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371797 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371796.P2506545532969251392

/-!
# A371797: Number of quanimous subsets of {1..n} containing n, meaning there is more than one set partition with equal block-sums.

The programs for A371797, there is no canonical definition to state claims against.
-/

/-! ## A371797.P6579930326533174478

`Δ[A371796(n)]`
-/

namespace A371797.P6579930326533174478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371797.P6579930326533174478

/-! ## A371797.P14204792542086721817

`Δ[2^n-A371789(n)]`
-/

namespace A371797.P14204792542086721817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A371789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371797.P14204792542086721817

/-! ## A371797.P15390132642947805788

`2^n-A371790(n+1)`
-/

namespace A371797.P15390132642947805788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A371790 (n + 1)

end

end A371797.P15390132642947805788

/-! ## A371797.P2913969377413559586

`A000079(n)-Δ[A371789(n)]`
-/

namespace A371797.P2913969377413559586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (f1 (n + 1) - f1 n)

end

end A371797.P2913969377413559586

/-! ## A371797.P4808970583741865827

`A371796(n+1)-A371796(n)`
-/

namespace A371797.P4808970583741865827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371796 (n + 1) - A371796 n

end

end A371797.P4808970583741865827

/-!
# A371798: a(n) = Sum_{k=0..floor(n/2)} (-1)^k * binomial(2*n-2*k-1,n-2*k).

The programs for A371798, the canonical program `A371798.P10838692372343515482` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371798 has offset 0).

The definition of A371798 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A371798.P10838692372343515482

`∑{#}[n, (-2)^#*C(2*n+#+1, n-#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371798

/-- `∑{#}[n, (-2)^#*C(2*n+#+1, n-#)]` -/
def P10838692372343515482.Spec : Prop :=
  ∀ n, P10838692372343515482.a n = A371798 n

theorem P10838692372343515482.correct : P10838692372343515482.Spec := by
  intro n
  simp only [A371798]

end A371798

/-! ## A371798.P8210631428457050042

`A176332(n)-abs(A181933(n))`
-/

namespace A371798.P8210631428457050042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176332 n - |A181933 n|

end

end A371798.P8210631428457050042

namespace A371798

/-- `A176332(n)-abs(A181933(n))` -/
def P8210631428457050042.Spec : Prop :=
  ∀ n, P8210631428457050042.a n = A371798 n

end A371798

/-! ## A371798.P17966014393400105926

`A390683(n+1)-A390680(n+1)`
-/

namespace A371798.P17966014393400105926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390683 (n + 1) - A390680 (n + 1)

end

end A371798.P17966014393400105926

namespace A371798

/-- `A390683(n+1)-A390680(n+1)` -/
def P17966014393400105926.Spec : Prop :=
  ∀ n, P17966014393400105926.a n = A371798 n

end A371798

/-! ## A371798.P5505311687819582817

`A008620(A000758(n+1))`
-/

namespace A371798.P5505311687819582817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A000758 (n + 1)).toNat

end

end A371798.P5505311687819582817

namespace A371798

/-- `A008620(A000758(n+1))` -/
def P5505311687819582817.Spec : Prop :=
  ∀ n, P5505311687819582817.a n = A371798 n

end A371798

/-!
# A371799: Rectangular array, read by downward antidiagonals: row n shows the numbers m>1 in whose prime factorization p(1)^e(1)*p(2)^e(2)* ...*p(k)^e(k), all e(i) are <= 1 and the number of 0' s in {e(i)} is n-1.

The programs for A371799, there is no canonical definition to state claims against.
-/

/-! ## A371799.P13803283328429208305

`A156259(A077946(n))+A125666(n+1)`
-/

namespace A371799.P13803283328429208305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156259 (A077946 n).toNat + A125666 (n + 1)

end

end A371799.P13803283328429208305

/-! ## A371799.P6322138723084634531

`A188170(A058279(n))+A125666(n+1)`
-/

namespace A371799.P6322138723084634531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188170 (A058279 n).toNat + A125666 (n + 1)

end

end A371799.P6322138723084634531

/-! ## A371799.P11933593230769207767

`A125666(n+1)+A025441(A322451(n))`
-/

namespace A371799.P11933593230769207767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125666 (n + 1) + A025441 (A322451 n).toNat

end

end A371799.P11933593230769207767

