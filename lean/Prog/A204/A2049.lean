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
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C043
import Seq.B000.C047
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
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B007.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A204900: Least k such that n divides s(k)-s(j) for some j in [1,k), where s(k) is the k-th odd prime.

The programs for A204900, there is no canonical definition to state claims against.
-/

/-! ## A204900.P1028488456756922361

`A000720(A204902(n+1)-1)`
-/

namespace A204900.P1028488456756922361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A204902 (n + 1) - 1).toNat

end

end A204900.P1028488456756922361

/-! ## A204900.P15781716637408231152

`A302039(A204902(n+1))-A057427(n+1)`
-/

namespace A204900.P15781716637408231152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (A204902 (n + 1)).toNat - A057427 (n + 1)

end

end A204900.P15781716637408231152

/-! ## A204900.P10976475925385296260

`A000720(A204903(n+1)+A022998(n))`
-/

namespace A204900.P10976475925385296260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A204903 (n + 1) + A022998 n).toNat

end

end A204900.P10976475925385296260

/-! ## A204900.P12039632961064548379

`A204892(lcm(2, n+1))-1`
-/

namespace A204900.P12039632961064548379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (Nat.lcm 2 (n + 1)) - 1

end

end A204900.P12039632961064548379

/-! ## A204900.P501713706709577992

`A204892((n+1)*gcd(2, n))-1`
-/

namespace A204900.P501713706709577992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 ((n + 1) * Nat.gcd 2 n) - 1

end

end A204900.P501713706709577992

/-! ## A204900.P912993742538465004

`A204892(Δ[A152749(n)])-1`
-/

namespace A204900.P912993742538465004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (f1 (n + 1) - f1 n).toNat - 1

end

end A204900.P912993742538465004

/-! ## A204900.P5997180971263944481

`A204892(A109043(n+1))-1`
-/

namespace A204900.P5997180971263944481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A109043 (n + 1)).toNat - 1

end

end A204900.P5997180971263944481

/-! ## A204900.P12445331908707433910

`A204892(A066043(n+1))-A057427(n)`
-/

namespace A204900.P12445331908707433910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A066043 (n + 1)).toNat - A057427 n

end

end A204900.P12445331908707433910

/-! ## A204900.P6879370941782904241

`A204892(gcd(A002378(n+1), A002378(n)))-1`
-/

namespace A204900.P6879370941782904241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (Int.gcd (A002378 (n + 1)) (A002378 n)) - 1

end

end A204900.P6879370941782904241

/-! ## A204900.P3226985296027337820

`A033270(A204902(n+1))`
-/

namespace A204900.P3226985296027337820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A204902 (n + 1)).toNat

end

end A204900.P3226985296027337820

/-! ## A204900.P10704655242687837132

`A033270(A204894(lcm(2, n+1)))`
-/

namespace A204900.P10704655242687837132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A204894 (Nat.lcm 2 (n + 1))).toNat

end

end A204900.P10704655242687837132

/-! ## A204900.P18401449790314019238

`A033270(A020484(Δ[A001318(n)]))`
-/

namespace A204900.P18401449790314019238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A020484 (f1 (n + 1) - f1 n).toNat).toNat

end

end A204900.P18401449790314019238

/-! ## A204900.P15910630644202972253

`A233583(A204892(Δ[A152749(n)]))`
-/

namespace A204900.P15910630644202972253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A204892 (f1 (n + 1) - f1 n).toNat).toNat

end

end A204900.P15910630644202972253

/-!
# A204901: The index j<k such that n divides s(k)-s(j), where k is the least index (A204900) for which such j exists, and s(k) denotes the k-th odd prime.

The programs for A204901, there is no canonical definition to state claims against.
-/

/-! ## A204901.P15965240721332715843

`A033270(A204903(n+1))`
-/

namespace A204901.P15965240721332715843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A204903 (n + 1)).toNat

end

end A204901.P15965240721332715843

/-! ## A204901.P10253965219418008869

`A000720(A204903(n+1)-1)`
-/

namespace A204901.P10253965219418008869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A204903 (n + 1) - 1).toNat

end

end A204901.P10253965219418008869

/-! ## A204901.P5194178583266847379

`A241919(2*A204903(n+1))`
-/

namespace A204901.P5194178583266847379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241919 (2 * A204903 (n + 1)).toNat

end

end A204901.P5194178583266847379

/-! ## A204901.P2552148403030438536

`A000720(xor(1, A204903(n+1)))`
-/

namespace A204901.P2552148403030438536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.xor 1 (A204903 (n + 1))).toNat

end

end A204901.P2552148403030438536

/-! ## A204901.P6936273486828851397

`A204900(A204903(n+1)-1)-1`
-/

namespace A204901.P6936273486828851397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204900 (A204903 (n + 1) - 1).toNat - 1

end

end A204901.P6936273486828851397

/-! ## A204901.P1424274602865909772

`A033270(A020483(Δ[A001318(n)]))`
-/

namespace A204901.P1424274602865909772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A020483 (f1 (n + 1) - f1 n).toNat).toNat

end

end A204901.P1424274602865909772

/-! ## A204901.P13636926847820071925

`A033270(A204902(n+1)-A066043(n+1))`
-/

namespace A204901.P13636926847820071925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A204902 (n + 1) - A066043 (n + 1)).toNat

end

end A204901.P13636926847820071925

/-! ## A204901.P5153706422653582267

`A241919(A204903(n+1)²)-1`
-/

namespace A204901.P5153706422653582267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241919 (A204903 (n + 1) ^ 2).toNat - 1

end

end A204901.P5153706422653582267

/-! ## A204901.P12608935171504082686

`A002260(A204899(n+1))`
-/

namespace A204901.P12608935171504082686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A204899 (n + 1)).toNat

end

end A204901.P12608935171504082686

/-! ## A204901.P3643513624945610959

`A033270(A204902(n+1)-A204904(n+1))`
-/

namespace A204901.P3643513624945610959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A204902 (n + 1) - A204904 (n + 1)).toNat

end

end A204901.P3643513624945610959

/-!
# A204902: Least prime p such that n divides p-q for some odd prime q<p.

The programs for A204902, there is no canonical definition to state claims against.
-/

/-! ## A204902.P4195984825832031559

`A020484(gcd(n+1, ∑[n]))`
-/

namespace A204902.P4195984825832031559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A204902.P4195984825832031559

/-! ## A204902.P15189178440278860256

`A020484((n+1)/gcd(4, 3-n²))`
-/

namespace A204902.P15189178440278860256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.gcd 4 (3 - (n ^ 2 : ℤ)) : ℚ))).toNat

end

end A204902.P15189178440278860256

/-! ## A204902.P4377163131631505196

`A020484(n+1-∑[n]%(n+1))`
-/

namespace A204902.P4377163131631505196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (n + 1 - (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))

end

end A204902.P4377163131631505196

/-! ## A204902.P6728673535628265497

`A020484(Δ[A001318(n)])`
-/

namespace A204902.P6728673535628265497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (f1 (n + 1) - f1 n).toNat

end

end A204902.P6728673535628265497

/-! ## A204902.P559484211415187195

`A020484(A026741(n+1))`
-/

namespace A204902.P559484211415187195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (A026741 (n + 1)).toNat

end

end A204902.P559484211415187195

/-! ## A204902.P9883697594146317709

`A020484(∑[1-A001057(n)])`
-/

namespace A204902.P9883697594146317709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A204902.P9883697594146317709

/-! ## A204902.P10790880025043633605

`A020484((n+1)/A000034(n))`
-/

namespace A204902.P10790880025043633605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000034 n : ℚ))).toNat

end

end A204902.P10790880025043633605

/-! ## A204902.P15612573629090138119

`A020484(A001318(n+1)-A001318(n))`
-/

namespace A204902.P15612573629090138119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (A001318 (n + 1) - A001318 n).toNat

end

end A204902.P15612573629090138119

/-! ## A204902.P2249159917645204180

`A045344(A204900(n+1))`
-/

namespace A204902.P2249159917645204180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A204900 (n + 1)).toNat

end

end A204902.P2249159917645204180

/-! ## A204902.P15354953503404597860

`A000040(A204900(n+1)+1)`
-/

namespace A204902.P15354953503404597860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A204900 (n + 1) + 1).toNat

end

end A204902.P15354953503404597860

/-! ## A204902.P11354798484603629011

`A040976(A204900(n+1)+1)+2`
-/

namespace A204902.P11354798484603629011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (A204900 (n + 1) + 1).toNat + 2

end

end A204902.P11354798484603629011

/-! ## A204902.P6574081558908087976

`A204894(lcm(2, n+1))`
-/

namespace A204902.P6574081558908087976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (Nat.lcm 2 (n + 1))

end

end A204902.P6574081558908087976

/-! ## A204902.P16174411418638023549

`A204894(A109043(n+1))`
-/

namespace A204902.P16174411418638023549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (A109043 (n + 1)).toNat

end

end A204902.P16174411418638023549

/-! ## A204902.P4490816908527910106

`A204894((n+1)*A000034(n+1))`
-/

namespace A204902.P4490816908527910106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 ((n + 1 : ℤ) * A000034 (n + 1)).toNat

end

end A204902.P4490816908527910106

/-! ## A204902.P17681578546556430315

`A204894((n+1)*A040001(n+2))`
-/

namespace A204902.P17681578546556430315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 ((n + 1 : ℤ) * A040001 (n + 2)).toNat

end

end A204902.P17681578546556430315

/-! ## A204902.P6968179805472879581

`A204894(gcd(2*(n+1), A002378(n)))`
-/

namespace A204902.P6968179805472879581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (Int.gcd (2 * (n + 1) : ℤ) (A002378 n))

end

end A204902.P6968179805472879581

/-! ## A204902.P2168878190102840294

`A204903(n+1)+A204898(A204899(n+1))`
-/

namespace A204902.P2168878190102840294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204903 (n + 1) + A204898 (A204899 (n + 1)).toNat

end

end A204902.P2168878190102840294

/-!
# A204903: The odd prime q such that n divides p-q, where p>q is the least prime for which such a prime q exists.

The programs for A204903, there is no canonical definition to state claims against.
-/

/-! ## A204903.P10398014337711787456

`A020483(gcd(n+1, ∑[n]))`
-/

namespace A204903.P10398014337711787456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A204903.P10398014337711787456

/-! ## A204903.P16268445798466693789

`A020483(lcm(2, n+1)/2)`
-/

namespace A204903.P16268445798466693789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 1) : ℚ) / 2)).toNat

end

end A204903.P16268445798466693789

/-! ## A204903.P18071482794751969095

`A020483((n+1)/(and(1, n)+1))`
-/

namespace A204903.P18071482794751969095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.land 1 n + 1 : ℚ))).toNat

end

end A204903.P18071482794751969095

/-! ## A204903.P8721101771687820452

`A054906((n+1)/(and(1, n)+1))`
-/

namespace A204903.P8721101771687820452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054906 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.land 1 n + 1 : ℚ))).toNat

end

end A204903.P8721101771687820452

/-! ## A204903.P590510325877642400

`A020483(Δ[A001318(n)])`
-/

namespace A204903.P590510325877642400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (f1 (n + 1) - f1 n).toNat

end

end A204903.P590510325877642400

/-! ## A204903.P13266434432074015942

`A020483(A026741(n+1))`
-/

namespace A204903.P13266434432074015942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (A026741 (n + 1)).toNat

end

end A204903.P13266434432074015942

/-! ## A204903.P862817239449376913

`A020483(∑[1-A001057(n)])`
-/

namespace A204903.P862817239449376913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A204903.P862817239449376913

/-! ## A204903.P9442658670895822236

`A020483((n+1)/A000034(n))`
-/

namespace A204903.P9442658670895822236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000034 n : ℚ))).toNat

end

end A204903.P9442658670895822236

/-! ## A204903.P13985654251166281677

`A020483((n+1)²/A022998(n+1))`
-/

namespace A204903.P13985654251166281677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A022998 (n + 1) : ℚ))).toNat

end

end A204903.P13985654251166281677

/-! ## A204903.P5220515044547520583

`A020483(A001318(n+1)-A001318(n))`
-/

namespace A204903.P5220515044547520583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (A001318 (n + 1) - A001318 n).toNat

end

end A204903.P5220515044547520583

/-! ## A204903.P6483334910281781772

`A020483((n+1)/(A007310(n+1)-A008585(n)))`
-/

namespace A204903.P6483334910281781772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007310 (n + 1) - A008585 n : ℚ))).toNat

end

end A204903.P6483334910281781772

/-! ## A204903.P4130297527039385880

`A065091(A204901(n+1))`
-/

namespace A204903.P4130297527039385880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A204901 (n + 1)).toNat

end

end A204903.P4130297527039385880

/-! ## A204903.P5203694980921673308

`A000040(A204901(n+1)+1)`
-/

namespace A204903.P5203694980921673308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A204901 (n + 1) + 1).toNat

end

end A204903.P5203694980921673308

/-! ## A204903.P14488406694284555102

`A020483(A008619(2*n)/2^and(1, n))`
-/

namespace A204903.P14488406694284555102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (SequenceMachineLib.roundAway ((A008619 (2 * n) : ℚ) / (2 ^ Nat.land 1 n : ℚ))).toNat

end

end A204903.P14488406694284555102

/-! ## A204903.P1699559715862195929

`A204894(A109043(n+1))-A109043(n+1)`
-/

namespace A204903.P1699559715862195929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (A109043 (n + 1)).toNat - A109043 (n + 1)

end

end A204903.P1699559715862195929

/-! ## A204903.P7345960262311355403

`A204895(lcm(2, n+1))`
-/

namespace A204903.P7345960262311355403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204895 (Nat.lcm 2 (n + 1))

end

end A204903.P7345960262311355403

/-! ## A204903.P7614825157056530488

`A204895((n+1)*A040001(n+2))`
-/

namespace A204903.P7614825157056530488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204895 ((n + 1 : ℤ) * A040001 (n + 2)).toNat

end

end A204903.P7614825157056530488

/-! ## A204903.P16383787155433852542

`A204902(n+1)-A204898(A204899(n+1))`
-/

namespace A204903.P16383787155433852542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204902 (n + 1) - A204898 (A204899 (n + 1)).toNat

end

end A204903.P16383787155433852542

/-!
# A204904: p(n)-q(n), where (p(n), q(n)) is the least pair of odd primes for which n divides p(n)-q(n).

The programs for A204904, there is no canonical definition to state claims against.
-/

/-! ## A204904.P5436333189869704988

`lcm(2, 1+n)`
-/

namespace A204904.P5436333189869704988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (1 + n)

end

end A204904.P5436333189869704988

/-! ## A204904.P4654338593348979211

`(1+n)*gcd(2, n)`
-/

namespace A204904.P4654338593348979211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + n) * Nat.gcd 2 n

end

end A204904.P4654338593348979211

/-! ## A204904.P2104397843584222156

`or(n, -2)*xor(n, -1)`
-/

namespace A204904.P2104397843584222156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-2) * Int.xor (n : ℤ) (-1)

end

end A204904.P2104397843584222156

/-! ## A204904.P16331327219688289313

`sqrt(lcm(4, xor(n, -1)²))`
-/

namespace A204904.P16331327219688289313
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.lcm 4 (Int.xor (n : ℤ) (-1) ^ 2) : ℝ)

end

end A204904.P16331327219688289313

/-! ## A204904.P17139658954501111473

`(n+1)*(2-n%2)`
-/

namespace A204904.P17139658954501111473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - ((n % 2 : ℕ) : ℤ))

end

end A204904.P17139658954501111473

/-! ## A204904.P16663783541074361824

`(n+1)*(2-and(1, n))`
-/

namespace A204904.P16663783541074361824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - (Nat.land 1 n : ℤ))

end

end A204904.P16663783541074361824

/-! ## A204904.P8341656781075647916

`abs((n+1)*or(n, -2))`
-/

namespace A204904.P8341656781075647916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * Int.lor (n : ℤ) (-2)|

end

end A204904.P8341656781075647916

/-! ## A204904.P3829241887265197828

`gcd(n+2, and(1, n))+n`
-/

namespace A204904.P3829241887265197828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 2) (Nat.land 1 n) + n

end

end A204904.P3829241887265197828

/-! ## A204904.P1895806550344666165

`-((n+1)*or(n, -2))`
-/

namespace A204904.P1895806550344666165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1 : ℤ) * Int.lor (n : ℤ) (-2))

end

end A204904.P1895806550344666165

/-!
# A204905: Least k such that n divides k^2-j^2 for some j satisfying 1<=j<k.

The programs for A204905, there is no canonical definition to state claims against.
-/

/-! ## A204905.P2543685702447902068

`sqrt(A204998(n+1)+A204997(n+1))`
-/

namespace A204905.P2543685702447902068
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A204998 (n + 1) + A204997 (n + 1) : ℝ)

end

end A204905.P2543685702447902068

/-! ## A204905.P4630240512487735272

`sqrt(A204996(n+1))`
-/

namespace A204905.P4630240512487735272
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A204996 (n + 1) : ℝ)

end

end A204905.P4630240512487735272

/-! ## A204905.P2075681770791467622

`A028310(root(A204996(n+1), 2))`
-/

namespace A204905.P2075681770791467622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A204996 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A204905.P2075681770791467622

/-! ## A204905.P12146633883624460731

`root(A204996(n+1), A020639(2*(n+1)))`
-/

namespace A204905.P12146633883624460731
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204996 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A204905.P12146633883624460731

/-! ## A204905.P4664235961670917998

`root(A204996(n+1), A000034(2*n+1))`
-/

namespace A204905.P4664235961670917998
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204996 (n + 1) : ℝ) ^ (1 / (A000034 (2 * n + 1) : ℝ))

end

end A204905.P4664235961670917998

/-! ## A204905.P7115484926007711944

`A003057(A204994(n+1)+1)`
-/

namespace A204905.P7115484926007711944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A204994 (n + 1) + 1).toNat

end

end A204905.P7115484926007711944

/-! ## A204905.P16343993203156593840

`A000194(A204996(n+1)-1)`
-/

namespace A204905.P16343993203156593840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A204996 (n + 1) - 1).toNat

end

end A204905.P16343993203156593840

/-! ## A204905.P17647101711351055196

`A000196(A204996(n+1)+1)`
-/

namespace A204905.P17647101711351055196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A204996 (n + 1) + 1).toNat

end

end A204905.P17647101711351055196

/-! ## A204905.P1755665376361601517

`A204996(n+1)/A000194(A204996(n+1)+1)`
-/

namespace A204905.P1755665376361601517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204996 (n + 1) : ℚ) / (A000194 (A204996 (n + 1) + 1).toNat : ℚ)

end

end A204905.P1755665376361601517

/-! ## A204905.P6276171640847678672

`A002260(2*A204996(n+1))`
-/

namespace A204905.P6276171640847678672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * A204996 (n + 1)).toNat

end

end A204905.P6276171640847678672

/-! ## A204905.P5618138937763210823

`A000188(lcm(2, A204996(n+1)))`
-/

namespace A204905.P5618138937763210823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (Int.lcm 2 (A204996 (n + 1)))

end

end A204905.P5618138937763210823

/-! ## A204905.P11889421451341884425

`A000188(2*A204996(n+1))`
-/

namespace A204905.P11889421451341884425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (2 * A204996 (n + 1)).toNat

end

end A204905.P11889421451341884425

/-! ## A204905.P9187439069307080075

`A002262(2*A204996(n+1))`
-/

namespace A204905.P9187439069307080075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * A204996 (n + 1)).toNat

end

end A204905.P9187439069307080075

/-! ## A204905.P10797441480356124522

`A003983(2*A204996(n+1))`
-/

namespace A204905.P10797441480356124522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (2 * A204996 (n + 1)).toNat

end

end A204905.P10797441480356124522

/-! ## A204905.P12855171965546122491

`A003983(A204996(n+1)+A204996(n+1)+1)`
-/

namespace A204905.P12855171965546122491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (A204996 (n + 1) + (A204996 (n + 1) + 1)).toNat

end

end A204905.P12855171965546122491

/-!
# A204906: Ordered differences of primes >=5.

The programs for A204906, the canonical program `A204906.P7021400860210866951` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204906 has offset 1).

The definition of A204906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204906.P8106515621572018410

`2*A204980(n+1)-A204898(n+1)`
-/

namespace A204906.P8106515621572018410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204980 (n + 1) - A204898 (n + 1)

end

end A204906.P8106515621572018410

namespace A204906

/-- `2*A204980(n+1)-A204898(n+1)` -/
def P8106515621572018410.Spec : Prop :=
  ∀ n, P8106515621572018410.a n = A204906 (n + 1)

end A204906

/-! ## A204906.P15499204936424814471

`2*(A204980(n+1)-A205558(n+1))`
-/

namespace A204906.P15499204936424814471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A204980 (n + 1) - A205558 (n + 1))

end

end A204906.P15499204936424814471

namespace A204906

/-- `2*(A204980(n+1)-A205558(n+1))` -/
def P15499204936424814471.Spec : Prop :=
  ∀ n, P15499204936424814471.a n = A204906 (n + 1)

end A204906

/-! ## A204906.P5030205290146614593

`A004277(A204980(n+1))-A204898(n+1)`
-/

namespace A204906.P5030205290146614593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A204980 (n + 1)).toNat - A204898 (n + 1)

end

end A204906.P5030205290146614593

namespace A204906

/-- `A004277(A204980(n+1))-A204898(n+1)` -/
def P5030205290146614593.Spec : Prop :=
  ∀ n, P5030205290146614593.a n = A204906 (n + 1)

end A204906

/-! ## A204906.P3882314933866261220

`A004277(A204980(n+1)-A205558(n+1))`
-/

namespace A204906.P3882314933866261220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A204980 (n + 1) - A205558 (n + 1)).toNat

end

end A204906.P3882314933866261220

namespace A204906

/-- `A004277(A204980(n+1)-A205558(n+1))` -/
def P3882314933866261220.Spec : Prop :=
  ∀ n, P3882314933866261220.a n = A204906 (n + 1)

end A204906

/-! ## A204906.P9217534385273186382

`A005843(A204980(n+1)-A205558(n+1))`
-/

namespace A204906.P9217534385273186382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A204980 (n + 1) - A205558 (n + 1)).toNat

end

end A204906.P9217534385273186382

namespace A204906

/-- `A005843(A204980(n+1)-A205558(n+1))` -/
def P9217534385273186382.Spec : Prop :=
  ∀ n, P9217534385273186382.a n = A204906 (n + 1)

end A204906

/-! ## A204906.P7021400860210866951

