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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C025

/-!
# A354200: Prime map that sends 2 to 5, and each 4k+1 and 4k+3 prime to the next larger prime of the same type.

The programs for A354200, there is no canonical definition to state claims against.
-/

/-! ## A354200.P15876433207470207794

`p?[A354202(n+1)]`
-/

namespace A354200.P15876433207470207794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A354200.P15876433207470207794

/-! ## A354200.P4781343060573221467

`A354202(A000040(n+1))`
-/

namespace A354200.P4781343060573221467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354202 (A000040 (n + 1)).toNat

end

end A354200.P4781343060573221467

/-! ## A354200.P15764165393498109211

`A354202(A216884(n+1))`
-/

namespace A354200.P15764165393498109211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354202 (A216884 (n + 1)).toNat

end

end A354200.P15764165393498109211

/-! ## A354200.P1854467963440365067

`A354202(A008578(n+2))`
-/

namespace A354200.P1854467963440365067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354202 (A008578 (n + 2)).toNat

end

end A354200.P1854467963440365067

/-! ## A354200.P18363920241794670988

`A354202(A182986(n+2))`
-/

namespace A354200.P18363920241794670988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354202 (A182986 (n + 2)).toNat

end

end A354200.P18363920241794670988

/-! ## A354200.P14848655911983703510

`A354202(A324050(n+2))`
-/

namespace A354200.P14848655911983703510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354202 (A324050 (n + 2)).toNat

end

end A354200.P14848655911983703510

/-! ## A354200.P7605795276252522943

`A332818(p?[A332818(n+1)])`
-/

namespace A354200.P7605795276252522943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332818 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A354200.P7605795276252522943

/-! ## A354200.P15510086884864753215

`A111745(A332805(n+1)+1)`
-/

namespace A354200.P15510086884864753215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111745 (A332805 (n + 1) + 1).toNat

end

end A354200.P15510086884864753215

/-! ## A354200.P4293192372673054542

`A108546(A332805(n+1)+2)`
-/

namespace A354200.P4293192372673054542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108546 (A332805 (n + 1) + 2).toNat

end

end A354200.P4293192372673054542

/-!
# A354201: Inverse prime map of A354200.

The programs for A354201, there is no canonical definition to state claims against.
-/

/-! ## A354201.P17211464336502654467

`A354203(A000040(n+1))`
-/

namespace A354201.P17211464336502654467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354203 (A000040 (n + 1)).toNat

end

end A354201.P17211464336502654467

/-! ## A354201.P9466337022687408983

`A354203(A001748(n+1))`
-/

namespace A354201.P9466337022687408983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354203 (A001748 (n + 1)).toNat

end

end A354201.P9466337022687408983

/-! ## A354201.P1906781671142441536

`A354203(A001749(n+1))`
-/

namespace A354201.P1906781671142441536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354203 (A001749 (n + 1)).toNat

end

end A354201.P1906781671142441536

/-! ## A354201.P6176013170738659405

`A354203(A006005(n+1))`
-/

namespace A354201.P6176013170738659405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354203 (A006005 (n + 1)).toNat

end

end A354201.P6176013170738659405

/-! ## A354201.P2942918453921892569

`A354203(A062876(n+1))`
-/

namespace A354201.P2942918453921892569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354203 (A062876 (n + 1)).toNat

end

end A354201.P2942918453921892569

/-! ## A354201.P17182721316588877300

`A354203(A063534(n+1))`
-/

namespace A354201.P17182721316588877300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354203 (A063534 (n + 1)).toNat

end

end A354201.P17182721316588877300

/-! ## A354201.P10251026343561780549

`A354203(A064161(n+1))`
-/

namespace A354201.P10251026343561780549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354203 (A064161 (n + 1)).toNat

end

end A354201.P10251026343561780549

/-! ## A354201.P17014332095438545464

`A354203(A072900(n+1))`
-/

namespace A354201.P17014332095438545464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354203 (A072900 (n + 1)).toNat

end

end A354201.P17014332095438545464

/-! ## A354201.P377205172165402473

`A354203(A073582(n+1))`
-/

namespace A354201.P377205172165402473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354203 (A073582 (n + 1)).toNat

end

end A354201.P377205172165402473

/-! ## A354201.P641237604292100539

`A354203(A100484(n+1))`
-/

namespace A354201.P641237604292100539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354203 (A100484 (n + 1)).toNat

end

end A354201.P641237604292100539

/-!
# A354202: Fully multiplicative with a(p^e) = A354200(A000720(p))^e.

The programs for A354202, there is no canonical definition to state claims against.
-/

/-! ## A354202.P17503984537581183147

`∑{d}[n+1, A354204(#)]`
-/

namespace A354202.P17503984537581183147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A354204 d

end

end A354202.P17503984537581183147

/-! ## A354202.P17918233875249792680

`∑{d}[n+1, A008683(#)*A354205((n+1)/#)]`
-/

namespace A354202.P17918233875249792680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A354205 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A354202.P17918233875249792680

/-! ## A354202.P3287631728395318949

`A332818(A332818(n+1))`
-/

namespace A354202.P3287631728395318949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332818 (A332818 (n + 1)).toNat

end

end A354202.P3287631728395318949

/-! ## A354202.P4146443780007217716

`A387377(A389092(n+1))`
-/

namespace A354202.P4146443780007217716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387377 (A389092 (n + 1)).toNat

end

end A354202.P4146443780007217716

/-! ## A354202.P16120407663650363982

`A354204((n+1)²)/A354204(n+1)`
-/

namespace A354202.P16120407663650363982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354204 ((n + 1) ^ 2) : ℚ) / (A354204 (n + 1) : ℚ)

end

end A354202.P16120407663650363982

/-! ## A354202.P8928929754089694583

`∏{e}[A304660(n+1), A354200(#)]`
-/

namespace A354202.P8928929754089694583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A354200 (Nat.factorization (f1 n).natAbs p)

end

end A354202.P8928929754089694583

/-!
# A354203: Fully multiplicative with a(p^e) = A354201(A000720(p))^e.

The programs for A354203, there is no canonical definition to state claims against.
-/

/-! ## A354203.P12869352871943168451

`A332819(A332819(n+1))`
-/

namespace A354203.P12869352871943168451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332819 (A332819 (n + 1)).toNat

end

end A354203.P12869352871943168451

/-! ## A354203.P16988813158604426285

`A354201(A061395(2*(n+1))%A025019(3*(n+1)))`
-/

namespace A354203.P16988813158604426285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354201 (Int.tmod (A061395 (2 * (n + 1))) (A025019 (3 * (n + 1)))).toNat

end

end A354203.P16988813158604426285

/-! ## A354203.P6866349649806679694

`A354201(A061395(2*(n+1))%A103033(n+4))`
-/

namespace A354203.P6866349649806679694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354201 (Int.tmod (A061395 (2 * (n + 1))) (A103033 (n + 4))).toNat

end

end A354203.P6866349649806679694

/-! ## A354203.P4883730116416107662

`A354201(A061395(2*(n+1)))%A300273(3*n+2)`
-/

namespace A354203.P4883730116416107662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354201 (A061395 (2 * (n + 1))).toNat) (A300273 (3 * n + 2))

end

end A354203.P4883730116416107662

/-! ## A354203.P1249262451423836603

`A328324(A301333(n+1))`
-/

namespace A354203.P1249262451423836603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328324 (A301333 (n + 1)).toNat

end

end A354203.P1249262451423836603

/-!
# A354204: a(n) = phi(A354202(n)), where A354202 is fully multiplicative with a(p) = A354200(A000720(p)).

The programs for A354204, there is no canonical definition to state claims against.
-/

/-! ## A354204.P14533923066913664660

`A000010(A354202(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354204.P14533923066913664660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A354202 (n + 1)).toNat

end

end A354204.P14533923066913664660

/-! ## A354204.P14375304379904953345

`∑{d}[n+1, A007427(#)*A354205((n+1)/#)]`
-/

namespace A354204.P14375304379904953345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A354205 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A354204.P14375304379904953345

/-! ## A354204.P15000052040737692792

`∑{d}[n+1, A008683(#)*A354202((n+1)/#)]`
-/

namespace A354204.P15000052040737692792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A354202 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A354204.P15000052040737692792

/-! ## A354204.P11283838491455497843

`A000010(A332818(A332818(n+1)))`
-/

namespace A354204.P11283838491455497843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A332818 (A332818 (n + 1)).toNat).toNat

end

end A354204.P11283838491455497843

/-! ## A354204.P6131686478391145145

`A300236(4*A354202(n+1))`
-/

namespace A354204.P6131686478391145145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300236 (4 * A354202 (n + 1)).toNat

end

end A354204.P6131686478391145145

/-! ## A354204.P11441860245345519825

`A300721(4*A354202(n+1))`
-/

namespace A354204.P11441860245345519825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300721 (4 * A354202 (n + 1)).toNat

end

end A354204.P11441860245345519825

/-! ## A354204.P6734823692514703515

`A300721(lcm(4, A354202(n+1)))`
-/

namespace A354204.P6734823692514703515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300721 (Int.lcm 4 (A354202 (n + 1)))

end

end A354204.P6734823692514703515

/-! ## A354204.P11381195646888438773

`A354102(∑{d}[A354202(n+1), A354102(#)])`
-/

namespace A354204.P11381195646888438773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (∑ d ∈ Nat.divisors (f1 n).natAbs, A354102 d).toNat

end

end A354204.P11381195646888438773

/-! ## A354204.P5949573187241559738

`A062790(2*A354202(n+1))`
-/

namespace A354204.P5949573187241559738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062790 (2 * A354202 (n + 1)).toNat

end

end A354204.P5949573187241559738

/-! ## A354204.P4572228085831768255

`A062354(A354202(n+1))/A354205(n+1)`
-/

namespace A354204.P4572228085831768255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062354 (A354202 (n + 1)).toNat : ℚ) / (A354205 (n + 1) : ℚ)

end

end A354204.P4572228085831768255

/-!
# A354205: a(n) = sigma(A354202(n)), where A354202 is fully multiplicative with a(p) = A354200(A000720(p)).

The programs for A354205, there is no canonical definition to state claims against.
-/

/-! ## A354205.P16204713038418508292