`A204898(A080036(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A204906

/-- `A204898(A080036(n+1))` -/
def P7021400860210866951.Spec : Prop :=
  ∀ n, P7021400860210866951.a n = A204906 (n + 1)

theorem P7021400860210866951.correct : P7021400860210866951.Spec := by
  intro n
  simp only [A204906, Nat.add_sub_cancel]

end A204906

/-! ## A204906.P16763488896990805646

`A204898(A133196(n+1)+n)`
-/

namespace A204906.P16763488896990805646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204898 (A133196 (n + 1) + (n : ℤ)).toNat

end

end A204906.P16763488896990805646

namespace A204906

/-- `A204898(A133196(n+1)+n)` -/
def P16763488896990805646.Spec : Prop :=
  ∀ n, P16763488896990805646.a n = A204906 (n + 1)

end A204906

/-! ## A204906.P13601543308783897300

`A204898(A003056(n)+3+n)`
-/

namespace A204906.P13601543308783897300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204898 (A003056 n + 3 + (n : ℤ)).toNat

end

end A204906.P13601543308783897300

namespace A204906

/-- `A204898(A003056(n)+3+n)` -/
def P13601543308783897300.Spec : Prop :=
  ∀ n, P13601543308783897300.a n = A204906 (n + 1)

end A204906

/-! ## A204906.P13518113332897387775

`2*A205558(A133196(n+1)+n)`
-/

namespace A204906.P13518113332897387775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A205558 (A133196 (n + 1) + (n : ℤ)).toNat

end

end A204906.P13518113332897387775

namespace A204906

/-- `2*A205558(A133196(n+1)+n)` -/
def P13518113332897387775.Spec : Prop :=
  ∀ n, P13518113332897387775.a n = A204906 (n + 1)

end A204906

/-! ## A204906.P11373381402080879497

`A204890(2*A133196(n+1)+n)`
-/

namespace A204906.P11373381402080879497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (2 * A133196 (n + 1) + (n : ℤ)).toNat

end

end A204906.P11373381402080879497

namespace A204906

/-- `A204890(2*A133196(n+1)+n)` -/
def P11373381402080879497.Spec : Prop :=
  ∀ n, P11373381402080879497.a n = A204906 (n + 1)

end A204906

/-! ## A204906.P12196584227752774148

`A204890(A133196(n+1)+A133196(n+1)+n)`
-/

namespace A204906.P12196584227752774148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (A133196 (n + 1) + (A133196 (n + 1) + (n : ℤ))).toNat

end

end A204906.P12196584227752774148

namespace A204906

/-- `A204890(A133196(n+1)+A133196(n+1)+n)` -/
def P12196584227752774148.Spec : Prop :=
  ∀ n, P12196584227752774148.a n = A204906 (n + 1)

end A204906

/-! ## A204906.P212366702965561881

`A000267(A204980(n+1)²)-A204898(n+1)`
-/

namespace A204906.P212366702965561881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A204980 (n + 1) ^ 2).toNat - A204898 (n + 1)

end

end A204906.P212366702965561881

namespace A204906

/-- `A000267(A204980(n+1)²)-A204898(n+1)` -/
def P212366702965561881.Spec : Prop :=
  ∀ n, P212366702965561881.a n = A204906 (n + 1)

end A204906

/-!
# A204908: Least k such that n divides s(k)-s(j) for some j in [1,k], where s(k) is the k-th prime >=5.

The programs for A204908, there is no canonical definition to state claims against.
-/

/-! ## A204908.P1932756397401161940

`A000720(A204910(n+1))-2`
-/

namespace A204908.P1932756397401161940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A204910 (n + 1)).toNat - 2

end

end A204908.P1932756397401161940

/-! ## A204908.P16382168998525506931

`A082513(A204910(n+1))`
-/

namespace A204908.P16382168998525506931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082513 (A204910 (n + 1)).toNat

end

end A204908.P16382168998525506931

/-! ## A204908.P4840145525255171240

`A033270(A204910(n+1)-1)`
-/

namespace A204908.P4840145525255171240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A204910 (n + 1) - 1).toNat

end

end A204908.P4840145525255171240

/-! ## A204908.P5959263641786097871

`A033270(xor(1, A204910(n+1)))`
-/

namespace A204908.P5959263641786097871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (Int.xor 1 (A204910 (n + 1))).toNat

end

end A204908.P5959263641786097871

/-! ## A204908.P11861198750835659488

`A204892(A204910(n+1)-2)-2`
-/

namespace A204908.P11861198750835659488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A204910 (n + 1) - 2).toNat - 2

end

end A204908.P11861198750835659488

/-! ## A204908.P14649843979119500962

`A002024(A204907(n+1))+1`
-/

namespace A204908.P14649843979119500962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A204907 (n + 1)).toNat + 1

end

end A204908.P14649843979119500962

/-! ## A204908.P17161762001695794986

`A003057(A204907(n+1)+1)`
-/

namespace A204908.P17161762001695794986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A204907 (n + 1) + 1).toNat

end

end A204908.P17161762001695794986

/-! ## A204908.P10239465890612669286

`A204909(n+1)+A004736(A204907(n+1))`
-/

namespace A204908.P10239465890612669286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204909 (n + 1) + A004736 (A204907 (n + 1)).toNat

end

end A204908.P10239465890612669286

/-! ## A204908.P13437199822085737994

`A204916(A204914(A204907(n+1)))`
-/

namespace A204908.P13437199822085737994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204916 (A204914 (A204907 (n + 1)).toNat).toNat

end

end A204908.P13437199822085737994

/-!
# A204909: The index j<k such that n divides s(k)-s(j), where k is the least index (A204908) for which such j exists.

The programs for A204909, there is no canonical definition to state claims against.
-/

/-! ## A204909.P4224414734877223628

`A084360(A204911(n+1))`
-/

namespace A204909.P4224414734877223628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (A204911 (n + 1)).toNat

end

end A204909.P4224414734877223628

/-! ## A204909.P12310330402981975018

`A079067(2*A204911(n+1))`
-/

namespace A204909.P12310330402981975018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (2 * A204911 (n + 1)).toNat

end

end A204909.P12310330402981975018

/-! ## A204909.P12630908493773308222

`A082513(A204910(n+1)-Δ[A152749(n)])`
-/

namespace A204909.P12630908493773308222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082513 (A204910 (n + 1) - (f1 (n + 1) - f1 n)).toNat

end

end A204909.P12630908493773308222

/-! ## A204909.P6073462024429248781

`A079067(A204911(n+1)²)-1`
-/

namespace A204909.P6073462024429248781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A204911 (n + 1) ^ 2).toNat - 1

end

end A204909.P6073462024429248781

/-! ## A204909.P18337945110597660329

`A002260(A204907(n+1))`
-/

namespace A204909.P18337945110597660329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A204907 (n + 1)).toNat

end

end A204909.P18337945110597660329

/-! ## A204909.P13954381324612421912

`A204908(n+1)-A004736(A204907(n+1))`
-/

namespace A204909.P13954381324612421912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204908 (n + 1) - A004736 (A204907 (n + 1)).toNat

end

end A204909.P13954381324612421912

/-! ## A204909.P874403646663276194

`A321893(A204911(n+1)-3)`
-/

namespace A204909.P874403646663276194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321893 (A204911 (n + 1) - 3).toNat

end

end A204909.P874403646663276194

/-! ## A204909.P10437571371624692971

`A347233(A204911(n+1))%A204904(n+1)`
-/

namespace A204909.P10437571371624692971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347233 (A204911 (n + 1)).toNat) (A204904 (n + 1))

end

end A204909.P10437571371624692971

/-!
# A204910: Least prime p such that n divides p-q for some prime q satisfying 5<=q<p.

The programs for A204910, there is no canonical definition to state claims against.
-/

/-! ## A204910.P1184210772156373311

`A204911(n+1)+A109043(n+1)`
-/

namespace A204910.P1184210772156373311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204911 (n + 1) + A109043 (n + 1)

end

end A204910.P1184210772156373311

/-! ## A204910.P11939671156121098377

`A004139(A204908(n+1))`
-/

namespace A204910.P11939671156121098377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A204908 (n + 1)).toNat

end

end A204910.P11939671156121098377

/-! ## A204910.P17559049177292487952

`A045319(A204908(n+1)+1)`
-/

namespace A204910.P17559049177292487952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A204908 (n + 1) + 1).toNat

end

end A204910.P17559049177292487952

/-! ## A204910.P14587440769596087332

`A065091(A204908(n+1)+1)`
-/

namespace A204910.P14587440769596087332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A204908 (n + 1) + 1).toNat

end

end A204910.P14587440769596087332

/-! ## A204910.P13894397107249214299

`A000040(A204908(n+1)+2)`
-/

namespace A204910.P13894397107249214299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A204908 (n + 1) + 2).toNat

end

end A204910.P13894397107249214299

/-! ## A204910.P8217467239812011565

`A008578(A204908(n+1)+3)`
-/

namespace A204910.P8217467239812011565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A204908 (n + 1) + 3).toNat

end

end A204910.P8217467239812011565

/-! ## A204910.P1848835713039944499

`A182986(A204908(n+1)+3)`
-/

namespace A204910.P1848835713039944499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A204908 (n + 1) + 3).toNat

end

end A204910.P1848835713039944499

/-! ## A204910.P12107474205861671811

`A204911(n+1)+A204906(A204907(n+1))`
-/

namespace A204910.P12107474205861671811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204911 (n + 1) + A204906 (A204907 (n + 1)).toNat

end

end A204910.P12107474205861671811

/-! ## A204910.P5748179445303172131

`A204911(n+1)+A204904(n+1)`
-/

namespace A204910.P5748179445303172131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204911 (n + 1) + A204904 (n + 1)

end

end A204910.P5748179445303172131

/-!
# A204911: The prime q>=5 such that n divides p-q, where p>q is the least prime for which such a prime q exists.

The programs for A204911, there is no canonical definition to state claims against.
-/

/-! ## A204911.P14237884599234684908

`A204910(n+1)-lcm(2, n+1)`
-/

namespace A204911.P14237884599234684908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204910 (n + 1) - (Nat.lcm 2 (n + 1) : ℤ)

end

end A204911.P14237884599234684908

/-! ## A204911.P16676949852621249446

`A204910(n+1)-A109043(n+1)`
-/

namespace A204911.P16676949852621249446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204910 (n + 1) - A109043 (n + 1)

end

end A204911.P16676949852621249446

/-! ## A204911.P17672597712579122284

`A204910(n+1)-(A133090(n+1)+1)`
-/

namespace A204911.P17672597712579122284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204910 (n + 1) - (A133090 (n + 1) + 1)

end

end A204911.P17672597712579122284

/-! ## A204911.P15263537395145669105

`A133090(A204910(n+1)-A133090(n+1))`
-/

namespace A204911.P15263537395145669105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133090 (A204910 (n + 1) - A133090 (n + 1)).toNat

end

end A204911.P15263537395145669105

/-! ## A204911.P15328668795690503249

`A204910(n+1)-Δ[A152749(n)]`
-/

namespace A204911.P15328668795690503249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204910 (n + 1) - (f1 (n + 1) - f1 n)

end

end A204911.P15328668795690503249

/-! ## A204911.P9158718113506585633

`A000040(A204909(n+1)+2)`
-/

namespace A204911.P9158718113506585633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A204909 (n + 1) + 2).toNat

end

end A204911.P9158718113506585633

/-! ## A204911.P5094047843010977921

`A000040(A204908(n+1)+2)-A109043(n+1)`
-/

namespace A204911.P5094047843010977921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A204908 (n + 1) + 2).toNat - A109043 (n + 1)

end

end A204911.P5094047843010977921

/-! ## A204911.P9687806365161667408

`A204910(n+1)-A204906(A204907(n+1))`
-/

namespace A204911.P9687806365161667408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204910 (n + 1) - A204906 (A204907 (n + 1)).toNat

end

end A204911.P9687806365161667408

/-! ## A204911.P819378432307751599

`A204910(n+1)-A204898(A204899(n+1))`
-/

namespace A204911.P819378432307751599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204910 (n + 1) - A204898 (A204899 (n + 1)).toNat

end

end A204911.P819378432307751599

/-! ## A204911.P4426551110923568116

`A204910(n+1)-A204904(n+1)`
-/

namespace A204911.P4426551110923568116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204910 (n + 1) - A204904 (n + 1)

end

end A204911.P4426551110923568116

/-!
# A204914: Ordered differences of squared primes.

The programs for A204914, the canonical program `A204914.P5175333267193367443` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204914 has offset 1).

The definition of A204914 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204914.P2669242328698949246

`A204890(n+1)*A391357(n+1)`
-/

namespace A204914.P2669242328698949246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (n + 1) * A391357 (n + 1)

end

end A204914.P2669242328698949246

namespace A204914

/-- `A204890(n+1)*A391357(n+1)` -/
def P2669242328698949246.Spec : Prop :=
  ∀ n, P2669242328698949246.a n = A204914 (n + 1)

end A204914

/-! ## A204914.P5175333267193367443

`A065091(A002024(n+1))²-A037126(n+1)²`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A204914

/-- `A065091(A002024(n+1))²-A037126(n+1)²` -/
def P5175333267193367443.Spec : Prop :=
  ∀ n, P5175333267193367443.a n = A204914 (n + 1)

theorem P5175333267193367443.correct : P5175333267193367443.Spec := by
  intro n
  simp only [A204914, Nat.add_sub_cancel]

end A204914

/-! ## A204914.P5987950310555062182

`A165712(A005145(n+1))²-A037126(n+1)²`
-/

namespace A204914.P5987950310555062182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165712 (A005145 (n + 1)).toNat ^ 2 - A037126 (n + 1) ^ 2

end

end A204914.P5987950310555062182

namespace A204914

/-- `A165712(A005145(n+1))²-A037126(n+1)²` -/
def P5987950310555062182.Spec : Prop :=
  ∀ n, P5987950310555062182.a n = A204914 (n + 1)

end A204914

/-! ## A204914.P17499097081612066258

`A000040(A003057(n+2))²-A037126(n+1)²`
-/

namespace A204914.P17499097081612066258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A003057 (n + 2)).toNat ^ 2 - A037126 (n + 1) ^ 2

end

end A204914.P17499097081612066258

namespace A204914

/-- `A000040(A003057(n+2))²-A037126(n+1)²` -/
def P17499097081612066258.Spec : Prop :=
  ∀ n, P17499097081612066258.a n = A204914 (n + 1)

end A204914

/-! ## A204914.P6412797055774831660

`A001248(A003057(n+2))-A001248(A002260(n+1))`
-/

namespace A204914.P6412797055774831660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (A003057 (n + 2)).toNat - A001248 (A002260 (n + 1)).toNat

end

end A204914.P6412797055774831660

namespace A204914

/-- `A001248(A003057(n+2))-A001248(A002260(n+1))` -/
def P6412797055774831660.Spec : Prop :=
  ∀ n, P6412797055774831660.a n = A204914 (n + 1)

end A204914

/-! ## A204914.P14495764334741569909

`A051599(A127739(n+1))²-A037126(n+1)²`
-/

namespace A204914.P14495764334741569909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051599 (A127739 (n + 1)).toNat ^ 2 - A037126 (n + 1) ^ 2

end

end A204914.P14495764334741569909

namespace A204914

/-- `A051599(A127739(n+1))²-A037126(n+1)²` -/
def P14495764334741569909.Spec : Prop :=
  ∀ n, P14495764334741569909.a n = A204914 (n + 1)

end A204914

/-! ## A204914.P6912404112120879871

`A065342(∑[A035214(n)])*A204890(n+1)`
-/

namespace A204914.P6912404112120879871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065342 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A204890 (n + 1)

end

end A204914.P6912404112120879871

namespace A204914

/-- `A065342(∑[A035214(n)])*A204890(n+1)` -/
def P6912404112120879871.Spec : Prop :=
  ∀ n, P6912404112120879871.a n = A204914 (n + 1)

end A204914

/-! ## A204914.P18090262052332777654

`A065342(A014132(n+1))*A204890(n+1)`
-/

namespace A204914.P18090262052332777654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065342 (A014132 (n + 1)).toNat * A204890 (n + 1)

end

end A204914.P18090262052332777654

namespace A204914

/-- `A065342(A014132(n+1))*A204890(n+1)` -/
def P18090262052332777654.Spec : Prop :=
  ∀ n, P18090262052332777654.a n = A204914 (n + 1)

end A204914

/-! ## A204914.P18203702347141061080

`A005145(A014132(n+1))²-A037126(n+1)²`
-/

namespace A204914.P18203702347141061080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A014132 (n + 1)).toNat ^ 2 - A037126 (n + 1) ^ 2

end

end A204914.P18203702347141061080

namespace A204914

/-- `A005145(A014132(n+1))²-A037126(n+1)²` -/
def P18203702347141061080.Spec : Prop :=
  ∀ n, P18203702347141061080.a n = A204914 (n + 1)

end A204914

/-!
# A204916: Least k such that n divides s(k)-s(j) for some j in [1,k), where s(k)=(prime(k))^2.

The programs for A204916, there is no canonical definition to state claims against.
-/

/-! ## A204916.P8284047311474791402

`A003963(∏{p}[A204918(n+1), #])`
-/

namespace A204916.P8284047311474791402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A204916.P8284047311474791402

/-! ## A204916.P1251713490737216386

`A049084(∏{p}[A204918(n+1), #])`
-/

namespace A204916.P1251713490737216386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A204916.P1251713490737216386

/-! ## A204916.P6295451642031346286

`A002024(A204915(n+1))+1`
-/

namespace A204916.P6295451642031346286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A204915 (n + 1)).toNat + 1

end

end A204916.P6295451642031346286

/-! ## A204916.P6577036750610458277

`A003057(A204915(n+1)+1)`
-/

namespace A204916.P6577036750610458277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A204915 (n + 1) + 1).toNat

end

end A204916.P6577036750610458277

/-! ## A204916.P14405156518680906432

`A204917(n+1)+A004736(A204915(n+1))`
-/

namespace A204916.P14405156518680906432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204917 (n + 1) + A004736 (A204915 (n + 1)).toNat

end

end A204916.P14405156518680906432

/-! ## A204916.P716434139680846838

`A097285(2*A204915(n+1))`
-/

namespace A204916.P716434139680846838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A204915 (n + 1)).toNat

end

end A204916.P716434139680846838

/-! ## A204916.P8585149565451991302

`A061395(A204918(n+1))`
-/

namespace A204916.P8585149565451991302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A204918 (n + 1)).toNat

end

end A204916.P8585149565451991302

/-! ## A204916.P7825503359489111804

`A061395(A204920(n+1)+A204919(n+1))`
-/

namespace A204916.P7825503359489111804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A204920 (n + 1) + A204919 (n + 1)).toNat

end

end A204916.P7825503359489111804

/-! ## A204916.P5864353823215048342

`A263297(A204920(n+1)+A204919(n+1))`
-/

namespace A204916.P5864353823215048342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (A204920 (n + 1) + A204919 (n + 1)).toNat

end

end A204916.P5864353823215048342

/-! ## A204916.P7476915929163355028

`A055396(A204918(n+1))`
-/

namespace A204916.P7476915929163355028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A204918 (n + 1)).toNat

end

end A204916.P7476915929163355028

/-!
# A204917: Least j such that n divides s(A204916(n))-s(j), where s(j)=(prime(j))^2.

The programs for A204917, there is no canonical definition to state claims against.
-/

/-! ## A204917.P1454569222895348252

`A263111(sqrt(A204919(n+1)))`
-/

namespace A204917.P1454569222895348252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263111 (SequenceMachineLib.roundAway (Real.sqrt (A204919 (n + 1) : ℝ))).toNat

end

end A204917.P1454569222895348252

/-! ## A204917.P10242962900866388458

`A049084(root(A204919(n+1), 2))`
-/

namespace A204917.P10242962900866388458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (SequenceMachineLib.roundAway ((A204919 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A204917.P10242962900866388458

/-! ## A204917.P10233946519737492687

`A000720(∑{p}[A204919(n+1), #])`
-/

namespace A204917.P10233946519737492687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A204917.P10233946519737492687

/-! ## A204917.P6501572033034463774

`A000720(∏{p}[A204919(n+1), #])`
-/

namespace A204917.P6501572033034463774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A204917.P6501572033034463774

/-! ## A204917.P301441662013745001

`A049084(∏{p}[A204919(n+1), #])`
-/

namespace A204917.P301441662013745001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A204917.P301441662013745001

/-! ## A204917.P9955320773850581906

`A002260(A204915(n+1))`
-/

namespace A204917.P9955320773850581906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A204915 (n + 1)).toNat

end

end A204917.P9955320773850581906

/-! ## A204917.P6525590617692961948

`A097285(2*A204915(n+1)-1)`
-/

namespace A204917.P6525590617692961948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A204915 (n + 1) - 1).toNat

end

end A204917.P6525590617692961948

/-! ## A204917.P2288891432717638280

`A097285(A204915(n+1)+A204915(n+1)-1)`
-/

namespace A204917.P2288891432717638280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A204915 (n + 1) + (A204915 (n + 1) - 1)).toNat

end

end A204917.P2288891432717638280

/-! ## A204917.P16422484986977650290

`A061395(A204919(n+1))`
-/

namespace A204917.P16422484986977650290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A204919 (n + 1)).toNat

end

end A204917.P16422484986977650290

/-! ## A204917.P2922284199009757508

`A055396(A204919(n+1))`
-/

namespace A204917.P2922284199009757508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A204919 (n + 1)).toNat

end

end A204917.P2922284199009757508

/-! ## A204917.P6167031833330935560

`A156061(A204919(n+1))%record[A006530(n+2)]`
-/

namespace A204917.P6167031833330935560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156061 (A204919 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A204917.P6167031833330935560

/-!
# A204918: Square of the least prime p such that n divides p^2-q^2 for some prime q satisfying q<p.

The programs for A204918, there is no canonical definition to state claims against.
-/

/-! ## A204918.P12242596521380720940

`A001248(A204916(n+1))`
-/

namespace A204918.P12242596521380720940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (A204916 (n + 1)).toNat

end

end A204918.P12242596521380720940

/-! ## A204918.P16280037464992123507

`A204920(n+1)+A204919(n+1)`
-/

namespace A204918.P16280037464992123507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204920 (n + 1) + A204919 (n + 1)

end

end A204918.P16280037464992123507

/-! ## A204918.P8756100809443191259

`A204919(n+1)+(n+1)*A204921(n+1)`
-/

namespace A204918.P8756100809443191259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204919 (n + 1) + (n + 1 : ℤ) * A204921 (n + 1)

end

end A204918.P8756100809443191259

/-! ## A204918.P1084779289258866851

`A000040(A204916(n+1))^A020639(2*(n+1))`
-/

namespace A204918.P1084779289258866851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A204916 (n + 1)).toNat : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A204918.P1084779289258866851

/-! ## A204918.P2530613364201719691

`A204919(n+1)+A204914(A204915(n+1))`
-/

namespace A204918.P2530613364201719691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204919 (n + 1) + A204914 (A204915 (n + 1)).toNat

end

end A204918.P2530613364201719691

/-!
# A204919: a(n) = q^2 where q is the least prime such that n divides A204916(n)^2 - q^2.

The programs for A204919, there is no canonical definition to state claims against.
-/

/-! ## A204919.P17850903526157448659

`A001248(A204917(n+1))`
-/

namespace A204919.P17850903526157448659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (A204917 (n + 1)).toNat

end

end A204919.P17850903526157448659

/-! ## A204919.P5482172897573018656

`A204918(n+1)-A204920(n+1)`
-/

namespace A204919.P5482172897573018656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204918 (n + 1) - A204920 (n + 1)

end

end A204919.P5482172897573018656

/-! ## A204919.P10527971020145265215

`A001248(A204916(n+1))-A204920(n+1)`
-/

namespace A204919.P10527971020145265215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (A204916 (n + 1)).toNat - A204920 (n + 1)

end

end A204919.P10527971020145265215

/-! ## A204919.P11543445622467618130

`A000040(A204917(n+1))^A020639(2*(n+1))`
-/

namespace A204919.P11543445622467618130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A204917 (n + 1)).toNat : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A204919.P11543445622467618130

/-! ## A204919.P10820389070202605452

`A000040(A204917(n+1))^A006530(2*A001316(n))`
-/

namespace A204919.P10820389070202605452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A204917 (n + 1)).toNat : ℚ) ^ (A006530 (2 * A001316 n).toNat : ℤ)

end

end A204919.P10820389070202605452

/-! ## A204919.P14336751261575357584

`A000040(A002260(A204915(n+1)))²`
-/

namespace A204919.P14336751261575357584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002260 (A204915 (n + 1)).toNat).toNat ^ 2

end

end A204919.P14336751261575357584

/-! ## A204919.P15513208683185335392

`A037126(A204915(n+1))²`
-/

namespace A204919.P15513208683185335392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A204915 (n + 1)).toNat ^ 2

end

end A204919.P15513208683185335392

/-! ## A204919.P16536460190022132716

`A204918(n+1)-A204914(A204915(n+1))`
-/

namespace A204919.P16536460190022132716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204918 (n + 1) - A204914 (A204915 (n + 1)).toNat

end

end A204919.P16536460190022132716

/-! ## A204919.P3241533847029517010

`A037126(A204915(n+1))^A020639(lcm(4, n)+4)`
-/

namespace A204919.P3241533847029517010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037126 (A204915 (n + 1)).toNat : ℚ) ^ (A020639 (Nat.lcm 4 n + 4) : ℤ)

end

end A204919.P3241533847029517010

/-!
# A204920: a(n) = p(n)^2 - q(n)^2, where (p(n)^2, q(n)^2) is the least pair of squared primes for which n divides p(n)^2 - q(n)^2.

The programs for A204920, there is no canonical definition to state claims against.
-/

/-! ## A204920.P4996492367273958068

`A204918(n+1)-A204919(n+1)`
-/

namespace A204920.P4996492367273958068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204918 (n + 1) - A204919 (n + 1)

end

end A204920.P4996492367273958068

/-! ## A204920.P8096617953678390924

`(n+1)*A204921(n+1)`
-/

namespace A204920.P8096617953678390924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A204921 (n + 1)

end

end A204920.P8096617953678390924

/-! ## A204920.P3870275166169853071

`A001248(A204916(n+1))-A204919(n+1)`
-/

namespace A204920.P3870275166169853071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (A204916 (n + 1)).toNat - A204919 (n + 1)

end

end A204920.P3870275166169853071

/-! ## A204920.P16052662310220082983

`A204918(n+1)-A001248(A204917(n+1))`
-/

namespace A204920.P16052662310220082983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204918 (n + 1) - A001248 (A204917 (n + 1)).toNat

end

end A204920.P16052662310220082983

/-! ## A204920.P15444014598056396565

`A001248(A204916(n+1))-A001248(A204917(n+1))`
-/

namespace A204920.P15444014598056396565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (A204916 (n + 1)).toNat - A001248 (A204917 (n + 1)).toNat

end

end A204920.P15444014598056396565

/-! ## A204920.P10562695839129887705

`A204914(A204915(n+1))`
-/

namespace A204920.P10562695839129887705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204914 (A204915 (n + 1)).toNat

end

end A204920.P10562695839129887705

/-!
# A204921: a(n) = (p(n)^2 - q(n)^2)/n, where (p(n)^2, q(n)^2) is the least pair of squared primes (ordered as at A204914) for which n divides p(n)^2 - q(n)^2.

The programs for A204921, there is no canonical definition to state claims against.
-/