`A000203(A354202(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354205.P16204713038418508292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A354202 (n + 1)).toNat

end

end A354205.P16204713038418508292

/-! ## A354205.P1535151577714571434

`∑{d}[n+1, A354202(#)]`
-/

namespace A354205.P1535151577714571434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A354202 d

end

end A354205.P1535151577714571434

/-! ## A354205.P6569707683030667915

`∑{d}[n+1, A000005(#)*A354204((n+1)/#)]`
-/

namespace A354205.P6569707683030667915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A354204 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A354205.P6569707683030667915

/-! ## A354205.P8172592610400443189

`A389073(A332818(n+1))`
-/

namespace A354205.P8172592610400443189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389073 (A332818 (n + 1)).toNat

end

end A354205.P8172592610400443189

/-! ## A354205.P2011142277691456700

`∑{d}[A332818(n+1), A332818(#)]`
-/

namespace A354205.P2011142277691456700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A332818 d

end

end A354205.P2011142277691456700

/-! ## A354205.P7299061129924555223

`∑{d}[∑{d}[n+1, A354204(#)], #]`
-/

namespace A354205.P7299061129924555223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A354204 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A354205.P7299061129924555223

/-! ## A354205.P15764772812151422023

`A000203(∑{d}[n+1, A354204(#)])`
-/

namespace A354205.P15764772812151422023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ d ∈ Nat.divisors (f1 n), A354204 d).toNat

end

end A354205.P15764772812151422023

/-! ## A354205.P8873739253640699338

`A000593(2*A354202(n+1))`
-/

namespace A354205.P8873739253640699338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (2 * A354202 (n + 1)).toNat

end

end A354205.P8873739253640699338

/-!
# A354206: a(n) = A354203(sigma(A354202(n))), where A354202 is fully multiplicative with a(p) = A354200(A000720(p)), and A354203 is its left inverse.

The programs for A354206, there is no canonical definition to state claims against.
-/

/-! ## A354206.P10611119425059969958

`n+1-A354207(n+1)`
-/

namespace A354206.P10611119425059969958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A354207 (n + 1)

end

end A354206.P10611119425059969958

/-! ## A354206.P16789444756109283381

`A354203(A354205(n+1))`
-/

namespace A354206.P16789444756109283381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354203 (A354205 (n + 1)).toNat

end

end A354206.P16789444756109283381

/-! ## A354206.P16085611010614752612

`A354203(A000203(A354202(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354206.P16085611010614752612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354203 (A000203 (A354202 (n + 1)).toNat).toNat

end

end A354206.P16085611010614752612

/-! ## A354206.P15415902470769158675

`-(A354207(n+1)+A001478(n+1))`
-/

namespace A354206.P15415902470769158675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A354207 (n + 1) + A001478 (n + 1))

end

end A354206.P15415902470769158675

/-! ## A354206.P14024369859805164200

`lcm(A354207(n+1)+A001478(n+1), A065357(n))`
-/

namespace A354206.P14024369859805164200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A354207 (n + 1) + A001478 (n + 1)) (A065357 n)

end

end A354206.P14024369859805164200

/-! ## A354206.P8649883560634853900

`A332819(A332819(A389073(A332818(n+1))))`
-/

namespace A354206.P8649883560634853900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332819 (A332819 (A389073 (A332818 (n + 1)).toNat).toNat).toNat

end

end A354206.P8649883560634853900

/-!
# A354207: a(n) = n - A354203(sigma(A354202(n))), where A354202 is fully multiplicative with a(p) = A354200(A000720(p)), and A354203 is its left inverse.

The programs for A354207, there is no canonical definition to state claims against.
-/

/-! ## A354207.P5152773018244199895

`n+1-A354206(n+1)`
-/

namespace A354207.P5152773018244199895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A354206 (n + 1)

end

end A354207.P5152773018244199895

/-! ## A354207.P11624196260185469660

`n+1-A354203(A000203(A354202(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354207.P11624196260185469660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A354203 (A000203 (A354202 (n + 1)).toNat).toNat

end

end A354207.P11624196260185469660

/-! ## A354207.P16339423774272902775

`-(A354206(n+1)+A001478(n+1))`
-/

namespace A354207.P16339423774272902775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A354206 (n + 1) + A001478 (n + 1))

end

end A354207.P16339423774272902775

/-! ## A354207.P5317161741855046758

`A182394(A033299(n+1))*A354206(n+1)+n+1`
-/

namespace A354207.P5317161741855046758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (A033299 (n + 1)).toNat * A354206 (n + 1) + (n + 1 : ℤ)

end

end A354207.P5317161741855046758

/-! ## A354207.P7323759161436692295

`-(A354206(n+1)+A051494(2*n+1))`
-/

namespace A354207.P7323759161436692295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A354206 (n + 1) + A051494 (2 * n + 1))

end

end A354207.P7323759161436692295

/-! ## A354207.P8702451524498160638

`A024000(A354206(n+1))+n`
-/

namespace A354207.P8702451524498160638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A354206 (n + 1)).toNat + (n : ℤ)

end

end A354207.P8702451524498160638

/-! ## A354207.P8207879015651741356

`n+1-A354203(A354205(n+1))`
-/

namespace A354207.P8207879015651741356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A354203 (A354205 (n + 1)).toNat

end

end A354207.P8207879015651741356

/-!
# A354208: Number of parity-alternating permutations of [n] avoiding the pattern 321.

The programs for A354208, there is no canonical definition to state claims against.
-/

/-! ## A354208.P10948419697235211539

`A182839(A184983(n))+A063895(n+1)`
-/

namespace A354208.P10948419697235211539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182839 (A184983 n).toNat + A063895 (n + 1)

end

end A354208.P10948419697235211539

/-! ## A354208.P406997352562599485

`A347649(∑[A347647(n)-n])`
-/

namespace A354208.P406997352562599485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347647 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347649 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A354208.P406997352562599485

/-! ## A354208.P15336478313149286286

`A003056(ceil(sqrt(A125033(n))/2))`
-/

namespace A354208.P15336478313149286286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ⌈Real.sqrt (A125033 n : ℝ) / 2⌉.toNat

end

end A354208.P15336478313149286286

/-! ## A354208.P5592907591864458312

`A326529(n)+A125007(A084835(n+2)+2)`
-/

namespace A354208.P5592907591864458312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326529 n + A125007 (A084835 (n + 2) + 2).toNat

end

end A354208.P5592907591864458312

/-! ## A354208.P9945459592559349717

`A135661(n+1)+A125007(A084835(n+2)+2)`
-/

namespace A354208.P9945459592559349717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (n + 1) + A125007 (A084835 (n + 2) + 2).toNat

end

end A354208.P9945459592559349717

/-!
# A354210: a(n) = floor(sqrt(Fibonacci(n+1)*Fibonacci(n))).

The programs for A354210, the canonical program `A354210.P7053687658928509760` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354210 has offset 0).

The definition of A354210 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(A000045(n+1)*A000045(n)))` (program `A354210.P7053687658928509760`, by `A354210.P7053687658928509760.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A354210.P1499617899982813219

`floor(sqrt(A001654(n)))`
-/

namespace A354210.P1499617899982813219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A001654 n)

end

end A354210.P1499617899982813219

namespace A354210

/-- `floor(sqrt(A001654(n)))` -/
def P1499617899982813219.Spec : Prop :=
  ∀ n, P1499617899982813219.a n = A354210 n

end A354210

/-! ## A354210.P7053687658928509760

`floor(sqrt(A000045(n+1)*A000045(n)))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A354210

/-- `floor(sqrt(A000045(n+1)*A000045(n)))` -/
def P7053687658928509760.Spec : Prop :=
  ∀ n, P7053687658928509760.a n = A354210 n

theorem P7053687658928509760.correct : P7053687658928509760.Spec := by
  intro n
  simp only [A354210]

end A354210

/-! ## A354210.P197844145708149124

`A000196(A000045(n+1)*A000045(n))`
-/

namespace A354210.P197844145708149124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000045 (n + 1) * A000045 n).toNat

end

end A354210.P197844145708149124

namespace A354210

/-- `A000196(A000045(n+1)*A000045(n))` -/
def P197844145708149124.Spec : Prop :=
  ∀ n, P197844145708149124.a n = A354210 n

end A354210

/-! ## A354210.P1407323243821789259

`floor(sqrt(ϕ)*A000045(n))`
-/

namespace A354210.P1407323243821789259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt Real.goldenRatio * (A000045 n : ℝ)⌋

end

end A354210.P1407323243821789259

namespace A354210

/-- `floor(sqrt(ϕ)*A000045(n))` -/
def P1407323243821789259.Spec : Prop :=
  ∀ n, P1407323243821789259.a n = A354210 n

end A354210

/-! ## A354210.P4251837630311457541

`floor(sqrt(∑[A007598(n)]))`
-/

namespace A354210.P4251837630311457541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A354210.P4251837630311457541

namespace A354210

/-- `floor(sqrt(∑[A007598(n)]))` -/
def P4251837630311457541.Spec : Prop :=
  ∀ n, P4251837630311457541.a n = A354210 n

end A354210

/-! ## A354210.P992553962867495178

`floor(sqrt(A074677(2*n)))`
-/

namespace A354210.P992553962867495178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A074677 (2 * n))

end

end A354210.P992553962867495178

namespace A354210

/-- `floor(sqrt(A074677(2*n)))` -/
def P992553962867495178.Spec : Prop :=
  ∀ n, P992553962867495178.a n = A354210 n

end A354210

/-!
# A354211: a(n) is the numerator of Sum_{k=0..n} 1 / (2*k+1)!.

The programs for A354211, there is no canonical definition to state claims against.
-/

/-! ## A354211.P18197615584194309534

`A195326(2*(n+1))-A000007(n)`
-/

namespace A354211.P18197615584194309534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195326 (2 * (n + 1)) - A000007 n

end

end A354211.P18197615584194309534

/-! ## A354211.P1599059609698324259

`A195326(2*(n+1))-A015068(n)`
-/

namespace A354211.P1599059609698324259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195326 (2 * (n + 1)) - A015068 n

end

end A354211.P1599059609698324259

/-! ## A354211.P8874387193924973045

`A195326(2*n+1)/(A000007(n)+1)`
-/

namespace A354211.P8874387193924973045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195326 (2 * n + 1) : ℚ) / (A000007 n + 1 : ℚ)

end

end A354211.P8874387193924973045

/-! ## A354211.P10366930940900348711

`A195326(2*(n+1))-and(1, A000010(n+2))`
-/

namespace A354211.P10366930940900348711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195326 (2 * (n + 1)) - Int.land 1 (A000010 (n + 2))

end

end A354211.P10366930940900348711

/-! ## A354211.P7164961098645818822

`A195326(A005408(n))+A008683(A000040(n+1)²-1)`
-/

namespace A354211.P7164961098645818822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195326 (A005408 n).toNat + A008683 (A000040 (n + 1) ^ 2 - 1).toNat

end

end A354211.P7164961098645818822

/-!
# A354216: Highly composite numbers (A002182) whose number of divisors is not a multiple of 3.

The programs for A354216, there is no canonical definition to state claims against.
-/

/-! ## A354216.P3313954204147076325

`A061799(∩[A002183(n+1), A008619(n)+n])`
-/

namespace A354216.P3313954204147076325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A354216.P3313954204147076325

/-! ## A354216.P2869589668478468846

`gcd(A292984(n+1), A348273(∑{d}[n+1, #]+1))`
-/

namespace A354216.P2869589668478468846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A292984 (n + 1)) (A348273 (∑ d ∈ Nat.divisors (f1 n), d + 1))

end

end A354216.P2869589668478468846

/-! ## A354216.P12539248438632385599

`filter[A002182(n+1), A307421(#)]`
-/

namespace A354216.P12539248438632385599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307421 (f1 j).toNat = 1) n)

end

end A354216.P12539248438632385599

/-! ## A354216.P1680583590839437413

`filter[A094348(n+1), A307421(#)]`
-/

namespace A354216.P1680583590839437413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307421 (f1 j).toNat = 1) n)

end

end A354216.P1680583590839437413

/-! ## A354216.P7633855172919554644

`filter[A181804(n+1), A307421(#)]`
-/

namespace A354216.P7633855172919554644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307421 (f1 j).toNat = 1) n)

end

end A354216.P7633855172919554644

/-!
# A354217: Primes p such that the squarefree kernel of the product of the composite numbers between p and the next prime after p (A076978) sets a new record.

The programs for A354217, there is no canonical definition to state claims against.
-/

/-! ## A354217.P4620744563926726141

`∩[A134266(n+1), A247424(n+1)]`
-/

namespace A354217.P4620744563926726141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354217.P4620744563926726141

/-! ## A354217.P12270434426445751506

`∩[A134266(n+1), A294748(n+1)]`
-/

namespace A354217.P12270434426445751506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354217.P12270434426445751506

/-! ## A354217.P6129341529171805016

`∩[A155189(n+1), A357304(n+1)]`
-/

namespace A354217.P6129341529171805016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354217.P6129341529171805016

/-! ## A354217.P18247497897450560009

`A134266(A033621(n+2))`
-/

namespace A354217.P18247497897450560009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134266 (A033621 (n + 2)).toNat

end

end A354217.P18247497897450560009

/-! ## A354217.P11312919355960816963

`A056813(A056862(3*n+4)+A005898(n+1))`
-/

namespace A354217.P11312919355960816963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A056862 (3 * n + 4) + A005898 (n + 1)).toNat

end

end A354217.P11312919355960816963

/-!
# A354218: Records in A076978, divided by 2.

The programs for A354218, there is no canonical definition to state claims against.
-/

/-! ## A354218.P13889392551287075248

`record[A076978(n+2)/2]`
-/

namespace A354218.P13889392551287075248
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076978 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354218.P13889392551287075248

/-! ## A354218.P2784649945344902078

`record[A079615(n+2)/2]`
-/

namespace A354218.P2784649945344902078
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079615 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354218.P2784649945344902078

/-! ## A354218.P17396688573151540228

`record[A000265(A076978(n+1))]`
-/

namespace A354218.P17396688573151540228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A076978 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354218.P17396688573151540228

/-! ## A354218.P11289470483882789061

`A000265(record[A079615(n+2)])`
-/

namespace A354218.P11289470483882789061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079615 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A354218.P11289470483882789061

/-!
# A354219: Primes p such that the number of distinct prime factors omega of the product of the composite numbers between p and the next prime after p sets a new record.

The programs for A354219, there is no canonical definition to state claims against.
-/

/-! ## A354219.P1277634456152214067

`A075580(A354220(n+1))`
-/

namespace A354219.P1277634456152214067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075580 (A354220 (n + 1)).toNat

end

end A354219.P1277634456152214067

/-! ## A354219.P7049276604173633405

`A075580(record[A052297(n+2)])`
-/

namespace A354219.P7049276604173633405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075580 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A354219.P7049276604173633405

/-! ## A354219.P11136377218951835149

`∩[A299498(n+1), A354217(n+1)]`
-/

namespace A354219.P11136377218951835149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354219.P11136377218951835149

/-! ## A354219.P11710569535281552881

`A075580(and(A032563(n+1), A126646(n)))`
-/

namespace A354219.P11710569535281552881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075580 (Int.land (A032563 (n + 1)) (A126646 n)).toNat

end

end A354219.P11710569535281552881

/-! ## A354219.P17998446454255061234

`A075580(lcm(A020639(n+1), A151543(n+1)))`
-/

namespace A354219.P17998446454255061234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075580 (Int.lcm (A020639 (n + 1)) (A151543 (n + 1)))

end

end A354219.P17998446454255061234

/-!
# A354220: a(n) is the record setting number of distinct prime factors in the product of the composite numbers between p = A354219(n) and the next prime after p.

The programs for A354220, there is no canonical definition to state claims against.
-/

/-! ## A354220.P8625769813166266710

`record[A052297(n+2)]`
-/

namespace A354220.P8625769813166266710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354220.P8625769813166266710

/-! ## A354220.P10170754796172530380

`record[A052297(A008619(n))^and(1, n)]`
-/

namespace A354220.P10170754796172530380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (A008619 n).toNat ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354220.P10170754796172530380

/-! ## A354220.P2659846706963460349

`record[A052297(A065033(n))^and(1, n)]`
-/

namespace A354220.P2659846706963460349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052297 (A065033 n).toNat ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354220.P2659846706963460349

/-!
# A354222: Decimal expansion of 2 / (Pi+2).

The programs for A354222, there is no canonical definition to state claims against.
-/

/-! ## A354222.P671781366082166941

`9-A197686(n)`
-/

namespace A354222.P671781366082166941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A197686 n

end

end A354222.P671781366082166941

/-!
# A354223: The initial sequence of the positive integers gradually becomes interspersed with the copies of its terms and so is transformed into this sequence. The method is described in the Comments section.

The programs for A354223, there is no canonical definition to state claims against.
-/

/-! ## A354223.P9738680064259265860

`A001511(A125717(n)+A050448(n+1))`
-/

namespace A354223.P9738680064259265860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A125717 n + A050448 (n + 1)).toNat

end

end A354223.P9738680064259265860

/-! ## A354223.P18197394058782965573

`A358134(A102288(n+1)+A000040(n+1))`
-/

namespace A354223.P18197394058782965573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358134 (A102288 (n + 1) + A000040 (n + 1)).toNat

end

end A354223.P18197394058782965573

/-! ## A354223.P13183288264722461155

`A331251(A216768(n+1))+A288729(n+2)`
-/

namespace A354223.P13183288264722461155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331251 (A216768 (n + 1)).toNat + A288729 (n + 2)

end

end A354223.P13183288264722461155

/-! ## A354223.P11000645673767903413

`A225926(A063967(n+2)%A162694(n+1))`
-/

namespace A354223.P11000645673767903413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225926 (Int.tmod (A063967 (n + 2)) (A162694 (n + 1))).toNat

end

end A354223.P11000645673767903413

/-! ## A354223.P2134833161098637665

`A349056(A376431(3*n+5)+A216361(n+1))`
-/

namespace A354223.P2134833161098637665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349056 (A376431 (3 * n + 5) + A216361 (n + 1)).toNat

end

end A354223.P2134833161098637665

/-!
# A354226: a(n) is the number of distinct prime factors of (p^p - 1)/(p - 1) where p = prime(n).

The programs for A354226, there is no canonical definition to state claims against.
-/

/-! ## A354226.P7211744008931839255

`A088807(n+1)-A008334(n+1)`
-/

namespace A354226.P7211744008931839255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088807 (n + 1) - A008334 (n + 1)

end

end A354226.P7211744008931839255

/-!
# A354227: Odd numbers whose Collatz trajectory contains exactly 12 odd numbers.

The programs for A354227, there is no canonical definition to state claims against.
-/

/-! ## A354227.P14488830677563397108

`∩[2*n+1, A072122(n+1)]`
-/

namespace A354227.P14488830677563397108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354227.P14488830677563397108

/-! ## A354227.P3352748422488795347

`record[A000265(A072122(n+1))]`
-/

namespace A354227.P3352748422488795347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A072122 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354227.P3352748422488795347

/-! ## A354227.P12931559153508358425

`∩[A072122(n+1), A171763(n+1)]`
-/

namespace A354227.P12931559153508358425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354227.P12931559153508358425

/-! ## A354227.P12897817036006407469

`∩[A072122(n+1), A346303(n+1)]`
-/

namespace A354227.P12897817036006407469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354227.P12897817036006407469

/-! ## A354227.P11879129523084630700

`∩[A072122(n+1), A366462(n+1)]`
-/

namespace A354227.P11879129523084630700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354227.P11879129523084630700

/-! ## A354227.P16813021126197827778

`∩[A072122(n+1), A004273(n)]`
-/

namespace A354227.P16813021126197827778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354227.P16813021126197827778

/-! ## A354227.P13424662563475620142

`∩[A072122(n+1), A004274(n)]`
-/

namespace A354227.P13424662563475620142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354227.P13424662563475620142

/-! ## A354227.P1569159731499999820

`∩[A072122(n+1), A004276(n)]`
-/

namespace A354227.P1569159731499999820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354227.P1569159731499999820

/-! ## A354227.P3543368498773874107

`∩[A072122(n+1), A004281(n)]`
-/

namespace A354227.P3543368498773874107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354227.P3543368498773874107

/-! ## A354227.P5697469884196727121

`∩[A072122(n+1), A020742(n)]`
-/

namespace A354227.P5697469884196727121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354227.P5697469884196727121

/-! ## A354227.P18272968485815924346

`∩[A072122(n+1), A060747(n)]`
-/

namespace A354227.P18272968485815924346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354227.P18272968485815924346

/-! ## A354227.P14109123592568464737

`∩[A072122(n+1), A062545(n)]`
-/

namespace A354227.P14109123592568464737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354227.P14109123592568464737

/-! ## A354227.P3416500011050044325

`∩[A072122(n+1), A130773(n)]`
-/

namespace A354227.P3416500011050044325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354227.P3416500011050044325

/-! ## A354227.P6347928027146859365

`∩[A072122(n+1), A163985(n)]`
-/

namespace A354227.P6347928027146859365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354227.P6347928027146859365

/-! ## A354227.P13189422876782418759

`∩[A072122(n+1), A223134(n)]`
-/

namespace A354227.P13189422876782418759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354227.P13189422876782418759

/-! ## A354227.P555884266912054134

`∩[A072122(n+1), A326494(n)]`
-/

namespace A354227.P555884266912054134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354227.P555884266912054134

/-! ## A354227.P17750032633558074932

`∩[A072122(n+1), A079945(n)]`
-/

namespace A354227.P17750032633558074932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354227.P17750032633558074932

/-! ## A354227.P4747789684799758885

`filter[A072122(n+1), A000035(#)]`
-/

namespace A354227.P4747789684799758885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A354227.P4747789684799758885

/-! ## A354227.P13446004489954880514

`filter[A072122(n+1), A266070(#)]`
-/

namespace A354227.P13446004489954880514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A354227.P13446004489954880514

/-! ## A354227.P7734406550792116307

`filter[A072122(n+1), A266246(#)]`
-/

namespace A354227.P7734406550792116307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A354227.P7734406550792116307

/-!
# A354228: Number of partitions of the multigraph G_n (defined below) into "strokes".

The programs for A354228, there is no canonical definition to state claims against.
-/

/-! ## A354228.P9313825462111074266

`A121862(10*a(n-1)+1)/2-2` with `a(0)=1`
-/

namespace A354228.P9313825462111074266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A121862 (SequenceMachineLib.roundAway (10 * a (n - 1) + 1)).toNat : ℚ) / 2 - 2

end

end A354228.P9313825462111074266

/-!
# A354229: Expansion of e.g.f. 1/(1 - log(1 + x)^3).

The programs for A354229, there is no canonical definition to state claims against.
-/

/-! ## A354229.P4096136966117826346

`A354231(n)+A004525(A052785(n))`
-/

namespace A354229.P4096136966117826346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354231 n + A004525 (A052785 n).toNat

end

end A354229.P4096136966117826346

/-! ## A354229.P3729796304575500681

`A354231(n)+A004525(A052792(n))`
-/

namespace A354229.P3729796304575500681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354231 n + A004525 (A052792 n).toNat

end

end A354229.P3729796304575500681

/-! ## A354229.P15556237718852071228

`A354231(n)+A004525(A228909(n))`
-/

namespace A354229.P15556237718852071228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354231 n + A004525 (A228909 n).toNat

end

end A354229.P15556237718852071228

/-!
# A354230: Expansion of e.g.f. 1/(1 - log(1 + x)^5).

The programs for A354230, there is no canonical definition to state claims against.
-/

/-! ## A354230.P9806628332751857627

`A354232(n*C(n, ∑{digits}[n, #]))`
-/

namespace A354230.P9806628332751857627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354232 (n * Nat.choose n ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum)

end

end A354230.P9806628332751857627

/-! ## A354230.P15324282863703815400

`A354232(n^C(n, ∑{digits}[n, #]))`
-/

namespace A354230.P15324282863703815400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354232 (n ^ Nat.choose n ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum)

end

end A354230.P15324282863703815400

/-! ## A354230.P8475325805927488695

`A354232(a(floor(n/2))+n)` with `a(0)=1`
-/

namespace A354230.P8475325805927488695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A354232 (a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)).toNat

end

end A354230.P8475325805927488695

/-! ## A354230.P13881176824457581124

`A354232(n*(1-(∑{digits}[n, #]-n)))`
-/

namespace A354230.P13881176824457581124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354232 ((n : ℤ) * (1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ)))).toNat

end

end A354230.P13881176824457581124

/-! ## A354230.P7633305044942593766