/-! ## A204921.P11424473354950495517

`A204920(n+1)/(n+1)`
-/

namespace A204921.P11424473354950495517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204920 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A204921.P11424473354950495517

/-! ## A204921.P12864913360382049448

`(A204918(n+1)-A204919(n+1))/(n+1)`
-/

namespace A204921.P12864913360382049448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204918 (n + 1) - A204919 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A204921.P12864913360382049448

/-! ## A204921.P11545623012398351004

`(A001248(A204916(n+1))-A204919(n+1))/(n+1)`
-/

namespace A204921.P11545623012398351004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001248 (A204916 (n + 1)).toNat - A204919 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A204921.P11545623012398351004

/-! ## A204921.P5017737042891747783

`A204914(A204915(n+1))/(n+1)`
-/

namespace A204921.P5017737042891747783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204914 (A204915 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A204921.P5017737042891747783

/-!
# A204922: Ordered differences of Fibonacci numbers.

The programs for A204922, the canonical program `A204922.P5125646532495915877` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204922 has offset 1).

The definition of A204922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204922.P5125646532495915877

`A000045(row(n)+3)-A000045(col(n)+2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A204922

/-- `A000045(row(n)+3)-A000045(col(n)+2)` -/
def P5125646532495915877.Spec : Prop :=
  ∀ n, P5125646532495915877.a n = A204922 (n + 1)

theorem P5125646532495915877.correct : P5125646532495915877.Spec := by
  intro n
  simp only [A204922, Nat.add_sub_cancel]

end A204922

/-! ## A204922.P10137700460477004961

`round(A193999(n+1)/ϕ)`
-/

namespace A204922.P10137700460477004961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A193999 (n + 1) : ℝ) / Real.goldenRatio)

end

end A204922.P10137700460477004961

namespace A204922

/-- `round(A193999(n+1)/ϕ)` -/
def P10137700460477004961.Spec : Prop :=
  ∀ n, P10137700460477004961.a n = A204922 (n + 1)

end A204922

/-! ## A204922.P1145282481634808219

`T(n-1,k)+A000045(row(n)+1)` with `a(0)=1`
-/

namespace A204922.P1145282481634808219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + A000045 (SequenceMachineLib.triRow n + 1)

end

end A204922.P1145282481634808219

namespace A204922

/-- `T(n-1,k)+A000045(row(n)+1)` -/
def P1145282481634808219.Spec : Prop :=
  ∀ n, P1145282481634808219.a n = A204922 (n + 1)

end A204922

/-! ## A204922.P10233895407387840154

`A143061(A038722(n+1))`
-/

namespace A204922.P10233895407387840154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (A038722 (n + 1)).toNat

end

end A204922.P10233895407387840154

namespace A204922

/-- `A143061(A038722(n+1))` -/
def P10233895407387840154.Spec : Prop :=
  ∀ n, P10233895407387840154.a n = A204922 (n + 1)

end A204922

/-! ## A204922.P9934731243012577808

`A143061(A061579(n)+1)`
-/

namespace A204922.P9934731243012577808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (A061579 n + 1).toNat

end

end A204922.P9934731243012577808

namespace A204922

/-- `A143061(A061579(n)+1)` -/
def P9934731243012577808.Spec : Prop :=
  ∀ n, P9934731243012577808.a n = A204922 (n + 1)

end A204922

/-! ## A204922.P10558598855313100753

`A143061(A114327(n)+1+n)`
-/

namespace A204922.P10558598855313100753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (A114327 n + 1 + (n : ℤ)).toNat

end

end A204922.P10558598855313100753

namespace A204922

/-- `A143061(A114327(n)+1+n)` -/
def P10558598855313100753.Spec : Prop :=
  ∀ n, P10558598855313100753.a n = A204922 (n + 1)

end A204922

/-! ## A204922.P3709579907992509619

`A143061(A093995(n+1)-n)`
-/

namespace A204922.P3709579907992509619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A204922.P3709579907992509619

namespace A204922

/-- `A143061(A093995(n+1)-n)` -/
def P3709579907992509619.Spec : Prop :=
  ∀ n, P3709579907992509619.a n = A204922 (n + 1)

end A204922

/-! ## A204922.P17146694145571543343

`A143061(∑[A010054(n)]²-n)`
-/

namespace A204922.P17146694145571543343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n : ℤ)).toNat

end

end A204922.P17146694145571543343

namespace A204922

/-- `A143061(∑[A010054(n)]²-n)` -/
def P17146694145571543343.Spec : Prop :=
  ∀ n, P17146694145571543343.a n = A204922 (n + 1)

end A204922

/-! ## A204922.P1874689232813928728

`A171730(A080036(n+1))`
-/

namespace A204922.P1874689232813928728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171730 (A080036 (n + 1)).toNat

end

end A204922.P1874689232813928728

namespace A204922

/-- `A171730(A080036(n+1))` -/
def P1874689232813928728.Spec : Prop :=
  ∀ n, P1874689232813928728.a n = A204922 (n + 1)

end A204922

/-! ## A204922.P11340184495505587668

`A193922(comp[∑[n]])`
-/

namespace A204922.P11340184495505587668
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193922 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A204922.P11340184495505587668

namespace A204922

/-- `A193922(comp[∑[n]])` -/
def P11340184495505587668.Spec : Prop :=
  ∀ n, P11340184495505587668.a n = A204922 (n + 1)

end A204922

/-! ## A204922.P2308264477985243358

`A193922(A014132(n+1))+2-4/2`
-/

namespace A204922.P2308264477985243358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193922 (A014132 (n + 1)).toNat : ℚ) + (2 - (4 : ℚ) / 2)

end

end A204922.P2308264477985243358

namespace A204922

/-- `A193922(A014132(n+1))+2-4/2` -/
def P2308264477985243358.Spec : Prop :=
  ∀ n, P2308264477985243358.a n = (A204922 (n + 1) : ℚ)

end A204922

/-! ## A204922.P12022740313456918791

`or(A000007(n), A193922(A014132(n+1)))`
-/

namespace A204922.P12022740313456918791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A193922 (A014132 (n + 1)).toNat)

end

end A204922.P12022740313456918791

namespace A204922

/-- `or(A000007(n), A193922(A014132(n+1)))` -/
def P12022740313456918791.Spec : Prop :=
  ∀ n, P12022740313456918791.a n = A204922 (n + 1)

end A204922

/-! ## A204922.P13860978762658038086

`A193922(A014132(n+1))%A055257(n)`
-/

namespace A204922.P13860978762658038086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193922 (A014132 (n + 1)).toNat) (A055257 n)

end

end A204922.P13860978762658038086

namespace A204922

/-- `A193922(A014132(n+1))%A055257(n)` -/
def P13860978762658038086.Spec : Prop :=
  ∀ n, P13860978762658038086.a n = A204922 (n + 1)

end A204922

/-! ## A204922.P7232519981438308207

`A005206(A193999(n+1))`
-/

namespace A204922.P7232519981438308207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A193999 (n + 1)).toNat

end

end A204922.P7232519981438308207

namespace A204922

/-- `A005206(A193999(n+1))` -/
def P7232519981438308207.Spec : Prop :=
  ∀ n, P7232519981438308207.a n = A204922 (n + 1)

end A204922

/-! ## A204922.P1009350772545121113

`A005379(A193999(n+1)+2)-1`
-/

namespace A204922.P1009350772545121113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 (A193999 (n + 1) + 2).toNat - 1

end

end A204922.P1009350772545121113

namespace A204922

/-- `A005379(A193999(n+1)+2)-1` -/
def P1009350772545121113.Spec : Prop :=
  ∀ n, P1009350772545121113.a n = A204922 (n + 1)

end A204922

/-!
# A204924: Least k such that n divides s(k)-s(j) for some j in [1,k), where s(k)=A000045(k+1) (Fibonacci numbers).

The programs for A204924, there is no canonical definition to state claims against.
-/

/-! ## A204924.P10491557628684019951

`A002024(A204923(n+1))+1`
-/

namespace A204924.P10491557628684019951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A204923 (n + 1)).toNat + 1

end

end A204924.P10491557628684019951

/-! ## A204924.P14801466140898417093

`A003057(A204923(n+1)+1)`
-/

namespace A204924.P14801466140898417093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A204923 (n + 1) + 1).toNat

end

end A204924.P14801466140898417093

/-! ## A204924.P14490594470003651454

`A003056(A204923(n+1)-1)+2`
-/

namespace A204924.P14490594470003651454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A204923 (n + 1) - 1).toNat + 2

end

end A204924.P14490594470003651454

/-! ## A204924.P8876948421126514937

`A002024(A014132(A204923(n+1)))`
-/

namespace A204924.P8876948421126514937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A014132 (A204923 (n + 1)).toNat).toNat

end

end A204924.P8876948421126514937

/-! ## A204924.P11838581763978035669

`A033677(2*A127739(A204923(n+1)))`
-/

namespace A204924.P11838581763978035669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (2 * A127739 (A204923 (n + 1)).toNat).toNat

end

end A204924.P11838581763978035669

/-! ## A204924.P8058161770767049297

`A130245(A204926(n+1))`
-/

namespace A204924.P8058161770767049297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (A204926 (n + 1)).toNat

end

end A204924.P8058161770767049297

/-!
# A204925: a(n) is the index j < k such that n divides s(k) - s(j), where k is the least index (A204924) for which such j exists, and s=(1,2,3,5,8,13,...), the Fibonacci numbers.

The programs for A204925, there is no canonical definition to state claims against.
-/

/-! ## A204925.P14891956719506997558

`A002260(A204923(n+1))`
-/

namespace A204925.P14891956719506997558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A204923 (n + 1)).toNat

end

end A204925.P14891956719506997558

/-! ## A204925.P4785035571782825374

`A144328(A204923(n+1)+1)`
-/

namespace A204925.P4785035571782825374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (A204923 (n + 1) + 1).toNat

end

end A204925.P4785035571782825374

/-! ## A204925.P10259717225966786117

`A128227(A204923(n+1)-1)`
-/

namespace A204925.P10259717225966786117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (A204923 (n + 1) - 1).toNat

end

end A204925.P10259717225966786117

/-! ## A204925.P18379299366041938256

`A002262(A204923(n+1)-1)+1`
-/

namespace A204925.P18379299366041938256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A204923 (n + 1) - 1).toNat + 1

end

end A204925.P18379299366041938256

/-! ## A204925.P4183541427396150072

`A002262(A204923(n+1)+A000007(n))`
-/

namespace A204925.P4183541427396150072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A204923 (n + 1) + A000007 n).toNat

end

end A204925.P4183541427396150072

/-! ## A204925.P4865625897327085453

`A002262(A204923(n+1)+A057428(n)+1)`
-/

namespace A204925.P4865625897327085453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A204923 (n + 1) + (A057428 n + 1)).toNat

end

end A204925.P4865625897327085453

/-! ## A204925.P12582111381467078783

`A204924(n+1)-A004736(A204923(n+1))`
-/

namespace A204925.P12582111381467078783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204924 (n + 1) - A004736 (A204923 (n + 1)).toNat

end

end A204925.P12582111381467078783

/-! ## A204925.P10359119739218150021

`A035612(A204927(n+1))`
-/

namespace A204925.P10359119739218150021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (A204927 (n + 1)).toNat

end

end A204925.P10359119739218150021

/-! ## A204925.P1636287234089375890

`A130245(A204927(n+1)+A000038(n+1))`
-/

namespace A204925.P1636287234089375890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (A204927 (n + 1) + A000038 (n + 1)).toNat

end

end A204925.P1636287234089375890

/-!
# A204926: Least Fibonacci number f such that n divides f-g for some Fibonacci number g satisfying g < f.

The programs for A204926, there is no canonical definition to state claims against.
-/

/-! ## A204926.P9425896487342801677

`A000045(A204924(n+1)+1)`
-/

namespace A204926.P9425896487342801677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A204924 (n + 1) + 1).toNat

end

end A204926.P9425896487342801677

/-! ## A204926.P320513790875207595

`A212804(A204924(n+1)+2)`
-/

namespace A204926.P320513790875207595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A204924 (n + 1) + 2).toNat

end

end A204926.P320513790875207595

/-! ## A204926.P2542877422320641775

`A020695(A204924(n+1)-2)`
-/

namespace A204926.P2542877422320641775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (A204924 (n + 1) - 2).toNat

end

end A204926.P2542877422320641775

/-! ## A204926.P17215832539659686640

`A000071(A204924(n+1)+1)+1`
-/

namespace A204926.P17215832539659686640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A204924 (n + 1) + 1).toNat + 1

end

end A204926.P17215832539659686640

/-! ## A204926.P958864974985890994

`A001911(A204924(n+1)-2)+2`
-/

namespace A204926.P958864974985890994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (A204924 (n + 1) - 2).toNat + 2

end

end A204926.P958864974985890994

/-! ## A204926.P12510217229713129061

`A204928(n+1)+A204927(n+1)`
-/

namespace A204926.P12510217229713129061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204928 (n + 1) + A204927 (n + 1)

end

end A204926.P12510217229713129061

/-! ## A204926.P2407543084321261535

`A000045(A020725(A204924(n+1)))`
-/

namespace A204926.P2407543084321261535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020725 (A204924 (n + 1)).toNat).toNat

end

end A204926.P2407543084321261535

/-! ## A204926.P12062782015938858833

`A204928(n+1)+A000045(A204925(n+1)+1)`
-/

namespace A204926.P12062782015938858833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204928 (n + 1) + A000045 (A204925 (n + 1) + 1).toNat

end

end A204926.P12062782015938858833

/-! ## A204926.P1238655387647730010

`A204927(n+1)+A204922(A204923(n+1))`
-/

namespace A204926.P1238655387647730010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204927 (n + 1) + A204922 (A204923 (n + 1)).toNat

end

end A204926.P1238655387647730010

/-! ## A204926.P4659103599488439461

`A094570(2*A204924(n+1)²)`
-/

namespace A204926.P4659103599488439461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094570 (2 * A204924 (n + 1) ^ 2).toNat

end

end A204926.P4659103599488439461

/-! ## A204926.P1113616469795194200

`A094570(A004273(A204924(n+1)²))`
-/

namespace A204926.P1113616469795194200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094570 (A004273 (A204924 (n + 1) ^ 2).toNat).toNat

end

end A204926.P1113616469795194200

/-! ## A204926.P18081211968391298665

`A094570(2*A204924(n+1)*A204924(n+1))`
-/

namespace A204926.P18081211968391298665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094570 (2 * A204924 (n + 1) * A204924 (n + 1)).toNat

end

end A204926.P18081211968391298665

/-!
# A204927: The number s(j) such that n divides s(k)-s(j), where s(j) is the (j+1)-st Fibonacci number and k is the least positive integer for which such a j>0 exists.

The programs for A204927, there is no canonical definition to state claims against.
-/

/-! ## A204927.P16739083430366435155

`A000045(A204925(n+1)+1)`
-/

namespace A204927.P16739083430366435155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A204925 (n + 1) + 1).toNat

end

end A204927.P16739083430366435155

/-! ## A204927.P1244837404410993488

`A212804(A204925(n+1)+2)`
-/

namespace A204927.P1244837404410993488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A204925 (n + 1) + 2).toNat

end

end A204927.P1244837404410993488

/-! ## A204927.P16502947896238701132

`A204926(n+1)-A204928(n+1)`
-/

namespace A204927.P16502947896238701132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204926 (n + 1) - A204928 (n + 1)

end

end A204927.P16502947896238701132

/-! ## A204927.P8522865447849439610

`A104763(A204923(n+1)+1)`
-/

namespace A204927.P8522865447849439610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (A204923 (n + 1) + 1).toNat

end

end A204927.P8522865447849439610

/-! ## A204927.P5355970672845145235

`A204926(n+1)-A204922(A204923(n+1))`
-/

namespace A204927.P5355970672845145235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204926 (n + 1) - A204922 (A204923 (n + 1)).toNat

end

end A204927.P5355970672845145235

/-!
# A204928: s(k(n)) - s(j(n)), where (s(k(n)), s(j(n))) is the least pair of distinct Fibonacci numbers for which n divides s(k(n)) - s(j(n)).

The programs for A204928, there is no canonical definition to state claims against.
-/

/-! ## A204928.P4778696222877391292

`(n+1)*A204929(n+1)`
-/

namespace A204928.P4778696222877391292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A204929 (n + 1)

end

end A204928.P4778696222877391292

/-! ## A204928.P6732630143934230330

`A204926(n+1)-A204927(n+1)`
-/

namespace A204928.P6732630143934230330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204926 (n + 1) - A204927 (n + 1)

end

end A204928.P6732630143934230330

/-! ## A204928.P17354707973817307457

`A000045(A204924(n+1)+1)-A204927(n+1)`
-/

namespace A204928.P17354707973817307457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A204924 (n + 1) + 1).toNat - A204927 (n + 1)

end

end A204928.P17354707973817307457

/-! ## A204928.P4929294016457679382

`A204926(n+1)-A000045(A204925(n+1)+1)`
-/

namespace A204928.P4929294016457679382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204926 (n + 1) - A000045 (A204925 (n + 1) + 1).toNat

end

end A204928.P4929294016457679382

/-! ## A204928.P17859261807110615206

`A204922(A204923(n+1))`
-/

namespace A204928.P17859261807110615206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (A204923 (n + 1)).toNat

end

end A204928.P17859261807110615206

/-! ## A204928.P2171632987102556200

`(n+1)/∑{e}[A020639(A261292(n+1)), #/A204929(n+1)]`
-/

namespace A204928.P2171632987102556200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A261292 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℚ) / (A204929 (n + 1) : ℚ))

end

end A204928.P2171632987102556200

/-!
# A204929: (s(k(n)) - s(j(n)))/n, where (s(k(n)), s(j(n))) is the least pair of distinct Fibonacci numbers for which n divides s(k(n)) - s(j(n)).

The programs for A204929, there is no canonical definition to state claims against.
-/

/-! ## A204929.P11631620163101096755

`A204928(n+1)/(n+1)`
-/

namespace A204929.P11631620163101096755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204928 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A204929.P11631620163101096755

/-! ## A204929.P4869469479970455049

`(A204926(n+1)-A204927(n+1))/(n+1)`
-/

namespace A204929.P4869469479970455049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204926 (n + 1) - A204927 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A204929.P4869469479970455049

/-! ## A204929.P6955748657541210642

`(A000045(A204924(n+1)+1)-A204927(n+1))/(n+1)`
-/

namespace A204929.P6955748657541210642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A204924 (n + 1) + 1).toNat - A204927 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A204929.P6955748657541210642

/-! ## A204929.P10213685040335476553

`A204922(A204923(n+1))/(n+1)`
-/

namespace A204929.P10213685040335476553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204922 (A204923 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A204929.P10213685040335476553

/-!
# A204930: Ordered differences of factorials.

The programs for A204930, the canonical program `A204930.P1941679494328108447` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204930 has offset 1).

The definition of A204930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204930.P17207212443560728209

`(comp[∑[n]]-n)!-A166350(n+1)`
-/

namespace A204930.P17207212443560728209
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat : ℤ) - A166350 (n + 1)

end

end A204930.P17207212443560728209

namespace A204930

/-- `(comp[∑[n]]-n)!-A166350(n+1)` -/
def P17207212443560728209.Spec : Prop :=
  ∀ n, P17207212443560728209.a n = A204930 (n + 1)

end A204930

/-! ## A204930.P1941679494328108447