`A354232(n^(1-(∑{digits}[n, #]-n)))`
-/

namespace A354230.P7633305044942593766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354232 (SequenceMachineLib.roundAway ((n : ℚ) ^ (1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ)) : ℤ))).toNat

end

end A354230.P7633305044942593766

/-!
# A354231: Expansion of e.g.f. exp(log(1 + x)^3).

The programs for A354231, there is no canonical definition to state claims against.
-/

/-! ## A354231.P10049615221231624354

`A354229(n)-A004525(A052785(n))`
-/

namespace A354231.P10049615221231624354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354229 n - A004525 (A052785 n).toNat

end

end A354231.P10049615221231624354

/-! ## A354231.P60130728355278928

`A354229(n)-A004525(A052792(n))`
-/

namespace A354231.P60130728355278928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354229 n - A004525 (A052792 n).toNat

end

end A354231.P60130728355278928

/-! ## A354231.P12065763737656403473

`A354229(n)-A004525(A228909(n))`
-/

namespace A354231.P12065763737656403473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354229 n - A004525 (A228909 n).toNat

end

end A354231.P12065763737656403473

/-!
# A354233: Least number with n runs in ordered prime signature.

The programs for A354233, there is no canonical definition to state claims against.
-/

/-! ## A354233.P1336482463069078241

`A002110(n)²/A079078(n)`
-/

namespace A354233.P1336482463069078241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 n ^ 2 : ℚ) / (A079078 n : ℚ)

end

end A354233.P1336482463069078241

/-! ## A354233.P5232929655453136783

`∏[A008578(n+1)²]/A079078(n)`
-/

namespace A354233.P5232929655453136783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A079078 n : ℚ)

end

end A354233.P5232929655453136783

/-! ## A354233.P9180636110055630061

`∏[record[A006530(n+1)²]]/A079078(n)`
-/

namespace A354233.P9180636110055630061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A079078 n : ℚ)

end

end A354233.P9180636110055630061

/-! ## A354233.P10845381860277258492

`∏[record[A014963(n+1)²]]/A079078(n)`
-/

namespace A354233.P10845381860277258492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A079078 n : ℚ)

end

end A354233.P10845381860277258492

/-! ## A354233.P16247172602713462926

`∏[record[A020639(n+1)²]]/A079078(n)`
-/

namespace A354233.P16247172602713462926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A079078 n : ℚ)

end

end A354233.P16247172602713462926

/-!
# A354234: Triangle read by rows where T(n,k) is the number of integer partitions of n with at least one part divisible by k.

The programs for A354234, there is no canonical definition to state claims against.
-/

/-! ## A354234.P16333873311210169004

`A058399(n+1)-A305054(A113711(n))`
-/

namespace A354234.P16333873311210169004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058399 (n + 1) - A305054 (A113711 n).toNat

end

end A354234.P16333873311210169004

/-! ## A354234.P6915288616249072632

`A267417(A299471(n+1))+A110619(n+1)`
-/

namespace A354234.P6915288616249072632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267417 (A299471 (n + 1)).toNat + A110619 (n + 1)

end

end A354234.P6915288616249072632

/-! ## A354234.P17342319470110336919

`A274011(A092288(n+1))`
-/

namespace A354234.P17342319470110336919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274011 (A092288 (n + 1)).toNat

end

end A354234.P17342319470110336919

/-! ## A354234.P13040981163954338894

`A055980(A128041(n+3))`
-/

namespace A354234.P13040981163954338894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055980 (A128041 (n + 3)).toNat

end

end A354234.P13040981163954338894

/-!
# A354235: Heinz numbers of integer partitions with at least one part divisible by 3.

The programs for A354235, there is no canonical definition to state claims against.
-/

/-! ## A354235.P14633489520696272612

`eq[0, A003963(n+1)%3]+1`
-/

namespace A354235.P14633489520696272612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003963 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354235.P14633489520696272612

/-! ## A354235.P6432418724935623960

`eq[0, A290103(n+1)%3]+1`
-/

namespace A354235.P6432418724935623960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290103 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354235.P6432418724935623960

/-! ## A354235.P12353294885305421842

`eq[3, gcd(3, A156061(n+1))]+1`
-/

namespace A354235.P12353294885305421842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A156061 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A354235.P12353294885305421842

/-! ## A354235.P13392527655412822609

`lt[A290103(abs(1-n)+1)%3, 1]`
-/

namespace A354235.P13392527655412822609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290103 (|1 - (n : ℤ)| + 1).toNat) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A354235.P13392527655412822609

/-! ## A354235.P291047181896554221

`eq[0, A003963(A008486(n))%3]`
-/

namespace A354235.P291047181896554221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003963 (A008486 n).toNat) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354235.P291047181896554221

/-! ## A354235.P4631370637623209461

`lt[A003963(A028310(n))%3, 1]`
-/

namespace A354235.P4631370637623209461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003963 (A028310 n).toNat) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A354235.P4631370637623209461

/-! ## A354235.P17324567191058820060

`eq[2, A338101(A003963(n+1))]+1`
-/

namespace A354235.P17324567191058820060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338101 (A003963 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354235.P17324567191058820060

/-!
# A354236: A(n,k) is the n-th number m such that the Collatz (or 3x+1) trajectory starting at m contains exactly k odd integers; square array A(n,k), n>=1, k>=1, read by antidiagonals.

The programs for A354236, there is no canonical definition to state claims against.
-/

/-! ## A354236.P4313054829958054623

`A375888(A061579(n))`
-/

namespace A354236.P4313054829958054623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375888 (A061579 n).toNat

end

end A354236.P4313054829958054623

/-! ## A354236.P7871565823800118834

`A051176(eq[A073267(n), A076303(n+1)])`
-/

namespace A354236.P7871565823800118834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073267 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A354236.P7871565823800118834

/-! ## A354236.P5192407521043308123

`A051176(A018900(n+1)^A108782(n)!)`
-/

namespace A354236.P5192407521043308123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A018900 (n + 1) ^ Nat.factorial (A108782 n).toNat).toNat

end

end A354236.P5192407521043308123

/-! ## A354236.P16310784503420664229

`A051176(A018900(n+1)%A266427(n+1))`
-/

namespace A354236.P16310784503420664229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (Int.tmod (A018900 (n + 1)) (A266427 (n + 1))).toNat

end

end A354236.P16310784503420664229

/-! ## A354236.P12627302509402341263

`A266407(A254051(n+1)%A266427(n+1))`
-/

namespace A354236.P12627302509402341263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266407 (Int.tmod (A254051 (n + 1)) (A266427 (n + 1))).toNat

end

end A354236.P12627302509402341263

/-!
# A354238: Decimal expansion of 1 - Pi^2/12.

The programs for A354238, there is no canonical definition to state claims against.
-/

/-! ## A354238.P10180132671214441403

`9-A072691(n)`
-/

namespace A354238.P10180132671214441403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A072691 n

end

end A354238.P10180132671214441403

/-!
# A354239: Expansion of e.g.f. (2 - exp(x))^(x/2).

The programs for A354239, there is no canonical definition to state claims against.
-/

/-! ## A354239.P15644316184632137541

`A002654(2*4^n-1)-A059424(n)`
-/

namespace A354239.P15644316184632137541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (2 * 4 ^ n - 1) - A059424 n

end

end A354239.P15644316184632137541

/-! ## A354239.P11935704825392650768

`A000007(A000584(n))-A059424(n)`
-/

namespace A354239.P11935704825392650768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A000584 n).toNat - A059424 n

end

end A354239.P11935704825392650768

/-! ## A354239.P4459076403930038656

`A000161(A006359(n))-A059424(n)`
-/

namespace A354239.P4459076403930038656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A006359 n).toNat - A059424 n

end

end A354239.P4459076403930038656

/-!
# A354240: Expansion of e.g.f. 1/sqrt(1 - 4 * log(1+x)).

The programs for A354240, there is no canonical definition to state claims against.
-/

/-! ## A354240.P3248722980347951275

`A370981(2^∑[n])`
-/

namespace A354240.P3248722980347951275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370981 (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A354240.P3248722980347951275

/-!
# A354241: Expansion of e.g.f. 1/sqrt(1 + 4 * log(1-x)).

The programs for A354241, there is no canonical definition to state claims against.
-/

/-! ## A354241.P5753650131602894134

`A052851(n+1)-n*A052851(n)`
-/

namespace A354241.P5753650131602894134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052851 (n + 1) - (n : ℤ) * A052851 n

end

end A354241.P5753650131602894134

/-!
# A354242: Expansion of e.g.f. 1/sqrt(5 - 4 * exp(x)).

The programs for A354242, there is no canonical definition to state claims against.
-/

/-! ## A354242.P6009247710562331383

`A312274(A000040(n)/2*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A354242.P6009247710562331383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A312274 (SequenceMachineLib.roundAway ((A000040 n : ℚ) / 2 * (a (n - 1) : ℚ))).toNat

end

end A354242.P6009247710562331383

/-!
# A354245: E.g.f.: Integral exp(-x*tan(x)) / cos(x) dx.

The programs for A354245, there is no canonical definition to state claims against.
-/

/-! ## A354245.P8451803381861428886

`A110091(A005431(n))-2*n`
-/

namespace A354245.P8451803381861428886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110091 (A005431 n).toNat - (2 * n : ℤ)

end

end A354245.P8451803381861428886

/-!
# A354246: Indices of coefficients of x^(2*k-1) in Integral exp(-x*tan(x))/cos(x) dx at which the signs of the coefficients change: list of k such that sign(A354245(k)) != sign(A354245(k-1)), starting with 1.

The programs for A354246, there is no canonical definition to state claims against.
-/

/-! ## A354246.P18335347301466071087

`A276571(A100185(n+1))-n`
-/

namespace A354246.P18335347301466071087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A100185 (n + 1)).toNat - (n : ℤ)

end

end A354246.P18335347301466071087

/-! ## A354246.P2058078958316799690

`A111660(A000124(n))+A002061(n)`
-/

namespace A354246.P2058078958316799690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A000124 n).toNat + A002061 n

end

end A354246.P2058078958316799690

/-! ## A354246.P9678531652026885352

`A123578(∑[(n+1)*Δ[n^3]-12*n²])`
-/

namespace A354246.P9678531652026885352
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) - (12 * n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A354246.P9678531652026885352

/-! ## A354246.P7451864357083450188

`A002024(A017992(n)+4/3*C(n², 2))`
-/

namespace A354246.P7451864357083450188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (SequenceMachineLib.roundAway ((A017992 n : ℚ) + (4 : ℚ) / 3 * (Nat.choose (n ^ 2) 2 : ℚ))).toNat

end

end A354246.P7451864357083450188

/-! ## A354246.P14718208972430680964

`A003056(A211795(n)+A091838(n+1))`
-/

namespace A354246.P14718208972430680964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A211795 n + A091838 (n + 1)).toNat

end

end A354246.P14718208972430680964

/-!
# A354247: G.f. (1-x) * Sum_{n>=0} x^n * (1 + x^n)^n / (1 + x^(n+1))^(n+1).

The programs for A354247, there is no canonical definition to state claims against.
-/

/-! ## A354247.P14095653818313576808

`Δ[A323557(abs(1-n))]`
-/

namespace A354247.P14095653818313576808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323557 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A354247.P14095653818313576808

/-! ## A354247.P2517969941562789446

`A323557(n)-A323557(abs(1-n))`
-/

namespace A354247.P2517969941562789446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323557 n - A323557 |1 - (n : ℤ)|.toNat

end

end A354247.P2517969941562789446

/-!
# A354248: G.f. A(x) satisfies: 1 = Sum_{n=-oo..+oo} (-x)^(n^2) * A(x)^((n-1)^2).

The programs for A354248, there is no canonical definition to state claims against.
-/

/-! ## A354248.P12044043421411868987

`A245704(n!²+n)`
-/

namespace A354248.P12044043421411868987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245704 (Nat.factorial n ^ 2 + n)

end

end A354248.P12044043421411868987

/-!
# A354255: Even numbers in A090252 in order of appearance.

The programs for A354255, there is no canonical definition to state claims against.
-/

/-! ## A354255.P625951504059139290

`A090252(3*2^n-1)`
-/

namespace A354255.P625951504059139290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090252 (3 * 2 ^ n - 1)

end

end A354255.P625951504059139290

/-! ## A354255.P589792032060314748

`lcm(2, A090252(A052940(n)))`
-/

namespace A354255.P589792032060314748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A090252 (A052940 n).toNat)

end

end A354255.P589792032060314748

/-! ## A354255.P4654030008596211216

`A090252(A153893(n))%A007283(n)`
-/

namespace A354255.P4654030008596211216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090252 (A153893 n).toNat) (A007283 n)

end

end A354255.P4654030008596211216

/-! ## A354255.P16579459577336206702

`A355478(n)+A090252(A083329(n+1))`
-/

namespace A354255.P16579459577336206702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355478 n + A090252 (A083329 (n + 1)).toNat

end

end A354255.P16579459577336206702

/-! ## A354255.P4584620096774746373

`A090252(A153893(n))+A000035(2*(n+2))`
-/

namespace A354255.P4584620096774746373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090252 (A153893 n).toNat + A000035 (2 * (n + 2))

end

end A354255.P4584620096774746373

/-!
# A354259: Expansion of e.g.f. 1/sqrt(1 - 6 * log(1+x)).

The programs for A354259, there is no canonical definition to state claims against.
-/

/-! ## A354259.P11703966573365672923

`A004396(A008546(n))-A073948(n+1)`
-/

namespace A354259.P11703966573365672923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008546 n).toNat - A073948 (n + 1)

end

end A354259.P11703966573365672923

/-!
# A354261: Expansion of e.g.f. 1/sqrt(1 + 6 * log(1-x)).

The programs for A354261, there is no canonical definition to state claims against.
-/

/-! ## A354261.P2453144995043232172

`xor(A037834(n+1), A296694(A056273(2*n)))`
-/

namespace A354261.P2453144995043232172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037834 (n + 1)) (A296694 (A056273 (2 * n)).toNat)

end

end A354261.P2453144995043232172

/-!
# A354263: Expansion of e.g.f. 1/(1 + 3 * log(1-x)).

The programs for A354263, there is no canonical definition to state claims against.
-/

/-! ## A354263.P16538243779344518047

`A320079(∑[n+3]+n+3)`
-/

namespace A354263.P16538243779344518047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320079 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A354263.P16538243779344518047

/-! ## A354263.P290005187820845277

`record[A320079(abs(A046691(n)))]`
-/

namespace A354263.P290005187820845277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320079 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354263.P290005187820845277

/-! ## A354263.P9104072082640792983

`record[A320079(n*A243148(n))]`
-/

namespace A354263.P9104072082640792983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320079 ((n : ℤ) * A243148 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354263.P9104072082640792983

/-! ## A354263.P6517890627556027751

`record[A320079(n)^A243148(n)]`
-/

namespace A354263.P6517890627556027751
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320079 n : ℚ) ^ (A243148 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354263.P6517890627556027751

/-!
# A354264: Expansion of e.g.f. 1/(1 + 4 * log(1-x)).

The programs for A354264, there is no canonical definition to state claims against.
-/

/-! ## A354264.P9560588027282983219

`A320079(∑[n+5]+5)`
-/

namespace A354264.P9560588027282983219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320079 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A354264.P9560588027282983219

/-! ## A354264.P5397709101649484813

`record[A320079(A052905(n))]`
-/

namespace A354264.P5397709101649484813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320079 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354264.P5397709101649484813

/-! ## A354264.P3908458662975942053

`record[A320079(abs(A046691(n))-1)]`
-/

namespace A354264.P3908458662975942053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320079 (|A046691 n| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354264.P3908458662975942053

/-!
# A354265: Array read by ascending antidiagonals for n >= 0 and k >= 0. Generalized Lucas numbers, L(n, k) = (psi^(k - 1)*(phi + n) - phi^(k - 1)*(psi + n)), where phi = (1 + sqrt(5))/2 and psi = (1 - sqrt(5))/2.

The programs for A354265, the canonical program `A354265.P6999609587003664482` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354265 has offset 0).

The definition of A354265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354265.P6999609587003664482

`(row(n)-col(n))*A000032(col(n)+1)+A000032(col(n))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A354265

/-- `(row(n)-col(n))*A000032(col(n)+1)+A000032(col(n))` -/
def P6999609587003664482.Spec : Prop :=
  ∀ n, P6999609587003664482.a n = A354265 n

theorem P6999609587003664482.correct : P6999609587003664482.Spec := by
  intro n
  simp only [A354265]

end A354265

/-! ## A354265.P14393238547482847589

`A292030(n)+2*A352744(n)`
-/

namespace A354265.P14393238547482847589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292030 n + 2 * A352744 n

end

end A354265.P14393238547482847589

namespace A354265

/-- `A292030(n)+2*A352744(n)` -/
def P14393238547482847589.Spec : Prop :=
  ∀ n, P14393238547482847589.a n = A354265 n

end A354265

/-! ## A354265.P18432489152725417383

`A352744(comp[∑[n]])+2*A352744(n)`
-/

namespace A354265.P18432489152725417383
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352744 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 2 * A352744 n

end

end A354265.P18432489152725417383

namespace A354265

/-- `A352744(comp[∑[n]])+2*A352744(n)` -/
def P18432489152725417383.Spec : Prop :=
  ∀ n, P18432489152725417383.a n = A354265 n

end A354265

/-! ## A354265.P17940787556520785293

`A352744(n)+A292030(A014132(n+1))`
-/

namespace A354265.P17940787556520785293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352744 n + A292030 (A014132 (n + 1)).toNat

end

end A354265.P17940787556520785293

namespace A354265

/-- `A352744(n)+A292030(A014132(n+1))` -/
def P17940787556520785293.Spec : Prop :=
  ∀ n, P17940787556520785293.a n = A354265 n

end A354265

/-! ## A354265.P2423162150630155365

`2*A292030(A014132(n+1))-A292030(n)`
-/

namespace A354265.P2423162150630155365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292030 (A014132 (n + 1)).toNat - A292030 n

end

end A354265.P2423162150630155365

namespace A354265

/-- `2*A292030(A014132(n+1))-A292030(n)` -/
def P2423162150630155365.Spec : Prop :=
  ∀ n, P2423162150630155365.a n = A354265 n

end A354265

/-! ## A354265.P11322919049095932084

`A292030(A014132(n+1))+A117501(n+1)-A141169(n)`
-/

namespace A354265.P11322919049095932084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292030 (A014132 (n + 1)).toNat + (A117501 (n + 1) - A141169 n)

end

end A354265.P11322919049095932084

namespace A354265

/-- `A292030(A014132(n+1))+A117501(n+1)-A141169(n)` -/
def P11322919049095932084.Spec : Prop :=
  ∀ n, P11322919049095932084.a n = A354265 n

end A354265

/-!
# A354266: Pairs of integers (s, t) such that 0 < s < t and gcd(s, t) > 1, where the pairs are generated by the boustrophedonic Cantor enumeration A319571.

The programs for A354266, there is no canonical definition to state claims against.
-/

/-! ## A354266.P2113072262342826001

`A322436(n+1)+A139100(A046527(3*n+1))`
-/

namespace A354266.P2113072262342826001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322436 (n + 1) + A139100 (A046527 (3 * n + 1)).toNat

end

end A354266.P2113072262342826001

/-! ## A354266.P4874688162940149667

`A323172(A241314(3*n+1)+A138137(3*n+5))+A114567(n)`
-/

namespace A354266.P4874688162940149667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323172 (A241314 (3 * n + 1) + A138137 (3 * n + 5)).toNat + A114567 n

end

end A354266.P4874688162940149667

/-!
# A354267: A Fibonacci-Pascal triangle read by rows: T(n, n) = 1, T(n, n-1) = n - 1, T(n, 0) = T(n-1, 1) and T(n, k) = T(n-1, k-1) + T(n-1, k) for 0 < k < n-1.

The programs for A354267, there is no canonical definition to state claims against.
-/

/-! ## A354267.P4822903664407255404

`A105809(n)-A136431(A061579(n))`
-/

namespace A354267.P4822903664407255404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105809 n - A136431 (A061579 n).toNat

end

end A354267.P4822903664407255404

/-! ## A354267.P9729362821131007174

`A228074(n*A023532(n)+1)-A136431(A061579(n))`
-/

namespace A354267.P9729362821131007174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228074 ((n : ℤ) * A023532 n + 1).toNat - A136431 (A061579 n).toNat

end

end A354267.P9729362821131007174

/-! ## A354267.P16393542841969226310

`A136431(2*A004736(n+1)+n)-A136431(A061579(n))`
-/

namespace A354267.P16393542841969226310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136431 (2 * A004736 (n + 1) + (n : ℤ)).toNat - A136431 (A061579 n).toNat

end

end A354267.P16393542841969226310

/-! ## A354267.P3631869754432947603

`A027926(A061885(n))-A136431(A061579(n))`
-/

namespace A354267.P3631869754432947603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (A061885 n).toNat - A136431 (A061579 n).toNat

end

end A354267.P3631869754432947603

/-! ## A354267.P1761444247328920556

`A027926(A057944(n)+n)-A136431(A061579(n))`
-/

namespace A354267.P1761444247328920556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (A057944 n + (n : ℤ)).toNat - A136431 (A061579 n).toNat

end

end A354267.P1761444247328920556

/-! ## A354267.P11721303571455881984

`A027926(A004201(n+1)-1)-A136431(A061579(n))`
-/

namespace A354267.P11721303571455881984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (A004201 (n + 1) - 1).toNat - A136431 (A061579 n).toNat

end

end A354267.P11721303571455881984

/-! ## A354267.P14669763386861402434

`A027926(2*n-A002262(n))-A136431(A061579(n))`
-/

namespace A354267.P14669763386861402434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 ((2 * n : ℤ) - A002262 n).toNat - A136431 (A061579 n).toNat

end

end A354267.P14669763386861402434

/-!
# A354268: Table read by rows. T(n, k) = (n + k)^(n - 1) for n >= 1 and 0 <= k <= n, T(0, 0) = 0.

The programs for A354268, there is no canonical definition to state claims against.
-/

/-! ## A354268.P14758309612573516255

`A159797(lt[A113106(n), A001358(n+1)])`
-/

namespace A354268.P14758309612573516255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113106 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159797 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A354268.P14758309612573516255

/-! ## A354268.P6708063590104407102

`A228576(lt[A342501(n+1), A006218(n)])`
-/

namespace A354268.P6708063590104407102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228576 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A354268.P6708063590104407102

/-!
# A354270: Numbers k such that min{m: A354257(m) = k} = k^2.

The programs for A354270, there is no canonical definition to state claims against.
-/

/-! ## A354270.P18183130192707059373

`record[A354258(n+1)-∑[2*n]]`
-/

namespace A354270.P18183130192707059373
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354258 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354270.P18183130192707059373

/-! ## A354270.P15036449399610151951

`eq[n², A354258(A028310(n))]`
-/

namespace A354270.P15036449399610151951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354258 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354270.P15036449399610151951

/-! ## A354270.P4477012216254755772

`record[gcd(A000026(n+1), A354258(n+1))]`
-/

namespace A354270.P4477012216254755772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000026 (n + 1)) (A354258 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354270.P4477012216254755772

/-! ## A354270.P8674898006142543571

`record[A262689(A354258(n+1))]`
-/

namespace A354270.P8674898006142543571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A354258 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354270.P8674898006142543571

/-! ## A354270.P14416003648137536357

`record[A037213(record[A354258(n+1)])]`
-/

namespace A354270.P14416003648137536357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354258 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354270.P14416003648137536357

/-!
# A354271: Irregular array of the prime numbers read by rows.

The programs for A354271, the canonical program `A354271.P8549106110734970551` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354271 has offset 1).