`A051949(A038722(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A204930

/-- `A051949(A038722(n+1))` -/
def P1941679494328108447.Spec : Prop :=
  ∀ n, P1941679494328108447.a n = A204930 (n + 1)

theorem P1941679494328108447.correct : P1941679494328108447.Spec := by
  intro n
  simp only [A204930, Nat.add_sub_cancel]

end A204930

/-! ## A204930.P4426958239614238818

`(A003056(n)+2)!-A002260(n+1)!`
-/

namespace A204930.P4426958239614238818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003056 n + 2).toNat : ℤ) - (Nat.factorial (A002260 (n + 1)).toNat : ℤ)

end

end A204930.P4426958239614238818

namespace A204930

/-- `(A003056(n)+2)!-A002260(n+1)!` -/
def P4426958239614238818.Spec : Prop :=
  ∀ n, P4426958239614238818.a n = A204930 (n + 1)

end A204930

/-! ## A204930.P14420992401118142617

`A003057(n+2)!-A002260(n+1)!`
-/

namespace A204930.P14420992401118142617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003057 (n + 2)).toNat : ℤ) - (Nat.factorial (A002260 (n + 1)).toNat : ℤ)

end

end A204930.P14420992401118142617

namespace A204930

/-- `A003057(n+2)!-A002260(n+1)!` -/
def P14420992401118142617.Spec : Prop :=
  ∀ n, P14420992401118142617.a n = A204930 (n + 1)

end A204930

/-! ## A204930.P12226095925419870463

`A000142(comp[∑[n]]-n)-A166350(n+1)`
-/

namespace A204930.P12226095925419870463
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) - A166350 (n + 1)

end

end A204930.P12226095925419870463

namespace A204930

/-- `A000142(comp[∑[n]]-n)-A166350(n+1)` -/
def P12226095925419870463.Spec : Prop :=
  ∀ n, P12226095925419870463.a n = A204930 (n + 1)

end A204930

/-! ## A204930.P9231831875967386048

`A276091(A130328(n))`
-/

namespace A204930.P9231831875967386048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276091 (A130328 n).toNat

end

end A204930.P9231831875967386048

namespace A204930

/-- `A276091(A130328(n))` -/
def P9231831875967386048.Spec : Prop :=
  ∀ n, P9231831875967386048.a n = A204930 (n + 1)

end A204930

/-!
# A204932: Least k such that n divides k!-j! for some j satisfying 1<=j<k.

The programs for A204932, there is no canonical definition to state claims against.
-/

/-! ## A204932.P15054717193475108675

`A205563(A022998(n+1))`
-/

namespace A204932.P15054717193475108675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205563 (A022998 (n + 1)).toNat

end

end A204932.P15054717193475108675

/-! ## A204932.P17153945865292532048

`A205563(A257088(n+1))`
-/

namespace A204932.P17153945865292532048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205563 (A257088 (n + 1)).toNat

end

end A204932.P17153945865292532048

/-! ## A204932.P9028391019953143954

`A205563(2*(n+1))`
-/

namespace A204932.P9028391019953143954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205563 (2 * (n + 1))

end

end A204932.P9028391019953143954

/-! ## A204932.P10542936777390196664

`A002024(A204931(n+1))+1`
-/

namespace A204932.P10542936777390196664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A204931 (n + 1)).toNat + 1

end

end A204932.P10542936777390196664

/-! ## A204932.P9782110339509858874

`A003057(A204931(n+1)+1)`
-/

namespace A204932.P9782110339509858874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A204931 (n + 1) + 1).toNat

end

end A204932.P9782110339509858874

/-! ## A204932.P9470141267609094847

`A002024(A014132(A204931(n+1)))`
-/

namespace A204932.P9470141267609094847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A014132 (A204931 (n + 1)).toNat).toNat

end

end A204932.P9470141267609094847

/-! ## A204932.P4597100140542370904

`A204933(n+1)+A004736(A204931(n+1))`
-/

namespace A204932.P4597100140542370904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204933 (n + 1) + A004736 (A204931 (n + 1)).toNat

end

end A204932.P4597100140542370904

/-!
# A204933: The index j<k such that n divides k!-j!, where k is the least index (A204932) for which such j exists.

The programs for A204933, there is no canonical definition to state claims against.
-/

/-! ## A204933.P13854522930788552838

`A205564(A022998(n+1))`
-/

namespace A204933.P13854522930788552838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205564 (A022998 (n + 1)).toNat

end

end A204933.P13854522930788552838

/-! ## A204933.P5318726655799491757

`A205564(A257088(n+1))`
-/

namespace A204933.P5318726655799491757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205564 (A257088 (n + 1)).toNat

end

end A204933.P5318726655799491757

/-! ## A204933.P3626953305302231676

`A205564(2*(n+1))`
-/

namespace A204933.P3626953305302231676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205564 (2 * (n + 1))

end

end A204933.P3626953305302231676

/-! ## A204933.P2305344272501504274

`A002260(A204931(n+1))`
-/

namespace A204933.P2305344272501504274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A204931 (n + 1)).toNat

end

end A204933.P2305344272501504274

/-! ## A204933.P9288984332734582265

`A204932(n+1)-A004736(A204931(n+1))`
-/

namespace A204933.P9288984332734582265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204932 (n + 1) - A004736 (A204931 (n + 1)).toNat

end

end A204933.P9288984332734582265

/-! ## A204933.P13897035842897498188

`A084556(A204935(n+1))`
-/

namespace A204933.P13897035842897498188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (A204935 (n + 1)).toNat

end

end A204933.P13897035842897498188

/-! ## A204933.P8498820990085467244

`A060131(A204935(n+1)-1)`
-/

namespace A204933.P8498820990085467244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060131 (A204935 (n + 1) - 1).toNat

end

end A204933.P8498820990085467244

/-! ## A204933.P16614746463729791903

`A275853(A204935(n+1)-A000007(n))`
-/

namespace A204933.P16614746463729791903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275853 (A204935 (n + 1) - A000007 n).toNat

end

end A204933.P16614746463729791903

/-! ## A204933.P7988799710201833416

`A275853(or(A000007(n), A204935(n+1)))`
-/

namespace A204933.P7988799710201833416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275853 (Int.lor (A000007 n) (A204935 (n + 1))).toNat

end

end A204933.P7988799710201833416

/-!
# A204934: Least k! such that n divides k!-j! for some j<k.

The programs for A204934, there is no canonical definition to state claims against.
-/

/-! ## A204934.P15275336044871541922

`A204932(n+1)!`
-/

namespace A204934.P15275336044871541922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A204932 (n + 1)).toNat

end

end A204934.P15275336044871541922

/-! ## A204934.P13479217084405587231

`A205563(2*(n+1))!`
-/

namespace A204934.P13479217084405587231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A205563 (2 * (n + 1))).toNat

end

end A204934.P13479217084405587231

/-! ## A204934.P10478235889961957211

`A204936(n+1)+A204935(n+1)`
-/

namespace A204934.P10478235889961957211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204936 (n + 1) + A204935 (n + 1)

end

end A204934.P10478235889961957211

/-! ## A204934.P4490030700611678190

`A000142(A204932(n+1)%(n+3))`
-/

namespace A204934.P4490030700611678190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (Int.tmod (A204932 (n + 1)) (n + 3 : ℤ)).toNat

end

end A204934.P4490030700611678190

/-! ## A204934.P9341622081244581815

`A000142(lcm((-1)^n, A204932(n+1)))`
-/

namespace A204934.P9341622081244581815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (Int.lcm ((-1) ^ n) (A204932 (n + 1)))

end

end A204934.P9341622081244581815

/-! ## A204934.P12707161536131435396

`A204936(n+1)+A000142(A204933(n+1))`
-/

namespace A204934.P12707161536131435396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204936 (n + 1) + A000142 (A204933 (n + 1)).toNat

end

end A204934.P12707161536131435396

/-! ## A204934.P13772405002579761182

`A204935(n+1)+A204930(A204931(n+1))`
-/

namespace A204934.P13772405002579761182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204935 (n + 1) + A204930 (A204931 (n + 1)).toNat

end

end A204934.P13772405002579761182

/-! ## A204934.P13715306366959346697

`lcm(A000005(n+1), A000142(A204932(n+1)))`
-/

namespace A204934.P13715306366959346697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (n + 1)) (A000142 (A204932 (n + 1)).toNat)

end

end A204934.P13715306366959346697

/-! ## A204934.P15870165487374626550

`A204930(A204931(n+1))+A000142(A204933(n+1))`
-/

namespace A204934.P15870165487374626550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204930 (A204931 (n + 1)).toNat + A000142 (A204933 (n + 1)).toNat

end

end A204934.P15870165487374626550

/-!
# A204935: The number j! such that n divides k!-j!>0, where k is the least positive integer for which such a j exists.

The programs for A204935, there is no canonical definition to state claims against.
-/

/-! ## A204935.P4729174458367562997

`A204933(n+1)!`
-/

namespace A204935.P4729174458367562997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A204933 (n + 1)).toNat

end

end A204935.P4729174458367562997

/-! ## A204935.P4250269929568219508

`A205564(2*(n+1))!`
-/

namespace A204935.P4250269929568219508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A205564 (2 * (n + 1))).toNat

end

end A204935.P4250269929568219508

/-! ## A204935.P6543000753228645273

`A002260(A204931(n+1))!`
-/

namespace A204935.P6543000753228645273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A002260 (A204931 (n + 1)).toNat).toNat

end

end A204935.P6543000753228645273

/-! ## A204935.P7458719710422983410

`A081123(2*A204933(n+1))`
-/

namespace A204935.P7458719710422983410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (2 * A204933 (n + 1)).toNat

end

end A204935.P7458719710422983410

/-! ## A204935.P3960321923488334035

`A000142(A204933(n+1)%(n+2))`
-/

namespace A204935.P3960321923488334035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (Int.tmod (A204933 (n + 1)) (n + 2 : ℤ)).toNat

end

end A204935.P3960321923488334035

/-! ## A204935.P16938477237322352909

`A081123(A204933(n+1)+A204933(n+1)+1)`
-/

namespace A204935.P16938477237322352909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (A204933 (n + 1) + (A204933 (n + 1) + 1)).toNat

end

end A204935.P16938477237322352909

/-! ## A204935.P9688452420626475598

`A166350(A204931(n+1))`
-/

namespace A204935.P9688452420626475598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (A204931 (n + 1)).toNat

end

end A204935.P9688452420626475598

/-! ## A204935.P3680978052083791916

`A204934(n+1)-A204936(n+1)`
-/

namespace A204935.P3680978052083791916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204934 (n + 1) - A204936 (n + 1)

end

end A204935.P3680978052083791916

/-! ## A204935.P14450268193299244144

`A204932(n+1)!-A204936(n+1)`
-/

namespace A204935.P14450268193299244144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A204932 (n + 1)).toNat : ℤ) - A204936 (n + 1)

end

end A204935.P14450268193299244144

/-! ## A204935.P17220402561510081725

`A204934(n+1)-A204930(A204931(n+1))`
-/

namespace A204935.P17220402561510081725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204934 (n + 1) - A204930 (A204931 (n + 1)).toNat

end

end A204935.P17220402561510081725

/-! ## A204935.P5978906077777375027

`A000142(A204932(n+1))-A204930(A204931(n+1))`
-/

namespace A204935.P5978906077777375027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A204932 (n + 1)).toNat - A204930 (A204931 (n + 1)).toNat

end

end A204935.P5978906077777375027

/-!
# A204936: k!-j!, where (k!,j!) is the least pair of distinct factorials for which n divides k!-j!.

The programs for A204936, there is no canonical definition to state claims against.
-/

/-! ## A204936.P7215846376000965786

`(n+1)*A204937(n+1)`
-/

namespace A204936.P7215846376000965786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A204937 (n + 1)

end

end A204936.P7215846376000965786

/-! ## A204936.P13602567578717703845

`A204930(A204931(n+1))`
-/

namespace A204936.P13602567578717703845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204930 (A204931 (n + 1)).toNat

end

end A204936.P13602567578717703845

/-! ## A204936.P8894004762877209941

`A204934(n+1)-A204935(n+1)`
-/

namespace A204936.P8894004762877209941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204934 (n + 1) - A204935 (n + 1)

end

end A204936.P8894004762877209941

/-! ## A204936.P5180553382598064968

`A000142(A204932(n+1))-A204935(n+1)`
-/

namespace A204936.P5180553382598064968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A204932 (n + 1)).toNat - A204935 (n + 1)

end

end A204936.P5180553382598064968

/-! ## A204936.P13337693795839799980

`A000142(A204932(n+1))-A000142(A204933(n+1))`
-/

namespace A204936.P13337693795839799980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A204932 (n + 1)).toNat - A000142 (A204933 (n + 1)).toNat

end

end A204936.P13337693795839799980

/-!
# A204937: (k(n)!-j(n)!)/n, where (k!,j!) is the least pair of distinct factorials for which n divides k!-j!.

The programs for A204937, there is no canonical definition to state claims against.
-/

/-! ## A204937.P3993525128166247638

`A204936(n+1)/(n+1)`
-/

namespace A204937.P3993525128166247638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204936 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A204937.P3993525128166247638

/-! ## A204937.P10109512200814412194

`A204930(A204931(n+1))/(n+1)`
-/

namespace A204937.P10109512200814412194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204930 (A204931 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A204937.P10109512200814412194

/-! ## A204937.P669577235110319071

`(A204934(n+1)-A204935(n+1))/(n+1)`
-/

namespace A204937.P669577235110319071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204934 (n + 1) - A204935 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A204937.P669577235110319071

/-! ## A204937.P5218658332811308128

`(A204932(n+1)!-A204935(n+1))/(n+1)`
-/

namespace A204937.P5218658332811308128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (A204932 (n + 1)).toNat : ℤ) - A204935 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A204937.P5218658332811308128

/-! ## A204937.P13763819207235579999

`(n+1)^or(-1, A000041(n))*A204930(A204931(n+1))`
-/

namespace A204937.P13763819207235579999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (Int.lor (-1) (A000041 n) : ℤ) * (A204930 (A204931 (n + 1)).toNat : ℚ)

end

end A204937.P13763819207235579999

/-!
# A204939: Least k such that n divides A130328(k-1), the k-th difference between numbers of the form 2^(k-1).

The programs for A204939, there is no canonical definition to state claims against.
-/

/-! ## A204939.P1261752229581662445

`A161680(A054703(n+1))+A001511(n+1)`
-/

namespace A204939.P1261752229581662445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A054703 (n + 1)).toNat + A001511 (n + 1)

end

end A204939.P1261752229581662445

/-! ## A204939.P13594747173948985533

`A000124(A054703(n+1))-A007733(n+1)`
-/

namespace A204939.P13594747173948985533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A054703 (n + 1)).toNat - A007733 (n + 1)

end

end A204939.P13594747173948985533

/-! ## A204939.P6056598573974273837

`A001511(n+1)+A000217(A054703(n+1)-1)`
-/

namespace A204939.P6056598573974273837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) + A000217 (A054703 (n + 1) - 1).toNat

end

end A204939.P6056598573974273837

/-! ## A204939.P13092687416815015326

`A000124(A054703(n+1))-A002326(A025480(n))`
-/

namespace A204939.P13092687416815015326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A054703 (n + 1)).toNat - A002326 (A025480 n).toNat

end

end A204939.P13092687416815015326

/-! ## A204939.P17773514955324266338

`A000124(A054703(n+1))-A054703(A000265(n+1))`
-/

namespace A204939.P17773514955324266338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A054703 (n + 1)).toNat - A054703 (A000265 (n + 1)).toNat

end

end A204939.P17773514955324266338

/-! ## A204939.P16646546740668547958

`A204986(n+1)+A204987(n+1)%A204979(n+1)`
-/

namespace A204939.P16646546740668547958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204986 (n + 1) + Int.tmod (A204987 (n + 1)) (A204979 (n + 1))

end

end A204939.P16646546740668547958

/-! ## A204939.P6412144780884950401

`A204986(A022998(n+1))`
-/

namespace A204939.P6412144780884950401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204986 (A022998 (n + 1)).toNat

end

end A204939.P6412144780884950401

/-! ## A204939.P9189876298038672425

`A204986(A257088(n+1))`
-/

namespace A204939.P9189876298038672425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204986 (A257088 (n + 1)).toNat

end

end A204939.P9189876298038672425

/-! ## A204939.P13779914326113667645

`A204986(2*(n+1))`
-/

namespace A204939.P13779914326113667645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204986 (2 * (n + 1))

end

end A204939.P13779914326113667645

/-!
# A204941: Number of (n+2)X3 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly one way, and new values 0..2 introduced in row major order.

The programs for A204941, there is no canonical definition to state claims against.
-/

/-! ## A204941.P8429417772157640035

`A204945(∑[n]+1)`
-/

namespace A204941.P8429417772157640035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204945 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204941.P8429417772157640035

/-! ## A204941.P17493983031130052269

`record[A204945(A056534(n+1))]`
-/

namespace A204941.P17493983031130052269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204945 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204941.P17493983031130052269

/-! ## A204941.P15854360378846647715

`record[A204945(A286245(n+1))]`
-/

namespace A204941.P15854360378846647715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204945 (A286245 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204941.P15854360378846647715

/-! ## A204941.P2929911324541893842

`record[A010054(n)*A204945(n+1)]`
-/

namespace A204941.P2929911324541893842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204941.P2929911324541893842

/-! ## A204941.P3597981516907948842

`record[A204945(n+1)/A013613(n)]`
-/

namespace A204941.P3597981516907948842
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204945 (n + 1) : ℚ) / (A013613 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204941.P3597981516907948842

/-!
# A204942: Number of (n+2)X4 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly one way, and new values 0..2 introduced in row major order.

The programs for A204942, there is no canonical definition to state claims against.
-/

/-! ## A204942.P11907886307257473516

`A204945(∑[n+1]+2)`
-/

namespace A204942.P11907886307257473516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204945 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204942.P11907886307257473516

/-! ## A204942.P9711166934041526050

`record[A010054(n)*A204945(n+2)]`
-/

namespace A204942.P9711166934041526050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204945 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204942.P9711166934041526050

/-! ## A204942.P16570476614342930307

`record[A204945(A286245(n+1)+A010054(n))]`
-/

namespace A204942.P16570476614342930307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204945 (A286245 (n + 1) + A010054 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204942.P16570476614342930307

/-! ## A204942.P5362513231574703265

`lcm(A135010(n+1), A204945(A000096(n)+3))`
-/

namespace A204942.P5362513231574703265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A135010 (n + 1)) (A204945 (A000096 n + 3).toNat)

end

end A204942.P5362513231574703265

/-!
# A204943: Number of (n+2)X5 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly one way, and new values 0..2 introduced in row major order.

The programs for A204943, there is no canonical definition to state claims against.
-/

/-! ## A204943.P8536868413932134706

`A204945(∑[n+2]+4)`
-/

namespace A204943.P8536868413932134706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204945 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204943.P8536868413932134706

/-! ## A204943.P17740305846141436228

`record[A204945(n+4)*A337165(n)]`
-/

namespace A204943.P17740305846141436228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204945 (n + 4) * A337165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204943.P17740305846141436228

/-! ## A204943.P4838718684446328703

`A204945(A167614(n+1))+floor(n/10)`
-/

namespace A204943.P4838718684446328703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204945 (A167614 (n + 1)).toNat + ⌊(n : ℚ) / 10⌋

end

end A204943.P4838718684446328703

/-!
# A204944: Number of (n+2)X6 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly one way, and new values 0..2 introduced in row major order.

The programs for A204944, there is no canonical definition to state claims against.
-/

/-! ## A204944.P7661000199782737800

`A204945(∑[a(n-4)+a(n-5)+1])` with `a(0)=10, a(1)=4, a(2)=5, a(3)=6, a(4)=7, a(5)=8`
-/

namespace A204944.P7661000199782737800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 4, 5, 6, 7, 8] fun n f1 =>
  f1 (n - 4) + f1 (n - 5) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204945 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204944.P7661000199782737800

/-! ## A204944.P603503838460285646

`A204945(A020752(n+1))`
-/

namespace A204944.P603503838460285646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204945 (A020752 (n + 1)).toNat

end

end A204944.P603503838460285646

/-!
# A204946: Number of (n+2)X(n+2) 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly two different ways, and new values 0..2 introduced in row major order.

The programs for A204946, there is no canonical definition to state claims against.
-/

/-! ## A204946.P11954316677582977399

`A204954(∑[4*n]+1)`
-/

namespace A204946.P11954316677582977399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204954 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204946.P11954316677582977399

/-!
# A204947: Number of (n+2)X3 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly two different ways, and new values 0..2 introduced in row major order.

The programs for A204947, there is no canonical definition to state claims against.
-/

/-! ## A204947.P1922916672897667559

`A204954(∑[n]+1)`
-/

namespace A204947.P1922916672897667559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204954 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204947.P1922916672897667559

/-! ## A204947.P86629840010083467

`record[A204954(A056534(n+1))]`
-/

namespace A204947.P86629840010083467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204954 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204947.P86629840010083467

/-! ## A204947.P9176422220516421934

`record[A010054(n)*A204954(n+1)]`
-/

namespace A204947.P9176422220516421934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204947.P9176422220516421934

/-! ## A204947.P7594270735167589371

`record[A103451(n)*A204954(n+1)]`
-/

namespace A204947.P7594270735167589371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A204954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204947.P7594270735167589371

/-!
# A204948: Number of (n+2)X4 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly two different ways, and new values 0..2 introduced in row major order.

The programs for A204948, there is no canonical definition to state claims against.
-/

/-! ## A204948.P6315019471289792965

`A204954(∑[n+1]+2)`
-/

namespace A204948.P6315019471289792965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204954 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204948.P6315019471289792965

/-! ## A204948.P1115338237126593940

`record[A204954(A337919(n+1)+1)]`
-/

namespace A204948.P1115338237126593940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204954 (A337919 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204948.P1115338237126593940

/-! ## A204948.P4410943546692869004

`record[A010054(n)*A204954(n+2)]`
-/

namespace A204948.P4410943546692869004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204954 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204948.P4410943546692869004

/-! ## A204948.P9559398709101920179

`record[gcd(A204954(n+3), A210485(n+1))]`
-/

namespace A204948.P9559398709101920179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A204954 (n + 3)) (A210485 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204948.P9559398709101920179

/-! ## A204948.P3236281544984602346

`A204954(A133263(n+1))+11*floor(n/10)`
-/

namespace A204948.P3236281544984602346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204954 (A133263 (n + 1)).toNat + 11 * ⌊(n : ℚ) / 10⌋

end

end A204948.P3236281544984602346

/-!
# A204949: Number of (n+2)X5 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly two different ways, and new values 0..2 introduced in row major order.

The programs for A204949, there is no canonical definition to state claims against.
-/

/-! ## A204949.P10544212600124540637

`A204954(∑[n+2]+4)`
-/

namespace A204949.P10544212600124540637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204954 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204949.P10544212600124540637

/-! ## A204949.P17504296541052188216

`record[A204954(A337919(n+2)+2)]`
-/

namespace A204949.P17504296541052188216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204954 (A337919 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204949.P17504296541052188216

/-! ## A204949.P8120318266640400100

`A204954(A167614(n+1))+char[10]`
-/

namespace A204949.P8120318266640400100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204954 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A204949.P8120318266640400100

/-! ## A204949.P17315049605638818660

`A326594(n)+A204954(A167614(n+1))`
-/

namespace A204949.P17315049605638818660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326594 n + A204954 (A167614 (n + 1)).toNat

end

end A204949.P17315049605638818660

/-!
# A204950: Number of (n+2)X6 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly two different ways, and new values 0..2 introduced in row major order.

The programs for A204950, there is no canonical definition to state claims against.
-/

/-! ## A204950.P7953091918925142450

`A204954(∑[n+3]+7)`
-/

namespace A204950.P7953091918925142450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204954 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A204950.P7953091918925142450

/-! ## A204950.P14811858459190610799

`A204954(A374004(n+1))*A290848(n)`
-/

namespace A204950.P14811858459190610799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204954 (A374004 (n + 1)).toNat * A290848 n

end

end A204950.P14811858459190610799

/-! ## A204950.P9851579612693784710

`A204954(A167614(n+2)+1)+A026814(n)`
-/

namespace A204950.P9851579612693784710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204954 (A167614 (n + 2) + 1).toNat + A026814 n

end

end A204950.P9851579612693784710

/-! ## A204950.P7321557743993496809

`A204954(A167614(n+2)+1)+A026815(n)`
-/

namespace A204950.P7321557743993496809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204954 (A167614 (n + 2) + 1).toNat + A026815 n

end

end A204950.P7321557743993496809

/-!
# A204951: Number of (n+2)X7 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly two different ways, and new values 0..2 introduced in row major order.

The programs for A204951, there is no canonical definition to state claims against.
-/

/-! ## A204951.P16168634474148830639

`A204954(A374005(n+1))`
-/

namespace A204951.P16168634474148830639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204954 (A374005 (n + 1)).toNat

end

end A204951.P16168634474148830639

/-! ## A204951.P2259539190532580528

`A204954(A167499(n+3))`
-/

namespace A204951.P2259539190532580528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204954 (A167499 (n + 3)).toNat

end

end A204951.P2259539190532580528

/-! ## A204951.P17990399721357167942

`A204954(A155212(n)+13)`
-/

namespace A204951.P17990399721357167942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204954 (A155212 n + 13).toNat

end

end A204951.P17990399721357167942

/-!
# A204952: Number of (n+2)X8 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly two different ways, and new values 0..2 introduced in row major order.

The programs for A204952, there is no canonical definition to state claims against.
-/

/-! ## A204952.P18360855103283200520

`A204954(A374007(n+1))`
-/

namespace A204952.P18360855103283200520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204954 (A374007 (n + 1)).toNat

end

end A204952.P18360855103283200520

/-!
# A204953: Number of (n+2)X9 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly two different ways, and new values 0..2 introduced in row major order.

The programs for A204953, there is no canonical definition to state claims against.
-/

/-! ## A204953.P4042824755405078260

`A204954(A055999(n+4))`
-/

namespace A204953.P4042824755405078260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204954 (A055999 (n + 4)).toNat

end

end A204953.P4042824755405078260

/-!
# A204955: Number of (n+1)X(n+1) 0..1 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing.

The programs for A204955, there is no canonical definition to state claims against.
-/

/-! ## A204955.P11623529853867078141

`A204962(∑[4*n]+1)`
-/

namespace A204955.P11623529853867078141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204962 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204955.P11623529853867078141

/-! ## A204955.P17452577594286572236

`record[A204962(A330613(n+1))]`
-/

namespace A204955.P17452577594286572236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204962 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204955.P17452577594286572236

/-! ## A204955.P5378611183888349908

`A204962(A001844(n))+char[7]`
-/

namespace A204955.P5378611183888349908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204962 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A204955.P5378611183888349908

/-!
# A204956: Number of (n+1)X3 0..1 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing.

The programs for A204956, there is no canonical definition to state claims against.
-/

/-! ## A204956.P8763012758548852805

`A204962(∑[n+1]+2)`
-/

namespace A204956.P8763012758548852805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204962 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204956.P8763012758548852805

/-! ## A204956.P15206337536677140755

`or(A151933(n), A204962(A133263(n+1)))`
-/

namespace A204956.P15206337536677140755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151933 n) (A204962 (A133263 (n + 1)).toNat)

end

end A204956.P15206337536677140755

/-! ## A204956.P1296294283271327117

`record[A204962(lt[A022180(n), n])]`
-/

namespace A204956.P1296294283271327117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022180 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204962 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204956.P1296294283271327117

/-! ## A204956.P18215388728124772728

`record[A204962(lt[A060628(n), n])]`
-/

namespace A204956.P18215388728124772728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060628 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204962 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204956.P18215388728124772728

/-! ## A204956.P10938417077480328019

`record[A204962(Δ[A003453(n+5)])]`
-/

namespace A204956.P10938417077480328019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204962 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204956.P10938417077480328019

/-!
# A204957: Number of (n+1)X4 0..1 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing.

The programs for A204957, there is no canonical definition to state claims against.
-/

/-! ## A204957.P15854061767576331888

`A204962(∑[n+2]+4)`
-/

namespace A204957.P15854061767576331888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204962 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204957.P15854061767576331888

/-! ## A204957.P12559405912810603920

`A204962(A055998(n)+6)%A204958(n+1)`
-/

namespace A204957.P12559405912810603920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204962 (A055998 n + 6).toNat) (A204958 (n + 1))

end

end A204957.P12559405912810603920

/-! ## A204957.P2898162722750889367

`A000045(gcd(n, n+1))*A204962(A055998(n)+6)`
-/

namespace A204957.P2898162722750889367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A204962 (A055998 n + 6).toNat

end

end A204957.P2898162722750889367

/-! ## A204957.P17697909734533148556

`A014963(A017137(n))*A204962(A055998(n)+6)`
-/

namespace A204957.P17697909734533148556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A017137 n).toNat * A204962 (A055998 n + 6).toNat

end

end A204957.P17697909734533148556

/-! ## A204957.P15198231104620717530

`A014963(A049319(n+1))*A204962(A055998(n)+6)`
-/

namespace A204957.P15198231104620717530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A049319 (n + 1)).toNat * A204962 (A055998 n + 6).toNat

end

end A204957.P15198231104620717530

/-!
# A204958: Number of (n+1)X5 0..1 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing.

The programs for A204958, there is no canonical definition to state claims against.
-/

/-! ## A204958.P17441295924289772041

`A204962(A374004(n+1))`
-/

namespace A204958.P17441295924289772041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204962 (A374004 (n + 1)).toNat

end

end A204958.P17441295924289772041

/-! ## A204958.P17462947685561075832

`A204962(A141214(n)+7)`
-/

namespace A204958.P17462947685561075832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204962 (A141214 n + 7).toNat

end

end A204958.P17462947685561075832

/-! ## A204958.P8755058083866439521

`A204962(A052905(n)+9)`
-/

namespace A204958.P8755058083866439521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204962 (A052905 n + 9).toNat

end

end A204958.P8755058083866439521

/-! ## A204958.P3965384873287534455

`A204962(A055999(n)+10)`
-/

namespace A204958.P3965384873287534455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204962 (A055999 n + 10).toNat

end

end A204958.P3965384873287534455

/-! ## A204958.P7156027535230190904

`A204962(A167614(n+2)+1)`
-/

namespace A204958.P7156027535230190904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204962 (A167614 (n + 2) + 1).toNat

end

end A204958.P7156027535230190904

/-!
# A204959: Number of (n+1)X6 0..1 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing.

The programs for A204959, there is no canonical definition to state claims against.
-/

/-! ## A204959.P10894527366848411906

`A204962(∑[n+4]+11)`
-/

namespace A204959.P10894527366848411906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204962 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A204959.P10894527366848411906

/-! ## A204959.P13533607071527010973

`A204962(A167499(n+3))+A194186(n+1)`
-/

namespace A204959.P13533607071527010973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204962 (A167499 (n + 3)).toNat + A194186 (n + 1)

end

end A204959.P13533607071527010973

/-! ## A204959.P934000971211798505

`A230513(n+1)+A204962(A167499(n+3))`
-/

namespace A204959.P934000971211798505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230513 (n + 1) + A204962 (A167499 (n + 3)).toNat

end

end A204959.P934000971211798505

/-! ## A204959.P7221256872592463707

`A204962(A167499(n+3))+A063524(3*n+4)`
-/

namespace A204959.P7221256872592463707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204962 (A167499 (n + 3)).toNat + A063524 (3 * n + 4)

end

end A204959.P7221256872592463707

/-! ## A204959.P15360310772873738144

`A204962(A046691(n+3))+A014083(n)`
-/

namespace A204959.P15360310772873738144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204962 (A046691 (n + 3)).toNat + A014083 n

end

end A204959.P15360310772873738144

/-!
# A204960: Number of (n+1)X7 0..1 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing.

The programs for A204960, there is no canonical definition to state claims against.
-/

/-! ## A204960.P11089163903051244118

`A204962(A374007(n+1))`
-/

namespace A204960.P11089163903051244118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204962 (A374007 (n + 1)).toNat

end

end A204960.P11089163903051244118

/-! ## A204960.P9706032088270499862

`A204962(eq[7, A131818(n+1)])`
-/

namespace A204960.P9706032088270499862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204960.P9706032088270499862

/-! ## A204960.P7565164874152667796

`A204962(A052905(n+3))`
-/

namespace A204960.P7565164874152667796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204962 (A052905 (n + 3)).toNat

end

end A204960.P7565164874152667796

/-! ## A204960.P16314098199707766147

`A204962(eq[5, A193592(n)])`
-/

namespace A204960.P16314098199707766147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204960.P16314098199707766147

/-! ## A204960.P4010474962575474471

`A204962(eq[6, A200370(n+1)])`
-/

namespace A204960.P4010474962575474471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204960.P4010474962575474471

/-!
# A204961: Number of (n+1) X 8 0..1 arrays with rows and columns of permanents of all 2 X 2 subblocks lexicographically nondecreasing.

The programs for A204961, there is no canonical definition to state claims against.
-/

/-! ## A204961.P13376021151158599818

`A204962(A374008(n+1))`
-/

namespace A204961.P13376021151158599818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204962 (A374008 (n + 1)).toNat

end

end A204961.P13376021151158599818

/-! ## A204961.P529157644934913051

`A204962(eq[11, A066657(n)])`
-/

namespace A204961.P529157644934913051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204961.P529157644934913051

/-! ## A204961.P2338866026382454944

`A204962(A167614(n+5)+4)`
-/

namespace A204961.P2338866026382454944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204962 (A167614 (n + 5) + 4).toNat

end

end A204961.P2338866026382454944

/-! ## A204961.P7800579112454047701

`A204962(A000096(n+5)+8)`
-/

namespace A204961.P7800579112454047701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204962 (A000096 (n + 5) + 8).toNat

end

end A204961.P7800579112454047701

/-! ## A204961.P10290145523060620629

`A204962(eq[6, A002262(n)]+1)`
-/

namespace A204961.P10290145523060620629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A204961.P10290145523060620629

/-!
# A204962: T(n,k) is the number of (n+1) X (k+1) 0..1 arrays with rows and columns of permanents of all 2 X 2 subblocks lexicographically nondecreasing.

The programs for A204962, there is no canonical definition to state claims against.
-/

/-! ## A204962.P2406148692010455983

`or(A204723(n+1), A326459(A107881(n)))`
-/

namespace A204962.P2406148692010455983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A204723 (n + 1)) (A326459 (A107881 n).toNat)

end

end A204962.P2406148692010455983

/-!
# A204963: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally at least two different ways, and new values 0..1 introduced in row major order.

The programs for A204963, there is no canonical definition to state claims against.
-/

/-! ## A204963.P7094457600781568183

`A204971((n+1)²+n²)`
-/

namespace A204963.P7094457600781568183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204971 ((n + 1) ^ 2 + n ^ 2)

end

end A204963.P7094457600781568183

/-!
# A204964: Number of (n+2)X3 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally at least two different ways, and new values 0..1 introduced in row major order.

The programs for A204964, there is no canonical definition to state claims against.
-/

/-! ## A204964.P18355173858020152140

`A204971(∑[n]+1)`
-/

namespace A204964.P18355173858020152140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204971 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204964.P18355173858020152140

/-! ## A204964.P8708675990211937648

`record[A204971(n+1)/A326659(n)]`
-/

namespace A204964.P8708675990211937648
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204971 (n + 1) : ℚ) / (A326659 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204964.P8708675990211937648

/-! ## A204964.P15911725352146573990

`record[gcd(A204971(n+1), A271439(n))]`
-/

namespace A204964.P15911725352146573990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A204971 (n + 1)) (A271439 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204964.P15911725352146573990

/-! ## A204964.P2936570024000838440

`record[A204971(n+1)/A183244(n+1)]`
-/

namespace A204964.P2936570024000838440
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204971 (n + 1) : ℚ) / (A183244 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204964.P2936570024000838440

/-! ## A204964.P6159413296052493048

`record[root(A204971(n+1), A245093(n+1))]`
-/

namespace A204964.P6159413296052493048
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204971 (n + 1) : ℝ) ^ (1 / (A245093 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204964.P6159413296052493048

/-!
# A204965: Number of (n+2)X4 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally at least two different ways, and new values 0..1 introduced in row major order.

The programs for A204965, there is no canonical definition to state claims against.
-/

/-! ## A204965.P10859156630980926861

`A204971(∑[n+1]+2)`
-/

namespace A204965.P10859156630980926861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204971 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204965.P10859156630980926861

/-! ## A204965.P5724362260693544488

`record[gcd(A204971(n+2), A271439(n))]`
-/

namespace A204965.P5724362260693544488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A204971 (n + 2)) (A271439 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204965.P5724362260693544488

/-! ## A204965.P15237368696801348578

`record[root(A204971(n+2), A183244(n+1))]`
-/

namespace A204965.P15237368696801348578
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204971 (n + 2) : ℝ) ^ (1 / (A183244 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204965.P15237368696801348578

/-! ## A204965.P16477775448848014665

`record[root(A204971(n+2), A245093(n+1))]`
-/

namespace A204965.P16477775448848014665
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204971 (n + 2) : ℝ) ^ (1 / (A245093 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204965.P16477775448848014665

/-! ## A204965.P3232766715810707777

`record[A204971(Δ[A003453(n+5)])]`
-/

namespace A204965.P3232766715810707777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204971 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204965.P3232766715810707777

/-!
# A204966: Number of (n+2)X5 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally at least two different ways, and new values 0..1 introduced in row major order.

The programs for A204966, there is no canonical definition to state claims against.
-/

/-! ## A204966.P6436249887083080057

`A204971(∑[n+2]+4)`
-/

namespace A204966.P6436249887083080057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204971 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204966.P6436249887083080057

/-! ## A204966.P312825619156956753

`A204971(A167614(n+1))+A025442(n)`
-/

namespace A204966.P312825619156956753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204971 (A167614 (n + 1)).toNat + A025442 n

end

end A204966.P312825619156956753

/-! ## A204966.P1267778080036855035

`A204971(A167614(n+1))+A185284(n)`
-/

namespace A204966.P1267778080036855035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204971 (A167614 (n + 1)).toNat + A185284 n

end

end A204966.P1267778080036855035

/-! ## A204966.P8702365134151736173

`lcm(A054977(n), A204971(A167614(n+1)))`
-/

namespace A204966.P8702365134151736173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A204971 (A167614 (n + 1)).toNat)

end

end A204966.P8702365134151736173

/-! ## A204966.P15759239271893946909

`or(A000038(n), A204971(A167614(n+1)))`
-/

namespace A204966.P15759239271893946909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A204971 (A167614 (n + 1)).toNat)

end

end A204966.P15759239271893946909

/-!
# A204967: Number of (n+2) X 6 0..1 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally at least two different ways, and new values 0..1 introduced in row major order.

The programs for A204967, there is no canonical definition to state claims against.
-/

/-! ## A204967.P10323760000701724266

`A204971(A374004(n+1))`
-/

namespace A204967.P10323760000701724266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204971 (A374004 (n + 1)).toNat

end

end A204967.P10323760000701724266

/-! ## A204967.P12207685531547720693

`A204971(A052905(n)+9)`
-/

namespace A204967.P12207685531547720693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204971 (A052905 n + 9).toNat

end

end A204967.P12207685531547720693

/-! ## A204967.P9601357611323297252

`A204971(A055999(n)+10)`
-/

namespace A204967.P9601357611323297252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204971 (A055999 n + 10).toNat

end

end A204967.P9601357611323297252

/-! ## A204967.P8206152975509690575

`A204971(A167614(n+2)+1)`
-/

namespace A204967.P8206152975509690575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204971 (A167614 (n + 2) + 1).toNat

end

end A204967.P8206152975509690575

/-! ## A204967.P6134270527275411780

`A204971(Δ[A264443(n)-n²])`
-/

namespace A204967.P6134270527275411780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204971 (f1 (n + 1) - f1 n).toNat

end

end A204967.P6134270527275411780

/-!
# A204968: Number of (n+2)X7 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally at least two different ways, and new values 0..1 introduced in row major order.

The programs for A204968, there is no canonical definition to state claims against.
-/

/-! ## A204968.P17838791645806325297

`A204971(A374005(n+1))`
-/

namespace A204968.P17838791645806325297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204971 (A374005 (n + 1)).toNat

end

end A204968.P17838791645806325297

/-! ## A204968.P15101366580470283231

`A204971(A056000(n)+15)`
-/

namespace A204968.P15101366580470283231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204971 (A056000 n + 15).toNat

end

end A204968.P15101366580470283231

/-! ## A204968.P10131366161793613731

`A204971(eq[6, A131818(n+1)])`
-/

namespace A204968.P10131366161793613731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204971 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204968.P10131366161793613731

/-! ## A204968.P4644094385070369042

`A204971(Δ[A264443(n)])`
-/

namespace A204968.P4644094385070369042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204971 (f1 (n + 1) - f1 n).toNat

end

end A204968.P4644094385070369042

/-! ## A204968.P14863553347034582385

`A204971(A056115(n)+11)`
-/

namespace A204968.P14863553347034582385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204971 (A056115 n + 11).toNat

end

end A204968.P14863553347034582385

/-!
# A204969: Number of (n+2) X 8 0..1 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally at least two different ways, and new values 0..1 introduced in row major order.

The programs for A204969, there is no canonical definition to state claims against.
-/

/-! ## A204969.P11910019272937179398

`A204971(A374007(n+1))`
-/

namespace A204969.P11910019272937179398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204971 (A374007 (n + 1)).toNat

end

end A204969.P11910019272937179398

/-! ## A204969.P18332331324713243358

`A204971(Δ[Δ[A006504(n+1)]])`
-/

namespace A204969.P18332331324713243358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204971 (f1 (n + 1) - f1 n).toNat

end

end A204969.P18332331324713243358

/-! ## A204969.P15210975247682714248

`A204971(Δ[A264443(n+1)]-1)`
-/

namespace A204969.P15210975247682714248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204971 (f1 (n + 1) - f1 n - 1).toNat

end

end A204969.P15210975247682714248

/-!
# A204970: Number of (n+2)X9 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally at least two different ways, and new values 0..1 introduced in row major order.

The programs for A204970, there is no canonical definition to state claims against.
-/

/-! ## A204970.P5769604021793417646

`A204971(A374008(n+1))`
-/

namespace A204970.P5769604021793417646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204971 (A374008 (n + 1)).toNat

end

end A204970.P5769604021793417646

/-! ## A204970.P7668734464494560788

`A204971(A055999(n+4))`
-/

namespace A204970.P7668734464494560788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204971 (A055999 (n + 4)).toNat

end

end A204970.P7668734464494560788

/-! ## A204970.P18429266420086438491

`A204971(A046691(n+5)-2)`
-/

namespace A204970.P18429266420086438491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204971 (A046691 (n + 5) - 2).toNat

end

end A204970.P18429266420086438491

/-!
# A204972: Number of n X n 0..2 arrays with no occurrence of three equal elements in a row horizontally, vertically, diagonally or antidiagonally, and new values 0..2 introduced in row major order.

The programs for A204972, there is no canonical definition to state claims against.
-/

/-! ## A204972.P16656791887697078144

`A204978((n+1)²+n²)`
-/

namespace A204972.P16656791887697078144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204978 ((n + 1) ^ 2 + n ^ 2)

end

end A204972.P16656791887697078144

/-!
# A204973: Number of nX3 0..2 arrays with no occurrence of three equal elements in a row horizontally, vertically, diagonally or antidiagonally, and new values 0..2 introduced in row major order.

The programs for A204973, there is no canonical definition to state claims against.
-/

/-! ## A204973.P10372170088448710921

`A204978(∑[n+2]+4)`
-/

namespace A204973.P10372170088448710921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204978 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204973.P10372170088448710921

/-! ## A204973.P13395377643149192977

`lcm(1-and(2, n), A204978(A167614(n+1)))`
-/

namespace A204973.P13395377643149192977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A204978 (A167614 (n + 1)).toNat)

end

end A204973.P13395377643149192977

/-! ## A204973.P114375939952460451

`A204978(A167614(n+1))+A035930(n)`
-/

namespace A204973.P114375939952460451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204978 (A167614 (n + 1)).toNat + A035930 n

end

end A204973.P114375939952460451

/-! ## A204973.P15421623511908411528

`A204978(A167614(n+1))+A064458(n)`
-/

namespace A204973.P15421623511908411528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204978 (A167614 (n + 1)).toNat + A064458 n

end

end A204973.P15421623511908411528

/-! ## A204973.P13024149273123611098

`A204978(A167614(n+1))+A090620(n)`
-/

namespace A204973.P13024149273123611098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204978 (A167614 (n + 1)).toNat + A090620 n

end

end A204973.P13024149273123611098

/-!
# A204974: Number of nX4 0..2 arrays with no occurrence of three equal elements in a row horizontally, vertically, diagonally or antidiagonally, and new values 0..2 introduced in row major order.

The programs for A204974, there is no canonical definition to state claims against.
-/

/-! ## A204974.P14178262414554076974

`A204978(A374004(n+1))`
-/

namespace A204974.P14178262414554076974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204978 (A374004 (n + 1)).toNat

end

end A204974.P14178262414554076974

/-! ## A204974.P788406642974331900

`A204978(A141214(n)+7)`
-/

namespace A204974.P788406642974331900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204978 (A141214 n + 7).toNat

end

end A204974.P788406642974331900

/-! ## A204974.P1516614828323531906

`A204978(A052905(n)+9)`
-/

namespace A204974.P1516614828323531906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204978 (A052905 n + 9).toNat

end

end A204974.P1516614828323531906

/-! ## A204974.P2520913989396660174

`A204978(A055999(n)+10)`
-/

namespace A204974.P2520913989396660174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204978 (A055999 n + 10).toNat

end

end A204974.P2520913989396660174

/-! ## A204974.P13535574884141641205

`A204978(eq[5, A066657(n)])`
-/

namespace A204974.P13535574884141641205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204978 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204974.P13535574884141641205

/-!
# A204975: Number of nX5 0..2 arrays with no occurrence of three equal elements in a row horizontally, vertically, diagonally or antidiagonally, and new values 0..2 introduced in row major order.

The programs for A204975, there is no canonical definition to state claims against.
-/

/-! ## A204975.P6198470319248505309

`A204978(A374005(n+1))`
-/

namespace A204975.P6198470319248505309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204978 (A374005 (n + 1)).toNat

end

end A204975.P6198470319248505309

/-! ## A204975.P13445820714576700921

`A204978(A167499(n+3))`
-/

namespace A204975.P13445820714576700921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204978 (A167499 (n + 3)).toNat

end

end A204975.P13445820714576700921

/-! ## A204975.P15480120874936090118

`A204978(A155212(n)+13)`
-/

namespace A204975.P15480120874936090118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204978 (A155212 n + 13).toNat

end

end A204975.P15480120874936090118

/-! ## A204975.P941770690128913952

`A204978(A056000(n)+15)`
-/

namespace A204975.P941770690128913952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204978 (A056000 n + 15).toNat

end

end A204975.P941770690128913952

/-! ## A204975.P3320916458679077022

`A204978(eq[7, A066657(n)])`
-/

namespace A204975.P3320916458679077022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204978 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204975.P3320916458679077022

/-!
# A204976: Number of nX6 0..2 arrays with no occurrence of three equal elements in a row horizontally, vertically, diagonally or antidiagonally, and new values 0..2 introduced in row major order.

The programs for A204976, there is no canonical definition to state claims against.
-/

/-! ## A204976.P3917014953018908840

`A204978(∑[n+5]+16)`
-/

namespace A204976.P3917014953018908840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204978 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A204976.P3917014953018908840

/-! ## A204976.P2250990682092285227

`A308989(n)+A204978(A000217(n+5)+6)`
-/

namespace A204976.P2250990682092285227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308989 n + A204978 (A000217 (n + 5) + 6).toNat

end

end A204976.P2250990682092285227

/-! ## A204976.P6296596614950020138

`A204978(A052905(n+3))*A250261(n)`
-/

namespace A204976.P6296596614950020138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204978 (A052905 (n + 3)).toNat * A250261 n

end

end A204976.P6296596614950020138

/-!
# A204977: Number of nX7 0..2 arrays with no occurrence of three equal elements in a row horizontally, vertically, diagonally or antidiagonally, and new values 0..2 introduced in row major order.

The programs for A204977, there is no canonical definition to state claims against.
-/

/-! ## A204977.P16232536701235413107

`A204978(∑[n+7]+15)`
-/

namespace A204977.P16232536701235413107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204978 (∑ j ∈ Finset.range (n + 1), f1 j + 15)

end

end A204977.P16232536701235413107

/-!
# A204979: Least k such that n divides 2^(k-1)-2^(j-1) for some j satisfying 1<=j<k.

The programs for A204979, there is no canonical definition to state claims against.
-/

/-! ## A204979.P1501549790874233176

`A054703(n+1)+1`
-/

namespace A204979.P1501549790874233176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (n + 1) + 1

end

end A204979.P1501549790874233176

/-! ## A204979.P3370249101566767022

`A204987(2*(n+1))`
-/

namespace A204979.P3370249101566767022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 (2 * (n + 1))

end

end A204979.P3370249101566767022

/-! ## A204979.P1012461468145201771

`A054703(4-2*(1-n))`
-/

namespace A204979.P1012461468145201771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (4 - 2 * (1 - (n : ℤ))).toNat

end

end A204979.P1012461468145201771

/-! ## A204979.P15667303034703963388

`A204987(n+1)+n%2`
-/

namespace A204979.P15667303034703963388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 (n + 1) + ((n % 2 : ℕ) : ℤ)

end

end A204979.P15667303034703963388

/-! ## A204979.P14340018655283030924

`A007733(n+1)+val(n+1, 2)+1`
-/

namespace A204979.P14340018655283030924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (n + 1) + (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ)

end

end A204979.P14340018655283030924

/-! ## A204979.P11613327817315482899

`A020725(A054703(n+1))`
-/

namespace A204979.P11613327817315482899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A054703 (n + 1)).toNat

end

end A204979.P11613327817315482899

/-! ## A204979.P11986993658209464782

`A204987(n+1)+A000035(n)`
-/

namespace A204979.P11986993658209464782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 (n + 1) + A000035 n

end

end A204979.P11986993658209464782

/-! ## A204979.P11153821789152148644

`A007733(n+1)+Δ[A005187(n)]`
-/

namespace A204979.P11153821789152148644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (n + 1) + (f1 (n + 1) - f1 n)

end

end A204979.P11153821789152148644

/-! ## A204979.P13561105610843724157

`A007733(n+1)+A001511(n+1)`
-/

namespace A204979.P13561105610843724157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (n + 1) + A001511 (n + 1)

end

end A204979.P13561105610843724157

/-! ## A204979.P6613326457102072940

`A204987(n+1)+A059841(n+1)`
-/

namespace A204979.P6613326457102072940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 (n + 1) + A059841 (n + 1)

end

end A204979.P6613326457102072940

/-! ## A204979.P5122267461874657085

`A204987(n+1)+Δ[A110654(n+1)]`
-/

namespace A204979.P5122267461874657085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 (n + 1) + (f1 (n + 1) - f1 n)

end

end A204979.P5122267461874657085

/-! ## A204979.P359701237437292710

`A007733(n+1)+2-Δ[A000120(n)]`
-/

namespace A204979.P359701237437292710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (n + 1) + (2 - (f1 (n + 1) - f1 n))

end

end A204979.P359701237437292710

/-! ## A204979.P5892310308129128128

`A007733(n+1)+A007814(n+1)+1`
-/

namespace A204979.P5892310308129128128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (n + 1) + (A007814 (n + 1) + 1)

end

end A204979.P5892310308129128128

/-! ## A204979.P11810980753193334952

`A204988(2*(n+1))+A007733(n+1)`
-/

namespace A204979.P11810980753193334952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204988 (2 * (n + 1)) + A007733 (n + 1)

end

end A204979.P11810980753193334952

/-! ## A204979.P17178101238055414989

`A007733(n+1)+log2(A006519(2*(n+1)))`
-/

namespace A204979.P17178101238055414989
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A007733 (n + 1) : ℝ) + Real.logb 2 (A006519 (2 * (n + 1)) : ℝ)

end

end A204979.P17178101238055414989

/-! ## A204979.P17858955713234175632

`A007733(n+1)+A000005(and(n+1, -(n+1)))`
-/

namespace A204979.P17858955713234175632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (n + 1) + A000005 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat

end

end A204979.P17858955713234175632

/-! ## A204979.P15720946743173473303

`A007733(n+1)+A000005(A006519(n+1))`
-/

namespace A204979.P15720946743173473303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (n + 1) + A000005 (A006519 (n + 1)).toNat

end

end A204979.P15720946743173473303

/-! ## A204979.P5376934874381983632

`A204987(A000265(n+1))+A007814(n+1)`
-/

namespace A204979.P5376934874381983632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 (A000265 (n + 1)).toNat + A007814 (n + 1)

end

end A204979.P5376934874381983632

/-! ## A204979.P16995070348154973935

`A204987(n+1)+A057427(A007814(n+1))`
-/

namespace A204979.P16995070348154973935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 (n + 1) + A057427 (A007814 (n + 1)).toNat

end

end A204979.P16995070348154973935

/-! ## A204979.P6174956575768548399

`A007733(n+1)+A007733(A140670(2*(n+1)))`
-/

namespace A204979.P6174956575768548399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (n + 1) + A007733 (A140670 (2 * (n + 1))).toNat

end

end A204979.P6174956575768548399

/-!
# A204980: Ordered differences of distinct averages of two consecutive odd primes.

The programs for A204980, the canonical program `A204980.P133552277968696332` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204980 has offset 1).

The definition of A204980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204980.P8654213569497001063

`(A204906(n+1)+A204898(n+1))/2`
-/

namespace A204980.P8654213569497001063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204906 (n + 1) + A204898 (n + 1) : ℚ) / 2

end

end A204980.P8654213569497001063

namespace A204980

/-- `(A204906(n+1)+A204898(n+1))/2` -/
def P8654213569497001063.Spec : Prop :=
  ∀ n, P8654213569497001063.a n = (A204980 (n + 1) : ℚ)

end A204980

/-! ## A204980.P6479013158106583610

`A205558(n+1)+A204906(n+1)/2`
-/

namespace A204980.P6479013158106583610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205558 (n + 1) : ℚ) + (A204906 (n + 1) : ℚ) / 2

end

end A204980.P6479013158106583610

namespace A204980

/-- `A205558(n+1)+A204906(n+1)/2` -/
def P6479013158106583610.Spec : Prop :=
  ∀ n, P6479013158106583610.a n = (A204980 (n + 1) : ℚ)

end A204980

/-! ## A204980.P133552277968696332

`A001281(A204906(n+1)+A204898(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A204980

/-- `A001281(A204906(n+1)+A204898(n+1))` -/
def P133552277968696332.Spec : Prop :=
  ∀ n, P133552277968696332.a n = A204980 (n + 1)

theorem P133552277968696332.correct : P133552277968696332.Spec := by
  intro n
  simp only [A204980, Nat.add_sub_cancel]

end A204980

/-! ## A204980.P393422665671291445

`A205558(n+1)+A001281(A204906(n+1))`
-/

namespace A204980.P393422665671291445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205558 (n + 1) + A001281 (A204906 (n + 1)).toNat

end

end A204980.P393422665671291445

namespace A204980

/-- `A205558(n+1)+A001281(A204906(n+1))` -/
def P393422665671291445.Spec : Prop :=
  ∀ n, P393422665671291445.a n = A204980 (n + 1)

end A204980

/-! ## A204980.P8915821955541085753

`A004525(A204906(n+1)+A204898(n+1))`
-/

namespace A204980.P8915821955541085753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A204906 (n + 1) + A204898 (n + 1)).toNat

end

end A204980.P8915821955541085753

namespace A204980

/-- `A004525(A204906(n+1)+A204898(n+1))` -/
def P8915821955541085753.Spec : Prop :=
  ∀ n, P8915821955541085753.a n = A204980 (n + 1)

end A204980

/-! ## A204980.P4722043103222510087

`A004526(A204906(n+1)+A204898(n+1))`
-/

namespace A204980.P4722043103222510087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A204906 (n + 1) + A204898 (n + 1)).toNat