The definition of A354271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1604 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354271.P8549106110734970551

`p?[A037126(n+1)-A025581(n)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A354271

/-- `p?[A037126(n+1)-A025581(n)]` -/
def P8549106110734970551.Spec : Prop :=
  ∀ n, P8549106110734970551.a n = A354271 (n + 1)

theorem P8549106110734970551.correct : P8549106110734970551.Spec := by
  intro n
  simp only [A354271, Nat.add_sub_cancel]

end A354271

/-! ## A354271.P421508297378256923

`p?[A037126(n+1)+1-A004736(n+1)]`
-/

namespace A354271.P421508297378256923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) + (1 - A004736 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A354271.P421508297378256923

namespace A354271

/-- `p?[A037126(n+1)+1-A004736(n+1)]` -/
def P421508297378256923.Spec : Prop :=
  ∀ n, P421508297378256923.a n = A354271 (n + 1)

end A354271

/-! ## A354271.P14282905588198777269

`p?[A000040(A002260(n+1))-A025581(n)]`
-/

namespace A354271.P14282905588198777269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002260 (n + 1)).toNat - A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A354271.P14282905588198777269

namespace A354271

/-- `p?[A000040(A002260(n+1))-A025581(n)]` -/
def P14282905588198777269.Spec : Prop :=
  ∀ n, P14282905588198777269.a n = A354271 (n + 1)

end A354271

/-! ## A354271.P6320100840485512443

`p?[A000040(A002262(n)+1)-A025581(n)]`
-/

namespace A354271.P6320100840485512443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002262 n + 1).toNat - A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A354271.P6320100840485512443

namespace A354271

/-- `p?[A000040(A002262(n)+1)-A025581(n)]` -/
def P6320100840485512443.Spec : Prop :=
  ∀ n, P6320100840485512443.a n = A354271 (n + 1)

end A354271

/-! ## A354271.P5873766720322728699

`p?[A000040(A002260(n+1))-A004736(n+1)+1]`
-/

namespace A354271.P5873766720322728699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002260 (n + 1)).toNat - A004736 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A354271.P5873766720322728699

namespace A354271

/-- `p?[A000040(A002260(n+1))-A004736(n+1)+1]` -/
def P5873766720322728699.Spec : Prop :=
  ∀ n, P5873766720322728699.a n = A354271 (n + 1)

end A354271

/-! ## A354271.P14740976111574022651

`p?[A037126(n+1)-A002262(A061579(n))]`
-/

namespace A354271.P14740976111574022651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) - A002262 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A354271.P14740976111574022651

namespace A354271

/-- `p?[A037126(n+1)-A002262(A061579(n))]` -/
def P14740976111574022651.Spec : Prop :=
  ∀ n, P14740976111574022651.a n = A354271 (n + 1)

end A354271

/-! ## A354271.P4803410891694490962

`p?[A028815(A002262(n))-A004736(n+1)]`
-/

namespace A354271.P4803410891694490962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (A002262 n).toNat - A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A354271.P4803410891694490962

namespace A354271

/-- `p?[A028815(A002262(n))-A004736(n+1)]` -/
def P4803410891694490962.Spec : Prop :=
  ∀ n, P4803410891694490962.a n = A354271 (n + 1)

end A354271

/-! ## A354271.P15898800962303344818

`p?[A020639(A083221(n+2))-(A004736(n+1)-1)]`
-/

namespace A354271.P15898800962303344818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A083221 (n + 2)).toNat - (A004736 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A354271.P15898800962303344818

namespace A354271

/-- `p?[A020639(A083221(n+2))-(A004736(n+1)-1)]` -/
def P15898800962303344818.Spec : Prop :=
  ∀ n, P15898800962303344818.a n = A354271 (n + 1)

end A354271

/-!
# A354272: Irregular triangle read by rows: coefficients of polynomials which are the product of all possible monic Littlewood polynomials of degree n.

The programs for A354272, there is no canonical definition to state claims against.
-/

/-! ## A354272.P8928744722146675455

`A008836(A135893(n+2))*A365921(n)`
-/

namespace A354272.P8928744722146675455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A135893 (n + 2)).toNat * A365921 n

end

end A354272.P8928744722146675455

/-! ## A354272.P10513181561150040650

`A195017(or(A059613(n+1), A300234(n+2)))`
-/

namespace A354272.P10513181561150040650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (Int.lor (A059613 (n + 1)) (A300234 (n + 2))).toNat

end

end A354272.P10513181561150040650

/-! ## A354272.P4636638400479275106

`A063065(n)-A326787(A265059(n+1))`
-/

namespace A354272.P4636638400479275106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063065 n - A326787 (A265059 (n + 1)).toNat

end

end A354272.P4636638400479275106

/-! ## A354272.P17599822932408089799

`A301376(A272985(n+4))-A329257(2*(n+2))`
-/

namespace A354272.P17599822932408089799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301376 (A272985 (n + 4)).toNat - A329257 (2 * (n + 2))

end

end A354272.P17599822932408089799

/-!
# A354273: Square array read by ascending antidiagonals: A(n,k) = k^Omega(n).

The programs for A354273, the canonical program `A354273.P7655324750491338801` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354273 has offset 1).

The definition of A354273 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354273.P7655324750491338801

`(col(n)+1)^A001222(row(n)-col(n)+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A354273

/-- `(col(n)+1)^A001222(row(n)-col(n)+1)` -/
def P7655324750491338801.Spec : Prop :=
  ∀ n, P7655324750491338801.a n = (A354273 (n + 1) : ℚ)

end A354273

/-! ## A354273.P9296089754725732248

`∏{e}[A193592(n), A131818(n+1)^#]`
-/

namespace A354273.P9296089754725732248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A131818 (n + 1) ^ Nat.factorization (f1 n).natAbs p

end

end A354273.P9296089754725732248

namespace A354273

/-- `∏{e}[A193592(n), A131818(n+1)^#]` -/
def P9296089754725732248.Spec : Prop :=
  ∀ n, P9296089754725732248.a n = A354273 (n + 1)

end A354273

/-! ## A354273.P10346404610062484039

`A002260(n+1)^∑{e}[A004736(n+1), #]`
-/

namespace A354273.P10346404610062484039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A354273.P10346404610062484039

namespace A354273

/-- `A002260(n+1)^∑{e}[A004736(n+1), #]` -/
def P10346404610062484039.Spec : Prop :=
  ∀ n, P10346404610062484039.a n = A354273 (n + 1)

end A354273

/-! ## A354273.P5371787326221834406

`A128227(n)^A001222(A193592(n))`
-/

namespace A354273.P5371787326221834406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128227 n : ℚ) ^ (A001222 (A193592 n).toNat : ℤ)

end

end A354273.P5371787326221834406

namespace A354273

/-- `A128227(n)^A001222(A193592(n))` -/
def P5371787326221834406.Spec : Prop :=
  ∀ n, P5371787326221834406.a n = (A354273 (n + 1) : ℚ)

end A354273

/-! ## A354273.P17124105601975894566

`A128227(n)^A001222(A193739(n))`
-/

namespace A354273.P17124105601975894566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128227 n : ℚ) ^ (A001222 (A193739 n).toNat : ℤ)

end

end A354273.P17124105601975894566

namespace A354273

/-- `A128227(n)^A001222(A193739(n))` -/
def P17124105601975894566.Spec : Prop :=
  ∀ n, P17124105601975894566.a n = (A354273 (n + 1) : ℚ)

end A354273

/-! ## A354273.P17546749589739604151

`A193738(n)^A001222(A193592(n))`
-/

namespace A354273.P17546749589739604151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193738 n : ℚ) ^ (A001222 (A193592 n).toNat : ℤ)

end

end A354273.P17546749589739604151

namespace A354273

/-- `A193738(n)^A001222(A193592(n))` -/
def P17546749589739604151.Spec : Prop :=
  ∀ n, P17546749589739604151.a n = (A354273 (n + 1) : ℚ)

end A354273

/-! ## A354273.P11013493733277187222

`A193738(n)^A001222(A193739(n))`
-/

namespace A354273.P11013493733277187222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193738 n : ℚ) ^ (A001222 (A193739 n).toNat : ℤ)

end

end A354273.P11013493733277187222

namespace A354273

/-- `A193738(n)^A001222(A193739(n))` -/
def P11013493733277187222.Spec : Prop :=
  ∀ n, P11013493733277187222.a n = (A354273 (n + 1) : ℚ)

end A354273

/-! ## A354273.P6343052770751088574

`A128227(n)^A001222(A004736(n+1))`
-/

namespace A354273.P6343052770751088574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128227 n : ℚ) ^ (A001222 (A004736 (n + 1)).toNat : ℤ)

end

end A354273.P6343052770751088574

namespace A354273

/-- `A128227(n)^A001222(A004736(n+1))` -/
def P6343052770751088574.Spec : Prop :=
  ∀ n, P6343052770751088574.a n = (A354273 (n + 1) : ℚ)

end A354273

/-! ## A354273.P229803580771416545

`A002260(n+1)^A001222(A193592(n))`
-/

namespace A354273.P229803580771416545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (A001222 (A193592 n).toNat : ℤ)

end

end A354273.P229803580771416545

namespace A354273

/-- `A002260(n+1)^A001222(A193592(n))` -/
def P229803580771416545.Spec : Prop :=
  ∀ n, P229803580771416545.a n = (A354273 (n + 1) : ℚ)

end A354273

/-! ## A354273.P14502509864233986661

`(A002262(n)+1)^A001222(A193592(n))`
-/

namespace A354273.P14502509864233986661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1 : ℚ) ^ (A001222 (A193592 n).toNat : ℤ)

end

end A354273.P14502509864233986661

namespace A354273

/-- `(A002262(n)+1)^A001222(A193592(n))` -/
def P14502509864233986661.Spec : Prop :=
  ∀ n, P14502509864233986661.a n = (A354273 (n + 1) : ℚ)

end A354273

/-!
# A354276: Product_{n>=1} (1 + x^n)^(a(n)/n!) = 1 + arctanh(x).

The programs for A354276, there is no canonical definition to state claims against.
-/

/-! ## A354276.P11087101724617283338

`A353821(n+1)+A201195(A279551(n))`
-/

namespace A354276.P11087101724617283338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353821 (n + 1) + A201195 (A279551 n).toNat

end

end A354276.P11087101724617283338

/-! ## A354276.P18401065590819126205

`A084633(n)*A098223(A242003(n))`
-/

namespace A354276.P18401065590819126205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084633 n * A098223 (A242003 n).toNat

end

end A354276.P18401065590819126205

/-!
# A354277: Product_{n>=1} 1 / (1 - x^n/n!)^a(n) = exp(-x) / (1 - x).

The programs for A354277, there is no canonical definition to state claims against.
-/

/-! ## A354277.P6850367529482693994

`n*A065938(A208223(n))`
-/

namespace A354277.P6850367529482693994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A065938 (A208223 n).toNat

end

end A354277.P6850367529482693994

/-! ## A354277.P10585916814368766901

`n*A342767(A255906(n))`
-/

namespace A354277.P10585916814368766901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A342767 (A255906 n).toNat

end

end A354277.P10585916814368766901

/-! ## A354277.P10954482770675241172

`n*A249042(A002661(n+1))`
-/

namespace A354277.P10954482770675241172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A249042 (A002661 (n + 1)).toNat

end

end A354277.P10954482770675241172

/-!
# A354278: Product_{n>=1} 1 / (1 - a(n)*x^n/n!) = exp(-x) / (1 - x).

The programs for A354278, there is no canonical definition to state claims against.
-/

/-! ## A354278.P6009466138068334273

`A263272(A002944(n+1)*A054581(n+1))`
-/

namespace A354278.P6009466138068334273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A002944 (n + 1) * A054581 (n + 1)).toNat

end

end A354278.P6009466138068334273

/-! ## A354278.P16468391267562239650

`n*A102427(A007910(n))`
-/

namespace A354278.P16468391267562239650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A102427 (A007910 n).toNat

end

end A354278.P16468391267562239650

/-! ## A354278.P17242436142315296114

`n*A318810(A300335(n))`
-/

namespace A354278.P17242436142315296114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A318810 (A300335 n).toNat

end

end A354278.P17242436142315296114

/-!
# A354280: a(n) is the numerator of Cesàro means sequence c(n) of A237420 when the denominator is A141310(n).

The programs for A354280, the canonical program `A354280.P7386474038231386870` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354280 has offset 0).

The definition of A354280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354280.P7386474038231386870

`floor(lcm(n, xor(n, -2))/2)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A354280

/-- `floor(lcm(n, xor(n, -2))/2)` -/
def P7386474038231386870.Spec : Prop :=
  ∀ n, P7386474038231386870.a n = A354280 n

theorem P7386474038231386870.correct : P7386474038231386870.Spec := by
  intro n
  simp only [A354280]

end A354280

/-! ## A354280.P17154181308915413920

`floor((xor(1, n)/2)^gcd(2, n))`
-/

namespace A354280.P17154181308915413920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.xor 1 n : ℚ) / 2) ^ Nat.gcd 2 n⌋

end

end A354280.P17154181308915413920

namespace A354280

/-- `floor((xor(1, n)/2)^gcd(2, n))` -/
def P17154181308915413920.Spec : Prop :=
  ∀ n, P17154181308915413920.a n = A354280 n

end A354280

/-! ## A354280.P3745929765581885890

`floor(∑[n]-lcm(2, n²)/4)`
-/

namespace A354280.P3745929765581885890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (Nat.lcm 2 (n ^ 2) : ℚ) / 4⌋

end

end A354280.P3745929765581885890

namespace A354280

/-- `floor(∑[n]-lcm(2, n²)/4)` -/
def P3745929765581885890.Spec : Prop :=
  ∀ n, P3745929765581885890.a n = A354280 n

end A354280

/-! ## A354280.P9026828833913357847

`lcm(floor(n/2), ceil(xor(1, n)/2))`
-/

namespace A354280.P9026828833913357847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌊(n : ℚ) / 2⌋ ⌈(Nat.xor 1 n : ℚ) / 2⌉

end

end A354280.P9026828833913357847

namespace A354280

/-- `lcm(floor(n/2), ceil(xor(1, n)/2))` -/
def P9026828833913357847.Spec : Prop :=
  ∀ n, (P9026828833913357847.a n : ℤ) = A354280 n

end A354280

/-! ## A354280.P10474655030115584853

`floor((C(or(1, n), n)+1)*n/4)`
-/

namespace A354280.P10474655030115584853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (Nat.lor 1 n) n + 1 : ℚ) * ((n : ℚ) / 4)⌋

end

end A354280.P10474655030115584853

namespace A354280

/-- `floor((C(or(1, n), n)+1)*n/4)` -/
def P10474655030115584853.Spec : Prop :=
  ∀ n, P10474655030115584853.a n = A354280 n

end A354280

/-! ## A354280.P6024986725616160040

`floor(n*ceil(C(or(1, n), n)/2)/2)`
-/

namespace A354280.P6024986725616160040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉ : ℚ) / 2⌋

end

end A354280.P6024986725616160040

namespace A354280

/-- `floor(n*ceil(C(or(1, n), n)/2)/2)` -/
def P6024986725616160040.Spec : Prop :=
  ∀ n, P6024986725616160040.a n = A354280 n

end A354280

/-! ## A354280.P13914968830122633630

`a(n-2)+n^∑[(-1)^n]` with `a(0)=0, a(1)=0`
-/

namespace A354280.P13914968830122633630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + (n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A354280.P13914968830122633630

namespace A354280

/-- `a(n-2)+n^∑[(-1)^n]` -/
def P13914968830122633630.Spec : Prop :=
  ∀ n, P13914968830122633630.a n = (A354280 n : ℚ)

end A354280

/-! ## A354280.P450663736433018700

`(n*char[2*n]/2+1)*floor(n/2)`
-/

namespace A354280.P450663736433018700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) * (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) / 2) + 1) * (⌊(n : ℚ) / 2⌋ : ℚ)

end

end A354280.P450663736433018700

namespace A354280

/-- `(n*char[2*n]/2+1)*floor(n/2)` -/
def P450663736433018700.Spec : Prop :=
  ∀ n, P450663736433018700.a n = (A354280 n : ℚ)

end A354280

/-! ## A354280.P16472784191047858802

`∑[n-a(a(n-1))]-a(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A354280.P16472784191047858802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  (n : ℤ) - f1 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A354280.P16472784191047858802

namespace A354280

/-- `∑[n-a(a(n-1))]-a(n-1)` -/
def P16472784191047858802.Spec : Prop :=
  ∀ n, P16472784191047858802.a n = A354280 n

end A354280

/-! ## A354280.P867829009231906923

`A129889(xor(1, n))`
-/

namespace A354280.P867829009231906923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129889 (Nat.xor 1 n)

end

end A354280.P867829009231906923

namespace A354280

/-- `A129889(xor(1, n))` -/
def P867829009231906923.Spec : Prop :=
  ∀ n, P867829009231906923.a n = A354280 n

end A354280

/-! ## A354280.P9838716504458612542

`∑[n]-A147685(n)`
-/

namespace A354280.P9838716504458612542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A147685 n

end

end A354280.P9838716504458612542

namespace A354280

/-- `∑[n]-A147685(n)` -/
def P9838716504458612542.Spec : Prop :=
  ∀ n, P9838716504458612542.a n = A354280 n

end A354280

/-! ## A354280.P7254191017355013451

`floor(n/2*A158416(n))`
-/

namespace A354280.P7254191017355013451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2 * (A158416 n : ℚ)⌋

end

end A354280.P7254191017355013451

namespace A354280

/-- `floor(n/2*A158416(n))` -/
def P7254191017355013451.Spec : Prop :=
  ∀ n, P7254191017355013451.a n = A354280 n

end A354280

/-! ## A354280.P4376911225086804708

`A129889(A004442(n))`
-/

namespace A354280.P4376911225086804708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129889 (A004442 n).toNat

end

end A354280.P4376911225086804708

namespace A354280

/-- `A129889(A004442(n))` -/
def P4376911225086804708.Spec : Prop :=
  ∀ n, P4376911225086804708.a n = A354280 n

end A354280

/-! ## A354280.P5627336642033186650

`A033999(n)-A110315(n)`
-/

namespace A354280.P5627336642033186650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n - A110315 n

end

end A354280.P5627336642033186650

namespace A354280

/-- `A033999(n)-A110315(n)` -/
def P5627336642033186650.Spec : Prop :=
  ∀ n, P5627336642033186650.a n = A354280 n

end A354280

/-! ## A354280.P8618741663591776142

`A035608(n)-A308422(n)`
-/

namespace A354280.P8618741663591776142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035608 n - A308422 n

end

end A354280.P8618741663591776142

namespace A354280

/-- `A035608(n)-A308422(n)` -/
def P8618741663591776142.Spec : Prop :=
  ∀ n, P8618741663591776142.a n = A354280 n

end A354280

/-! ## A354280.P7454874532224268344

`A359366(n)-A004652(n)`
-/

namespace A354280.P7454874532224268344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359366 n - A004652 n

end

end A354280.P7454874532224268344

namespace A354280

/-- `A359366(n)-A004652(n)` -/
def P7454874532224268344.Spec : Prop :=
  ∀ n, P7454874532224268344.a n = A354280 n

end A354280

/-! ## A354280.P5853683591548177040

`A110660(n)/A152271(n)`
-/

namespace A354280.P5853683591548177040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110660 n : ℚ) / (A152271 n : ℚ)

end

end A354280.P5853683591548177040

namespace A354280

/-- `A110660(n)/A152271(n)` -/
def P5853683591548177040.Spec : Prop :=
  ∀ n, P5853683591548177040.a n = (A354280 n : ℚ)

end A354280

/-! ## A354280.P5503882000012672882

`A084265(n)%A051494(n)`
-/

namespace A354280.P5503882000012672882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084265 n) (A051494 n)

end

end A354280.P5503882000012672882

namespace A354280

/-- `A084265(n)%A051494(n)` -/
def P5503882000012672882.Spec : Prop :=
  ∀ n, P5503882000012672882.a n = A354280 n

end A354280

/-! ## A354280.P11479058413743326046

`lcm(A004526(n), A028242(n))`
-/

namespace A354280.P11479058413743326046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004526 n) (A028242 n)

end

end A354280.P11479058413743326046

namespace A354280

/-- `lcm(A004526(n), A028242(n))` -/
def P11479058413743326046.Spec : Prop :=
  ∀ n, (P11479058413743326046.a n : ℤ) = A354280 n

end A354280

/-! ## A354280.P6723042875296762804

`lcm(A127365(n), A158416(n))`
-/

namespace A354280.P6723042875296762804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A127365 n) (A158416 n)

end

end A354280.P6723042875296762804

namespace A354280

/-- `lcm(A127365(n), A158416(n))` -/
def P6723042875296762804.Spec : Prop :=
  ∀ n, (P6723042875296762804.a n : ℤ) = A354280 n

end A354280

/-!
# A354283: Weird numbers k such that k-1 and k+1 are both sums of subsets of the aliquot divisors of k.

The programs for A354283, there is no canonical definition to state claims against.
-/

/-! ## A354283.P12601096437004581055

`∩[A354281(n+1), A354282(n+1)]`
-/

namespace A354283.P12601096437004581055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354283.P12601096437004581055

/-!
# A354286: Expansion of e.g.f. 1/(1 - x)^(2/(1 + 2 * log(1-x))).

The programs for A354286, there is no canonical definition to state claims against.
-/

/-! ## A354286.P16705183657753276959

`A055265(A036079(n))`
-/

namespace A354286.P16705183657753276959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055265 (A036079 n).toNat

end

end A354286.P16705183657753276959

/-!
# A354288: Expansion of e.g.f. (1 + x)^(2/(1 - 2 * log(1+x))).

The programs for A354288, there is no canonical definition to state claims against.
-/

/-! ## A354288.P7062135814987718396

`A182525(A305079(3*a(n-1)))` with `a(0)=1`
-/

namespace A354288.P7062135814987718396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A182525 (A305079 (3 * a (n - 1)).toNat).toNat

end

end A354288.P7062135814987718396

/-!
# A354290: Expansion of e.g.f. exp(f(x) - 1) where f(x) = 1/(3 - 2*exp(x)).

The programs for A354290, there is no canonical definition to state claims against.
-/

/-! ## A354290.P3396273725824365061

`A048103(A334240(n))`
-/

namespace A354290.P3396273725824365061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (A334240 n).toNat

end

end A354290.P3396273725824365061

/-!
# A354292: Primes p such that for all m, M(m) is not divisible by p^2 where M(n) is the n-th Motzkin number A001006.