end

end A204980.P4722043103222510087

namespace A204980

/-- `A004526(A204906(n+1)+A204898(n+1))` -/
def P4722043103222510087.Spec : Prop :=
  ∀ n, P4722043103222510087.a n = A204980 (n + 1)

end A204980

/-! ## A204980.P9527137434101236752

`A014682(A204906(n+1)+A204898(n+1))`
-/

namespace A204980.P9527137434101236752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A204906 (n + 1) + A204898 (n + 1)).toNat

end

end A204980.P9527137434101236752

namespace A204980

/-- `A014682(A204906(n+1)+A204898(n+1))` -/
def P9527137434101236752.Spec : Prop :=
  ∀ n, P9527137434101236752.a n = A204980 (n + 1)

end A204980

/-! ## A204980.P11576401637629275815

`A026741(A204906(n+1)+A204898(n+1))`
-/

namespace A204980.P11576401637629275815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A204906 (n + 1) + A204898 (n + 1)).toNat

end

end A204980.P11576401637629275815

namespace A204980

/-- `A026741(A204906(n+1)+A204898(n+1))` -/
def P11576401637629275815.Spec : Prop :=
  ∀ n, P11576401637629275815.a n = A204980 (n + 1)

end A204980

/-! ## A204980.P8857967340133470069