The programs for A354292, there is no canonical definition to state claims against.
-/

/-! ## A354292.P4193384515397148887

`p?[A123317(n+1)+4*n]`
-/

namespace A354292.P4193384515397148887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123317 (n + 1) + (4 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A354292.P4193384515397148887

/-! ## A354292.P15033502094923169673

`p?[A013632(char[2]+1+n)+4*n]`
-/

namespace A354292.P15033502094923169673
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 ((if ∃ j, f2 j = n then 1 else 0) + 1 + n) + (4 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A354292.P15033502094923169673

/-! ## A354292.P40465490492551601

`A162565(A286060(n+2))`
-/

namespace A354292.P40465490492551601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162565 (A286060 (n + 2)).toNat

end

end A354292.P40465490492551601

/-! ## A354292.P3828200578926392697

`∩[A193761(n+1), A308196(n)]`
-/

namespace A354292.P3828200578926392697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308196 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354292.P3828200578926392697

/-!
# A354294: Number of palindromic compositions of 2*n into parts <= n.

The programs for A354294, the canonical program `A354294.P1783386101127792393` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354294 has offset 0).

The definition of A354294 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354294.P1783386101127792393

`ceil(2^n-2^floor((n-1)/2))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A354294

/-- `ceil(2^n-2^floor((n-1)/2))` -/
def P1783386101127792393.Spec : Prop :=
  ∀ n, P1783386101127792393.a n = A354294 n

theorem P1783386101127792393.correct : P1783386101127792393.Spec := by
  intro n
  simp only [A354294]

end A354294

/-! ## A354294.P7205257973858819982

`ogf((1-x-x^2+2x^3)/(1-2x-2x^2+4x^3))`
-/

namespace A354294.P7205257973858819982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1, 2] [1, -2, -2, 4] n

end

end A354294.P7205257973858819982

namespace A354294

/-- `ogf((1-x-x^2+2x^3)/(1-2x-2x^2+4x^3))` -/
def P7205257973858819982.Spec : Prop :=
  ∀ n, P7205257973858819982.a n = A354294 n

end A354294

/-! ## A354294.P9428460908766109092

`2*or(a(n-1), a(n-2))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A354294.P9428460908766109092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  2 * Nat.lor (a (n - 1)) (a (n - 2))

end

end A354294.P9428460908766109092

namespace A354294

/-- `2*or(a(n-1), a(n-2))` -/
def P9428460908766109092.Spec : Prop :=
  ∀ n, (P9428460908766109092.a n : ℤ) = A354294 n

end A354294

/-! ## A354294.P1627787713707689319

`2*(a(n-2)+2^(n-2))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A354294.P1627787713707689319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  2 * (a (n - 2) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A354294.P1627787713707689319

namespace A354294

/-- `2*(a(n-2)+2^(n-2))` -/
def P1627787713707689319.Spec : Prop :=
  ∀ n, P1627787713707689319.a n = (A354294 n : ℚ)

end A354294

/-! ## A354294.P5516911241508290340

`A079289(n)+A008466(n)`
-/

namespace A354294.P5516911241508290340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079289 n + A008466 n

end

end A354294.P5516911241508290340

namespace A354294

/-- `A079289(n)+A008466(n)` -/
def P5516911241508290340.Spec : Prop :=
  ∀ n, P5516911241508290340.a n = A354294 n

end A354294

/-! ## A354294.P7852088380566478435

`A052957(n)-A074323(n)`
-/

namespace A354294.P7852088380566478435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052957 n - A074323 n

end

end A354294.P7852088380566478435

namespace A354294

/-- `A052957(n)-A074323(n)` -/
def P7852088380566478435.Spec : Prop :=
  ∀ n, P7852088380566478435.a n = A354294 n

end A354294

/-! ## A354294.P12251310123584979348

`A052531(n)-A228693(n)`
-/

namespace A354294.P12251310123584979348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052531 n - A228693 n

end

end A354294.P12251310123584979348

namespace A354294

/-- `A052531(n)-A228693(n)` -/
def P12251310123584979348.Spec : Prop :=
  ∀ n, P12251310123584979348.a n = A354294 n

end A354294

/-! ## A354294.P6832113541555321091

`lcm(A052551(n), A117575(n))`
-/

namespace A354294.P6832113541555321091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A052551 n) (A117575 n)

end

end A354294.P6832113541555321091

namespace A354294

/-- `lcm(A052551(n), A117575(n))` -/
def P6832113541555321091.Spec : Prop :=
  ∀ n, (P6832113541555321091.a n : ℤ) = A354294 n

end A354294

/-! ## A354294.P5483413019150739523

`A052551(n)*A158780(n+1)`
-/

namespace A354294.P5483413019150739523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 n * A158780 (n + 1)

end

end A354294.P5483413019150739523

namespace A354294

/-- `A052551(n)*A158780(n+1)` -/
def P5483413019150739523.Spec : Prop :=
  ∀ n, P5483413019150739523.a n = A354294 n

end A354294

/-! ## A354294.P15093215434517406347

`A005418(n+2)-A029744(n+1)`
-/

namespace A354294.P15093215434517406347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 2) - A029744 (n + 1)

end

end A354294.P15093215434517406347

namespace A354294

/-- `A005418(n+2)-A029744(n+1)` -/
def P15093215434517406347.Spec : Prop :=
  ∀ n, P15093215434517406347.a n = A354294 n

end A354294

/-! ## A354294.P9343679248552385396

`(A060546(n+1)-1)*A158780(n+1)`
-/

namespace A354294.P9343679248552385396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060546 (n + 1) - 1) * A158780 (n + 1)

end

end A354294.P9343679248552385396

namespace A354294

/-- `(A060546(n+1)-1)*A158780(n+1)` -/
def P9343679248552385396.Spec : Prop :=
  ∀ n, P9343679248552385396.a n = A354294 n

end A354294

/-! ## A354294.P142862034921011998

`A029744(n+1)+A000079(n)-A063759(n)`
-/

namespace A354294.P142862034921011998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 1) + (A000079 n - A063759 n)

end

end A354294.P142862034921011998

namespace A354294

/-- `A029744(n+1)+A000079(n)-A063759(n)` -/
def P142862034921011998.Spec : Prop :=
  ∀ n, P142862034921011998.a n = A354294 n

end A354294

/-! ## A354294.P695853630091842108

`A011782(n)+A011782(n)-A158780(n+1)`
-/

namespace A354294.P695853630091842108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (A011782 n - A158780 (n + 1))

end

end A354294.P695853630091842108

namespace A354294

/-- `A011782(n)+A011782(n)-A158780(n+1)` -/
def P695853630091842108.Spec : Prop :=
  ∀ n, P695853630091842108.a n = A354294 n

end A354294

/-! ## A354294.P4805039279603280298

`A131577(n+1)-A131577(n)/A016116(n)`
-/

namespace A354294.P4805039279603280298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131577 (n + 1) : ℚ) - (A131577 n : ℚ) / (A016116 n : ℚ)

end

end A354294.P4805039279603280298

namespace A354294

/-- `A131577(n+1)-A131577(n)/A016116(n)` -/
def P4805039279603280298.Spec : Prop :=
  ∀ n, P4805039279603280298.a n = (A354294 n : ℚ)

end A354294

/-! ## A354294.P13443073168805488236

`A029744(n+2)+A000079(n)-A094958(n+2)`
-/

namespace A354294.P13443073168805488236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 2) + (A000079 n - A094958 (n + 2))

end

end A354294.P13443073168805488236

namespace A354294

/-- `A029744(n+2)+A000079(n)-A094958(n+2)` -/
def P13443073168805488236.Spec : Prop :=
  ∀ n, P13443073168805488236.a n = A354294 n

end A354294

/-! ## A354294.P6763343976358833641

`A183978(n+1)-(A051032(n+1)+A029744(n+1))`
-/

namespace A354294.P6763343976358833641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183978 (n + 1) - (A051032 (n + 1) + A029744 (n + 1))

end

end A354294.P6763343976358833641

namespace A354294

/-- `A183978(n+1)-(A051032(n+1)+A029744(n+1))` -/
def P6763343976358833641.Spec : Prop :=
  ∀ n, P6763343976358833641.a n = A354294 n

end A354294

/-! ## A354294.P10271252302899903931

`(A052955(n+1)-A016116(n+1))*A158780(n+1)`
-/

namespace A354294.P10271252302899903931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052955 (n + 1) - A016116 (n + 1)) * A158780 (n + 1)

end

end A354294.P10271252302899903931

namespace A354294

/-- `(A052955(n+1)-A016116(n+1))*A158780(n+1)` -/
def P10271252302899903931.Spec : Prop :=
  ∀ n, P10271252302899903931.a n = A354294 n

end A354294

/-! ## A354294.P14126944182406212241

`2*a(n-1)+2*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=6`
-/

namespace A354294.P14126944182406212241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 6] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - 4 * a (n - 3)

end

end A354294.P14126944182406212241

namespace A354294

/-- `2*a(n-1)+2*a(n-2)-4*a(n-3)` -/
def P14126944182406212241.Spec : Prop :=
  ∀ n, P14126944182406212241.a n = A354294 n

end A354294

/-! ## A354294.P14472916693879060878

`lcm(2, A122746(n))/2`
-/

namespace A354294.P14472916693879060878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A122746 n) : ℚ) / 2

end

end A354294.P14472916693879060878

namespace A354294

/-- `lcm(2, A122746(n))/2` -/
def P14472916693879060878.Spec : Prop :=
  ∀ n, P14472916693879060878.a n = (A354294 n : ℚ)

end A354294

/-!
# A354297: Minimal numbers of states for finite state automata for Motzkin numbers modulo 2^n.

The programs for A354297, there is no canonical definition to state claims against.
-/

/-! ## A354297.P17459447555835859641

`A096004(A215687(n+1))`
-/

namespace A354297.P17459447555835859641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096004 (A215687 (n + 1)).toNat

end

end A354297.P17459447555835859641

/-!
# A354298: a(n) is the numerator of Sum_{k=1..n} (-1)^(k+1) / (2*k-1)!!.

The programs for A354298, there is no canonical definition to state claims against.
-/

/-! ## A354298.P9832543257077711652

`A087723(A303360(n))`
-/

namespace A354298.P9832543257077711652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087723 (A303360 n).toNat

end

end A354298.P9832543257077711652

/-!
# A354299: a(n) is the denominator of Sum_{k=1..n} (-1)^(k+1) / (2*k-1)!!.

The programs for A354299, there is no canonical definition to state claims against.
-/

/-! ## A354299.P15720788320178377704

`A001147(n+1)/A110591(A005081(n+1))`
-/

namespace A354299.P15720788320178377704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001147 (n + 1) : ℚ) / (A110591 (A005081 (n + 1)).toNat : ℚ)

end

end A354299.P15720788320178377704

/-! ## A354299.P14357307957441147645

`A001147(A061147(n+1))/A060904(n+1)`
-/

namespace A354299.P14357307957441147645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001147 (A061147 (n + 1)).toNat : ℚ) / (A060904 (n + 1) : ℚ)

end

end A354299.P14357307957441147645

/-! ## A354299.P8386675771924033278

`A001147(A061147(n+1))/A170817(n+1)`
-/

namespace A354299.P8386675771924033278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001147 (A061147 (n + 1)).toNat : ℚ) / (A170817 (n + 1) : ℚ)

end

end A354299.P8386675771924033278

/-! ## A354299.P6965794716162171058

`A001147(A061147(n+1))/A170818(n+1)`
-/

namespace A354299.P6965794716162171058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001147 (A061147 (n + 1)).toNat : ℚ) / (A170818 (n + 1) : ℚ)

end

end A354299.P6965794716162171058