`A065033(A204906(n+1)+A204898(n+1))`
-/

namespace A204980.P8857967340133470069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A204906 (n + 1) + A204898 (n + 1)).toNat

end

end A204980.P8857967340133470069

namespace A204980

/-- `A065033(A204906(n+1)+A204898(n+1))` -/
def P8857967340133470069.Spec : Prop :=
  ∀ n, P8857967340133470069.a n = A204980 (n + 1)

end A204980

/-! ## A204980.P6469914279216730477

`A078898(A204906(n+1)+A204898(n+1))`
-/

namespace A204980.P6469914279216730477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A204906 (n + 1) + A204898 (n + 1)).toNat

end

end A204980.P6469914279216730477

namespace A204980

/-- `A078898(A204906(n+1)+A204898(n+1))` -/
def P6469914279216730477.Spec : Prop :=
  ∀ n, P6469914279216730477.a n = A204980 (n + 1)

end A204980

/-! ## A204980.P5364473623382520621

`A110654(A204906(n+1)+A204898(n+1))`
-/

namespace A204980.P5364473623382520621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A204906 (n + 1) + A204898 (n + 1)).toNat

end

end A204980.P5364473623382520621

namespace A204980

/-- `A110654(A204906(n+1)+A204898(n+1))` -/
def P5364473623382520621.Spec : Prop :=
  ∀ n, P5364473623382520621.a n = A204980 (n + 1)

end A204980

/-! ## A204980.P4836962873920317347

`A123108(A204906(n+1)+A204898(n+1))`
-/

namespace A204980.P4836962873920317347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A204906 (n + 1) + A204898 (n + 1)).toNat

end

end A204980.P4836962873920317347

namespace A204980

/-- `A123108(A204906(n+1)+A204898(n+1))` -/
def P4836962873920317347.Spec : Prop :=
  ∀ n, P4836962873920317347.a n = A204980 (n + 1)

end A204980

/-! ## A204980.P9860555219250047705

`A205558(A080036(n+1))+A205558(n+1)`
-/

namespace A204980.P9860555219250047705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205558 (A080036 (n + 1)).toNat + A205558 (n + 1)

end

end A204980.P9860555219250047705

namespace A204980

/-- `A205558(A080036(n+1))+A205558(n+1)` -/
def P9860555219250047705.Spec : Prop :=
  ∀ n, P9860555219250047705.a n = A204980 (n + 1)

end A204980

/-! ## A204980.P15708578112495230729

`A205558(A133196(n+1)+n)+A205558(n+1)`
-/

namespace A204980.P15708578112495230729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205558 (A133196 (n + 1) + (n : ℤ)).toNat + A205558 (n + 1)

end

end A204980.P15708578112495230729

namespace A204980

/-- `A205558(A133196(n+1)+n)+A205558(n+1)` -/
def P15708578112495230729.Spec : Prop :=
  ∀ n, P15708578112495230729.a n = A204980 (n + 1)

end A204980

/-!
# A204981: Least 2^(k-1) such that n divides 2^(k-1)-2^(j-1) for some j<k.

The programs for A204981, there is no canonical definition to state claims against.
-/

/-! ## A204981.P5843283635370568051

`2^A054703(n+1)`
-/

namespace A204981.P5843283635370568051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A054703 (n + 1) : ℤ)

end

end A204981.P5843283635370568051

/-! ## A204981.P7212547722026881576

`2^(A204979(n+1)-1)`
-/

namespace A204981.P7212547722026881576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A204979 (n + 1) - 1 : ℤ)

end

end A204981.P7212547722026881576

/-! ## A204981.P2489906485154032496

`or(n, A204983(n+1))+1`
-/

namespace A204981.P2489906485154032496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A204983 (n + 1)) + 1

end

end A204981.P2489906485154032496

/-! ## A204981.P1525382864611900646

`2^(A007733(n+1)+log2(and(n+1, -(n+1))))`
-/

namespace A204981.P1525382864611900646
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((A007733 (n + 1) : ℝ) + Real.logb 2 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ))

end

end A204981.P1525382864611900646

/-! ## A204981.P2372946708619520239

`A000079(A054703(n+1))`
-/

namespace A204981.P2372946708619520239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A054703 (n + 1)).toNat

end

end A204981.P2372946708619520239

/-! ## A204981.P6372189981344750547

`A011782(A204979(n+1))`
-/

namespace A204981.P6372189981344750547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A204979 (n + 1)).toNat

end

end A204981.P6372189981344750547

/-! ## A204981.P15757498434709137870

`A011782(A054703(n+1)+1)`
-/

namespace A204981.P15757498434709137870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A054703 (n + 1) + 1).toNat

end

end A204981.P15757498434709137870

/-! ## A204981.P12809901742787816956

`A090129(A204979(n+1)+1)`
-/

namespace A204981.P12809901742787816956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090129 (A204979 (n + 1) + 1).toNat

end

end A204981.P12809901742787816956

/-! ## A204981.P16908719771700189677

`A000079(A204979(n+1)-1)`
-/

namespace A204981.P16908719771700189677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A204979 (n + 1) - 1).toNat

end

end A204981.P16908719771700189677

/-! ## A204981.P4758722151925184656

`A016116(2*A054703(n+1))`
-/

namespace A204981.P4758722151925184656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * A054703 (n + 1)).toNat

end

end A204981.P4758722151925184656

/-! ## A204981.P8918158094171113148

`A011782(A204987(2*(n+1)))`
-/

namespace A204981.P8918158094171113148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A204987 (2 * (n + 1))).toNat

end

end A204981.P8918158094171113148

/-! ## A204981.P10986371102209743879

`A060547(3*A054703(n+1))`
-/

namespace A204981.P10986371102209743879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060547 (3 * A054703 (n + 1)).toNat

end

end A204981.P10986371102209743879

/-! ## A204981.P195343878705958579

`A000079(A204987(2*(n+1))-1)`
-/

namespace A204981.P195343878705958579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A204987 (2 * (n + 1)) - 1).toNat

end

end A204981.P195343878705958579

/-! ## A204981.P10392753672431327320

`A204983(n+1)+A006519(n+1)`
-/

namespace A204981.P10392753672431327320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204983 (n + 1) + A006519 (n + 1)

end

end A204981.P10392753672431327320

/-! ## A204981.P10115943419175661295

`2^A007814(n+1)*2^A007733(n+1)`
-/

namespace A204981.P10115943419175661295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007814 (n + 1) : ℤ) * (2 : ℚ) ^ (A007733 (n + 1) : ℤ)

end

end A204981.P10115943419175661295

/-! ## A204981.P12099886314340914003

`A000079(A007814(n+1)+A007733(n+1))`
-/

namespace A204981.P12099886314340914003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A007814 (n + 1) + A007733 (n + 1)).toNat

end

end A204981.P12099886314340914003

/-! ## A204981.P16374964079249786408

`A204983(n+1)+A000079(A007814(n+1))`
-/

namespace A204981.P16374964079249786408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204983 (n + 1) + A000079 (A007814 (n + 1)).toNat

end

end A204981.P16374964079249786408

/-! ## A204981.P15040155702487536968

`A016116(A054703(n+1)+A054703(n+1)+1)`
-/

namespace A204981.P15040155702487536968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A054703 (n + 1) + (A054703 (n + 1) + 1)).toNat

end

end A204981.P15040155702487536968

/-! ## A204981.P11157829146741035422

`A255047(A054703(n+1))+A214062(3*n+4)`
-/

namespace A204981.P11157829146741035422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 (A054703 (n + 1)).toNat + A214062 (3 * n + 4)

end

end A204981.P11157829146741035422

/-! ## A204981.P3257869828439569930

`A204989(2*(n+1))/2`
-/

namespace A204981.P3257869828439569930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204989 (2 * (n + 1)) : ℚ) / 2

end

end A204981.P3257869828439569930

/-!
# A204982: Least k such that n divides k!! - j!! for some j satisfying 1 <= j < k.

The programs for A204982, there is no canonical definition to state claims against.
-/

/-! ## A204982.P6557713294820590541

`1+A002024(A204913(n+1))`
-/

namespace A204982.P6557713294820590541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A002024 (A204913 (n + 1)).toNat

end

end A204982.P6557713294820590541

/-! ## A204982.P14350315104220872773

`A003057(A204913(n+1)+1)`
-/

namespace A204982.P14350315104220872773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A204913 (n + 1) + 1).toNat

end

end A204982.P14350315104220872773

/-! ## A204982.P18007075228784192050

`A097285(2*A204913(n+1))`
-/

namespace A204982.P18007075228784192050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A204913 (n + 1)).toNat

end

end A204982.P18007075228784192050

/-! ## A204982.P14050957899766994820

`A097285(A005843(A204913(n+1)))`
-/

namespace A204982.P14050957899766994820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A005843 (A204913 (n + 1)).toNat).toNat

end

end A204982.P14050957899766994820

/-! ## A204982.P4472805793187148274

`A003059(A028392(2*A204913(n+1)))`
-/

namespace A204982.P4472805793187148274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A028392 (2 * A204913 (n + 1)).toNat).toNat

end

end A204982.P4472805793187148274

/-!
# A204983: a(n) = 2^(k-1)-2^(j-1), where (2^(k-1),2^(j-1)) is the least pair of distinct positive powers of 2 for which n divides 2^(k-1)-2^(j-1).

The programs for A204983, there is no canonical definition to state claims against.
-/

/-! ## A204983.P15542007806485206259

`(n+1)*A204984(n+1)`
-/

namespace A204983.P15542007806485206259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A204984 (n + 1)

end

end A204983.P15542007806485206259

/-! ## A204983.P4812534981391117046

`lcm(n+1, A204990(n+1))`
-/

namespace A204983.P4812534981391117046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A204990 (n + 1))

end

end A204983.P4812534981391117046

/-! ## A204983.P11452105720855190842

`A204991(n+1)/gcd(2, n)`
-/

namespace A204983.P11452105720855190842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204991 (n + 1) : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A204983.P11452105720855190842

/-! ## A204983.P17922874481960493936

`(n+1)*lcm(2, A204992(n+1))/2`
-/

namespace A204983.P17922874481960493936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((Int.lcm 2 (A204992 (n + 1)) : ℚ) / 2)

end

end A204983.P17922874481960493936

/-! ## A204983.P10873384485196749898

`A000034(n)*A204990(n+1)`
-/

namespace A204983.P10873384485196749898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A204990 (n + 1)

end

end A204983.P10873384485196749898

/-! ## A204983.P15714006816128648277

`A204981(n+1)-A006519(n+1)`
-/

namespace A204983.P15714006816128648277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204981 (n + 1) - A006519 (n + 1)

end

end A204983.P15714006816128648277

/-! ## A204983.P3781903772705505026

`A204991(n+1)/(A059841(n)+1)`
-/

namespace A204983.P3781903772705505026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204991 (n + 1) : ℚ) / (A059841 n + 1 : ℚ)

end

end A204983.P3781903772705505026

/-! ## A204983.P12992871305269205210

`2^A007814(n+1)*(2^A007733(n+1)-1)`
-/

namespace A204983.P12992871305269205210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007814 (n + 1) : ℤ) * ((2 : ℚ) ^ (A007733 (n + 1) : ℤ) - 1)

end

end A204983.P12992871305269205210

/-! ## A204983.P7752828166172426609

`A000079(A054703(n+1))-A000079(A007814(n+1))`
-/

namespace A204983.P7752828166172426609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A054703 (n + 1)).toNat - A000079 (A007814 (n + 1)).toNat

end

end A204983.P7752828166172426609

/-! ## A204983.P3581206643721710004

`gcd(A003473(n+1), A204991(n+1))`
-/

namespace A204983.P3581206643721710004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003473 (n + 1)) (A204991 (n + 1))

end

end A204983.P3581206643721710004

/-! ## A204983.P48925322866531537

`A204990(2*(n+1))`
-/

namespace A204983.P48925322866531537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204990 (2 * (n + 1))

end

end A204983.P48925322866531537

/-! ## A204983.P14052903023249134349

`A204991(2*(n+1))/2`
-/

namespace A204983.P14052903023249134349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204991 (2 * (n + 1)) : ℚ) / 2

end

end A204983.P14052903023249134349

/-! ## A204983.P7317127714645520073

`(n+1)*A204992(2*(n+1))`
-/

namespace A204983.P7317127714645520073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A204992 (2 * (n + 1))

end

end A204983.P7317127714645520073

/-! ## A204983.P4985863865829089027

`A130328(A204939(n+1)-1)`
-/

namespace A204983.P4985863865829089027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130328 (A204939 (n + 1) - 1).toNat

end

end A204983.P4985863865829089027

/-! ## A204983.P6216080046053268221

`A130328(A204986(2*(n+1))-1)`
-/

namespace A204983.P6216080046053268221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130328 (A204986 (2 * (n + 1)) - 1).toNat

end

end A204983.P6216080046053268221

/-!
# A204984: a(n) = (1/n)*A204983(n).

The programs for A204984, there is no canonical definition to state claims against.
-/

/-! ## A204984.P4601060935512420920

`1/(n+1)*A204983(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A204984.P4601060935512420920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (A204983 (n + 1) : ℚ)

end

end A204984.P4601060935512420920

/-! ## A204984.P2261765549519463278

`lcm(2, A204992(n+1))/2`
-/

namespace A204984.P2261765549519463278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A204992 (n + 1)) : ℚ) / 2

end

end A204984.P2261765549519463278

/-! ## A204984.P9217698085161050597

`A204983(n+1)/(n+1)`
-/

namespace A204984.P9217698085161050597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204983 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A204984.P9217698085161050597

/-! ## A204984.P947285470511982720

`A165781(A025480(n))`
-/

namespace A204984.P947285470511982720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165781 (A025480 n).toNat

end

end A204984.P947285470511982720

/-! ## A204984.P13690423243281214063

`A165781(A101279(n+1))`
-/

namespace A204984.P13690423243281214063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165781 (A101279 (n + 1)).toNat

end

end A204984.P13690423243281214063

/-! ## A204984.P6329086799016626986

`A165781(A153733(n)/2)`
-/

namespace A204984.P6329086799016626986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165781 (SequenceMachineLib.roundAway ((A153733 n : ℚ) / 2)).toNat

end

end A204984.P6329086799016626986

/-! ## A204984.P7418814432339880020

`A165781(A003602(n+1)-1)`
-/

namespace A204984.P7418814432339880020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165781 (A003602 (n + 1) - 1).toNat

end

end A204984.P7418814432339880020

/-! ## A204984.P13130010051744404945

`A204992(A000265(n+1))/2`
-/

namespace A204984.P13130010051744404945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204992 (A000265 (n + 1)).toNat : ℚ) / 2

end

end A204984.P13130010051744404945

/-! ## A204984.P2258764770831490237

`A165781(floor(A000265(n+1)/2))`
-/

namespace A204984.P2258764770831490237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165781 ⌊(A000265 (n + 1) : ℚ) / 2⌋.toNat

end

end A204984.P2258764770831490237

/-! ## A204984.P669562789057919073

`A204992(n+1)/Δ[A007494(n)]`
-/

namespace A204984.P669562789057919073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204992 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A204984.P669562789057919073

/-! ## A204984.P13356216999440652146

`A165781((A000265(n+1)-1)/2)`
-/

namespace A204984.P13356216999440652146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165781 (SequenceMachineLib.roundAway ((A000265 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A204984.P13356216999440652146

/-! ## A204984.P10849114771965296681

`A204992(n+1)/A000034(n+1)`
-/

namespace A204984.P10849114771965296681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204992 (n + 1) : ℚ) / (A000034 (n + 1) : ℚ)

end

end A204984.P10849114771965296681

/-! ## A204984.P7198421532365154026

`gcd(A204991(n+1)/2, A204992(n+1))`
-/

namespace A204984.P7198421532365154026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A204991 (n + 1) : ℚ) / 2)) (A204992 (n + 1))

end

end A204984.P7198421532365154026

/-! ## A204984.P10603547179612668850

`A204992(n+1)/A278222(val(n²+2, 2))`
-/

namespace A204984.P10603547179612668850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204992 (n + 1) : ℚ) / (A278222 (SequenceMachineLib.valuation (n ^ 2 + 2) 2) : ℚ)

end

end A204984.P10603547179612668850

/-! ## A204984.P16240470154788072768

`A000225(A007733(n+1))/A000265(n+1)`
-/

namespace A204984.P16240470154788072768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (A007733 (n + 1)).toNat : ℚ) / (A000265 (n + 1) : ℚ)

end

end A204984.P16240470154788072768

/-! ## A204984.P6726831378858625839

`A204992(n+1)/A204992(A006519(n+1))`
-/

namespace A204984.P6726831378858625839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204992 (n + 1) : ℚ) / (A204992 (A006519 (n + 1)).toNat : ℚ)

end

end A204984.P6726831378858625839

/-! ## A204984.P12903181628501584102

`gcd(A003473(n+1), A204992(n+1))`
-/

namespace A204984.P12903181628501584102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003473 (n + 1)) (A204992 (n + 1))

end

end A204984.P12903181628501584102

/-! ## A204984.P9566691789344724823

`A204992(lcm(2, n+1))`
-/

namespace A204984.P9566691789344724823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204992 (Nat.lcm 2 (n + 1))

end

end A204984.P9566691789344724823

/-! ## A204984.P16360836771870049965

`A204992(A109043(n+1))`
-/

namespace A204984.P16360836771870049965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204992 (A109043 (n + 1)).toNat

end

end A204984.P16360836771870049965

/-! ## A204984.P2380802715733979146

`A204992(A205031(n+1))`
-/

namespace A204984.P2380802715733979146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204992 (A205031 (n + 1)).toNat

end

end A204984.P2380802715733979146

/-!
# A204985: Ordered differences of numbers 2^k for k>=1.

The programs for A204985, the canonical program `A204985.P5770110306113503825` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204985 has offset 1).

The definition of A204985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204985.P3323368232140321320

`2^(row(n)+2)-2^(col(n)+1)`
-/

namespace A204985.P3323368232140321320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (SequenceMachineLib.triRow n + 2) : ℤ) - (2 ^ (SequenceMachineLib.triCol n + 1) : ℤ)

end

end A204985.P3323368232140321320

namespace A204985

/-- `2^(row(n)+2)-2^(col(n)+1)` -/
def P3323368232140321320.Spec : Prop :=
  ∀ n, P3323368232140321320.a n = A204985 (n + 1)

theorem P3323368232140321320.correct : P3323368232140321320.Spec := by
  intro n
  simp only [A204985, Nat.add_sub_cancel, A204985.P3323368232140321320.a, A204985.P5770110306113503825.a, A130328, A130328.P18329191617125265188.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A204985

/-! ## A204985.P5770110306113503825

`2*A130328(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A204985

/-- `2*A130328(n)` -/
def P5770110306113503825.Spec : Prop :=
  ∀ n, P5770110306113503825.a n = A204985 (n + 1)

theorem P5770110306113503825.correct : P5770110306113503825.Spec := by
  intro n
  simp only [A204985, Nat.add_sub_cancel]

end A204985

/-! ## A204985.P9086201799251913264

`A143088(n)+A130330(n)`
-/

namespace A204985.P9086201799251913264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143088 n + A130330 n

end

end A204985.P9086201799251913264

namespace A204985

/-- `A143088(n)+A130330(n)` -/
def P9086201799251913264.Spec : Prop :=
  ∀ n, P9086201799251913264.a n = A204985 (n + 1)

end A204985

/-! ## A204985.P7978129386957724558

`2*(A173787(n)+A137688(n))`
-/

namespace A204985.P7978129386957724558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A173787 n + A137688 n)

end

end A204985.P7978129386957724558

namespace A204985

/-- `2*(A173787(n)+A137688(n))` -/
def P7978129386957724558.Spec : Prop :=
  ∀ n, P7978129386957724558.a n = A204985 (n + 1)

end A204985

/-! ## A204985.P5038485448445865462

`A140513(n)+2*A173787(n)`
-/

namespace A204985.P5038485448445865462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 n + 2 * A173787 n

end

end A204985.P5038485448445865462

namespace A204985

/-- `A140513(n)+2*A173787(n)` -/
def P5038485448445865462.Spec : Prop :=
  ∀ n, P5038485448445865462.a n = A204985 (n + 1)

end A204985

/-! ## A204985.P17979387651442610377

`2*(A140513(n)-A059268(n))`
-/

namespace A204985.P17979387651442610377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A140513 n - A059268 n)

end

end A204985.P17979387651442610377

namespace A204985

/-- `2*(A140513(n)-A059268(n))` -/
def P17979387651442610377.Spec : Prop :=
  ∀ n, P17979387651442610377.a n = A204985 (n + 1)

end A204985

/-! ## A204985.P14526986092470521231

`2*A059268(n)*A130330(n)`
-/

namespace A204985.P14526986092470521231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A059268 n * A130330 n)

end

end A204985.P14526986092470521231

namespace A204985

/-- `2*A059268(n)*A130330(n)` -/
def P14526986092470521231.Spec : Prop :=
  ∀ n, P14526986092470521231.a n = A204985 (n + 1)

end A204985

/-! ## A204985.P13182416212034722324

`2/A059268(n)*A130324(n)`
-/

namespace A204985.P13182416212034722324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A059268 n : ℚ) * (A130324 n : ℚ)

end

end A204985.P13182416212034722324

namespace A204985

/-- `2/A059268(n)*A130324(n)` -/
def P13182416212034722324.Spec : Prop :=
  ∀ n, P13182416212034722324.a n = (A204985 (n + 1) : ℚ)

end A204985

/-! ## A204985.P15921272491333223235

`xor(A018900(n+1), A130328(n))`
-/

namespace A204985.P15921272491333223235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A018900 (n + 1)) (A130328 n)

end

end A204985.P15921272491333223235

namespace A204985

/-- `xor(A018900(n+1), A130328(n))` -/
def P15921272491333223235.Spec : Prop :=
  ∀ n, P15921272491333223235.a n = A204985 (n + 1)

end A204985

/-! ## A204985.P6059588577745436946

`A098354(n+1)-2*A059268(n)`
-/

namespace A204985.P6059588577745436946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098354 (n + 1) - 2 * A059268 n

end

end A204985.P6059588577745436946

namespace A204985

/-- `A098354(n+1)-2*A059268(n)` -/
def P6059588577745436946.Spec : Prop :=
  ∀ n, P6059588577745436946.a n = A204985 (n + 1)

end A204985

/-! ## A204985.P16394729535168925959

`2*(A264802(n+1)-A176224(n))`
-/

namespace A204985.P16394729535168925959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A264802 (n + 1) - A176224 n)

end

end A204985.P16394729535168925959

namespace A204985

/-- `2*(A264802(n+1)-A176224(n))` -/
def P16394729535168925959.Spec : Prop :=
  ∀ n, P16394729535168925959.a n = A204985 (n + 1)

end A204985

/-! ## A204985.P5771123787589818484

`2*A327318(n+1)/A074909(n)`
-/

namespace A204985.P5771123787589818484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A327318 (n + 1) : ℚ) / (A074909 n : ℚ))

end

end A204985.P5771123787589818484

namespace A204985

/-- `2*A327318(n+1)/A074909(n)` -/
def P5771123787589818484.Spec : Prop :=
  ∀ n, P5771123787589818484.a n = (A204985 (n + 1) : ℚ)

end A204985

/-! ## A204985.P6652359627531796653

`2*(A098354(n+1)-A018900(n+1))`
-/

namespace A204985.P6652359627531796653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A098354 (n + 1) - A018900 (n + 1))

end

end A204985.P6652359627531796653

namespace A204985

/-- `2*(A098354(n+1)-A018900(n+1))` -/
def P6652359627531796653.Spec : Prop :=
  ∀ n, P6652359627531796653.a n = A204985 (n + 1)

end A204985

/-! ## A204985.P6663935806039461856

`2*A018900(n+1)-4*A059268(n)`
-/

namespace A204985.P6663935806039461856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018900 (n + 1) - 4 * A059268 n

end

end A204985.P6663935806039461856

namespace A204985

/-- `2*A018900(n+1)-4*A059268(n)` -/
def P6663935806039461856.Spec : Prop :=
  ∀ n, P6663935806039461856.a n = A204985 (n + 1)

end A204985

/-! ## A204985.P12210078856506284446

`A000225(row(n)-col(n)+1)*A000079(col(n)+1)`
-/

namespace A204985.P12210078856506284446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat * A000079 (SequenceMachineLib.triCol n + 1)

end

end A204985.P12210078856506284446

namespace A204985

/-- `A000225(row(n)-col(n)+1)*A000079(col(n)+1)` -/
def P12210078856506284446.Spec : Prop :=
  ∀ n, P12210078856506284446.a n = A204985 (n + 1)

end A204985

/-! ## A204985.P2043498089756514642

`A143088(n)+gcd(A130324(n), A143088(n))`
-/

namespace A204985.P2043498089756514642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143088 n + (Int.gcd (A130324 n) (A143088 n) : ℤ)

end

end A204985.P2043498089756514642

namespace A204985

/-- `A143088(n)+gcd(A130324(n), A143088(n))` -/
def P2043498089756514642.Spec : Prop :=
  ∀ n, P2043498089756514642.a n = A204985 (n + 1)

end A204985

/-! ## A204985.P16072422793718242517

`A098354(n+1)-A098354(n+1)/A090988(n+1)`
-/

namespace A204985.P16072422793718242517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098354 (n + 1) : ℚ) - (A098354 (n + 1) : ℚ) / (A090988 (n + 1) : ℚ)

end

end A204985.P16072422793718242517

namespace A204985

/-- `A098354(n+1)-A098354(n+1)/A090988(n+1)` -/
def P16072422793718242517.Spec : Prop :=
  ∀ n, P16072422793718242517.a n = (A204985 (n + 1) : ℚ)

end A204985

/-! ## A204985.P17430078109603189934

`A126646(A002024(n+1))-A126646(A002262(n))`
-/

namespace A204985.P17430078109603189934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A002024 (n + 1)).toNat - A126646 (A002262 n).toNat

end

end A204985.P17430078109603189934

namespace A204985

/-- `A126646(A002024(n+1))-A126646(A002262(n))` -/
def P17430078109603189934.Spec : Prop :=
  ∀ n, P17430078109603189934.a n = A204985 (n + 1)

end A204985

/-! ## A204985.P18250874593306657239

`A043569(A038722(n+1))`
-/

namespace A204985.P18250874593306657239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043569 (A038722 (n + 1)).toNat

end

end A204985.P18250874593306657239

namespace A204985

/-- `A043569(A038722(n+1))` -/
def P18250874593306657239.Spec : Prop :=
  ∀ n, P18250874593306657239.a n = A204985 (n + 1)

end A204985

/-! ## A204985.P9482172875090028540

`A043569(A061579(n)+1)`
-/

namespace A204985.P9482172875090028540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043569 (A061579 n + 1).toNat

end

end A204985.P9482172875090028540

namespace A204985

/-- `A043569(A061579(n)+1)` -/
def P9482172875090028540.Spec : Prop :=
  ∀ n, P9482172875090028540.a n = A204985 (n + 1)

end A204985

/-!
# A204986: Least k such that n divides A204985(k), the k-th difference between numbers of the form 2^k.

The programs for A204986, there is no canonical definition to state claims against.
-/

/-! ## A204986.P1424124611758423442

`A204939(gcd(n+1, ∑[n]))`
-/

namespace A204986.P1424124611758423442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204939 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A204986.P1424124611758423442

/-! ## A204986.P11673925520660874913

`A204939((n+1)/(n%2+1))`
-/

namespace A204986.P11673925520660874913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204939 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n % 2 + 1 : ℕ) : ℚ))).toNat

end

end A204986.P11673925520660874913

/-! ## A204986.P10572105368968887091

`A204939(Δ[A001318(n)])`
-/

namespace A204986.P10572105368968887091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204939 (f1 (n + 1) - f1 n).toNat

end

end A204986.P10572105368968887091

/-! ## A204986.P15655209192524462064

`A204939(A026741(n+1))`
-/

namespace A204986.P15655209192524462064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204939 (A026741 (n + 1)).toNat

end

end A204986.P15655209192524462064

/-! ## A204986.P17302994803707199601

`A204939((n+1)/A000034(n))`
-/

namespace A204986.P17302994803707199601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204939 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000034 n : ℚ))).toNat

end

end A204986.P17302994803707199601

/-! ## A204986.P13865522887466977936

`A204939(A129194(n+1)/(n+1))`
-/

namespace A204986.P13865522887466977936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204939 (SequenceMachineLib.roundAway ((A129194 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A204986.P13865522887466977936

/-! ## A204986.P15292152715862225893

`A204939(A029579(A004442(n)))`
-/

namespace A204986.P15292152715862225893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204939 (A029579 (A004442 n).toNat).toNat

end

end A204986.P15292152715862225893

/-! ## A204986.P7301039663142825801

`A204939(A008619(A257088(n)))`
-/

namespace A204986.P7301039663142825801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204939 (A008619 (A257088 n).toNat).toNat

end

end A204986.P7301039663142825801

/-! ## A204986.P16283811815214894226

`A204939(A001318(n+1)-A001318(n))`
-/

namespace A204986.P16283811815214894226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204939 (A001318 (n + 1) - A001318 n).toNat

end

end A204986.P16283811815214894226

/-!
# A204987: Least k such that n divides 2^k - 2^j for some j satisfying 1 <= j < k.

The programs for A204987, there is no canonical definition to state claims against.
-/

/-! ## A204987.P13397908676577356794

`A054703(n+1)+(n+1)%2`
-/

namespace A204987.P13397908676577356794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (n + 1) + (((n + 1) % 2 : ℕ) : ℤ)

end

end A204987.P13397908676577356794

/-! ## A204987.P3766736530245279873

`A054703(A026741(n+1))+1`
-/

namespace A204987.P3766736530245279873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (A026741 (n + 1)).toNat + 1

end

end A204987.P3766736530245279873

/-! ## A204987.P17624187763430343644

`A059841(n)+A054703(n+1)`
-/

namespace A204987.P17624187763430343644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A054703 (n + 1)

end

end A204987.P17624187763430343644

/-! ## A204987.P1311000357318249586

`A054703(n+1)+Δ[A110654(n)]`
-/

namespace A204987.P1311000357318249586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (n + 1) + (f1 (n + 1) - f1 n)

end

end A204987.P1311000357318249586

/-! ## A204987.P7895534487063901585

`A054703(n+1)+A000035(n+1)`
-/

namespace A204987.P7895534487063901585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (n + 1) + A000035 (n + 1)

end

end A204987.P7895534487063901585

/-! ## A204987.P9845717410921149877

`A204988(n+1)+A007733(n+1)`
-/

namespace A204987.P9845717410921149877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204988 (n + 1) + A007733 (n + 1)

end

end A204987.P9845717410921149877

/-! ## A204987.P8657912585475864152

`A054703(n+1)+A109613(n)-n`
-/

namespace A204987.P8657912585475864152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (n + 1) + (A109613 n - (n : ℤ))

end

end A204987.P8657912585475864152

/-! ## A204987.P15062265403062351482

`A007733(n+1)+A007733(A140670(n+1))`
-/

namespace A204987.P15062265403062351482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (n + 1) + A007733 (A140670 (n + 1)).toNat

end

end A204987.P15062265403062351482

/-! ## A204987.P13700577856618156941

`A331739(A331739(n+1)+2)+A054703(n+1)`
-/

namespace A204987.P13700577856618156941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331739 (A331739 (n + 1) + 2).toNat + A054703 (n + 1)

end

end A204987.P13700577856618156941

/-! ## A204987.P6087721075643260932

`A000035(n+1)+A007814(n+1)+A007733(n+1)`
-/

namespace A204987.P6087721075643260932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) + (A007814 (n + 1) + A007733 (n + 1))

end

end A204987.P6087721075643260932

/-! ## A204987.P1872486246883879473

`A054703(lcm(2, n+1))`
-/

namespace A204987.P1872486246883879473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (Nat.lcm 2 (n + 1))

end

end A204987.P1872486246883879473

/-! ## A204987.P16830917498581960659

`A054703(2*(n+1))-and(1, n)`
-/

namespace A204987.P16830917498581960659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (2 * (n + 1)) - (Nat.land 1 n : ℤ)

end

end A204987.P16830917498581960659

/-! ## A204987.P4918947592414427835

`A054703(A109043(n+1))`
-/

namespace A204987.P4918947592414427835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (A109043 (n + 1)).toNat

end

end A204987.P4918947592414427835

/-! ## A204987.P1681948560457857217

`A054703(n+1)+1-A004525(Δ[A004525(2*n+1)])`
-/

namespace A204987.P1681948560457857217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (n + 1) + 1 - A004525 (f1 (n + 1) - f1 n).toNat

end

end A204987.P1681948560457857217

/-! ## A204987.P11643193202315654341

`A204979(A026741(n+1))`
-/

namespace A204987.P11643193202315654341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204979 (A026741 (n + 1)).toNat

end

end A204987.P11643193202315654341

/-! ## A204987.P1687096114613710300

`A204979(n+1)-A000035(n)`
-/

namespace A204987.P1687096114613710300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204979 (n + 1) - A000035 n

end

end A204987.P1687096114613710300

/-! ## A204987.P2211430885233092839

`A204979(n+1)-A057427(A007814(n+1))`
-/

namespace A204987.P2211430885233092839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204979 (n + 1) - A057427 (A007814 (n + 1)).toNat

end

end A204987.P2211430885233092839

/-! ## A204987.P9838656136597771743

`log2(A204989(n+1))`
-/

namespace A204987.P9838656136597771743
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A204989 (n + 1) : ℝ)

end

end A204987.P9838656136597771743

/-! ## A204987.P8738918859668853850

`A204979(n+1)-A007814(n²+1)`
-/

namespace A204987.P8738918859668853850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204979 (n + 1) - A007814 (n ^ 2 + 1)

end

end A204987.P8738918859668853850

/-!
# A204988: The index j < k such that n divides 2^k - 2^j, where k is the least index (A204987) for which such j exists.

The programs for A204988, the canonical program `A204988.P7676696896669722446` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204988 has offset 1).

The definition of A204988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6556 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204988.P7676696896669722446

`val(lcm(2, n+1), 2)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A204988

/-- `val(lcm(2, n+1), 2)` -/
def P7676696896669722446.Spec : Prop :=
  ∀ n, (P7676696896669722446.a n : ℤ) = A204988 (n + 1)

theorem P7676696896669722446.correct : P7676696896669722446.Spec := by
  intro n
  simp only [A204988, Nat.add_sub_cancel]

end A204988

/-! ## A204988.P8307521071264069016

`val(∑[and(2, n-1)], 2)`
-/

namespace A204988.P8307521071264069016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A204988.P8307521071264069016

namespace A204988

/-- `val(∑[and(2, n-1)], 2)` -/
def P8307521071264069016.Spec : Prop :=
  ∀ n, (P8307521071264069016.a n : ℤ) = A204988 (n + 1)

end A204988

/-! ## A204988.P13231109857536920430

`val(∑[or(1, n)], 4)+1`
-/

namespace A204988.P13231109857536920430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 4 + 1

end

end A204988.P13231109857536920430

namespace A204988

/-- `val(∑[or(1, n)], 4)+1` -/
def P13231109857536920430.Spec : Prop :=
  ∀ n, (P13231109857536920430.a n : ℤ) = A204988 (n + 1)

end A204988

/-! ## A204988.P1196973033272305717

`val(C(n, 3)+1, 2)+1`
-/

namespace A204988.P1196973033272305717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.choose n 3 + 1) 2 + 1

end

end A204988.P1196973033272305717

namespace A204988

/-- `val(C(n, 3)+1, 2)+1` -/
def P1196973033272305717.Spec : Prop :=
  ∀ n, (P1196973033272305717.a n : ℤ) = A204988 (n + 1)

end A204988

/-! ## A204988.P6343914204302492080

`val((n+1)*gcd(2, n), 2)`
-/

namespace A204988.P6343914204302492080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) * Nat.gcd 2 n) 2

end

end A204988.P6343914204302492080

namespace A204988

/-- `val((n+1)*gcd(2, n), 2)` -/
def P6343914204302492080.Spec : Prop :=
  ∀ n, (P6343914204302492080.a n : ℤ) = A204988 (n + 1)

end A204988

/-! ## A204988.P17167060195539334212

`val(gcd(4, n+2)+n, 2)`
-/

namespace A204988.P17167060195539334212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.gcd 4 (n + 2) + n) 2

end

end A204988.P17167060195539334212

namespace A204988

/-- `val(gcd(4, n+2)+n, 2)` -/
def P17167060195539334212.Spec : Prop :=
  ∀ n, (P17167060195539334212.a n : ℤ) = A204988 (n + 1)

end A204988

/-! ## A204988.P4940015978781439000

`val(and(n, n-1)+2, 2)`
-/

namespace A204988.P4940015978781439000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.land (n : ℤ) ((n : ℤ) - 1) + 2).toNat 2

end

end A204988.P4940015978781439000

namespace A204988

/-- `val(and(n, n-1)+2, 2)` -/
def P4940015978781439000.Spec : Prop :=
  ∀ n, (P4940015978781439000.a n : ℤ) = A204988 (n + 1)

end A204988

/-! ## A204988.P4375065307580511864

`val(n+1, 2)^(n%2)`
-/

namespace A204988.P4375065307580511864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 ^ (n % 2)

end

end A204988.P4375065307580511864

namespace A204988

/-- `val(n+1, 2)^(n%2)` -/
def P4375065307580511864.Spec : Prop :=
  ∀ n, (P4375065307580511864.a n : ℤ) = A204988 (n + 1)

end A204988

/-! ## A204988.P12878597246190192945

`val((n+1)*or(2, n), 2)`
-/

namespace A204988.P12878597246190192945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) * Nat.lor 2 n) 2

end

end A204988.P12878597246190192945

namespace A204988

/-- `val((n+1)*or(2, n), 2)` -/
def P12878597246190192945.Spec : Prop :=
  ∀ n, (P12878597246190192945.a n : ℤ) = A204988 (n + 1)

end A204988

/-! ## A204988.P16091301324948501941

`val(n+1, 2)^and(1, n)`
-/

namespace A204988.P16091301324948501941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 ^ Nat.land 1 n

end

end A204988.P16091301324948501941

namespace A204988

/-- `val(n+1, 2)^and(1, n)` -/
def P16091301324948501941.Spec : Prop :=
  ∀ n, (P16091301324948501941.a n : ℤ) = A204988 (n + 1)

end A204988

/-! ## A204988.P8901805761026689645

`∏{e}[2^val(n+1, 2), #]`
-/

namespace A204988.P8901805761026689645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A204988.P8901805761026689645

namespace A204988

/-- `∏{e}[2^val(n+1, 2), #]` -/
def P8901805761026689645.Spec : Prop :=
  ∀ n, (P8901805761026689645.a n : ℤ) = A204988 (n + 1)

end A204988

/-! ## A204988.P9921990817596704518

`val(∑[2*(∑[n]+1)], 2)`
-/

namespace A204988.P9921990817596704518
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A204988.P9921990817596704518

namespace A204988

/-- `val(∑[2*(∑[n]+1)], 2)` -/
def P9921990817596704518.Spec : Prop :=
  ∀ n, (P9921990817596704518.a n : ℤ) = A204988 (n + 1)

end A204988

/-! ## A204988.P7393297984102749185

`∏{e}[or(n, n+1)-n, #]`
-/

namespace A204988.P7393297984102749185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A204988.P7393297984102749185

namespace A204988

/-- `∏{e}[or(n, n+1)-n, #]` -/
def P7393297984102749185.Spec : Prop :=
  ∀ n, (P7393297984102749185.a n : ℤ) = A204988 (n + 1)

end A204988

/-! ## A204988.P12281522314320442689

`char[2*n]+val(n+1, 2)`
-/

namespace A204988.P12281522314320442689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + SequenceMachineLib.valuation (n + 1) 2

end

end A204988.P12281522314320442689

namespace A204988

/-- `char[2*n]+val(n+1, 2)` -/
def P12281522314320442689.Spec : Prop :=
  ∀ n, (P12281522314320442689.a n : ℤ) = A204988 (n + 1)

end A204988

/-! ## A204988.P12150021886106974790

`∏{e}[and(n+1, -(n+1)), #]`
-/

namespace A204988.P12150021886106974790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A204988.P12150021886106974790

namespace A204988

/-- `∏{e}[and(n+1, -(n+1)), #]` -/
def P12150021886106974790.Spec : Prop :=
  ∀ n, (P12150021886106974790.a n : ℤ) = A204988 (n + 1)

end A204988

/-! ## A204988.P14907341376940383761

`∏{e}[or(n+1, -(n+1)), #]`
-/

namespace A204988.P14907341376940383761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A204988.P14907341376940383761

namespace A204988

/-- `∏{e}[or(n+1, -(n+1)), #]` -/
def P14907341376940383761.Spec : Prop :=
  ∀ n, (P14907341376940383761.a n : ℤ) = A204988 (n + 1)

end A204988

/-! ## A204988.P9679941646140013176

`val(n+1, 2)+(n+1)%2`
-/

namespace A204988.P9679941646140013176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + (n + 1) % 2

end

end A204988.P9679941646140013176

namespace A204988

/-- `val(n+1, 2)+(n+1)%2` -/
def P9679941646140013176.Spec : Prop :=
  ∀ n, (P9679941646140013176.a n : ℤ) = A204988 (n + 1)

end A204988

/-! ## A204988.P1416640050695118698

`val(n+1, 2)+and(1, n+1)`
-/

namespace A204988.P1416640050695118698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + Nat.land 1 (n + 1)

end

end A204988.P1416640050695118698

namespace A204988

/-- `val(n+1, 2)+and(1, n+1)` -/
def P1416640050695118698.Spec : Prop :=
  ∀ n, (P1416640050695118698.a n : ℤ) = A204988 (n + 1)

end A204988

/-! ## A204988.P6356434885135276720

`val(n+1, 2)^val(n+3, 2)`
-/

namespace A204988.P6356434885135276720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 ^ SequenceMachineLib.valuation (n + 3) 2

end

end A204988.P6356434885135276720

namespace A204988

/-- `val(n+1, 2)^val(n+3, 2)` -/
def P6356434885135276720.Spec : Prop :=
  ∀ n, (P6356434885135276720.a n : ℤ) = A204988 (n + 1)

end A204988

/-! ## A204988.P14917996406444050903

`∏{e}[gcd(n+1, (3-n)^10), #]`
-/

namespace A204988.P14917996406444050903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) ((3 - (n : ℤ)) ^ 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A204988.P14917996406444050903

namespace A204988

/-- `∏{e}[gcd(n+1, (3-n)^10), #]` -/
def P14917996406444050903.Spec : Prop :=
  ∀ n, (P14917996406444050903.a n : ℤ) = A204988 (n + 1)

end A204988

/-!
# A204989: Least 2^k such that n divides 2^k-2^j for some j<k.

The programs for A204989, there is no canonical definition to state claims against.
-/

/-! ## A204989.P9948629786530469622

`2^A204987(n+1)`
-/

namespace A204989.P9948629786530469622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A204987 (n + 1) : ℤ)

end

end A204989.P9948629786530469622

/-! ## A204989.P12655238110952753969

`2^A054703(lcm(2, n+1))`
-/

namespace A204989.P12655238110952753969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A054703 (Nat.lcm 2 (n + 1)) : ℤ)

end

end A204989.P12655238110952753969

/-! ## A204989.P5862976820444548305

`gcd(2, n)*A204981(n+1)`
-/

namespace A204989.P5862976820444548305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A204981 (n + 1)

end

end A204989.P5862976820444548305

/-! ## A204989.P13913199190759180382

`A000079(A204987(n+1))`
-/

namespace A204989.P13913199190759180382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A204987 (n + 1)).toNat

end

end A204989.P13913199190759180382

/-! ## A204989.P16214207964065867028

`A011782(A204987(n+1)+1)`
-/

namespace A204989.P16214207964065867028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A204987 (n + 1) + 1).toNat

end

end A204989.P16214207964065867028

/-! ## A204989.P5490412594739791312

`A016116(2*A204987(n+1))`
-/

namespace A204989.P5490412594739791312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * A204987 (n + 1)).toNat

end

end A204989.P5490412594739791312

/-! ## A204989.P13882178913612392344

`A000034(n+1)*A204981(n+1)`
-/

namespace A204989.P13882178913612392344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A204981 (n + 1)

end

end A204989.P13882178913612392344

/-! ## A204989.P18066175984041914747

`A140670(n+1)+A204991(n+1)+1`
-/

namespace A204989.P18066175984041914747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140670 (n + 1) + (A204991 (n + 1) + 1)

end

end A204989.P18066175984041914747

/-! ## A204989.P9601892311104518274

`A204991(n+1)+2*A160467(n+1)`
-/

namespace A204989.P9601892311104518274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204991 (n + 1) + 2 * A160467 (n + 1)

end

end A204989.P9601892311104518274

/-! ## A204989.P15465673522589101947

`A000079(A054703(n+1)+(n+1)%2)`
-/

namespace A204989.P15465673522589101947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A054703 (n + 1) + (((n + 1) % 2 : ℕ) : ℤ)).toNat

end

end A204989.P15465673522589101947

/-! ## A204989.P2331792226502821542

`A011782(A054703(n+1)+2-n%2)`
-/

namespace A204989.P2331792226502821542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A054703 (n + 1) + (2 - ((n % 2 : ℕ) : ℤ))).toNat

end

end A204989.P2331792226502821542

/-! ## A204989.P16213036596681472539

`A000079(A059841(n)+A054703(n+1))`
-/

namespace A204989.P16213036596681472539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A059841 n + A054703 (n + 1)).toNat

end

end A204989.P16213036596681472539

/-! ## A204989.P4252015309948897750

`A204991(n+1)+A005843(A160467(n+1))`
-/

namespace A204989.P4252015309948897750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204991 (n + 1) + A005843 (A160467 (n + 1)).toNat

end

end A204989.P4252015309948897750

/-! ## A204989.P7396614378539610766

`A016116(A204987(n+1)+A204987(n+1)+1)`
-/

namespace A204989.P7396614378539610766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A204987 (n + 1) + (A204987 (n + 1) + 1)).toNat

end

end A204989.P7396614378539610766

/-! ## A204989.P18398529790937005001

`A006519(A006519(n+1)+1)*A204981(n+1)`
-/

namespace A204989.P18398529790937005001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A006519 (n + 1) + 1).toNat * A204981 (n + 1)

end

end A204989.P18398529790937005001

/-! ## A204989.P5787281235076646838

`A204981(lcm(2, n+1))`
-/

namespace A204989.P5787281235076646838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204981 (Nat.lcm 2 (n + 1))

end

end A204989.P5787281235076646838

/-! ## A204989.P10428457929585389393

`A204981(A109043(n+1))`
-/

namespace A204989.P10428457929585389393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204981 (A109043 (n + 1)).toNat

end

end A204989.P10428457929585389393

/-! ## A204989.P9913722143483246934

`A098354(A204986(n+1))`
-/

namespace A204989.P9913722143483246934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098354 (A204986 (n + 1)).toNat

end

end A204989.P9913722143483246934

/-! ## A204989.P13406898041246399629

`2^(A204979(n+1)-A007814(n²+1))`
-/

namespace A204989.P13406898041246399629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A204979 (n + 1) - A007814 (n ^ 2 + 1) : ℤ)

end

end A204989.P13406898041246399629

/-!
# A204990: (1/2)*(A204991).

The programs for A204990, there is no canonical definition to state claims against.
-/

/-! ## A204990.P677657136334908141

`A204991(n+1)/2`
-/

namespace A204990.P677657136334908141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204991 (n + 1) : ℚ) / 2

end

end A204990.P677657136334908141

/-! ## A204990.P6354489509909321051

`A204983(gcd(n+1, ∑[n]))`
-/

namespace A204990.P6354489509909321051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204983 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A204990.P6354489509909321051

/-! ## A204990.P4286612838291578838

`lcm(2, A204983(n+1))/2`
-/

namespace A204990.P4286612838291578838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A204983 (n + 1)) : ℚ) / 2

end

end A204990.P4286612838291578838

/-! ## A204990.P2502181088221266810

`(n+1)/2*A204992(n+1)`
-/

namespace A204990.P2502181088221266810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A204992 (n + 1) : ℚ)

end

end A204990.P2502181088221266810

/-! ## A204990.P6442442810152098164

`A204983((n+1)/(n%2+1))`
-/

namespace A204990.P6442442810152098164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204983 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n % 2 + 1 : ℕ) : ℚ))).toNat

end

end A204990.P6442442810152098164

/-! ## A204990.P9699738572417628118

`A204983(A026741(n+1))`
-/

namespace A204990.P9699738572417628118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204983 (A026741 (n + 1)).toNat

end

end A204990.P9699738572417628118

/-! ## A204990.P14255579949490192898

`A204983(A109043(n+1)/2)`
-/

namespace A204990.P14255579949490192898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204983 (SequenceMachineLib.roundAway ((A109043 (n + 1) : ℚ) / 2)).toNat

end

end A204990.P14255579949490192898

/-! ## A204990.P18296592806008518928

`A204983(n+1)/A000034(n)`
-/

namespace A204990.P18296592806008518928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204983 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A204990.P18296592806008518928

/-! ## A204990.P10571893635347697046

`A130328(A204986(n+1)-1)`
-/

namespace A204990.P10571893635347697046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130328 (A204986 (n + 1) - 1).toNat

end

end A204990.P10571893635347697046

/-! ## A204990.P1617189539875273378

`A204983(A204904(n+1)/2)`
-/

namespace A204990.P1617189539875273378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204983 (SequenceMachineLib.roundAway ((A204904 (n + 1) : ℚ) / 2)).toNat

end

end A204990.P1617189539875273378

/-!
# A204991: 2^k-2^j, where (2^k,2^j) is the least pair of distinct positive powers of 2 for which n divides 2^k-2^j.

The programs for A204991, there is no canonical definition to state claims against.
-/

/-! ## A204991.P17778899333130948759

`2*A204990(n+1)`
-/

namespace A204991.P17778899333130948759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204990 (n + 1)

end

end A204991.P17778899333130948759

/-! ## A204991.P14708050630704006533

`lcm(2, A204983(n+1))`
-/

namespace A204991.P14708050630704006533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204983 (n + 1))

end

end A204991.P14708050630704006533

/-! ## A204991.P3082640410725567985

`(n+1)*A204992(n+1)`
-/

namespace A204991.P3082640410725567985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A204992 (n + 1)

end

end A204991.P3082640410725567985

/-! ## A204991.P1761734931463084270

`2*A204983(A026741(n+1))`
-/

namespace A204991.P1761734931463084270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204983 (A026741 (n + 1)).toNat

end

end A204991.P1761734931463084270

/-! ## A204991.P15279987005427793014

`A000034(n+1)*A204983(n+1)`
-/

namespace A204991.P15279987005427793014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A204983 (n + 1)

end

end A204991.P15279987005427793014

/-! ## A204991.P3741041755283569895

`A109043(n+1)*A204984(n+1)`
-/

namespace A204991.P3741041755283569895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 (n + 1) * A204984 (n + 1)

end

end A204991.P3741041755283569895

/-! ## A204991.P4865913426480646215

`A040001(n+2)*A204983(n+1)`
-/

namespace A204991.P4865913426480646215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) * A204983 (n + 1)

end

end A204991.P4865913426480646215

/-! ## A204991.P16643326323517901747

`A006519(A006519(n+1)+1)*A204983(n+1)`
-/

namespace A204991.P16643326323517901747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A006519 (n + 1) + 1).toNat * A204983 (n + 1)

end

end A204991.P16643326323517901747

/-! ## A204991.P16278703297030950430

`A204983(lcm(2, n+1))`
-/

namespace A204991.P16278703297030950430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204983 (Nat.lcm 2 (n + 1))

end

end A204991.P16278703297030950430

/-! ## A204991.P2780396511814800305

`A204983(A109043(n+1))`
-/

namespace A204991.P2780396511814800305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204983 (A109043 (n + 1)).toNat

end

end A204991.P2780396511814800305

/-! ## A204991.P17650987931518719273

`A204983(2*(n+1))/gcd(2, n+1)`
-/

namespace A204991.P17650987931518719273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204983 (2 * (n + 1)) : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

end

end A204991.P17650987931518719273

/-! ## A204991.P3386093562535581106

`A204985(A204986(n+1))`
-/

namespace A204991.P3386093562535581106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204985 (A204986 (n + 1)).toNat

end

end A204991.P3386093562535581106

/-! ## A204991.P11752154174541108682

`2*A130328(A204986(n+1)-1)`
-/

namespace A204991.P11752154174541108682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130328 (A204986 (n + 1) - 1).toNat

end

end A204991.P11752154174541108682

/-! ## A204991.P9643349841274039105

`A001511(A114949(n))*A204983(n+1)`
-/

namespace A204991.P9643349841274039105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A114949 n).toNat * A204983 (n + 1)

end

end A204991.P9643349841274039105

/-!
# A204992: (1/n)*A204991(n).

The programs for A204992, there is no canonical definition to state claims against.
-/

/-! ## A204992.P14924627885344643594

`1/(n+1)*A204991(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A204992.P14924627885344643594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (A204991 (n + 1) : ℚ)

end

end A204992.P14924627885344643594

/-! ## A204992.P6551879650797508638

`A204991(n+1)/(n+1)`
-/

namespace A204992.P6551879650797508638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204991 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A204992.P6551879650797508638

/-! ## A204992.P15536124675503602348

`gcd(2, n)*A204984(n+1)`
-/

namespace A204992.P15536124675503602348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A204984 (n + 1)

end

end A204992.P15536124675503602348

/-! ## A204992.P15846126100340172778

`2/(n+1)*A204990(n+1)`
-/

namespace A204992.P15846126100340172778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A204990 (n + 1) : ℚ)

end

end A204992.P15846126100340172778

/-! ## A204992.P4035272588955617819

`lcm(2, A204983(n+1))/(n+1)`
-/

namespace A204992.P4035272588955617819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A204983 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A204992.P4035272588955617819

/-! ## A204992.P11687018295880150087

`lcm(A204984(n+1), A228826(n))`
-/

namespace A204992.P11687018295880150087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A204984 (n + 1)) (A228826 n)

end

end A204992.P11687018295880150087

/-! ## A204992.P8911085483326885738

`gcd(2, n)*A165781(A025480(n))`
-/

namespace A204992.P8911085483326885738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A165781 (A025480 n).toNat

end

end A204992.P8911085483326885738

/-! ## A204992.P6388978185131124296

`Δ[A007494(n)]*A204984(n+1)`
-/

namespace A204992.P6388978185131124296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A204984 (n + 1)

end

end A204992.P6388978185131124296

/-! ## A204992.P15161676088872640301

`A000034(n+1)*A204984(n+1)`
-/

namespace A204992.P15161676088872640301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A204984 (n + 1)

end

end A204992.P15161676088872640301

/-! ## A204992.P18113424833853696238

`A040001(n+2)*A204984(n+1)`
-/

namespace A204992.P18113424833853696238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) * A204984 (n + 1)

end

end A204992.P18113424833853696238

/-! ## A204992.P3483898805625038675

`A006519(A006519(n+1)+1)*A204984(n+1)`
-/

namespace A204992.P3483898805625038675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A006519 (n + 1) + 1).toNat * A204984 (n + 1)

end

end A204992.P3483898805625038675

/-! ## A204992.P10511500307513066660

`lcm(A168361(n+1)*A204984(n+1), A168361(n+1))`
-/

namespace A204992.P10511500307513066660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168361 (n + 1) * A204984 (n + 1)) (A168361 (n + 1))

end

end A204992.P10511500307513066660

/-! ## A204992.P10117592593886564633

`lcm(A168361(n+1), A204984(2*(n+1)))`
-/

namespace A204992.P10117592593886564633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168361 (n + 1)) (A204984 (2 * (n + 1)))

end

end A204992.P10117592593886564633

/-! ## A204992.P6019147684438668951

`A204985(A204986(n+1))/(n+1)`
-/

namespace A204992.P6019147684438668951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204985 (A204986 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A204992.P6019147684438668951

/-! ## A204992.P17054547470327390802

`A050873(∑[n+1]+2)*A204984(n+1)`
-/

namespace A204992.P17054547470327390802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (∑ j ∈ Finset.range (n + 1), f1 j + 2) * A204984 (n + 1)

end

end A204992.P17054547470327390802

/-! ## A204992.P7716559782168319613

`A001222(A116570(n))*A204984(n+1)`
-/

namespace A204992.P7716559782168319613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A116570 n).toNat * A204984 (n + 1)

end

end A204992.P7716559782168319613

/-!
# A204993: Negative of the discriminant of quadratic field Q(sqrt(-n)).

The programs for A204993, the canonical program `A204993.P9458464966889589479` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204993 has offset 1).

The definition of A204993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204993.P9458464966889589479

`A014695(A007913(n+1))²*A007913(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A204993

/-- `A014695(A007913(n+1))²*A007913(n+1)` -/
def P9458464966889589479.Spec : Prop :=
  ∀ n, P9458464966889589479.a n = A204993 (n + 1)

theorem P9458464966889589479.correct : P9458464966889589479.Spec := by
  intro n
  simp only [A204993, Nat.add_sub_cancel]

end A204993

/-! ## A204993.P4402619933758396855

`A007913(n+1)*A008833(A037449(3*(n+1)))`
-/

namespace A204993.P4402619933758396855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A008833 (A037449 (3 * (n + 1))).toNat

end

end A204993.P4402619933758396855

namespace A204993

/-- `A007913(n+1)*A008833(A037449(3*(n+1)))` -/
def P4402619933758396855.Spec : Prop :=
  ∀ n, P4402619933758396855.a n = A204993 (n + 1)

end A204993

/-! ## A204993.P8575159266892396876

`A010685(A037449(n+1))*A195161(A007913(n+1))`
-/

namespace A204993.P8575159266892396876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (A037449 (n + 1)).toNat * A195161 (A007913 (n + 1)).toNat

end

end A204993.P8575159266892396876

namespace A204993

/-- `A010685(A037449(n+1))*A195161(A007913(n+1))` -/
def P8575159266892396876.Spec : Prop :=
  ∀ n, P8575159266892396876.a n = A204993 (n + 1)

end A204993

/-! ## A204993.P18303660348349272058

`gcd(A117889(A072905(n+1)), A117889(n+1))`
-/

namespace A204993.P18303660348349272058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117889 (A072905 (n + 1)).toNat) (A117889 (n + 1))

end

end A204993.P18303660348349272058

namespace A204993

/-- `gcd(A117889(A072905(n+1)), A117889(n+1))` -/
def P18303660348349272058.Spec : Prop :=
  ∀ n, (P18303660348349272058.a n : ℤ) = A204993 (n + 1)

end A204993

/-!
# A204995: The index j<k such that n divides k^2-j^2, where k is the least index (A204905) for which such j exists.

The programs for A204995, there is no canonical definition to state claims against.
-/

/-! ## A204995.P5084307383669930781

`sqrt(A204997(n+1))`
-/

namespace A204995.P5084307383669930781
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A204997 (n + 1) : ℝ)

end

end A204995.P5084307383669930781

/-! ## A204995.P13387071186908981702

`A028310(root(A204997(n+1), 2))`
-/

namespace A204995.P13387071186908981702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A204997 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A204995.P13387071186908981702

/-! ## A204995.P12769989709758777392

`A204997(n+1)^abs(A065357(n)/2)`
-/

namespace A204995.P12769989709758777392
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204997 (n + 1) : ℝ) ^ (|(A065357 n : ℚ) / 2| : ℝ)

end

end A204995.P12769989709758777392

/-! ## A204995.P7944739152429481140

`root(A204997(n+1), A000034(2*n+1))`
-/

namespace A204995.P7944739152429481140
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204997 (n + 1) : ℝ) ^ (1 / (A000034 (2 * n + 1) : ℝ))

end

end A204995.P7944739152429481140

/-! ## A204995.P9426747869913471580

`root(A204997(n+1), A020639(2*(n+1)))`
-/

namespace A204995.P9426747869913471580
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204997 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A204995.P9426747869913471580

/-! ## A204995.P13083964772236599565

`root(A204997(n+1), A040063(2*n+1))`
-/

namespace A204995.P13083964772236599565
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204997 (n + 1) : ℝ) ^ (1 / (A040063 (2 * n + 1) : ℝ))

end

end A204995.P13083964772236599565

/-! ## A204995.P3729346245515749876

`root(A204997(n+1), p?[A001616(n+1)])`
-/

namespace A204995.P3729346245515749876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001616 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204997 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A204995.P3729346245515749876

/-! ## A204995.P11413757941752850935

`A002260(A204994(n+1))`
-/

namespace A204995.P11413757941752850935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A204994 (n + 1)).toNat

end

end A204995.P11413757941752850935

/-! ## A204995.P16417268959579367740

`A000194(A204997(n+1)+1)`
-/

namespace A204995.P16417268959579367740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A204997 (n + 1) + 1).toNat

end

end A204995.P16417268959579367740

/-! ## A204995.P1297180676361793751

`A000196(A204997(n+1)+1)`
-/

namespace A204995.P1297180676361793751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A204997 (n + 1) + 1).toNat

end

end A204995.P1297180676361793751

/-! ## A204995.P11103393966536526602

`A002260(2*A204997(n+1))`
-/

namespace A204995.P11103393966536526602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * A204997 (n + 1)).toNat

end

end A204995.P11103393966536526602

/-!
# A204996: Least k^2 such that n divides k^2-j^2 for some j<k.

The programs for A204996, there is no canonical definition to state claims against.
-/

/-! ## A204996.P199129750956542194

`A204905(n+1)²`
-/

namespace A204996.P199129750956542194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204905 (n + 1) ^ 2

end

end A204996.P199129750956542194

/-! ## A204996.P3173381415778983324

`A000290(or(char[1], A204905(n+1)))`
-/

namespace A204996.P3173381415778983324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A204905 (n + 1))).toNat

end

end A204996.P3173381415778983324

/-! ## A204996.P1506727990188398266

`A204998(n+1)+A204997(n+1)`
-/

namespace A204996.P1506727990188398266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204998 (n + 1) + A204997 (n + 1)

end

end A204996.P1506727990188398266

/-! ## A204996.P13108732083626178881

`A000290(A204905(2*n+1-n))`
-/

namespace A204996.P13108732083626178881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A204905 (2 * n + 1 - n)).toNat

end

end A204996.P13108732083626178881

/-! ## A204996.P2378524790435878723

`A000290(A204905(n+1)%(n+3))`
-/

namespace A204996.P2378524790435878723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A204905 (n + 1)) (n + 3 : ℤ)).toNat

end

end A204996.P2378524790435878723

/-! ## A204996.P2205242332009228581

`A204905(n+1)^A020639(2*(n+1))`
-/

namespace A204996.P2205242332009228581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204905 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A204996.P2205242332009228581

/-! ## A204996.P12738740483965722811

`A204905(n+1)^A000005(Δ[ceil(ϕ*n)]+1)`
-/

namespace A204996.P12738740483965722811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204905 (n + 1) : ℚ) ^ (A000005 (f1 (n + 1) - f1 n + 1).toNat : ℤ)

end

end A204996.P12738740483965722811

/-! ## A204996.P4821884036843758854

`A204905(n+1)^A000034(2*n+1)`
-/

namespace A204996.P4821884036843758854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204905 (n + 1) : ℚ) ^ (A000034 (2 * n + 1) : ℤ)

end

end A204996.P4821884036843758854

/-! ## A204996.P17642322520792046624

`A000290(A204905(n+1)+A000035(2*n))`
-/

namespace A204996.P17642322520792046624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A204905 (n + 1) + A000035 (2 * n)).toNat

end

end A204996.P17642322520792046624

/-! ## A204996.P11004210189266875513

`A204998(n+1)+A204995(n+1)²`
-/

namespace A204996.P11004210189266875513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204998 (n + 1) + A204995 (n + 1) ^ 2

end

end A204996.P11004210189266875513

/-! ## A204996.P8648367037527114852

`A204905(n+1)^A107279(2*(n+1))`
-/

namespace A204996.P8648367037527114852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204905 (n + 1) : ℚ) ^ (A107279 (2 * (n + 1)) : ℤ)

end

end A204996.P8648367037527114852

/-! ## A204996.P6248711062422385933

`A204905(n+1)*A204905(A204998(n+1))`
-/

namespace A204996.P6248711062422385933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204905 (n + 1) * A204905 (A204998 (n + 1)).toNat

end

end A204996.P6248711062422385933

/-! ## A204996.P13341111586838450964

`A204905(n+1)^A001227(A000040(n+2))`
-/

namespace A204996.P13341111586838450964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204905 (n + 1) : ℚ) ^ (A001227 (A000040 (n + 2)).toNat : ℤ)

end

end A204996.P13341111586838450964

/-! ## A204996.P17591788675329345288

`A204905(n+1)^A001222(A176810(n+1))`
-/

namespace A204996.P17591788675329345288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204905 (n + 1) : ℚ) ^ (A001222 (A176810 (n + 1)).toNat : ℤ)

end

end A204996.P17591788675329345288

/-! ## A204996.P7016190142376579747

`A140978(A204994(n+1))`
-/

namespace A204996.P7016190142376579747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140978 (A204994 (n + 1)).toNat

end

end A204996.P7016190142376579747

/-! ## A204996.P2692668892441310363

`A003057(A204994(n+1)+1)²`
-/

namespace A204996.P2692668892441310363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A204994 (n + 1) + 1).toNat ^ 2

end

end A204996.P2692668892441310363

/-!
# A204997: The square j^2 such that n divides k^2-j^2>0, where k is the least positive integer for which such a j exists.

The programs for A204997, there is no canonical definition to state claims against.
-/

/-! ## A204997.P10911196390000413609

`A204905(n+1)²-A204998(n+1)`
-/

namespace A204997.P10911196390000413609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204905 (n + 1) ^ 2 - A204998 (n + 1)

end

end A204997.P10911196390000413609

/-! ## A204997.P3648395632449181311

`A204996(n+1)-A204998(n+1)`
-/

namespace A204997.P3648395632449181311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204996 (n + 1) - A204998 (n + 1)

end

end A204997.P3648395632449181311

/-! ## A204997.P3419025376091357474

`A204995(n+1)²`
-/

namespace A204997.P3419025376091357474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204995 (n + 1) ^ 2

end

end A204997.P3419025376091357474

/-! ## A204997.P5875543739104382569

`A002620(2*A204995(n+1))`
-/

namespace A204997.P5875543739104382569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A204995 (n + 1)).toNat

end

end A204997.P5875543739104382569

/-! ## A204997.P1218955240080149205

`A005563(A204995(n+1)-1)+1`
-/

namespace A204997.P1218955240080149205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A204995 (n + 1) - 1).toNat + 1

end

end A204997.P1218955240080149205

/-! ## A204997.P14873097876510297409

`A204995(n+1)^(A000007(n)+2)`
-/

namespace A204997.P14873097876510297409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204995 (n + 1) : ℚ) ^ (A000007 n + 2 : ℤ)

end

end A204997.P14873097876510297409

/-! ## A204997.P1850826297815918248

`A000290(A204995(n+1)%(n+2))`
-/

namespace A204997.P1850826297815918248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A204995 (n + 1)) (n + 2 : ℤ)).toNat

end

end A204997.P1850826297815918248

/-! ## A204997.P11684082100937413143

`A204995(n+1)^A020639(2*(n+1))`
-/

namespace A204997.P11684082100937413143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204995 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A204997.P11684082100937413143

/-! ## A204997.P3555914837089250058

`A204995(A000027(n+1))*A204995(n+1)`
-/

namespace A204997.P3555914837089250058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204995 (A000027 (n + 1)).toNat * A204995 (n + 1)

end

end A204997.P3555914837089250058

/-! ## A204997.P10728619581979543204

`A000290(A204995(A000290(n+1)/(n+1)))`
-/

namespace A204997.P10728619581979543204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A204995 (SequenceMachineLib.roundAway ((A000290 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A204997.P10728619581979543204

/-! ## A204997.P3417382419460283278

`A204995(n+1)^A000005(A002476(n+1))`
-/

namespace A204997.P3417382419460283278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204995 (n + 1) : ℚ) ^ (A000005 (A002476 (n + 1)).toNat : ℤ)

end

end A204997.P3417382419460283278

/-! ## A204997.P6831074227293680919

`A204995(n+1)*A204995(A204998(n+1))`
-/

namespace A204997.P6831074227293680919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204995 (n + 1) * A204995 (A204998 (n + 1)).toNat

end

end A204997.P6831074227293680919

/-! ## A204997.P9411841741163479690

`A204995(n+1)^A001222(A176810(n+1))`
-/

namespace A204997.P9411841741163479690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204995 (n + 1) : ℚ) ^ (A001222 (A176810 (n + 1)).toNat : ℤ)

end

end A204997.P9411841741163479690

/-! ## A204997.P821673202433609908

`A002260(A204994(n+1))²`
-/

namespace A204997.P821673202433609908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A204994 (n + 1)).toNat ^ 2

end

end A204997.P821673202433609908

/-! ## A204997.P9799054618553956964

`A133819(A204994(n+1))`
-/

namespace A204997.P9799054618553956964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (A204994 (n + 1)).toNat

end

end A204997.P9799054618553956964

/-!
# A204998: a(n) = k^2 - j^2, where (k^2,j^2) is the least pair of distinct squares for which n divides their difference.

The programs for A204998, there is no canonical definition to state claims against.
-/

/-! ## A204998.P3919115393461040881

`A204996(n+1)-A204997(n+1)`
-/

namespace A204998.P3919115393461040881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204996 (n + 1) - A204997 (n + 1)

end

end A204998.P3919115393461040881

/-! ## A204998.P6803925322184750058

`(n+1)*A204999(n+1)`
-/

namespace A204998.P6803925322184750058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A204999 (n + 1)

end

end A204998.P6803925322184750058

/-! ## A204998.P4851579039705530323

`floor(A204999(n+1)/acot(A000027(n+1)))`
-/

namespace A204998.P4851579039705530323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A204999 (n + 1) : ℝ) / SequenceMachineLib.acot (A000027 (n + 1) : ℝ)⌋

end

end A204998.P4851579039705530323

/-! ## A204998.P10305224450749270936

`A204905(n+1)²-A204997(n+1)`
-/

namespace A204998.P10305224450749270936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204905 (n + 1) ^ 2 - A204997 (n + 1)

end

end A204998.P10305224450749270936

/-! ## A204998.P8052594939775696548

`A204996(n+1)-A204995(n+1)²`
-/

namespace A204998.P8052594939775696548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204996 (n + 1) - A204995 (n + 1) ^ 2

end

end A204998.P8052594939775696548

/-! ## A204998.P17739770039440948771

`A120070(A204994(n+1)+1)`
-/

namespace A204998.P17739770039440948771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (A204994 (n + 1) + 1).toNat

end

end A204998.P17739770039440948771

/-!
# A204999: a(n) = (1/n)*A204998(n).

The programs for A204999, there is no canonical definition to state claims against.
-/

/-! ## A204999.P7305250894403615403

`1/(n+1)*A204998(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A204999.P7305250894403615403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (A204998 (n + 1) : ℚ)

end

end A204999.P7305250894403615403

/-! ## A204999.P16283821220858430905

`(A204996(n+1)-A204997(n+1))/(n+1)`
-/

namespace A204999.P16283821220858430905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204996 (n + 1) - A204997 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A204999.P16283821220858430905

/-! ## A204999.P5638313928260777524

`A204998(n+1)/(n+1)`
-/

namespace A204999.P5638313928260777524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204998 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A204999.P5638313928260777524

/-! ## A204999.P11183881991307096591

`ceil(acot(A000027(n+1))*A204998(n+1))`
-/

namespace A204999.P11183881991307096591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (A000027 (n + 1) : ℝ) * (A204998 (n + 1) : ℝ)⌉

end

end A204999.P11183881991307096591

/-! ## A204999.P15146398147602140417

`A008706(A204998(n+1))%A016897(n)`
-/

namespace A204999.P15146398147602140417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008706 (A204998 (n + 1)).toNat) (A016897 n)

end

end A204999.P15146398147602140417

/-! ## A204999.P17477551071906461297

`A120070(A204994(n+1)+1)/(n+1)`
-/

namespace A204999.P17477551071906461297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120070 (A204994 (n + 1) + 1).toNat : ℚ) / (n + 1 : ℚ)

end

end A204999.P17477551071906461297

